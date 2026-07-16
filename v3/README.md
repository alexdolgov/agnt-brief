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
- Deduplicated components: 36330
- Standalone Foundry packages: 36330
- Deployments: 57488
- Missing cached source bundles: 361
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`
