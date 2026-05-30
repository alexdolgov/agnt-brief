# Agentic Audit Brief: Treehouse Protocol

⚠️ Lifecycle status: UNKNOWN - TVL dropped 46.1% over 90 days

## Project Overview

- Project: Treehouse Protocol (`treehouse-protocol`)
- Website: [https://www.treehouse.finance/](https://www.treehouse.finance/)
- Lifecycle: unknown (Tier 0, 86.2% below peak)
- Generated: 2026-05-30T11:29:55.617Z
- Pipeline run: v2-pipeline-2026-05-30-255779-2e4e
- Chains: ethereum
- Contract surface: 78 unique implementations (94 raw deployments)
- DeFi Llama TVL: $87,665,909.37
- On-chain TVL (included contracts): $31,172,969.02
- TVL by chain: Ethereum $31,172,969.02

## Project Description

Treehouse Protocol is a DeFi platform that provides liquid staking, lending, and stablecoin minting services. It allows users to stake ETH to receive a liquid staking token (tETH), borrow against their assets, and interact with stablecoin pools.

### Architecture

The protocol's core Vault and SimpleStakingERC20 token handle staking and liquid token issuance, while the LendingPoolv3 proxy enables borrowing. Supporting contracts like WithdrawalQueueERC721 manage unstaking, and CurveStableSwapNG pools facilitate stablecoin swaps, all sharing the same staking and lending infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 29/69 (42.0%)
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 78
- Raw deployments: 94
- Audits discovered: 23
- Scoreable audits (matched contracts): 16
- ASD (verified + unaudited TVL): $1,798,114.23
- Latest audit: 2026-05 (fresh)
- Staleness: 6 fresh, 13 aging, 0 stale, 4 unknown
- Tier 1 coverage: 15.9% (Trail of Bits)
- Note: This protocol is classified as [unknown]. ASD of $1,798,114.23 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| WatchPug | Tier 2 | 19 | 27.5% | 2026-05 |
| Sigma Prime | Tier 2 | 17 | 24.6% | 2025-03 |
| Trail of Bits | Tier 1 | 11 | 15.9% | 2024-10 |
| unknown | Tier 2 | 6 | 8.7% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (29)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Vault | core_logic | ethereum | 2 deployments: ethereum [`0x551d15...5d761b`](./contracts/ethereum-1/0x551d155760ae96050439ad24ae98a96c765d761b/); ethereum `0xba1222...6bf2c8` | ✅ Audited |
| Strategy | core_logic | ethereum | 2 deployments: ethereum [`0x5ae0e4...284938`](./contracts/ethereum-1/0x5ae0e44de96885702bd99a6914751c952d284938/); ethereum `0xbfdf0a...e02a9d` | ✅ Audited |
| ActionExecutor | unknown | ethereum | 3 deployments: ethereum [`0x60d2d9...2e5943`](./contracts/ethereum-1/0x60d2d94acb969ca54e781007ee89f04c1a2e5943/); ethereum `0xb15931...1e9e94`; ethereum `0xb27d68...cdce98` | ✅ Audited |
| ActionRegistry | registry | ethereum | [`0x94af59...c3073f`](./contracts/ethereum-1/0x94af5994eb6841e1d930c95ad0c9f89771c3073f/) | ✅ Audited |
| FastlaneFee | unknown | ethereum | [`0x434b68...1d6354`](./contracts/ethereum-1/0x434b68b11bbe8fd3074089397ca3d275801d6354/) | ✅ Audited |
| GearboxDepositV31 | unknown | ethereum | [`0x4deed6...cd234f`](./contracts/ethereum-1/0x4deed6b663a64f76f6a59412486a9d9048cd234f/) | ✅ Audited |
| GearboxRedeemV31 | unknown | ethereum | [`0x90a029...08257a`](./contracts/ethereum-1/0x90a02936ba645ab719574512b578ee85d208257a/) | ✅ Audited |
| InternalAccountingUnit | unknown | ethereum | [`0x1b6238...68ba92`](./contracts/ethereum-1/0x1b6238e95bbcabee58997c99badd4154ad68ba92/) | ✅ Audited |
| MerklClaim | unknown | ethereum | [`0x23bd2d...0f049e`](./contracts/ethereum-1/0x23bd2d2af26c42ef9d1a1159d80f1cd7d90f049e/) | ✅ Audited |
| NavErc20 | token | ethereum | [`0xa0a105...57af36`](./contracts/ethereum-1/0xa0a105e10801b52bf89a042bdb40c7389e57af36/) | ✅ Audited |
| NavErc20WithDebt | token | ethereum | [`0xff62ad...0c48bc`](./contracts/ethereum-1/0xff62ad6200a54fff9288c997f8ca2d480a0c48bc/) | ✅ Audited |
| NavHelper | periphery | ethereum | 2 deployments: ethereum [`0x86b238...62b6e6`](./contracts/ethereum-1/0x86b238787f24eecf24500135bc9d4d117062b6e6/); ethereum `0xf22ca8...75ff56` | ✅ Audited |
| NavLens | periphery | ethereum | [`0xfda0b8...09b258`](./contracts/ethereum-1/0xfda0b8bca5d0a5a5093141d8a45d133a9f09b258/) | ✅ Audited |
| NavRegistry | registry | ethereum | [`0xe2d604...5451e9`](./contracts/ethereum-1/0xe2d60463de3a0221276d737b87c605e0bb5451e9/) | ✅ Audited |
| PnlAccounting | unknown | ethereum | [`0xdd317b...acaea7`](./contracts/ethereum-1/0xdd317b85f7bd56361e2e3216610803e433acaea7/) | ✅ Audited |
| PnlAccountingHelper | periphery | ethereum | 2 deployments: ethereum [`0x57c23f...81437e`](./contracts/ethereum-1/0x57c23fe7a1a8d86f1128196c7c22f8711e81437e/); ethereum `0xd88fb0...1337e1` | ✅ Audited |
| RateProviderRegistry | registry | ethereum | [`0xd0b6c0...bedce7`](./contracts/ethereum-1/0xd0b6c01e9a8d21ed05726f9020b577a614bedce7/) | ✅ Audited |
| RedemptionController | governance | ethereum | [`0xdf2ee4...eb2510`](./contracts/ethereum-1/0xdf2ee409bee416a53b5c040d8e6dad4a7ceb2510/) | ✅ Audited |
| StrategyExecutor | core_logic | ethereum | [`0x89f57d...0ef50e`](./contracts/ethereum-1/0x89f57d3617f6a9ff877fea34dd0688b2840ef50e/) | ✅ Audited |
| StrategyStorage | core_logic | ethereum | [`0x97c03f...6f1f47`](./contracts/ethereum-1/0x97c03f52244e60bb18511cbf03f890d5886f1f47/) | ✅ Audited |
| TAsset | unknown | ethereum | 2 deployments: ethereum [`0xd11c45...6d5ed8`](./contracts/ethereum-1/0xd11c452fc99cf405034ee446803b6f6c1f6d5ed8/); ethereum `0xd1a622...c95e38` | ✅ Audited |
| TreehouseAccounting | unknown | ethereum | [`0xb7ce3c...535709`](./contracts/ethereum-1/0xb7ce3cb5bc5c00cd2f9b39d9b0580f5355535709/) | ✅ Audited |
| TreehouseFastlane | unknown | ethereum | [`0x829525...06c0d6`](./contracts/ethereum-1/0x829525417cd78cba0f99a8736426fc299506c0d6/) | ✅ Audited |
| TreehouseRedemption | unknown | ethereum | [`0x0618db...4ad09f`](./contracts/ethereum-1/0x0618dbdb3be798346e6d9c08c3c84658f94ad09f/) | ✅ Audited |
| TreehouseRedemptionV2 | unknown | ethereum | [`0xcd63a2...aabb85`](./contracts/ethereum-1/0xcd63a29faff07130d3af89bb4f40778938aabb85/) | ✅ Audited |
| TreehouseRouter | adapter | ethereum | 2 deployments: ethereum [`0x8ae023...c4d398`](./contracts/ethereum-1/0x8ae023d31d3590b7fd0919251a8c68dfc0c4d398/); ethereum `0xefa3fa...0628f5` | ✅ Audited |
| VaultPull | core_logic | ethereum | [`0x313ca6...5b3ab9`](./contracts/ethereum-1/0x313ca6136521d22a7ea763b3566ed0b53f5b3ab9/) | ✅ Audited |
| VaultRescuer | core_logic | ethereum | [`0x1af329...db933a`](./contracts/ethereum-1/0x1af329d2c4ceaf45e1d8062c696b09ffaddb933a/) | ✅ Audited |
| WstETHRateProvider | unknown | ethereum | [`0xa14a1a...fe6109`](./contracts/ethereum-1/0xa14a1a1646980c2b78eddd51b66ec220aefe6109/) | ✅ Audited |

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| LendingPoolv3 | core_logic | ethereum | [`0x5fde59...eb357f`](./contracts/ethereum-1/0x5fde59415625401278c4d41c6befce3790eb357f/) | ⚠️ Unaudited |
| AccountingOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x852ded...503cee`](./contracts/ethereum-1/0x852ded011285fe67063a08005c71a85690503cee/); ethereum `0xf3c5e0...79a1af` | ⚠️ Unaudited |
| Authorizer | unknown | ethereum | [`0xa331d8...3f3ae6`](./contracts/ethereum-1/0xa331d84ec860bf466b4cdccfb4ac09a1b43f3ae6/) | ⚠️ Unaudited |
| Burner | unknown | ethereum | [`0xd15a67...9046d3`](./contracts/ethereum-1/0xd15a672319cf0352560ee76d9e89eab0889046d3/) | ⚠️ Unaudited |
| ComposableStablePool | core_logic | ethereum | [`0x1d1353...4dad14`](./contracts/ethereum-1/0x1d13531bf6344c102280ce4c458781fbf14dad14/) | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | ethereum | 2 deployments: ethereum [`0x394a1e...41542f`](./contracts/ethereum-1/0x394a1e1b934cb4f4a0dc17bdd592ec078741542f/); ethereum `0xa10d15...0dddb1` | ⚠️ Unaudited |
| DepositSecurityModule | unknown | ethereum | [`0xc77f87...3cfc09`](./contracts/ethereum-1/0xc77f8768774e1c9244beed705c4354f2113cfc09/) | ⚠️ Unaudited |
| DorMigrator | periphery | ethereum | [`0x83b78c...c9da2a`](./contracts/ethereum-1/0x83b78c4a54507ddc8db1fc3fd41df6edb0c9da2a/) | ⚠️ Unaudited |
| DorRewards | unknown | ethereum | 2 deployments: ethereum [`0x5324e2...152a10`](./contracts/ethereum-1/0x5324e2f61987fcb06d892f1256b7c12ca9152a10/); ethereum `0x7ca353...bbc204` | ⚠️ Unaudited |
| DorStaking | unknown | ethereum | 2 deployments: ethereum [`0x478bf5...dd2192`](./contracts/ethereum-1/0x478bf562b2a39ff8530ee41ff0dfb39d8bdd2192/); ethereum `0xc1b6a6...f51023` | ⚠️ Unaudited |
| DummyEmptyContract | unknown | ethereum | [`0x6f6541...beda31`](./contracts/ethereum-1/0x6f6541c2203196feedd14cd2c09550da1cbeda31/) | ⚠️ Unaudited |
| DWSTETHV3RateProvider | unknown | ethereum | [`0xf5760a...fbbf08`](./contracts/ethereum-1/0xf5760a2f36a8a3bf57cfc8376b046669a7fbbf08/) | ⚠️ Unaudited |
| EIP712StETH | unknown | ethereum | [`0x8f73e4...3228b7`](./contracts/ethereum-1/0x8f73e4c2a6d852bb4ab2a45e6a9cf5715b3228b7/) | ⚠️ Unaudited |
| FixedRateProvider | unknown | ethereum | [`0xcbb64b...ba2860`](./contracts/ethereum-1/0xcbb64b15b0c14645a9216a4caf57b33aa9ba2860/) | ⚠️ Unaudited |
| GearboxDeposit | unknown | ethereum | [`0x879316...c22f31`](./contracts/ethereum-1/0x8793164ae37e5fae2cdf7620f4d4dc615bc22f31/) | ⚠️ Unaudited |
| GearboxRedeem | unknown | ethereum | [`0x150d67...718ece`](./contracts/ethereum-1/0x150d67ad07700918fc77d7fd2e78967693718ece/) | ⚠️ Unaudited |
| HashConsensus | unknown | ethereum | 2 deployments: ethereum [`0x7fadb6...df355a`](./contracts/ethereum-1/0x7fadb6358950c5faa66cb5eb8ee5147de3df355a/); ethereum `0xd624b0...f0b288` | ⚠️ Unaudited |
| KPKWSTETHV3RateProvider | unknown | ethereum | [`0xc8efa0...459ac2`](./contracts/ethereum-1/0xc8efa074aa18368270d5cda1fe733de2b9459ac2/) | ⚠️ Unaudited |
| LegacyOracle | operational_periphery | ethereum | [`0xa29b81...2d7e0e`](./contracts/ethereum-1/0xa29b819654ce6224a222bb5f586920105e2d7e0e/) | ⚠️ Unaudited |
| LockReleaseTokenPool | core_logic | ethereum | [`0x8113f0...ca8435`](./contracts/ethereum-1/0x8113f001ea456759264317007220cbc939ca8435/) | ⚠️ Unaudited |
| NavUnStEth | unknown | ethereum | [`0x4c82f6...1e5e39`](./contracts/ethereum-1/0x4c82f6829797a4174a082ce9fee0b9bddc1e5e39/) | ⚠️ Unaudited |
| NodeOperatorsRegistry | registry | ethereum | [`0x853893...b6d8ed`](./contracts/ethereum-1/0x8538930c385c0438a357d2c25cb3ead95ab6d8ed/) | ⚠️ Unaudited |
| OracleDaemonConfig | operational_periphery | ethereum | [`0xbf05a9...c23b09`](./contracts/ethereum-1/0xbf05a929c3d7885a6aead833a992da6e5ac23b09/) | ⚠️ Unaudited |
| OracleReportSanityChecker | operational_periphery | ethereum | [`0x9305c1...f0f1cc`](./contracts/ethereum-1/0x9305c1dbfe22c12c66339184c0025d7006f0f1cc/) | ⚠️ Unaudited |
| ProtocolPoolController | core_logic | ethereum | [`0x03a993...3f5e61`](./contracts/ethereum-1/0x03a993369b5b6290d412b63d29f3bc2dc13f5e61/) | ⚠️ Unaudited |
| RefundLogic | unknown | ethereum | [`0x243347...ed53fd`](./contracts/ethereum-1/0x2433477a10fc5d31b9513c638f19ee85caed53fd/) | ⚠️ Unaudited |
| ShapellaUpgradeTemplate | unknown | ethereum | [`0xa818ff...cd600a`](./contracts/ethereum-1/0xa818ff9ec93122bf9401ab4340c42de638cd600a/) | ⚠️ Unaudited |
| SimpleStakingERC20 | token | ethereum | [`0x5e4acc...779dcc`](./contracts/ethereum-1/0x5e4acca7a9989007cd74ae4ed1b096c000779dcc/) | ⚠️ Unaudited |
| StakingRouter | adapter | ethereum | 2 deployments: ethereum [`0xd8784e...0fb6df`](./contracts/ethereum-1/0xd8784e748f59ba711fb5643191ec3fadd50fb6df/); ethereum `0xfddf38...f12999` | ⚠️ Unaudited |
| TEthExchangeRateProvider | unknown | ethereum | [`0x4bd1ec...55fa8d`](./contracts/ethereum-1/0x4bd1ec6cdad93b3c6219ceda018ecaf8d655fa8d/) | ⚠️ Unaudited |
| TEthRateProvider | unknown | ethereum | [`0x077c21...9fdc1e`](./contracts/ethereum-1/0x077c2122e96c7457d11fb9523f5745acb49fdc1e/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | [`0x2225da...ab467e`](./contracts/ethereum-1/0x2225dabffc7f862c99477381e971e8b1fdab467e/) | ⚠️ Unaudited |
| TkMrsR | unknown | ethereum | [`0xcf0a32...382018`](./contracts/ethereum-1/0xcf0a32bbef8f064969f21f7e02328fb577382018/) | ⚠️ Unaudited |
| ValidatorsExitBusOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x0de4ea...bf5c6e`](./contracts/ethereum-1/0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e/); ethereum `0xa89ea5...3bc42c` | ⚠️ Unaudited |
| VaultSend | core_logic | ethereum | [`0xc78011...45fc3a`](./contracts/ethereum-1/0xc780112305ed959ceeeb0de692e2407e4145fc3a/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | [`0xf69753...d27862`](./contracts/ethereum-1/0xf697535848b535900c76f70f1e36ec3985d27862/) | ⚠️ Unaudited |
| WeETHExchangeRateProvider | unknown | ethereum | [`0x30ed8c...5595e4`](./contracts/ethereum-1/0x30ed8ce7668658271da0ddb350070ffea75595e4/) | ⚠️ Unaudited |
| WithdrawalQueueERC721 | operational_periphery | ethereum | 2 deployments: ethereum [`0x889edc...12f9b1`](./contracts/ethereum-1/0x889edc2edab5f40e902b864ad4d7ade8e412f9b1/); ethereum `0xe42c65...7d94d9` | ⚠️ Unaudited |
| WithdrawalVault | operational_periphery | ethereum | [`0xcc52f1...7f69fd`](./contracts/ethereum-1/0xcc52f17756c04bba7e377716d7062fc36d7f69fd/) | ⚠️ Unaudited |
| WstETHExchangeRateProvider | unknown | ethereum | [`0x3ce02c...c6cd1e`](./contracts/ethereum-1/0x3ce02cba4952cf75dc8c1baade27761141c6cd1e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x62c9e5e52351e02635f48072fa20c03bb650f787) | proxy | ethereum | `0xad744e...3d8db2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1e3b23...875d6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x94905e...784e6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa1f998...d211f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa1fa94...21588a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb14e42...ddd28b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdfcea9...eef9c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe43f46...af73c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe8e4ee...6685b5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://www.treehouse.finance/One_Rate_To_Rule_Them_All.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Fuzzland tETH Sep Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Fuzzland%20tETH%20Sep%20Audit%20Report%20vF.pdf) | unknown | Audit | 2024-09 | aging | Direct | contract_name | 9 | high |
| [Sigma Prime tETH Aug Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Sigma%20Prime%20tETH%20Aug%20Audit%20Report%20vF.pdf) | Sigma Prime | Audit | 2024-08 | aging | Direct | contract_name | 13 | high |
| [Sigma Prime tETH Mar Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Sigma%20Prime%20tETH%20Mar%20Audit%20Report.pdf) | Sigma Prime | Audit | 2025-03 | aging | Direct | contract_name | 4 | high |
| [Sigma Prime tETH Sep Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Sigma%20Prime%20tETH%20Sep%20Audit%20Report%20vF.pdf) | Sigma Prime | Audit | 2024-09 | aging | Direct | contract_name | 16 | high |
| [Trail of Bits tETH Aug Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Trail%20of%20Bits%20tETH%20Aug%20Audit%20Report%20vF.pdf) | Trail of Bits | Audit | 2024-08 | aging | Direct | contract_name | 6 | high |
| [Trail of Bits tETH Oct Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Trail%20of%20Bits%20tETH%20Oct%20Audit%20Report%20vF.pdf) | Trail of Bits | Audit | 2024-10 | aging | Direct | contract_name | 17 | high |
| [WatchPug Merkl Claim Apr Audit Report vF2.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20Merkl%20Claim%20Apr%20Audit%20Report%20vF2.pdf) | WatchPug | Audit | 2025-04 | aging | Direct | contract_name | 1 | high |
| [WatchPug TREE Token Mar Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20TREE%20Token%20Mar%20Audit%20Report.pdf) | WatchPug | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [WatchPug tAVAX Aug Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tAVAX%20Aug%20Audit%20Report.pdf) | WatchPug | Audit | 2025-08 | fresh | Direct | contract_name | 3 | high |
| [WatchPug tAVAX Benqi Strategy Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tAVAX%20Benqi%20Strategy%20Audit%20Report.pdf) | WatchPug | Audit | 2025-10 | fresh | Direct | contract_name | 3 | high |
| [WatchPug tAVAX Merkl Claim Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tAVAX%20Merkl%20Claim%20Audit%20Report.pdf) | WatchPug | Audit | 2025-09 | fresh | Direct | contract_name | 1 | high |
| [WatchPug tAVAX Spectra Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tAVAX%20Spectra%20Audit%20Report.pdf) | WatchPug | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [WatchPug tETH Dec 2025 Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Dec%202025%20Audit%20Report%20vF.pdf) | WatchPug | Audit | 2025-12 | fresh | Direct | contract_name | 3 | high |
| [WatchPug tETH Dec Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Dec%20Audit%20Report%20vF.pdf) | WatchPug | Audit | 2024-12 | aging | Direct | contract_name | 4 | high |
| [WatchPug tETH Dec Audit Report vF2.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Dec%20Audit%20Report%20vF2.pdf) | WatchPug | Audit | 2024-12 | aging | Direct | contract_name | 2 | high |
| [WatchPug tETH Feb Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Feb%20Audit%20Report%20vF.pdf) | WatchPug | Audit | 2025-02 | aging | Direct | contract_name | 5 | high |
| [WatchPug tETH Feb Audit Report vF2.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Feb%20Audit%20Report%20vF2.pdf) | WatchPug | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [WatchPug tETH Timelock May Audit Report vF2.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Timelock%20May%20Audit%20Report%20vF2.pdf) | WatchPug | Audit | 2025-05 | aging | Direct | contract_name | 4 | high |
| [WatchPug tHYPE May Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tHYPE%20May%20Audit%20Report.pdf) | WatchPug | Audit | 2026-05 | fresh | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xd15a67...9046d3`](./contracts/ethereum-1/0xd15a672319cf0352560ee76d9e89eab0889046d3/) | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc77f87...3cfc09`](./contracts/ethereum-1/0xc77f8768774e1c9244beed705c4354f2113cfc09/) | DepositSecurityModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x83b78c...c9da2a`](./contracts/ethereum-1/0x83b78c4a54507ddc8db1fc3fd41df6edb0c9da2a/) | DorMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5324e2...152a10`](./contracts/ethereum-1/0x5324e2f61987fcb06d892f1256b7c12ca9152a10/) | DorRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f6541...beda31`](./contracts/ethereum-1/0x6f6541c2203196feedd14cd2c09550da1cbeda31/) | DummyEmptyContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf5760a...fbbf08`](./contracts/ethereum-1/0xf5760a2f36a8a3bf57cfc8376b046669a7fbbf08/) | DWSTETHV3RateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbb64b...ba2860`](./contracts/ethereum-1/0xcbb64b15b0c14645a9216a4caf57b33aa9ba2860/) | FixedRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fadb6...df355a`](./contracts/ethereum-1/0x7fadb6358950c5faa66cb5eb8ee5147de3df355a/) | HashConsensus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8efa0...459ac2`](./contracts/ethereum-1/0xc8efa074aa18368270d5cda1fe733de2b9459ac2/) | KPKWSTETHV3RateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c82f6...1e5e39`](./contracts/ethereum-1/0x4c82f6829797a4174a082ce9fee0b9bddc1e5e39/) | NavUnStEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbf05a9...c23b09`](./contracts/ethereum-1/0xbf05a929c3d7885a6aead833a992da6e5ac23b09/) | OracleDaemonConfig | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03a993...3f5e61`](./contracts/ethereum-1/0x03a993369b5b6290d412b63d29f3bc2dc13f5e61/) | ProtocolPoolController | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x243347...ed53fd`](./contracts/ethereum-1/0x2433477a10fc5d31b9513c638f19ee85caed53fd/) | RefundLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e4acc...779dcc`](./contracts/ethereum-1/0x5e4acca7a9989007cd74ae4ed1b096c000779dcc/) | SimpleStakingERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8784e...0fb6df`](./contracts/ethereum-1/0xd8784e748f59ba711fb5643191ec3fadd50fb6df/) | StakingRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4bd1ec...55fa8d`](./contracts/ethereum-1/0x4bd1ec6cdad93b3c6219ceda018ecaf8d655fa8d/) | TEthExchangeRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x077c21...9fdc1e`](./contracts/ethereum-1/0x077c2122e96c7457d11fb9523f5745acb49fdc1e/) | TEthRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf0a32...382018`](./contracts/ethereum-1/0xcf0a32bbef8f064969f21f7e02328fb577382018/) | TkMrsR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc78011...45fc3a`](./contracts/ethereum-1/0xc780112305ed959ceeeb0de692e2407e4145fc3a/) | VaultSend | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf69753...d27862`](./contracts/ethereum-1/0xf697535848b535900c76f70f1e36ec3985d27862/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30ed8c...5595e4`](./contracts/ethereum-1/0x30ed8ce7668658271da0ddb350070ffea75595e4/) | WeETHExchangeRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc52f1...7f69fd`](./contracts/ethereum-1/0xcc52f17756c04bba7e377716d7062fc36d7f69fd/) | WithdrawalVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ce02c...c6cd1e`](./contracts/ethereum-1/0x3ce02cba4952cf75dc8c1baade27761141c6cd1e/) | WstETHExchangeRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 53 |
| upstream | 11 |
| standard_library | 7 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=16
- Match method counts: extraction_exact=93

Zero-match audit list:

- [4607] Rendered PDF capture
- [11315] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [11316] 0002-metadata-manifest-and-pull-command.md
- [11317] 0003-bun-package-manager-node-runtime.md
- [11325] WatchPug TREE Token Mar Audit Report.pdf
- [11329] WatchPug tAVAX Spectra Audit Report.pdf
- [11334] WatchPug tETH Feb Audit Report vF2.pdf

Fork inheritance lineage and inherited audits are included when available.
