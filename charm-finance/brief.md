# Agentic Audit Brief: Charm Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 38.8% over 90 days

## Project Overview

- Project: Charm Finance (`charm-finance`)
- Website: [https://www.charm.fi/](https://www.charm.fi/)
- Lifecycle: declining (Tier 0, 82% below peak)
- Generated: 2026-06-10T22:27:18.766Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-03d9
- Chains: berachain, blast, boba, ethereum, linea, scroll
- Contract surface: 10 unique implementations (21 raw deployments)
- DeFi Llama TVL: $2,343,526.00
- On-chain TVL (included contracts): $14,217.52
- TVL by chain: Ethereum $14,217.52

## Project Description

Charm Finance is a permissionless liquidity management protocol with both legacy Ethereum V1 products and active V2 AlphaPro vault deployments. Its contracts include vaults and strategy/periphery components for managing concentrated liquidity positions on Uniswap V3-style AMMs, including user deposits, range rebalancing, and fee compounding.

### Architecture

The protocol consists of a single product family, Charm Finance V2, centered around the AlphaProVaultFactory which deploys and manages vault instances. No shared infrastructure or cross-family dependencies are present.

## Audit Coverage Summary

- Verified implementations audited: 3/6 (50.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 10
- Raw deployments: 21
- Audits discovered: 6
- Scoreable audits (matched contracts): 4
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/charm/information))
- ASD (verified + unaudited TVL): $0.00
- Latest audit: 2025-06 (aging)
- Staleness: 0 fresh, 1 aging, 4 stale, 0 unknown
- Tier 1 coverage: 50.0% (Code4rena, Spearbit)
- Note: This protocol is classified as [declining]. ASD of $0.00 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 33.3% | 2023-06 |
| Spearbit | Tier 1 | 2 | 33.3% | 2025-06 |
| Code4rena | Tier 1 | 1 | 16.7% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AlphaVault | core_logic | ethereum | 4 deployments: ethereum [`0x55535c...d0d21a`](./contracts/ethereum-1/0x55535c4c56f6bf373e06c43e44c0356aafd0d21a/); ethereum `0x9bf7b4...164322`; ethereum `0xbd7c6d...4e8a66`; ethereum `0xe72f3e...2c6c11` | ✅ Audited |
| AlphaProVault | core_logic | berachain | 4 deployments: linea `0x8cbc88...91572c`; berachain [`0x0a4b7a...e9baea`](./contracts/berachain-80094/0x0a4b7ac0723d0d08de255aa9d574958c66e9baea/); berachain `0xf0f42c...05df61`; blast `0x8cbc88...91572c` | ✅ Audited |
| AlphaProVaultFactory | registry | berachain | 5 deployments: linea `0x8c554f...e50e07`; berachain [`0x189bd7...6ed137`](./contracts/berachain-80094/0x189bd734c2f1beeaca81e0edbb1ce3b8a16ed137/); berachain `0x78f25a...b4ad15`; blast `0x8c554f...e50e07`; scroll `0xc2cc57...a32e77` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CubePool | core_logic | ethereum | [`0x23f6a2...bc1b67`](./contracts/ethereum-1/0x23f6a2d8d691294c3a1144eed14f5632e8bc1b67/) | ⚠️ Unaudited |
| AlphaProPeriphery | periphery | berachain | 2 deployments: berachain [`0xe2ac68...331a66`](./contracts/berachain-80094/0xe2ac68fe15a8e64639aedcda30867cac04331a66/); berachain `0xf1b21f...39a7ee` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | ethereum | [`0xcb591f...73aff4`](./contracts/ethereum-1/0xcb591fa448c9b67e206d404c0d3219011173aff4/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | boba | `0xfaf1af...6d8a07` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xc2cc57...a32e77` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xfcc5d3...780d3b` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xc2cc57...a32e77` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/charm/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [Rendered PDF capture](https://3306594273-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FncWpbfiN022KvH5AGrQq%2Fuploads%2FIM3bniGpiEo24osqeSJ5%2Freport-cantinacode-charm-0604.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | 9 | high |
| [Rendered PDF capture](https://3306594273-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FncWpbfiN022KvH5AGrQq%2Fuploads%2FcDHlWmzrwu3w7pAxW6dG%2FPeckShield-Audit-Report-Charm-v1.0.pdf) | PeckShield | Audit | 2023-06 | stale | Direct | contract_name | 4 | high |
| [Rendered PDF capture](https://3306594273-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FncWpbfiN022KvH5AGrQq%2Fuploads%2FLx7bFYx6tcfSpsdqT3jV%2FPeckShield-Audit-Report-Charm-AlphaPro-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | 9 | high |
| [Rendered PDF capture](https://3306594273-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FncWpbfiN022KvH5AGrQq%2Fuploads%2Fcblzw4RcfNUsNN1dnlPG%2FREP-Charm%20Finance%20Alpha%20Vaults-2021-06-30.pdf) | Code4rena | Contest | 2021-06 | stale | Direct | contract_name | 4 | high |
| [Audit Report - Charm Finance [27.10.2020].pdf](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20Charm%20Finance%20%5B27.10.2020%5D.pdf) | unknown | Audit | 2020-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x23f6a2...bc1b67`](./contracts/ethereum-1/0x23f6a2d8d691294c3a1144eed14f5632e8bc1b67/) | CubePool | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xe2ac68...331a66`](./contracts/berachain-80094/0xe2ac68fe15a8e64639aedcda30867cac04331a66/) | AlphaProPeriphery | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb591f...73aff4`](./contracts/ethereum-1/0xcb591fa448c9b67e206d404c0d3219011173aff4/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=26

Zero-match audit list:

- [2881] Audit Report - Charm Finance [27.10.2020].pdf

Fork inheritance lineage and inherited audits are included when available.
