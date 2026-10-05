# Agentic Audit Briefs

The [v3 project index](./v3/INDEX.md) is the current repository output. The former root-level project folders were retired to the [legacy snapshot](https://github.com/alexdolgov/agnt-brief/tree/legacy-root-archive-20261005) so each active project has one location.

Each `v3/<project-key>/` contains:

- `brief.json` and `brief.md` — machine-readable and human-readable audit briefs;
- `DEPLOYMENTS.md` — the chain/address map for exported contract packages;
- `src/<component>/` — a standalone Foundry package for each available verified source bundle;
- `missing_sources.json` — verified deployments whose source bundle is unavailable in the cache.

The July 24, 2026 brief snapshot covers 1,359 projects. Verified source packages are present in 1,118; 241 have no exported source package, and 76 unavailable bundles are recorded across 36 projects. An empty `src/` is an explicit source-availability state, not an omitted brief. The source export snapshot is dated July 15, 2026. These are historical snapshots, not live October 2026 data.

See the [v3 layout guide](./v3/README.md) and [complete project index](./v3/INDEX.md).
