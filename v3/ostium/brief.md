# Agentic Audit Brief: Ostium

## Project Overview

- Project: Ostium (`ostium`)
- Website: [https://www.ostium.io/](https://www.ostium.io/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:38.737Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: arbitrum
- Contract surface: 16 unique implementations (17 raw deployments)
- DeFi Llama TVL: $57,611,789.99
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 11 project-authored contract(s) across 1 chain(s); 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 1 common project-authored base contract(s) (erc165). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 34; live-surface contracts included: 16 (16 live, 0 unknown).
- Excluded by liveness: 18 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 10/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 12/16 (75.0%)
- Deployed-live implementations: 16 of 16 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 12/16
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 16
- Raw deployments: 17
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 7 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 12 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 12 | 75.0% | 2025-11 |
| Pashov Audit Group | Tier 2 | 8 | 50.0% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OstiumLockedDepositNft | token | arbitrum | n/a | [`0xb4f112...31c8d3`](./contracts/arbitrum-42161/0xb4f1123be58f5d69e1cf565ed8756c7fcf31c8d3/) | ✅ Audited |
| OstiumOpenPnl | unknown | arbitrum | unit-12 | [`0xe607ac...d1858c`](./contracts/arbitrum-42161/0xe607ac9ff58697c5978afa1fc1c5c437a6d1858c/) | ✅ Audited |
| OstiumPairInfos | periphery | arbitrum | unit-3 | [`0x389024...c9d66c`](./contracts/arbitrum-42161/0x3890243a8fc091c626ed26c087a028b46bc9d66c/) | ✅ Audited |
| OstiumPairsStorage | registry | arbitrum | unit-2 | [`0x260e34...577823`](./contracts/arbitrum-42161/0x260e349f643f12797fdc6f8c9d3df211d5577823/) | ✅ Audited |
| OstiumPriceUpKeep | operational_periphery | arbitrum | unit-5 | [`0x52b2a7...b77f0c`](./contracts/arbitrum-42161/0x52b2a78e12b09b66c6c8ce291d653d40bab77f0c/) | ✅ Audited |
| OstiumPrivatePriceUpKeep | operational_periphery | arbitrum | unit-10 | [`0xb71ec9...7a3d36`](./contracts/arbitrum-42161/0xb71ec9ebd8145dacacf6724363143cb5667a3d36/) | ✅ Audited |
| OstiumRegistry | registry | arbitrum | n/a | [`0x799a13...9608d2`](./contracts/arbitrum-42161/0x799a139ae56e11f0476ace2f6118cfcaed9608d2/) | ✅ Audited |
| OstiumTimelockOwner | governance | arbitrum | n/a | [`0xeb85dc...23bbf7`](./contracts/arbitrum-42161/0xeb85dc6095c74d36500c9cdcacc15ecdc223bbf7/) | ✅ Audited |
| OstiumTradesUpKeep | unknown | arbitrum | unit-8 | [`0x959da1...f57324`](./contracts/arbitrum-42161/0x959da1452238f71f17f7da5dba2e9c04fef57324/) | ✅ Audited |
| OstiumTrading | unknown | arbitrum | unit-6 | [`0x6d0ba1...702411`](./contracts/arbitrum-42161/0x6d0ba1f9996dbd8885827e1b2e8f6593e7702411/) | ✅ Audited |
| OstiumTradingStorage | unknown | arbitrum | unit-11 | [`0xccd589...3d66e7`](./contracts/arbitrum-42161/0xccd5891083a8acd2074690f65d3024e7d13d66e7/) | ✅ Audited |
| OstiumVault | core_logic | arbitrum | unit-1 | [`0x20d419...e27f98`](./contracts/arbitrum-42161/0x20d419a8e12c45f88fda7c5760bb6923cee27f98/) | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OstiumPriceRouter | unknown | arbitrum | unit-9 | 2 deployments: arbitrum [`0x5126c2...63d0ba`](./contracts/arbitrum-42161/0x5126c2a3f681de161198d026facf927b8f63d0ba/); arbitrum `0xab3333...4c4473` | ⚠️ Unaudited |
| OstiumPriceRouter | unknown | arbitrum | unit-4 | [`0x52453f...f161b4`](./contracts/arbitrum-42161/0x52453fbc4a33f7a2a0a01d67b952625816f161b4/) | ⚠️ Unaudited |
| OstiumTradingCallbacks | unknown | arbitrum | unit-7 | [`0x7720fc...9742a9`](./contracts/arbitrum-42161/0x7720fc8c8680bf4a1af99d44c6c265a74e9742a9/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | arbitrum | n/a | [`0x083f97...1f4025`](./contracts/arbitrum-42161/0x083f97babf33d4abc03151b5dec98170761f4025/) | ⚠️ Unaudited |

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
| [audits.md](https://docs.ostium.com/protocol/security/audits.md) | Pashov Audit Group | Audit | 2026-01 | fresh | Direct | contract_name | 5 | n/a |
| [spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf](https://1263702948-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCEDPLHGTrrpP1i2dbe3d%2Fuploads%2FaMgw1k5iR4SvbYWRcs7q%2FOstium%20-%20Zellic%20Audit%20Report%20(1).pdf) | Zellic | Audit | 2025-11 | fresh | Direct | contract_name | 11 | n/a |
| [spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf](https://1263702948-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCEDPLHGTrrpP1i2dbe3d%2Fuploads%2F1NAt99nKJ1HesxyWjElF%2FZellic%20Nov%2025.pdf) | Zellic | Audit | 2025-11 | fresh | Direct | contract_name | 12 | n/a |
| [spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf](https://1263702948-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCEDPLHGTrrpP1i2dbe3d%2Fuploads%2FMpYIMzIusmebDMScUlYB%2FOstiumAudit.pdf) | Zellic | Audit | 2025-11 | fresh | Direct | contract_name | 11 | n/a |
| [spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf](https://1263702948-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCEDPLHGTrrpP1i2dbe3d%2Fuploads%2FG0Of6YAPlrOIPs51aj16%2FOstium-security-review_2025-01-21.pdf) | Zellic | Audit | 2025-11 | fresh | Direct | contract_name | 12 | n/a |
| [spaces/CEDPLHGTrrpP1i2dbe3d/uploads/7b08UITTgMLh1ej19d7I/Ostium-security-review_2025-04-06.pdf](https://1263702948-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCEDPLHGTrrpP1i2dbe3d%2Fuploads%2F7b08UITTgMLh1ej19d7I%2FOstium-security-review_2025-04-06.pdf) | Zellic | Audit | 2025-11 | fresh | Direct | contract_name | 5 | n/a |
| [spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf](https://1263702948-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCEDPLHGTrrpP1i2dbe3d%2Fuploads%2F342r2xPX6yppDzAfPLVz%2FPashov%20Jan%2026.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | contract_name | 8 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=64

Fork inheritance lineage and inherited audits are included when available.
