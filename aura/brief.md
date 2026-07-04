# Agentic Audit Brief: Aura

⚠️ Lifecycle status: DEAD - TVL dropped 92.0% over 90 days

## Project Overview

- Project: Aura (`aura`)
- Website: [https://aura.finance](https://aura.finance)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-04T14:53:04.301Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: arbitrum, avalanche, base, ethereum, fraxtal, gnosis, optimism, polygon, polygon-zkevm
- Contract surface: 256 unique implementations (676 raw deployments)
- DeFi Llama TVL: $7,953,397.27
- On-chain TVL (included contracts): $74,688,480.97
- TVL by chain: Ethereum $74,682,483.95 | Optimism $3,942.34 | Arbitrum $2,054.68 | Base $0.00 | Gnosis $0.00

## Project Description

Yield. Structurally: 725 project-authored contract(s) across 8 chain(s); 5 ERC4626 vaults, 65 ERC20 tokens, 3 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 77 common project-authored base contract(s) (nonblockinglzapp, lzapp, crosschainconfig). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 994; live-surface contracts included: 676 (444 live, 232 unknown).
- Excluded by liveness: 318 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 36/115 (31.3%)
- Deployed-live implementations: 126 of 256 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 36/126
- Verified + Unaudited implementations: 88
- Verified by bytecode match: 8
- Unverified implementations: 130
- Unique implementations: 256
- Raw deployments: 676
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 17
- ASD (verified + unaudited TVL): $48,088,229.49
- Latest audit: 2023-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 14 stale, 6 unknown
- Coverage code basis (deployed vs audited code): 25 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 11 match-unverified
- Tier 1 coverage: 20.9% (Code4rena)
- Note: This protocol is classified as [dead]. ASD of $48,088,229.49 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 24 | 19.0% | 2022-07 |
| Halborn | Tier 2 | 21 | 16.7% | 2023-12 |
| Zellic | Tier 2 | 12 | 9.5% | 2023-06 |
| Hephyrius | Tier 2 | 11 | 8.7% | n/a |
| PeckShield | Tier 2 | 7 | 5.6% | 2022-04 |
| Facu Spagnuolo | Tier 2 | 3 | 2.4% | 2023-03 |
| FacuSpagnuolo | Tier 2 | 2 | 1.6% | 2023-12 |
| unknown | Tier 2 | 2 | 1.6% | 2022-12 |

## Contract Surface

### ✅ Verified + Audited (30)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BaseRewardPool | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x00a7ba...c6cad2`](./contracts/ethereum-1/0x00a7ba8ae7bca0b10a32ea1f8e2a1da980c6cad2/); ethereum `0x3fe656...a7587e`; ethereum `0x5e5ea2...96efcc`; ethereum `0xe765d4...7ab806` | ✅ Audited |
| AuraBalVault | core_logic | polygon | n/a | 4 deployments: ethereum `0xfaa2ed...fcd7a6`; polygon [`0x4ea931...bbb0e9`](./contracts/polygon-137/0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9/); base [`0x4ea931...bbb0e9`](./contracts/base-8453/0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9/); arbitrum [`0x4ea931...bbb0e9`](./contracts/arbitrum-42161/0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9/) | ✅ Audited |
| Booster | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x7818a1...8eee10`](./contracts/ethereum-1/0x7818a1da7bd1e64c199029e86ba244a9798eee10/); ethereum `0xa57b8d...60b234`; ethereum `0xb314f7...bfe7fd`; ethereum `0xd8bd5c...f28659`; ethereum `0xf403c1...8aae31` | ✅ Audited |
| AuraBalRewardPool | core_logic | ethereum | n/a | [`0xc47162...651c0c`](./contracts/ethereum-1/0xc47162863a12227e5c3b0860715f9cf721651c0c/) | ✅ Audited |
| AuraBalOFT | unknown | polygon | n/a | 3 deployments: polygon [`0x223738...c754ce`](./contracts/polygon-137/0x223738a747383d6f9f827d95964e4d8e8ac754ce/); base [`0x223738...c754ce`](./contracts/base-8453/0x223738a747383d6f9f827d95964e4d8e8ac754ce/); arbitrum [`0x223738...c754ce`](./contracts/arbitrum-42161/0x223738a747383d6f9f827d95964e4d8e8ac754ce/) | ✅ Audited |
| AuraBalProxyOFT | unknown | ethereum | n/a | [`0xdf9080...3a7c68`](./contracts/ethereum-1/0xdf9080b6bfe4630a97a0655c0016e0e9b43a7c68/) | ✅ Audited |
| AuraClaimZap | adapter | ethereum | n/a | [`0x623b83...917ab2`](./contracts/ethereum-1/0x623b83755a39b12161a63748f3f595a530917ab2/) | ✅ Audited |
| AuraLocker | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3fa73f...9bbcac`](./contracts/ethereum-1/0x3fa73f1e5d8a792c80f426fc8f84fbf7ce9bbcac/); base `0x9e1f41...80922e` | ✅ Audited |
| AuraMerkleDrop | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x1a661c...80a8fb`](./contracts/ethereum-1/0x1a661cf8d8cd69dd2a423f3626a461a24280a8fb/); ethereum `0x45eb1a...287724` | ✅ Audited |
| AuraMinter | unknown | ethereum | n/a | [`0x59a5cc...e13707`](./contracts/ethereum-1/0x59a5ccd34943cd0adcf5ce703ee9f06889e13707/) | ✅ Audited |
| AuraPenaltyForwarder | unknown | ethereum | n/a | [`0x404356...c20d1e`](./contracts/ethereum-1/0x4043569200f7a7a1d989abbabc2de2bde1c20d1e/) | ✅ Audited |
| AuraProxyOFT | unknown | ethereum | n/a | [`0xb401f0...c1ffff`](./contracts/ethereum-1/0xb401f0cff9f05d10699c0e2c88a81dd923c1ffff/) | ✅ Audited |
| AuraStakingProxy | proxy | ethereum | n/a | [`0xd9e863...f89c6c`](./contracts/ethereum-1/0xd9e863b7317a66fe0a4d2834910f604fd6f89c6c/) | ✅ Audited |
| AuraVestedEscrow | operational_periphery | ethereum | n/a | 7 deployments: ethereum [`0x243466...53fac6`](./contracts/ethereum-1/0x24346652e0e2ae0ce05c781501fdf4fe4553fac6/); ethereum `0x43b170...6694fa`; ethereum `0x45025e...1538f5`; ethereum `0x5bd3fc...2d836a`; ethereum `0xa6bbf6...5eb358`; ethereum `0xefc9f1...66ac3f`; ethereum `0xfd7217...30d422` | ✅ Audited |
| BoosterOwnerLite | core_logic | fraxtal | n/a | 6 deployments: optimism `0xf044ee...81d96f`; gnosis `0xa9802d...25d985`; polygon `0x8b9da5...1b5eee`; fraxtal [`0x04798c...98703c`](./contracts/fraxtal-252/0x04798c9b4546d90a97f687188d346d170298703c/); base `0x0f0dda...b755fc`; arbitrum `0x3af95b...1a1b66` | ✅ Audited |
| ClaimFeesHelper | periphery | ethereum | n/a | [`0xaf824c...41c200`](./contracts/ethereum-1/0xaf824c80aa77ae7f379da3dc05fea0dc1941c200/) | ✅ Audited |
| CrvDepositor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x801459...dc86ae`](./contracts/ethereum-1/0x8014595f2ab54cd7c604b00e9fb932176fdc86ae/); ethereum `0xead792...d1b827` | ✅ Audited |
| CrvDepositorWrapper | unknown | ethereum | n/a | [`0x68655a...5d4123`](./contracts/ethereum-1/0x68655ad9852a99c87c0934c7290bb62cfa5d4123/) | ✅ Audited |
| ExtraRewardsDistributor | operational_periphery | ethereum | n/a | [`0xa3739b...fbd308`](./contracts/ethereum-1/0xa3739b206097317c72ef416f0e75bb8f58fbd308/) | ✅ Audited |
| ExtraRewardStashV3 | unknown | ethereum | n/a | 4 deployments: ethereum [`0x37c3eb...915f98`](./contracts/ethereum-1/0x37c3ebfd4b0cf66df19a413e92dd21e556915f98/); ethereum `0x647596...59b7ef`; ethereum `0xf9c0f3...175742`; fraxtal `0x7a7b39...5a73d1` | ✅ Audited |
| GnosisBridgeSender | operational_periphery | gnosis | n/a | [`0x908c9d...3052bc`](./contracts/gnosis-100/0x908c9d41183ade493effc12bb9ad11a9333052bc/) | ✅ Audited |
| PoolManagerSecondaryProxy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x153dfc...cfc72a`](./contracts/ethereum-1/0x153dfc50f7a93c4f3d049c105dde9786d3cfc72a/); ethereum `0xa72932...e2de54`; ethereum `0xdc274f...34cf67` | ✅ Audited |
| PoolManagerV3 | unknown | ethereum | n/a | 3 deployments: ethereum [`0xaa83d1...3102ed`](./contracts/ethereum-1/0xaa83d1682a7f489eeec5fb5c8175856c993102ed/); ethereum `0xb58eb1...562be5`; ethereum `0xf843f6...28de50` | ✅ Audited |
| PoolManagerV4 | core_logic | ethereum | n/a | [`0x6d3a38...b423de`](./contracts/ethereum-1/0x6d3a388e310aaa498430d1fe541d6d64ddb423de/) | ✅ Audited |
| RewardFactory | registry | gnosis | n/a | 9 deployments: ethereum `0x45aad1...74f356`; ethereum `0xbc8d9c...332dca`; ethereum `0xf6b287...f5a37d`; optimism `0x2f4cdf...38d4f7`; gnosis [`0x0f641b...0bacae`](./contracts/gnosis-100/0x0f641b291ba374ec9b17a878c54b98005a0bacae/); polygon `0xb292be...6e0144`; fraxtal `0xc24fa5...97b7ac`; base `0x334df2...22f6b0`; arbitrum `0xda2e6b...16e7db` | ✅ Audited |
| RewardPoolDepositWrapper | core_logic | gnosis | n/a | 6 deployments: ethereum `0xb188b1...9fec59`; optimism `0x51b6e0...749fe1`; gnosis [`0x0fec3d...0b7f76`](./contracts/gnosis-100/0x0fec3d212bcc29ef3e505b555d7a7343df0b7f76/); polygon `0xce66e8...e41146`; base `0xa9952c...58008e`; arbitrum `0x6b02fe...6916be` | ✅ Audited |
| SimpleStrategy | core_logic | polygon | n/a | 3 deployments: polygon [`0x4b5d28...4f41cb`](./contracts/polygon-137/0x4b5d2848678db574fbc2d2f629143d969a4f41cb/); base [`0x4b5d28...4f41cb`](./contracts/base-8453/0x4b5d2848678db574fbc2d2f629143d969a4f41cb/); arbitrum [`0x4b5d28...4f41cb`](./contracts/arbitrum-42161/0x4b5d2848678db574fbc2d2f629143d969a4f41cb/) | ✅ Audited |
| StashFactoryV2 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x54da42...a3e915`](./contracts/ethereum-1/0x54da426efbb93fbab5cf81bef03f9b9f00a3e915/); ethereum `0x95171c...458eb5`; ethereum `0xafd890...a3a5a8` | ✅ Audited |
| VirtualBalanceRewardPool | core_logic | ethereum | n/a | [`0xac1692...fd0147`](./contracts/ethereum-1/0xac16927429c5c7af63dd75bc9d8a58c63ffd0147/) | ✅ Audited |
| VoterProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x42b047...e053ee`](./contracts/ethereum-1/0x42b047d1c751a871e61ec77bfde5fbbf2ce053ee/); ethereum `0xaf5269...0dbec2` | ✅ Audited |

### ⚠️ Verified + Unaudited (88)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| cvxCrvToken | token | ethereum | n/a | 2 deployments: ethereum [`0x616e8b...d4608d`](./contracts/ethereum-1/0x616e8bfa43f920657b3497dbf40d6b1a02d4608d/); ethereum `0x62b9c7...810aa7` | ⚠️ Unaudited |
| cvxRewardPool | core_logic | ethereum | n/a | [`0xcf50b8...139332`](./contracts/ethereum-1/0xcf50b810e57ac33b91dcf525c6ddd9881b139332/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0xba1222...6bf2c8`](./contracts/ethereum-1/0xba12222222228d8ba445958a75a0704d566bf2c8/); fraxtal `0xe42ffa...42e467` | ⚠️ Unaudited |
| cvxFpisToken | token | ethereum | n/a | [`0xa28473...427df6`](./contracts/ethereum-1/0xa2847348b58ced0ca58d23c7e9106a49f1427df6/) | ⚠️ Unaudited |
| AuraToken | token | ethereum | n/a | [`0xc0c293...903dbf`](./contracts/ethereum-1/0xc0c293ce456ff0ed870add98a0828dd4d2903dbf/) | ⚠️ Unaudited |
| cvxFxsToken | token | ethereum | n/a | [`0xfeef77...4bdf74`](./contracts/ethereum-1/0xfeef77d3f69374f66429c91d732a244f074bdf74/) | ⚠️ Unaudited |
| BalancerGovernanceToken | token | ethereum | n/a | [`0xba1000...424e3d`](./contracts/ethereum-1/0xba100000625a3754423978a60c9317c58a424e3d/) | ⚠️ Unaudited |
| ArbitratorVault | core_logic | ethereum | n/a | [`0x5d208c...bedc40`](./contracts/ethereum-1/0x5d208cd54f5132f2bd0c1f1e8d8c864bb6bedc40/) | ⚠️ Unaudited |
| ArbitrumBridgeSender | operational_periphery | arbitrum | n/a | [`0xde386a...8455bf`](./contracts/arbitrum-42161/0xde386aedec27521daf1f8a49c03ada7c158455bf/) | ⚠️ Unaudited |
| ArbitrumRootGaugeFactory | operational_periphery | ethereum | n/a | [`0x1c9932...5e50e7`](./contracts/ethereum-1/0x1c99324edc771c82a0dccb780cc7dda0045e50e7/) | ⚠️ Unaudited |
| AuraBalRedemption | unknown | ethereum | n/a | [`0x2aa497...0a1f9c`](./contracts/ethereum-1/0x2aa497d6c6cc0cce9a49ea70b0701092a10a1f9c/) | ⚠️ Unaudited |
| AuraClaimZapV3 | adapter | ethereum | n/a | [`0x5b2364...1ad7f4`](./contracts/ethereum-1/0x5b2364fd757e262253423373e4d57c5c011ad7f4/) | ⚠️ Unaudited |
| AuraDistributor | operational_periphery | ethereum | n/a | [`0x96d15d...dba9a4`](./contracts/ethereum-1/0x96d15d08538a17a03b0210fd1626d5f42bdba9a4/) | ⚠️ Unaudited |
| AuraLockerModule | unknown | ethereum | n/a | 3 deployments: ethereum [`0x568f3d...c0dd73`](./contracts/ethereum-1/0x568f3df1b63af874e0f981831d0c4a6186c0dd73/); ethereum `0xbcfd07...55009a`; ethereum `0xd539ed...6d8f1a` | ⚠️ Unaudited |
| AuraRedemption | unknown | ethereum | n/a | 3 deployments: ethereum [`0x559f5f...a926d6`](./contracts/ethereum-1/0x559f5fa62dfbc5f22a4f7d36bd001acb27a926d6/); ethereum `0x928966...a5120c`; ethereum `0xa1b742...4952a3` | ⚠️ Unaudited |
| AuraViewHelpersLite | periphery | fraxtal | n/a | 2 deployments: fraxtal [`0xbd2e14...4b029e`](./contracts/fraxtal-252/0xbd2e14d04777e551a8fe3822cac0df51984b029e/); base [`0xbd2e14...4b029e`](./contracts/base-8453/0xbd2e14d04777e551a8fe3822cac0df51984b029e/) | ⚠️ Unaudited |
| BatchRouter | adapter | optimism | n/a | 4 deployments: optimism [`0xad8905...f8a85e`](./contracts/optimism-10/0xad89051bed8d96f045e8912ae1672c6c0bf8a85e/); gnosis `0xe2fa4e...9e285b`; arbitrum [`0xad8905...f8a85e`](./contracts/arbitrum-42161/0xad89051bed8d96f045e8912ae1672c6c0bf8a85e/); avalanche `0xc9b360...d5988f` | ⚠️ Unaudited |
| BoosterHelper | core_logic | ethereum | n/a | [`0x26f470...f6763d`](./contracts/ethereum-1/0x26f470e4b777ea4cd09f550d3e904d707df6763d/) | ⚠️ Unaudited |
| BoosterOwner | unknown | ethereum | n/a | 3 deployments: ethereum [`0x228a14...989f04`](./contracts/ethereum-1/0x228a142081b456a9ff803d004504955032989f04/); ethereum `0xb927ed...3caced`; ethereum `0xfa838a...54ec34` | ⚠️ Unaudited |
| BufferRouter | adapter | avalanche | n/a | 3 deployments: gnosis `0x86e67e...e7bc2b`; arbitrum `0x311334...358615`; avalanche [`0x22625e...86b017`](./contracts/avalanche-43114/0x22625eedd92c81a219a83e1dc48f88d54786b017/) | ⚠️ Unaudited |
| Child Liquidity Gauge | operational_periphery | base | n/a | [`0x9f7e65...b37013`](./contracts/base-8453/0x9f7e65887413a8497b87ba2058ce6e4ef4b37013/) | ⚠️ Unaudited |
| ChildChainGaugeFactory | operational_periphery | polygon | n/a | 8 deployments: optimism `0xa523f4...4612dc`; gnosis `0x83e443...668cb8`; polygon [`0x22625e...86b017`](./contracts/polygon-137/0x22625eedd92c81a219a83e1dc48f88d54786b017/); fraxtal `0xc3ccac...a1bb68`; base `0x2498a2...29ba95`; base `0xb1a4fe...d9021f`; arbitrum `0x681714...ff4bc0`; avalanche `0xf23b4d...264843` | ⚠️ Unaudited |
| ChildStashRewardDistro | unknown | gnosis | n/a | 6 deployments: optimism `0x7372ec...bd2b66`; gnosis [`0x1bec8f...b482c0`](./contracts/gnosis-100/0x1bec8fd56166ba66afb6d449e61b717fc9b482c0/); gnosis `0xca85e2...627451`; polygon `0x7e702e...50f265`; base `0xeccd03...62c67c`; arbitrum `0xeeda9b...af9701` | ⚠️ Unaudited |
| ClaimSignatureRegistry | registry | polygon | n/a | 19 deployments: optimism `0x56c8d8...864aeb`; optimism `0xc86ef8...be6100`; optimism `0xea6920...b8a687`; gnosis `0x90e065...827f2a`; gnosis `0xa12da7...98ce35`; gnosis `0xd5584b...dcce68`; polygon [`0x201efd...2a86cc`](./contracts/polygon-137/0x201efd508c8dfe9de1a13c2452863a78cb2a86cc/); polygon `0x4cb42f...a4ac4d`; polygon `0x7c1b7a...c78275`; fraxtal `0x311334...358615`; fraxtal `0x8e3fea...47dd52`; fraxtal `0xad8905...f8a85e`; arbitrum `0x23f387...b98ce4`; arbitrum `0x2b432b...47f290`; arbitrum `0x78ad1e...2a5417`; avalanche `0x45fb5a...972373`; avalanche `0x90bd26...c93694`; avalanche `0xdaa273...9b16d2`; avalanche `0xfd2142...f3128f` | ⚠️ Unaudited |
| ClaimZap | adapter | ethereum | n/a | [`0x3f29cb...cf2516`](./contracts/ethereum-1/0x3f29cb4111cbda8081642da1f75b3c12decf2516/) | ⚠️ Unaudited |
| ComposableStablePoolFactory | registry | gnosis | n/a | [`0x76578e...cda3a6`](./contracts/gnosis-100/0x76578ecf9a141296ec657847fb45b0585bcda3a6/) | ⚠️ Unaudited |
| CompositeLiquidityRouter | adapter | avalanche | n/a | 5 deployments: optimism `0xc9b360...d5988f`; gnosis `0x6ead84...b93938`; arbitrum `0x1311fb...5cc4d1`; arbitrum `0xc1a645...3227f0`; avalanche [`0x0c8f71...5dbb98`](./contracts/avalanche-43114/0x0c8f71d19f87c0bd1b9bad2484ecc3388d5dbb98/) | ⚠️ Unaudited |
| ConstantPriceFeed | operational_periphery | arbitrum | n/a | 4 deployments: optimism `0x4eff2d...ff4cb5`; gnosis `0xa0de07...b7c883`; arbitrum [`0x312600...70d431`](./contracts/arbitrum-42161/0x312600bc7645e47a4926dc658827398af070d431/); avalanche `0xd22eec...85d484` | ⚠️ Unaudited |
| CowSwapFeeBurner | unknown | gnosis | n/a | 13 deployments: optimism `0xf4743d...7241d7`; gnosis [`0x0e800d...92b106`](./contracts/gnosis-100/0x0e800d8d2e8b4694610aedc385aa6d763492b106/); gnosis `0x254f3a...5f83b0`; gnosis `0x309abc...138657`; gnosis `0x397bc4...69a1c7`; gnosis `0xae563e...758ea2`; gnosis `0xd22eec...85d484`; gnosis `0xfc0053...3d9cad`; arbitrum `0x774cb6...17eb94`; arbitrum `0x891ec9...017e0d`; arbitrum `0xbc169a...c96b77`; arbitrum `0xf39ca6...ab9015`; avalanche `0x9179c0...0e7b45` | ⚠️ Unaudited |
| CvxCrvStakingWrapper | unknown | ethereum | n/a | [`0xaa0c3f...dbe434`](./contracts/ethereum-1/0xaa0c3f5f7dfd688c6e646f66cd2a6b66acdbe434/) | ⚠️ Unaudited |
| CvxDistribution | unknown | ethereum | n/a | [`0x449f2f...d1ddc6`](./contracts/ethereum-1/0x449f2fd99174e1785cf2a1c79e665fec3dd1ddc6/) | ⚠️ Unaudited |
| cvxFpisStaking | unknown | ethereum | n/a | [`0xfa87db...6bc483`](./contracts/ethereum-1/0xfa87db3eaa93b7293021e38416650d2e666bc483/) | ⚠️ Unaudited |
| cvxFxsStaking | unknown | ethereum | n/a | [`0x49b4d1...37e31a`](./contracts/ethereum-1/0x49b4d1df40442f0c31b1bbaea3ede7c38e37e31a/) | ⚠️ Unaudited |
| CvxLocker | unknown | ethereum | n/a | [`0xd18140...94af50`](./contracts/ethereum-1/0xd18140b4b819b895a3dba5442f959fa44994af50/) | ⚠️ Unaudited |
| CvxLockerV2 | unknown | ethereum | n/a | [`0x72a193...2db86e`](./contracts/ethereum-1/0x72a19342e8f1838460ebfccef09f6585e32db86e/) | ⚠️ Unaudited |
| EclpLPOracleFactory | operational_periphery | avalanche | n/a | 4 deployments: optimism `0xc00ff7...e5426d`; gnosis `0x9dcf4e...e1691d`; arbitrum `0xd9e91f...e6479e`; avalanche [`0x1780e8...d943ab`](./contracts/avalanche-43114/0x1780e8185199dac45284039bb3e3b64060d943ab/) | ⚠️ Unaudited |
| ERC4626CowSwapFeeBurner | unknown | avalanche | n/a | 8 deployments: optimism `0x201efd...2a86cc`; optimism `0x7c1b7a...c78275`; gnosis `0x5915de...e2f941`; gnosis `0x7d92fc...7fdafa`; arbitrum `0x1cd776...b1d608`; arbitrum `0xd53f5d...102d83`; avalanche [`0x0b1120...e63911`](./contracts/avalanche-43114/0x0b11209b8c5e821b18ded147583b8978c3e63911/); avalanche `0x5c6fb4...bd9fdd` | ⚠️ Unaudited |
| FeeBridge | operational_periphery | ethereum | n/a | [`0xd43024...1410e9`](./contracts/ethereum-1/0xd430246142084ec68f7ab090cbd9252a1d1410e9/) | ⚠️ Unaudited |
| FeeDepositV2 | unknown | ethereum | n/a | [`0x7a527d...a0d769`](./contracts/ethereum-1/0x7a527d8bb09f7d70c148ab5de919e9bf68a0d769/) | ⚠️ Unaudited |
| FixedPriceLBPoolFactory | operational_periphery | arbitrum | n/a | 2 deployments: gnosis `0xd9e91f...e6479e`; arbitrum [`0x7f246e...b26e0d`](./contracts/arbitrum-42161/0x7f246e7bab4cdc8c7ab41eada8290009a5b26e0d/) | ⚠️ Unaudited |
| GaugeVoterModule | operational_periphery | ethereum | n/a | [`0x2b5ac8...381621`](./contracts/ethereum-1/0x2b5ac82c5e934407514768ce3e399d9c18381621/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0xb370eb...93bf46`](./contracts/ethereum-1/0xb370ebd7ded0c87b4509ff6f13f07b7f1693bf46/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | gnosis | n/a | 2 deployments: gnosis [`0x57acb7...7ad478`](./contracts/gnosis-100/0x57acb721fcf3d900b480a90a55191cf8f37ad478/); gnosis `0xd86ceb...66d68b` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | n/a | 2 deployments: base [`0x57acb7...7ad478`](./contracts/base-8453/0x57acb721fcf3d900b480a90a55191cf8f37ad478/); base `0xd86ceb...66d68b` | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | registry | gnosis | n/a | 4 deployments: optimism `0x99364f...c52c58`; gnosis [`0x1c58cc...2dfaf9`](./contracts/gnosis-100/0x1c58cc548a23956469c7c528bb3a846c842dfaf9/); arbitrum `0x64b7df...0f5bcf`; avalanche `0x312600...70d431` | ⚠️ Unaudited |
| GyroECLPPoolFactory | registry | gnosis | n/a | 7 deployments: optimism `0x22625e...86b017`; optimism `0x53eff5...c479ef`; gnosis [`0x1c53af...f7fcc1`](./contracts/gnosis-100/0x1c53af9d683a4424d03f61d70d9f6bc53af7fcc1/); base `0x5f6848...f082e3`; arbitrum `0xe31715...928479`; avalanche `0x268e2e...d9af42`; avalanche `0x86a0e9...8fd12c` | ⚠️ Unaudited |
| Harvester | operational_periphery | ethereum | n/a | [`0x6d6bca...86e1e7`](./contracts/ethereum-1/0x6d6bcac2266468a44da9fa482ca54aaed586e1e7/) | ⚠️ Unaudited |
| InterestRateCalculatorV2 | operational_periphery | ethereum | n/a | [`0x1972b5...bc14f7`](./contracts/ethereum-1/0x1972b5d65a690de0bc36278ac93d47fd98bc14f7/) | ⚠️ Unaudited |
| L1PoolManagerProxy | core_logic | ethereum | n/a | [`0x54f2de...27a14d`](./contracts/ethereum-1/0x54f2dec216dffb9174edb0d53910bada5227a14d/) | ⚠️ Unaudited |
| LBPMigrationRouter | operational_periphery | arbitrum | n/a | 4 deployments: gnosis `0xcb3fe6...01c9e7`; gnosis `0xf9309a...9a2c33`; arbitrum [`0x99364f...c52c58`](./contracts/arbitrum-42161/0x99364f84d1c68d87aead0ce92eb47409a0c52c58/); arbitrum `0xfc2986...a95832` | ⚠️ Unaudited |
| LBPoolFactory | registry | gnosis | n/a | 8 deployments: gnosis [`0x2faa14...1e4e91`](./contracts/gnosis-100/0x2faa140f90f76eeeebc191f4ef4b2634be1e4e91/); gnosis `0x53eff5...c479ef`; gnosis `0x89aa28...00ae66`; gnosis `0xa59f16...0b908c`; gnosis `0xa9aeeb...ad1103`; gnosis `0xc19f5f...7a4820`; arbitrum `0x8d217c...1c4818`; arbitrum `0xf9309a...9a2c33` | ⚠️ Unaudited |
| LiquidityBootstrappingPoolFactory | unknown | ethereum | n/a | [`0x751a0b...1c87de`](./contracts/ethereum-1/0x751a0bc0e3f75b38e01cf25bfce7ff36de1c87de/) | ⚠️ Unaudited |
| LiquidityGaugeFactory | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x4e7bbd...5412ec`](./contracts/ethereum-1/0x4e7bbd911cf1efa442bc1b2e9ea01ffe785412ec/); ethereum `0xf1665e...cc5b65` | ⚠️ Unaudited |
| MerkleOrchard | operational_periphery | arbitrum | n/a | [`0x9805dc...764102`](./contracts/arbitrum-42161/0x9805dcfd25e6de36bad8fe9d3fe2c9b44b764102/) | ⚠️ Unaudited |
| NoProtocolFeeLiquidityBootstrappingPoolFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x0f3e0c...57c54e`](./contracts/ethereum-1/0x0f3e0c4218b7b0108a3643cfe9d3ec0d4f57c54e/); gnosis `0x85a80a...853062` | ⚠️ Unaudited |
| NullVotingEscrow | operational_periphery | polygon | n/a | [`0x311334...358615`](./contracts/polygon-137/0x311334883921fb1b813826e585df1c2be4358615/) | ⚠️ Unaudited |
| OptimismBridgeSender | operational_periphery | optimism | n/a | 2 deployments: optimism [`0x7e702e...50f265`](./contracts/optimism-10/0x7e702e51142eb7658ce4ce734c9bdec74250f265/); base `0xc83da6...782549` | ⚠️ Unaudited |
| PolygonBridgeSender | operational_periphery | polygon | n/a | [`0x25e7c5...f4f669`](./contracts/polygon-137/0x25e7c574c4016e09f608971f97c3b09a6cf4f669/) | ⚠️ Unaudited |
| PoolFeeManagerProxy | core_logic | ethereum | n/a | [`0xd0521c...8bd687`](./contracts/ethereum-1/0xd0521c061958324d06b8915ffdac3db22c8bd687/) | ⚠️ Unaudited |
| PoolManagerProxy | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x16a04e...94947a`](./contracts/ethereum-1/0x16a04e58a77ab1ce561a37371dfb479a8594947a/); ethereum `0x2c809e...110f3c`; ethereum `0xdc0a7f...0ee65c` | ⚠️ Unaudited |
| PoolPauseHelper | core_logic | optimism | n/a | 8 deployments: optimism [`0x136f1e...1778d1`](./contracts/optimism-10/0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1/); optimism `0x16b50f...7ae5db`; gnosis `0x64b7df...0f5bcf`; gnosis `0xdaa273...9b16d2`; arbitrum `0x1780e8...d943ab`; arbitrum `0x9d2917...e3f521`; avalanche `0x30ff09...308d7e`; avalanche `0x891ec9...017e0d` | ⚠️ Unaudited |
| PoolSwapFeeHelper | core_logic | gnosis | n/a | 14 deployments: optimism `0x1cd776...b1d608`; optimism `0x355bd3...53ad95`; optimism `0xbdbadc...7d6ff1`; gnosis [`0x03cbcc...dff36f`](./contracts/gnosis-100/0x03cbccbe8d2073a1dc186ae6bcd95390fcdff36f/); gnosis `0x2b432b...47f290`; gnosis `0x56c8d8...864aeb`; polygon `0x18cc3c...94f71b`; fraxtal `0xdb8d75...a1bd3a`; arbitrum `0x5939ab...841fab`; arbitrum `0xb96524...ba40e9`; arbitrum `0xdada7b...c92d49`; avalanche `0x9d2917...e3f521`; avalanche `0xb21a27...815c8a`; avalanche `0xb96524...ba40e9` | ⚠️ Unaudited |
| ProtocolFeeController | governance | base | n/a | 4 deployments: optimism `0xdb8d75...a1bd3a`; base [`0x2ff226...4e5363`](./contracts/base-8453/0x2ff226cd12c80511a641a6101f071d853a4e5363/); avalanche `0x3630d2...eeaf5b`; avalanche `0x9da189...7e017c` | ⚠️ Unaudited |
| ProtocolFeeControllerMigration | unknown | base | n/a | [`0x1b6f05...f17e59`](./contracts/base-8453/0x1b6f057520b4e826271d47b8bdab98e35af17e59/) | ⚠️ Unaudited |
| ProtocolFeeHelper | periphery | arbitrum | n/a | 8 deployments: optimism `0x774cb6...17eb94`; optimism `0xcc267d...3a7a4e`; gnosis `0x6eaff7...7872c3`; gnosis `0xcc267d...3a7a4e`; arbitrum [`0x30ff09...308d7e`](./contracts/arbitrum-42161/0x30ff095e22dda9751b5e1a67928611dcb6308d7e/); arbitrum `0xea6920...b8a687`; avalanche `0xa1d079...05322c`; avalanche `0xcf7608...29158c` | ⚠️ Unaudited |
| ProtocolFeeSweeper | unknown | gnosis | n/a | 3 deployments: gnosis [`0x1bca39...716b1c`](./contracts/gnosis-100/0x1bca39b01f451b0a05d7030e6e6981a73b716b1c/); arbitrum `0x3beb05...429ace`; avalanche `0x5b42ec...81c1e9` | ⚠️ Unaudited |
| RAuraRedemption | unknown | ethereum | n/a | [`0xc44d36...e88bc8`](./contracts/ethereum-1/0xc44d3604a332b71e2e6a87a714614a505ee88bc8/) | ⚠️ Unaudited |
| ReClammPoolFactory | registry | avalanche | n/a | 4 deployments: optimism `0x891ec9...017e0d`; gnosis `0xc86ef8...be6100`; arbitrum `0x355bd3...53ad95`; avalanche [`0x309abc...138657`](./contracts/avalanche-43114/0x309abcaefa19ca6d34f0d8ff4a4103317c138657/) | ⚠️ Unaudited |
| Router | adapter | arbitrum | n/a | 5 deployments: optimism `0xe2fa4e...9e285b`; gnosis `0x4eff2d...ff4cb5`; arbitrum [`0x0f08ee...347b7c`](./contracts/arbitrum-42161/0x0f08eef2c785aa5e7539684af04755dec1347b7c/); arbitrum `0xeaedc3...aacf2e`; avalanche `0xf39ca6...ab9015` | ⚠️ Unaudited |
| SidechainView | unknown | fraxtal | n/a | [`0x1ba3db...67ad0f`](./contracts/fraxtal-252/0x1ba3dbd572b1b7aa3445fa51492bfc644c67ad0f/) | ⚠️ Unaudited |
| StableLPOracleFactory | operational_periphery | avalanche | n/a | 12 deployments: optimism `0xa0de07...b7c883`; optimism `0xb96524...ba40e9`; optimism `0xc4c494...1cf468`; gnosis `0x4efcd8...0f3228`; gnosis `0xbf9419...29f12c`; gnosis `0xfa80c1...dccba5`; arbitrum `0x816e90...eeb308`; arbitrum `0xa59f16...0b908c`; arbitrum `0xc09244...48834b`; avalanche [`0x254f3a...5f83b0`](./contracts/avalanche-43114/0x254f3a2974b97dc2e675f6115c845567c55f83b0/); avalanche `0x4eff2d...ff4cb5`; avalanche `0x5939ab...841fab` | ⚠️ Unaudited |
| StablePoolFactory | registry | avalanche | n/a | 7 deployments: optimism `0x1780e8...d943ab`; optimism `0x268e2e...d9af42`; gnosis `0x9338f9...55962d`; base `0xc49ca9...97950c`; arbitrum `0x1fc7f1...fec08c`; avalanche [`0x16b50f...7ae5db`](./contracts/avalanche-43114/0x16b50f6bf8c8ca73c07e17762188c5deee7ae5db/); avalanche `0xeaedc3...aacf2e` | ⚠️ Unaudited |
| StableSurgeHook | unknown | arbitrum | n/a | 5 deployments: optimism `0xf39ca6...ab9015`; gnosis `0x90bd26...c93694`; arbitrum [`0x7c1b7a...c78275`](./contracts/arbitrum-42161/0x7c1b7a97bfacd39975de53e989a16c7bc4c78275/); avalanche `0x86705e...83d122`; avalanche `0xad8905...f8a85e` | ⚠️ Unaudited |
| StableSurgePoolFactory | registry | avalanche | n/a | 11 deployments: optimism `0x3beb05...429ace`; optimism `0xfd2142...f3128f`; gnosis `0x268e2e...d9af42`; gnosis `0x45fb5a...972373`; gnosis `0x59d55f...3255dd`; arbitrum `0x201efd...2a86cc`; arbitrum `0x86e67e...e7bc2b`; arbitrum `0x8a8b9f...a2ea88`; avalanche [`0x18cc3c...94f71b`](./contracts/avalanche-43114/0x18cc3c68a5e64b40c846aa6e45312cbcbb94f71b/); avalanche `0x311334...358615`; avalanche `0x8d217c...1c4818` | ⚠️ Unaudited |
| StashRewardDistro | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2db7d4...a15f9c`](./contracts/ethereum-1/0x2db7d4f89de7ac7fbb31422d51ec3a7c7aa15f9c/); ethereum `0x74d2e0...241298`; ethereum `0xd3a5b6...f998f1`; fraxtal `0xb82434...3e8bd3` | ⚠️ Unaudited |
| TreasuryLend | operational_periphery | ethereum | n/a | [`0x04dd97...bd207f`](./contracts/ethereum-1/0x04dd97255ddee29c941d85f5b5cde6ace8bd207f/) | ⚠️ Unaudited |
| TreasuryManager | operational_periphery | ethereum | n/a | [`0xeb8121...6de6b3`](./contracts/ethereum-1/0xeb8121b44a290ee16981d87b92fc16b2366de6b3/) | ⚠️ Unaudited |
| TreasurySwap | operational_periphery | ethereum | n/a | [`0xa25b17...e74316`](./contracts/ethereum-1/0xa25b17d7deee59f9e326e45cc3c0c1b158e74316/) | ⚠️ Unaudited |
| UnbalancedAddViaSwapRouter | adapter | optimism | n/a | 4 deployments: optimism [`0x03cbcc...dff36f`](./contracts/optimism-10/0x03cbccbe8d2073a1dc186ae6bcd95390fcdff36f/); gnosis `0xefb387...1a9575`; arbitrum `0xbf9419...29f12c`; avalanche `0x6623d1...6b6981` | ⚠️ Unaudited |
| Utilities | unknown | ethereum | n/a | [`0xf37c41...64b503`](./contracts/ethereum-1/0xf37c41ef2281893b5971769370d6cdd35864b503/) | ⚠️ Unaudited |
| VaultFactory | unknown | avalanche | n/a | [`0x9805dc...764102`](./contracts/avalanche-43114/0x9805dcfd25e6de36bad8fe9d3fe2c9b44b764102/) | ⚠️ Unaudited |
| VirtualRewardFactory | registry | polygon | n/a | 6 deployments: ethereum `0x5918f5...68bfcf`; ethereum `0x64e2df...62b2c3`; ethereum `0xdd8e70...a2f27b`; polygon [`0x05589c...9079c2`](./contracts/polygon-137/0x05589cbbe1cc0357986df6de4031b953819079c2/); base [`0x05589c...9079c2`](./contracts/base-8453/0x05589cbbe1cc0357986df6de4031b953819079c2/); arbitrum [`0x05589c...9079c2`](./contracts/arbitrum-42161/0x05589cbbe1cc0357986df6de4031b953819079c2/) | ⚠️ Unaudited |
| VotingEscrowDelegationProxy | unknown | polygon | n/a | 7 deployments: ethereum `0x6f5a2e...1eb8a0`; optimism `0x9da189...7e017c`; gnosis `0x7a2535...fe8f05`; polygon [`0x0f08ee...347b7c`](./contracts/polygon-137/0x0f08eef2c785aa5e7539684af04755dec1347b7c/); fraxtal `0xe38816...0be5f7`; base `0xd87f44...9f5acd`; arbitrum `0x81cfae...eeb310` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 13 deployments: ethereum [`0x575ccd...318e2c`](./contracts/ethereum-1/0x575ccd8e2d300e2377b43478339e364000318e2c/); ethereum `0x5f3b5d...94e2a2`; ethereum `0x64e3c2...ac041d`; ethereum `0x67f8df...6ecb0b`; ethereum `0x705350...55410f`; ethereum `0x7ca5b0...1d7575`; ethereum `0xa90996...857849`; ethereum `0xb1f2cd...202cac`; ethereum `0xbc89cd...ca8f53`; ethereum `0xc12846...3d3abd`; ethereum `0xc128a9...093f25`; ethereum `0xd061d6...c2fce0`; ethereum `0xd533a9...34cd52` | ⚠️ Unaudited |
| WeightedLPOracleFactory | operational_periphery | avalanche | n/a | 12 deployments: optimism `0x6ee18f...e3cb3f`; optimism `0x718e11...f4457f`; optimism `0xeb2bb0...9fe804`; gnosis `0x187a05...baa6ac`; gnosis `0x332694...f81d99`; gnosis `0x8a8b9f...a2ea88`; arbitrum `0x2faa14...1e4e91`; arbitrum `0x7f4c13...45d29b`; arbitrum `0xa9aeeb...ad1103`; avalanche [`0x0e800d...92b106`](./contracts/avalanche-43114/0x0e800d8d2e8b4694610aedc385aa6d763492b106/); avalanche `0x397bc4...69a1c7`; avalanche `0x995831...059157` | ⚠️ Unaudited |
| WeightedPool2Tokens | core_logic | ethereum | n/a | [`0x5c6ee3...db8f56`](./contracts/ethereum-1/0x5c6ee304399dbdb9c8ef030ab642b10820db8f56/) | ⚠️ Unaudited |
| WeightedPoolFactory | registry | optimism | n/a | 14 deployments: ethereum `0x5dd94d...01eb8b`; ethereum `0x8e9aa8...637de9`; ethereum `0xcc508a...b957bc`; optimism [`0x0f08ee...347b7c`](./contracts/optimism-10/0x0f08eef2c785aa5e7539684af04755dec1347b7c/); optimism `0x254f3a...5f83b0`; gnosis `0x78ad1e...2a5417`; gnosis `0xeb1eea...ae3863`; fraxtal `0x9da189...7e017c`; base `0x4c32a8...d6a1c4`; arbitrum `0x83bf39...f56129`; arbitrum `0xd961e3...15e970`; avalanche `0x7ba29f...3121cc`; avalanche `0xbdbadc...7d6ff1`; avalanche `0xd961e3...15e970` | ⚠️ Unaudited |
| WindDownCoordinator | unknown | ethereum | n/a | [`0x9d53f0...6150dc`](./contracts/ethereum-1/0x9d53f0d2ecebc84e9114259f6084d01fb46150dc/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (6)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BoosterLite | core_logic | optimism | n/a | 7 deployments: optimism [`0x98ef32...a30184`](./contracts/optimism-10/0x98ef32edd24e2c92525e59afc4475c1242a30184/); gnosis [`0x98ef32...a30184`](./contracts/gnosis-100/0x98ef32edd24e2c92525e59afc4475c1242a30184/); polygon [`0x98ef32...a30184`](./contracts/polygon-137/0x98ef32edd24e2c92525e59afc4475c1242a30184/); fraxtal [`0x98ef32...a30184`](./contracts/fraxtal-252/0x98ef32edd24e2c92525e59afc4475c1242a30184/); base [`0x98ef32...a30184`](./contracts/base-8453/0x98ef32edd24e2c92525e59afc4475c1242a30184/); arbitrum [`0x98ef32...a30184`](./contracts/arbitrum-42161/0x98ef32edd24e2c92525e59afc4475c1242a30184/); avalanche [`0x98ef32...a30184`](./contracts/avalanche-43114/0x98ef32edd24e2c92525e59afc4475c1242a30184/) | ✅ Audited (bytecode match) |
| AuraOFT | unknown | optimism | n/a | 7 deployments: optimism [`0x150970...be213b`](./contracts/optimism-10/0x1509706a6c66ca549ff0cb464de88231ddbe213b/); gnosis [`0x150970...be213b`](./contracts/gnosis-100/0x1509706a6c66ca549ff0cb464de88231ddbe213b/); polygon [`0x150970...be213b`](./contracts/polygon-137/0x1509706a6c66ca549ff0cb464de88231ddbe213b/); fraxtal [`0x150970...be213b`](./contracts/fraxtal-252/0x1509706a6c66ca549ff0cb464de88231ddbe213b/); base [`0x150970...be213b`](./contracts/base-8453/0x1509706a6c66ca549ff0cb464de88231ddbe213b/); arbitrum [`0x150970...be213b`](./contracts/arbitrum-42161/0x1509706a6c66ca549ff0cb464de88231ddbe213b/); avalanche [`0x150970...be213b`](./contracts/avalanche-43114/0x1509706a6c66ca549ff0cb464de88231ddbe213b/) | ✅ Audited (bytecode match) |
| PoolManagerLite | core_logic | optimism | n/a | 7 deployments: optimism [`0xf24074...a6ca71`](./contracts/optimism-10/0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71/); gnosis [`0xf24074...a6ca71`](./contracts/gnosis-100/0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71/); polygon [`0xf24074...a6ca71`](./contracts/polygon-137/0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71/); fraxtal [`0xf24074...a6ca71`](./contracts/fraxtal-252/0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71/); base [`0xf24074...a6ca71`](./contracts/base-8453/0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71/); arbitrum [`0xf24074...a6ca71`](./contracts/arbitrum-42161/0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71/); avalanche [`0xf24074...a6ca71`](./contracts/avalanche-43114/0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71/) | ✅ Audited (bytecode match) |
| ProxyFactory | registry | optimism | n/a | 7 deployments: optimism [`0x731886...25d961`](./contracts/optimism-10/0x731886426a3199b988194831031dfb993f25d961/); gnosis [`0x731886...25d961`](./contracts/gnosis-100/0x731886426a3199b988194831031dfb993f25d961/); polygon [`0x731886...25d961`](./contracts/polygon-137/0x731886426a3199b988194831031dfb993f25d961/); fraxtal [`0x731886...25d961`](./contracts/fraxtal-252/0x731886426a3199b988194831031dfb993f25d961/); base [`0x731886...25d961`](./contracts/base-8453/0x731886426a3199b988194831031dfb993f25d961/); arbitrum [`0x731886...25d961`](./contracts/arbitrum-42161/0x731886426a3199b988194831031dfb993f25d961/); avalanche [`0x731886...25d961`](./contracts/avalanche-43114/0x731886426a3199b988194831031dfb993f25d961/) | ✅ Audited (bytecode match) |
| TokenFactory | unknown | ethereum | n/a | 10 deployments: ethereum [`0x3ec040...45f5ba`](./contracts/ethereum-1/0x3ec040dbf7d953216f4c89a2e665d5073445f5ba/); ethereum `0x6537be...c2df78`; ethereum `0xb6ce51...b453ac`; optimism `0x872993...306fe9`; gnosis `0x872993...306fe9`; polygon `0x872993...306fe9`; fraxtal `0x872993...306fe9`; base `0x872993...306fe9`; arbitrum `0x872993...306fe9`; avalanche `0x872993...306fe9` | ✅ Audited (bytecode match) |
| VoterProxyLite | unknown | optimism | n/a | 7 deployments: optimism [`0xc181ed...00a2b0`](./contracts/optimism-10/0xc181edc719480bd089b94647c2dc504e2700a2b0/); gnosis [`0xc181ed...00a2b0`](./contracts/gnosis-100/0xc181edc719480bd089b94647c2dc504e2700a2b0/); polygon [`0xc181ed...00a2b0`](./contracts/polygon-137/0xc181edc719480bd089b94647c2dc504e2700a2b0/); fraxtal [`0xc181ed...00a2b0`](./contracts/fraxtal-252/0xc181edc719480bd089b94647c2dc504e2700a2b0/); base [`0xc181ed...00a2b0`](./contracts/base-8453/0xc181edc719480bd089b94647c2dc504e2700a2b0/); arbitrum [`0xc181ed...00a2b0`](./contracts/arbitrum-42161/0xc181edc719480bd089b94647c2dc504e2700a2b0/); avalanche [`0xc181ed...00a2b0`](./contracts/avalanche-43114/0xc181edc719480bd089b94647c2dc504e2700a2b0/) | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| KeeperMulticall3 | operational_periphery | optimism | n/a | 8 deployments: ethereum `0x817f42...330e15`; optimism [`0x37aa9a...3e31dd`](./contracts/optimism-10/0x37aa9ad9744d0686df1c7053225e700ce13e31dd/); gnosis [`0x37aa9a...3e31dd`](./contracts/gnosis-100/0x37aa9ad9744d0686df1c7053225e700ce13e31dd/); polygon [`0x37aa9a...3e31dd`](./contracts/polygon-137/0x37aa9ad9744d0686df1c7053225e700ce13e31dd/); base [`0x37aa9a...3e31dd`](./contracts/base-8453/0x37aa9ad9744d0686df1c7053225e700ce13e31dd/); base `0x5c97f0...90e798`; arbitrum `0x5c97f0...90e798`; avalanche [`0x37aa9a...3e31dd`](./contracts/avalanche-43114/0x37aa9ad9744d0686df1c7053225e700ce13e31dd/) | ⚠️ Unaudited (bytecode match) |
| SidechainClaimZap | adapter | gnosis | n/a | 7 deployments: optimism `0x617963...1fdd47`; gnosis [`0x4ea38a...5328e8`](./contracts/gnosis-100/0x4ea38a5739d467f7f84c06155ee2ad745e5328e8/); polygon `0x617963...1fdd47`; fraxtal [`0x4ea38a...5328e8`](./contracts/fraxtal-252/0x4ea38a5739d467f7f84c06155ee2ad745e5328e8/); base [`0x4ea38a...5328e8`](./contracts/base-8453/0x4ea38a5739d467f7f84c06155ee2ad745e5328e8/); arbitrum `0x617963...1fdd47`; avalanche `0x6907d1...c2a017` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (130)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1e3b23...875d6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x208024...f64c11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x269af0...18e3b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e1ade...c2169d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e82af...e6d4c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x496409...451286` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ac1df...d4058f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ea931...bbb0e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61a04f...bddf6b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b02fe...6916be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82b561...8a00d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ede18...d65d46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x935c23...742446` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94905e...784e6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x992dc4...fc2d37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1f998...d211f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1fa94...21588a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb14e42...ddd28b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbbe35f...a100c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9e611...6b1ac7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd54c8...7f9719` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcfb7cb...181bdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdfcea9...eef9c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe43f46...af73c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe8e4ee...6685b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8b6a9...0bc9af` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb9f8ab...fd7b88` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xca6481...9a2160` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xfa6b85...0be98e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x129bbd...40c229` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x1cd776...b1d608` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x36e8e3...1cc5d1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x774cb6...17eb94` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x891ec9...017e0d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa523f4...4612dc` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd53f5d...102d83` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb9f8ab...fd7b88` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x045125...a0bacd` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x05589c...9079c2` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x0a6bcb...494083` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x0d418e...322285` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x0f0dda...b755fc` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x0f641b...0bacae` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x0fec3d...0b7f76` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x170206...68492d` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x1fd645...b1900b` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x223738...c754ce` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x252a18...6b3a63` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x25e7c5...f4f669` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x286358...2acc01` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x2b8933...f1feb4` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x2f4cdf...38d4f7` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x334df2...22f6b0` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x3743d8...182da7` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x37aa9a...3e31dd` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x3af95b...1a1b66` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x421dbf...275482` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x4b5d28...4f41cb` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x4dce82...5cbd1b` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x4ea931...bbb0e9` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x5073dc...bc119d` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x51b6e0...749fe1` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x57acb7...7ad478` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x5a5094...00b10d` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x5c97f0...90e798` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x609d44...11beaa` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x60d643...87c84c` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x623cdc...785898` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x6907d1...c2a017` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x6b02fe...6916be` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x739b0c...c62502` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x779aa2...2a049b` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x8034fb...1b6f8d` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x81ba03...3fca08` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x8401b4...62bae8` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x852ad2...7947c6` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x8b9da5...1b5eee` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x908c9d...3052bc` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x9e1f41...80922e` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x9e4cbe...db812b` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xa1ffac...c858f4` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xa2930d...8381ed` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xa7cd84...a32794` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xa9802d...25d985` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xa9952c...58008e` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xab9016...ca4c50` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xae8e14...a8bd1c` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xb292be...6e0144` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xb4c68e...8608df` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xbddac3...68c26b` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xbf6a18...2698b0` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xc0c293...903dbf` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xc1e07a...42abe3` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xca85e2...627451` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xcc9269...1d3c0e` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xce66e8...e41146` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xd86ceb...66d68b` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xda2e6b...16e7db` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xde386a...8455bf` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xdfa714...f578ee` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xe00035...feed73` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xe01d92...a05fb8` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xe4b11a...338224` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xe8a7e8...9d3099` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xea865d...74c1dc` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xec1c78...580606` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xee6c82...f708bd` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xf044ee...81d96f` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xf3ae2e...6aa978` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xf97de6...b7e1f6` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xfa6b85...0be98e` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xffa458...0282d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | 95 deployments: polygon-zkevm `0x045125...a0bacd`; polygon-zkevm `0x04798c...98703c`; polygon-zkevm `0x05589c...9079c2`; polygon-zkevm `0x0a6bcb...494083`; polygon-zkevm `0x0d418e...322285`; polygon-zkevm `0x0f0dda...b755fc`; polygon-zkevm `0x0f641b...0bacae`; polygon-zkevm `0x0fec3d...0b7f76`; polygon-zkevm `0x150970...be213b`; polygon-zkevm `0x1ba3db...67ad0f`; polygon-zkevm `0x1fd645...b1900b`; polygon-zkevm `0x223738...c754ce`; polygon-zkevm `0x2498a2...29ba95`; polygon-zkevm `0x252a18...6b3a63`; polygon-zkevm `0x25e7c5...f4f669`; polygon-zkevm `0x286358...2acc01`; polygon-zkevm `0x2b6c22...c8bc54`; polygon-zkevm `0x2b8933...f1feb4`; polygon-zkevm `0x2f4cdf...38d4f7`; polygon-zkevm `0x334df2...22f6b0`; polygon-zkevm `0x3743d8...182da7`; polygon-zkevm `0x37aa9a...3e31dd`; polygon-zkevm `0x3af95b...1a1b66`; polygon-zkevm `0x421dbf...275482`; polygon-zkevm `0x4b5d28...4f41cb`; polygon-zkevm `0x4dce82...5cbd1b`; polygon-zkevm `0x4ea38a...5328e8`; polygon-zkevm `0x4ea931...bbb0e9`; polygon-zkevm `0x5073dc...bc119d`; polygon-zkevm `0x51b6e0...749fe1`; polygon-zkevm `0x53c090...da364f`; polygon-zkevm `0x57acb7...7ad478`; polygon-zkevm `0x5849b5...e09558`; polygon-zkevm `0x5a5094...00b10d`; polygon-zkevm `0x5a7390...f22c68`; polygon-zkevm `0x5c97f0...90e798`; polygon-zkevm `0x609d44...11beaa`; polygon-zkevm `0x60d643...87c84c`; polygon-zkevm `0x617963...1fdd47`; polygon-zkevm `0x623cdc...785898`; polygon-zkevm `0x6907d1...c2a017`; polygon-zkevm `0x6b02fe...6916be`; polygon-zkevm `0x731886...25d961`; polygon-zkevm `0x739b0c...c62502`; polygon-zkevm `0x779aa2...2a049b`; polygon-zkevm `0x7a7b39...5a73d1`; polygon-zkevm `0x8034fb...1b6f8d`; polygon-zkevm `0x8401b4...62bae8`; polygon-zkevm `0x852ad2...7947c6`; polygon-zkevm `0x872993...306fe9`; polygon-zkevm `0x8b2970...618201`; polygon-zkevm `0x8b9da5...1b5eee`; polygon-zkevm `0x908c9d...3052bc`; polygon-zkevm `0x919eeb...0efee6`; polygon-zkevm `0x98ef32...a30184`; polygon-zkevm `0x9e1f41...80922e`; polygon-zkevm `0x9e4cbe...db812b`; polygon-zkevm `0xa1ffac...c858f4`; polygon-zkevm `0xa2930d...8381ed`; polygon-zkevm `0xa7cd84...a32794`; polygon-zkevm `0xa9802d...25d985`; polygon-zkevm `0xa9952c...58008e`; polygon-zkevm `0xab9016...ca4c50`; polygon-zkevm `0xae8e14...a8bd1c`; polygon-zkevm `0xb292be...6e0144`; polygon-zkevm `0xb4c68e...8608df`; polygon-zkevm `0xb82434...3e8bd3`; polygon-zkevm `0xbcf3b1...108c48`; polygon-zkevm `0xbd2e14...4b029e`; polygon-zkevm `0xbddac3...68c26b`; polygon-zkevm `0xbf6a18...2698b0`; polygon-zkevm `0xc181ed...00a2b0`; polygon-zkevm `0xc1e07a...42abe3`; polygon-zkevm `0xc24fa5...97b7ac`; polygon-zkevm `0xca85e2...627451`; polygon-zkevm `0xcbdcd8...23dc4e`; polygon-zkevm `0xcc9269...1d3c0e`; polygon-zkevm `0xce66e8...e41146`; polygon-zkevm `0xd86ceb...66d68b`; polygon-zkevm `0xda2e6b...16e7db`; polygon-zkevm `0xde386a...8455bf`; polygon-zkevm `0xdfa714...f578ee`; polygon-zkevm `0xe00035...feed73`; polygon-zkevm `0xe01d92...a05fb8`; polygon-zkevm `0xe4b11a...338224`; polygon-zkevm `0xe8a7e8...9d3099`; polygon-zkevm `0xea865d...74c1dc`; polygon-zkevm `0xec1c78...580606`; polygon-zkevm `0xee6c82...f708bd`; polygon-zkevm `0xf044ee...81d96f`; polygon-zkevm `0xf24074...a6ca71`; polygon-zkevm `0xf3ae2e...6aa978`; polygon-zkevm `0xf97de6...b7e1f6`; polygon-zkevm `0xfa6b85...0be98e`; polygon-zkevm `0xffa458...0282d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xc0c293...903dbf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x180295...cf1d77` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0a6bcb...494083` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x12233c...5a7d9f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x364675...6e617c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4ac1df...d4058f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x59b77e...13ccee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb9f8ab...fd7b88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbe4892...392ce0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x138f95...26bb8a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5073dc...bc119d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x623cdc...785898` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x739b0c...c62502` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8034fb...1b6f8d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa2930d...8381ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcc9269...1d3c0e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xede954...9954e0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [facu_spagnuolo_aurabal_vault_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/auraBalVault/facu_spagnuolo_aurabal_vault_audit_report.pdf) | Facu Spagnuolo | Audit | 2023-03 | stale | Direct | contract_name | 1 | n/a |
| [halborn_aurabal_vault_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/auraBalVault/halborn_aurabal_vault_audit_report.pdf) | Halborn | Audit | 2023-03 | stale | Direct | contract_name | 1 | n/a |
| [halborn_sidechain_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/sidechain/halborn_sidechain_audit_report.pdf) | Halborn | Audit | 2023-06 | stale | Direct | contract_name | 7 | n/a |
| [hephyrius-internal-report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/sidechain/hephyrius-internal-report.pdf) | Hephyrius | Audit | n/a | unknown | Direct | contract_name | 7 | n/a |
| [zellic_sidechain_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/sidechain/zellic_sidechain_audit_report.pdf) | Zellic | Audit | 2023-06 | stale | Direct | contract_name | 12 | n/a |
| [facu_spagnuolo_aura_upgrade_01_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/upgrades/facu_spagnuolo_aura_upgrade_01_audit_report.pdf) | Facu Spagnuolo | Audit | n/a | unknown | Direct | contract_name | 2 | n/a |
| [hephyrius_aura_upgrade_01_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/upgrades/hephyrius_aura_upgrade_01_audit_report.pdf) | Hephyrius | Audit | n/a | unknown | Direct | contract_name | 4 | n/a |
| [Code4rena-Audit-Report-AuraFinance-v1.0.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/Code4rena-Audit-Report-AuraFinance-v1.0.pdf) | Code4rena | Contest | 2022-07 | stale | Direct | contract_name | 12 | n/a |
| [Halborn-Audit-Report-AuraFinance-v1.0.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/Halborn-Audit-Report-AuraFinance-v1.0.pdf) | Halborn | Audit | 2022-06 | stale | Direct | contract_name | 13 | n/a |
| [PeckShield-Audit-Report-AuraFinance-v1.0.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/PeckShield-Audit-Report-AuraFinance-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | 7 | n/a |
| [Aura_Finance_Migration_Review_Hephyrius.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/migration/Aura_Finance_Migration_Review_Hephyrius.pdf) | Hephyrius | Audit | n/a | unknown | Direct | contract_name | 2 | n/a |
| [FacuSpagnuolo-Aura-Booster-migration-report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/migration/FacuSpagnuolo-Aura-Booster-migration-report.pdf) | FacuSpagnuolo | Audit | 2023-12 | stale | Direct | contract_name | 2 | n/a |
| [Halborn-Aura_Finance___Smart_Contract_Audit.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/migration/Halborn-Aura_Finance___Smart_Contract_Audit.pdf) | Halborn | Audit | 2023-12 | stale | Direct | contract_name | 3 | n/a |
| [001-BaseRewardPool-Donate.md](https://github.com/aurafinance/aura-contracts/blob/main/security/disclosures/001-BaseRewardPool-Donate.md) | unknown | Audit | 2022-11 | stale | Direct | contract_name | 2 | n/a |
| [002-Booster-EIP1271.md](https://github.com/aurafinance/aura-contracts/blob/main/security/disclosures/002-Booster-EIP1271.md) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 1 | n/a |
| [003-Assorted-Governance-griefing.md](https://github.com/aurafinance/aura-contracts/blob/main/security/disclosures/003-Assorted-Governance-griefing.md) | unknown | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [README.md](https://github.com/aurafinance/aura-docs/blob/main/aura/security/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [risks.md](https://github.com/aurafinance/aura-docs/blob/main/aura/security/risks.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/r4kLuYPt1EhIEVbkxHD8/uploads/dpPicVneOrKaZPH8PMdj/halborn_aurabal_vault_audit_report.pdf](https://2520301408-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FdpPicVneOrKaZPH8PMdj%2Fhalborn_aurabal_vault_audit_report.pdf) | Halborn | Audit | 2023-03 | stale | Direct | contract_name | 4 | high |
| [spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf](https://2520301408-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FDuQMD5ULdRtqravKUwxQ%2FCode4rena-Audit-Report-AuraFinance-v1.0.pdf) | Code4rena | Contest | 2022-07 | stale | Direct | contract_name | 52 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x616e8b...d4608d`](./contracts/ethereum-1/0x616e8bfa43f920657b3497dbf40d6b1a02d4608d/) | cvxCrvToken | token | $31,736,967.56 | Verified native implementation with $31,736,967.56 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0c293...903dbf`](./contracts/ethereum-1/0xc0c293ce456ff0ed870add98a0828dd4d2903dbf/) | AuraToken | token | $949,989.26 | Verified native implementation with $949,989.26 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d208c...bedc40`](./contracts/ethereum-1/0x5d208cd54f5132f2bd0c1f1e8d8c864bb6bedc40/) | ArbitratorVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xde386a...8455bf`](./contracts/arbitrum-42161/0xde386aedec27521daf1f8a49c03ada7c158455bf/) | ArbitrumBridgeSender | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2aa497...0a1f9c`](./contracts/ethereum-1/0x2aa497d6c6cc0cce9a49ea70b0701092a10a1f9c/) | AuraBalRedemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b2364...1ad7f4`](./contracts/ethereum-1/0x5b2364fd757e262253423373e4d57c5c011ad7f4/) | AuraClaimZapV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x96d15d...dba9a4`](./contracts/ethereum-1/0x96d15d08538a17a03b0210fd1626d5f42bdba9a4/) | AuraDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x568f3d...c0dd73`](./contracts/ethereum-1/0x568f3df1b63af874e0f981831d0c4a6186c0dd73/) | AuraLockerModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x559f5f...a926d6`](./contracts/ethereum-1/0x559f5fa62dfbc5f22a4f7d36bd001acb27a926d6/) | AuraRedemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0xbd2e14...4b029e`](./contracts/fraxtal-252/0xbd2e14d04777e551a8fe3822cac0df51984b029e/) | AuraViewHelpersLite | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26f470...f6763d`](./contracts/ethereum-1/0x26f470e4b777ea4cd09f550d3e904d707df6763d/) | BoosterHelper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x228a14...989f04`](./contracts/ethereum-1/0x228a142081b456a9ff803d004504955032989f04/) | BoosterOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x1bec8f...b482c0`](./contracts/gnosis-100/0x1bec8fd56166ba66afb6d449e61b717fc9b482c0/) | ChildStashRewardDistro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x201efd...2a86cc`](./contracts/polygon-137/0x201efd508c8dfe9de1a13c2452863a78cb2a86cc/) | ClaimSignatureRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f29cb...cf2516`](./contracts/ethereum-1/0x3f29cb4111cbda8081642da1f75b3c12decf2516/) | ClaimZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x0e800d...92b106`](./contracts/gnosis-100/0x0e800d8d2e8b4694610aedc385aa6d763492b106/) | CowSwapFeeBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x449f2f...d1ddc6`](./contracts/ethereum-1/0x449f2fd99174e1785cf2a1c79e665fec3dd1ddc6/) | CvxDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49b4d1...37e31a`](./contracts/ethereum-1/0x49b4d1df40442f0c31b1bbaea3ede7c38e37e31a/) | cvxFxsStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0b1120...e63911`](./contracts/avalanche-43114/0x0b11209b8c5e821b18ded147583b8978c3e63911/) | ERC4626CowSwapFeeBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd43024...1410e9`](./contracts/ethereum-1/0xd430246142084ec68f7ab090cbd9252a1d1410e9/) | FeeBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a527d...a0d769`](./contracts/ethereum-1/0x7a527d8bb09f7d70c148ab5de919e9bf68a0d769/) | FeeDepositV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b5ac8...381621`](./contracts/ethereum-1/0x2b5ac82c5e934407514768ce3e399d9c18381621/) | GaugeVoterModule | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d6bca...86e1e7`](./contracts/ethereum-1/0x6d6bcac2266468a44da9fa482ca54aaed586e1e7/) | Harvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1972b5...bc14f7`](./contracts/ethereum-1/0x1972b5d65a690de0bc36278ac93d47fd98bc14f7/) | InterestRateCalculatorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x37aa9a...3e31dd`](./contracts/optimism-10/0x37aa9ad9744d0686df1c7053225e700ce13e31dd/) | KeeperMulticall3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54f2de...27a14d`](./contracts/ethereum-1/0x54f2dec216dffb9174edb0d53910bada5227a14d/) | L1PoolManagerProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x99364f...c52c58`](./contracts/arbitrum-42161/0x99364f84d1c68d87aead0ce92eb47409a0c52c58/) | LBPMigrationRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x751a0b...1c87de`](./contracts/ethereum-1/0x751a0bc0e3f75b38e01cf25bfce7ff36de1c87de/) | LiquidityBootstrappingPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x311334...358615`](./contracts/polygon-137/0x311334883921fb1b813826e585df1c2be4358615/) | NullVotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x7e702e...50f265`](./contracts/optimism-10/0x7e702e51142eb7658ce4ce734c9bdec74250f265/) | OptimismBridgeSender | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x25e7c5...f4f669`](./contracts/polygon-137/0x25e7c574c4016e09f608971f97c3b09a6cf4f669/) | PolygonBridgeSender | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd0521c...8bd687`](./contracts/ethereum-1/0xd0521c061958324d06b8915ffdac3db22c8bd687/) | PoolFeeManagerProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16a04e...94947a`](./contracts/ethereum-1/0x16a04e58a77ab1ce561a37371dfb479a8594947a/) | PoolManagerProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x03cbcc...dff36f`](./contracts/gnosis-100/0x03cbccbe8d2073a1dc186ae6bcd95390fcdff36f/) | PoolSwapFeeHelper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1b6f05...f17e59`](./contracts/base-8453/0x1b6f057520b4e826271d47b8bdab98e35af17e59/) | ProtocolFeeControllerMigration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x1bca39...716b1c`](./contracts/gnosis-100/0x1bca39b01f451b0a05d7030e6e6981a73b716b1c/) | ProtocolFeeSweeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc44d36...e88bc8`](./contracts/ethereum-1/0xc44d3604a332b71e2e6a87a714614a505ee88bc8/) | RAuraRedemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x4ea38a...5328e8`](./contracts/gnosis-100/0x4ea38a5739d467f7f84c06155ee2ad745e5328e8/) | SidechainClaimZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x1ba3db...67ad0f`](./contracts/fraxtal-252/0x1ba3dbd572b1b7aa3445fa51492bfc644c67ad0f/) | SidechainView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2db7d4...a15f9c`](./contracts/ethereum-1/0x2db7d4f89de7ac7fbb31422d51ec3a7c7aa15f9c/) | StashRewardDistro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04dd97...bd207f`](./contracts/ethereum-1/0x04dd97255ddee29c941d85f5b5cde6ace8bd207f/) | TreasuryLend | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeb8121...6de6b3`](./contracts/ethereum-1/0xeb8121b44a290ee16981d87b92fc16b2366de6b3/) | TreasuryManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa25b17...e74316`](./contracts/ethereum-1/0xa25b17d7deee59f9e326e45cc3c0c1b158e74316/) | TreasurySwap | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf37c41...64b503`](./contracts/ethereum-1/0xf37c41ef2281893b5971769370d6cdd35864b503/) | Utilities | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9805dc...764102`](./contracts/avalanche-43114/0x9805dcfd25e6de36bad8fe9d3fe2c9b44b764102/) | VaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x05589c...9079c2`](./contracts/polygon-137/0x05589cbbe1cc0357986df6de4031b953819079c2/) | VirtualRewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0f08ee...347b7c`](./contracts/polygon-137/0x0f08eef2c785aa5e7539684af04755dec1347b7c/) | VotingEscrowDelegationProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0f08ee...347b7c`](./contracts/optimism-10/0x0f08eef2c785aa5e7539684af04755dec1347b7c/) | WeightedPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d53f0...6150dc`](./contracts/ethereum-1/0x9d53f0d2ecebc84e9114259f6084d01fb46150dc/) | WindDownCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 95 |
| upstream | 20 |
| standard_library | 4 |
| needs_review | 137 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=76, extraction_exact=58

Zero-match audit list:

- [5974] 003-Assorted-Governance-griefing.md
- [5976] README.md
- [5977] risks.md

Fork inheritance lineage and inherited audits are included when available.
