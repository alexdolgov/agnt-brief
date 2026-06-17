# Agentic Audit Brief: Meta Pool

## Project Overview

- Project: Meta Pool (`meta-pool`)
- Website: [https://metapool.app](https://metapool.app)
- Lifecycle: active (Tier 0, 55.2% below peak)
- Generated: 2026-06-17T07:00:35.701Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: aurora, ethereum
- Contract surface: 12 unique implementations (12 raw deployments)
- DeFi Llama TVL: $69,744,030.00
- On-chain TVL (included contracts): $3,963,969.94
- TVL by chain: Ethereum $3,963,969.94

## Project Description

Meta Pool is a multi-chain liquid staking DAO and product suite with validator infrastructure, governance, and incubator activity. The protocol has major activity on NEAR and Ethereum, with additional products on Solana, Story, Aurora, and other supported networks. Any analysis limited to Ethereum and Aurora contracts should be presented as partial EVM coverage, not as protocol-wide coverage.

### Architecture

The Meta Pool family provides shared governance (MpDaoToken, VotingPowerV1) and proxy infrastructure (ProxyAdmin, GnosisSafeProxy) used across all product lines. Meta Pool ETH and Meta Pool Near are chain-specific extensions that rely on the core liquid staking logic and token standards from the main family.

## Contract Surface Quality

- Indexed contracts: 65; live-surface contracts included: 12 (10 live, 2 unknown).
- Excluded by liveness: 43 inactive, 10 singleton, 0 uninitialized.
- Deployment units: 1/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 12
- Raw deployments: 12
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $3,963,969.94
- Latest audit: 2024-06 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MpDaoToken | token | ethereum | n/a | [`0x798bcb...8b361d`](./contracts/ethereum-1/0x798bcb35d2d48c8ce7ef8171860b8d53a98b361d/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-21486 | [`0x24d966...79d971`](./contracts/ethereum-1/0x24d9664ba8384d94499d6698ab285b69e879d971/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x20b911...17605b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48e562...bc9340` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8edfe3...1fc543` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8e57a...1a4a84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaedec0...4a75b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb19915...148db1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc29541...0f17f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe394b...ee2106` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x0df588...bd3566` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x486182...69d146` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [blocksec_lockup_v1.0-signed-audit.pdf](https://github.com/Meta-Pool/lockup-stake-metapool/blob/master/docs/blocksec_lockup_v1.0-signed-audit.pdf) | unknown | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [2024-06 Blocksec Audit.pdf](https://github.com/Meta-Pool/metapool-shortcut/blob/main/audit/2024-06%20Blocksec%20Audit.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [MetaPool_ETH_Staking_Staking_Pools_Aurora_Smart_Contract_Security.pdf](https://github.com/Meta-Pool/staking-pool-aurora/blob/main/audits/MetaPool_ETH_Staking_Staking_Pools_Aurora_Smart_Contract_Security.pdf) | unknown | Audit | 2023-05 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x798bcb...8b361d`](./contracts/ethereum-1/0x798bcb35d2d48c8ce7ef8171860b8d53a98b361d/) | MpDaoToken | token | $3,963,969.94 | Verified native implementation with $3,963,969.94 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=19

Zero-match audit list:

- [4894] blocksec_lockup_v1.0-signed-audit.pdf
- [4895] 2024-06 Blocksec Audit.pdf
- [4896] MetaPool_ETH_Staking_Staking_Pools_Aurora_Smart_Contract_Security.pdf

Fork inheritance lineage and inherited audits are included when available.
