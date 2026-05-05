import type { APIRoute } from 'astro';
import { env } from '~/lib/runtime-env';

export const prerender = false;

export const GET: APIRoute = () => {
  const siteUrl = env.SITE_URL.replace(/\/$/, '');

  const body = `User-agent: *
Allow: /

Sitemap: ${siteUrl}/sitemap.xml
`;

  return new Response(body, {
    status: 200,
    headers: {
      'Content-Type': 'text/plain; charset=utf-8',
      'Cache-Control': 'public, max-age=86400',
    },
  });
};
