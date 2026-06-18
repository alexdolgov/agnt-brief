# Agentic Audit Brief: Ostium

## Project Overview

- Project: Ostium (`ostium`)
- Website: [https://www.ostium.io/](https://www.ostium.io/)
- Lifecycle: active (Tier 0, 54.4% below peak)
- Generated: 2026-06-18T17:51:10.557Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-748f
- Chains: arbitrum
- Contract surface: 12 unique implementations (12 raw deployments)
- DeFi Llama TVL: $47,184,559.22
- On-chain TVL (included contracts): $29,117,113.47
- TVL by chain: Arbitrum $29,117,113.47

## Project Description

Ostium is a decentralized derivatives protocol on Arbitrum One that enables users to trade synthetic assets and manage positions through a vault-based system. It provides infrastructure for price feeds, trade execution, and profit/loss settlement.

### Architecture

The OstiumVault holds user collateral and interacts with OstiumTrading for trade execution, while OstiumTradingStorage maintains trade state. Price feeds from OstiumPriceRouter and upkeep contracts support trade settlement and profit/loss calculations via OstiumOpenPnl.

## Contract Surface Quality

- Indexed contracts: 40; live-surface contracts included: 12 (12 live, 0 unknown).
- Excluded by liveness: 26 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 9/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 12/12 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 12
- Audits discovered: 7
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Staleness: 7 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 12 | 100.0% | 2025-11 |
| Pashov Audit Group | Tier 2 | 8 | 66.7% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OstiumVault | core_logic | arbitrum | unit-38578 | [`0x20d419...e27f98`](./contracts/arbitrum-42161/0x20d419a8e12c45f88fda7c5760bb6923cee27f98/) | ✅ Audited |
| OstiumLockedDepositNft | token | arbitrum | n/a | [`0xb4f112...31c8d3`](./contracts/arbitrum-42161/0xb4f1123be58f5d69e1cf565ed8756c7fcf31c8d3/) | ✅ Audited |
| OstiumOpenPnl | unknown | arbitrum | unit-38589 | [`0xe607ac...d1858c`](./contracts/arbitrum-42161/0xe607ac9ff58697c5978afa1fc1c5c437a6d1858c/) | ✅ Audited |
| OstiumPairInfos | periphery | arbitrum | unit-38580 | [`0x389024...c9d66c`](./contracts/arbitrum-42161/0x3890243a8fc091c626ed26c087a028b46bc9d66c/) | ✅ Audited |
| OstiumPairsStorage | registry | arbitrum | unit-38579 | [`0x260e34...577823`](./contracts/arbitrum-42161/0x260e349f643f12797fdc6f8c9d3df211d5577823/) | ✅ Audited |
| OstiumPriceUpKeep | operational_periphery | arbitrum | unit-38582 | [`0x52b2a7...b77f0c`](./contracts/arbitrum-42161/0x52b2a78e12b09b66c6c8ce291d653d40bab77f0c/) | ✅ Audited |
| OstiumPrivatePriceUpKeep | operational_periphery | arbitrum | unit-38587 | [`0xb71ec9...7a3d36`](./contracts/arbitrum-42161/0xb71ec9ebd8145dacacf6724363143cb5667a3d36/) | ✅ Audited |
| OstiumRegistry | registry | arbitrum | n/a | [`0x799a13...9608d2`](./contracts/arbitrum-42161/0x799a139ae56e11f0476ace2f6118cfcaed9608d2/) | ✅ Audited |
| OstiumTimelockOwner | governance | arbitrum | n/a | [`0xeb85dc...23bbf7`](./contracts/arbitrum-42161/0xeb85dc6095c74d36500c9cdcacc15ecdc223bbf7/) | ✅ Audited |
| OstiumTradesUpKeep | unknown | arbitrum | unit-38585 | [`0x959da1...f57324`](./contracts/arbitrum-42161/0x959da1452238f71f17f7da5dba2e9c04fef57324/) | ✅ Audited |
| OstiumTrading | unknown | arbitrum | unit-38583 | [`0x6d0ba1...702411`](./contracts/arbitrum-42161/0x6d0ba1f9996dbd8885827e1b2e8f6593e7702411/) | ✅ Audited |
| OstiumTradingStorage | unknown | arbitrum | unit-38588 | [`0xccd589...3d66e7`](./contracts/arbitrum-42161/0xccd5891083a8acd2074690f65d3024e7d13d66e7/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| [- [Smart Contract Audits](): Independent audits by Zellic, ThreeSigma, and Pashov](https://docs.ostium.com/protocol/security/audits.md) | Pashov Audit Group | Audit | 2026-01 | fresh | Direct | contract_name | 5 | high |
| [Rendered PDF capture](https://1263702948-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCEDPLHGTrrpP1i2dbe3d%2Fuploads%2FaMgw1k5iR4SvbYWRcs7q%2FOstium%20-%20Zellic%20Audit%20Report%20(1).pdf) | Zellic | Audit | 2025-11 | fresh | Direct | contract_name | 11 | high |
| [Rendered PDF capture](https://1263702948-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCEDPLHGTrrpP1i2dbe3d%2Fuploads%2F1NAt99nKJ1HesxyWjElF%2FZellic%20Nov%2025.pdf) | Zellic | Audit | 2025-11 | fresh | Direct | contract_name | 12 | high |
| [Rendered PDF capture](https://1263702948-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCEDPLHGTrrpP1i2dbe3d%2Fuploads%2FMpYIMzIusmebDMScUlYB%2FOstiumAudit.pdf) | Zellic | Audit | 2025-11 | fresh | Direct | contract_name | 11 | high |
| [Rendered PDF capture](https://1263702948-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCEDPLHGTrrpP1i2dbe3d%2Fuploads%2FG0Of6YAPlrOIPs51aj16%2FOstium-security-review_2025-01-21.pdf) | Zellic | Audit | 2025-11 | fresh | Direct | contract_name | 12 | high |
| [Rendered PDF capture](https://1263702948-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCEDPLHGTrrpP1i2dbe3d%2Fuploads%2F7b08UITTgMLh1ej19d7I%2FOstium-security-review_2025-04-06.pdf) | Zellic | Audit | 2025-11 | fresh | Direct | contract_name | 5 | high |
| [Rendered PDF capture](https://1263702948-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCEDPLHGTrrpP1i2dbe3d%2Fuploads%2F342r2xPX6yppDzAfPLVz%2FPashov%20Jan%2026.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | contract_name | 8 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 9 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=7
- Match method counts: extraction_exact=224

Fork inheritance lineage and inherited audits are included when available.
