import { describe, it, expect } from 'vitest';
import { readFileSync } from 'node:fs';
import { fileURLToPath } from 'node:url';

const brewfile = readFileSync(fileURLToPath(new URL('../Brewfile', import.meta.url)), 'utf8');

const ENTRY = /^(tap|brew|cask) "([^"]+)"(\s*)(#.*)?$/;
const entries = brewfile
  .split('\n')
  .filter((line) => ENTRY.test(line))
  .map((line) => {
    const [, kind, name, , comment] = line.match(ENTRY)!;
    return { line, kind, name, comment };
  });

// Sort key: the tool name, ignoring any tap prefix (`hashicorp/tap/terraform` → `terraform`).
const toolName = (name: string) => name.split('/').pop()!;

describe('Brewfile', () => {
  it('declares at least one entry of each kind', () => {
    for (const kind of ['tap', 'brew', 'cask']) {
      expect(entries.some((e) => e.kind === kind)).toBe(true);
    }
  });

  it('keeps every section in alphabetical order', () => {
    for (const kind of ['tap', 'brew', 'cask']) {
      const names = entries
        .filter((e) => e.kind === kind)
        .map((e) => (kind === 'brew' ? toolName(e.name) : e.name));
      expect(names).toEqual([...names].sort());
    }
  });

  it('has no duplicate entries', () => {
    const keys = entries.map((e) => `${e.kind}:${e.name}`);
    expect(new Set(keys).size).toBe(keys.length);
  });

  it('gives every entry a trailing comment aligned to one shared column', () => {
    const bare = entries.filter((e) => !e.comment).map((e) => e.line);
    expect(bare).toEqual([]);
    const columns = new Set(entries.map((e) => e.line.indexOf('#')));
    expect([...columns]).toHaveLength(1);
  });

  it('taps every third-party tap its formulae come from', () => {
    const taps = new Set(entries.filter((e) => e.kind === 'tap').map((e) => e.name));
    for (const e of entries.filter((e) => e.kind === 'brew' && e.name.split('/').length === 3)) {
      const tap = e.name.split('/').slice(0, 2).join('/');
      expect(taps.has(tap), `missing tap "${tap}" for ${e.name}`).toBe(true);
    }
  });
});
