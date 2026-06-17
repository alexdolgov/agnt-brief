# Agentic Audit Brief: SyncSwap Protocol

## Project Overview

- Project: SyncSwap Protocol (`syncswap-protocol`)
- Website: [https://syncswap.xyz/](https://syncswap.xyz/)
- Lifecycle: active (Tier 0, 89.4% below peak)
- Generated: 2026-06-17T07:00:49.881Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: linea, scroll, zksync-era
- Contract surface: 40 unique implementations (46 raw deployments)
- DeFi Llama TVL: $8,243,891.00
- On-chain TVL (included contracts): $453,683.50
- TVL by chain: Linea $453,683.50

## Project Description

SyncSwap is a single decentralized exchange (DEX) protocol deployed across multiple chains, including Linea, Scroll, zkSync Era, and Sophon. It enables token swaps and liquidity provision through pool types such as classic, stable, and concentrated liquidity pools.

### Architecture

The SyncSwap family contains the core vault and pool master contracts that manage liquidity and swaps, while the Linea and Scroll families are chain-specific deployments of pool factories that rely on the same underlying pool logic. All families share the same architectural pattern of factory contracts creating and managing pools, with routers providing user-facing swap interfaces.

## Contract Surface Quality

- Indexed contracts: 202; live-surface contracts included: 46 (46 live, 0 unknown).
- Excluded by liveness: 156 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v3
- Unverified dependencies: 1/13.

## Audit Coverage Summary

- Verified implementations audited: 5/15 (33.3%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 25
- Unique implementations: 40
- Raw deployments: 46
- Audits discovered: 9
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $0.00
- Latest audit: 2023-07 (stale)
- Staleness: 0 fresh, 0 aging, 8 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| MetaScan | Tier 2 | 5 | 33.3% | 2023-04 |
| Zellic | Tier 2 | 1 | 6.7% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SyncSwapVault | core_logic | linea | n/a | [`0x716057...1ab61b`](./contracts/linea-59144/0x7160570bb153edd0ea1775ec2b2ac9b65f1ab61b/) | ✅ Audited |
| SyncSwapClassicPoolFactory | registry | linea | n/a | 2 deployments: linea [`0x37bac7...a0ac2d`](./contracts/linea-59144/0x37bac764494c8db4e54bde72f6965bea9fa0ac2d/); scroll [`0x37bac7...a0ac2d`](./contracts/scroll-534352/0x37bac764494c8db4e54bde72f6965bea9fa0ac2d/) | ✅ Audited |
| SyncSwapFeeRecipient | operational_periphery | linea | n/a | [`0xa2a09f...410bd8`](./contracts/linea-59144/0xa2a09f15c2ec6af1b8f9413c148334b231410bd8/) | ✅ Audited |
| SyncSwapPoolMaster | core_logic | linea | n/a | 2 deployments: linea [`0x608cb7...64b4a3`](./contracts/linea-59144/0x608cb7c3168427091f5994a45baf12083964b4a3/); linea `0xee8790...55b3a0` | ✅ Audited |
| SyncSwapRouter | adapter | linea | n/a | [`0x80e382...bd5c69`](./contracts/linea-59144/0x80e38291e06339d10aab483c65695d004dbd5c69/) | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SyncSwapClassicPool | core_logic | linea | n/a | [`0x5ec5b1...7bb308`](./contracts/linea-59144/0x5ec5b1e9b1bd5198343abb6e55fb695d2f7bb308/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | linea | n/a | [`0x19bbe6...d9a09d`](./contracts/linea-59144/0x19bbe6bb16d9ff3f8c2fbfc5dfa5805dedd9a09d/) | ⚠️ Unaudited |
| SyncSwapClassicPoolDelegatedFactory | registry | scroll | n/a | 2 deployments: linea `0xb8abae...5fe32b`; scroll [`0x76f549...8fb54c`](./contracts/scroll-534352/0x76f549af692efa64952d02c075226df9878fb54c/) | ⚠️ Unaudited |
| SyncSwapPoolMaster_ | core_logic | scroll | n/a | [`0x4318a7...07657c`](./contracts/scroll-534352/0x4318a74425e5353a1194cf26138baa87b607657c/) | ⚠️ Unaudited |
| SyncSwapRangePoolFactory | registry | linea | n/a | [`0xc5916f...ee6690`](./contracts/linea-59144/0xc5916f6cf441c72daa2e2c48afc7ce642eee6690/) | ⚠️ Unaudited |
| SyncSwapRouterV2 | adapter | linea | n/a | 2 deployments: linea [`0xc2a194...3e8a1e`](./contracts/linea-59144/0xc2a1947d2336b2af74d5813dc9ca6e0c3b3e8a1e/); scroll `0xfd541d...dc9115` | ⚠️ Unaudited |
| SyncSwapRouterV3 | adapter | linea | n/a | 2 deployments: linea [`0x0b64ba...b07c55`](./contracts/linea-59144/0x0b64ba230d4c9d133aa7a52ceff1620178b07c55/); linea `0x62f9d1...16f89f` | ⚠️ Unaudited |
| SyncSwapStablePoolDelegatedFactory | registry | linea | n/a | 2 deployments: linea [`0x024a09...18ad86`](./contracts/linea-59144/0x024a096bab43587d24004c95c3e20fcb7518ad86/); scroll `0xa2aca6...f38d00` | ⚠️ Unaudited |
| WETH9 | token | linea | n/a | [`0xe5d7c2...5cf34f`](./contracts/linea-59144/0xe5d7c2a44ffddf6b295a15c148167daaaf5cf34f/) | ⚠️ Unaudited |
| WrappedEther | unknown | scroll | n/a | [`0x530000...000004`](./contracts/scroll-534352/0x5300000000000000000000000000000000000004/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (25)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | zksync-era | n/a | `0x0a34fb...906193` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x0e595b...ab48a4` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x1b887a...3a084c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x1fc09a...0e3791` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x2da10a...1c0295` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x432bcc...681e6c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x582ad7...2d5a3d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x593f66...8c5c55` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x5aea57...9d9a91` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x621425...f8d091` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x63ad09...906ebb` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x7581a8...946502` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x80115c...47c05c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x9b5def...26b059` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x9d63d3...4e6f13` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xa757ed...5a4131` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xbb0591...909ffb` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xc6dac3...722601` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xc8a3d1...cb472e` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xecdd1c...af58b2` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xf2dad8...aca7cb` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xfdfe03...5783d3` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1cf802...c6248c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x45b320...681301` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xdfb26a...132611` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-SyncSwap-v1.0.pdf](https://github.com/syncswap/reports/blob/main/PeckShield-Audit-Report-SyncSwap-v1.0.pdf) | PeckShield | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [SyncSwap - Zellic Audit Report.pdf](https://github.com/syncswap/reports/blob/main/SyncSwap%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-05 | stale | Direct | contract_name | 1 | high |
| [MetaScan_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | contract_name | 7 | high |
| [MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | contract_name | 7 | high |
| [MetaScan_Security_Prover_Report_contracts_202304040106.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Security_Prover_Report_contracts_202304040106.pdf) | MetaScan | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [MetaScan_Security_Prover_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Security_Prover_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [MetaScan_Open_Source_Analyzer_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Open_Source_Analyzer_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [202304231022.pdf](https://github.com/syncswap/reports/blob/main/202304231022.pdf) | Unknown | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://github.com/syncswap/reports) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | [`0x5ec5b1...7bb308`](./contracts/linea-59144/0x5ec5b1e9b1bd5198343abb6e55fb695d2f7bb308/) | SyncSwapClassicPool | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x19bbe6...d9a09d`](./contracts/linea-59144/0x19bbe6bb16d9ff3f8c2fbfc5dfa5805dedd9a09d/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x76f549...8fb54c`](./contracts/scroll-534352/0x76f549af692efa64952d02c075226df9878fb54c/) | SyncSwapClassicPoolDelegatedFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x4318a7...07657c`](./contracts/scroll-534352/0x4318a74425e5353a1194cf26138baa87b607657c/) | SyncSwapPoolMaster_ | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xc5916f...ee6690`](./contracts/linea-59144/0xc5916f6cf441c72daa2e2c48afc7ce642eee6690/) | SyncSwapRangePoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xc2a194...3e8a1e`](./contracts/linea-59144/0xc2a1947d2336b2af74d5813dc9ca6e0c3b3e8a1e/) | SyncSwapRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0b64ba...b07c55`](./contracts/linea-59144/0x0b64ba230d4c9d133aa7a52ceff1620178b07c55/) | SyncSwapRouterV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x024a09...18ad86`](./contracts/linea-59144/0x024a096bab43587d24004c95c3e20fcb7518ad86/) | SyncSwapStablePoolDelegatedFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=33

Zero-match audit list:

- [2071] PeckShield-Audit-Report-SyncSwap-v1.0.pdf
- [2075] MetaScan_Security_Prover_Report_contracts_202304040106.pdf
- [2076] MetaScan_Security_Prover_Report_core-contracts_202303161916.pdf
- [2077] MetaScan_Open_Source_Analyzer_Report_core-contracts_202303161916.pdf
- [2078] 202304231022.pdf
- [14423] {% embed url="<>" %}

Fork inheritance lineage and inherited audits are included when available.
