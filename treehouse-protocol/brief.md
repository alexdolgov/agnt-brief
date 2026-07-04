# Agentic Audit Brief: Treehouse Protocol

## Project Overview

- Project: Treehouse Protocol (`treehouse-protocol`)
- Website: [https://www.treehouse.finance/](https://www.treehouse.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.438Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: arbitrum, avalanche, ethereum, mantle
- Contract surface: 71 unique implementations (114 raw deployments)
- DeFi Llama TVL: $52,583,625.40
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DOR. Structurally: 117 project-authored contract(s) across 4 chain(s); 1 ERC4626 vault, 9 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 47 common project-authored base contract(s) (iprotocolpoolcontroller, rescuable, actionbase). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 139; live-surface contracts included: 111 (102 live, 9 unknown).
- Excluded by liveness: 28 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 32/59 (54.2%)
- Deployed-live implementations: 62 of 71 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 34/62
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 71
- Raw deployments: 114
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 18
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 6 fresh, 13 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 31 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 3.4% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| WatchPug | Tier 2 | 21 | 33.9% | 2026-05 |
| unknown | Tier 2 | 17 | 27.4% | 2024-09 |
| Sigma Prime | Tier 2 | 3 | 4.8% | 2025-03 |
| Trail of Bits | Tier 1 | 2 | 3.2% | 2024-10 |
| yAudit | Tier 2 | 1 | 1.6% | n/a |

## Contract Surface

### ✅ Verified + Audited (34)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ActionExecutor | unknown | ethereum | n/a | 3 deployments: ethereum [`0x60d2d9...2e5943`](./contracts/ethereum-1/0x60d2d94acb969ca54e781007ee89f04c1a2e5943/); ethereum `0xb15931...1e9e94`; ethereum `0xb27d68...cdce98` | ✅ Audited |
| ActionExecutor | unknown | avalanche | n/a | [`0xa969fa...0fb54b`](./contracts/avalanche-43114/0xa969faf6757fd7873f35650aa3a67823310fb54b/) | ✅ Audited |
| ActionRegistry | unknown | avalanche | n/a | 2 deployments: ethereum `0x94af59...c3073f`; avalanche [`0x07fa18...35e0f5`](./contracts/avalanche-43114/0x07fa18a8d49e02ba9693af1e15337ba66535e0f5/) | ✅ Audited |
| ASAVAXRateProvider | unknown | avalanche | n/a | [`0xfa5fb1...e54a46`](./contracts/avalanche-43114/0xfa5fb13f242180aff20d7fdc54c13ec1f8e54a46/) | ✅ Audited |
| BenqiClaimReward | unknown | avalanche | n/a | [`0x69c572...53f094`](./contracts/avalanche-43114/0x69c5725b500c7a160f8ce50474c439dbc353f094/) | ✅ Audited |
| BenqiWithdraw | unknown | avalanche | n/a | [`0x87899c...4ad472`](./contracts/avalanche-43114/0x87899c5c9b083e437a552a371004161fdf4ad472/) | ✅ Audited |
| GearboxDepositV31 | unknown | ethereum | n/a | [`0x4deed6...cd234f`](./contracts/ethereum-1/0x4deed6b663a64f76f6a59412486a9d9048cd234f/) | ✅ Audited |
| GearboxRedeemV31 | unknown | ethereum | n/a | [`0x90a029...08257a`](./contracts/ethereum-1/0x90a02936ba645ab719574512b578ee85d208257a/) | ✅ Audited |
| MerklClaim | unknown | ethereum | n/a | 2 deployments: ethereum [`0x23bd2d...0f049e`](./contracts/ethereum-1/0x23bd2d2af26c42ef9d1a1159d80f1cd7d90f049e/); avalanche `0x8e41b7...442e46` | ✅ Audited |
| NavBenqi | unknown | avalanche | n/a | [`0x34a9c9...691485`](./contracts/avalanche-43114/0x34a9c96d00dce4d78f3a5a32a3e47bb40e691485/) | ✅ Audited |
| NavErc20 | unknown | avalanche | n/a | 2 deployments: ethereum `0xa0a105...57af36`; avalanche [`0x24fe44...3b10d1`](./contracts/avalanche-43114/0x24fe445449f323561ba259a4abea8c51383b10d1/) | ✅ Audited |
| NavErc20WithDebt | unknown | avalanche | n/a | 2 deployments: ethereum `0xff62ad...0c48bc`; avalanche [`0x2e3559...2cf821`](./contracts/avalanche-43114/0x2e3559254469ceff47526d9c40cf94d0a22cf821/) | ✅ Audited |
| NavLens | unknown | avalanche | n/a | 2 deployments: ethereum `0xfda0b8...09b258`; avalanche [`0x6276c3...5dbb6c`](./contracts/avalanche-43114/0x6276c3dc4f91fc231b9913eb6cc6c4da2e5dbb6c/) | ✅ Audited |
| NavRegistry | registry | avalanche | n/a | 2 deployments: ethereum `0xe2d604...5451e9`; avalanche [`0x950d85...cedcc6`](./contracts/avalanche-43114/0x950d8545bb4e58b61230d47314549cae5bcedcc6/) | ✅ Audited |
| PnlAccounting | unknown | avalanche | n/a | 3 deployments: ethereum `0xdd317b...acaea7`; avalanche [`0x30c030...be48c3`](./contracts/avalanche-43114/0x30c030eec5c6b2ce609e1a69a54d0fd311be48c3/); avalanche `0x3cfd9a...60892d` | ✅ Audited |
| ProtocolPoolController | unknown | ethereum | n/a | 2 deployments: ethereum [`0x03a993...3f5e61`](./contracts/ethereum-1/0x03a993369b5b6290d412b63d29f3bc2dc13f5e61/); avalanche `0x63fff9...63f183` | ✅ Audited |
| RateProviderRegistry | unknown | avalanche | n/a | 2 deployments: ethereum `0xd0b6c0...bedce7`; avalanche [`0x8126f3...b3d9bb`](./contracts/avalanche-43114/0x8126f3385c7dc4072a67f17d585cec8ccab3d9bb/) | ✅ Audited |
| RedemptionController | unknown | avalanche | n/a | 2 deployments: ethereum `0xdf2ee4...eb2510`; avalanche [`0x4d9f1b...706755`](./contracts/avalanche-43114/0x4d9f1b673aa23e8c427d78df2d9390f724706755/) | ✅ Audited |
| SavaxUnlock | unknown | avalanche | n/a | [`0x6a5ebe...4e35b3`](./contracts/avalanche-43114/0x6a5ebe1e6db9ae132fe68bdb838718e7d54e35b3/) | ✅ Audited |
| SpectraWrappedtAVAX | unknown | avalanche | n/a | 2 deployments: avalanche [`0x4c916a...8a2a09`](./contracts/avalanche-43114/0x4c916ad137b97b03ab5f105cea77c5d5f98a2a09/); avalanche `0xad9ac7...29f2f3` | ✅ Audited |
| Strategy | core_logic | avalanche | n/a | 5 deployments: ethereum `0x5ae0e4...284938`; ethereum `0x98273a...c02455`; ethereum `0xbfdf0a...e02a9d`; avalanche [`0x568bf0...7a15bb`](./contracts/avalanche-43114/0x568bf0d3d0ef982b8f4978bea05d287dd47a15bb/); avalanche `0x882fdc...f62316` | ✅ Audited |
| StrategyExecutor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x89f57d...0ef50e`](./contracts/ethereum-1/0x89f57d3617f6a9ff877fea34dd0688b2840ef50e/); avalanche `0xca8539...abbb51` | ✅ Audited |
| StrategyStorage | unknown | avalanche | n/a | 2 deployments: ethereum `0x97c03f...6f1f47`; avalanche [`0x4728aa...97c080`](./contracts/avalanche-43114/0x4728aa3b08c22c1005633690712e5c6b1997c080/) | ✅ Audited |
| TAsset | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd11c45...6d5ed8`](./contracts/ethereum-1/0xd11c452fc99cf405034ee446803b6f6c1f6d5ed8/); ethereum `0xd1a622...c95e38` | ✅ Audited |
| TAsset | unknown | avalanche | n/a | 2 deployments: avalanche [`0x14a84f...bc1646`](./contracts/avalanche-43114/0x14a84f1a61ccd7d1be596a6cc11fe33a36bc1646/); avalanche `0xb63744...486d3a` | ✅ Audited |
| TAvaxExchangeRateProvider | unknown | avalanche | n/a | [`0xe24fae...6fff6b`](./contracts/avalanche-43114/0xe24faee4c390758846cf6791349cc0eca56fff6b/) | ✅ Audited |
| tETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x72cca9...761e96`](./contracts/ethereum-1/0x72cca9794018c10ce47af3fc8d47e167d0761e96/); ethereum `0xa1150c...a5adab` | ✅ Audited |
| TreehouseFastlane | unknown | avalanche | n/a | 2 deployments: ethereum `0x829525...06c0d6`; avalanche [`0x3d00a6...98a01c`](./contracts/avalanche-43114/0x3d00a639183b07e35efef044ee6cc14e8598a01c/) | ✅ Audited |
| TreehouseRedemption | unknown | ethereum | n/a | [`0x0618db...4ad09f`](./contracts/ethereum-1/0x0618dbdb3be798346e6d9c08c3c84658f94ad09f/) | ✅ Audited |
| TreehouseRedemptionV2 | unknown | avalanche | n/a | 2 deployments: ethereum `0xcd63a2...aabb85`; avalanche [`0x765f6d...acf04b`](./contracts/avalanche-43114/0x765f6dc8496ca7ef1e4a391be10185229aacf04b/) | ✅ Audited |
| TreehouseRouter | adapter | avalanche | n/a | 3 deployments: ethereum `0x8ae023...c4d398`; ethereum `0xefa3fa...0628f5`; avalanche [`0x5f4d2e...873d6e`](./contracts/avalanche-43114/0x5f4d2e6c118b5e3c74f0b61de40f627ca9873d6e/) | ✅ Audited |
| Vault | core_logic | avalanche | n/a | 3 deployments: ethereum `0x551d15...5d761b`; ethereum `0xba1222...6bf2c8`; avalanche [`0x3fc60a...ac99ed`](./contracts/avalanche-43114/0x3fc60aac1d843e4e181c7ab727a4027cb1ac99ed/) | ✅ Audited |
| VaultPull | unknown | avalanche | n/a | 2 deployments: ethereum `0x313ca6...5b3ab9`; avalanche [`0x20df2d...c83055`](./contracts/avalanche-43114/0x20df2d2ccbafbb07a5df452ac3f094747dc83055/) | ✅ Audited |
| VaultSend | unknown | avalanche | n/a | 2 deployments: ethereum `0xc78011...45fc3a`; avalanche [`0xbb906a...b2b815`](./contracts/avalanche-43114/0xbb906a265f09caa02d878d0581543b554fb2b815/) | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountingOracle | operational_periphery | ethereum | n/a | [`0x852ded...503cee`](./contracts/ethereum-1/0x852ded011285fe67063a08005c71a85690503cee/) | ⚠️ Unaudited |
| AccountingOracle | unknown | ethereum | n/a | [`0xf3c5e0...79a1af`](./contracts/ethereum-1/0xf3c5e0a67f32cf1dc07a8817590efa102079a1af/) | ⚠️ Unaudited |
| BenqiBorrow | unknown | avalanche | n/a | [`0x18b0bb...6577ff`](./contracts/avalanche-43114/0x18b0bbf62c5b7bf6182c9b46573dcbeff16577ff/) | ⚠️ Unaudited |
| BenqiPayback | unknown | avalanche | n/a | [`0x28c1d5...f75b19`](./contracts/avalanche-43114/0x28c1d5fc29b9690651b50adce14417eb34f75b19/) | ⚠️ Unaudited |
| BenqiSupply | unknown | avalanche | n/a | [`0x6c1823...c7c702`](./contracts/avalanche-43114/0x6c1823a7089bf2962206f1cddea1569facc7c702/) | ⚠️ Unaudited |
| ComposableStablePool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x1d1353...4dad14`](./contracts/ethereum-1/0x1d13531bf6344c102280ce4c458781fbf14dad14/); arbitrum `0x65c2d9...251c21` | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x394a1e...41542f`](./contracts/ethereum-1/0x394a1e1b934cb4f4a0dc17bdd592ec078741542f/); ethereum `0xa10d15...0dddb1` | ⚠️ Unaudited |
| DorMigrator | periphery | ethereum | n/a | [`0x83b78c...c9da2a`](./contracts/ethereum-1/0x83b78c4a54507ddc8db1fc3fd41df6edb0c9da2a/) | ⚠️ Unaudited |
| DorRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5324e2...152a10`](./contracts/ethereum-1/0x5324e2f61987fcb06d892f1256b7c12ca9152a10/); ethereum `0x7ca353...bbc204` | ⚠️ Unaudited |
| DorStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x478bf5...dd2192`](./contracts/ethereum-1/0x478bf562b2a39ff8530ee41ff0dfb39d8bdd2192/); ethereum `0xc1b6a6...f51023` | ⚠️ Unaudited |
| ESRV2 | unknown | ethereum | n/a | [`0xa1c069...4a94e1`](./contracts/ethereum-1/0xa1c069c2f77b26a54e9f175fa2eade21c34a94e1/) | ⚠️ Unaudited |
| FastlaneFee | unknown | ethereum | n/a | 2 deployments: ethereum [`0x434b68...1d6354`](./contracts/ethereum-1/0x434b68b11bbe8fd3074089397ca3d275801d6354/); avalanche `0xc41561...d0676b` | ⚠️ Unaudited |
| HashConsensus | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7fadb6...df355a`](./contracts/ethereum-1/0x7fadb6358950c5faa66cb5eb8ee5147de3df355a/); ethereum `0xd624b0...f0b288` | ⚠️ Unaudited |
| InternalAccountingUnit | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1b6238...68ba92`](./contracts/ethereum-1/0x1b6238e95bbcabee58997c99badd4154ad68ba92/); avalanche `0x5ac32e...4635a2` | ⚠️ Unaudited |
| KPKWSTETHV3RateProvider | unknown | ethereum | n/a | [`0xc8efa0...459ac2`](./contracts/ethereum-1/0xc8efa074aa18368270d5cda1fe733de2b9459ac2/) | ⚠️ Unaudited |
| LendingPoolv3 | core_logic | ethereum | n/a | [`0x5fde59...eb357f`](./contracts/ethereum-1/0x5fde59415625401278c4d41c6befce3790eb357f/) | ⚠️ Unaudited |
| NavHelper | unknown | ethereum | n/a | 2 deployments: ethereum [`0x86b238...62b6e6`](./contracts/ethereum-1/0x86b238787f24eecf24500135bc9d4d117062b6e6/); ethereum `0xf22ca8...75ff56` | ⚠️ Unaudited |
| NavUnStEth | unknown | ethereum | n/a | [`0x4c82f6...1e5e39`](./contracts/ethereum-1/0x4c82f6829797a4174a082ce9fee0b9bddc1e5e39/) | ⚠️ Unaudited |
| PnlAccountingHelper | unknown | ethereum | n/a | 2 deployments: ethereum [`0x57c23f...81437e`](./contracts/ethereum-1/0x57c23fe7a1a8d86f1128196c7c22f8711e81437e/); ethereum `0xd88fb0...1337e1` | ⚠️ Unaudited |
| SimpleStakingERC20 | token | ethereum | n/a | 2 deployments: ethereum [`0x5e4acc...779dcc`](./contracts/ethereum-1/0x5e4acca7a9989007cd74ae4ed1b096c000779dcc/); mantle [`0x5e4acc...779dcc`](./contracts/mantle-5000/0x5e4acca7a9989007cd74ae4ed1b096c000779dcc/) | ⚠️ Unaudited |
| StablePool | core_logic | avalanche | n/a | [`0x832f8e...ded1f0`](./contracts/avalanche-43114/0x832f8e068e92d56b94205ea605e5cdaa7cded1f0/) | ⚠️ Unaudited |
| StakingRouter | adapter | ethereum | n/a | [`0xfddf38...f12999`](./contracts/ethereum-1/0xfddf38947afb03c621c71b06c9c70bce73f12999/) | ⚠️ Unaudited |
| TreehouseAccounting | unknown | avalanche | n/a | 2 deployments: ethereum `0xb7ce3c...535709`; avalanche [`0x6f5d00...f8a454`](./contracts/avalanche-43114/0x6f5d00a263de6d40b4b2342996d2682e34f8a454/) | ⚠️ Unaudited |
| ValidatorsExitBusOracle | operational_periphery | ethereum | n/a | [`0x0de4ea...bf5c6e`](./contracts/ethereum-1/0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e/) | ⚠️ Unaudited |
| ValidatorsExitBusOracle | unknown | ethereum | n/a | [`0xa89ea5...3bc42c`](./contracts/ethereum-1/0xa89ea51fdde660f67d1850e03c9c9862d33bc42c/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0xf69753...d27862`](./contracts/ethereum-1/0xf697535848b535900c76f70f1e36ec3985d27862/) | ⚠️ Unaudited |
| WeETHExchangeRateProvider | unknown | ethereum | n/a | [`0x30ed8c...5595e4`](./contracts/ethereum-1/0x30ed8ce7668658271da0ddb350070ffea75595e4/) | ⚠️ Unaudited |
| WithdrawalQueueERC721 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x889edc...12f9b1`](./contracts/ethereum-1/0x889edc2edab5f40e902b864ad4d7ade8e412f9b1/); ethereum `0xe42c65...7d94d9` | ⚠️ Unaudited |

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
| Proxy (impl: 0x62c9e5e52351e02635f48072fa20c03bb650f787) | proxy | ethereum | n/a | `0xad744e...3d8db2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e3b23...875d6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94905e...784e6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1f998...d211f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1fa94...21588a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb14e42...ddd28b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdfcea9...eef9c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe43f46...af73c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe8e4ee...6685b5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [One_Rate_To_Rule_Them_All.pdf](https://www.treehouse.finance/One_Rate_To_Rule_Them_All.pdf) | yAudit | Audit | n/a | unknown | Direct | contract_name | 2 | low |
| [Fuzzland tETH Sep Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Fuzzland%20tETH%20Sep%20Audit%20Report%20vF.pdf) | unknown | Audit | 2024-09 | aging | Direct | contract_name | 24 | high |
| [Sigma Prime tETH Aug Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Sigma%20Prime%20tETH%20Aug%20Audit%20Report%20vF.pdf) | Sigma Prime | Audit | 2024-08 | aging | Direct | contract_name | 2 | n/a |
| [Sigma Prime tETH Mar Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Sigma%20Prime%20tETH%20Mar%20Audit%20Report.pdf) | Sigma Prime | Audit | 2025-03 | aging | Direct | contract_name | 1 | n/a |
| [Sigma Prime tETH Sep Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Sigma%20Prime%20tETH%20Sep%20Audit%20Report%20vF.pdf) | Sigma Prime | Audit | 2024-09 | aging | Direct | contract_name | 2 | n/a |
| [Trail of Bits tETH Aug Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Trail%20of%20Bits%20tETH%20Aug%20Audit%20Report%20vF.pdf) | Trail of Bits | Audit | 2024-08 | aging | Direct | contract_name | 2 | n/a |
| [Trail of Bits tETH Oct Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Trail%20of%20Bits%20tETH%20Oct%20Audit%20Report%20vF.pdf) | Trail of Bits | Audit | 2024-10 | aging | Direct | contract_name | 2 | n/a |
| [WatchPug Merkl Claim Apr Audit Report vF2.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20Merkl%20Claim%20Apr%20Audit%20Report%20vF2.pdf) | WatchPug | Audit | 2025-04 | aging | Direct | contract_name | 2 | high |
| [WatchPug TREE Token Mar Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20TREE%20Token%20Mar%20Audit%20Report.pdf) | WatchPug | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [WatchPug tAVAX Aug Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tAVAX%20Aug%20Audit%20Report.pdf) | WatchPug | Audit | 2025-08 | fresh | Direct | contract_name | 10 | high |
| [WatchPug tAVAX Benqi Strategy Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tAVAX%20Benqi%20Strategy%20Audit%20Report.pdf) | WatchPug | Audit | 2025-10 | fresh | Direct | contract_name | 9 | high |
| [WatchPug tAVAX Merkl Claim Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tAVAX%20Merkl%20Claim%20Audit%20Report.pdf) | WatchPug | Audit | 2025-09 | fresh | Direct | contract_name | 2 | high |
| [WatchPug tAVAX Spectra Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tAVAX%20Spectra%20Audit%20Report.pdf) | WatchPug | Audit | 2025-10 | fresh | Direct | contract_name | 2 | high |
| [WatchPug tETH Dec 2025 Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Dec%202025%20Audit%20Report%20vF.pdf) | WatchPug | Audit | 2025-12 | fresh | Direct | contract_name | 2 | n/a |
| [WatchPug tETH Dec Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Dec%20Audit%20Report%20vF.pdf) | WatchPug | Audit | 2024-12 | aging | Direct | contract_name | 3 | n/a |
| [WatchPug tETH Dec Audit Report vF2.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Dec%20Audit%20Report%20vF2.pdf) | WatchPug | Audit | 2024-12 | aging | Direct | contract_name | 2 | n/a |
| [WatchPug tETH Feb Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Feb%20Audit%20Report%20vF.pdf) | WatchPug | Audit | 2025-02 | aging | Direct | contract_name | 1 | n/a |
| [WatchPug tETH Feb Audit Report vF2.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Feb%20Audit%20Report%20vF2.pdf) | WatchPug | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [WatchPug tETH Timelock May Audit Report vF2.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Timelock%20May%20Audit%20Report%20vF2.pdf) | WatchPug | Audit | 2025-05 | aging | Direct | contract_name | 1 | n/a |
| [WatchPug tHYPE May Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tHYPE%20May%20Audit%20Report.pdf) | WatchPug | Audit | 2026-05 | fresh | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x852ded...503cee`](./contracts/ethereum-1/0x852ded011285fe67063a08005c71a85690503cee/) | AccountingOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf3c5e0...79a1af`](./contracts/ethereum-1/0xf3c5e0a67f32cf1dc07a8817590efa102079a1af/) | AccountingOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x18b0bb...6577ff`](./contracts/avalanche-43114/0x18b0bbf62c5b7bf6182c9b46573dcbeff16577ff/) | BenqiBorrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x28c1d5...f75b19`](./contracts/avalanche-43114/0x28c1d5fc29b9690651b50adce14417eb34f75b19/) | BenqiPayback | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6c1823...c7c702`](./contracts/avalanche-43114/0x6c1823a7089bf2962206f1cddea1569facc7c702/) | BenqiSupply | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d1353...4dad14`](./contracts/ethereum-1/0x1d13531bf6344c102280ce4c458781fbf14dad14/) | ComposableStablePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x83b78c...c9da2a`](./contracts/ethereum-1/0x83b78c4a54507ddc8db1fc3fd41df6edb0c9da2a/) | DorMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5324e2...152a10`](./contracts/ethereum-1/0x5324e2f61987fcb06d892f1256b7c12ca9152a10/) | DorRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x478bf5...dd2192`](./contracts/ethereum-1/0x478bf562b2a39ff8530ee41ff0dfb39d8bdd2192/) | DorStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1c069...4a94e1`](./contracts/ethereum-1/0xa1c069c2f77b26a54e9f175fa2eade21c34a94e1/) | ESRV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x434b68...1d6354`](./contracts/ethereum-1/0x434b68b11bbe8fd3074089397ca3d275801d6354/) | FastlaneFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fadb6...df355a`](./contracts/ethereum-1/0x7fadb6358950c5faa66cb5eb8ee5147de3df355a/) | HashConsensus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b6238...68ba92`](./contracts/ethereum-1/0x1b6238e95bbcabee58997c99badd4154ad68ba92/) | InternalAccountingUnit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8efa0...459ac2`](./contracts/ethereum-1/0xc8efa074aa18368270d5cda1fe733de2b9459ac2/) | KPKWSTETHV3RateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fde59...eb357f`](./contracts/ethereum-1/0x5fde59415625401278c4d41c6befce3790eb357f/) | LendingPoolv3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x86b238...62b6e6`](./contracts/ethereum-1/0x86b238787f24eecf24500135bc9d4d117062b6e6/) | NavHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c82f6...1e5e39`](./contracts/ethereum-1/0x4c82f6829797a4174a082ce9fee0b9bddc1e5e39/) | NavUnStEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57c23f...81437e`](./contracts/ethereum-1/0x57c23fe7a1a8d86f1128196c7c22f8711e81437e/) | PnlAccountingHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e4acc...779dcc`](./contracts/ethereum-1/0x5e4acca7a9989007cd74ae4ed1b096c000779dcc/) | SimpleStakingERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x832f8e...ded1f0`](./contracts/avalanche-43114/0x832f8e068e92d56b94205ea605e5cdaa7cded1f0/) | StablePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfddf38...f12999`](./contracts/ethereum-1/0xfddf38947afb03c621c71b06c9c70bce73f12999/) | StakingRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6f5d00...f8a454`](./contracts/avalanche-43114/0x6f5d00a263de6d40b4b2342996d2682e34f8a454/) | TreehouseAccounting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0de4ea...bf5c6e`](./contracts/ethereum-1/0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e/) | ValidatorsExitBusOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa89ea5...3bc42c`](./contracts/ethereum-1/0xa89ea51fdde660f67d1850e03c9c9862d33bc42c/) | ValidatorsExitBusOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf69753...d27862`](./contracts/ethereum-1/0xf697535848b535900c76f70f1e36ec3985d27862/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30ed8c...5595e4`](./contracts/ethereum-1/0x30ed8ce7668658271da0ddb350070ffea75595e4/) | WeETHExchangeRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x889edc...12f9b1`](./contracts/ethereum-1/0x889edc2edab5f40e902b864ad4d7ade8e412f9b1/) | WithdrawalQueueERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 59 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6, low=1
- Match method counts: contract_name=19, extraction_exact=51

Zero-match audit list:

- [11325] WatchPug TREE Token Mar Audit Report.pdf
- [11334] WatchPug tETH Feb Audit Report vF2.pdf

Fork inheritance lineage and inherited audits are included when available.
