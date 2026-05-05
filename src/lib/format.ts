/**
 * Format an ISO 8601 date as a long date string in the given BCP 47 locale.
 * Used in article meta blocks and listing cards. Defaults to pt-BR for back-compat
 * with call sites that haven't been updated to pass site.siteLang yet.
 */
export function formatDate(iso: string | null | undefined, lang: string = 'pt-BR'): string {
  if (!iso) return '';
  try {
    const d = new Date(iso);
    return new Intl.DateTimeFormat(lang, {
      day: '2-digit',
      month: 'long',
      year: 'numeric',
    }).format(d);
  } catch {
    return '';
  }
}

/**
 * Back-compat alias. Prefer formatDate(iso, site.siteLang).
 * @deprecated use formatDate(iso, lang)
 */
export const formatDatePtBr = (iso: string | null | undefined) => formatDate(iso, 'pt-BR');

/**
 * Strip all HTML tags from a string. Used for excerpt previews and meta descriptions.
 * Not safe for arbitrary HTML — assumes the input has been sanitized by the API client.
 */
export function stripHtml(html: string): string {
  return html.replace(/<[^>]*>/g, ' ').replace(/\s+/g, ' ').trim();
}

/**
 * Truncate a string to a maximum length on a word boundary, appending an ellipsis.
 */
export function truncate(str: string, max: number): string {
  if (str.length <= max) return str;
  const cut = str.slice(0, max);
  const lastSpace = cut.lastIndexOf(' ');
  return (lastSpace > max * 0.6 ? cut.slice(0, lastSpace) : cut).trimEnd() + '…';
}
