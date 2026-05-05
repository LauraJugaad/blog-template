/** @jsxImportSource preact */
import { useEffect, useState, useRef } from 'preact/hooks';
import { url } from '~/lib/paths';

interface SearchResult {
  slug: string;
  title: string;
  summary: string;
  category: string | null;
}

interface ApiResponse {
  items: SearchResult[];
  total: number;
}

export default function SearchIsland() {
  const [q, setQ] = useState('');
  const [results, setResults] = useState<SearchResult[]>([]);
  const [total, setTotal] = useState(0);
  const [loading, setLoading] = useState(false);
  const [open, setOpen] = useState(false);
  const debounceRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const abortRef = useRef<AbortController | null>(null);

  useEffect(() => {
    if (debounceRef.current) clearTimeout(debounceRef.current);
    if (abortRef.current) abortRef.current.abort();

    const trimmed = q.trim();
    if (trimmed.length < 2) {
      setResults([]);
      setTotal(0);
      setLoading(false);
      return;
    }

    setLoading(true);
    debounceRef.current = setTimeout(async () => {
      const ctrl = new AbortController();
      abortRef.current = ctrl;
      try {
        const res = await fetch(url(`/api/search?q=${encodeURIComponent(trimmed)}`), {
          signal: ctrl.signal,
        });
        if (!res.ok) throw new Error('search failed');
        const data: ApiResponse = await res.json();
        setResults(data.items);
        setTotal(data.total);
      } catch (err) {
        if ((err as Error).name !== 'AbortError') {
          setResults([]);
          setTotal(0);
        }
      } finally {
        setLoading(false);
      }
    }, 300);

    return () => {
      if (debounceRef.current) clearTimeout(debounceRef.current);
    };
  }, [q]);

  return (
    <div class="relative w-full">
      <label class="sr-only" for="search-input">
        Buscar artigos
      </label>
      <input
        id="search-input"
        type="search"
        placeholder="Buscar artigos..."
        value={q}
        onInput={(e) => setQ((e.target as HTMLInputElement).value)}
        onFocus={() => setOpen(true)}
        onBlur={() => setTimeout(() => setOpen(false), 150)}
        autoComplete="off"
        class="h-10 w-full rounded-full border border-transparent bg-surface-muted px-4 text-sm text-foreground shadow-none outline-hidden transition-colors placeholder:text-muted hover:bg-surface-soft focus:border-foreground focus:bg-background"
      />

      {open && q.trim().length >= 2 && (
        <div class="absolute z-10 mt-2 w-full min-w-80 rounded-md border border-border bg-background shadow-lg">
          {loading && <div class="px-4 py-3 text-sm text-muted">Buscando...</div>}
          {!loading && results.length === 0 && (
            <div class="px-4 py-3 text-sm text-muted">Nenhum resultado.</div>
          )}
          {!loading && results.length > 0 && (
            <>
              <ul class="max-h-96 overflow-y-auto divide-y divide-border-hairline">
                {results.map((r) => (
                  <li key={r.slug}>
                    <a
                      href={url(`/${r.slug}`)}
                      class="block px-4 py-3 no-underline hover:bg-surface-muted hover:no-underline"
                    >
                      <div class="text-sm font-semibold text-foreground">{r.title}</div>
                      <div class="mt-0.5 line-clamp-2 text-xs text-muted">{r.summary}</div>
                    </a>
                  </li>
                ))}
              </ul>
              {total > results.length && (
                <div class="border-t border-border-hairline px-4 py-2 text-xs text-muted">
                  Mostrando {results.length} de {total} resultados
                </div>
              )}
            </>
          )}
        </div>
      )}
    </div>
  );
}
