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
- Deduplicated components: 5432
- Standalone Foundry packages: 5432
- Deployments: 8290
- Missing cached source bundles: 316
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`
