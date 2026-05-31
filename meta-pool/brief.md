# Agentic Audit Brief: Meta Pool

## Project Overview

- Project: Meta Pool (`meta-pool`)
- Website: [https://metapool.app](https://metapool.app)
- Lifecycle: active (Tier 0, 55.2% below peak)
- Generated: 2026-05-31T09:58:06.369Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: aurora, ethereum
- Contract surface: 41 unique implementations (65 raw deployments)
- DeFi Llama TVL: $95,295,173.00
- On-chain TVL (included contracts): $4,193,399.24
- TVL by chain: Ethereum $4,193,399.24

## Project Description

Meta Pool is a liquid staking and restaking protocol operating on Ethereum and Aurora. It allows users to stake assets and receive liquid tokens representing their staked positions, which can be used across DeFi while earning staking rewards.

### Architecture

The Meta Pool family provides shared governance (MpDaoToken, VotingPowerV1) and proxy infrastructure (ProxyAdmin, GnosisSafeProxy) used across all product lines. Meta Pool ETH and Meta Pool Near are chain-specific extensions that rely on the core liquid staking logic and token standards from the main family.

## Audit Coverage Summary

- Verified implementations audited: 6/12 (50.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 29
- Unique implementations: 41
- Raw deployments: 65
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $3,963,969.94
- Latest audit: 2024-06 (aging)
- Staleness: 0 fresh, 1 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 6 | 50.0% | 2024-06 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| LiquidUnstakePool | core_logic | ethereum | 4 deployments: ethereum [`0xaba64e...37513c`](./contracts/ethereum-1/0xaba64e88f55c769d46c17beb4c70fde62d37513c/); ethereum `0xcadd97...66d675`; ethereum `0xdf261f...4f03cc`; ethereum `0xea9fec...a1aa81` | ✅ Audited |
| LiquidityPool | core_logic | aurora | [`0x98d45f...186ae0`](./contracts/aurora-1313161554/0x98d45f7d4fcf992cb62fb439a889320400186ae0/) | ✅ Audited |
| StakedAuroraVault | core_logic | aurora | 6 deployments: aurora [`0x0339e7...932e7e`](./contracts/aurora-1313161554/0x0339e7dc66b85d5df0fa5c0dd5ccb61c8d932e7e/); aurora `0x2f1a12...e4db8e`; aurora `0x8a7feb...5de11d`; aurora `0x8a91d0...95ee6f`; aurora `0xb01d35...ca397f`; aurora `0xb6a8fa...1a5aed` | ✅ Audited |
| Staking | unknown | ethereum | 4 deployments: ethereum [`0x374748...5a111a`](./contracts/ethereum-1/0x3747484567119592ff6841df399cf679955a111a/); ethereum `0xb11284...f27b39`; ethereum `0xd06f6a...6f4a0e`; ethereum `0xd3db79...9513ac` | ✅ Audited |
| StakingManager | governance | aurora | [`0xfbc142...e5d336`](./contracts/aurora-1313161554/0xfbc1423a2a4453e162cdd535991bcc4143e5d336/) | ✅ Audited |
| Withdrawal | operational_periphery | ethereum | 3 deployments: ethereum [`0xcb894c...a03c61`](./contracts/ethereum-1/0xcb894c063c74053c9401ac8fdd9a9f2bb1a03c61/); ethereum `0xe3355f...833cd9`; ethereum `0xe55e5f...36af49` | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MpDaoToken | token | ethereum | [`0x798bcb...8b361d`](./contracts/ethereum-1/0x798bcb35d2d48c8ce7ef8171860b8d53a98b361d/) | ⚠️ Unaudited |
| EvmErc20 | token | aurora | 11 deployments: aurora [`0x07f9f7...332e30`](./contracts/aurora-1313161554/0x07f9f7f963c5cd2bbffd30ccfb964be114332e30/); aurora `0x098d5b...4e8a5f`; aurora `0x0b2097...3f15ae`; aurora `0x2b9025...ecba04`; aurora `0x749745...e52408`; aurora `0x984c25...610340`; aurora `0xc21ff0...357453`; aurora `0xc42c30...e8501d`; aurora `0xc8fdd3...8747d2`; aurora `0xda2585...91a3d2`; aurora `0xfca152...aa6e73` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0x24d966...79d971`](./contracts/ethereum-1/0x24d9664ba8384d94499d6698ab285b69e879d971/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0x806f87...a1f182`](./contracts/ethereum-1/0x806f870ee04a2cc8bf2ad053baa5ed9999a1f182/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | [`0x48afbb...d81710`](./contracts/ethereum-1/0x48afbbd342f64ef8a9ab1c143719b63c2ad81710/) | ⚠️ Unaudited |
| VotingPowerV1 | unknown | ethereum | 2 deployments: ethereum [`0x00b6e9...e4bb89`](./contracts/ethereum-1/0x00b6e95a520112c288d1899c3d46b5f282e4bb89/); ethereum `0xf8709e...104113` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (29)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x20b911...17605b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x48e562...bc9340` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x56c517...8f7ffa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8edfe3...1fc543` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa8e57a...1a4a84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaedec0...4a75b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb19915...148db1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc29541...0f17f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfbb18e...551a02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfe394b...ee2106` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x0db2e0...6809c0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x0df588...bd3566` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x158efd...375eec` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x1cc2f3...115d01` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x2137df...15f144` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x21dee4...e87403` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x226214...9cd0e7` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x2b22f6...2f154b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x3750be...76fd37` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x416285...6cbb63` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x486182...69d146` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x4fd509...257342` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x534bac...e62cf9` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x69e3a3...5a6cc8` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x7ca831...1cafe2` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xa1b107...6d9cd1` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xe742ae...a6c370` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xf56baf...768932` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xf86100...eff7c7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [blocksec_lockup_v1.0-signed-audit.pdf](https://github.com/Meta-Pool/lockup-stake-metapool/blob/master/docs/blocksec_lockup_v1.0-signed-audit.pdf) | unknown | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [2024-06 Blocksec Audit.pdf](https://github.com/Meta-Pool/metapool-shortcut/blob/main/audit/2024-06%20Blocksec%20Audit.pdf) | unknown | Audit | 2024-06 | aging | Direct | n/a | 0 | n/a |
| [MetaPool_ETH_Staking_Staking_Pools_Aurora_Smart_Contract_Security.pdf](https://github.com/Meta-Pool/staking-pool-aurora/blob/main/audits/MetaPool_ETH_Staking_Staking_Pools_Aurora_Smart_Contract_Security.pdf) | unknown | Audit | 2023-05 | stale | Direct | contract_name | 19 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x798bcb...8b361d`](./contracts/ethereum-1/0x798bcb35d2d48c8ce7ef8171860b8d53a98b361d/) | MpDaoToken | token | $3,963,969.94 | Verified native implementation with $3,963,969.94 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| aurora | [`0x07f9f7...332e30`](./contracts/aurora-1313161554/0x07f9f7f963c5cd2bbffd30ccfb964be114332e30/) | EvmErc20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00b6e9...e4bb89`](./contracts/ethereum-1/0x00b6e95a520112c288d1899c3d46b5f282e4bb89/) | VotingPowerV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=19

Zero-match audit list:

- [4894] blocksec_lockup_v1.0-signed-audit.pdf
- [4895] 2024-06 Blocksec Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
