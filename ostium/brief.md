# Agentic Audit Brief: Ostium

## Project Overview

- Project: Ostium (`ostium`)
- Website: [https://www.ostium.io/](https://www.ostium.io/)
- Lifecycle: active (Tier 0, 54.4% below peak)
- Generated: 2026-06-17T07:00:50.359Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum
- Contract surface: 28 unique implementations (38 raw deployments)
- DeFi Llama TVL: $47,184,559.22
- On-chain TVL (included contracts): $29,117,113.47
- TVL by chain: Arbitrum $29,117,113.47

## Project Description

Ostium is a decentralized derivatives protocol on Arbitrum One that enables users to trade synthetic assets and manage positions through a vault-based system. It provides infrastructure for price feeds, trade execution, and profit/loss settlement.

### Architecture

The OstiumVault holds user collateral and interacts with OstiumTrading for trade execution, while OstiumTradingStorage maintains trade state. Price feeds from OstiumPriceRouter and upkeep contracts support trade settlement and profit/loss calculations via OstiumOpenPnl.

## Contract Surface Quality

- Indexed contracts: 40; live-surface contracts included: 38 (0 live, 38 unknown).
- Excluded by liveness: 0 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 0/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 15/28 (53.6%)
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 28
- Raw deployments: 38
- Audits discovered: 7
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Staleness: 7 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 15 | 53.6% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OstiumVault | core_logic | arbitrum | unit-31067 | [`0x20d419...e27f98`](./contracts/arbitrum-42161/0x20d419a8e12c45f88fda7c5760bb6923cee27f98/) | ✅ Audited |
| OstiumOpenPnl | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2ab490...b72146`](./contracts/arbitrum-42161/0x2ab490baeacf23a02895d2e17b348469ddb72146/); arbitrum `0x6bf0c7...ea58eb` | ✅ Audited |
| OstiumOpenPnl | unknown | arbitrum | unit-31078 | [`0xe607ac...d1858c`](./contracts/arbitrum-42161/0xe607ac9ff58697c5978afa1fc1c5c437a6d1858c/) | ✅ Audited |
| OstiumPairInfos | periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x1da56c...27ae13`](./contracts/arbitrum-42161/0x1da56c3a1234a2e4ec518f1cf67ae1067327ae13/); arbitrum `0xf77957...9f99f8` | ✅ Audited |
| OstiumPairInfos | periphery | arbitrum | unit-31069 | [`0x389024...c9d66c`](./contracts/arbitrum-42161/0x3890243a8fc091c626ed26c087a028b46bc9d66c/) | ✅ Audited |
| OstiumPriceRouter | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x4b0c3c...441ad7`](./contracts/arbitrum-42161/0x4b0c3c77d398912491f192d265b237c8d4441ad7/); arbitrum `0x7151fc...ddb306` | ✅ Audited |
| OstiumPriceRouter | operational_periphery | arbitrum | unit-31070 | [`0x52453f...f161b4`](./contracts/arbitrum-42161/0x52453fbc4a33f7a2a0a01d67b952625816f161b4/) | ✅ Audited |
| OstiumTrading | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x3aa5cc...259652`](./contracts/arbitrum-42161/0x3aa5ccc377921d440e4bced103c4f8687f259652/); arbitrum `0x4298cc...89cc0b`; arbitrum `0xe6bc4e...5f4217` | ✅ Audited |
| OstiumTrading | unknown | arbitrum | unit-31072 | [`0x6d0ba1...702411`](./contracts/arbitrum-42161/0x6d0ba1f9996dbd8885827e1b2e8f6593e7702411/) | ✅ Audited |
| OstiumTradingCallbacks | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4ca659...8ef37e`](./contracts/arbitrum-42161/0x4ca659bb271aec5025596fdeca725ea88d8ef37e/); arbitrum `0xe75d8a...65f30d` | ✅ Audited |
| OstiumTradingCallbacks | unknown | arbitrum | unit-31073 | [`0x7720fc...9742a9`](./contracts/arbitrum-42161/0x7720fc8c8680bf4a1af99d44c6c265a74e9742a9/) | ✅ Audited |
| OstiumTradingStorage | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x496a34...e43f2c`](./contracts/arbitrum-42161/0x496a341a7a6b8950d648e34a8bce892e45e43f2c/); arbitrum `0xf2e345...ff87ad` | ✅ Audited |
| OstiumTradingStorage | unknown | arbitrum | unit-31077 | [`0xccd589...3d66e7`](./contracts/arbitrum-42161/0xccd5891083a8acd2074690f65d3024e7d13d66e7/) | ✅ Audited |
| OstiumVault | core_logic | arbitrum | n/a | [`0x51221d...238208`](./contracts/arbitrum-42161/0x51221db105999184a875b58c6cc371d43c238208/) | ✅ Audited |
| ProxyAdmin | governance | arbitrum | n/a | [`0x083f97...1f4025`](./contracts/arbitrum-42161/0x083f97babf33d4abc03151b5dec98170761f4025/) | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OstiumLockedDepositNft | token | arbitrum | n/a | [`0xb4f112...31c8d3`](./contracts/arbitrum-42161/0xb4f1123be58f5d69e1cf565ed8756c7fcf31c8d3/) | ⚠️ Unaudited |
| OstiumPairsStorage | registry | arbitrum | unit-31068 | [`0x260e34...577823`](./contracts/arbitrum-42161/0x260e349f643f12797fdc6f8c9d3df211d5577823/) | ⚠️ Unaudited |
| OstiumPairsStorage | registry | arbitrum | n/a | 2 deployments: arbitrum [`0x54c1ce...a6d0c2`](./contracts/arbitrum-42161/0x54c1cebb52f693dc7975bf0608d0be2ea8a6d0c2/); arbitrum `0xb7cfba...09d248` | ⚠️ Unaudited |
| OstiumPriceUpKeep | operational_periphery | arbitrum | unit-31071 | [`0x52b2a7...b77f0c`](./contracts/arbitrum-42161/0x52b2a78e12b09b66c6c8ce291d653d40bab77f0c/) | ⚠️ Unaudited |
| OstiumPriceUpKeep | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x8b26fe...53ad06`](./contracts/arbitrum-42161/0x8b26fe35c84c6d49a730f11e0034b47b0653ad06/); arbitrum `0xba99c3...ad8a02` | ⚠️ Unaudited |
| OstiumPrivatePriceUpKeep | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0xb7138b...a0c29c`](./contracts/arbitrum-42161/0xb7138b18123e767ced87a93fba43915af5a0c29c/); arbitrum `0xefa6a2...5e81dc` | ⚠️ Unaudited |
| OstiumPrivatePriceUpKeep | operational_periphery | arbitrum | unit-31076 | [`0xb71ec9...7a3d36`](./contracts/arbitrum-42161/0xb71ec9ebd8145dacacf6724363143cb5667a3d36/) | ⚠️ Unaudited |
| OstiumRegistry | registry | arbitrum | n/a | [`0x799a13...9608d2`](./contracts/arbitrum-42161/0x799a139ae56e11f0476ace2f6118cfcaed9608d2/) | ⚠️ Unaudited |
| OstiumTimelockOwner | governance | arbitrum | n/a | [`0xeb85dc...23bbf7`](./contracts/arbitrum-42161/0xeb85dc6095c74d36500c9cdcacc15ecdc223bbf7/) | ⚠️ Unaudited |
| OstiumTradesUpKeep | unknown | arbitrum | unit-31074 | [`0x959da1...f57324`](./contracts/arbitrum-42161/0x959da1452238f71f17f7da5dba2e9c04fef57324/) | ⚠️ Unaudited |
| OstiumTradesUpKeep | unknown | arbitrum | n/a | [`0x98e569...479a83`](./contracts/arbitrum-42161/0x98e5695674e445ccc8cb2472e2d97a8c66479a83/) | ⚠️ Unaudited |
| OstiumVerifier | periphery | arbitrum | n/a | [`0xccf233...6c47ad`](./contracts/arbitrum-42161/0xccf233920e8cc9415ecf503b992881d69b6c47ad/) | ⚠️ Unaudited |
| TradingCallbacksLib | unknown | arbitrum | n/a | [`0x10b454...2b6066`](./contracts/arbitrum-42161/0x10b45474ed1482a53840a945454174b12a2b6066/) | ⚠️ Unaudited |

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
| [- [Smart Contract Audits](): Independent audits by Zellic, ThreeSigma, and Pashov](https://docs.ostium.com/protocol/security/audits.md) | Pashov Audit Group | Audit | 2026-01 | fresh | Direct | contract_name | 22 | high |
| [Rendered PDF capture](https://1263702948-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCEDPLHGTrrpP1i2dbe3d%2Fuploads%2FaMgw1k5iR4SvbYWRcs7q%2FOstium%20-%20Zellic%20Audit%20Report%20(1).pdf) | Zellic | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://1263702948-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCEDPLHGTrrpP1i2dbe3d%2Fuploads%2F1NAt99nKJ1HesxyWjElF%2FZellic%20Nov%2025.pdf) | Zellic | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://1263702948-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCEDPLHGTrrpP1i2dbe3d%2Fuploads%2FMpYIMzIusmebDMScUlYB%2FOstiumAudit.pdf) | Zellic | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://1263702948-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCEDPLHGTrrpP1i2dbe3d%2Fuploads%2FG0Of6YAPlrOIPs51aj16%2FOstium-security-review_2025-01-21.pdf) | Zellic | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://1263702948-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCEDPLHGTrrpP1i2dbe3d%2Fuploads%2F7b08UITTgMLh1ej19d7I%2FOstium-security-review_2025-04-06.pdf) | Zellic | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://1263702948-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCEDPLHGTrrpP1i2dbe3d%2Fuploads%2F342r2xPX6yppDzAfPLVz%2FPashov%20Jan%2026.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xb4f112...31c8d3`](./contracts/arbitrum-42161/0xb4f1123be58f5d69e1cf565ed8756c7fcf31c8d3/) | OstiumLockedDepositNft | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x54c1ce...a6d0c2`](./contracts/arbitrum-42161/0x54c1cebb52f693dc7975bf0608d0be2ea8a6d0c2/) | OstiumPairsStorage | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8b26fe...53ad06`](./contracts/arbitrum-42161/0x8b26fe35c84c6d49a730f11e0034b47b0653ad06/) | OstiumPriceUpKeep | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb7138b...a0c29c`](./contracts/arbitrum-42161/0xb7138b18123e767ced87a93fba43915af5a0c29c/) | OstiumPrivatePriceUpKeep | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x799a13...9608d2`](./contracts/arbitrum-42161/0x799a139ae56e11f0476ace2f6118cfcaed9608d2/) | OstiumRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xeb85dc...23bbf7`](./contracts/arbitrum-42161/0xeb85dc6095c74d36500c9cdcacc15ecdc223bbf7/) | OstiumTimelockOwner | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x98e569...479a83`](./contracts/arbitrum-42161/0x98e5695674e445ccc8cb2472e2d97a8c66479a83/) | OstiumTradesUpKeep | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xccf233...6c47ad`](./contracts/arbitrum-42161/0xccf233920e8cc9415ecf503b992881d69b6c47ad/) | OstiumVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x10b454...2b6066`](./contracts/arbitrum-42161/0x10b45474ed1482a53840a945454174b12a2b6066/) | TradingCallbacksLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 12 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=24

Zero-match audit list:

- [11846] Rendered PDF capture
- [11847] Rendered PDF capture
- [11848] Rendered PDF capture
- [11849] Rendered PDF capture
- [11850] Rendered PDF capture
- [11851] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
