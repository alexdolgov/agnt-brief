# Audit Source Repository Export

Cache-only, deduplicated source packages paired with the receipt-bound project briefs.

```text
.
├── README.md
├── index.json
├── receipts/
└── <project-key>/
    ├── README.md
    ├── brief.json
    ├── brief.md
    ├── DEPLOYMENTS.md
    ├── FOUNDRY.md
    ├── Makefile
    ├── missing_sources.json
    └── src/<component>/
        ├── foundry.toml
        ├── FOUNDRY.md
        ├── component.json
        └── <verified source tree>
```

- Projects: 1359
- Deduplicated components: 39667
- Standalone Foundry packages: 39667
- Deployments: 63725
- Missing cached source bundles: 76
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`
- Brief snapshot: `2026-07-24T14:10:00.000Z`
- Source export snapshot: `2026-07-15T18:30:00.000Z`
