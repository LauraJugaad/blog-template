import {
  env as cloudflareEnv,
  waitUntil as cloudflareWaitUntil,
} from 'cloudflare:workers';

export const env = cloudflareEnv as unknown as Env;
export const waitUntil = cloudflareWaitUntil;
