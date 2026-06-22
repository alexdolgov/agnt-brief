# Agentic Audit Brief: Match Finance

⚠️ Lifecycle status: DEAD - TVL dropped 32.5% over 90 days

## Project Overview

- Project: Match Finance (`match-finance`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-06-19T19:03:42.272Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: ethereum
- Contract surface: 11 unique implementations (11 raw deployments)
- DeFi Llama TVL: $2,154.90
- On-chain TVL (included contracts): $30,149.39
- TVL by chain: Ethereum $30,149.39

## Project Description

Match Finance is a yield aggregator on Ethereum that optimizes returns through strategies like liquid staking and liquidity provision. It offers staking, vesting, and reward management for its native MATCH token, enabling users to earn enhanced yields.

### Architecture

The MatchPool serves as the central yield aggregation hub, while LybraStETHVault implements a specific liquid staking strategy. VLMatchStaking manages MATCH token staking, and all core contracts are accessed via TransparentUpgradeableProxy instances, with UniswapV2Pair providing liquidity for the MATCH token.

## Contract Surface Quality

- Indexed contracts: 98; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 65 inactive, 22 singleton, 0 uninitialized.
- Deployment units: 0/11 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 11
- Raw deployments: 11
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $30,149.39
- Latest audit: 2023-09 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $30,149.39 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LybraStETHVault | core_logic | ethereum | n/a | [`0xa980d4...e06f0e`](./contracts/ethereum-1/0xa980d4c0c2e48d305b582aa439a3575e3de06f0e/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x3a0ef6...01e569`](./contracts/ethereum-1/0x3a0ef60e803aae8e94f741e7f61c7cbe9501e569/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xc2966a...2ed89e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc62686...4647c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc83535...4690ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd585aa...52f247` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf3ac4...4262cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0dcb3...705153` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec7c6c...c5956d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed1167...981ebd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf284b9...2b8825` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://beosin.com/audits/Match-Finance_202309281659.pdf) | unknown | Audit | 2023-09 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa980d4...e06f0e`](./contracts/ethereum-1/0xa980d4c0c2e48d305b582aa439a3575e3de06f0e/) | LybraStETHVault | core_logic | $30,149.39 | Verified native implementation with $30,149.39 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=9

Zero-match audit list:

- [13462] DL audit link

Fork inheritance lineage and inherited audits are included when available.
