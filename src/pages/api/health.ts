import type { APIRoute } from 'astro';
import { sql } from 'drizzle-orm';
import { createDb } from '~/db/client';

export const prerender = false;

/**
 * GET /api/health — public liveness + readiness probe.
 *
 * Returns 200 OK with worker + D1 status when both are healthy. Returns 503
 * when D1 is unreachable (so uptime monitors / load balancers can trip).
 *
 * Public (no Bearer) — uptime checkers shouldn't need a secret. Cheap query
 * (`SELECT 1`) to keep cost predictable under flood.
 *
 * Cache: never cache (`no-store`) — health must be live, not stale.
 *
 * Response shape:
 *   { ok: true, status: "healthy", checks: { db: "up" }, lang, ts }
 *   { ok: false, status: "unhealthy", checks: { db: "down" }, error?, ts }
 */
export const GET: APIRoute = async ({ locals }) => {
  const env = locals.runtime.env;
  const ts = new Date().toISOString();

  const result: {
    ok: boolean;
    status: string;
    checks: Record<string, 'up' | 'down'>;
    lang: string;
    ts: string;
    error?: string;
  } = {
    ok: false,
    status: 'unhealthy',
    checks: { db: 'down' },
    lang: env.SITE_LANG || 'unknown',
    ts,
  };

  try {
    const db = createDb(env.DB);
    // Cheap parameterless query — D1 returns a single row in <5ms typically.
    await db.run(sql`SELECT 1`);
    result.ok = true;
    result.status = 'healthy';
    result.checks.db = 'up';
  } catch (err) {
    result.error = err instanceof Error ? err.message : String(err);
  }

  return new Response(JSON.stringify(result), {
    status: result.ok ? 200 : 503,
    headers: {
      'Content-Type': 'application/json; charset=utf-8',
      'Cache-Control': 'no-store',
    },
  });
};
