import type { Author } from '~/db/schema';
import type { SiteConfig } from '~/lib/site';
import { url } from '~/lib/paths';

export interface PublicAuthor {
  slug?: string;
  name: string;
  shortBio: string;
  bio: string;
  avatarUrl: string;
  url: string;
  profilePath?: string;
  profileUrl?: string;
  jobTitle: string;
  sameAs: string[];
  credentials: string[];
  knowsAbout: string[];
}

export interface ArticleAuthorFields {
  author_slug?: string | null;
  author_name: string;
  author_url?: string | null;
}

const GENERIC_AUTHOR_NAMES = new Set([
  'Equipe Editorial',
  'Equipe Solar Jugaad',
  'Equipe',
  'Author Name',
]);

function stringList(value: string[] | null | undefined): string[] {
  return Array.isArray(value) ? value.map((item) => item.trim()).filter(Boolean) : [];
}

function absoluteProfileUrl(site: SiteConfig, slug: string): string {
  return `${site.siteUrl}/autor/${slug}`;
}

export function publicAuthorFromDb(author: Author, site: SiteConfig): PublicAuthor {
  const profilePath = url(`/autor/${author.slug}`);
  return {
    slug: author.slug,
    name: author.name,
    shortBio: author.short_bio ?? '',
    bio: author.bio ?? '',
    avatarUrl: author.avatar_url ?? '',
    url: author.url ?? absoluteProfileUrl(site, author.slug),
    profilePath,
    profileUrl: absoluteProfileUrl(site, author.slug),
    jobTitle: author.job_title ?? '',
    sameAs: stringList(author.same_as),
    credentials: stringList(author.credentials),
    knowsAbout: stringList(author.knows_about),
  };
}

export function publicAuthorFromSite(site: SiteConfig): PublicAuthor {
  const slug = site.defaultAuthor.slug || undefined;
  const profilePath = slug ? url(`/autor/${slug}`) : undefined;
  return {
    slug,
    name: site.defaultAuthor.name,
    shortBio: site.defaultAuthor.bio,
    bio: site.defaultAuthor.bio,
    avatarUrl: site.defaultAuthor.avatarUrl,
    url: site.defaultAuthor.url,
    profilePath,
    profileUrl: slug ? absoluteProfileUrl(site, slug) : site.defaultAuthor.url,
    jobTitle: site.defaultAuthor.jobTitle,
    sameAs: site.defaultAuthor.sameAs,
    credentials: site.defaultAuthor.credentials,
    knowsAbout: site.defaultAuthor.knowsAbout,
  };
}

export function resolveArticleAuthor(
  article: ArticleAuthorFields,
  author: Author | null | undefined,
  site: SiteConfig,
): PublicAuthor {
  if (author) return publicAuthorFromDb(author, site);
  if (
    article.author_name === site.defaultAuthor.name ||
    GENERIC_AUTHOR_NAMES.has(article.author_name)
  ) {
    return publicAuthorFromSite(site);
  }
  return {
    name: article.author_name,
    shortBio: '',
    bio: '',
    avatarUrl: '',
    url: article.author_url ?? '',
    jobTitle: '',
    sameAs: [],
    credentials: [],
    knowsAbout: [],
  };
}

export function authorHref(author: PublicAuthor): string | undefined {
  return author.profilePath ?? (author.url || undefined);
}

export function authorInitial(author: PublicAuthor): string {
  return author.name.trim().charAt(0).toUpperCase() || 'A';
}
