# Agentic Audit Brief: Charm Finance

⚠️ Lifecycle status: UNKNOWN - TVL dropped 43.8% over 90 days

## Project Overview

- Project: Charm Finance (`charm-finance`)
- Website: [https://www.charm.fi/](https://www.charm.fi/)
- Lifecycle: unknown (Tier 0, 83% below peak)
- Generated: 2026-05-22T06:22:54.392Z
- Pipeline run: v2-pipeline-2026-05-22-630b00-d8ab
- Chains: berachain, blast, boba, linea, scroll
- Contract surface: 7 unique implementations (15 raw deployments)
- DeFi Llama TVL: $2,195,939.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Charm Finance is a liquidity management protocol that automates concentrated liquidity positions on Uniswap V3-style AMMs. It uses AlphaProVaults to manage user deposits, rebalance ranges, and compound fees to optimize yields.

### Architecture

The protocol consists of a single product family, Charm Finance V2, centered around the AlphaProVaultFactory which deploys and manages vault instances. No shared infrastructure or cross-family dependencies are present.

## Audit Coverage Summary

- Verified implementations audited: 2/3 (66.7%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 7
- Raw deployments: 15
- Audits discovered: 5
- Scoreable audits (matched contracts): 3
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/charm/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (fresh)
- Staleness: 1 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: 66.7% (Spearbit)
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 66.7% | 2023-06 |
| Spearbit | Tier 1 | 2 | 66.7% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AlphaProVault | core_logic | berachain | 4 deployments: linea `0x8cbc88...91572c`; berachain [`0x0a4b7a...e9baea`](./contracts/berachain-80094/0x0a4b7ac0723d0d08de255aa9d574958c66e9baea/); berachain `0xf0f42c...05df61`; blast `0x8cbc88...91572c` | ✅ Audited |
| AlphaProVaultFactory | registry | berachain | 5 deployments: linea `0x8c554f...e50e07`; berachain [`0x189bd7...6ed137`](./contracts/berachain-80094/0x189bd734c2f1beeaca81e0edbb1ce3b8a16ed137/); berachain `0x78f25a...b4ad15`; blast `0x8c554f...e50e07`; scroll `0xc2cc57...a32e77` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AlphaProPeriphery | periphery | berachain | 2 deployments: berachain [`0xe2ac68...331a66`](./contracts/berachain-80094/0xe2ac68fe15a8e64639aedcda30867cac04331a66/); berachain `0xf1b21f...39a7ee` | ⚠️ Unaudited |

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
| [Rendered PDF capture](https://3306594273-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FncWpbfiN022KvH5AGrQq%2Fuploads%2FIM3bniGpiEo24osqeSJ5%2Freport-cantinacode-charm-0604.pdf) | Spearbit | Audit | 2025-06 | fresh | Direct | contract_name | 9 | high |
| [Rendered PDF capture](https://3306594273-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FncWpbfiN022KvH5AGrQq%2Fuploads%2FcDHlWmzrwu3w7pAxW6dG%2FPeckShield-Audit-Report-Charm-v1.0.pdf) | PeckShield | Audit | 2023-06 | stale | Direct | contract_name | 4 | high |
| [Rendered PDF capture](https://3306594273-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FncWpbfiN022KvH5AGrQq%2Fuploads%2FLx7bFYx6tcfSpsdqT3jV%2FPeckShield-Audit-Report-Charm-AlphaPro-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | 9 | high |
| [Rendered PDF capture](https://3306594273-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FncWpbfiN022KvH5AGrQq%2Fuploads%2Fcblzw4RcfNUsNN1dnlPG%2FREP-Charm%20Finance%20Alpha%20Vaults-2021-06-30.pdf) | Code4rena | Contest | 2021-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | [`0xe2ac68...331a66`](./contracts/berachain-80094/0xe2ac68fe15a8e64639aedcda30867cac04331a66/) | AlphaProPeriphery | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=22

Zero-match audit list:

- [1794] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
