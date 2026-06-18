# Agentic Audit Brief: Meta Pool

## Project Overview

- Project: Meta Pool (`meta-pool`)
- Website: [https://metapool.app](https://metapool.app)
- Lifecycle: active (Tier 0, 55.2% below peak)
- Generated: 2026-06-18T11:30:26.908Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-a45b
- Chains: aurora, ethereum
- Contract surface: 17 unique implementations (19 raw deployments)
- DeFi Llama TVL: $69,744,030.00
- On-chain TVL (included contracts): $3,963,969.94
- TVL by chain: Ethereum $3,963,969.94

## Project Description

Meta Pool is a multi-chain liquid staking DAO and product suite with validator infrastructure, governance, and incubator activity. The protocol has major activity on NEAR and Ethereum, with additional products on Solana, Story, Aurora, and other supported networks. Any analysis limited to Ethereum and Aurora contracts should be presented as partial EVM coverage, not as protocol-wide coverage.

### Architecture

The Meta Pool family provides shared governance (MpDaoToken, VotingPowerV1) and proxy infrastructure (ProxyAdmin, GnosisSafeProxy) used across all product lines. Meta Pool ETH and Meta Pool Near are chain-specific extensions that rely on the core liquid staking logic and token standards from the main family.

## Contract Surface Quality

- Indexed contracts: 57; live-surface contracts included: 19 (0 live, 19 unknown).
- Excluded by liveness: 28 inactive, 10 singleton, 0 uninitialized.
- Deployment units: 0/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/6 (50.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 17
- Raw deployments: 19
- Audits discovered: 6
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $3,963,969.94
- Latest audit: 2024-06 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 50.0% | 2024-06 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LiquidUnstakePool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0xaba64e...37513c`](./contracts/ethereum-1/0xaba64e88f55c769d46c17beb4c70fde62d37513c/); ethereum `0xcadd97...66d675` | ✅ Audited |
| Staking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x374748...5a111a`](./contracts/ethereum-1/0x3747484567119592ff6841df399cf679955a111a/); ethereum `0xb11284...f27b39` | ✅ Audited |
| Withdrawal | operational_periphery | ethereum | n/a | [`0xe3355f...833cd9`](./contracts/ethereum-1/0xe3355fbbf8b85ebce83c5e9e846818b82b833cd9/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MpDaoToken | token | ethereum | n/a | [`0x798bcb...8b361d`](./contracts/ethereum-1/0x798bcb35d2d48c8ce7ef8171860b8d53a98b361d/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-36401 | [`0x24d966...79d971`](./contracts/ethereum-1/0x24d9664ba8384d94499d6698ab285b69e879d971/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | [`0x806f87...a1f182`](./contracts/ethereum-1/0x806f870ee04a2cc8bf2ad053baa5ed9999a1f182/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

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
| UnnamedContract | unknown | ethereum | n/a | `0xfbb18e...551a02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe394b...ee2106` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x0df588...bd3566` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x486182...69d146` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [blocksec_lockup_v1.0-signed-audit.pdf](https://github.com/Meta-Pool/lockup-stake-metapool/blob/master/docs/blocksec_lockup_v1.0-signed-audit.pdf) | unknown | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [2024-06 Blocksec Audit.pdf](https://github.com/Meta-Pool/metapool-shortcut/blob/main/audit/2024-06%20Blocksec%20Audit.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [MetaPool_ETH_Staking_Staking_Pools_Aurora_Smart_Contract_Security.pdf](https://github.com/Meta-Pool/staking-pool-aurora/blob/main/audits/MetaPool_ETH_Staking_Staking_Pools_Aurora_Smart_Contract_Security.pdf) | unknown | Audit | 2023-05 | stale | Direct | contract_name | 5 | high |
| [DL audit link](https://1322102881-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5HvxIwoS8YhIHItpA1lt%2Fuploads%2FUMkSZziqO0AyoCGzxE7D%2Ftpyrced_blocksec_metapool_restaking_v1.0-signed.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://370551154-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MkhZe3MGAhTcvTLTzJF-887967055%2Fuploads%2FBnkI1s1NHp6rjw4vBsZo%2FBlocksec_Audit_2.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://1322102881-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5HvxIwoS8YhIHItpA1lt%2Fuploads%2FOaz0PbKGiCBzBI2hKZcv%2FNM_0434_METAPOOL_FINAL.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x798bcb...8b361d`](./contracts/ethereum-1/0x798bcb35d2d48c8ce7ef8171860b8d53a98b361d/) | MpDaoToken | token | $3,963,969.94 | Verified native implementation with $3,963,969.94 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=19

Zero-match audit list:

- [4894] blocksec_lockup_v1.0-signed-audit.pdf
- [4895] 2024-06 Blocksec Audit.pdf
- [15257] DL audit link
- [15258] DL audit link
- [15259] DL audit link

Fork inheritance lineage and inherited audits are included when available.
