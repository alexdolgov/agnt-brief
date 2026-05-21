# Agentic Audit Brief: Charm Finance

⚠️ Lifecycle status: UNKNOWN - TVL dropped 43.8% over 90 days

## Project Overview

- Project: Charm Finance (`charm-finance`)
- Website: [https://www.charm.fi/](https://www.charm.fi/)
- Lifecycle: unknown (Tier 0, 83% below peak)
- Generated: 2026-05-21T23:38:46.149Z
- Pipeline run: v2-pipeline-2026-05-21-79adca-8fc5
- Chains: berachain, blast, boba, linea, scroll
- Contract surface: 6 unique implementations (12 raw deployments)
- DeFi Llama TVL: $2,195,939.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Charm Finance is a liquidity management protocol that automates concentrated liquidity positions on Uniswap V3. It uses vaults to manage user deposits, optimize fee earnings, and rebalance positions to maintain desired price ranges.

### Architecture

The AlphaProVaultFactory deploys and manages individual vault contracts, which are the primary user-facing contracts. All contracts share the same deployer cluster, indicating a unified development and deployment process.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 6
- Raw deployments: 12
- Audits discovered: 5
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 5 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AlphaProVault | core_logic | berachain | 4 deployments: linea `0x8cbc88...91572c`; berachain [`0x0a4b7a...e9baea`](./contracts/berachain-80094/0x0a4b7ac0723d0d08de255aa9d574958c66e9baea/); berachain `0xf0f42c...05df61`; blast `0x8cbc88...91572c` | ⚠️ Unaudited |
| AlphaProVaultFactory | registry | berachain | 4 deployments: linea `0x8c554f...e50e07`; berachain [`0x189bd7...6ed137`](./contracts/berachain-80094/0x189bd734c2f1beeaca81e0edbb1ce3b8a16ed137/); blast `0x8c554f...e50e07`; scroll `0xc2cc57...a32e77` | ⚠️ Unaudited |

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
|---|---|---|---|---|---|---|---:|---|
| [DL audit link](https://learn.charm.fi/charm/appendix/audit-reports) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [GitBook file OaQCjHrFCVhRzEVF9b7E](https://learn.charm.fi/charm/files/oaqcjhrfcvhrzevf9b7e) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [GitBook file AOpzUkn21usMXC4JZ16x](https://learn.charm.fi/charm/files/aopzukn21usmxc4jz16x) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [GitBook file hCl3DoCCCA1oJzhn85Os](https://learn.charm.fi/charm/files/hcl3doccca1ojzhn85os) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [GitBook file KkW1jpiOJtyXURe0G6bC](https://learn.charm.fi/charm/files/kkw1jpiojtyxure0g6bc) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | [`0x0a4b7a...e9baea`](./contracts/berachain-80094/0x0a4b7ac0723d0d08de255aa9d574958c66e9baea/) | AlphaProVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x189bd7...6ed137`](./contracts/berachain-80094/0x189bd734c2f1beeaca81e0edbb1ce3b8a16ed137/) | AlphaProVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [1766] DL audit link
- [1767] GitBook file OaQCjHrFCVhRzEVF9b7E
- [1768] GitBook file AOpzUkn21usMXC4JZ16x
- [1769] GitBook file hCl3DoCCCA1oJzhn85Os
- [1770] GitBook file KkW1jpiOJtyXURe0G6bC

Fork inheritance lineage and inherited audits are included when available.
