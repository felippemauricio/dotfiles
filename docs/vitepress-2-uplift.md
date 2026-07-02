# VitePress 2 Uplift — Drop the Vite Override

> **Status:** Approved · **Date:** 2026-07-02 · **See also:** PR #7 (dev dependency update), PR #8

Move the docs site from VitePress 1.6.4 (plus a `vite` override) to VitePress 2.0.0-alpha.17, removing the override, and build in CI with Node 24. This fixes the `npm ci` failure on `master` and keeps every dependency on its latest version.

---

## 1. Problem

The Pages build on `master` fails at `npm ci` ([run 28586485111](https://github.com/felippemauricio/dotfiles/actions/runs/28586485111)):

- `package.json` overrides VitePress's `vite` to `^7.3.1`; VitePress 1.6.4 itself pins `vite ^5.4.14` (verified 2026-07-02 via `npm view vitepress@latest dependencies.vite`).
- npm 11 (local, generates `package-lock.json`) resolves the override to a hoisted `vite@7.3.6` with `esbuild@0.28.1`.
- npm 10 (bundled with Node 22, used by `.github/workflows/pages.yml:25`) computes a different ideal tree — root `vite@6.4.3` with `esbuild@0.25.12` — and rejects the same lockfile as out of sync. Reproduced locally with `npx npm@10 ci --dry-run` (verified 2026-07-02).

Regenerating the lockfile with either npm version breaks the other: the override is the source of the divergence.

## 2. Decision

1. Upgrade `vitepress` to `^2.0.0-alpha.17` (the `next` dist-tag). It depends on `vite ^7.3.1` natively (verified 2026-07-02 via `npm view vitepress@next dependencies.vite`), so the `overrides` block in `package.json` is removed entirely.
2. Bump the workflow's `node-version` from `22.x` to `24.x` (current LTS, bundles npm 11) so CI installs with the same npm major that generates the lockfile.
3. Accept the pre-release: VitePress 2 is an alpha, but the site is a small personal docs site and the build, tests, and lint all pass against it. `npm outdated` then reports nothing else behind latest.

Non-goal: restructuring the docs site or adopting VitePress 2 features — this is a dependency uplift only.

## 3. Acceptance Criteria

- `npm ci --dry-run` succeeds under both npm 10 (`npx npm@10 ci --dry-run`) and npm 11 against the committed lockfile.
- `npm run docs:build`, `npm test`, and `npm run lint` pass locally on the upgraded tree.
- `package.json` contains no `overrides` block; `vitepress` resolves to 2.0.0-alpha.17 and `vite` to 7.3.x.
- The `Deploy docs to Pages` workflow goes green on `master` after merge, and the `deploy` job runs (it was skipped on the failing run).
