import { describe, it, expect } from 'vitest';
import { existsSync } from 'node:fs';
import { fileURLToPath } from 'node:url';
import config from '../website/.vitepress/config';

const websiteDir = fileURLToPath(new URL('../website', import.meta.url));

// Collect every internal (site-relative) link declared in the nav and sidebar.
function internalLinks(): string[] {
  const theme = config.themeConfig ?? {};
  const links: string[] = [];

  for (const item of theme.nav ?? []) {
    if ('link' in item && item.link?.startsWith('/')) links.push(item.link);
  }

  for (const group of (theme.sidebar as { items: { link?: string }[] }[]) ?? []) {
    for (const item of group.items ?? []) {
      if (item.link?.startsWith('/')) links.push(item.link);
    }
  }

  return links;
}

describe('vitepress config', () => {
  it('is published under /dotfiles/', () => {
    expect(config.base).toBe('/dotfiles/');
  });

  it('every internal nav and sidebar link resolves to a markdown page', () => {
    for (const link of internalLinks()) {
      const page = link === '/' ? '/index' : link;
      const path = `${websiteDir}${page}.md`;
      expect(existsSync(path), `missing page for "${link}"`).toBe(true);
    }
  });
});
