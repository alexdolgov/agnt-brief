# Agentic Audit Brief: CLever

## Project Overview

- Project: CLever (`clever`)
- Website: [https://clever.aladdin.club/](https://clever.aladdin.club/)
- Lifecycle: active (Tier 0, 83.1% below peak)
- Generated: 2026-06-10T22:28:09.965Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-03d9
- Chains: ethereum
- Contract surface: 76 unique implementations (174 raw deployments)
- DeFi Llama TVL: $5,614,458.12
- On-chain TVL (included contracts): $3,249,669.23
- TVL by chain: Ethereum $3,249,669.23

## Project Description

CLever is a DeFi protocol for CVX and stablecoin-related future-yield and leverage positions. Its native surface includes CLever modules such as Furnace/MetaFurnace, farming, locker, vesting, governance, token, and strategy components that handle yield claims, reward harvesting, swapping, and redemption flows. Third-party systems such as Balancer and StakeDAO should be treated as external integrations or dependencies rather than CLever-owned core contracts or TVL.

### Architecture

The CLever family consists of a single product line where the Vault contract interacts with multiple Vyper contracts to execute yield strategies. All contracts share the same deployer cluster, indicating a unified infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 7/66 (10.6%)
- Verified + Unaudited implementations: 59
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 76
- Raw deployments: 174
- Audits discovered: 3
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $1,590,847.52
- Latest audit: 2022-11 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SECBIT | Tier 2 | 6 | 9.1% | 2022-11 |
| unknown | Tier 2 | 4 | 6.1% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CLeverToken | token | ethereum | 2 deployments: ethereum [`0x3c20ac...972f86`](./contracts/ethereum-1/0x3c20ac688410be8f391be1fb00afc5c212972f86/); ethereum `0xf05e58...0ba904` | ✅ Audited |
| AllInOneGateway | unknown | ethereum | [`0x6e513d...6c857b`](./contracts/ethereum-1/0x6e513d492ded19ad8211a57cc6b4493c9e6c857b/) | ✅ Audited |
| CLeverCVXLocker | unknown | ethereum | 3 deployments: ethereum [`0x96c68d...c64154`](./contracts/ethereum-1/0x96c68d861ada016ed98c30c810879f9df7c64154/); ethereum `0xa619cb...965d58`; ethereum `0xdc846c...eced94` | ✅ Audited |
| ConcentratorStrategy | core_logic | ethereum | 5 deployments: ethereum [`0x543252...d1e2b2`](./contracts/ethereum-1/0x5432526e75d45369970b8616f54b25c831d1e2b2/); ethereum `0xa7625d...9fcaf0`; ethereum `0xadc6a8...d29f66`; ethereum `0xbfb147...370422`; ethereum `0xc65d58...6ace6c` | ✅ Audited |
| Furnace | unknown | ethereum | 3 deployments: ethereum [`0x18fa0c...c4f6c1`](./contracts/ethereum-1/0x18fa0ce2a350cc574f562fe3d02b885417c4f6c1/); ethereum `0x30f291...ccef01`; ethereum `0xce4dcc...7ab72a` | ✅ Audited |
| MetaFurnace | unknown | ethereum | 4 deployments: ethereum [`0x6f7768...7950f9`](./contracts/ethereum-1/0x6f77685ae7a1288d2480440b7bb0fa2c317950f9/); ethereum `0x7059ea...e81e3c`; ethereum `0x7f160e...5761a9`; ethereum `0xeb937d...009773` | ✅ Audited |
| Vesting | operational_periphery | ethereum | 5 deployments: ethereum [`0x28f576...a7309b`](./contracts/ethereum-1/0x28f5763b7779ed64b9e0da0a9862571ba4a7309b/); ethereum `0x592e35...695593`; ethereum `0x834188...f28742`; ethereum `0x84c82d...6f7a4e`; ethereum `0xd2b094...6ae099` | ✅ Audited |

### ⚠️ Verified + Unaudited (59)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| FractionalToken | token | ethereum | 2 deployments: ethereum [`0x2a906e...745748`](./contracts/ethereum-1/0x2a906eab9b088e6753670bc8d3840f9473745748/); ethereum `0x53805a...633726` | ⚠️ Unaudited |
| LeveragedToken | token | ethereum | 2 deployments: ethereum [`0x92d0cb...75fe83`](./contracts/ethereum-1/0x92d0cb7e56806bf977e7f5296ea2fe84b475fe83/); ethereum `0xe063f0...703ae2` | ⚠️ Unaudited |
| RebalancePool | core_logic | ethereum | 2 deployments: ethereum [`0x3415fc...6473c7`](./contracts/ethereum-1/0x3415fcd2885c486e2d848403d51077f7176473c7/); ethereum `0xa677d9...01a49e` | ⚠️ Unaudited |
| AladdinConvexVault | core_logic | ethereum | [`0xc8ff37...68e0e8`](./contracts/ethereum-1/0xc8ff37f7d057df1bb9ad681b53fa4726f268e0e8/) | ⚠️ Unaudited |
| TokenSale | token | ethereum | 3 deployments: ethereum [`0x078672...8c75e7`](./contracts/ethereum-1/0x07867298d99b95772008583bd603cfa68b8c75e7/); ethereum `0x3eb6da...b0e17f`; ethereum `0x674a74...6de935` | ⚠️ Unaudited |
| AladdinCRV | unknown | ethereum | 2 deployments: ethereum [`0x160d6e...9cb78f`](./contracts/ethereum-1/0x160d6e417be17e21712f004b87872a30799cb78f/); ethereum `0x6f81a0...a095c1` | ⚠️ Unaudited |
| AladdinCRVV2 | unknown | ethereum | 5 deployments: ethereum [`0x2b95a1...7e0884`](./contracts/ethereum-1/0x2b95a1dcc3d405535f9ed33c219ab38e8d7e0884/); ethereum `0x8c7e36...9c444d`; ethereum `0x9142d4...de92fb`; ethereum `0xaf3406...89e35b`; ethereum `0xcffd49...70ef90` | ⚠️ Unaudited |
| AladdinCRVZap | adapter | ethereum | [`0x5eb30c...852082`](./contracts/ethereum-1/0x5eb30ce188b0abb89a942ced6cbe114f4d852082/) | ⚠️ Unaudited |
| AladdinCVX | unknown | ethereum | 4 deployments: ethereum [`0x4b2c6f...ce0750`](./contracts/ethereum-1/0x4b2c6f67bc775fd64de3cec188f0f3e960ce0750/); ethereum `0x5380d2...1cf94a`; ethereum `0x705299...0042fc`; ethereum `0xdec800...c8e359` | ⚠️ Unaudited |
| AladdinETH | unknown | ethereum | 4 deployments: ethereum [`0x7f6ce8...b8f9be`](./contracts/ethereum-1/0x7f6ce8b08bca036c60f71693cd9425614ab8f9be/); ethereum `0xb15ad6...be5aba`; ethereum `0xc99989...e852f7`; ethereum `0xd3b158...fb777c` | ⚠️ Unaudited |
| AladdinFXS | unknown | ethereum | 2 deployments: ethereum [`0x165a7a...be6edc`](./contracts/ethereum-1/0x165a7a410c14054cd39d03b4b7cb392f61be6edc/); ethereum `0xeb5eb0...e5ba2c` | ⚠️ Unaudited |
| AladdinFXSConvexVault | core_logic | ethereum | [`0xd6e3bb...bf99e1`](./contracts/ethereum-1/0xd6e3bb7b1d6fa75a71d48cfb10096d59abbf99e1/) | ⚠️ Unaudited |
| AladdinFXSV2 | unknown | ethereum | 2 deployments: ethereum [`0xd9cc44...f99258`](./contracts/ethereum-1/0xd9cc44c567b1effddde8461acd6c67028af99258/); ethereum `0xdaf03d...6d3ec9` | ⚠️ Unaudited |
| AladdinPriceOracle | operational_periphery | ethereum | [`0x304047...d869b4`](./contracts/ethereum-1/0x304047f1d867a00082c8549e81a2f0b389d869b4/) | ⚠️ Unaudited |
| AladdinSdCRV | unknown | ethereum | 3 deployments: ethereum [`0x922837...e3b9d7`](./contracts/ethereum-1/0x922837838aed2937742cff7b0adfd74157e3b9d7/); ethereum `0xd3eb99...425a84`; ethereum `0xdc4ca2...23545e` | ⚠️ Unaudited |
| AladdinZap | adapter | ethereum | 4 deployments: ethereum [`0x1104b4...48dc8a`](./contracts/ethereum-1/0x1104b4df568fa7af90b1bed1d78a2f71e748dc8a/); ethereum `0xb7892e...5e92dc`; ethereum `0xbbd909...26d49d`; ethereum `0xddf819...9f3f8b` | ⚠️ Unaudited |
| CLeverAMOHarvesterFacet | operational_periphery | ethereum | [`0xd912d9...0abed2`](./contracts/ethereum-1/0xd912d922e7e6d11d5caae204f7907f38e70abed2/) | ⚠️ Unaudited |
| ConcentratorAladdinETHVault | core_logic | ethereum | 3 deployments: ethereum [`0x06dfaf...94df74`](./contracts/ethereum-1/0x06dfaf0e53ce24d43eac332bbdc07b690894df74/); ethereum `0x50b47c...29346d`; ethereum `0x7d6c00...9da998` | ⚠️ Unaudited |
| ConcentratorHarvesterFacet | operational_periphery | ethereum | 2 deployments: ethereum [`0x1b544b...63cd98`](./contracts/ethereum-1/0x1b544befd7a51d5cdb40f79eef5205f16a63cd98/); ethereum `0xfa86aa...6ec515` | ⚠️ Unaudited |
| ConcentratorIFOVault | core_logic | ethereum | 7 deployments: ethereum [`0x3cf54f...4450b5`](./contracts/ethereum-1/0x3cf54f3a1969be9916dad548f3c084331c4450b5/); ethereum `0x4657e9...c84283`; ethereum `0x4d90ba...061e65`; ethereum `0x95fa41...64e194`; ethereum `0x99373a...c07b40`; ethereum `0xcb9c51...7e57a7`; ethereum `0xe6fbe0...2b5844` | ⚠️ Unaudited |
| ConcentratorStakeDAOLocker | unknown | ethereum | [`0x1c0d72...eead09`](./contracts/ethereum-1/0x1c0d72a330f2768daf718def8a19bab019eead09/) | ⚠️ Unaudited |
| ConcentratorStrategyFactory | registry | ethereum | [`0x23384d...c099bb`](./contracts/ethereum-1/0x23384dd4380b3677b829c6c88c0ea9cc41c099bb/) | ⚠️ Unaudited |
| ConcentratorVaultForAsdCRV | core_logic | ethereum | 2 deployments: ethereum [`0x0a6e11...aa0b97`](./contracts/ethereum-1/0x0a6e1167c9b8599ee1deccb331aac176e2aa0b97/); ethereum `0x59866e...ada3de` | ⚠️ Unaudited |
| ConverterRegistry | registry | ethereum | [`0xa61720...3dfb2b`](./contracts/ethereum-1/0xa617206663343b6353acf27566586ee9b53dfb2b/) | ⚠️ Unaudited |
| Curve DAO Token | token | ethereum | [`0x4eeca6...0fa8c6`](./contracts/ethereum-1/0x4eeca6bfa3c96210260691639827eef4d80fa8c6/) | ⚠️ Unaudited |
| CvxCrvStakingWrapperStrategy | core_logic | ethereum | [`0x94cc62...75f345`](./contracts/ethereum-1/0x94cc627db80253056b2130aac39abb252a75f345/) | ⚠️ Unaudited |
| CvxCrvWeightAdjuster | unknown | ethereum | [`0x7ed96e...bf360b`](./contracts/ethereum-1/0x7ed96ebcdad7ee5d98d6f7624dd18c54b8bf360b/) | ⚠️ Unaudited |
| CvxFxsStakingStrategy | core_logic | ethereum | [`0x369256...9b1cbf`](./contracts/ethereum-1/0x36925622dc537c65cd6433703f7aeda5929b1cbf/) | ⚠️ Unaudited |
| DiamondCutFacet | unknown | ethereum | [`0x9a3c5e...ee3c98`](./contracts/ethereum-1/0x9a3c5ec5de774e30074e623e2bf35395beee3c98/) | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | ethereum | [`0x190c58...0ed85b`](./contracts/ethereum-1/0x190c58357b8dab707fdce1f646ee147f5c0ed85b/) | ⚠️ Unaudited |
| Gauge Controller | operational_periphery | ethereum | 2 deployments: ethereum [`0xdbb1aa...0c8acc`](./contracts/ethereum-1/0xdbb1aaeb04f3b5e2587e4bb849717e9ebd0c8acc/); ethereum `0xe6aaf8...a9d217` | ⚠️ Unaudited |
| GaugeRewardDistributor | operational_periphery | ethereum | [`0xf57b53...cb87b0`](./contracts/ethereum-1/0xf57b53df7326e2c6bcfa81b4a128a92e69cb87b0/) | ⚠️ Unaudited |
| GeneralTokenConverter | token | ethereum | [`0xaf345c...3f3b95`](./contracts/ethereum-1/0xaf345c813ce17cc5837bfd14a910d365223f3b95/) | ⚠️ Unaudited |
| Market | unknown | ethereum | 2 deployments: ethereum [`0x505002...e90bd5`](./contracts/ethereum-1/0x505002bbadac4ebc17666b1622cff0605fe90bd5/); ethereum `0xe7b9c7...5108db` | ⚠️ Unaudited |
| MetaCLever | governance | ethereum | 7 deployments: ethereum [`0x057810...ca4eb1`](./contracts/ethereum-1/0x057810cf20efd30745b368ec42f0b39879ca4eb1/); ethereum `0x2c37f1...86157e`; ethereum `0x41c94e...b11db2`; ethereum `0xad4cac...c730e0`; ethereum `0xb2fcee...673cc1`; ethereum `0xeb0ea9...4f53b1`; ethereum `0xf5d1ca...75c8ca` | ⚠️ Unaudited |
| MultipleVestHelper | operational_periphery | ethereum | 2 deployments: ethereum [`0x572dec...d11983`](./contracts/ethereum-1/0x572deca882f4c9abcbdc6f020601a1b789d11983/); ethereum `0xd479c1...ef3195` | ⚠️ Unaudited |
| OwnershipFacet | unknown | ethereum | [`0x359eb1...6f230f`](./contracts/ethereum-1/0x359eb1d2f45dbe9e74c8c8f51fde70fbf76f230f/) | ⚠️ Unaudited |
| PlatformFeeBurner | unknown | ethereum | [`0x695eb5...411403`](./contracts/ethereum-1/0x695eb50a92ad2aebb89c6dd1f3c7546a28411403/) | ⚠️ Unaudited |
| PlatformFeeDistributor | operational_periphery | ethereum | 2 deployments: ethereum [`0xd27917...76e973`](./contracts/ethereum-1/0xd2791781c367b2f512396105c8ab26479876e973/); ethereum `0xd6efa5...2a35be` | ⚠️ Unaudited |
| PlatformFeeSpliter | unknown | ethereum | [`0x323668...2380c8`](./contracts/ethereum-1/0x32366846354db5c08e92b4ab0d2a510b2a2380c8/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 3 deployments: ethereum [`0x12b132...7762a0`](./contracts/ethereum-1/0x12b1326459d72f2ab081116bf27ca46cd97762a0/); ethereum `0x1f5728...dc87ee`; ethereum `0x9b54b7...2edda4` | ⚠️ Unaudited |
| RefundLogic | unknown | ethereum | [`0x243347...ed53fd`](./contracts/ethereum-1/0x2433477a10fc5d31b9513c638f19ee85caed53fd/) | ⚠️ Unaudited |
| RewardClaimHelper | periphery | ethereum | [`0xaf59d1...657a7f`](./contracts/ethereum-1/0xaf59d144357dcc8a852ad601f27bf6310b657a7f/) | ⚠️ Unaudited |
| SdCRVBribeBurner | operational_periphery | ethereum | 2 deployments: ethereum [`0x9d6dc3...1573f9`](./contracts/ethereum-1/0x9d6dc3dbc7cc5e1d7241601473fd63d2bd1573f9/); ethereum `0xf98af6...e231a3` | ⚠️ Unaudited |
| SdCrvCompounder | adapter | ethereum | [`0x43e54c...7b9922`](./contracts/ethereum-1/0x43e54c2e7b3e294de3a155785f52ab49d87b9922/) | ⚠️ Unaudited |
| SignatureVerifier | periphery | ethereum | [`0x895867...c43382`](./contracts/ethereum-1/0x8958677ca44da460d487335c09c045fbd0c43382/) | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | ethereum | 2 deployments: ethereum [`0x3557bd...f63318`](./contracts/ethereum-1/0x3557bd058d674dd0981a3ff10515432159f63318/); ethereum `0xfc7ea9...c35267` | ⚠️ Unaudited |
| StakeDaoHarvesterFacet | operational_periphery | ethereum | [`0xc56b67...18249c`](./contracts/ethereum-1/0xc56b67f58ecf4c9906548cb28d13ba6b8f18249c/) | ⚠️ Unaudited |
| StakeDAOLockerProxy | token | ethereum | 4 deployments: ethereum [`0x0303e5...2e4768`](./contracts/ethereum-1/0x0303e55b9b43fc5a0876bb8e41ca9efdd82e4768/); ethereum `0x98626a...188e2d`; ethereum `0xbccb5b...5832cf`; ethereum `0xcb968e...c36075` | ⚠️ Unaudited |
| stETHGateway | unknown | ethereum | [`0x4c5c52...6e7c21`](./contracts/ethereum-1/0x4c5c52d507066780500e627d592dbe11476e7c21/) | ⚠️ Unaudited |
| stETHTreasury | operational_periphery | ethereum | 3 deployments: ethereum [`0x0e5caa...3afbb0`](./contracts/ethereum-1/0x0e5caa5c889bdf053c9a76395f62267e653afbb0/); ethereum `0x7d07fa...dfed72`; ethereum `0xce938c...28bd74` | ⚠️ Unaudited |
| Token Minter | operational_periphery | ethereum | 2 deployments: ethereum [`0x7185e3...6591d3`](./contracts/ethereum-1/0x7185e3477ad54a8186e623768833e8c2686591d3/); ethereum `0xeba9a8...a78054` | ⚠️ Unaudited |
| TokenZapLogic | adapter | ethereum | 5 deployments: ethereum [`0x21cea3...33cac5`](./contracts/ethereum-1/0x21cea3a3cd10ae1feb0759750970b7e86d33cac5/); ethereum `0x6258b0...96c425`; ethereum `0x858d62...c5346f`; ethereum `0xd06986...8292b1`; ethereum `0xebdb53...1a718e` | ⚠️ Unaudited |
| VeFeeGateway | unknown | ethereum | [`0x8fc790...6421e9`](./contracts/ethereum-1/0x8fc7906fc6047679dad53c0c3b40e135486421e9/) | ⚠️ Unaudited |
| VeSDTDelegation | unknown | ethereum | 2 deployments: ethereum [`0x6037bb...e3ff64`](./contracts/ethereum-1/0x6037bb1bba598bf88d816cad90a28cc00fe3ff64/); ethereum `0xa5d31b...ae0f12` | ⚠️ Unaudited |
| VoteProxy | unknown | ethereum | [`0x64acb0...4e732f`](./contracts/ethereum-1/0x64acb0882c8b174c84dbd492ed307ef0ed4e732f/) | ⚠️ Unaudited |
| Voting Escrow | operational_periphery | ethereum | [`0x3d8fac...6262c0`](./contracts/ethereum-1/0x3d8facb2b65b8ceb682ade00e016c672ee6262c0/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | 25 deployments: ethereum [`0x3abf0b...bc2b0d`](./contracts/ethereum-1/0x3abf0be21e5020007b6e2e201e292a7119bc2b0d/); ethereum `0x4a4494...e37152`; ethereum `0x4aa2af...18566a`; ethereum `0x55055b...907985`; ethereum `0x617408...52295a`; ethereum `0x6c280d...5d3620`; ethereum `0x72953a...581bbf`; ethereum `0x86e917...cf114f`; ethereum `0x9098e2...6e58ad`; ethereum `0x927ddc...eb6c0d`; ethereum `0x94be07...2e051e`; ethereum `0x9b0254...7a2fe8`; ethereum `0xa47a8a...a75c5b`; ethereum `0xa5d935...a4458c`; ethereum `0xb3ad64...6890b8`; ethereum `0xb926f1...96fdcb`; ethereum `0xb992e8...af5b63`; ethereum `0xb9cd99...08fbdd`; ethereum `0xc4763c...eb96b4`; ethereum `0xc50222...67f2f0`; ethereum `0xe4c099...4b4968`; ethereum `0xe73b8a...2a79b3`; ethereum `0xea9914...97fc0b`; ethereum `0xf758be...50f979`; ethereum `0xf9078f...d1a5a6` | ⚠️ Unaudited |
| wstETHWrapper | unknown | ethereum | [`0xb09e34...75b658`](./contracts/ethereum-1/0xb09e34dd25d5e88a1e9ff6f6418109927675b658/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x188bd8...a802de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1af163...2c9fa5` | ❓ Unverified |
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
| [SECBIT_CLever_Report_v1.1.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_CLever_Report_v1.1.pdf) | unknown | Audit | 2022-04 | stale | Direct | contract_name | 13 | high |
| [Furnace](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_CLever_Furnace_Update_20221111.pdf) | SECBIT | Audit | 2022-11 | stale | Direct | contract_name | 7 | high |
| [clevUSD](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf) | SECBIT | Audit | 2022-09 | stale | Direct | contract_name | 14 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2a906e...745748`](./contracts/ethereum-1/0x2a906eab9b088e6753670bc8d3840f9473745748/) | FractionalToken | token | $952,811.44 | Verified native implementation with $952,811.44 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92d0cb...75fe83`](./contracts/ethereum-1/0x92d0cb7e56806bf977e7f5296ea2fe84b475fe83/) | LeveragedToken | token | $627,420.53 | Verified native implementation with $627,420.53 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3415fc...6473c7`](./contracts/ethereum-1/0x3415fcd2885c486e2d848403d51077f7176473c7/) | RebalancePool | core_logic | $9,653.26 | Verified native implementation with $9,653.26 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x078672...8c75e7`](./contracts/ethereum-1/0x07867298d99b95772008583bd603cfa68b8c75e7/) | TokenSale | token | $2.05 | Verified native implementation with $2.05 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x160d6e...9cb78f`](./contracts/ethereum-1/0x160d6e417be17e21712f004b87872a30799cb78f/) | AladdinCRV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5eb30c...852082`](./contracts/ethereum-1/0x5eb30ce188b0abb89a942ced6cbe114f4d852082/) | AladdinCRVZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f6ce8...b8f9be`](./contracts/ethereum-1/0x7f6ce8b08bca036c60f71693cd9425614ab8f9be/) | AladdinETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x165a7a...be6edc`](./contracts/ethereum-1/0x165a7a410c14054cd39d03b4b7cb392f61be6edc/) | AladdinFXS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9cc44...f99258`](./contracts/ethereum-1/0xd9cc44c567b1effddde8461acd6c67028af99258/) | AladdinFXSV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x304047...d869b4`](./contracts/ethereum-1/0x304047f1d867a00082c8549e81a2f0b389d869b4/) | AladdinPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x922837...e3b9d7`](./contracts/ethereum-1/0x922837838aed2937742cff7b0adfd74157e3b9d7/) | AladdinSdCRV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd912d9...0abed2`](./contracts/ethereum-1/0xd912d922e7e6d11d5caae204f7907f38e70abed2/) | CLeverAMOHarvesterFacet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06dfaf...94df74`](./contracts/ethereum-1/0x06dfaf0e53ce24d43eac332bbdc07b690894df74/) | ConcentratorAladdinETHVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b544b...63cd98`](./contracts/ethereum-1/0x1b544befd7a51d5cdb40f79eef5205f16a63cd98/) | ConcentratorHarvesterFacet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23384d...c099bb`](./contracts/ethereum-1/0x23384dd4380b3677b829c6c88c0ea9cc41c099bb/) | ConcentratorStrategyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a6e11...aa0b97`](./contracts/ethereum-1/0x0a6e1167c9b8599ee1deccb331aac176e2aa0b97/) | ConcentratorVaultForAsdCRV | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x94cc62...75f345`](./contracts/ethereum-1/0x94cc627db80253056b2130aac39abb252a75f345/) | CvxCrvStakingWrapperStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ed96e...bf360b`](./contracts/ethereum-1/0x7ed96ebcdad7ee5d98d6f7624dd18c54b8bf360b/) | CvxCrvWeightAdjuster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x369256...9b1cbf`](./contracts/ethereum-1/0x36925622dc537c65cd6433703f7aeda5929b1cbf/) | CvxFxsStakingStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x190c58...0ed85b`](./contracts/ethereum-1/0x190c58357b8dab707fdce1f646ee147f5c0ed85b/) | DiamondLoupeFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf57b53...cb87b0`](./contracts/ethereum-1/0xf57b53df7326e2c6bcfa81b4a128a92e69cb87b0/) | GaugeRewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x505002...e90bd5`](./contracts/ethereum-1/0x505002bbadac4ebc17666b1622cff0605fe90bd5/) | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x057810...ca4eb1`](./contracts/ethereum-1/0x057810cf20efd30745b368ec42f0b39879ca4eb1/) | MetaCLever | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x572dec...d11983`](./contracts/ethereum-1/0x572deca882f4c9abcbdc6f020601a1b789d11983/) | MultipleVestHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x359eb1...6f230f`](./contracts/ethereum-1/0x359eb1d2f45dbe9e74c8c8f51fde70fbf76f230f/) | OwnershipFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x695eb5...411403`](./contracts/ethereum-1/0x695eb50a92ad2aebb89c6dd1f3c7546a28411403/) | PlatformFeeBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd27917...76e973`](./contracts/ethereum-1/0xd2791781c367b2f512396105c8ab26479876e973/) | PlatformFeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x323668...2380c8`](./contracts/ethereum-1/0x32366846354db5c08e92b4ab0d2a510b2a2380c8/) | PlatformFeeSpliter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x243347...ed53fd`](./contracts/ethereum-1/0x2433477a10fc5d31b9513c638f19ee85caed53fd/) | RefundLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf59d1...657a7f`](./contracts/ethereum-1/0xaf59d144357dcc8a852ad601f27bf6310b657a7f/) | RewardClaimHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d6dc3...1573f9`](./contracts/ethereum-1/0x9d6dc3dbc7cc5e1d7241601473fd63d2bd1573f9/) | SdCRVBribeBurner | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x895867...c43382`](./contracts/ethereum-1/0x8958677ca44da460d487335c09c045fbd0c43382/) | SignatureVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3557bd...f63318`](./contracts/ethereum-1/0x3557bd058d674dd0981a3ff10515432159f63318/) | SmartWalletWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c5c52...6e7c21`](./contracts/ethereum-1/0x4c5c52d507066780500e627d592dbe11476e7c21/) | stETHGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21cea3...33cac5`](./contracts/ethereum-1/0x21cea3a3cd10ae1feb0759750970b7e86d33cac5/) | TokenZapLogic | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fc790...6421e9`](./contracts/ethereum-1/0x8fc7906fc6047679dad53c0c3b40e135486421e9/) | VeFeeGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x64acb0...4e732f`](./contracts/ethereum-1/0x64acb0882c8b174c84dbd492ed307ef0ed4e732f/) | VoteProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d8fac...6262c0`](./contracts/ethereum-1/0x3d8facb2b65b8ceb682ade00e016c672ee6262c0/) | Voting Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3abf0b...bc2b0d`](./contracts/ethereum-1/0x3abf0be21e5020007b6e2e201e292a7119bc2b0d/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb09e34...75b658`](./contracts/ethereum-1/0xb09e34dd25d5e88a1e9ff6f6418109927675b658/) | wstETHWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 50 |
| upstream | 1 |
| standard_library | 15 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=34

Fork inheritance lineage and inherited audits are included when available.
