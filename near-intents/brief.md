# Agentic Audit Brief: NEAR Intents

## Project Overview

- Project: NEAR Intents (`near-intents`)
- Website: [https://near.com/](https://near.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.609Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: gnosis
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $76,666,996.97
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 2 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FiatTokenV2_2 | token | gnosis | n/a | [`0x2a22f9c3b484c3629090feed35f17ff8f88f76f0`](./contracts/gnosis-100/0x2a22f9c3b484c3629090feed35f17ff8f88f76f0/) | ⚠️ Unaudited |
| PermittableToken | token | gnosis | n/a | [`0x177127622c4a00f3d409b75571e12cb3c8973d3c`](./contracts/gnosis-100/0x177127622c4a00f3d409b75571e12cb3c8973d3c/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [hacken.io/audits/aurora-labs-limited/sca-aurora-labs-defuse-contracts-dec2024](https://hacken.io/audits/aurora-labs-limited/sca-aurora-labs-defuse-contracts-dec2024) | Hacken | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [1738583399-hacken_aurora-labs-limited-sca-aurora-labs-defuse-contracts-dec2024_p-2024-1418_2_20250127-10_50.pdf](https://www.datocms-assets.com/50156/1738583399-hacken_aurora-labs-limited-sca-aurora-labs-defuse-contracts-dec2024_p-2024-1418_2_20250127-10_50.pdf) | Hacken | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [Manual audit seed](https://docs.near-intents.org/security-compliance/security) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/drive/folders/1eNHI_GKsbmMSjeCENRklvtVh8imGSUvy](https://drive.google.com/drive/folders/1eNHI_GKsbmMSjeCENRklvtVh8imGSUvy?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| gnosis | [`0x2a22f9c3b484c3629090feed35f17ff8f88f76f0`](./contracts/gnosis-100/0x2a22f9c3b484c3629090feed35f17ff8f88f76f0/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x177127622c4a00f3d409b75571e12cb3c8973d3c`](./contracts/gnosis-100/0x177127622c4a00f3d409b75571e12cb3c8973d3c/) | PermittableToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21257] hacken.io/audits/aurora-labs-limited/sca-aurora-labs-defuse-contracts-dec2024
- [21258] 1738583399-hacken_aurora-labs-limited-sca-aurora-labs-defuse-contracts-dec2024_p-2024-1418_2_20250127-10_50.pdf
- [24267] Manual audit seed
- [24268] drive.google.com/drive/folders/1eNHI_GKsbmMSjeCENRklvtVh8imGSUvy

Fork inheritance lineage and inherited audits are included when available.
