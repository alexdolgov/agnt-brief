# Agentic Audit Brief: Aura

⚠️ Lifecycle status: DECLINING - TVL dropped 75.8% over 90 days

## Project Overview

- Project: Aura (`aura`)
- Website: [https://aura.finance](https://aura.finance)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-28T21:35:11.701Z
- Pipeline run: v2-pipeline-2026-05-28-8b27fb-b60c
- Chains: arbitrum, avalanche, base, ethereum, fraxtal, gnosis, optimism, polygon, polygon-zkevm
- Contract surface: 502 unique implementations (1231 raw deployments)
- DeFi Llama TVL: $26,149,389.14
- On-chain TVL (included contracts): $276,981,422.85
- TVL by chain: Ethereum $276,895,288.78 | Base $78,139.50 | Optimism $5,255.49 | Arbitrum $2,739.07 | Gnosis $0.00

## Project Description

Aura Finance is a yield-enhancing protocol built on top of Balancer, allowing liquidity providers to maximize rewards by staking Balancer LP tokens and earning additional AURA tokens, boosted BAL rewards, and governance power through vote-locked tokens.

### Architecture

The Aura family forms the backbone, with Booster/BoosterLite managing pools and rewards, while sidechain deployments (Arbitrum, Optimism, Gnosis, Polygon) use Lite variants and bridge infrastructure (BridgeDelegateReceiver, L1/L2Coordinator) to extend yield and governance cross-chain. The constructor family provided initial Convex migration support, and Mainnet contracts handle Ethereum-specific bridging.

## Audit Coverage Summary

- Verified implementations audited: 55/268 (20.5%)
- Verified + Unaudited implementations: 209
- Verified by bytecode match: 12
- Unverified implementations: 234
- Unique implementations: 502
- Raw deployments: 1231
- Audits discovered: 22
- Scoreable audits (matched contracts): 16
- ASD (verified + unaudited TVL): $237,154,439.08
- Latest audit: 2023-12 (stale)
- Staleness: 0 fresh, 0 aging, 12 stale, 10 unknown
- Tier 1 coverage: 8.2% (Code4rena)
- Note: This protocol is classified as [declining]. ASD of $237,154,439.08 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 44 | 16.4% | 2023-12 |
| unknown | Tier 2 | 42 | 15.7% | 2023-12 |
| Code4rena | Tier 1 | 22 | 8.2% | 2022-07 |
| Zellic | Tier 2 | 19 | 7.1% | 2023-06 |
| PeckShield | Tier 2 | 10 | 3.7% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (47)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BaseRewardPool | core_logic | ethereum | 4 deployments: ethereum [`0x00a7ba...c6cad2`](./contracts/ethereum-1/0x00a7ba8ae7bca0b10a32ea1f8e2a1da980c6cad2/); ethereum `0x3fe656...a7587e`; ethereum `0x5e5ea2...96efcc`; ethereum `0xe765d4...7ab806` | ✅ Audited |
| AuraBalVault | core_logic | polygon | 5 deployments: ethereum `0xb78c0d...3b12bc`; ethereum `0xfaa2ed...fcd7a6`; polygon [`0x4ea931...bbb0e9`](./contracts/polygon-137/0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9/); base [`0x4ea931...bbb0e9`](./contracts/base-8453/0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9/); arbitrum [`0x4ea931...bbb0e9`](./contracts/arbitrum-42161/0x4ea9317d90b61fc28c418c247ad0ca8939bbb0e9/) | ✅ Audited |
| AuraToken | token | ethereum | 2 deployments: ethereum [`0x665d01...59cf15`](./contracts/ethereum-1/0x665d01dbd89a0d1b693bb806feea499b5359cf15/); ethereum `0xc0c293...903dbf` | ✅ Audited |
| SimpleStrategy | core_logic | polygon | 3 deployments: polygon [`0x4b5d28...4f41cb`](./contracts/polygon-137/0x4b5d2848678db574fbc2d2f629143d969a4f41cb/); base [`0x4b5d28...4f41cb`](./contracts/base-8453/0x4b5d2848678db574fbc2d2f629143d969a4f41cb/); arbitrum [`0x4b5d28...4f41cb`](./contracts/arbitrum-42161/0x4b5d2848678db574fbc2d2f629143d969a4f41cb/) | ✅ Audited |
| Booster | core_logic | ethereum | 12 deployments: ethereum [`0x2b8b30...2ffc95`](./contracts/ethereum-1/0x2b8b301b90eb8801f1eefe73285eec117d2ffc95/); ethereum `0x569f5b...79fbca`; ethereum `0x60bd3d...f6738b`; ethereum `0x63e035...ba565a`; ethereum `0x7818a1...8eee10`; ethereum `0x9ca3ec...60ba9a`; ethereum `0xa57b8d...60b234`; ethereum `0xb314f7...bfe7fd`; ethereum `0xd8bd5c...f28659`; ethereum `0xee3ab4...9d67e8`; ethereum `0xefffec...b047d8`; ethereum `0xf403c1...8aae31` | ✅ Audited |
| AuraBalRewardPool | core_logic | ethereum | [`0xc47162...651c0c`](./contracts/ethereum-1/0xc47162863a12227e5c3b0860715f9cf721651c0c/) | ✅ Audited |
| AuraBalStrategy | core_logic | ethereum | 2 deployments: ethereum [`0x7372ec...bd2b66`](./contracts/ethereum-1/0x7372ece4c18beabc19981a53b557be90dcbd2b66/); ethereum `0xca6481...9a2160` | ✅ Audited |
| AuraBalOFT | unknown | polygon | 3 deployments: polygon [`0x223738...c754ce`](./contracts/polygon-137/0x223738a747383d6f9f827d95964e4d8e8ac754ce/); base [`0x223738...c754ce`](./contracts/base-8453/0x223738a747383d6f9f827d95964e4d8e8ac754ce/); arbitrum [`0x223738...c754ce`](./contracts/arbitrum-42161/0x223738a747383d6f9f827d95964e4d8e8ac754ce/) | ✅ Audited |
| AuraBalProxyOFT | unknown | ethereum | 2 deployments: ethereum [`0xab07f0...7b6764`](./contracts/ethereum-1/0xab07f0279023886222e80e25cb4a01cd007b6764/); ethereum `0xdf9080...3a7c68` | ✅ Audited |
| AuraClaimZap | adapter | ethereum | 3 deployments: ethereum [`0x2e3077...9e92a9`](./contracts/ethereum-1/0x2e307704efae244c4aae6b63b601ee8da69e92a9/); ethereum `0x4e7d44...f48d3a`; ethereum `0x623b83...917ab2` | ✅ Audited |
| AuraLocker | unknown | ethereum | 2 deployments: ethereum [`0x3fa73f...9bbcac`](./contracts/ethereum-1/0x3fa73f1e5d8a792c80f426fc8f84fbf7ce9bbcac/); base `0x9e1f41...80922e` | ✅ Audited |
| AuraMerkleDrop | operational_periphery | ethereum | 2 deployments: ethereum [`0x1a661c...80a8fb`](./contracts/ethereum-1/0x1a661cf8d8cd69dd2a423f3626a461a24280a8fb/); ethereum `0x45eb1a...287724` | ✅ Audited |
| AuraMinter | unknown | ethereum | [`0x59a5cc...e13707`](./contracts/ethereum-1/0x59a5ccd34943cd0adcf5ce703ee9f06889e13707/) | ✅ Audited |
| AuraPenaltyForwarder | unknown | ethereum | [`0x404356...c20d1e`](./contracts/ethereum-1/0x4043569200f7a7a1d989abbabc2de2bde1c20d1e/) | ✅ Audited |
| AuraProxyOFT | unknown | ethereum | 2 deployments: ethereum [`0x9063c0...e180ec`](./contracts/ethereum-1/0x9063c001af97c75a59dc27b0dd3d8dfa81e180ec/); ethereum `0xb401f0...c1ffff` | ✅ Audited |
| AuraStakingProxy | proxy | ethereum | [`0xd9e863...f89c6c`](./contracts/ethereum-1/0xd9e863b7317a66fe0a4d2834910f604fd6f89c6c/) | ✅ Audited |
| AuraVestedEscrow | operational_periphery | ethereum | 10 deployments: ethereum [`0x243466...53fac6`](./contracts/ethereum-1/0x24346652e0e2ae0ce05c781501fdf4fe4553fac6/); ethereum `0x43b170...6694fa`; ethereum `0x45025e...1538f5`; ethereum `0x5335ab...ff7cfb`; ethereum `0x5bd3fc...2d836a`; ethereum `0x87e1ca...056806`; ethereum `0xa6bbf6...5eb358`; ethereum `0xb75044...d16087`; ethereum `0xefc9f1...66ac3f`; ethereum `0xfd7217...30d422` | ✅ Audited |
| BalLiquidityProvider | unknown | ethereum | [`0xa7429a...70e32c`](./contracts/ethereum-1/0xa7429af4deb16827dad0e71d8aeea9c2bf70e32c/) | ✅ Audited |
| BoosterHelper | core_logic | ethereum | 5 deployments: ethereum [`0x00a31b...98f38c`](./contracts/ethereum-1/0x00a31b98c325a8dcb8d1dd41d65156a5c898f38c/); ethereum `0x0538ad...a7270c`; ethereum `0x26f470...f6763d`; ethereum `0x82bbbc...3d0bd0`; ethereum `0xc44a3c...c5c391` | ✅ Audited |
| BoosterOwner | core_logic | ethereum | 4 deployments: ethereum [`0x228a14...989f04`](./contracts/ethereum-1/0x228a142081b456a9ff803d004504955032989f04/); ethereum `0x3ce640...80f1e6`; ethereum `0xb927ed...3caced`; ethereum `0xfa838a...54ec34` | ✅ Audited |
| BoosterOwnerLite | core_logic | fraxtal | 6 deployments: optimism `0xf044ee...81d96f`; gnosis `0xa9802d...25d985`; polygon `0x8b9da5...1b5eee`; fraxtal [`0x04798c...98703c`](./contracts/fraxtal-252/0x04798c9b4546d90a97f687188d346d170298703c/); base `0x0f0dda...b755fc`; arbitrum `0x3af95b...1a1b66` | ✅ Audited |
| BoosterOwnerSecondary | core_logic | ethereum | 3 deployments: ethereum [`0x1fdd5c...3c4760`](./contracts/ethereum-1/0x1fdd5cc20303f61f3fe2da6cad9023c9993c4760/); ethereum `0x256e1b...98b86d`; ethereum `0xce96e4...001ead` | ✅ Audited |
| BridgeDelegateReceiver | operational_periphery | ethereum | 16 deployments: ethereum [`0x0ab84c...0ffa8e`](./contracts/ethereum-1/0x0ab84c2a7929944cecaa4cdee9255680800ffa8e/); ethereum `0x25e7c5...f4f669`; ethereum `0x397a2d...e80cd7`; ethereum `0x430113...3f36f6`; ethereum `0x60421f...b055f7`; ethereum `0x699264...af8ec4`; ethereum `0x73b4ce...63c909`; ethereum `0x7eb87c...9c2b4c`; ethereum `0x80b111...98ab8d`; ethereum `0x81ba03...3fca08`; ethereum `0x8ba971...fdf8e0`; ethereum `0x98b6dc...fcaece`; ethereum `0xac962a...08daa6`; ethereum `0xb6d84d...5ccc11`; ethereum `0xb8ca2a...d75dad`; ethereum `0xbcf3b1...108c48` | ✅ Audited |
| ChefForwarder | unknown | ethereum | 2 deployments: ethereum [`0x57d23f...b622e9`](./contracts/ethereum-1/0x57d23f0f101cbd25a05fc56fd07de32bcbb622e9/); ethereum `0x725358...a0ccf8` | ✅ Audited |
| ClaimFeesHelper | periphery | ethereum | 5 deployments: ethereum [`0x640397...cb28d8`](./contracts/ethereum-1/0x6403972c1e8c6d01c57eed62e6322c191ccb28d8/); ethereum `0x999dbc...d0f56e`; ethereum `0xa96ccc...808cf1`; ethereum `0xaf824c...41c200`; ethereum `0xceecea...cc81bf` | ✅ Audited |
| ConvexMasterChef | unknown | ethereum | [`0x1ab80f...aaf4e9`](./contracts/ethereum-1/0x1ab80f7fb46b25b7e0b2cfac23fc88ac37aaf4e9/) | ✅ Audited |
| CrvDepositor | unknown | ethereum | 2 deployments: ethereum [`0x801459...dc86ae`](./contracts/ethereum-1/0x8014595f2ab54cd7c604b00e9fb932176fdc86ae/); ethereum `0xead792...d1b827` | ✅ Audited |
| CrvDepositorWrapper | unknown | ethereum | [`0x68655a...5d4123`](./contracts/ethereum-1/0x68655ad9852a99c87c0934c7290bb62cfa5d4123/) | ✅ Audited |
| ExtraRewardsDistributor | operational_periphery | ethereum | [`0xa3739b...fbd308`](./contracts/ethereum-1/0xa3739b206097317c72ef416f0e75bb8f58fbd308/) | ✅ Audited |
| ExtraRewardStashV3 | unknown | ethereum | 8 deployments: ethereum [`0x0dbffb...7d8852`](./contracts/ethereum-1/0x0dbffba31097510d291ad9150b150b3bb07d8852/); ethereum `0x37c3eb...915f98`; ethereum `0x4a5330...621bf8`; ethereum `0x5773f7...1fc234`; ethereum `0x647596...59b7ef`; ethereum `0xd7abc6...55399c`; ethereum `0xf9c0f3...175742`; fraxtal `0x7a7b39...5a73d1` | ✅ Audited |
| FeeForwarder | unknown | ethereum | [`0xe14360...a38fe1`](./contracts/ethereum-1/0xe14360aa496a85fcfe4b75afd2ec4d95cba38fe1/) | ✅ Audited |
| GaugeMigrator | operational_periphery | ethereum | 2 deployments: ethereum [`0x7954bc...ce578b`](./contracts/ethereum-1/0x7954bcdce86e86bee7b1deff48c3a0b9bcce578b/); ethereum `0xcd36ed...deba53` | ✅ Audited |
| GnosisBridgeSender | operational_periphery | gnosis | [`0x908c9d...3052bc`](./contracts/gnosis-100/0x908c9d41183ade493effc12bb9ad11a9333052bc/) | ✅ Audited |
| L1Coordinator | unknown | ethereum | 2 deployments: ethereum [`0x064d9a...91904b`](./contracts/ethereum-1/0x064d9aea351205c01da2270ffe19c8e4ca91904b/); ethereum `0xaa54f3...2a3811` | ✅ Audited |
| MasterChefRewardHook | unknown | ethereum | 4 deployments: ethereum [`0x6a29cf...326815`](./contracts/ethereum-1/0x6a29cfd8a5f666a7d69da9437cd4c46616326815/); ethereum `0x959306...7b6560`; ethereum `0xb5932c...8b84da`; ethereum `0xf8dbcf...05800e` | ✅ Audited |
| PoolManager | core_logic | ethereum | 2 deployments: ethereum [`0x3b2d30...135a9c`](./contracts/ethereum-1/0x3b2d30734491ad77880d31e8afe2a4d8ac135a9c/); ethereum `0xbe5d4e...2c887d` | ✅ Audited |
| PoolManagerProxy | core_logic | ethereum | 4 deployments: ethereum [`0x16a04e...94947a`](./contracts/ethereum-1/0x16a04e58a77ab1ce561a37371dfb479a8594947a/); ethereum `0x2c809e...110f3c`; ethereum `0x5f4701...5c5c1b`; ethereum `0xdc0a7f...0ee65c` | ✅ Audited |
| PoolManagerSecondaryProxy | core_logic | ethereum | 4 deployments: ethereum [`0x153dfc...cfc72a`](./contracts/ethereum-1/0x153dfc50f7a93c4f3d049c105dde9786d3cfc72a/); ethereum `0xa72932...e2de54`; ethereum `0xd20904...91d1e1`; ethereum `0xdc274f...34cf67` | ✅ Audited |
| PoolManagerV3 | core_logic | ethereum | 6 deployments: ethereum [`0x8a849f...1b1e83`](./contracts/ethereum-1/0x8a849f4074726179f95ee08c59caa8f6f21b1e83/); ethereum `0xaa83d1...3102ed`; ethereum `0xb58eb1...562be5`; ethereum `0xd1f9b3...6a4447`; ethereum `0xe6a0a8...2d8357`; ethereum `0xf843f6...28de50` | ✅ Audited |
| PoolManagerV4 | core_logic | ethereum | 6 deployments: ethereum [`0x0e4e9d...c02e11`](./contracts/ethereum-1/0x0e4e9d97440182ea72d988d48eb9b156a0c02e11/); ethereum `0x1d545f...4d274a`; ethereum `0x6d3a38...b423de`; ethereum `0x782bce...a37f95`; ethereum `0x8dd8cd...aebd64`; ethereum `0xc461e1...5782d5` | ✅ Audited |
| PoolMigrator | core_logic | ethereum | 2 deployments: ethereum [`0x12adde...6f0578`](./contracts/ethereum-1/0x12adde99768a82871eaaecfbdb065b12c56f0578/); ethereum `0x7a04e7...67188f` | ✅ Audited |
| RewardFactory | registry | gnosis | 10 deployments: ethereum `0x45aad1...74f356`; ethereum `0xbc8d9c...332dca`; ethereum `0xedccb3...08aa8d`; ethereum `0xf6b287...f5a37d`; optimism `0x2f4cdf...38d4f7`; gnosis [`0x0f641b...0bacae`](./contracts/gnosis-100/0x0f641b291ba374ec9b17a878c54b98005a0bacae/); polygon `0xb292be...6e0144`; fraxtal `0xc24fa5...97b7ac`; base `0x334df2...22f6b0`; arbitrum `0xda2e6b...16e7db` | ✅ Audited |
| RewardPoolDepositWrapper | core_logic | gnosis | 7 deployments: ethereum `0xb188b1...9fec59`; optimism `0x51b6e0...749fe1`; gnosis [`0x0fec3d...0b7f76`](./contracts/gnosis-100/0x0fec3d212bcc29ef3e505b555d7a7343df0b7f76/); polygon `0xce66e8...e41146`; fraxtal `0x5849b5...e09558`; base `0xa9952c...58008e`; arbitrum `0x6b02fe...6916be` | ✅ Audited |
| SiphonToken | token | ethereum | 5 deployments: ethereum [`0x71061c...4be4ad`](./contracts/ethereum-1/0x71061c238ea7736d3709e801d61e09423e4be4ad/); ethereum `0xa348a3...080e75`; ethereum `0xbb7a6e...af8e4f`; ethereum `0xc9307d...ff0967`; ethereum `0xfeda1c...6129e8` | ✅ Audited |
| StashFactoryV2 | registry | polygon | 10 deployments: ethereum `0x54da42...a3e915`; ethereum `0x884da0...9c2be4`; ethereum `0x95171c...458eb5`; ethereum `0xafd890...a3a5a8`; optimism `0x8401b4...62bae8`; gnosis `0xab9016...ca4c50`; polygon [`0x4dce82...5cbd1b`](./contracts/polygon-137/0x4dce82f149649906d622efca613736a2015cbd1b/); fraxtal `0x919eeb...0efee6`; base `0x60d643...87c84c`; arbitrum `0x779aa2...2a049b` | ✅ Audited |
| VirtualBalanceRewardPool | core_logic | ethereum | [`0xac1692...fd0147`](./contracts/ethereum-1/0xac16927429c5c7af63dd75bc9d8a58c63ffd0147/) | ✅ Audited |
| VoterProxy | unknown | ethereum | 2 deployments: ethereum [`0x42b047...e053ee`](./contracts/ethereum-1/0x42b047d1c751a871e61ec77bfde5fbbf2ce053ee/); ethereum `0xaf5269...0dbec2` | ✅ Audited |

### ⚠️ Verified + Unaudited (209)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ConvexToken | token | ethereum | [`0x4e3fbd...5b9d2b`](./contracts/ethereum-1/0x4e3fbd56cd56c3e72c1403e103b45db9da5b9d2b/) | ⚠️ Unaudited |
| cvxCrvToken | token | ethereum | 2 deployments: ethereum [`0x616e8b...d4608d`](./contracts/ethereum-1/0x616e8bfa43f920657b3497dbf40d6b1a02d4608d/); ethereum `0x62b9c7...810aa7` | ⚠️ Unaudited |
| cvxRewardPool | core_logic | ethereum | [`0xcf50b8...139332`](./contracts/ethereum-1/0xcf50b810e57ac33b91dcf525c6ddd9881b139332/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | 2 deployments: ethereum [`0xba1222...6bf2c8`](./contracts/ethereum-1/0xba12222222228d8ba445958a75a0704d566bf2c8/); fraxtal `0xe42ffa...42e467` | ⚠️ Unaudited |
| cvxFpisToken | token | ethereum | [`0xa28473...427df6`](./contracts/ethereum-1/0xa2847348b58ced0ca58d23c7e9106a49f1427df6/) | ⚠️ Unaudited |
| cvxFxsToken | token | ethereum | [`0xfeef77...4bdf74`](./contracts/ethereum-1/0xfeef77d3f69374f66429c91d732a244f074bdf74/) | ⚠️ Unaudited |
| BalancerGovernanceToken | token | ethereum | [`0xba1000...424e3d`](./contracts/ethereum-1/0xba100000625a3754423978a60c9317c58a424e3d/) | ⚠️ Unaudited |
| AggregatorBatchRouter | adapter | avalanche | 4 deployments: optimism `0xb9d01c...20ab14`; gnosis `0x870f98...23fbc1`; arbitrum `0xb21a27...815c8a`; avalanche [`0x136f1e...1778d1`](./contracts/avalanche-43114/0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1/) | ⚠️ Unaudited |
| AggregatorRouter | adapter | avalanche | 5 deployments: optimism `0x84813a...a63617`; gnosis `0xb21a27...815c8a`; arbitrum `0x4b979e...99729c`; avalanche [`0x3f1706...38dc10`](./contracts/avalanche-43114/0x3f170631ed9821ca51a59d996ab095162438dc10/); avalanche `0x4b979e...99729c` | ⚠️ Unaudited |
| ArbitratorVault | core_logic | ethereum | 2 deployments: ethereum [`0x25e124...c21616`](./contracts/ethereum-1/0x25e12482a25cf36ec70fda2a09c1ed077fc21616/); ethereum `0x5d208c...bedc40` | ⚠️ Unaudited |
| ArbitrumBridgeSender | operational_periphery | arbitrum | 4 deployments: arbitrum [`0x713e88...96fbe6`](./contracts/arbitrum-42161/0x713e883c22fa543fb28ce96e0677ae347096fbe6/); arbitrum `0xa7e41a...e2815c`; arbitrum `0xabdce1...d6afba`; arbitrum `0xde386a...8455bf` | ⚠️ Unaudited |
| ArbitrumRootGaugeFactory | operational_periphery | ethereum | 2 deployments: ethereum [`0x1c9932...5e50e7`](./contracts/ethereum-1/0x1c99324edc771c82a0dccb780cc7dda0045e50e7/); ethereum `0xad9013...89a633` | ⚠️ Unaudited |
| AuraArbBalGrant | unknown | arbitrum | [`0x8d803f...1f7727`](./contracts/arbitrum-42161/0x8d803f7f7e26e586ee90e5a872cf7830e21f7727/) | ⚠️ Unaudited |
| AuraBalRedemption | unknown | ethereum | [`0x2aa497...0a1f9c`](./contracts/ethereum-1/0x2aa497d6c6cc0cce9a49ea70b0701092a10a1f9c/) | ⚠️ Unaudited |
| AuraBalStaker | core_logic | ethereum | 2 deployments: ethereum [`0xa3fcaf...a7e10e`](./contracts/ethereum-1/0xa3fcafca8150636c3b736a16cd73d49cc8a7e10e/); ethereum `0xac98c9...a9d0a2` | ⚠️ Unaudited |
| AuraClaimZapV3 | adapter | ethereum | 4 deployments: ethereum [`0x1bc4d5...2ae347`](./contracts/ethereum-1/0x1bc4d50d8785587f0d44f4296408e20f592ae347/); ethereum `0x3eb33f...a0215f`; ethereum `0x5b2364...1ad7f4`; ethereum `0xf8d544...ef8307` | ⚠️ Unaudited |
| AuraDistributor | operational_periphery | ethereum | [`0x96d15d...dba9a4`](./contracts/ethereum-1/0x96d15d08538a17a03b0210fd1626d5f42bdba9a4/) | ⚠️ Unaudited |
| AuraLockerModule | unknown | ethereum | 3 deployments: ethereum [`0x568f3d...c0dd73`](./contracts/ethereum-1/0x568f3df1b63af874e0f981831d0c4a6186c0dd73/); ethereum `0xbcfd07...55009a`; ethereum `0xd539ed...6d8f1a` | ⚠️ Unaudited |
| AuraMining | unknown | ethereum | [`0x744be6...855f52`](./contracts/ethereum-1/0x744be650cea753de1e69bf6bad3c98490a855f52/) | ⚠️ Unaudited |
| AuraRedemption | unknown | ethereum | 3 deployments: ethereum [`0x559f5f...a926d6`](./contracts/ethereum-1/0x559f5fa62dfbc5f22a4f7d36bd001acb27a926d6/); ethereum `0x928966...a5120c`; ethereum `0xa1b742...4952a3` | ⚠️ Unaudited |
| AuraRelockers | unknown | ethereum | [`0xfbd41e...592e63`](./contracts/ethereum-1/0xfbd41e0c4517a684c121aa7dda2fc462d9592e63/) | ⚠️ Unaudited |
| AuraViewHelpers | periphery | ethereum | [`0x129bbd...40c229`](./contracts/ethereum-1/0x129bbda5087e132983e7c20ae1f761333d40c229/) | ⚠️ Unaudited |
| AuraViewHelpersLite | periphery | gnosis | 7 deployments: optimism `0xbddac3...68c26b`; gnosis [`0x8f67bb...f13552`](./contracts/gnosis-100/0x8f67bb1f24eba8d123ae7f18c13b925ba7f13552/); polygon `0x9e4cbe...db812b`; fraxtal `0xbd2e14...4b029e`; base `0xbd2e14...4b029e`; base `0xce66e8...e41146`; arbitrum `0xb4e5fd...58cb4e` | ⚠️ Unaudited |
| Authorizer | unknown | optimism | 7 deployments: ethereum `0xa331d8...3f3ae6`; optimism [`0x5cf492...62a4b9`](./contracts/optimism-10/0x5cf4928a3205728bd12830e1840f7db85c62a4b9/); gnosis `0x7ba29f...3121cc`; polygon `0x681714...ff4bc0`; fraxtal `0xe39b5e...f549d5`; base `0x809b79...93213a`; arbitrum `0xe38816...0be5f7` | ⚠️ Unaudited |
| AuthorizerAdaptor | unknown | fraxtal | 3 deployments: ethereum `0x8f42ad...9add75`; fraxtal [`0x36cac2...b5a17c`](./contracts/fraxtal-252/0x36cac20dd805d128c1a6dd16eea845c574b5a17c/); base `0x6cad2e...509bc7` | ⚠️ Unaudited |
| AuthorizerAdaptorEntrypoint | unknown | optimism | 7 deployments: ethereum `0xf5decd...43a9ea`; optimism [`0x36cac2...b5a17c`](./contracts/optimism-10/0x36cac20dd805d128c1a6dd16eea845c574b5a17c/); gnosis [`0x36cac2...b5a17c`](./contracts/gnosis-100/0x36cac20dd805d128c1a6dd16eea845c574b5a17c/); polygon [`0x36cac2...b5a17c`](./contracts/polygon-137/0x36cac20dd805d128c1a6dd16eea845c574b5a17c/); fraxtal `0xb9f8ab...fd7b88`; base `0x9129e8...86b8dc`; arbitrum [`0x36cac2...b5a17c`](./contracts/arbitrum-42161/0x36cac20dd805d128c1a6dd16eea845c574b5a17c/) | ⚠️ Unaudited |
| AuthorizerWithAdaptorValidation | unknown | fraxtal | 2 deployments: fraxtal [`0x681714...ff4bc0`](./contracts/fraxtal-252/0x6817149cb753bf529565b4d023d7507ed2ff4bc0/); base `0xa69e0c...7e8eee` | ⚠️ Unaudited |
| BAL | unknown | optimism | [`0x5dbad7...2113cd`](./contracts/optimism-10/0x5dbad78818d4c8958eff2d5b95b28385a22113cd/) | ⚠️ Unaudited |
| BalancerSwapsHandler | unknown | ethereum | 3 deployments: ethereum [`0x5073dc...bc119d`](./contracts/ethereum-1/0x5073dc4072b23beb465f012d1be324bc0ebc119d/); ethereum `0xa2930d...8381ed`; ethereum `0xfa6b85...0be98e` | ⚠️ Unaudited |
| BALTokenHolderFactory | registry | ethereum | [`0xb848f5...4f2158`](./contracts/ethereum-1/0xb848f50141f3d4255b37ac288c25c109104f2158/) | ⚠️ Unaudited |
| BatchRelayerLibrary | periphery | gnosis | 12 deployments: ethereum `0x41b953...41b7ac`; ethereum `0xd02992...58d1f9`; ethereum `0xd966d7...f0b419`; optimism `0x96484f...f13b6d`; gnosis [`0x170206...68492d`](./contracts/gnosis-100/0x1702067424096f07a60e62ccee3de9420068492d/); polygon `0x268e2e...d9af42`; fraxtal `0x662112...f2c1b8`; base `0x82416c...a382c4`; base `0xaf779e...c80632`; base `0xdf9b5b...3be025`; arbitrum `0x96484f...f13b6d`; avalanche `0x36cac2...b5a17c` | ⚠️ Unaudited |
| BatchRouter | adapter | avalanche | 5 deployments: optimism `0xad8905...f8a85e`; gnosis `0xe2fa4e...9e285b`; arbitrum `0xad8905...f8a85e`; avalanche [`0xa523f4...4612dc`](./contracts/avalanche-43114/0xa523f47a933d5020b23629ddf689695aa94612dc/); avalanche `0xc9b360...d5988f` | ⚠️ Unaudited |
| Boost Delegation V2 | unknown | gnosis | 5 deployments: optimism `0x681714...ff4bc0`; gnosis [`0x5dbad7...2113cd`](./contracts/gnosis-100/0x5dbad78818d4c8958eff2d5b95b28385a22113cd/); polygon `0xd961e3...15e970`; arbitrum `0x6b5da7...399e2e`; avalanche `0xe39b5e...f549d5` | ⚠️ Unaudited |
| BoosterPlaceholder | core_logic | ethereum | 2 deployments: ethereum [`0xa2cf21...a86ee5`](./contracts/ethereum-1/0xa2cf21b157b2f203e37b616b619f438b5aa86ee5/); ethereum `0xd364e3...bfc71e` | ⚠️ Unaudited |
| BoosterRewardManager | core_logic | ethereum | [`0x817ff4...e82d24`](./contracts/ethereum-1/0x817ff43b8a18b8ab76485283e42b4bd632e82d24/) | ⚠️ Unaudited |
| BufferRouter | adapter | avalanche | 5 deployments: optimism `0x311334...358615`; gnosis `0x86e67e...e7bc2b`; arbitrum `0x311334...358615`; avalanche [`0x22625e...86b017`](./contracts/avalanche-43114/0x22625eedd92c81a219a83e1dc48f88d54786b017/); avalanche `0x681714...ff4bc0` | ⚠️ Unaudited |
| Burner | unknown | ethereum | [`0xba9801...20272d`](./contracts/ethereum-1/0xba9801acfdf3b8852865149d93acffef9120272d/) | ⚠️ Unaudited |
| CanonicalView | unknown | ethereum | [`0xbc4990...ac0b57`](./contracts/ethereum-1/0xbc4990b6607f456477d07c4dd80fb35258ac0b57/) | ⚠️ Unaudited |
| ChefRewardHook | unknown | ethereum | 4 deployments: ethereum [`0x0f29b7...7b51ed`](./contracts/ethereum-1/0x0f29b765be2de395cb6b10d9ead46975057b51ed/); ethereum `0x5e2706...a67897`; ethereum `0x93e85b...42b3a2`; ethereum `0x973c2f...43eaea` | ⚠️ Unaudited |
| ChefToken | token | ethereum | 4 deployments: ethereum [`0x4223aa...587c0f`](./contracts/ethereum-1/0x4223aa5bfd783dedcc54585cdc1cfe9ea1587c0f/); ethereum `0x745356...90d8bd`; ethereum `0x83d128...1fb565`; ethereum `0xe79d9a...60f6d0` | ⚠️ Unaudited |
| Child Liquidity Gauge | operational_periphery | avalanche | 4 deployments: fraxtal `0x4fb471...66c968`; base `0x59562f...c3324f`; base `0x9f7e65...b37013`; avalanche [`0x4132f7...e6e6c8`](./contracts/avalanche-43114/0x4132f7acc9db7a6cf7be2dd3a9dc8b30c7e6e6c8/) | ⚠️ Unaudited |
| ChildChainGaugeFactory | operational_periphery | polygon | 8 deployments: optimism `0xa523f4...4612dc`; gnosis `0x83e443...668cb8`; polygon [`0x22625e...86b017`](./contracts/polygon-137/0x22625eedd92c81a219a83e1dc48f88d54786b017/); fraxtal `0xc3ccac...a1bb68`; base `0x2498a2...29ba95`; base `0xb1a4fe...d9021f`; arbitrum `0x681714...ff4bc0`; avalanche `0xf23b4d...264843` | ⚠️ Unaudited |
| ChildGaugeVoteRewards | operational_periphery | optimism | 11 deployments: optimism [`0x286358...2acc01`](./contracts/optimism-10/0x2863582272a424234fce76d97099acbd432acc01/); optimism `0xc4ef94...38845d`; gnosis [`0x286358...2acc01`](./contracts/gnosis-100/0x2863582272a424234fce76d97099acbd432acc01/); gnosis `0xafac0e...2b016c`; polygon [`0x286358...2acc01`](./contracts/polygon-137/0x2863582272a424234fce76d97099acbd432acc01/); polygon `0x3eb33f...a0215f`; fraxtal `0xcbdcd8...23dc4e`; base [`0x286358...2acc01`](./contracts/base-8453/0x2863582272a424234fce76d97099acbd432acc01/); base `0xb4c68e...8608df`; arbitrum [`0x286358...2acc01`](./contracts/arbitrum-42161/0x2863582272a424234fce76d97099acbd432acc01/); arbitrum `0xee19ea...e238a6` | ⚠️ Unaudited |
| ChildStashRewardDistro | unknown | gnosis | 10 deployments: optimism `0x7372ec...bd2b66`; optimism `0xca85e2...627451`; gnosis [`0x1bec8f...b482c0`](./contracts/gnosis-100/0x1bec8fd56166ba66afb6d449e61b717fc9b482c0/); gnosis `0xca85e2...627451`; polygon `0x7e702e...50f265`; polygon `0xca85e2...627451`; base `0xca85e2...627451`; base `0xeccd03...62c67c`; arbitrum `0xca85e2...627451`; arbitrum `0xeeda9b...af9701` | ⚠️ Unaudited |
| CircuitBreakerLib | unknown | fraxtal | 5 deployments: optimism `0xe42ffa...42e467`; polygon `0x956cca...3d9288`; fraxtal [`0x7ba29f...3121cc`](./contracts/fraxtal-252/0x7ba29fe8e83dd6097a7298075c4affdbda3121cc/); base `0xef454a...865425`; arbitrum `0xe42ffa...42e467` | ⚠️ Unaudited |
| ClaimSignatureRegistry | registry | polygon | 19 deployments: optimism `0x56c8d8...864aeb`; optimism `0xc86ef8...be6100`; optimism `0xea6920...b8a687`; gnosis `0x90e065...827f2a`; gnosis `0xa12da7...98ce35`; gnosis `0xd5584b...dcce68`; polygon [`0x201efd...2a86cc`](./contracts/polygon-137/0x201efd508c8dfe9de1a13c2452863a78cb2a86cc/); polygon `0x4cb42f...a4ac4d`; polygon `0x7c1b7a...c78275`; fraxtal `0x311334...358615`; fraxtal `0x8e3fea...47dd52`; fraxtal `0xad8905...f8a85e`; arbitrum `0x23f387...b98ce4`; arbitrum `0x2b432b...47f290`; arbitrum `0x78ad1e...2a5417`; avalanche `0x45fb5a...972373`; avalanche `0x90bd26...c93694`; avalanche `0xdaa273...9b16d2`; avalanche `0xfd2142...f3128f` | ⚠️ Unaudited |
| ClaimVecrvFees | unknown | ethereum | [`0x494089...f15d0c`](./contracts/ethereum-1/0x4940896e635ea177f1095009be9ee9ef02f15d0c/) | ⚠️ Unaudited |
| ClaimZap | adapter | ethereum | 6 deployments: ethereum [`0x3f29cb...cf2516`](./contracts/ethereum-1/0x3f29cb4111cbda8081642da1f75b3c12decf2516/); ethereum `0x489097...3e6fa2`; ethereum `0x8cb38a...521889`; ethereum `0x92cf9e...a65070`; ethereum `0xab9f4b...d71f9b`; ethereum `0xdd49a9...5ec82b` | ⚠️ Unaudited |
| ComposableStablePoolFactory | registry | optimism | 19 deployments: ethereum `0xdba127...5c6e01`; ethereum `0xdc6d62...88837c`; ethereum `0xf9ac7b...6f875f`; optimism [`0x043a2d...625412`](./contracts/optimism-10/0x043a2dad730d585c44fb79d2614f295d2d625412/); optimism `0x4bdcc2...0eada7`; optimism `0x85a80a...853062`; gnosis `0x47b489...87b020`; gnosis `0x4bdcc2...0eada7`; gnosis `0x76578e...cda3a6`; polygon `0x85a80a...853062`; polygon `0xe2fa4e...9e285b`; polygon `0xeaedc3...aacf2e`; fraxtal `0x4bdcc2...0eada7`; base `0x8df317...579b88`; arbitrum `0x4bdcc2...0eada7`; arbitrum `0x85a80a...853062`; arbitrum `0xa89204...943ef1`; avalanche `0xb9f8ab...fd7b88`; avalanche `0xe42ffa...42e467` | ⚠️ Unaudited |
| CompositeLiquidityRouter | adapter | avalanche | 8 deployments: optimism `0xc9b360...d5988f`; gnosis `0x6ead84...b93938`; gnosis `0xc1a645...3227f0`; arbitrum `0x1311fb...5cc4d1`; arbitrum `0xc1a645...3227f0`; avalanche [`0x0c8f71...5dbb98`](./contracts/avalanche-43114/0x0c8f71d19f87c0bd1b9bad2484ecc3388d5dbb98/); avalanche `0x7a2535...fe8f05`; avalanche `0x96484f...f13b6d` | ⚠️ Unaudited |
| ConstantPriceFeed | operational_periphery | arbitrum | 4 deployments: optimism `0x4eff2d...ff4cb5`; gnosis `0xa0de07...b7c883`; arbitrum [`0x312600...70d431`](./contracts/arbitrum-42161/0x312600bc7645e47a4926dc658827398af070d431/); avalanche `0xd22eec...85d484` | ⚠️ Unaudited |
| CowSwapFeeBurner | unknown | gnosis | 13 deployments: optimism `0xf4743d...7241d7`; gnosis [`0x0e800d...92b106`](./contracts/gnosis-100/0x0e800d8d2e8b4694610aedc385aa6d763492b106/); gnosis `0x254f3a...5f83b0`; gnosis `0x309abc...138657`; gnosis `0x397bc4...69a1c7`; gnosis `0xae563e...758ea2`; gnosis `0xd22eec...85d484`; gnosis `0xfc0053...3d9cad`; arbitrum `0x774cb6...17eb94`; arbitrum `0x891ec9...017e0d`; arbitrum `0xbc169a...c96b77`; arbitrum `0xf39ca6...ab9015`; avalanche `0x9179c0...0e7b45` | ⚠️ Unaudited |
| CrvDepositorWrapperForwarder | unknown | ethereum | [`0x4e3e24...760b1a`](./contracts/ethereum-1/0x4e3e2424ee20d177e7749c58db0ac46327760b1a/) | ⚠️ Unaudited |
| CrvDepositorWrapperForwarderV2 | unknown | ethereum | [`0x9d6fc2...12ef8b`](./contracts/ethereum-1/0x9d6fc281587dc8a20f5e5cf9035c19751a12ef8b/) | ⚠️ Unaudited |
| CrvDepositorWrapperSwapper | adapter | ethereum | [`0x2a2a2e...f8682f`](./contracts/ethereum-1/0x2a2a2e691068cb1f61124c5a865756dca7f8682f/) | ⚠️ Unaudited |
| CrvDepositorWrapperWithFee | unknown | ethereum | [`0x6eb746...b27586`](./contracts/ethereum-1/0x6eb746a3f23d401f80ab033edeb65e1a8bb27586/) | ⚠️ Unaudited |
| CvxCrvRari | unknown | ethereum | [`0x4fc2a2...56b987`](./contracts/ethereum-1/0x4fc2a279ffddde98cb154f04375e69205156b987/) | ⚠️ Unaudited |
| CvxCrvStakingWrapper | unknown | ethereum | [`0xaa0c3f...dbe434`](./contracts/ethereum-1/0xaa0c3f5f7dfd688c6e646f66cd2a6b66acdbe434/) | ⚠️ Unaudited |
| CvxCrvUtilities | unknown | ethereum | [`0xadd2f5...29c673`](./contracts/ethereum-1/0xadd2f542f9ff06405fabf8cae4a74bd0fe29c673/) | ⚠️ Unaudited |
| CvxDistribution | unknown | ethereum | [`0x449f2f...d1ddc6`](./contracts/ethereum-1/0x449f2fd99174e1785cf2a1c79e665fec3dd1ddc6/) | ⚠️ Unaudited |
| cvxFpisStaking | unknown | ethereum | [`0xfa87db...6bc483`](./contracts/ethereum-1/0xfa87db3eaa93b7293021e38416650d2e666bc483/) | ⚠️ Unaudited |
| cvxFxsStaking | unknown | ethereum | [`0x49b4d1...37e31a`](./contracts/ethereum-1/0x49b4d1df40442f0c31b1bbaea3ede7c38e37e31a/) | ⚠️ Unaudited |
| CvxLocker | unknown | ethereum | 2 deployments: ethereum [`0x5ae0fc...ce56a1`](./contracts/ethereum-1/0x5ae0fca14ed08a3122ffb8d624e063e07bce56a1/); ethereum `0xd18140...94af50` | ⚠️ Unaudited |
| CvxLockerV2 | unknown | ethereum | [`0x72a193...2db86e`](./contracts/ethereum-1/0x72a19342e8f1838460ebfccef09f6585e32db86e/) | ⚠️ Unaudited |
| CvxMining | unknown | ethereum | [`0x3c75bf...de5343`](./contracts/ethereum-1/0x3c75bfe6fbfda3a94e7e7e8c2216afc684de5343/) | ⚠️ Unaudited |
| CvxStakingProxy | proxy | ethereum | 2 deployments: ethereum [`0x4401f1...7943fa`](./contracts/ethereum-1/0x4401f14970a874d27fad5c8a945292cbe97943fa/); ethereum `0xe096cc...44dfc3` | ⚠️ Unaudited |
| CvxStakingProxyV2 | proxy | ethereum | [`0xb5bbc8...586a4e`](./contracts/ethereum-1/0xb5bbc863bafe5006c68613b89130812a7b586a4e/) | ⚠️ Unaudited |
| DelegateRegistry | registry | ethereum | [`0x469788...015446`](./contracts/ethereum-1/0x469788fe6e9e9681c6ebf3bf78e7fd26fc015446/) | ⚠️ Unaudited |
| DistributionScheduler | unknown | ethereum | [`0xbfd976...d66e3c`](./contracts/ethereum-1/0xbfd9769b061e57e478690299011a028194d66e3c/) | ⚠️ Unaudited |
| DoubleEntrypointFixRelayer | unknown | ethereum | [`0xca96c4...da73c1`](./contracts/ethereum-1/0xca96c4f198d343e251b1a01f3eba061ef3da73c1/) | ⚠️ Unaudited |
| EclpLPOracleFactory | operational_periphery | avalanche | 4 deployments: optimism `0xc00ff7...e5426d`; gnosis `0x9dcf4e...e1691d`; arbitrum `0xd9e91f...e6479e`; avalanche [`0x1780e8...d943ab`](./contracts/avalanche-43114/0x1780e8185199dac45284039bb3e3b64060d943ab/) | ⚠️ Unaudited |
| ERC4626CowSwapFeeBurner | unknown | avalanche | 8 deployments: optimism `0x201efd...2a86cc`; optimism `0x7c1b7a...c78275`; gnosis `0x5915de...e2f941`; gnosis `0x7d92fc...7fdafa`; arbitrum `0x1cd776...b1d608`; arbitrum `0xd53f5d...102d83`; avalanche [`0x0b1120...e63911`](./contracts/avalanche-43114/0x0b11209b8c5e821b18ded147583b8978c3e63911/); avalanche `0x5c6fb4...bd9fdd` | ⚠️ Unaudited |
| ERC4626LinearPoolFactory | registry | base | 2 deployments: gnosis `0x4132f7...e6e6c8`; base [`0x161f40...028846`](./contracts/base-8453/0x161f4014c27773840ccb4ec1957113e6dd028846/) | ⚠️ Unaudited |
| ExternalWeightedMath | unknown | base | 2 deployments: fraxtal `0xa89204...943ef1`; base [`0x7920bf...c50cfd`](./contracts/base-8453/0x7920bfa1b2041911b354747ca7a6cdd2dfc50cfd/) | ⚠️ Unaudited |
| ExtraRewardStashModule | unknown | ethereum | [`0x48e529...07ce81`](./contracts/ethereum-1/0x48e529218743e41f6de5b7e8d552e8173707ce81/) | ⚠️ Unaudited |
| ExtraRewardStashTokenRescue | token | ethereum | 2 deployments: ethereum [`0x011403...436531`](./contracts/ethereum-1/0x01140351069af98416cc08b16424b9e765436531/); ethereum `0x9dc3de...cfc918` | ⚠️ Unaudited |
| FeeBridge | operational_periphery | ethereum | [`0xd43024...1410e9`](./contracts/ethereum-1/0xd430246142084ec68f7ab090cbd9252a1d1410e9/) | ⚠️ Unaudited |
| FeeDeposit | unknown | ethereum | [`0xcbec22...7323f7`](./contracts/ethereum-1/0xcbec22233dad5e15ab9c02caa4d914f3c97323f7/) | ⚠️ Unaudited |
| FeeDepositV2 | unknown | ethereum | 3 deployments: ethereum [`0x29dba2...999178`](./contracts/ethereum-1/0x29dba2751b5aa26f7d03657066c0984c66999178/); ethereum `0x7a527d...a0d769`; ethereum `0xf980a8...7306f9` | ⚠️ Unaudited |
| FeeDistributor | operational_periphery | ethereum | [`0x267439...5a61c9`](./contracts/ethereum-1/0x26743984e3357efc59f2fd6c1afdc310335a61c9/) | ⚠️ Unaudited |
| FeeReceiverCvxFpis | unknown | ethereum | [`0x3a562a...9e08e0`](./contracts/ethereum-1/0x3a562a8ceb9866bcf39bb5eda32f282d619e08e0/) | ⚠️ Unaudited |
| FeeReceiverCvxFxs | unknown | ethereum | 2 deployments: ethereum [`0x31c5e6...3f8f24`](./contracts/ethereum-1/0x31c5e6d1891d2af49dec041d41a3a663e03f8f24/); ethereum `0xa1b724...43622a` | ⚠️ Unaudited |
| FeeReceiverPlatform | unknown | ethereum | [`0xd60d80...ec36cf`](./contracts/ethereum-1/0xd60d80d9c184d4f02ff1711844aaa4e94bec36cf/) | ⚠️ Unaudited |
| FeeReceiverVeFxs | unknown | ethereum | 2 deployments: ethereum [`0x6f94fe...717624`](./contracts/ethereum-1/0x6f94fe4dadd7a6f4ce67e607bab531a9d1717624/); ethereum `0x871b36...830b56` | ⚠️ Unaudited |
| FeeReceiverVlCvx | unknown | ethereum | [`0xb9a212...d2c2b8`](./contracts/ethereum-1/0xb9a2120f32420f0da2777ee07beeea92d3d2c2b8/) | ⚠️ Unaudited |
| FeeRegistry | registry | ethereum | 2 deployments: ethereum [`0x7a299a...2394e3`](./contracts/ethereum-1/0x7a299a6f5bc33c7e3c8ba5bbdebeba8a012394e3/); ethereum `0xc9acb8...b3c46d` | ⚠️ Unaudited |
| FeeScheduler | unknown | ethereum | [`0x1a6527...6718b4`](./contracts/ethereum-1/0x1a65276a9b6a0611506763839b1ffae3e86718b4/) | ⚠️ Unaudited |
| FixedPriceLBPoolFactory | operational_periphery | arbitrum | 2 deployments: gnosis `0xd9e91f...e6479e`; arbitrum [`0x7f246e...b26e0d`](./contracts/arbitrum-42161/0x7f246e7bab4cdc8c7ab41eada8290009a5b26e0d/) | ⚠️ Unaudited |
| ForwarderHandler | unknown | ethereum | [`0x7663fd...9fcca1`](./contracts/ethereum-1/0x7663fd322021d5b1f36dbf0c97d34cfa039fcca1/) | ⚠️ Unaudited |
| FpisDepositor | unknown | ethereum | [`0x27445d...a7a04b`](./contracts/ethereum-1/0x27445d3f59d6b966072abe20e41a29fbb6a7a04b/) | ⚠️ Unaudited |
| FpisRewardHook | unknown | ethereum | [`0xb93989...a3238d`](./contracts/ethereum-1/0xb93989b104a3bc2eba16210748cecdf76ea3238d/) | ⚠️ Unaudited |
| FxsDepositor | unknown | ethereum | [`0x8f55d7...a3181e`](./contracts/ethereum-1/0x8f55d7c21bdff1a51afaa60f3de7590222a3181e/) | ⚠️ Unaudited |
| FXSRewardHook | unknown | ethereum | 3 deployments: ethereum [`0x1a6980...78f1f7`](./contracts/ethereum-1/0x1a6980170fd45bdebf5902b597c53a2a0678f1f7/); ethereum `0x63ad87...1ba175`; ethereum `0xb32eac...638cbc` | ⚠️ Unaudited |
| GaugeAdder | operational_periphery | ethereum | 3 deployments: ethereum [`0x2ffb7b...98f26a`](./contracts/ethereum-1/0x2ffb7b215ae7f088ec2530c7aa8e1b24e398f26a/); ethereum `0xc33e0f...5cdb5b`; ethereum `0xed5ba5...075fe2` | ⚠️ Unaudited |
| GaugeAdderMigrationCoordinator | operational_periphery | ethereum | [`0x1b57f6...2daea7`](./contracts/ethereum-1/0x1b57f637ce3408f1f834b0b70f9a595b062daea7/) | ⚠️ Unaudited |
| GaugeControllerQuerier | operational_periphery | ethereum | [`0x8e5698...9db97c`](./contracts/ethereum-1/0x8e5698dc4897dc12243c8642e77b4f21349db97c/) | ⚠️ Unaudited |
| GaugeExtraRewardDistributor | operational_periphery | ethereum | 6 deployments: ethereum [`0x04bb59...510330`](./contracts/ethereum-1/0x04bb59bd617f06eeeee00caeaffc8f3b68510330/); ethereum `0x2365fd...189712`; ethereum `0x318171...ce0ccc`; ethereum `0x395a89...6158cd`; ethereum `0x3f78e6...730852`; ethereum `0x4c586e...cbdc57` | ⚠️ Unaudited |
| GaugeVoteRewards | operational_periphery | ethereum | 3 deployments: ethereum [`0x26094f...d72a4e`](./contracts/ethereum-1/0x26094f9a6a498c1fccd8ff65829f55fb8bd72a4e/); ethereum `0x54231c...35189b`; ethereum `0xff209e...f39b23` | ⚠️ Unaudited |
| GaugeVoterModule | operational_periphery | ethereum | [`0x2b5ac8...381621`](./contracts/ethereum-1/0x2b5ac82c5e934407514768ce3e399d9c18381621/) | ⚠️ Unaudited |
| GaugeWorkingBalanceHelper | operational_periphery | fraxtal | 2 deployments: fraxtal [`0x83e443...668cb8`](./contracts/fraxtal-252/0x83e443ef4f9963c77bd860f94500075556668cb8/); base `0xa7d524...738d48` | ⚠️ Unaudited |
| GearboxLinearPoolFactory | registry | base | [`0x9dd326...07bd62`](./contracts/base-8453/0x9dd32684176638d977883448a4c914311c07bd62/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0xb370eb...93bf46`](./contracts/ethereum-1/0xb370ebd7ded0c87b4509ff6f13f07b7f1693bf46/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | optimism | 11 deployments: optimism [`0x57acb7...7ad478`](./contracts/optimism-10/0x57acb721fcf3d900b480a90a55191cf8f37ad478/); optimism `0xd86ceb...66d68b`; gnosis [`0x57acb7...7ad478`](./contracts/gnosis-100/0x57acb721fcf3d900b480a90a55191cf8f37ad478/); gnosis `0xd86ceb...66d68b`; polygon [`0x57acb7...7ad478`](./contracts/polygon-137/0x57acb721fcf3d900b480a90a55191cf8f37ad478/); polygon `0xd86ceb...66d68b`; base [`0x57acb7...7ad478`](./contracts/base-8453/0x57acb721fcf3d900b480a90a55191cf8f37ad478/); base `0xd86ceb...66d68b`; arbitrum [`0x57acb7...7ad478`](./contracts/arbitrum-42161/0x57acb721fcf3d900b480a90a55191cf8f37ad478/); arbitrum `0xd86ceb...66d68b`; avalanche [`0x57acb7...7ad478`](./contracts/avalanche-43114/0x57acb721fcf3d900b480a90a55191cf8f37ad478/) | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | registry | gnosis | 10 deployments: optimism `0x4b979e...99729c`; optimism `0x99364f...c52c58`; gnosis [`0x1c58cc...2dfaf9`](./contracts/gnosis-100/0x1c58cc548a23956469c7c528bb3a846c842dfaf9/); gnosis `0x7fa49d...6f6faa`; arbitrum `0x64b7df...0f5bcf`; arbitrum `0x65a22e...113a9f`; arbitrum `0x6ead84...b93938`; avalanche `0x312600...70d431`; avalanche `0x8e3fea...47dd52`; avalanche `0xe2fa4e...9e285b` | ⚠️ Unaudited |
| GyroECLPPoolFactory | registry | gnosis | 9 deployments: optimism `0x22625e...86b017`; optimism `0x53eff5...c479ef`; gnosis [`0x1c53af...f7fcc1`](./contracts/gnosis-100/0x1c53af9d683a4424d03f61d70d9f6bc53af7fcc1/); base `0x5f6848...f082e3`; arbitrum `0x268e2e...d9af42`; arbitrum `0xe31715...928479`; avalanche `0x268e2e...d9af42`; avalanche `0x83e443...668cb8`; avalanche `0x86a0e9...8fd12c` | ⚠️ Unaudited |
| Harvester | operational_periphery | ethereum | [`0x6d6bca...86e1e7`](./contracts/ethereum-1/0x6d6bcac2266468a44da9fa482ca54aaed586e1e7/) | ⚠️ Unaudited |
| HHChefClaimBriberModule | operational_periphery | ethereum | [`0xe25651...dd0f4b`](./contracts/ethereum-1/0xe2565158e9984fd736002f58e2777260f2dd0f4b/) | ⚠️ Unaudited |
| HHRewardsClaimForwarderModule | unknown | ethereum | [`0xb034e7...d80aa0`](./contracts/ethereum-1/0xb034e7ac8395fb373bbf8cb4c09cc4d4c1d80aa0/) | ⚠️ Unaudited |
| InterestRateCalculatorV2 | operational_periphery | ethereum | [`0x1972b5...bc14f7`](./contracts/ethereum-1/0x1972b5d65a690de0bc36278ac93d47fd98bc14f7/) | ⚠️ Unaudited |
| JointVaultManager | core_logic | ethereum | 2 deployments: ethereum [`0x599113...dfb9ec`](./contracts/ethereum-1/0x599113b0403e3fa613c318af0bf75826bedfb9ec/); ethereum `0x8fc0d6...8a3b84` | ⚠️ Unaudited |
| L1PoolManagerProxy | core_logic | ethereum | [`0x54f2de...27a14d`](./contracts/ethereum-1/0x54f2dec216dffb9174edb0d53910bada5227a14d/) | ⚠️ Unaudited |
| LBPMigrationRouter | operational_periphery | arbitrum | 4 deployments: gnosis `0xcb3fe6...01c9e7`; gnosis `0xf9309a...9a2c33`; arbitrum [`0x99364f...c52c58`](./contracts/arbitrum-42161/0x99364f84d1c68d87aead0ce92eb47409a0c52c58/); arbitrum `0xfc2986...a95832` | ⚠️ Unaudited |
| LBPoolFactory | registry | avalanche | 13 deployments: optimism `0xc1a645...3227f0`; gnosis `0x2faa14...1e4e91`; gnosis `0x53eff5...c479ef`; gnosis `0x6ee18f...e3cb3f`; gnosis `0x89aa28...00ae66`; gnosis `0xa59f16...0b908c`; gnosis `0xa9aeeb...ad1103`; gnosis `0xc19f5f...7a4820`; arbitrum `0x4bb42f...3a42ff`; arbitrum `0x8d217c...1c4818`; arbitrum `0xf9309a...9a2c33`; avalanche [`0x25ea7b...ef1925`](./contracts/avalanche-43114/0x25ea7b202cd8447e8e6f4a7c59b19c66dfef1925/); avalanche `0x3beb05...429ace` | ⚠️ Unaudited |
| LiquidityBootstrappingPoolFactory | registry | ethereum | [`0x751a0b...1c87de`](./contracts/ethereum-1/0x751a0bc0e3f75b38e01cf25bfce7ff36de1c87de/) | ⚠️ Unaudited |
| LiquidityGaugeFactory | operational_periphery | ethereum | 2 deployments: ethereum [`0x4e7bbd...5412ec`](./contracts/ethereum-1/0x4e7bbd911cf1efa442bc1b2e9ea01ffe785412ec/); ethereum `0xf1665e...cc5b65` | ⚠️ Unaudited |
| LockerAdmin | unknown | ethereum | [`0x98e28a...0d418c`](./contracts/ethereum-1/0x98e28afb9c11aa979ae754e1ea2e9877cb0d418c/) | ⚠️ Unaudited |
| ManagedPoolAddRemoveTokenLib | core_logic | fraxtal | 5 deployments: optimism `0xf24917...b9fd39`; polygon `0xe42ffa...42e467`; fraxtal [`0x6b5da7...399e2e`](./contracts/fraxtal-252/0x6b5da774890db7b7b96c6f44e6a4b0f657399e2e/); base `0xb19382...377b75`; arbitrum `0xf24917...b9fd39` | ⚠️ Unaudited |
| ManagedPoolAmmLib | core_logic | fraxtal | 2 deployments: fraxtal [`0x043a2d...625412`](./contracts/fraxtal-252/0x043a2dad730d585c44fb79d2614f295d2d625412/); base `0x7d2248...d28c9a` | ⚠️ Unaudited |
| ManagedPoolFactory | registry | fraxtal | 5 deployments: optimism `0x956cca...3d9288`; polygon `0x9ac3e7...fd1f5b`; fraxtal [`0x7a2535...fe8f05`](./contracts/fraxtal-252/0x7a2535f5fb47b8e44c02ef5d9990588313fe8f05/); base `0x9a62c9...20134d`; arbitrum `0x956cca...3d9288` | ⚠️ Unaudited |
| MerkleAirdropFactory | operational_periphery | ethereum | [`0xa1bc2c...142991`](./contracts/ethereum-1/0xa1bc2cf69d474b39b91665e24e7f2606ed142991/) | ⚠️ Unaudited |
| MerkleOrchard | operational_periphery | polygon | 8 deployments: ethereum `0xdae7e3...b4efca`; polygon [`0x4fb471...66c968`](./contracts/polygon-137/0x4fb47126fa83a8734991e41b942ac29a3266c968/); polygon `0x5cf492...62a4b9`; polygon `0x9805dc...764102`; polygon `0x9da189...7e017c`; polygon `0xc3ccac...a1bb68`; polygon `0xe38816...0be5f7`; arbitrum `0x9805dc...764102` | ⚠️ Unaudited |
| MevCaptureHook | unknown | optimism | 4 deployments: optimism [`0x3630d2...eeaf5b`](./contracts/optimism-10/0x3630d26e51c03026f4f063d69d65f8e234eeaf5b/); gnosis `0xa1d079...05322c`; arbitrum `0x5b42ec...81c1e9`; avalanche `0x6ead84...b93938` | ⚠️ Unaudited |
| MockERC4626Token | token | base | [`0x4638ab...f1551c`](./contracts/base-8453/0x4638ab64022927c9bd5947607459d13f57f1551c/) | ⚠️ Unaudited |
| MockGearboxDieselToken | token | base | [`0xb521dd...760ce4`](./contracts/base-8453/0xb521dd5c8e13fe202626cac98873fea2b7760ce4/) | ⚠️ Unaudited |
| MockGearboxVault | core_logic | base | [`0x79e435...05ea6c`](./contracts/base-8453/0x79e435875ccee3cd9e8da23fe34f9a011d05ea6c/) | ⚠️ Unaudited |
| MockStaticAToken | token | gnosis | 5 deployments: ethereum `0x98c57b...8bd65d`; ethereum `0xba54bb...459a5f`; ethereum `0xf9f5e0...673080`; gnosis [`0x5cf492...62a4b9`](./contracts/gnosis-100/0x5cf4928a3205728bd12830e1840f7db85c62a4b9/); base `0x698cae...2bcda4` | ⚠️ Unaudited |
| MockVault | core_logic | gnosis | 4 deployments: optimism `0xe38816...0be5f7`; gnosis [`0x043a2d...625412`](./contracts/gnosis-100/0x043a2dad730d585c44fb79d2614f295d2d625412/); polygon `0x6b5da7...399e2e`; arbitrum `0x4fb471...66c968` | ⚠️ Unaudited |
| MultiRewards | unknown | ethereum | [`0xafd3d3...0a96ca`](./contracts/ethereum-1/0xafd3d38fecebcdda6d934979d4ac7f17330a96ca/) | ⚠️ Unaudited |
| NoProtocolFeeLiquidityBootstrappingPoolFactory | registry | base | 4 deployments: ethereum `0x0f3e0c...57c54e`; gnosis `0x85a80a...853062`; fraxtal `0x956cca...3d9288`; base [`0x0c6052...18828f`](./contracts/base-8453/0x0c6052254551eae3ecac77b01dfcf1025418828f/) | ⚠️ Unaudited |
| NullVotingEscrow | operational_periphery | gnosis | 8 deployments: optimism `0xc3ccac...a1bb68`; gnosis [`0x013d43...6b2c92`](./contracts/gnosis-100/0x013d4382f291be5688afbcc741ee8a24c66b2c92/); polygon `0x1311fb...5cc4d1`; polygon `0x311334...358615`; polygon `0xad8905...f8a85e`; fraxtal `0x5cf492...62a4b9`; base `0x475d18...0fa229`; arbitrum `0x9da189...7e017c` | ⚠️ Unaudited |
| OptimismBridgeSender | operational_periphery | optimism | 5 deployments: optimism [`0x045125...a0bacd`](./contracts/optimism-10/0x0451255563e2aca170b2552111837572e7a0bacd/); optimism `0x25d030...9f5e3f`; optimism `0x7e702e...50f265`; optimism `0x8d803f...1f7727`; base `0xc83da6...782549` | ⚠️ Unaudited |
| OptimismRootGaugeFactory | operational_periphery | ethereum | 2 deployments: ethereum [`0x3083a1...73c5c8`](./contracts/ethereum-1/0x3083a1c455ff38d39e58dbac5040f465cf73c5c8/); ethereum `0x866d4b...940a36` | ⚠️ Unaudited |
| PolygonBridgeSender | operational_periphery | polygon | 2 deployments: polygon [`0x25e7c5...f4f669`](./contracts/polygon-137/0x25e7c574c4016e09f608971f97c3b09a6cf4f669/); polygon `0x8ba971...fdf8e0` | ⚠️ Unaudited |
| PolygonRootGaugeFactory | operational_periphery | ethereum | 2 deployments: ethereum [`0x4c4287...b64e34`](./contracts/ethereum-1/0x4c4287b07d293e361281bceee8715c8cdeb64e34/); ethereum `0xa98bce...2f8f13` | ⚠️ Unaudited |
| PoolFeeManagerProxy | core_logic | ethereum | [`0xd0521c...8bd687`](./contracts/ethereum-1/0xd0521c061958324d06b8915ffdac3db22c8bd687/) | ⚠️ Unaudited |
| PoolHarvestHook | operational_periphery | ethereum | [`0xe4d89e...729f9a`](./contracts/ethereum-1/0xe4d89e8267d2e8f03f751fa807b3bbdb36729f9a/) | ⚠️ Unaudited |
| PoolManagerShutdownProxy | core_logic | ethereum | [`0x73b1b1...27889f`](./contracts/ethereum-1/0x73b1b12065d0ae21dff4848d5871ca2a5227889f/) | ⚠️ Unaudited |
| PoolManagerTertiaryProxy | core_logic | ethereum | 2 deployments: ethereum [`0x0ff339...feb3b2`](./contracts/ethereum-1/0x0ff33996d846200d5ada1a58aeb62c1b09feb3b2/); ethereum `0x7ce805...9a0792` | ⚠️ Unaudited |
| PoolManagerV2 | core_logic | ethereum | [`0xae5f31...500183`](./contracts/ethereum-1/0xae5f315a5b5dd4dbacd38862562a51490e500183/) | ⚠️ Unaudited |
| PoolPauseHelper | core_logic | optimism | 8 deployments: optimism [`0x136f1e...1778d1`](./contracts/optimism-10/0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1/); optimism `0x16b50f...7ae5db`; gnosis `0x64b7df...0f5bcf`; gnosis `0xdaa273...9b16d2`; arbitrum `0x1780e8...d943ab`; arbitrum `0x9d2917...e3f521`; avalanche `0x30ff09...308d7e`; avalanche `0x891ec9...017e0d` | ⚠️ Unaudited |
| PoolRecoveryHelper | core_logic | base | 5 deployments: ethereum `0x1b300c...c133db`; ethereum `0xcd59e5...7fb266`; gnosis `0xc3ccac...a1bb68`; fraxtal `0x76578e...cda3a6`; base [`0x03f3fb...712054`](./contracts/base-8453/0x03f3fb107e74f2eac9358862e91ad3c692712054/) | ⚠️ Unaudited |
| PoolRegistry | registry | ethereum | [`0x41a588...851a69`](./contracts/ethereum-1/0x41a5881c17185383e19df6fa4ec158a6f4851a69/) | ⚠️ Unaudited |
| PoolRewardHook | core_logic | ethereum | [`0x723f9a...cd4a96`](./contracts/ethereum-1/0x723f9aa67fdd9b0e375ef8553eb2afc28ecd4a96/) | ⚠️ Unaudited |
| PoolSwapFeeHelper | core_logic | gnosis | 14 deployments: optimism `0x1cd776...b1d608`; optimism `0x355bd3...53ad95`; optimism `0xbdbadc...7d6ff1`; gnosis [`0x03cbcc...dff36f`](./contracts/gnosis-100/0x03cbccbe8d2073a1dc186ae6bcd95390fcdff36f/); gnosis `0x2b432b...47f290`; gnosis `0x56c8d8...864aeb`; polygon `0x18cc3c...94f71b`; fraxtal `0xdb8d75...a1bd3a`; arbitrum `0x5939ab...841fab`; arbitrum `0xb96524...ba40e9`; arbitrum `0xdada7b...c92d49`; avalanche `0x9d2917...e3f521`; avalanche `0xb21a27...815c8a`; avalanche `0xb96524...ba40e9` | ⚠️ Unaudited |
| PoolTypes | core_logic | ethereum | 2 deployments: ethereum [`0x52d85e...a78a9c`](./contracts/ethereum-1/0x52d85e14bf2bfb16ed4a8f3b5a0c8fc0baa78a9c/); ethereum `0x85152a...891246` | ⚠️ Unaudited |
| PoolUtilities | core_logic | ethereum | 3 deployments: ethereum [`0x5fba69...8e5cd1`](./contracts/ethereum-1/0x5fba69a794f395184b5760daf1134028608e5cd1/); ethereum `0x8f8459...85fbca`; ethereum `0xfcb28d...0749cf` | ⚠️ Unaudited |
| ProtocolFeeController | governance | base | 4 deployments: optimism `0xdb8d75...a1bd3a`; base [`0x2ff226...4e5363`](./contracts/base-8453/0x2ff226cd12c80511a641a6101f071d853a4e5363/); avalanche `0x3630d2...eeaf5b`; avalanche `0x9da189...7e017c` | ⚠️ Unaudited |
| ProtocolFeeControllerMigration | operational_periphery | base | [`0x1b6f05...f17e59`](./contracts/base-8453/0x1b6f057520b4e826271d47b8bdab98e35af17e59/) | ⚠️ Unaudited |
| ProtocolFeeHelper | periphery | arbitrum | 8 deployments: optimism `0x774cb6...17eb94`; optimism `0xcc267d...3a7a4e`; gnosis `0x6eaff7...7872c3`; gnosis `0xcc267d...3a7a4e`; arbitrum [`0x30ff09...308d7e`](./contracts/arbitrum-42161/0x30ff095e22dda9751b5e1a67928611dcb6308d7e/); arbitrum `0xea6920...b8a687`; avalanche `0xa1d079...05322c`; avalanche `0xcf7608...29158c` | ⚠️ Unaudited |
| ProtocolFeePercentagesProvider | unknown | ethereum | 3 deployments: ethereum [`0x97207b...b90c4a`](./contracts/ethereum-1/0x97207b095e4d5c9a6e4cfbfcd2c3358e03b90c4a/); fraxtal `0xf23b4d...264843`; base `0xded7fe...e6695d` | ⚠️ Unaudited |
| ProtocolFeeSweeper | unknown | arbitrum | 9 deployments: optimism `0x4cb42f...a4ac4d`; optimism `0x86e67e...e7bc2b`; gnosis `0x1bca39...716b1c`; gnosis `0x5939ab...841fab`; arbitrum [`0x136f1e...1778d1`](./contracts/arbitrum-42161/0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1/); arbitrum `0x3beb05...429ace`; avalanche `0x5b42ec...81c1e9`; avalanche `0x662112...f2c1b8`; avalanche `0xb9d01c...20ab14` | ⚠️ Unaudited |
| ProtocolFeesWithdrawer | operational_periphery | ethereum | 4 deployments: ethereum [`0x5ef4c5...bd23c5`](./contracts/ethereum-1/0x5ef4c5352882b10893b70dbcaa0c000965bd23c5/); ethereum `0x8c8951...5654a7`; fraxtal `0x85a80a...853062`; base `0xacf05b...996650` | ⚠️ Unaudited |
| ProtocolIdRegistry | registry | arbitrum | 6 deployments: optimism `0x9805dc...764102`; gnosis `0x6b5da7...399e2e`; polygon `0xa523f4...4612dc`; fraxtal `0x9dd5db...3915e1`; base `0x682f0d...e27589`; arbitrum [`0x5cf492...62a4b9`](./contracts/arbitrum-42161/0x5cf4928a3205728bd12830e1840f7db85c62a4b9/) | ⚠️ Unaudited |
| RAuraRedemption | unknown | ethereum | [`0xc44d36...e88bc8`](./contracts/ethereum-1/0xc44d3604a332b71e2e6a87a714614a505ee88bc8/) | ⚠️ Unaudited |
| ReClammPoolFactory | registry | optimism | 8 deployments: optimism [`0x0b1120...e63911`](./contracts/optimism-10/0x0b11209b8c5e821b18ded147583b8978c3e63911/); optimism `0x891ec9...017e0d`; gnosis `0x1780e8...d943ab`; gnosis `0xc86ef8...be6100`; arbitrum `0x355bd3...53ad95`; arbitrum `0xa1d079...05322c`; avalanche `0x1cd776...b1d608`; avalanche `0x309abc...138657` | ⚠️ Unaudited |
| RecoveryModeHelper | periphery | fraxtal | 2 deployments: fraxtal [`0x013d43...6b2c92`](./contracts/fraxtal-252/0x013d4382f291be5688afbcc741ee8a24c66b2c92/); base `0x313a8d...0be053` | ⚠️ Unaudited |
| RefundLogic | unknown | ethereum | [`0x243347...ed53fd`](./contracts/ethereum-1/0x2433477a10fc5d31b9513c638f19ee85caed53fd/) | ⚠️ Unaudited |
| RescueToken | token | ethereum | [`0xb15ffb...5aaac9`](./contracts/ethereum-1/0xb15ffb543211b558d40160811e5dcbcd7d5aaac9/) | ⚠️ Unaudited |
| Router | adapter | arbitrum | 7 deployments: optimism `0xe2fa4e...9e285b`; gnosis `0x4eff2d...ff4cb5`; gnosis `0x84813a...a63617`; arbitrum [`0x0f08ee...347b7c`](./contracts/arbitrum-42161/0x0f08eef2c785aa5e7539684af04755dec1347b7c/); arbitrum `0xeaedc3...aacf2e`; avalanche `0x4bdcc2...0eada7`; avalanche `0xf39ca6...ab9015` | ⚠️ Unaudited |
| SingleRecipientGaugeFactory | operational_periphery | ethereum | [`0x94f68b...72d227`](./contracts/ethereum-1/0x94f68b54191f62f781fe8298a8a5fa3ed772d227/) | ⚠️ Unaudited |
| SmartWalletChecker | unknown | ethereum | [`0x786929...1c826c`](./contracts/ethereum-1/0x7869296efd0a76872fee62a058c8fbca5c1c826c/) | ⚠️ Unaudited |
| SmartWalletCheckerCoordinator | unknown | ethereum | [`0x26575a...5624ea`](./contracts/ethereum-1/0x26575a44755e0aaa969fdda1e4291df22c5624ea/) | ⚠️ Unaudited |
| SNXRecoveryCoordinator | unknown | ethereum | [`0x56a1ba...d0cb31`](./contracts/ethereum-1/0x56a1baf2f7a163ce66067f0062da60930dd0cb31/) | ⚠️ Unaudited |
| StableLPOracleFactory | operational_periphery | avalanche | 12 deployments: optimism `0xa0de07...b7c883`; optimism `0xb96524...ba40e9`; optimism `0xc4c494...1cf468`; gnosis `0x4efcd8...0f3228`; gnosis `0xbf9419...29f12c`; gnosis `0xfa80c1...dccba5`; arbitrum `0x816e90...eeb308`; arbitrum `0xa59f16...0b908c`; arbitrum `0xc09244...48834b`; avalanche [`0x254f3a...5f83b0`](./contracts/avalanche-43114/0x254f3a2974b97dc2e675f6115c845567c55f83b0/); avalanche `0x4eff2d...ff4cb5`; avalanche `0x5939ab...841fab` | ⚠️ Unaudited |
| StablePhantomPoolFactory | registry | ethereum | [`0xb08e16...6cbfd2`](./contracts/ethereum-1/0xb08e16cfc07c684daa2f93c70323badb2a6cbfd2/) | ⚠️ Unaudited |
| StablePoolFactory | registry | avalanche | 12 deployments: ethereum `0x8df6ef...bf987c`; optimism `0x1780e8...d943ab`; optimism `0x268e2e...d9af42`; gnosis `0x22625e...86b017`; gnosis `0x9338f9...55962d`; gnosis `0xf23b4d...264843`; base `0xc49ca9...97950c`; arbitrum `0x1fc7f1...fec08c`; arbitrum `0xeb1eea...ae3863`; avalanche [`0x16b50f...7ae5db`](./contracts/avalanche-43114/0x16b50f6bf8c8ca73c07e17762188c5deee7ae5db/); avalanche `0x170206...68492d`; avalanche `0xeaedc3...aacf2e` | ⚠️ Unaudited |
| StableSurgeHook | unknown | arbitrum | 5 deployments: optimism `0xf39ca6...ab9015`; gnosis `0x90bd26...c93694`; arbitrum [`0x7c1b7a...c78275`](./contracts/arbitrum-42161/0x7c1b7a97bfacd39975de53e989a16c7bc4c78275/); avalanche `0x86705e...83d122`; avalanche `0xad8905...f8a85e` | ⚠️ Unaudited |
| StableSurgePoolFactory | registry | avalanche | 11 deployments: optimism `0x3beb05...429ace`; optimism `0xfd2142...f3128f`; gnosis `0x268e2e...d9af42`; gnosis `0x45fb5a...972373`; gnosis `0x59d55f...3255dd`; arbitrum `0x201efd...2a86cc`; arbitrum `0x86e67e...e7bc2b`; arbitrum `0x8a8b9f...a2ea88`; avalanche [`0x18cc3c...94f71b`](./contracts/avalanche-43114/0x18cc3c68a5e64b40c846aa6e45312cbcbb94f71b/); avalanche `0x311334...358615`; avalanche `0x8d217c...1c4818` | ⚠️ Unaudited |
| StakingProxyERC20 | token | ethereum | 4 deployments: ethereum [`0x1d0c89...476d80`](./contracts/ethereum-1/0x1d0c890236261c3a2440af03ab10654e60476d80/); ethereum `0x2628b2...a7bbb6`; ethereum `0x86a3fb...c14bef`; ethereum `0xe0a691...befdf4` | ⚠️ Unaudited |
| StakingProxyERC20Joint | token | ethereum | 2 deployments: ethereum [`0x64167f...111181`](./contracts/ethereum-1/0x64167f69a10ab360a8c45b8c7db31d7752111181/); ethereum `0x6452a3...f96ffa` | ⚠️ Unaudited |
| StashFactory | registry | ethereum | 3 deployments: ethereum [`0x73f88b...7bd87c`](./contracts/ethereum-1/0x73f88bfc32f5946b0e0851ca53f277fe177bd87c/); ethereum `0x877288...47de75`; ethereum `0xf40d54...807cae` | ⚠️ Unaudited |
| StashRewardDistro | unknown | ethereum | 4 deployments: ethereum [`0x2db7d4...a15f9c`](./contracts/ethereum-1/0x2db7d4f89de7ac7fbb31422d51ec3a7c7aa15f9c/); ethereum `0x74d2e0...241298`; ethereum `0xd3a5b6...f998f1`; fraxtal `0xb82434...3e8bd3` | ⚠️ Unaudited |
| StashTokenWrapper | token | ethereum | [`0xc19cf0...a13eb7`](./contracts/ethereum-1/0xc19cf0eaa43ee080c3cb8fb7db388091d3a13eb7/) | ⚠️ Unaudited |
| TimelockAuthorizerMigrator | governance | ethereum | 4 deployments: ethereum [`0x657dee...f05e8d`](./contracts/ethereum-1/0x657dee983987e1a79a996d972fe68411aef05e8d/); ethereum `0x67ae4c...51ab53`; ethereum `0xf8ee6f...bc062b`; ethereum `0xfbf475...30bd7c` | ⚠️ Unaudited |
| TkMrsR | unknown | ethereum | [`0xcf0a32...382018`](./contracts/ethereum-1/0xcf0a32bbef8f064969f21f7e02328fb577382018/) | ⚠️ Unaudited |
| TreasuryFunds | operational_periphery | ethereum | 2 deployments: ethereum [`0x138938...541bb7`](./contracts/ethereum-1/0x1389388d01708118b497f59521f6943be2541bb7/); ethereum `0x9402eb...f248d1` | ⚠️ Unaudited |
| TreasuryLend | operational_periphery | ethereum | [`0x04dd97...bd207f`](./contracts/ethereum-1/0x04dd97255ddee29c941d85f5b5cde6ace8bd207f/) | ⚠️ Unaudited |
| TreasuryManager | operational_periphery | ethereum | 2 deployments: ethereum [`0x858847...750361`](./contracts/ethereum-1/0x858847c21b075e45727fcb0b544bd843cd750361/); ethereum `0xeb8121...6de6b3` | ⚠️ Unaudited |
| TreasuryRegistry | operational_periphery | ethereum | [`0xcab2bb...ac4507`](./contracts/ethereum-1/0xcab2bb34eeaa177bd8d36e46114b45528aac4507/) | ⚠️ Unaudited |
| TreasurySwap | operational_periphery | ethereum | 3 deployments: ethereum [`0x00711e...75d21d`](./contracts/ethereum-1/0x00711e5c8fcd631ba9c6165d99e641face75d21d/); ethereum `0x43a7be...be80e0`; ethereum `0xa25b17...e74316` | ⚠️ Unaudited |
| TribeBALMinterCoordinator | unknown | ethereum | [`0x34ac9f...0cc69b`](./contracts/ethereum-1/0x34ac9f7eba9213c827fe5abf5b09a16f4d0cc69b/) | ⚠️ Unaudited |
| UnbalancedAddViaSwapRouter | adapter | optimism | 4 deployments: optimism [`0x03cbcc...dff36f`](./contracts/optimism-10/0x03cbccbe8d2073a1dc186ae6bcd95390fcdff36f/); gnosis `0xefb387...1a9575`; arbitrum `0xbf9419...29f12c`; avalanche `0x6623d1...6b6981` | ⚠️ Unaudited |
| UniswapMigrator | periphery | ethereum | [`0x5b6159...8145b6`](./contracts/ethereum-1/0x5b6159f43585e8a130b0bc1d31e38ce7028145b6/) | ⚠️ Unaudited |
| Utilities | unknown | ethereum | [`0xf37c41...64b503`](./contracts/ethereum-1/0xf37c41ef2281893b5971769370d6cdd35864b503/) | ⚠️ Unaudited |
| VaultEarnedView | core_logic | ethereum | 6 deployments: ethereum [`0x382cd6...b3d925`](./contracts/ethereum-1/0x382cd669d473a35202c9c3c74168518e0ab3d925/); ethereum `0x8261aa...5b4aca`; ethereum `0x9ce7c6...d9b308`; ethereum `0xb4d321...cd2b84`; ethereum `0xe05bf6...666683`; ethereum `0xe11505...d07370` | ⚠️ Unaudited |
| VaultExplorer | core_logic | gnosis | 9 deployments: optimism `0x1311fb...5cc4d1`; optimism `0xeaedc3...aacf2e`; gnosis [`0x0c8f71...5dbb98`](./contracts/gnosis-100/0x0c8f71d19f87c0bd1b9bad2484ecc3388d5dbb98/); gnosis `0x7f4c13...45d29b`; arbitrum `0x22625e...86b017`; arbitrum `0xb9d01c...20ab14`; avalanche `0x0f08ee...347b7c`; avalanche `0x4cb42f...a4ac4d`; avalanche `0x6b5da7...399e2e` | ⚠️ Unaudited |
| VaultFactory | registry | optimism | 3 deployments: optimism [`0x170206...68492d`](./contracts/optimism-10/0x1702067424096f07a60e62ccee3de9420068492d/); avalanche `0x9805dc...764102`; avalanche `0xc3ccac...a1bb68` | ⚠️ Unaudited |
| veBALDeploymentCoordinator | unknown | ethereum | [`0xeb1516...7076c3`](./contracts/ethereum-1/0xeb151668006cd04dadd098afd0a82e78f77076c3/) | ⚠️ Unaudited |
| veBALGaugeFixCoordinator | operational_periphery | ethereum | [`0xee47ef...26ddf3`](./contracts/ethereum-1/0xee47ef369cda5a65639d7794b70a4d247826ddf3/) | ⚠️ Unaudited |
| VeBalGrant | unknown | ethereum | [`0x89f67f...b416f6`](./contracts/ethereum-1/0x89f67f3054bfd662971854190dbc18dcabb416f6/) | ⚠️ Unaudited |
| veBALL2GaugeSetupCoordinator | operational_periphery | ethereum | [`0xd13afc...ef37ca`](./contracts/ethereum-1/0xd13afc362f619b840c8f4aac1d957ce219ef37ca/) | ⚠️ Unaudited |
| VestedEscrow | operational_periphery | ethereum | [`0xe98984...e28fcc`](./contracts/ethereum-1/0xe98984ad858075813ada4261af47e68a64e28fcc/) | ⚠️ Unaudited |
| VirtualRewardFactory | registry | polygon | 6 deployments: ethereum `0x5918f5...68bfcf`; ethereum `0x64e2df...62b2c3`; ethereum `0xdd8e70...a2f27b`; polygon [`0x05589c...9079c2`](./contracts/polygon-137/0x05589cbbe1cc0357986df6de4031b953819079c2/); base [`0x05589c...9079c2`](./contracts/base-8453/0x05589cbbe1cc0357986df6de4031b953819079c2/); arbitrum [`0x05589c...9079c2`](./contracts/arbitrum-42161/0x05589cbbe1cc0357986df6de4031b953819079c2/) | ⚠️ Unaudited |
| vlCvxExtraRewardDistribution | unknown | ethereum | 4 deployments: ethereum [`0x8ed4bb...1e0602`](./contracts/ethereum-1/0x8ed4bbf39e3080b35da84a13a0d1a2fdce1e0602/); ethereum `0x9b622f...fab702`; ethereum `0xdecc7d...79360d`; ethereum `0xe68677...89f572` | ⚠️ Unaudited |
| VoteDelegateExtension | adapter | ethereum | [`0x5349ff...67fb07`](./contracts/ethereum-1/0x5349ffba494ac3c888ffa16fd438f44b8c67fb07/) | ⚠️ Unaudited |
| VoterProxyOwner | unknown | ethereum | [`0x2b8355...48816e`](./contracts/ethereum-1/0x2b83552729067d1c32a2a31024776bd83c48816e/) | ⚠️ Unaudited |
| VotingBalance | unknown | ethereum | [`0x4c4d57...857ce9`](./contracts/ethereum-1/0x4c4d57f69f3081694e721dcd1a42536062857ce9/) | ⚠️ Unaudited |
| VotingBalanceMax | unknown | ethereum | [`0x59ccba...179bf2`](./contracts/ethereum-1/0x59ccbaabbfcac52e007a706242c5b81a48179bf2/) | ⚠️ Unaudited |
| VotingBalanceV2Gauges | operational_periphery | ethereum | 2 deployments: ethereum [`0x1cc2cf...72b988`](./contracts/ethereum-1/0x1cc2cfed7e40bab890ca532ad0dbb413e072b988/); ethereum `0x817686...16f917` | ⚠️ Unaudited |
| VotingEligibility | unknown | ethereum | [`0xbce1cb...bbfb0f`](./contracts/ethereum-1/0xbce1cbf6816d158e5f5d9713bcca805e37bbfb0f/) | ⚠️ Unaudited |
| VotingEscrowDelegationProxy | operational_periphery | polygon | 7 deployments: ethereum `0x6f5a2e...1eb8a0`; optimism `0x9da189...7e017c`; gnosis `0x7a2535...fe8f05`; polygon [`0x0f08ee...347b7c`](./contracts/polygon-137/0x0f08eef2c785aa5e7539684af04755dec1347b7c/); fraxtal `0xe38816...0be5f7`; base `0xd87f44...9f5acd`; arbitrum `0x81cfae...eeb310` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | 35 deployments: ethereum [`0x2a7d59...28ac04`](./contracts/ethereum-1/0x2a7d59e327759acd5d11a8fb652bf4072d28ac04/); ethereum `0x2e9606...8a2647`; ethereum `0x2f50d5...5846bb`; ethereum `0x3b8ca5...b25bd0`; ethereum `0x41df5d...2d2567`; ethereum `0x44a41f...a5c8a3`; ethereum `0x575ccd...318e2c`; ethereum `0x5f3b5d...94e2a2`; ethereum `0x64e3c2...ac041d`; ethereum `0x679fcb...f8fa67`; ethereum `0x67f8df...6ecb0b`; ethereum `0x69fb7c...838840`; ethereum `0x6e8f6d...123eb7`; ethereum `0x705350...55410f`; ethereum `0x7ca5b0...1d7575`; ethereum `0xa0dabe...9eb66f`; ethereum `0xa21900...2a2ebe`; ethereum `0xa90996...857849`; ethereum `0xb1f2cd...202cac`; ethereum `0xbc89cd...ca8f53`; ethereum `0xc12846...3d3abd`; ethereum `0xc128a9...093f25`; ethereum `0xd061d6...c2fce0`; ethereum `0xd2d435...db0f1d`; ethereum `0xd533a9...34cd52`; ethereum `0xe39972...513267`; ethereum `0xe5f960...31c548`; ethereum `0xf22995...1cafdd`; ethereum `0xf7dbc3...fa875e`; ethereum `0xfa712e...4530c1`; optimism `0x81cfae...eeb310`; gnosis `0x96484f...f13b6d`; polygon `0xc9b360...d5988f`; polygon `0xeb1eea...ae3863`; arbitrum `0xa523f4...4612dc` | ⚠️ Unaudited |
| WardenQuestScheduler | unknown | ethereum | 2 deployments: ethereum [`0x3fcb0c...a2fb47`](./contracts/ethereum-1/0x3fcb0cc19c41e9d2db3b9764032cd457baa2fb47/); ethereum `0xa7f21d...0e6633` | ⚠️ Unaudited |
| WeightedLPOracleFactory | operational_periphery | avalanche | 12 deployments: optimism `0x6ee18f...e3cb3f`; optimism `0x718e11...f4457f`; optimism `0xeb2bb0...9fe804`; gnosis `0x187a05...baa6ac`; gnosis `0x332694...f81d99`; gnosis `0x8a8b9f...a2ea88`; arbitrum `0x2faa14...1e4e91`; arbitrum `0x7f4c13...45d29b`; arbitrum `0xa9aeeb...ad1103`; avalanche [`0x0e800d...92b106`](./contracts/avalanche-43114/0x0e800d8d2e8b4694610aedc385aa6d763492b106/); avalanche `0x397bc4...69a1c7`; avalanche `0x995831...059157` | ⚠️ Unaudited |
| WeightedPool2Tokens | core_logic | ethereum | [`0x5c6ee3...db8f56`](./contracts/ethereum-1/0x5c6ee304399dbdb9c8ef030ab642b10820db8f56/) | ⚠️ Unaudited |
| WeightedPoolFactory | registry | optimism | 14 deployments: ethereum `0x5dd94d...01eb8b`; ethereum `0x8e9aa8...637de9`; ethereum `0xcc508a...b957bc`; optimism [`0x0f08ee...347b7c`](./contracts/optimism-10/0x0f08eef2c785aa5e7539684af04755dec1347b7c/); optimism `0x254f3a...5f83b0`; gnosis `0x78ad1e...2a5417`; gnosis `0xeb1eea...ae3863`; fraxtal `0x9da189...7e017c`; base `0x4c32a8...d6a1c4`; arbitrum `0x83bf39...f56129`; arbitrum `0xd961e3...15e970`; avalanche `0x7ba29f...3121cc`; avalanche `0xbdbadc...7d6ff1`; avalanche `0xd961e3...15e970` | ⚠️ Unaudited |
| WindDownCoordinator | unknown | ethereum | [`0x9d53f0...6150dc`](./contracts/ethereum-1/0x9d53f0d2ecebc84e9114259f6084d01fb46150dc/) | ⚠️ Unaudited |
| WrapperFactory | registry | ethereum | 3 deployments: ethereum [`0x6a5a26...8212bc`](./contracts/ethereum-1/0x6a5a26e5b91cc9eb1d84da16a8360bc1df8212bc/); ethereum `0x8952bf...1c5808`; ethereum `0xe5ca8c...9d9942` | ⚠️ Unaudited |
| WstETHRateProvider | unknown | ethereum | [`0x72d07d...fee768`](./contracts/ethereum-1/0x72d07d7dca67b8a406ad1ec34ce969c90bfee768/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (8)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BoosterLite | core_logic | optimism | 7 deployments: optimism [`0x98ef32...a30184`](./contracts/optimism-10/0x98ef32edd24e2c92525e59afc4475c1242a30184/); gnosis [`0x98ef32...a30184`](./contracts/gnosis-100/0x98ef32edd24e2c92525e59afc4475c1242a30184/); polygon [`0x98ef32...a30184`](./contracts/polygon-137/0x98ef32edd24e2c92525e59afc4475c1242a30184/); fraxtal [`0x98ef32...a30184`](./contracts/fraxtal-252/0x98ef32edd24e2c92525e59afc4475c1242a30184/); base [`0x98ef32...a30184`](./contracts/base-8453/0x98ef32edd24e2c92525e59afc4475c1242a30184/); arbitrum [`0x98ef32...a30184`](./contracts/arbitrum-42161/0x98ef32edd24e2c92525e59afc4475c1242a30184/); avalanche [`0x98ef32...a30184`](./contracts/avalanche-43114/0x98ef32edd24e2c92525e59afc4475c1242a30184/) | ✅ Audited (bytecode match) |
| AuraOFT | unknown | optimism | 7 deployments: optimism [`0x150970...be213b`](./contracts/optimism-10/0x1509706a6c66ca549ff0cb464de88231ddbe213b/); gnosis [`0x150970...be213b`](./contracts/gnosis-100/0x1509706a6c66ca549ff0cb464de88231ddbe213b/); polygon [`0x150970...be213b`](./contracts/polygon-137/0x1509706a6c66ca549ff0cb464de88231ddbe213b/); fraxtal [`0x150970...be213b`](./contracts/fraxtal-252/0x1509706a6c66ca549ff0cb464de88231ddbe213b/); base [`0x150970...be213b`](./contracts/base-8453/0x1509706a6c66ca549ff0cb464de88231ddbe213b/); arbitrum [`0x150970...be213b`](./contracts/arbitrum-42161/0x1509706a6c66ca549ff0cb464de88231ddbe213b/); avalanche [`0x150970...be213b`](./contracts/avalanche-43114/0x1509706a6c66ca549ff0cb464de88231ddbe213b/) | ✅ Audited (bytecode match) |
| Create2Factory | unknown | ethereum | 13 deployments: ethereum [`0x2e1ade...c2169d`](./contracts/ethereum-1/0x2e1ade7233e886d8041fd7c3b87523f3ddc2169d/); ethereum `0x53c090...da364f`; ethereum `0x61a04f...bddf6b`; ethereum `0x6b02fe...6916be`; optimism `0x53c090...da364f`; gnosis `0x53c090...da364f`; polygon `0x53c090...da364f`; polygon `0xac98c9...a9d0a2`; fraxtal `0x53c090...da364f`; base `0x53c090...da364f`; base `0xc9307d...ff0967`; arbitrum `0x53c090...da364f`; avalanche `0x53c090...da364f` | ✅ Audited (bytecode match) |
| L2Coordinator | unknown | gnosis | 7 deployments: optimism `0xec1c78...580606`; gnosis [`0x8b2970...618201`](./contracts/gnosis-100/0x8b2970c237656d3895588b99a8bfe977d5618201/); polygon [`0x8b2970...618201`](./contracts/polygon-137/0x8b2970c237656d3895588b99a8bfe977d5618201/); fraxtal [`0x8b2970...618201`](./contracts/fraxtal-252/0x8b2970c237656d3895588b99a8bfe977d5618201/); base [`0x8b2970...618201`](./contracts/base-8453/0x8b2970c237656d3895588b99a8bfe977d5618201/); arbitrum `0xec1c78...580606`; avalanche [`0x8b2970...618201`](./contracts/avalanche-43114/0x8b2970c237656d3895588b99a8bfe977d5618201/) | ✅ Audited (bytecode match) |
| PoolManagerLite | core_logic | optimism | 7 deployments: optimism [`0xf24074...a6ca71`](./contracts/optimism-10/0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71/); gnosis [`0xf24074...a6ca71`](./contracts/gnosis-100/0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71/); polygon [`0xf24074...a6ca71`](./contracts/polygon-137/0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71/); fraxtal [`0xf24074...a6ca71`](./contracts/fraxtal-252/0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71/); base [`0xf24074...a6ca71`](./contracts/base-8453/0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71/); arbitrum [`0xf24074...a6ca71`](./contracts/arbitrum-42161/0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71/); avalanche [`0xf24074...a6ca71`](./contracts/avalanche-43114/0xf24074a1a6ad620adc14745f9cc1fb1e7ba6ca71/) | ✅ Audited (bytecode match) |
| ProxyFactory | registry | ethereum | 11 deployments: ethereum [`0x66807b...13fc8f`](./contracts/ethereum-1/0x66807b5598a848602734b82e432dd88dbe13fc8f/); ethereum `0x7ed900...377b0f`; ethereum `0xf5e2cf...39720d`; ethereum `0xfcdeb4...d4cbab`; optimism `0x731886...25d961`; gnosis `0x731886...25d961`; polygon `0x731886...25d961`; fraxtal `0x731886...25d961`; base `0x731886...25d961`; arbitrum `0x731886...25d961`; avalanche `0x731886...25d961` | ✅ Audited (bytecode match) |
| TokenFactory | registry | ethereum | 11 deployments: ethereum [`0x3c995e...147ab9`](./contracts/ethereum-1/0x3c995e43e6ddd551e226f4c5544c77bfed147ab9/); ethereum `0x3ec040...45f5ba`; ethereum `0x6537be...c2df78`; ethereum `0xb6ce51...b453ac`; optimism `0x872993...306fe9`; gnosis `0x872993...306fe9`; polygon `0x872993...306fe9`; fraxtal `0x872993...306fe9`; base `0x872993...306fe9`; arbitrum `0x872993...306fe9`; avalanche `0x872993...306fe9` | ✅ Audited (bytecode match) |
| VoterProxyLite | unknown | optimism | 7 deployments: optimism [`0xc181ed...00a2b0`](./contracts/optimism-10/0xc181edc719480bd089b94647c2dc504e2700a2b0/); gnosis [`0xc181ed...00a2b0`](./contracts/gnosis-100/0xc181edc719480bd089b94647c2dc504e2700a2b0/); polygon [`0xc181ed...00a2b0`](./contracts/polygon-137/0xc181edc719480bd089b94647c2dc504e2700a2b0/); fraxtal [`0xc181ed...00a2b0`](./contracts/fraxtal-252/0xc181edc719480bd089b94647c2dc504e2700a2b0/); base [`0xc181ed...00a2b0`](./contracts/base-8453/0xc181edc719480bd089b94647c2dc504e2700a2b0/); arbitrum [`0xc181ed...00a2b0`](./contracts/arbitrum-42161/0xc181edc719480bd089b94647c2dc504e2700a2b0/); avalanche [`0xc181ed...00a2b0`](./contracts/avalanche-43114/0xc181edc719480bd089b94647c2dc504e2700a2b0/) | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (4)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| KeeperMulticall3 | operational_periphery | optimism | 9 deployments: ethereum `0x817f42...330e15`; optimism [`0x37aa9a...3e31dd`](./contracts/optimism-10/0x37aa9ad9744d0686df1c7053225e700ce13e31dd/); gnosis [`0x37aa9a...3e31dd`](./contracts/gnosis-100/0x37aa9ad9744d0686df1c7053225e700ce13e31dd/); polygon [`0x37aa9a...3e31dd`](./contracts/polygon-137/0x37aa9ad9744d0686df1c7053225e700ce13e31dd/); fraxtal `0x5a7390...f22c68`; base [`0x37aa9a...3e31dd`](./contracts/base-8453/0x37aa9ad9744d0686df1c7053225e700ce13e31dd/); base `0x5c97f0...90e798`; arbitrum `0x5c97f0...90e798`; avalanche [`0x37aa9a...3e31dd`](./contracts/avalanche-43114/0x37aa9ad9744d0686df1c7053225e700ce13e31dd/) | ⚠️ Unaudited (bytecode match) |
| L2PoolManagerProxy | core_logic | optimism | 7 deployments: optimism [`0x2b6c22...c8bc54`](./contracts/optimism-10/0x2b6c227b26bc0ace74bb12da86571179c2c8bc54/); gnosis [`0x2b6c22...c8bc54`](./contracts/gnosis-100/0x2b6c227b26bc0ace74bb12da86571179c2c8bc54/); polygon [`0x2b6c22...c8bc54`](./contracts/polygon-137/0x2b6c227b26bc0ace74bb12da86571179c2c8bc54/); fraxtal [`0x2b6c22...c8bc54`](./contracts/fraxtal-252/0x2b6c227b26bc0ace74bb12da86571179c2c8bc54/); base [`0x2b6c22...c8bc54`](./contracts/base-8453/0x2b6c227b26bc0ace74bb12da86571179c2c8bc54/); arbitrum [`0x2b6c22...c8bc54`](./contracts/arbitrum-42161/0x2b6c227b26bc0ace74bb12da86571179c2c8bc54/); avalanche [`0x2b6c22...c8bc54`](./contracts/avalanche-43114/0x2b6c227b26bc0ace74bb12da86571179c2c8bc54/) | ⚠️ Unaudited (bytecode match) |
| SidechainClaimZap | adapter | gnosis | 8 deployments: optimism `0x617963...1fdd47`; gnosis [`0x4ea38a...5328e8`](./contracts/gnosis-100/0x4ea38a5739d467f7f84c06155ee2ad745e5328e8/); polygon `0x617963...1fdd47`; fraxtal [`0x4ea38a...5328e8`](./contracts/fraxtal-252/0x4ea38a5739d467f7f84c06155ee2ad745e5328e8/); base [`0x4ea38a...5328e8`](./contracts/base-8453/0x4ea38a5739d467f7f84c06155ee2ad745e5328e8/); base `0x5a5094...00b10d`; arbitrum `0x617963...1fdd47`; avalanche `0x6907d1...c2a017` | ⚠️ Unaudited (bytecode match) |
| SidechainView | unknown | fraxtal | 7 deployments: gnosis `0x421dbf...275482`; polygon `0xea865d...74c1dc`; fraxtal [`0x1ba3db...67ad0f`](./contracts/fraxtal-252/0x1ba3dbd572b1b7aa3445fa51492bfc644c67ad0f/); base `0x491c07...41fb6e`; base `0x609d44...11beaa`; base `0xe14360...a38fe1`; avalanche `0x739b0c...c62502` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (234)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x1a938e...1cb854` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1e3b23...875d6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x208024...f64c11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x269af0...18e3b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2e82af...e6d4c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x33a344...0a7efa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x398e2a...0aac3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x496409...451286` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4ac1df...d4058f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4c3c27...f3964b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x518543...d0342a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x577060...48fa7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x64b8a7...297e20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x68d9b8...1dc806` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x82b561...8a00d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8ede18...d65d46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8f999c...fd0bae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x935c23...742446` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x94905e...784e6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x992dc4...fc2d37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa1f998...d211f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa1fa94...21588a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa766e8...bfd086` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb14e42...ddd28b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbbe35f...a100c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc692b1...5530da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc9e611...6b1ac7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcd54c8...7f9719` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcfb7cb...181bdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdfcea9...eef9c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe43f46...af73c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe8e4ee...6685b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf570ad...147b36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf8b6a9...0bc9af` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xb9f8ab...fd7b88` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xca6481...9a2160` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xfa6b85...0be98e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x129bbd...40c229` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x1cd776...b1d608` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x36e8e3...1cc5d1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x774cb6...17eb94` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x891ec9...017e0d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xa523f4...4612dc` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xd53f5d...102d83` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb9f8ab...fd7b88` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x045125...a0bacd` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x05589c...9079c2` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x0a6bcb...494083` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x0d418e...322285` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x0f0dda...b755fc` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x0f641b...0bacae` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x0fec3d...0b7f76` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x170206...68492d` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x1fd645...b1900b` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x223738...c754ce` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x252a18...6b3a63` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x25e7c5...f4f669` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x286358...2acc01` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x2b8933...f1feb4` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x2f4cdf...38d4f7` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x334df2...22f6b0` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x3743d8...182da7` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x37aa9a...3e31dd` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x3af95b...1a1b66` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x421dbf...275482` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x4b5d28...4f41cb` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x4dce82...5cbd1b` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x4ea931...bbb0e9` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x5073dc...bc119d` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x51b6e0...749fe1` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x57acb7...7ad478` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x5a5094...00b10d` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x5c97f0...90e798` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x609d44...11beaa` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x60d643...87c84c` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x617963...1fdd47` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x623cdc...785898` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x6907d1...c2a017` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x6b02fe...6916be` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x739b0c...c62502` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x779aa2...2a049b` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x8034fb...1b6f8d` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x81ba03...3fca08` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x8401b4...62bae8` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x852ad2...7947c6` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x8b9da5...1b5eee` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x908c9d...3052bc` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x9e1f41...80922e` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x9e4cbe...db812b` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xa1ffac...c858f4` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xa2930d...8381ed` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xa7cd84...a32794` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xa9802d...25d985` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xa9952c...58008e` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xab9016...ca4c50` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xae8e14...a8bd1c` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xb292be...6e0144` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xb4c68e...8608df` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xbddac3...68c26b` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xbf6a18...2698b0` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xc1e07a...42abe3` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xca85e2...627451` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xcc9269...1d3c0e` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xce66e8...e41146` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xd86ceb...66d68b` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xda2e6b...16e7db` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xde386a...8455bf` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xdfa714...f578ee` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xe00035...feed73` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xe01d92...a05fb8` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xe4b11a...338224` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xe8a7e8...9d3099` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xea865d...74c1dc` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xec1c78...580606` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xee6c82...f708bd` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xf044ee...81d96f` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xf3ae2e...6aa978` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xf97de6...b7e1f6` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xfa6b85...0be98e` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xffa458...0282d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x045125...a0bacd` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x04798c...98703c` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x05589c...9079c2` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x0a6bcb...494083` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x0d418e...322285` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x0f0dda...b755fc` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x0f641b...0bacae` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x0fec3d...0b7f76` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x150970...be213b` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x1ba3db...67ad0f` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x1fd645...b1900b` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x223738...c754ce` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x2498a2...29ba95` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x252a18...6b3a63` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x25e7c5...f4f669` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x286358...2acc01` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x2b6c22...c8bc54` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x2b8933...f1feb4` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x2f4cdf...38d4f7` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x334df2...22f6b0` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x3743d8...182da7` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x37aa9a...3e31dd` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x3af95b...1a1b66` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x421dbf...275482` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x4b5d28...4f41cb` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x4dce82...5cbd1b` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x4ea38a...5328e8` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x4ea931...bbb0e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x5073dc...bc119d` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x51b6e0...749fe1` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x53c090...da364f` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x57acb7...7ad478` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x5849b5...e09558` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x5a5094...00b10d` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x5a7390...f22c68` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x5c97f0...90e798` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x609d44...11beaa` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x60d643...87c84c` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x617963...1fdd47` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x623cdc...785898` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x6907d1...c2a017` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x6b02fe...6916be` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x731886...25d961` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x739b0c...c62502` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x779aa2...2a049b` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x7a7b39...5a73d1` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x8034fb...1b6f8d` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x8401b4...62bae8` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x852ad2...7947c6` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x872993...306fe9` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x8b2970...618201` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x8b9da5...1b5eee` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x908c9d...3052bc` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x919eeb...0efee6` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x98ef32...a30184` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x9e1f41...80922e` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x9e4cbe...db812b` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xa1ffac...c858f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xa2930d...8381ed` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xa7cd84...a32794` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xa9802d...25d985` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xa9952c...58008e` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xab9016...ca4c50` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xae8e14...a8bd1c` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xb292be...6e0144` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xb4c68e...8608df` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xb82434...3e8bd3` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xbcf3b1...108c48` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xbd2e14...4b029e` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xbddac3...68c26b` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xbf6a18...2698b0` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xc181ed...00a2b0` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xc1e07a...42abe3` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xc24fa5...97b7ac` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xca85e2...627451` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xcbdcd8...23dc4e` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xcc9269...1d3c0e` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xce66e8...e41146` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xd86ceb...66d68b` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xda2e6b...16e7db` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xde386a...8455bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xdfa714...f578ee` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xe00035...feed73` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xe01d92...a05fb8` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xe4b11a...338224` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xe8a7e8...9d3099` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xea865d...74c1dc` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xec1c78...580606` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xee6c82...f708bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xf044ee...81d96f` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xf24074...a6ca71` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xf3ae2e...6aa978` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xf97de6...b7e1f6` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xfa6b85...0be98e` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xffa458...0282d5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x180295...cf1d77` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0a6bcb...494083` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x12233c...5a7d9f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x364675...6e617c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4ac1df...d4058f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x59b77e...13ccee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb9f8ab...fd7b88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbe4892...392ce0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x138f95...26bb8a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1fd645...b1900b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5073dc...bc119d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x623cdc...785898` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8034fb...1b6f8d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa2930d...8381ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb82434...3e8bd3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcbdcd8...23dc4e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcc9269...1d3c0e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xea1a2f...ddcf12` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xede954...9954e0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [facu_spagnuolo_aurabal_vault_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/auraBalVault/facu_spagnuolo_aurabal_vault_audit_report.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | 7 | medium |
| [halborn_aurabal_vault_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/auraBalVault/halborn_aurabal_vault_audit_report.pdf) | Halborn | Audit | 2023-03 | stale | Direct | contract_name | 6 | high |
| [halborn_sidechain_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/sidechain/halborn_sidechain_audit_report.pdf) | Halborn | Audit | 2023-06 | stale | Direct | contract_name | 64 | high |
| [hephyrius-internal-report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/sidechain/hephyrius-internal-report.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | 53 | high |
| [zellic_sidechain_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/sidechain/zellic_sidechain_audit_report.pdf) | Zellic | Audit | 2023-06 | stale | Direct | contract_name | 90 | high |
| [facu_spagnuolo_aura_upgrade_01_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/upgrades/facu_spagnuolo_aura_upgrade_01_audit_report.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | 35 | medium |
| [hephyrius_aura_upgrade_01_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/upgrades/hephyrius_aura_upgrade_01_audit_report.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | 45 | medium |
| [index.md](https://github.com/aurafinance/aura-contracts/blob/main/docs/index.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 54 | medium |
| [Code4rena-Audit-Report-AuraFinance-v1.0.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/Code4rena-Audit-Report-AuraFinance-v1.0.pdf) | Code4rena | Contest | 2022-07 | stale | Direct | contract_name | 83 | high |
| [Halborn-Audit-Report-AuraFinance-v1.0.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/Halborn-Audit-Report-AuraFinance-v1.0.pdf) | Halborn | Audit | 2022-06 | stale | Direct | contract_name | 119 | high |
| [PeckShield-Audit-Report-AuraFinance-v1.0.pdf (also discovered via alternate URL)](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/PeckShield-Audit-Report-AuraFinance-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | 36 | high |
| [Aura_Finance_Migration_Review_Hephyrius.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/migration/Aura_Finance_Migration_Review_Hephyrius.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | 23 | medium |
| [FacuSpagnuolo-Aura-Booster-migration-report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/migration/FacuSpagnuolo-Aura-Booster-migration-report.pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | 29 | medium |
| [Halborn-Aura_Finance___Smart_Contract_Audit.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/migration/Halborn-Aura_Finance___Smart_Contract_Audit.pdf) | Halborn | Audit | 2023-12 | stale | Direct | contract_name | 35 | high |
| [001-BaseRewardPool-Donate.md](https://github.com/aurafinance/aura-contracts/blob/main/security/disclosures/001-BaseRewardPool-Donate.md) | unknown | Audit | 2022-11 | stale | Direct | contract_name | 16 | medium |
| [002-Booster-EIP1271.md](https://github.com/aurafinance/aura-contracts/blob/main/security/disclosures/002-Booster-EIP1271.md) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 14 | medium |
| [003-Assorted-Governance-griefing.md](https://github.com/aurafinance/aura-contracts/blob/main/security/disclosures/003-Assorted-Governance-griefing.md) | unknown | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [README.md](https://github.com/aurafinance/aura-docs/blob/main/aura/security/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [risks.md](https://github.com/aurafinance/aura-docs/blob/main/aura/security/risks.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x616e8b...d4608d`](./contracts/ethereum-1/0x616e8bfa43f920657b3497dbf40d6b1a02d4608d/) | cvxCrvToken | token | $45,080,276.64 | Verified native implementation with $45,080,276.64 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf50b8...139332`](./contracts/ethereum-1/0xcf50b810e57ac33b91dcf525c6ddd9881b139332/) | cvxRewardPool | core_logic | $11,391,303.28 | Verified native implementation with $11,391,303.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa28473...427df6`](./contracts/ethereum-1/0xa2847348b58ced0ca58d23c7e9106a49f1427df6/) | cvxFpisToken | token | $2,129,509.33 | Verified native implementation with $2,129,509.33 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfeef77...4bdf74`](./contracts/ethereum-1/0xfeef77d3f69374f66429c91d732a244f074bdf74/) | cvxFxsToken | token | $1,093,078.88 | Verified native implementation with $1,093,078.88 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25e124...c21616`](./contracts/ethereum-1/0x25e12482a25cf36ec70fda2a09c1ed077fc21616/) | ArbitratorVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2aa497...0a1f9c`](./contracts/ethereum-1/0x2aa497d6c6cc0cce9a49ea70b0701092a10a1f9c/) | AuraBalRedemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3fcaf...a7e10e`](./contracts/ethereum-1/0xa3fcafca8150636c3b736a16cd73d49cc8a7e10e/) | AuraBalStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bc4d5...2ae347`](./contracts/ethereum-1/0x1bc4d50d8785587f0d44f4296408e20f592ae347/) | AuraClaimZapV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x96d15d...dba9a4`](./contracts/ethereum-1/0x96d15d08538a17a03b0210fd1626d5f42bdba9a4/) | AuraDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x568f3d...c0dd73`](./contracts/ethereum-1/0x568f3df1b63af874e0f981831d0c4a6186c0dd73/) | AuraLockerModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x744be6...855f52`](./contracts/ethereum-1/0x744be650cea753de1e69bf6bad3c98490a855f52/) | AuraMining | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x559f5f...a926d6`](./contracts/ethereum-1/0x559f5fa62dfbc5f22a4f7d36bd001acb27a926d6/) | AuraRedemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfbd41e...592e63`](./contracts/ethereum-1/0xfbd41e0c4517a684c121aa7dda2fc462d9592e63/) | AuraRelockers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x129bbd...40c229`](./contracts/ethereum-1/0x129bbda5087e132983e7c20ae1f761333d40c229/) | AuraViewHelpers | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb848f5...4f2158`](./contracts/ethereum-1/0xb848f50141f3d4255b37ac288c25c109104f2158/) | BALTokenHolderFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2cf21...a86ee5`](./contracts/ethereum-1/0xa2cf21b157b2f203e37b616b619f438b5aa86ee5/) | BoosterPlaceholder | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x817ff4...e82d24`](./contracts/ethereum-1/0x817ff43b8a18b8ab76485283e42b4bd632e82d24/) | BoosterRewardManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba9801...20272d`](./contracts/ethereum-1/0xba9801acfdf3b8852865149d93acffef9120272d/) | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc4990...ac0b57`](./contracts/ethereum-1/0xbc4990b6607f456477d07c4dd80fb35258ac0b57/) | CanonicalView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f29b7...7b51ed`](./contracts/ethereum-1/0x0f29b765be2de395cb6b10d9ead46975057b51ed/) | ChefRewardHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4223aa...587c0f`](./contracts/ethereum-1/0x4223aa5bfd783dedcc54585cdc1cfe9ea1587c0f/) | ChefToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x22625e...86b017`](./contracts/polygon-137/0x22625eedd92c81a219a83e1dc48f88d54786b017/) | ChildChainGaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x286358...2acc01`](./contracts/optimism-10/0x2863582272a424234fce76d97099acbd432acc01/) | ChildGaugeVoteRewards | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x494089...f15d0c`](./contracts/ethereum-1/0x4940896e635ea177f1095009be9ee9ef02f15d0c/) | ClaimVecrvFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f29cb...cf2516`](./contracts/ethereum-1/0x3f29cb4111cbda8081642da1f75b3c12decf2516/) | ClaimZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e3e24...760b1a`](./contracts/ethereum-1/0x4e3e2424ee20d177e7749c58db0ac46327760b1a/) | CrvDepositorWrapperForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d6fc2...12ef8b`](./contracts/ethereum-1/0x9d6fc281587dc8a20f5e5cf9035c19751a12ef8b/) | CrvDepositorWrapperForwarderV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a2a2e...f8682f`](./contracts/ethereum-1/0x2a2a2e691068cb1f61124c5a865756dca7f8682f/) | CrvDepositorWrapperSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6eb746...b27586`](./contracts/ethereum-1/0x6eb746a3f23d401f80ab033edeb65e1a8bb27586/) | CrvDepositorWrapperWithFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fc2a2...56b987`](./contracts/ethereum-1/0x4fc2a279ffddde98cb154f04375e69205156b987/) | CvxCrvRari | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x449f2f...d1ddc6`](./contracts/ethereum-1/0x449f2fd99174e1785cf2a1c79e665fec3dd1ddc6/) | CvxDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfa87db...6bc483`](./contracts/ethereum-1/0xfa87db3eaa93b7293021e38416650d2e666bc483/) | cvxFpisStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49b4d1...37e31a`](./contracts/ethereum-1/0x49b4d1df40442f0c31b1bbaea3ede7c38e37e31a/) | cvxFxsStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ae0fc...ce56a1`](./contracts/ethereum-1/0x5ae0fca14ed08a3122ffb8d624e063e07bce56a1/) | CvxLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c75bf...de5343`](./contracts/ethereum-1/0x3c75bfe6fbfda3a94e7e7e8c2216afc684de5343/) | CvxMining | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4401f1...7943fa`](./contracts/ethereum-1/0x4401f14970a874d27fad5c8a945292cbe97943fa/) | CvxStakingProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb5bbc8...586a4e`](./contracts/ethereum-1/0xb5bbc863bafe5006c68613b89130812a7b586a4e/) | CvxStakingProxyV2 | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x469788...015446`](./contracts/ethereum-1/0x469788fe6e9e9681c6ebf3bf78e7fd26fc015446/) | DelegateRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbfd976...d66e3c`](./contracts/ethereum-1/0xbfd9769b061e57e478690299011a028194d66e3c/) | DistributionScheduler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca96c4...da73c1`](./contracts/ethereum-1/0xca96c4f198d343e251b1a01f3eba061ef3da73c1/) | DoubleEntrypointFixRelayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48e529...07ce81`](./contracts/ethereum-1/0x48e529218743e41f6de5b7e8d552e8173707ce81/) | ExtraRewardStashModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x011403...436531`](./contracts/ethereum-1/0x01140351069af98416cc08b16424b9e765436531/) | ExtraRewardStashTokenRescue | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd43024...1410e9`](./contracts/ethereum-1/0xd430246142084ec68f7ab090cbd9252a1d1410e9/) | FeeBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbec22...7323f7`](./contracts/ethereum-1/0xcbec22233dad5e15ab9c02caa4d914f3c97323f7/) | FeeDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29dba2...999178`](./contracts/ethereum-1/0x29dba2751b5aa26f7d03657066c0984c66999178/) | FeeDepositV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x267439...5a61c9`](./contracts/ethereum-1/0x26743984e3357efc59f2fd6c1afdc310335a61c9/) | FeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a562a...9e08e0`](./contracts/ethereum-1/0x3a562a8ceb9866bcf39bb5eda32f282d619e08e0/) | FeeReceiverCvxFpis | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31c5e6...3f8f24`](./contracts/ethereum-1/0x31c5e6d1891d2af49dec041d41a3a663e03f8f24/) | FeeReceiverCvxFxs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd60d80...ec36cf`](./contracts/ethereum-1/0xd60d80d9c184d4f02ff1711844aaa4e94bec36cf/) | FeeReceiverPlatform | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f94fe...717624`](./contracts/ethereum-1/0x6f94fe4dadd7a6f4ce67e607bab531a9d1717624/) | FeeReceiverVeFxs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9a212...d2c2b8`](./contracts/ethereum-1/0xb9a2120f32420f0da2777ee07beeea92d3d2c2b8/) | FeeReceiverVlCvx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a299a...2394e3`](./contracts/ethereum-1/0x7a299a6f5bc33c7e3c8ba5bbdebeba8a012394e3/) | FeeRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a6527...6718b4`](./contracts/ethereum-1/0x1a65276a9b6a0611506763839b1ffae3e86718b4/) | FeeScheduler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7663fd...9fcca1`](./contracts/ethereum-1/0x7663fd322021d5b1f36dbf0c97d34cfa039fcca1/) | ForwarderHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27445d...a7a04b`](./contracts/ethereum-1/0x27445d3f59d6b966072abe20e41a29fbb6a7a04b/) | FpisDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb93989...a3238d`](./contracts/ethereum-1/0xb93989b104a3bc2eba16210748cecdf76ea3238d/) | FpisRewardHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f55d7...a3181e`](./contracts/ethereum-1/0x8f55d7c21bdff1a51afaa60f3de7590222a3181e/) | FxsDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a6980...78f1f7`](./contracts/ethereum-1/0x1a6980170fd45bdebf5902b597c53a2a0678f1f7/) | FXSRewardHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ffb7b...98f26a`](./contracts/ethereum-1/0x2ffb7b215ae7f088ec2530c7aa8e1b24e398f26a/) | GaugeAdder | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b57f6...2daea7`](./contracts/ethereum-1/0x1b57f637ce3408f1f834b0b70f9a595b062daea7/) | GaugeAdderMigrationCoordinator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e5698...9db97c`](./contracts/ethereum-1/0x8e5698dc4897dc12243c8642e77b4f21349db97c/) | GaugeControllerQuerier | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04bb59...510330`](./contracts/ethereum-1/0x04bb59bd617f06eeeee00caeaffc8f3b68510330/) | GaugeExtraRewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26094f...d72a4e`](./contracts/ethereum-1/0x26094f9a6a498c1fccd8ff65829f55fb8bd72a4e/) | GaugeVoteRewards | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b5ac8...381621`](./contracts/ethereum-1/0x2b5ac82c5e934407514768ce3e399d9c18381621/) | GaugeVoterModule | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d6bca...86e1e7`](./contracts/ethereum-1/0x6d6bcac2266468a44da9fa482ca54aaed586e1e7/) | Harvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe25651...dd0f4b`](./contracts/ethereum-1/0xe2565158e9984fd736002f58e2777260f2dd0f4b/) | HHChefClaimBriberModule | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb034e7...d80aa0`](./contracts/ethereum-1/0xb034e7ac8395fb373bbf8cb4c09cc4d4c1d80aa0/) | HHRewardsClaimForwarderModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1972b5...bc14f7`](./contracts/ethereum-1/0x1972b5d65a690de0bc36278ac93d47fd98bc14f7/) | InterestRateCalculatorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x599113...dfb9ec`](./contracts/ethereum-1/0x599113b0403e3fa613c318af0bf75826bedfb9ec/) | JointVaultManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x37aa9a...3e31dd`](./contracts/optimism-10/0x37aa9ad9744d0686df1c7053225e700ce13e31dd/) | KeeperMulticall3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54f2de...27a14d`](./contracts/ethereum-1/0x54f2dec216dffb9174edb0d53910bada5227a14d/) | L1PoolManagerProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2b6c22...c8bc54`](./contracts/optimism-10/0x2b6c227b26bc0ace74bb12da86571179c2c8bc54/) | L2PoolManagerProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x98e28a...0d418c`](./contracts/ethereum-1/0x98e28afb9c11aa979ae754e1ea2e9877cb0d418c/) | LockerAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1bc2c...142991`](./contracts/ethereum-1/0xa1bc2cf69d474b39b91665e24e7f2606ed142991/) | MerkleAirdropFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xafd3d3...0a96ca`](./contracts/ethereum-1/0xafd3d38fecebcdda6d934979d4ac7f17330a96ca/) | MultiRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x045125...a0bacd`](./contracts/optimism-10/0x0451255563e2aca170b2552111837572e7a0bacd/) | OptimismBridgeSender | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3083a1...73c5c8`](./contracts/ethereum-1/0x3083a1c455ff38d39e58dbac5040f465cf73c5c8/) | OptimismRootGaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd0521c...8bd687`](./contracts/ethereum-1/0xd0521c061958324d06b8915ffdac3db22c8bd687/) | PoolFeeManagerProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe4d89e...729f9a`](./contracts/ethereum-1/0xe4d89e8267d2e8f03f751fa807b3bbdb36729f9a/) | PoolHarvestHook | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73b1b1...27889f`](./contracts/ethereum-1/0x73b1b12065d0ae21dff4848d5871ca2a5227889f/) | PoolManagerShutdownProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ff339...feb3b2`](./contracts/ethereum-1/0x0ff33996d846200d5ada1a58aeb62c1b09feb3b2/) | PoolManagerTertiaryProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae5f31...500183`](./contracts/ethereum-1/0xae5f315a5b5dd4dbacd38862562a51490e500183/) | PoolManagerV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41a588...851a69`](./contracts/ethereum-1/0x41a5881c17185383e19df6fa4ec158a6f4851a69/) | PoolRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x723f9a...cd4a96`](./contracts/ethereum-1/0x723f9aa67fdd9b0e375ef8553eb2afc28ecd4a96/) | PoolRewardHook | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52d85e...a78a9c`](./contracts/ethereum-1/0x52d85e14bf2bfb16ed4a8f3b5a0c8fc0baa78a9c/) | PoolTypes | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fba69...8e5cd1`](./contracts/ethereum-1/0x5fba69a794f395184b5760daf1134028608e5cd1/) | PoolUtilities | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ef4c5...bd23c5`](./contracts/ethereum-1/0x5ef4c5352882b10893b70dbcaa0c000965bd23c5/) | ProtocolFeesWithdrawer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc44d36...e88bc8`](./contracts/ethereum-1/0xc44d3604a332b71e2e6a87a714614a505ee88bc8/) | RAuraRedemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x243347...ed53fd`](./contracts/ethereum-1/0x2433477a10fc5d31b9513c638f19ee85caed53fd/) | RefundLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb15ffb...5aaac9`](./contracts/ethereum-1/0xb15ffb543211b558d40160811e5dcbcd7d5aaac9/) | RescueToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x4ea38a...5328e8`](./contracts/gnosis-100/0x4ea38a5739d467f7f84c06155ee2ad745e5328e8/) | SidechainClaimZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x94f68b...72d227`](./contracts/ethereum-1/0x94f68b54191f62f781fe8298a8a5fa3ed772d227/) | SingleRecipientGaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26575a...5624ea`](./contracts/ethereum-1/0x26575a44755e0aaa969fdda1e4291df22c5624ea/) | SmartWalletCheckerCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56a1ba...d0cb31`](./contracts/ethereum-1/0x56a1baf2f7a163ce66067f0062da60930dd0cb31/) | SNXRecoveryCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d0c89...476d80`](./contracts/ethereum-1/0x1d0c890236261c3a2440af03ab10654e60476d80/) | StakingProxyERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x64167f...111181`](./contracts/ethereum-1/0x64167f69a10ab360a8c45b8c7db31d7752111181/) | StakingProxyERC20Joint | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73f88b...7bd87c`](./contracts/ethereum-1/0x73f88bfc32f5946b0e0851ca53f277fe177bd87c/) | StashFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2db7d4...a15f9c`](./contracts/ethereum-1/0x2db7d4f89de7ac7fbb31422d51ec3a7c7aa15f9c/) | StashRewardDistro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc19cf0...a13eb7`](./contracts/ethereum-1/0xc19cf0eaa43ee080c3cb8fb7db388091d3a13eb7/) | StashTokenWrapper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x657dee...f05e8d`](./contracts/ethereum-1/0x657dee983987e1a79a996d972fe68411aef05e8d/) | TimelockAuthorizerMigrator | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf0a32...382018`](./contracts/ethereum-1/0xcf0a32bbef8f064969f21f7e02328fb577382018/) | TkMrsR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x138938...541bb7`](./contracts/ethereum-1/0x1389388d01708118b497f59521f6943be2541bb7/) | TreasuryFunds | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04dd97...bd207f`](./contracts/ethereum-1/0x04dd97255ddee29c941d85f5b5cde6ace8bd207f/) | TreasuryLend | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x858847...750361`](./contracts/ethereum-1/0x858847c21b075e45727fcb0b544bd843cd750361/) | TreasuryManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcab2bb...ac4507`](./contracts/ethereum-1/0xcab2bb34eeaa177bd8d36e46114b45528aac4507/) | TreasuryRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00711e...75d21d`](./contracts/ethereum-1/0x00711e5c8fcd631ba9c6165d99e641face75d21d/) | TreasurySwap | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34ac9f...0cc69b`](./contracts/ethereum-1/0x34ac9f7eba9213c827fe5abf5b09a16f4d0cc69b/) | TribeBALMinterCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf37c41...64b503`](./contracts/ethereum-1/0xf37c41ef2281893b5971769370d6cdd35864b503/) | Utilities | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x382cd6...b3d925`](./contracts/ethereum-1/0x382cd669d473a35202c9c3c74168518e0ab3d925/) | VaultEarnedView | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeb1516...7076c3`](./contracts/ethereum-1/0xeb151668006cd04dadd098afd0a82e78f77076c3/) | veBALDeploymentCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xee47ef...26ddf3`](./contracts/ethereum-1/0xee47ef369cda5a65639d7794b70a4d247826ddf3/) | veBALGaugeFixCoordinator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x89f67f...b416f6`](./contracts/ethereum-1/0x89f67f3054bfd662971854190dbc18dcabb416f6/) | VeBalGrant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd13afc...ef37ca`](./contracts/ethereum-1/0xd13afc362f619b840c8f4aac1d957ce219ef37ca/) | veBALL2GaugeSetupCoordinator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe98984...e28fcc`](./contracts/ethereum-1/0xe98984ad858075813ada4261af47e68a64e28fcc/) | VestedEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x05589c...9079c2`](./contracts/polygon-137/0x05589cbbe1cc0357986df6de4031b953819079c2/) | VirtualRewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ed4bb...1e0602`](./contracts/ethereum-1/0x8ed4bbf39e3080b35da84a13a0d1a2fdce1e0602/) | vlCvxExtraRewardDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5349ff...67fb07`](./contracts/ethereum-1/0x5349ffba494ac3c888ffa16fd438f44b8c67fb07/) | VoteDelegateExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b8355...48816e`](./contracts/ethereum-1/0x2b83552729067d1c32a2a31024776bd83c48816e/) | VoterProxyOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c4d57...857ce9`](./contracts/ethereum-1/0x4c4d57f69f3081694e721dcd1a42536062857ce9/) | VotingBalance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59ccba...179bf2`](./contracts/ethereum-1/0x59ccbaabbfcac52e007a706242c5b81a48179bf2/) | VotingBalanceMax | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cc2cf...72b988`](./contracts/ethereum-1/0x1cc2cfed7e40bab890ca532ad0dbb413e072b988/) | VotingBalanceV2Gauges | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbce1cb...bbfb0f`](./contracts/ethereum-1/0xbce1cbf6816d158e5f5d9713bcca805e37bbfb0f/) | VotingEligibility | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fcb0c...a2fb47`](./contracts/ethereum-1/0x3fcb0cc19c41e9d2db3b9764032cd457baa2fb47/) | WardenQuestScheduler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d53f0...6150dc`](./contracts/ethereum-1/0x9d53f0d2ecebc84e9114259f6084d01fb46150dc/) | WindDownCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a5a26...8212bc`](./contracts/ethereum-1/0x6a5a26e5b91cc9eb1d84da16a8360bc1df8212bc/) | WrapperFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 198 |
| upstream | 28 |
| standard_library | 2 |
| needs_review | 274 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=8, medium=8
- Match method counts: extraction_exact=745

Zero-match audit list:

- [5974] 003-Assorted-Governance-griefing.md
- [5976] README.md
- [5977] risks.md
- [5978] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [5979] 0002-metadata-manifest-and-pull-command.md
- [5980] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
