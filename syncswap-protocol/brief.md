# Agentic Audit Brief: SyncSwap Protocol

## Project Overview

- Project: SyncSwap Protocol (`syncswap-protocol`)
- Website: [https://syncswap.xyz/](https://syncswap.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:59.385Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: linea, scroll, zksync-era
- Contract surface: 135 unique implementations (144 raw deployments)
- DeFi Llama TVL: $7,912,329.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 34 project-authored contract(s) across 2 chain(s); 4 ERC20 tokens, 2 ERC721 NFTs; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 16 common project-authored base contract(s) (basepoolfactory, v2swaprouter, v3swaprouter). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 182; live-surface contracts included: 144 (20 live, 124 unknown).
- Excluded by liveness: 38 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/15 (33.3%)
- Deployed-live implementations: 15 of 135 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/17
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 118
- Unique implementations: 135
- Raw deployments: 144
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| MetaScan | Tier 2 | 5 | 29.4% | 2023-04 |
| Zellic | Tier 2 | 1 | 5.9% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SyncSwapClassicPoolFactory | registry | linea | n/a | 2 deployments: linea [`0x37bac7...a0ac2d`](./contracts/linea-59144/0x37bac764494c8db4e54bde72f6965bea9fa0ac2d/); scroll [`0x37bac7...a0ac2d`](./contracts/scroll-534352/0x37bac764494c8db4e54bde72f6965bea9fa0ac2d/) | ✅ Audited |
| SyncSwapFeeRecipient | operational_periphery | linea | n/a | [`0xa2a09f...410bd8`](./contracts/linea-59144/0xa2a09f15c2ec6af1b8f9413c148334b231410bd8/) | ✅ Audited |
| SyncSwapPoolMaster | core_logic | linea | n/a | 2 deployments: linea [`0x608cb7...64b4a3`](./contracts/linea-59144/0x608cb7c3168427091f5994a45baf12083964b4a3/); linea `0xee8790...55b3a0` | ✅ Audited |
| SyncSwapRouter | adapter | linea | n/a | [`0x80e382...bd5c69`](./contracts/linea-59144/0x80e38291e06339d10aab483c65695d004dbd5c69/) | ✅ Audited |
| SyncSwapVault | core_logic | linea | n/a | [`0x716057...1ab61b`](./contracts/linea-59144/0x7160570bb153edd0ea1775ec2b2ac9b65f1ab61b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NonfungiblePositionManager | governance | linea | n/a | [`0x19bbe6...d9a09d`](./contracts/linea-59144/0x19bbe6bb16d9ff3f8c2fbfc5dfa5805dedd9a09d/) | ⚠️ Unaudited |
| SwapLib | unknown | linea | n/a | [`0x7f469d...e2d571`](./contracts/linea-59144/0x7f469dd8753f29b6d7690148cbad6a8dd3e2d571/) | ⚠️ Unaudited |
| SyncSwapClassicPool | core_logic | linea | n/a | [`0x5ec5b1...7bb308`](./contracts/linea-59144/0x5ec5b1e9b1bd5198343abb6e55fb695d2f7bb308/) | ⚠️ Unaudited |
| SyncSwapClassicPoolDelegatedFactory | registry | scroll | n/a | 2 deployments: linea `0xb8abae...5fe32b`; scroll [`0x76f549...8fb54c`](./contracts/scroll-534352/0x76f549af692efa64952d02c075226df9878fb54c/) | ⚠️ Unaudited |
| SyncSwapPoolMaster_ | core_logic | scroll | n/a | [`0x4318a7...07657c`](./contracts/scroll-534352/0x4318a74425e5353a1194cf26138baa87b607657c/) | ⚠️ Unaudited |
| SyncSwapRangePool | unknown | linea | n/a | [`0x3f9732...aaba27`](./contracts/linea-59144/0x3f9732504c285ef578fa3e3b437eee9eceaaba27/) | ⚠️ Unaudited |
| SyncSwapRangePoolFactory | unknown | linea | n/a | 4 deployments: linea [`0x1ada4a...d907ea`](./contracts/linea-59144/0x1ada4a43e87084bea5787e80e8c5b56543d907ea/); linea `0x35deaf...5e3c6e`; linea `0xc5916f...ee6690`; linea `0xd17cb6...1ae4f1` | ⚠️ Unaudited |
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

### ❓ Unverified (118)

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
| UnnamedContract | unknown | linea | n/a | `0x01ca20...756f3d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x01d5e4...a00305` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x08d43e...5d4721` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0a78ca...03decd` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0ba530...a4e017` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1262c2...560098` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x155fe0...334bc8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x16c34b...9c896f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x16ce95...d9cfd4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1c86b5...290172` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1cf802...c6248c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x222aa0...6a3a77` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x249124...247e7d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x289670...6640be` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2977e5...49e22d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2b610a...0e8239` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x326919...5d706c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x32b8ac...4ea895` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3307f2...fe8079` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3a46e9...78b5e1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3bf15c...7ef55a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3d7b58...d88462` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4459b1...8dc4d1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x45b320...681301` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4750ba...a03dc6` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4ebeaf...fa9d27` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x50577c...f12238` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x50ddda...289595` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x533d11...4638ed` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x53c6e6...f4e5a3` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x59ce60...1570f1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x59eed3...24a412` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5a8c16...bcf854` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5baacb...cf9103` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5ff877...678ab1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x626a86...964420` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6c78b8...a241b6` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6c979a...09ce61` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6d5318...2afc32` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6e5509...74970b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7a3106...864fb0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7c0a3a...4f9bd8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7c42a1...652029` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7f47fe...be9098` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x853483...3d1af2` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x85dfbe...903015` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x8a5ae4...3bc8c4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x8c6551...e97649` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x8f5970...3bf292` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x91e3d3...32d4e6` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x948702...f72b0c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x95e017...4b17b9` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x98cd97...41b6f7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa211df...a1d4f3` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa3e16b...910960` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa4bbe8...dce4df` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa5541d...45bfa0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xab40ea...9a3890` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xab6994...073926` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb45365...5d6029` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb53b8a...60531f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb69cda...dd1cda` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xba7535...1bf072` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xbae656...dcd356` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xbe87d2...d45bba` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc062b4...be86c9` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc11d55...f87a09` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc24ce2...5f2dd6` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc3a531...7eeb3a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc5f3d4...82e562` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc70a32...28d8b4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xccad86...b2b8d8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xceef58...f5f330` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xcf12b1...ecfee5` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xcf18a4...e91656` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd31603...008784` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd6422b...d3621e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd96c37...f0530d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xdd2171...a97261` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xdd9635...beb58c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe4cf80...dd3727` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe963e1...923c2e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xedbeca...152169` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xee589e...e3fdb4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf14a2d...3a90f3` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf274e2...693889` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf3999c...edbe1c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf56588...fea980` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf72f6f...07b87a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf7df79...a9c475` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf8ad6a...8b8d25` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfc107a...0af398` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfcc130...71c578` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfed898...8cacd8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfede7b...4d802a` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xdfb26a...132611` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-SyncSwap-v1.0.pdf](https://github.com/syncswap/reports/blob/main/PeckShield-Audit-Report-SyncSwap-v1.0.pdf) | PeckShield | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [SyncSwap - Zellic Audit Report.pdf](https://github.com/syncswap/reports/blob/main/SyncSwap%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-05 | stale | Direct | contract_name | 1 | n/a |
| [MetaScan_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | contract_name | 5 | n/a |
| [MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | contract_name | 5 | n/a |
| [MetaScan_Security_Prover_Report_contracts_202304040106.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Security_Prover_Report_contracts_202304040106.pdf) | MetaScan | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [MetaScan_Security_Prover_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Security_Prover_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [MetaScan_Open_Source_Analyzer_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Open_Source_Analyzer_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [202304231022.pdf](https://github.com/syncswap/reports/blob/main/202304231022.pdf) | Unknown | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [reports (GitHub directory)](https://github.com/syncswap/reports) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | [`0x19bbe6...d9a09d`](./contracts/linea-59144/0x19bbe6bb16d9ff3f8c2fbfc5dfa5805dedd9a09d/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x7f469d...e2d571`](./contracts/linea-59144/0x7f469dd8753f29b6d7690148cbad6a8dd3e2d571/) | SwapLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x5ec5b1...7bb308`](./contracts/linea-59144/0x5ec5b1e9b1bd5198343abb6e55fb695d2f7bb308/) | SyncSwapClassicPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x76f549...8fb54c`](./contracts/scroll-534352/0x76f549af692efa64952d02c075226df9878fb54c/) | SyncSwapClassicPoolDelegatedFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x4318a7...07657c`](./contracts/scroll-534352/0x4318a74425e5353a1194cf26138baa87b607657c/) | SyncSwapPoolMaster_ | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x3f9732...aaba27`](./contracts/linea-59144/0x3f9732504c285ef578fa3e3b437eee9eceaaba27/) | SyncSwapRangePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1ada4a...d907ea`](./contracts/linea-59144/0x1ada4a43e87084bea5787e80e8c5b56543d907ea/) | SyncSwapRangePoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xc2a194...3e8a1e`](./contracts/linea-59144/0xc2a1947d2336b2af74d5813dc9ca6e0c3b3e8a1e/) | SyncSwapRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0b64ba...b07c55`](./contracts/linea-59144/0x0b64ba230d4c9d133aa7a52ceff1620178b07c55/) | SyncSwapRouterV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x024a09...18ad86`](./contracts/linea-59144/0x024a096bab43587d24004c95c3e20fcb7518ad86/) | SyncSwapStablePoolDelegatedFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xe5d7c2...5cf34f`](./contracts/linea-59144/0xe5d7c2a44ffddf6b295a15c148167daaaf5cf34f/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x530000...000004`](./contracts/scroll-534352/0x5300000000000000000000000000000000000004/) | WrappedEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 118 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=11

Zero-match audit list:

- [2071] PeckShield-Audit-Report-SyncSwap-v1.0.pdf
- [2075] MetaScan_Security_Prover_Report_contracts_202304040106.pdf
- [2076] MetaScan_Security_Prover_Report_core-contracts_202303161916.pdf
- [2077] MetaScan_Open_Source_Analyzer_Report_core-contracts_202303161916.pdf
- [2078] 202304231022.pdf
- [14423] reports (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
