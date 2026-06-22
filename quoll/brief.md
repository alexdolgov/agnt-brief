# Agentic Audit Brief: Quoll

⚠️ Lifecycle status: DEAD - TVL dropped 18.2% over 90 days

## Project Overview

- Project: Quoll (`quoll`)
- Website: [https://quoll.finance](https://quoll.finance)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-20T00:02:15.897Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: arbitrum, bsc
- Contract surface: 62 unique implementations (140 raw deployments)
- DeFi Llama TVL: $18,291.47
- On-chain TVL (included contracts): $684,202.81
- TVL by chain: Bsc $684,202.81

## Project Description

Quoll is a yield aggregation and liquidity management protocol that operates on BSC and Arbitrum. It allows users to deposit assets into Wombat-based liquidity pools, earn boosted rewards, and participate in governance through ve-tokenomics and voting proxies.

### Architecture

The BNB Chain family provides the foundational token and voting contracts that are reused across deployments. The Quoll family extends this with chain-specific boosters, reward pools, and adapters (QuollZap) that interact with Wombat and Thena protocols, sharing the same token and voter proxy infrastructure.

## Contract Surface Quality

- Indexed contracts: 1320; live-surface contracts included: 140 (139 live, 1 unknown).
- Excluded by liveness: 499 inactive, 681 singleton, 0 uninitialized.
- Deployment units: 7/201 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 17/61.

## Audit Coverage Summary

- Verified implementations audited: 5/60 (8.3%)
- Verified + Unaudited implementations: 55
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 62
- Raw deployments: 140
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $684,202.81
- Latest audit: 2023-01 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $684,202.81 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 5 | 8.3% | 2023-01 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BaseRewardPool | core_logic | bsc | n/a | [`0x95196e...fa55d9`](./contracts/bsc-56/0x95196ee6f02d64d259a0fb291a9f238a7cfa55d9/) | ✅ Audited |
| NativeZapper | adapter | bsc | n/a | [`0xce0a90...bc0289`](./contracts/bsc-56/0xce0a901a04f8b8d3fc2977373b6a6cdee0bc0289/) | ✅ Audited |
| VlQuoV2 | unknown | bsc | n/a | 8 deployments: bsc [`0x11c373...9a7eb2`](./contracts/bsc-56/0x11c37374267c4d9d27f47aed0976e0a64f9a7eb2/); bsc `0x2e8b58...0a3e1b`; bsc `0x73f366...3fb71c`; bsc `0x791848...fd920d`; bsc `0x796bf1...fa99cd`; bsc `0xb438e5...5ad5f8`; bsc `0xfb5def...f3ab22`; arbitrum `0x5e6c67...6c4d11` | ✅ Audited |
| WombatBooster | core_logic | bsc | n/a | 4 deployments: bsc [`0xb641cd...455577`](./contracts/bsc-56/0xb641cd201df87a72a4aac8eab6a68f17d8455577/); bsc `0xbe57ca...aba69a`; bsc `0xc032e9...3dc9b8`; bsc `0xd4f363...9521eb` | ✅ Audited |
| WombatVoterProxy | unknown | bsc | n/a | 3 deployments: bsc [`0x3a9b30...7017e0`](./contracts/bsc-56/0x3a9b301e550502ef9e92f87500801254317017e0/); bsc `0xeec967...a3c69b`; arbitrum `0xfda75e...287a6a` | ✅ Audited |

### ⚠️ Verified + Unaudited (55)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WombatERC20 | token | bsc | n/a | [`0xad6742...b94fb1`](./contracts/bsc-56/0xad6742a35fb341a9cc6ad674738dd8da98b94fb1/) | ⚠️ Unaudited |
| ABnbcAsset | unknown | bsc | n/a | 2 deployments: bsc [`0x9d2dea...96406b`](./contracts/bsc-56/0x9d2dead9547eb65aa78e239647a0c783f296406b/); bsc `0xb6d83f...f8855f` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | bsc | n/a | [`0x6f866d...7c15a7`](./contracts/bsc-56/0x6f866dfb4ec07864807217c48e4ff58b137c15a7/) | ⚠️ Unaudited |
| AlgebraFactory | registry | bsc | n/a | [`0x30055f...fb4a98`](./contracts/bsc-56/0x30055f87716d3dfd0e5198c27024481099fb4a98/) | ⚠️ Unaudited |
| AnkrStakingAsset | unknown | bsc | n/a | [`0x128fa2...08228b`](./contracts/bsc-56/0x128fa2c0708bd0e357cd97eadaafa3bc9608228b/) | ⚠️ Unaudited |
| Asset | unknown | bsc | n/a | 26 deployments: bsc [`0x184eb7...d96f75`](./contracts/bsc-56/0x184eb7dde8c00fad900120235b534aabc1d96f75/); bsc `0x1f502f...f6723e`; bsc `0x1fa71d...e0d38b`; bsc `0x34e109...390b57`; bsc `0x3c42e4...78d688`; bsc `0x3c8e74...a05367`; bsc `0x47ab51...c371eb`; bsc `0x4f95fe...b988f7`; bsc `0x61e338...345752`; bsc `0x681124...3cd685`; bsc `0x6b6006...a1cc95`; bsc `0x87073b...c120e4`; bsc `0x8df8b5...67b3ce`; bsc `0x93012a...98abbc`; bsc `0x9d0a46...15dd84`; bsc `0xa393d6...2f1a6e`; bsc `0xa45c0a...ba3800`; bsc `0xa649be...661c1a`; bsc `0xb43ee2...00b8e2`; bsc `0xb5c936...48bcf8`; bsc `0xc74a9d...1133cb`; bsc `0xcf4349...efb015`; bsc `0xd55d01...87a521`; bsc `0xeaba29...e68ac2`; bsc `0xf31994...25745a`; bsc `0xf9bdc8...653cac` | ⚠️ Unaudited |
| BnbxAsset | unknown | bsc | n/a | 3 deployments: bsc [`0x10f7c6...1fc24f`](./contracts/bsc-56/0x10f7c62f47f19e3ce08fef38f74e3c0bb31fc24f/); bsc `0x16b372...a509a7`; bsc `0x5d64ed...060f4a` | ⚠️ Unaudited |
| CakeLpLocker | unknown | bsc | n/a | [`0xf6e971...93361d`](./contracts/bsc-56/0xf6e97145502250077bb0c5ac7826acc7ac93361d/) | ⚠️ Unaudited |
| CampaignRewardPoolV3 | core_logic | bsc | n/a | [`0x4a9921...7ea454`](./contracts/bsc-56/0x4a99218cecfbd4dee0ed49e22b4d1f40367ea454/) | ⚠️ Unaudited |
| Claimer | operational_periphery | bsc | n/a | [`0xd2d64e...d1e5b2`](./contracts/bsc-56/0xd2d64e094d37dd7d7759603fb9ed6b2306d1e5b2/) | ⚠️ Unaudited |
| DynamicAsset | unknown | bsc | n/a | 7 deployments: bsc [`0x0321d1...740f86`](./contracts/bsc-56/0x0321d1d769cc1e81ba21a157992b635363740f86/); bsc `0x0e99fb...cc5760`; bsc `0x4447de...8a5ac6`; bsc `0x5a65cb...d2de8b`; bsc `0x74f019...092c5b`; bsc `0x90f6f0...2b5201`; bsc `0xe0e763...ba83ec` | ⚠️ Unaudited |
| FarmingCenter | unknown | bsc | n/a | [`0x0cd53e...1d08bf`](./contracts/bsc-56/0x0cd53eeb75d72ee0e3e64206b63d7204351d08bf/) | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | bsc | n/a | [`0xc9e5c9...c6a6b1`](./contracts/bsc-56/0xc9e5c9fbb843e168282e2cfbebbc3c7f0ec6a6b1/) | ⚠️ Unaudited |
| GaugeIchiFeeDistribution | operational_periphery | bsc | n/a | 4 deployments: bsc [`0x42e1bf...26ba58`](./contracts/bsc-56/0x42e1bf58f7b6ad93c23f3d1a22e22329e726ba58/); bsc `0x6f8024...1481b5`; bsc `0x9d2c09...5e3b4b`; bsc `0xb4dee5...61f455` | ⚠️ Unaudited |
| GaugeSimple | operational_periphery | bsc | n/a | 5 deployments: bsc [`0x2f92bc...121bb2`](./contracts/bsc-56/0x2f92bcc2da319262ba4ddc46d883b23f7e121bb2/); bsc `0xa95186...a9b8d6`; bsc `0xba4456...33e871`; bsc `0xcf2071...64541a`; bsc `0xe6519b...bc3b0c` | ⚠️ Unaudited |
| GlobalFactory | registry | bsc | n/a | [`0x247009...947d9c`](./contracts/bsc-56/0x247009c6f39bc08d5d39ac38c9d5a0d316947d9c/) | ⚠️ Unaudited |
| GovernedPriceFeed | operational_periphery | bsc | n/a | [`0xdd29f2...73fa01`](./contracts/bsc-56/0xdd29f25a64eb824e1ff37948fd2485d9e073fa01/) | ⚠️ Unaudited |
| HighCovRatioFeePoolV2 | core_logic | bsc | unit-40505 (5 proxies) | 5 deployments: bsc [`0x052045...fc74b2`](./contracts/bsc-56/0x0520451b19ad0bb00ed35ef391086a692cfc74b2/); bsc `0x312bc7...055fb0`; bsc `0x9a39f4...5f3d28`; bsc `0xc26b7c...945a2c`; bsc `0xeeb5a7...67ce2e` | ⚠️ Unaudited |
| IncentiveMaker | unknown | bsc | n/a | [`0x2814a4...72bbf4`](./contracts/bsc-56/0x2814a4cf03911afc4b0432dbad6cf1d79b72bbf4/) | ⚠️ Unaudited |
| IncentiveMaker | unknown | bsc | unit-40605 | [`0x80ad2f...ef0701`](./contracts/bsc-56/0x80ad2f2ed4f00b152d7ca5e74920c944bfef0701/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | 2 deployments: bsc [`0x11746f...a92f7c`](./contracts/bsc-56/0x11746fd90091228a97974435d6be5e10bda92f7c/); bsc `0xe58e64...5adfbb` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | bsc | unit-40586 | [`0x643b68...21d02e`](./contracts/bsc-56/0x643b68bf3f855b8475c0a700b6d1020bfc21d02e/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | bsc | n/a | 4 deployments: bsc [`0x1c9436...444da6`](./contracts/bsc-56/0x1c943651c84b167490fbdce3f949384abb444da6/); bsc `0x2fa6d6...306ee1`; bsc `0x9178f1...4c138e`; bsc `0xa87fd7...2a8d5f` | ⚠️ Unaudited |
| PCSDepositor | unknown | bsc | n/a | [`0x0aba8d...b39874`](./contracts/bsc-56/0x0aba8d4677217ca33676aae36ea62e45ddb39874/) | ⚠️ Unaudited |
| PCSReferralCampaignLens | core_logic | bsc | n/a | 2 deployments: bsc [`0x2caa97...a333ec`](./contracts/bsc-56/0x2caa974471de39bb8219761ebf2cb5f52ba333ec/); bsc `0xd9ad7b...112e22` | ⚠️ Unaudited |
| PCSVoterProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x08c79b...1f2f5e`](./contracts/bsc-56/0x08c79b06826604d86aeaed44ac85df9f5e1f2f5e/); bsc `0x15e5a4...8bf85e` | ⚠️ Unaudited |
| PriceFeedAsset | operational_periphery | bsc | n/a | [`0xa9a081...cd23cc`](./contracts/bsc-56/0xa9a08133af8241e36193b57e4dfe43d147cd23cc/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | 4 deployments: bsc `0x5d00b9...10232a`; bsc `0x887a9c...97bfc5`; bsc `0xc06cb2...e04575`; arbitrum [`0x4f878d...6510bc`](./contracts/arbitrum-42161/0x4f878dca03d9970bb2a9b770df7f7e49226510bc/) | ⚠️ Unaudited |
| QMilesPts | unknown | bsc | n/a | [`0x5e83f2...818554`](./contracts/bsc-56/0x5e83f2f467b4809ed7cad49ac0049eca48818554/) | ⚠️ Unaudited |
| QuollZap | adapter | bsc | n/a | [`0x9425da...0fa605`](./contracts/bsc-56/0x9425da9913ee5736020b3dcdf76e0d07180fa605/) | ⚠️ Unaudited |
| QuoterV2 | periphery | bsc | n/a | [`0x71af3b...c3916d`](./contracts/bsc-56/0x71af3b059b1daa81ee65529bca82779edfc3916d/) | ⚠️ Unaudited |
| Referral | unknown | bsc | n/a | [`0xa4a450...ee4766`](./contracts/bsc-56/0xa4a45078f9382f22fcbf7a121b85724f6fee4766/) | ⚠️ Unaudited |
| ReferralBootstrapLens | periphery | bsc | n/a | [`0x6dc9f5...356ec9`](./contracts/bsc-56/0x6dc9f5b047c530717123df9bfc5878f0a8356ec9/) | ⚠️ Unaudited |
| ReferralCampaignLens | core_logic | bsc | n/a | 3 deployments: bsc [`0xb19b9e...8732e6`](./contracts/bsc-56/0xb19b9e6689369e130fbd70b32f4588795b8732e6/); bsc `0xc44bc2...ade4e4`; bsc `0xe651b3...391f88` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | bsc | n/a | [`0xa6e0e7...18727d`](./contracts/bsc-56/0xa6e0e731cb1e99aede0f9c9128d04f948e18727d/) | ⚠️ Unaudited |
| Router | adapter | bsc | n/a | 2 deployments: bsc [`0x20a304...ca8431`](./contracts/bsc-56/0x20a304a7d126758dfe6b243d0fc515f83bca8431/); bsc `0x9b2378...187d0d` | ⚠️ Unaudited |
| RouterV2 | adapter | bsc | n/a | [`0xd4ae6e...78d109`](./contracts/bsc-56/0xd4ae6eca985340dd434d38f470accce4dc78d109/) | ⚠️ Unaudited |
| Royalties | unknown | bsc | n/a | [`0xbb2caf...913882`](./contracts/bsc-56/0xbb2caf56bf29379e329dfed453cbe60e4d913882/) | ⚠️ Unaudited |
| SkimmableAsset | unknown | bsc | n/a | 2 deployments: bsc [`0x88beb1...b87117`](./contracts/bsc-56/0x88beb144352bd3109c79076202fac2bceab87117/); bsc `0xbd459e...c273b1` | ⚠️ Unaudited |
| StkbnbAsset | unknown | bsc | n/a | [`0xc496f4...e0d17f`](./contracts/bsc-56/0xc496f42ea6fc72af434f48469b847a469fe0d17f/) | ⚠️ Unaudited |
| Thena | unknown | bsc | n/a | [`0xf4c8e3...863a11`](./contracts/bsc-56/0xf4c8e32eadec4bfe97e0f595add0f4450a863a11/) | ⚠️ Unaudited |
| ThenaDelegatePool | core_logic | bsc | n/a | 6 deployments: bsc [`0x3de0ca...6ee2ab`](./contracts/bsc-56/0x3de0ca61900de4be54e2e113513f51a5236ee2ab/); bsc `0x60a97c...26d608`; bsc `0x6fa815...b72af8`; bsc `0x9ae267...d73447`; bsc `0xd60d5e...7004c4`; bsc `0xde85aa...9f354c` | ⚠️ Unaudited |
| ThenianFeeConverter | unknown | bsc | n/a | [`0x6c1c0a...f2eccc`](./contracts/bsc-56/0x6c1c0af31e3c59bc3de10c5cdb0d4af6a0f2eccc/) | ⚠️ Unaudited |
| TokenImplementation | token | arbitrum | unit-40698 | [`0xf00d87...af0331`](./contracts/arbitrum-42161/0xf00d8790a76ee5a5dbc10eacac39151aa2af0331/) | ⚠️ Unaudited |
| TradingCompetitionManager | governance | bsc | n/a | [`0x8d03fe...f639ec`](./contracts/bsc-56/0x8d03febf03cd8e6f2388e587a6a1263360f639ec/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | unit-40529 | [`0x1c0e74...1f4494`](./contracts/bsc-56/0x1c0e74d828351af3882a118a9814807d361f4494/) | ⚠️ Unaudited |
| VeWom | unknown | bsc | unit-40555 | [`0x3da628...b5b0cc`](./contracts/bsc-56/0x3da62816dd31c56d9cdf22c6771ddb892cb5b0cc/) | ⚠️ Unaudited |
| VirtualBalanceRewardPool | core_logic | arbitrum | unit-40676 (4 proxies) | 4 deployments: arbitrum [`0x03ac59...d4f18e`](./contracts/arbitrum-42161/0x03ac59ffa25227747d299b200179201738d4f18e/); arbitrum `0x51148d...0ac677`; arbitrum `0x70bb16...0cb4d2`; arbitrum `0xe49a31...2ba50a` | ⚠️ Unaudited |
| VlQuoV2Lens | periphery | bsc | n/a | [`0xb740db...fa84d2`](./contracts/bsc-56/0xb740db176eaae30fd69eec5623ee2f1651fa84d2/) | ⚠️ Unaudited |
| Voter | unknown | bsc | n/a | [`0x8fbb1e...dd0462`](./contracts/bsc-56/0x8fbb1ecebb9e9839bc0de00b9c4c585cabdd0462/) | ⚠️ Unaudited |
| VoterV3 | unknown | bsc | unit-40551 | [`0x3a1d09...2c4fcb`](./contracts/bsc-56/0x3a1d0952809f4948d15ebce8d345962a282c4fcb/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | bsc | n/a | [`0xfbbf37...1c070d`](./contracts/bsc-56/0xfbbf371c9b0b994eebfcc977cef603f7f31c070d/) | ⚠️ Unaudited |
| VotingIncentivesFactory | registry | bsc | n/a | [`0x82f144...57d218`](./contracts/bsc-56/0x82f144accf4779ca8c49928be28fac5fa157d218/) | ⚠️ Unaudited |
| WBETHAsset | unknown | bsc | n/a | [`0x975693...51d57f`](./contracts/bsc-56/0x975693afe5bb69088a716e3a7f9bff77ec51d57f/) | ⚠️ Unaudited |
| WombatRouter | adapter | bsc | n/a | [`0x19609b...a4add7`](./contracts/bsc-56/0x19609b03c976cca288fbdae5c21d4290e9a4add7/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x4748aa...3f210f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb95115...db5d58` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-QuollFinance-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-QuollFinance-v1.0.pdf) | PeckShield | Audit | 2022-10 | stale | Direct | contract_name | 5 | high |
| [PeckShield-Audit-Report-QuollV2-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-QuollV2-v1.0.pdf) | PeckShield | Audit | 2023-01 | stale | Direct | contract_name | 13 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x9d2dea...96406b`](./contracts/bsc-56/0x9d2dead9547eb65aa78e239647a0c783f296406b/) | ABnbcAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x128fa2...08228b`](./contracts/bsc-56/0x128fa2c0708bd0e357cd97eadaafa3bc9608228b/) | AnkrStakingAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x184eb7...d96f75`](./contracts/bsc-56/0x184eb7dde8c00fad900120235b534aabc1d96f75/) | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x10f7c6...1fc24f`](./contracts/bsc-56/0x10f7c62f47f19e3ce08fef38f74e3c0bb31fc24f/) | BnbxAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4a9921...7ea454`](./contracts/bsc-56/0x4a99218cecfbd4dee0ed49e22b4d1f40367ea454/) | CampaignRewardPoolV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0321d1...740f86`](./contracts/bsc-56/0x0321d1d769cc1e81ba21a157992b635363740f86/) | DynamicAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0cd53e...1d08bf`](./contracts/bsc-56/0x0cd53eeb75d72ee0e3e64206b63d7204351d08bf/) | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x247009...947d9c`](./contracts/bsc-56/0x247009c6f39bc08d5d39ac38c9d5a0d316947d9c/) | GlobalFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2814a4...72bbf4`](./contracts/bsc-56/0x2814a4cf03911afc4b0432dbad6cf1d79b72bbf4/) | IncentiveMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0aba8d...b39874`](./contracts/bsc-56/0x0aba8d4677217ca33676aae36ea62e45ddb39874/) | PCSDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2caa97...a333ec`](./contracts/bsc-56/0x2caa974471de39bb8219761ebf2cb5f52ba333ec/) | PCSReferralCampaignLens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x08c79b...1f2f5e`](./contracts/bsc-56/0x08c79b06826604d86aeaed44ac85df9f5e1f2f5e/) | PCSVoterProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa9a081...cd23cc`](./contracts/bsc-56/0xa9a08133af8241e36193b57e4dfe43d147cd23cc/) | PriceFeedAsset | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5e83f2...818554`](./contracts/bsc-56/0x5e83f2f467b4809ed7cad49ac0049eca48818554/) | QMilesPts | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9425da...0fa605`](./contracts/bsc-56/0x9425da9913ee5736020b3dcdf76e0d07180fa605/) | QuollZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa4a450...ee4766`](./contracts/bsc-56/0xa4a45078f9382f22fcbf7a121b85724f6fee4766/) | Referral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6dc9f5...356ec9`](./contracts/bsc-56/0x6dc9f5b047c530717123df9bfc5878f0a8356ec9/) | ReferralBootstrapLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb19b9e...8732e6`](./contracts/bsc-56/0xb19b9e6689369e130fbd70b32f4588795b8732e6/) | ReferralCampaignLens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa6e0e7...18727d`](./contracts/bsc-56/0xa6e0e731cb1e99aede0f9c9128d04f948e18727d/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x20a304...ca8431`](./contracts/bsc-56/0x20a304a7d126758dfe6b243d0fc515f83bca8431/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbb2caf...913882`](./contracts/bsc-56/0xbb2caf56bf29379e329dfed453cbe60e4d913882/) | Royalties | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x88beb1...b87117`](./contracts/bsc-56/0x88beb144352bd3109c79076202fac2bceab87117/) | SkimmableAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc496f4...e0d17f`](./contracts/bsc-56/0xc496f42ea6fc72af434f48469b847a469fe0d17f/) | StkbnbAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3de0ca...6ee2ab`](./contracts/bsc-56/0x3de0ca61900de4be54e2e113513f51a5236ee2ab/) | ThenaDelegatePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6c1c0a...f2eccc`](./contracts/bsc-56/0x6c1c0af31e3c59bc3de10c5cdb0d4af6a0f2eccc/) | ThenianFeeConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8d03fe...f639ec`](./contracts/bsc-56/0x8d03febf03cd8e6f2388e587a6a1263360f639ec/) | TradingCompetitionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb740db...fa84d2`](./contracts/bsc-56/0xb740db176eaae30fd69eec5623ee2f1651fa84d2/) | VlQuoV2Lens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8fbb1e...dd0462`](./contracts/bsc-56/0x8fbb1ecebb9e9839bc0de00b9c4c585cabdd0462/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x82f144...57d218`](./contracts/bsc-56/0x82f144accf4779ca8c49928be28fac5fa157d218/) | VotingIncentivesFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x975693...51d57f`](./contracts/bsc-56/0x975693afe5bb69088a716e3a7f9bff77ec51d57f/) | WBETHAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=273

Fork inheritance lineage and inherited audits are included when available.
