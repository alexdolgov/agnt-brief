# Agentic Audit Brief: Jones DAO

⚠️ Lifecycle status: DECLINING - TVL dropped 2.5% over 90 days

## Project Overview

- Project: Jones DAO (`jones-dao`)
- Website: [https://jonesdao.io](https://jonesdao.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-29T09:31:18.585Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: arbitrum, base, berachain, blast, ethereum
- Contract surface: 500 unique implementations (1366 raw deployments)
- DeFi Llama TVL: $1,456,726.90
- On-chain TVL (included contracts): $519,746,713.51
- TVL by chain: Ethereum $452,536,081.49 | Arbitrum $67,210,632.02

## Project Description

Jones DAO is a yield aggregation protocol that offers structured vaults and strategies for options, liquidity pools, and yield-bearing assets. It enables users to deposit assets into automated strategies that generate returns through options selling, liquidity provision, and compounding rewards.

### Architecture

The families share governance via Gnosis Safe and ProxyAdmin, and use common infrastructure like WhitelistController, Factory, and UpgradeableBeacon for access control and upgradeability. Options vaults feed into hedging strategies, while liquidity management vaults use swappers and price helpers across multiple DEXs, and cross-chain wrappers enable asset mobility between Arbitrum and mainnet.

## Audit Coverage Summary

- Verified implementations audited: 0/354 (0.0%)
- Verified + Unaudited implementations: 339
- Verified by bytecode match: 15
- Unverified implementations: 146
- Unique implementations: 500
- Raw deployments: 1366
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $519,746,713.51
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $519,746,713.51 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (339)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AuraVirtualVault | core_logic | ethereum | [`0x25e8f9...c27326`](./contracts/ethereum-1/0x25e8f96c443b392ff9cdb9159b02f0040ec27326/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | [`0x6c2c06...13ee55`](./contracts/arbitrum-42161/0x6c2c06790b3e3e3c38e12ee22f8183b37a13ee55/) | ⚠️ Unaudited |
| JonesGlpStableVault | core_logic | arbitrum | [`0xa485a0...a73e99`](./contracts/arbitrum-42161/0xa485a0bc44988b95245d5f20497ccaff58a73e99/) | ⚠️ Unaudited |
| cvxCrvToken | token | ethereum | [`0x616e8b...d4608d`](./contracts/ethereum-1/0x616e8bfa43f920657b3497dbf40d6b1a02d4608d/) | ⚠️ Unaudited |
| SynapseERC20 | token | arbitrum | [`0x8d9ba5...e65fb1`](./contracts/arbitrum-42161/0x8d9ba570d6cb60c7e3e0f31343efe75ab8e65fb1/) | ⚠️ Unaudited |
| ArbRdpxTokenV2 | token | arbitrum | [`0x32eb79...92a212`](./contracts/arbitrum-42161/0x32eb7902d4134bf98a28b963d26de779af92a212/) | ⚠️ Unaudited |
| JonesToken | token | arbitrum | [`0x10393c...cd67da`](./contracts/arbitrum-42161/0x10393c20975cf177a3513071bc110f7962cd67da/) | ⚠️ Unaudited |
| AuraToken | token | ethereum | 2 deployments: ethereum [`0x665d01...59cf15`](./contracts/ethereum-1/0x665d01dbd89a0d1b693bb806feea499b5359cf15/); ethereum `0xc0c293...903dbf` | ⚠️ Unaudited |
| UnderlyingVault | core_logic | arbitrum | 15 deployments: arbitrum [`0x0b5ddf...d73c40`](./contracts/arbitrum-42161/0x0b5ddfc404aa13e2f9c53f6a3f5126075ad73c40/); arbitrum `0x21164d...6ef565`; arbitrum `0x57593a...04a782`; arbitrum `0x60960c...d4bf03`; arbitrum `0x63dfc2...184dd3`; arbitrum `0x7cc310...49b151`; arbitrum `0xa0960b...40febe`; arbitrum `0xb0bde1...7be3a2`; arbitrum `0xc1bb89...3edc76`; arbitrum `0xca8e63...315e17`; arbitrum `0xd45ec2...9d5970`; arbitrum `0xd657df...abcd23`; arbitrum `0xe6ada8...0c4537`; arbitrum `0xf0b987...2272a7`; arbitrum `0xf55ee9...530f7c` | ⚠️ Unaudited |
| JonesERC20VaultV3 | core_logic | arbitrum | 3 deployments: arbitrum [`0x42448f...0e88e5`](./contracts/arbitrum-42161/0x42448fddcec02124cf6db19a9f91dea7bb0e88e5/); arbitrum `0x8883e5...73f3f5`; arbitrum `0xf46ce0...755346` | ⚠️ Unaudited |
| BaseRewardPool | core_logic | ethereum | [`0x5e5ea2...96efcc`](./contracts/ethereum-1/0x5e5ea2048475854a5702f5b8468a51ba1296efcc/) | ⚠️ Unaudited |
| MetavaultRefund | core_logic | arbitrum | 2 deployments: arbitrum [`0x287bfe...d60b09`](./contracts/arbitrum-42161/0x287bfe9ee929842d1af340814332e7548ad60b09/); arbitrum `0x7139bb...583c2b` | ⚠️ Unaudited |
| GMStrategy | core_logic | arbitrum | 6 deployments: arbitrum [`0x0ce108...918d3d`](./contracts/arbitrum-42161/0x0ce108b600ce98990d7764ea2ca0f70876918d3d/); arbitrum `0x326339...fd788c`; arbitrum `0x3d89a9...353f1d`; arbitrum `0x3fbe47...de97c7`; arbitrum `0x7d34fd...e73cad`; arbitrum `0xbf0642...a81b1e` | ⚠️ Unaudited |
| AuraBalRewardPool | core_logic | ethereum | [`0xc47162...651c0c`](./contracts/ethereum-1/0xc47162863a12227e5c3b0860715f9cf721651c0c/) | ⚠️ Unaudited |
| JonesDPXVaultV3 | core_logic | arbitrum | [`0x5ba98a...0e1246`](./contracts/arbitrum-42161/0x5ba98ad75ab87eb90ffc2b680bcfc6b9030e1246/) | ⚠️ Unaudited |
| ArbRdpxToken | token | arbitrum | [`0xeec2be...afdc81`](./contracts/arbitrum-42161/0xeec2be5c91ae7f8a338e1e5f3b5de49d07afdc81/) | ⚠️ Unaudited |
| DpxEthBearVault | core_logic | arbitrum | 3 deployments: arbitrum [`0x7a82a0...5fd2c3`](./contracts/arbitrum-42161/0x7a82a0ca7a2569d6cd3df2afeaf508f6d85fd2c3/); arbitrum `0x9be187...6c51e7`; arbitrum `0xe133c0...448b10` | ⚠️ Unaudited |
| BasicStakingStrategy | core_logic | arbitrum | 2 deployments: arbitrum [`0x558df6...23a1a6`](./contracts/arbitrum-42161/0x558df6bb25f754aea5fa2f3ed8e78e7afe23a1a6/); arbitrum `0x69a9b3...3c77e9` | ⚠️ Unaudited |
| InsuredLongsStrategy | core_logic | arbitrum | [`0x0980a1...0ca1a0`](./contracts/arbitrum-42161/0x0980a15ad64182b275b625c321beeab41e0ca1a0/) | ⚠️ Unaudited |
| JonesRdpxEthBearStrategy | core_logic | arbitrum | [`0xe6c548...e89cd0`](./contracts/arbitrum-42161/0xe6c548b9443b8a296a5bc084903b569594e89cd0/) | ⚠️ Unaudited |
| RdpxEthBearVault | core_logic | arbitrum | 2 deployments: arbitrum [`0xe40bb4...52a156`](./contracts/arbitrum-42161/0xe40bb47841e15eaef5e7c4220537d8469552a156/); arbitrum `0xf3e914...260747` | ⚠️ Unaudited |
| RdpxEthBullVault | core_logic | arbitrum | 2 deployments: arbitrum [`0x1e8060...cef910`](./contracts/arbitrum-42161/0x1e8060fc5c0335f04413032472965c1736cef910/); arbitrum `0x64f6c7...de5393` | ⚠️ Unaudited |
| JonesDpxEthBullStrategy | core_logic | arbitrum | 2 deployments: arbitrum [`0x5369b3...e72315`](./contracts/arbitrum-42161/0x5369b3eb4c9e87d0b349557034faa20c6ce72315/); arbitrum `0x9bc256...ffe4d6` | ⚠️ Unaudited |
| DpxEthBullVault | core_logic | arbitrum | 3 deployments: arbitrum [`0x4ec371...802d52`](./contracts/arbitrum-42161/0x4ec371ceeceda2dfe14eef9358cefc4380802d52/); arbitrum `0x7aa12d...ff9c19`; arbitrum `0x7addcd...f0b1c3` | ⚠️ Unaudited |
| Adapter | adapter | arbitrum | 2 deployments: arbitrum [`0x2e01f8...8f8fc3`](./contracts/arbitrum-42161/0x2e01f804f1c3c1b720c88a2aadd942b6938f8fc3/); arbitrum `0xb6c640...b5cd6c` | ⚠️ Unaudited |
| AlgebraLPManager | governance | arbitrum | 10 deployments: arbitrum [`0x09a317...edc2d3`](./contracts/arbitrum-42161/0x09a31770ed3f47a08a8cd85df3ec4c009fedc2d3/); arbitrum `0x0c0a64...1f90bb`; arbitrum `0x197f5d...b12cbb`; arbitrum `0x3b358a...0046f7`; arbitrum `0x5ef49b...9477c4`; arbitrum `0x8716f9...c6236d`; arbitrum `0x8e4ba3...4c7d56`; arbitrum `0x982c69...40a80f`; arbitrum `0xd41a43...c1bc07`; arbitrum `0xe0c17c...346ab9` | ⚠️ Unaudited |
| AlgebraPriceHelper | operational_periphery | arbitrum | 7 deployments: arbitrum [`0x058ba7...658567`](./contracts/arbitrum-42161/0x058ba77aa69f8f6d77eb44de4f42a8019d658567/); arbitrum `0x1943d9...3c5f75`; arbitrum `0x350b20...af0f39`; arbitrum `0x59794f...a874dd`; arbitrum `0xaa20d1...3a52a6`; arbitrum `0xcde8fe...ec35d0`; arbitrum `0xd59f6c...45491d` | ⚠️ Unaudited |
| AlgebraSwapper | adapter | arbitrum | 8 deployments: arbitrum [`0x26c6ce...4b4e75`](./contracts/arbitrum-42161/0x26c6ce4b9fd5b83a44d7fbb00f7d5779354b4e75/); arbitrum `0x5ad326...922009`; arbitrum `0x5fa392...b928e6`; arbitrum `0x61e1f7...90898d`; arbitrum `0x6ca4b1...cc1659`; arbitrum `0x911af0...486abe`; arbitrum `0xa45455...b952b0`; arbitrum `0xb9bd6a...c026e0` | ⚠️ Unaudited |
| ArbCallPriceOracle | operational_periphery | arbitrum | [`0x94c929...32b05e`](./contracts/arbitrum-42161/0x94c929722ee804ae25735839c041fc828732b05e/) | ⚠️ Unaudited |
| ArbEthSSOV | unknown | arbitrum | [`0x3154b7...2ed00f`](./contracts/arbitrum-42161/0x3154b747c4bfd35c67607d860b884d28f32ed00f/) | ⚠️ Unaudited |
| ArbEthSSOVV2 | unknown | arbitrum | 2 deployments: arbitrum [`0x2c9c1e...3a9d5f`](./contracts/arbitrum-42161/0x2c9c1e9b4bdf6bf9cb59c77e0e8c0892ce3a9d5f/); arbitrum `0x711da6...529c70` | ⚠️ Unaudited |
| ArbitratorVault | core_logic | ethereum | [`0x5d208c...bedc40`](./contracts/ethereum-1/0x5d208cd54f5132f2bd0c1f1e8d8c864bb6bedc40/) | ⚠️ Unaudited |
| ArbitrumWrappedJonesAura | unknown | arbitrum | 2 deployments: arbitrum [`0x6157e2...b0a04f`](./contracts/arbitrum-42161/0x6157e2dee2938efca144e507865f10cd93b0a04f/); arbitrum `0xcb9295...5da8a9` | ⚠️ Unaudited |
| ArbMonthlyCallsSsovV3 | unknown | arbitrum | [`0xdf3d96...cc6148`](./contracts/arbitrum-42161/0xdf3d96299275e2fb40124b8ad9d270acfdcc6148/) | ⚠️ Unaudited |
| ArbMultichainRewards | unknown | arbitrum | 3 deployments: arbitrum [`0x61f2d2...10843f`](./contracts/arbitrum-42161/0x61f2d2f39af6c6faa55684666d563d6f1d10843f/); arbitrum `0x7629fc...121f2c`; arbitrum `0xe2d415...b7c7b5` | ⚠️ Unaudited |
| ArbPriceOracle | operational_periphery | arbitrum | [`0x94bdab...ffc8a6`](./contracts/arbitrum-42161/0x94bdabbe315cdd992ed399dc52933a9690ffc8a6/) | ⚠️ Unaudited |
| ArbPriceOracleV2 | operational_periphery | arbitrum | [`0xbdb0f3...af3081`](./contracts/arbitrum-42161/0xbdb0f3330d4b32b3133738451c8237d0a8af3081/) | ⚠️ Unaudited |
| ArbStip | unknown | arbitrum | [`0x403fd3...e72fb8`](./contracts/arbitrum-42161/0x403fd39cbb6f1a1b5a842a29a88b2d262ce72fb8/) | ⚠️ Unaudited |
| AssetSwapper | adapter | arbitrum | 6 deployments: arbitrum [`0x838ea4...4eb2db`](./contracts/arbitrum-42161/0x838ea4314fa7ab13a452f8d4fc7c7dc2d74eb2db/); arbitrum `0xa33562...d3c137`; arbitrum `0xaacad1...3ef809`; arbitrum `0xb85438...d2726c`; arbitrum `0xc7679e...d2aa1a`; arbitrum `0xe5ed87...04e694` | ⚠️ Unaudited |
| AtlanticPutsPool | core_logic | arbitrum | [`0x1640ed...621379`](./contracts/arbitrum-42161/0x1640eda814072286fddc5b952d1c56e576621379/) | ⚠️ Unaudited |
| AtlanticStraddle | unknown | arbitrum | 15 deployments: arbitrum [`0x0be090...fa3e51`](./contracts/arbitrum-42161/0x0be0905dafa89dac8f26e9f96e04cfe3c5fa3e51/); arbitrum `0x0dc96f...dba829`; arbitrum `0x17fff5...848734`; arbitrum `0x2732b7...378dd1`; arbitrum `0x49bd75...ce8de1`; arbitrum `0x5847a3...2dd0dd`; arbitrum `0x59c648...5ab425`; arbitrum `0x88e75a...e7b05a`; arbitrum `0x99ab5b...2a18e3`; arbitrum `0xcbce47...923e5c`; arbitrum `0xcd7f2b...fa8e52`; arbitrum `0xd533ef...4b2fee`; arbitrum `0xe3e5ae...f67f19`; arbitrum `0xebad4c...93d046`; arbitrum `0xfca313...2da64e` | ⚠️ Unaudited |
| AtlanticStraddleUtils | unknown | arbitrum | [`0x418ca2...26d66a`](./contracts/arbitrum-42161/0x418ca2ad46bc90386bc05768da756e494d26d66a/) | ⚠️ Unaudited |
| AtlanticStraddleVolatilityOracle | operational_periphery | arbitrum | [`0x774537...60c015`](./contracts/arbitrum-42161/0x7745370dfcc3780dd7675995b529d4e24960c015/) | ⚠️ Unaudited |
| auraBALSwapper | adapter | ethereum | [`0x638385...41c7cf`](./contracts/ethereum-1/0x6383851e45098734f0f90742c2e7f258a441c7cf/) | ⚠️ Unaudited |
| AuraClaimZap | adapter | ethereum | [`0x623b83...917ab2`](./contracts/ethereum-1/0x623b83755a39b12161a63748f3f595a530917ab2/) | ⚠️ Unaudited |
| AuraCompounderStrategy | adapter | ethereum | 3 deployments: ethereum [`0x54d6dc...55bc3d`](./contracts/ethereum-1/0x54d6dcae86cb8d181ba3b8dd7f0704140f55bc3d/); ethereum `0x7629fc...121f2c`; ethereum `0xe2d415...b7c7b5` | ⚠️ Unaudited |
| AuraCompounderVault | adapter | ethereum | [`0x198d73...34cd1f`](./contracts/ethereum-1/0x198d7387fa97a73f05b8578cdeff8f2a1f34cd1f/) | ⚠️ Unaudited |
| AuraLocker | unknown | ethereum | [`0x3fa73f...9bbcac`](./contracts/ethereum-1/0x3fa73f1e5d8a792c80f426fc8f84fbf7ce9bbcac/) | ⚠️ Unaudited |
| AuraMerkleDrop | operational_periphery | ethereum | 2 deployments: ethereum [`0x1a661c...80a8fb`](./contracts/ethereum-1/0x1a661cf8d8cd69dd2a423f3626a461a24280a8fb/); ethereum `0x45eb1a...287724` | ⚠️ Unaudited |
| AuraMinter | unknown | ethereum | [`0x59a5cc...e13707`](./contracts/ethereum-1/0x59a5ccd34943cd0adcf5ce703ee9f06889e13707/) | ⚠️ Unaudited |
| AuraPenaltyForwarder | unknown | ethereum | [`0x404356...c20d1e`](./contracts/ethereum-1/0x4043569200f7a7a1d989abbabc2de2bde1c20d1e/) | ⚠️ Unaudited |
| AuraRouter | adapter | ethereum | 6 deployments: ethereum [`0x30342a...df3168`](./contracts/ethereum-1/0x30342ac5cdd95be2be23b8886a7c841bd9df3168/); ethereum `0x3593a7...8f2b24`; ethereum `0x86a757...c9bc27`; ethereum `0xa35092...57c613`; ethereum `0xef3df8...b03297`; ethereum `0xf01dd6...92b449` | ⚠️ Unaudited |
| AuraStakingProxy | proxy | ethereum | [`0xd9e863...f89c6c`](./contracts/ethereum-1/0xd9e863b7317a66fe0a4d2834910f604fd6f89c6c/) | ⚠️ Unaudited |
| AuraVestedEscrow | operational_periphery | ethereum | 5 deployments: ethereum [`0x243466...53fac6`](./contracts/ethereum-1/0x24346652e0e2ae0ce05c781501fdf4fe4553fac6/); ethereum `0x43b170...6694fa`; ethereum `0x45025e...1538f5`; ethereum `0x5bd3fc...2d836a`; ethereum `0xfd7217...30d422` | ⚠️ Unaudited |
| BalLiquidityProvider | unknown | ethereum | [`0xa7429a...70e32c`](./contracts/ethereum-1/0xa7429af4deb16827dad0e71d8aeea9c2bf70e32c/) | ⚠️ Unaudited |
| BaseIRVault | core_logic | arbitrum | 5 deployments: arbitrum [`0x26926f...d693b0`](./contracts/arbitrum-42161/0x26926fca034d971ba8668e900e143f6bb0d693b0/); arbitrum `0x3bbcbe...0f38d5`; arbitrum `0x5aa6f5...963c64`; arbitrum `0x602b9f...03a156`; arbitrum `0x7a0cef...fa385f` | ⚠️ Unaudited |
| BasicStakingStrategyV2 | core_logic | arbitrum | 3 deployments: arbitrum [`0x3763a3...d1584f`](./contracts/arbitrum-42161/0x3763a3d54485edba416f093b23d81a14cfd1584f/); arbitrum `0x73e857...81111a`; arbitrum `0xb277fc...b99a2a` | ⚠️ Unaudited |
| BasicStakingStrategyV3 | core_logic | arbitrum | 3 deployments: arbitrum [`0x3f38cd...9b5939`](./contracts/arbitrum-42161/0x3f38cde29c185f9ccff5a7d2ecb2ce3e2f9b5939/); arbitrum `0x40b4e4...8849ea`; arbitrum `0xd28fef...913688` | ⚠️ Unaudited |
| Booster | core_logic | ethereum | [`0x7818a1...8eee10`](./contracts/ethereum-1/0x7818a1da7bd1e64c199029e86ba244a9798eee10/) | ⚠️ Unaudited |
| BoosterOwner | core_logic | ethereum | [`0xfa838a...54ec34`](./contracts/ethereum-1/0xfa838af70314135159b309bf27f1dbf1f954ec34/) | ⚠️ Unaudited |
| BtcPutPriceOracle | operational_periphery | arbitrum | [`0x04844c...ed6b7c`](./contracts/arbitrum-42161/0x04844c08673e0ad8ef9ded1844b51af51bed6b7c/) | ⚠️ Unaudited |
| BtcPutVolatilityOracle | operational_periphery | arbitrum | [`0x90f5a9...a28075`](./contracts/arbitrum-42161/0x90f5a93b562adba63b1c0f5358554e7272a28075/) | ⚠️ Unaudited |
| BtcWeeklyPutsSsovV3 | unknown | arbitrum | 4 deployments: arbitrum [`0x411982...3fef3b`](./contracts/arbitrum-42161/0x411982342c0d41cebb1706ed80ef32d48f3fef3b/); arbitrum `0x545652...e204ba`; arbitrum `0x92433a...f36469`; arbitrum `0xa7507c...54caf7` | ⚠️ Unaudited |
| CallbackForwarder | unknown | arbitrum | [`0x993f5a...aefb77`](./contracts/arbitrum-42161/0x993f5a805bbfb5f59cf08b745b82ac42f1aefb77/) | ⚠️ Unaudited |
| CallbackRouter | adapter | arbitrum | 2 deployments: arbitrum [`0x0d8448...062822`](./contracts/arbitrum-42161/0x0d84489932582d394d2275ad92130d85e3062822/); arbitrum `0xe2f8f1...73537d` | ⚠️ Unaudited |
| Claimer | operational_periphery | arbitrum | [`0xc4e751...bf90f1`](./contracts/arbitrum-42161/0xc4e751f599fe515876346824ebb6995bb8bf90f1/) | ⚠️ Unaudited |
| ClaimFeesHelper | periphery | ethereum | [`0x999dbc...d0f56e`](./contracts/ethereum-1/0x999dbce0a18f721f04e793f916c30e72a9d0f56e/) | ⚠️ Unaudited |
| Compounder | adapter | arbitrum | [`0x6d5cfa...084ff1`](./contracts/arbitrum-42161/0x6d5cfab014c8ec8b8ce917e3648d767944084ff1/) | ⚠️ Unaudited |
| CompoundVault | core_logic | arbitrum | 2 deployments: arbitrum [`0x67dd2f...27197c`](./contracts/arbitrum-42161/0x67dd2f4d6e6d6d8d17b4839e6bff4fec2627197c/); arbitrum `0x8ca7f1...185c81` | ⚠️ Unaudited |
| ContributorVesting | operational_periphery | arbitrum | 4 deployments: arbitrum [`0x19ea65...c724f5`](./contracts/arbitrum-42161/0x19ea653256e79abaf90b4586632463d4b3c724f5/); arbitrum `0x47acb7...e83dda`; arbitrum `0xa506a3...e92207`; arbitrum `0xa99096...ce68c8` | ⚠️ Unaudited |
| Crv2PoolOracle | operational_periphery | arbitrum | [`0x1e305b...117040`](./contracts/arbitrum-42161/0x1e305b22c177f6fdb55d891c63b1c8c399117040/) | ⚠️ Unaudited |
| CrvDepositor | unknown | ethereum | [`0xead792...d1b827`](./contracts/ethereum-1/0xead792b55340aa20181a80d6a16db6a0ecd1b827/) | ⚠️ Unaudited |
| CrvDepositorWrapper | unknown | ethereum | [`0x68655a...5d4123`](./contracts/ethereum-1/0x68655ad9852a99c87c0934c7290bb62cfa5d4123/) | ⚠️ Unaudited |
| CrvPutPriceOracle | operational_periphery | arbitrum | [`0x8b88a2...cfe4dc`](./contracts/arbitrum-42161/0x8b88a2fc2c2056e0ab243642605dabbd6ccfe4dc/) | ⚠️ Unaudited |
| CrvVolatilityOracle | operational_periphery | arbitrum | [`0xd89407...60386e`](./contracts/arbitrum-42161/0xd89407796198799fa0ec640f7767b7441760386e/) | ⚠️ Unaudited |
| CrvWeeklyPutsSsovV3 | unknown | arbitrum | 4 deployments: arbitrum [`0x034754...278a1a`](./contracts/arbitrum-42161/0x03475494dc89d378c4268e90a62876efb0278a1a/); arbitrum `0x46478d...f354a2`; arbitrum `0x7c5ac7...890159`; arbitrum `0x7e00ab...386415` | ⚠️ Unaudited |
| CustomOracle | operational_periphery | arbitrum | 3 deployments: arbitrum [`0x2c1169...053385`](./contracts/arbitrum-42161/0x2c116962b192727fec83f18bf612c959b2053385/); arbitrum `0x3f5295...a617bf`; arbitrum `0x436a50...5abf7e` | ⚠️ Unaudited |
| CvxPutPriceOracle | operational_periphery | arbitrum | [`0x9e4cee...345824`](./contracts/arbitrum-42161/0x9e4cee5466fcf4e4f0f58d13e365cff85b345824/) | ⚠️ Unaudited |
| CvxWeeklyPutsSsovV3 | unknown | arbitrum | [`0x3e1383...b4f8b0`](./contracts/arbitrum-42161/0x3e138322b86897edf4ffc6060edc0c1220b4f8b0/) | ⚠️ Unaudited |
| Deployer | unknown | arbitrum | 8 deployments: base `0x2d3329...b872f5`; arbitrum [`0x1d4544...ecd7db`](./contracts/arbitrum-42161/0x1d4544459b6d13fbf2e14573d7c01208e0ecd7db/); arbitrum `0x290e26...39b84c`; arbitrum `0x4d3c03...02eeb4`; arbitrum `0x60aef1...62a991`; arbitrum `0x8513c6...8baebe`; blast `0x9b176f...fc4c4c`; blast `0xddcc80...b2fe62` | ⚠️ Unaudited |
| DopexArbEthSsovWrapper | unknown | arbitrum | 2 deployments: arbitrum [`0x5bc65f...2c31c1`](./contracts/arbitrum-42161/0x5bc65f20abceada2c54140b2bb55962bba2c31c1/); arbitrum `0xa91322...d66a20` | ⚠️ Unaudited |
| DopexBridgoorNFT | token | arbitrum | [`0x4ee9fe...b7d955`](./contracts/arbitrum-42161/0x4ee9fe9500e7c4fe849add9b14beec5ec5b7d955/) | ⚠️ Unaudited |
| DopexDpxSsovWrapper | unknown | arbitrum | 2 deployments: arbitrum [`0x39cd5f...914ea0`](./contracts/arbitrum-42161/0x39cd5f935cd7af62f6b74606484af7bbd4914ea0/); arbitrum `0xb2f4db...76da95` | ⚠️ Unaudited |
| DopexFarmWrapper | unknown | arbitrum | 2 deployments: arbitrum [`0x315e79...d8d0f3`](./contracts/arbitrum-42161/0x315e79536b0bd3617293ba4f68ef5772b7d8d0f3/); arbitrum `0xe5c24a...eb8a2b` | ⚠️ Unaudited |
| DopexFeeStrategy | core_logic | arbitrum | [`0xbd8d54...c425c9`](./contracts/arbitrum-42161/0xbd8d541500c10774cd1404f57344d233eec425c9/) | ⚠️ Unaudited |
| DopexGohmSsovWrapper | unknown | arbitrum | 2 deployments: arbitrum [`0x1dbccb...92c8ae`](./contracts/arbitrum-42161/0x1dbccb7bd0676df77574b702b61d4af44f92c8ae/); arbitrum `0x3b42b5...e6ebb6` | ⚠️ Unaudited |
| DopexHalloweenNFT | token | arbitrum | [`0x9bade4...91b1b5`](./contracts/arbitrum-42161/0x9bade4013a7601aa1f3e9f1361a4ebe60d91b1b5/) | ⚠️ Unaudited |
| DopexPositionManagerFactory | registry | arbitrum | [`0x7de847...d21df6`](./contracts/arbitrum-42161/0x7de8472d61d8805927f3f42b6938191b98d21df6/) | ⚠️ Unaudited |
| DopexSantasNFT | token | arbitrum | [`0xe5953c...156e5d`](./contracts/arbitrum-42161/0xe5953cd5c1046c5428aba3a1e8797218e5156e5d/) | ⚠️ Unaudited |
| DpxBonds | unknown | arbitrum | [`0x8c44c0...c6b4ea`](./contracts/arbitrum-42161/0x8c44c0ab9a15bacad7a4b663a89593c406c6b4ea/) | ⚠️ Unaudited |
| DpxCallPriceOracle | operational_periphery | arbitrum | [`0xeef800...6b5b91`](./contracts/arbitrum-42161/0xeef800eefb46f9e9f54b8774548f744e236b5b91/) | ⚠️ Unaudited |
| DpxCallPriceOracleV2 | operational_periphery | arbitrum | [`0x58bc6d...529341`](./contracts/arbitrum-42161/0x58bc6da61a00310ebc519fcf8c0d55493c529341/) | ⚠️ Unaudited |
| DpxCustomPriceOracle | operational_periphery | arbitrum | [`0x252c07...3137b9`](./contracts/arbitrum-42161/0x252c07e0356d3b1a8ce273e39885b094053137b9/) | ⚠️ Unaudited |
| DpxEthLpFarm | unknown | arbitrum | 3 deployments: arbitrum [`0x0a9522...6ccecd`](./contracts/arbitrum-42161/0x0a95222b5ed8690a0279993e63903687536ccecd/); arbitrum `0x1f80c9...e58a28`; arbitrum `0x5b13b0...bc8b7a` | ⚠️ Unaudited |
| DpxEthStorage | unknown | arbitrum | 5 deployments: arbitrum [`0x125a52...6357a3`](./contracts/arbitrum-42161/0x125a527949c4f6889c2d80ab0d95b17fe76357a3/); arbitrum `0x1e4920...5291ec`; arbitrum `0x5d070c...5047df`; arbitrum `0xa08b11...3ca22b`; arbitrum `0xb551fd...540c0f` | ⚠️ Unaudited |
| DpxMonthlyCallsSsovV3 | unknown | arbitrum | 3 deployments: arbitrum [`0x05e7ac...e0c817`](./contracts/arbitrum-42161/0x05e7aced3b7727f9129e6d302b488cd8a1e0c817/); arbitrum `0x1ae388...c3df57`; arbitrum `0xdb62c0...92c81f` | ⚠️ Unaudited |
| DpxPriceOracleV2 | operational_periphery | arbitrum | [`0x9162f6...53b454`](./contracts/arbitrum-42161/0x9162f655d085f266792fca4432c9d17c7e53b454/) | ⚠️ Unaudited |
| DpxPutPriceOracle | operational_periphery | arbitrum | [`0x0e574e...33f403`](./contracts/arbitrum-42161/0x0e574e2b4859f3789e190e25e9d85b691c33f403/) | ⚠️ Unaudited |
| DpxPutPriceOracleV2 | operational_periphery | arbitrum | [`0x9e250c...79176b`](./contracts/arbitrum-42161/0x9e250cae25cc0fd6e955285fe981b62c4479176b/) | ⚠️ Unaudited |
| DpxSSOV | unknown | arbitrum | [`0x0359b4...d13a33`](./contracts/arbitrum-42161/0x0359b4dcd2412ff0dafa8b020bcb57aa8bd13a33/) | ⚠️ Unaudited |
| DpxSSOVV2 | unknown | arbitrum | 2 deployments: arbitrum [`0x48252e...2894e3`](./contracts/arbitrum-42161/0x48252edbfcc8a27390827950ccfc1c00152894e3/); arbitrum `0xbb741d...02f46e` | ⚠️ Unaudited |
| DpxStakingStrategyV1 | core_logic | arbitrum | [`0xcc394b...5fd8b5`](./contracts/arbitrum-42161/0xcc394b9b430745c778f5ecc971e6613d7f5fd8b5/) | ⚠️ Unaudited |
| DpxStakingStrategyV2 | core_logic | arbitrum | 3 deployments: arbitrum [`0x31d104...6b57ba`](./contracts/arbitrum-42161/0x31d104edb91d681ff5189a92f25f8e14f56b57ba/); arbitrum `0x5711c4...5b19fb`; arbitrum `0xb0706e...96d11a` | ⚠️ Unaudited |
| DpxVolatilityOracleV2 | operational_periphery | arbitrum | [`0xaeae47...7dd3c0`](./contracts/arbitrum-42161/0xaeae470a71fab319c88b38d21f6ade73407dd3c0/) | ⚠️ Unaudited |
| DPXVotingEscrow | operational_periphery | arbitrum | [`0x80789d...5d9f16`](./contracts/arbitrum-42161/0x80789d252a288e93b01d82373d767d71a75d9f16/) | ⚠️ Unaudited |
| DpxWeeklyCallsSsovV3 | unknown | arbitrum | [`0x10fd85...20bd1f`](./contracts/arbitrum-42161/0x10fd85ec522c245a63239b9fc64434f58520bd1f/) | ⚠️ Unaudited |
| DpxWeeklyPutsSsovV3 | unknown | arbitrum | 4 deployments: arbitrum [`0x459819...f5f273`](./contracts/arbitrum-42161/0x459819c34266dd9154172d373ac559ce27f5f273/); arbitrum `0x490631...52a120`; arbitrum `0xe9132a...fa4e08`; arbitrum `0xf71b2b...14163c` | ⚠️ Unaudited |
| EasyMigrate | unknown | arbitrum | 2 deployments: arbitrum [`0x8ce052...524e3e`](./contracts/arbitrum-42161/0x8ce052d4fc61c69e9dc11dab22dc47aa5c524e3e/); arbitrum `0x8d47ca...9dbb99` | ⚠️ Unaudited |
| EnforceHub | unknown | arbitrum | 14 deployments: arbitrum [`0x08e110...4beed7`](./contracts/arbitrum-42161/0x08e110a186a84b03517906fc06da923d064beed7/); arbitrum `0x333e86...3c9c2e`; arbitrum `0x4cbcd0...24f73f`; arbitrum `0x4d4851...afd5bb`; arbitrum `0x50e5f8...e670ce`; arbitrum `0x7eaf17...df3ac0`; arbitrum `0x90117e...40c336`; arbitrum `0xa967fe...0f1750`; arbitrum `0xa96a08...a0536b`; arbitrum `0xa996c2...f08408`; arbitrum `0xabde81...d93807`; arbitrum `0xb978d9...dd6e54`; arbitrum `0xc14308...44088e`; arbitrum `0xeddb34...f9c572` | ⚠️ Unaudited |
| ERC20SSOV1inchRouter | adapter | arbitrum | [`0xc296c5...d0e89a`](./contracts/arbitrum-42161/0xc296c505207e34fe8afac9d0b1ced6ff17d0e89a/) | ⚠️ Unaudited |
| Escrow | operational_periphery | arbitrum | [`0x6d9c28...522baf`](./contracts/arbitrum-42161/0x6d9c288708a77d51fa66393916511cde60522baf/) | ⚠️ Unaudited |
| EthCallPriceOracle | operational_periphery | arbitrum | [`0x19e6ee...e23cc6`](./contracts/arbitrum-42161/0x19e6ee4c2cbe7bcc4cd1ef0bcf7e764fece23cc6/) | ⚠️ Unaudited |
| EthCallsSsovV3 | unknown | arbitrum | [`0x9e722e...81c911`](./contracts/arbitrum-42161/0x9e722e233646e1edea4a913489a75262a181c911/) | ⚠️ Unaudited |
| EthMonthlyCallsSsovV3 | unknown | arbitrum | 3 deployments: arbitrum [`0x7af639...49c83e`](./contracts/arbitrum-42161/0x7af6399e4dd8c1d5b7c53dc2c6ad04b39049c83e/); arbitrum `0x816103...7b4a23`; arbitrum `0xc59836...74dc03` | ⚠️ Unaudited |
| EthPutPriceOracle | operational_periphery | arbitrum | [`0x299b44...7ae509`](./contracts/arbitrum-42161/0x299b44c2f6d24ea1b41c6deec861d986047ae509/) | ⚠️ Unaudited |
| EthPutVolatilityOracle | operational_periphery | arbitrum | [`0x36b25d...94638f`](./contracts/arbitrum-42161/0x36b25d2f1f638c384ac3e000bef154149d94638f/) | ⚠️ Unaudited |
| EthQuarterlyPutsSsovV3 | unknown | arbitrum | [`0x8a0dd3...9f0b3a`](./contracts/arbitrum-42161/0x8a0dd3203a9f1cf66c7201e4a8ab4762d09f0b3a/) | ⚠️ Unaudited |
| EthStakingStrategyV1 | core_logic | arbitrum | 7 deployments: arbitrum [`0x0a1140...3e66d2`](./contracts/arbitrum-42161/0x0a11404220bdd38b98ed9978fb8fba17de3e66d2/); arbitrum `0x2c91b0...ec1120`; arbitrum `0x6b6117...98656b`; arbitrum `0x81d932...d11009`; arbitrum `0x822d16...109c08`; arbitrum `0x96bcd2...b7afc3`; arbitrum `0xa2862c...2dcba0` | ⚠️ Unaudited |
| ETHVolatilityOracle | operational_periphery | arbitrum | [`0x872096...03fb4f`](./contracts/arbitrum-42161/0x87209686d0f085fd35b084410b99241dbc03fb4f/) | ⚠️ Unaudited |
| EthWeeklyCallsSsovV3 | unknown | arbitrum | 5 deployments: arbitrum [`0x2b055d...aa9255`](./contracts/arbitrum-42161/0x2b055d25a5fa6d493c53c178480e962aabaa9255/); arbitrum `0x376bec...1988fd`; arbitrum `0x3f0a22...2d775a`; arbitrum `0x9cc9be...0e6ea0`; arbitrum `0x9f52c2...3f54b0` | ⚠️ Unaudited |
| EthWeeklyPutsSsovV3 | unknown | arbitrum | 4 deployments: arbitrum [`0x32449d...17ad5a`](./contracts/arbitrum-42161/0x32449df9c617c59f576dfc461d03f261f617ad5a/); arbitrum `0x865796...edb01f`; arbitrum `0xc7552c...59f32c`; arbitrum `0xe1acc3...1d0e02` | ⚠️ Unaudited |
| ExtraRewardsDistributor | operational_periphery | ethereum | [`0xa3739b...fbd308`](./contracts/ethereum-1/0xa3739b206097317c72ef416f0e75bb8f58fbd308/) | ⚠️ Unaudited |
| ExtraRewardStashV3 | unknown | ethereum | [`0xf9c0f3...175742`](./contracts/ethereum-1/0xf9c0f3431f859e773ed052758052e06b6d175742/) | ⚠️ Unaudited |
| FarmController | governance | arbitrum | 2 deployments: arbitrum [`0x0d3fdd...58f0c0`](./contracts/arbitrum-42161/0x0d3fdd45706bec4077725bf691bbb4770958f0c0/); arbitrum `0x5a8546...3c87cc` | ⚠️ Unaudited |
| FeeStrategy | core_logic | arbitrum | [`0x3f3c58...478d5a`](./contracts/arbitrum-42161/0x3f3c58ccb0655fa9161d0b4b49b217b3f6478d5a/) | ⚠️ Unaudited |
| FeeStrategy2 | core_logic | arbitrum | [`0x1a5444...16563a`](./contracts/arbitrum-42161/0x1a5444362857cafdc58ab95b79a5a9285d16563a/) | ⚠️ Unaudited |
| FeeStrategy3 | core_logic | arbitrum | [`0xb96491...b3deac`](./contracts/arbitrum-42161/0xb964912b4054e8fb54431ed952f29ae3c8b3deac/) | ⚠️ Unaudited |
| FeeStrategyPut | core_logic | arbitrum | [`0xc1febb...8e3ba9`](./contracts/arbitrum-42161/0xc1febbf0b08fbbae32d4bf23fb375150548e3ba9/) | ⚠️ Unaudited |
| GlpAdapter | adapter | arbitrum | 2 deployments: arbitrum [`0x42efe3...ebefc1`](./contracts/arbitrum-42161/0x42efe3e686808cca051a49bcde34c5cba2ebefc1/); arbitrum `0xa79d81...ad9400` | ⚠️ Unaudited |
| GlpJonesRewards | unknown | arbitrum | 2 deployments: arbitrum [`0x3c5376...bd6673`](./contracts/arbitrum-42161/0x3c5376bf032cec70c342b64f43778dc06bbd6673/); arbitrum `0xb6ea5e...62c07e` | ⚠️ Unaudited |
| GlpPriceAggregator | operational_periphery | arbitrum | [`0x691113...00883b`](./contracts/arbitrum-42161/0x6911132effaee3d1116a96c1357830a35400883b/) | ⚠️ Unaudited |
| GlpRewardDistributor | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x5b53d6...6b78b2`](./contracts/arbitrum-42161/0x5b53d6b03d122050b8cc9b647ed11c34d66b78b2/); arbitrum `0xe0a07a...53c2a2` | ⚠️ Unaudited |
| GlpRouter | adapter | arbitrum | 2 deployments: arbitrum [`0x1fce2c...f754ae`](./contracts/arbitrum-42161/0x1fce2cd34bb76c988d5033d081250ed227f754ae/); arbitrum `0x474ec7...efd30c` | ⚠️ Unaudited |
| GlpStrategy | core_logic | arbitrum | 4 deployments: arbitrum [`0x023509...84d6fa`](./contracts/arbitrum-42161/0x0235096e97c12a84d8b96ca2c3bcccf93e84d6fa/); arbitrum `0x4af0ab...a0d50d`; arbitrum `0xb827d2...498c27`; arbitrum `0xf4db2e...ce9358` | ⚠️ Unaudited |
| GMOracle | operational_periphery | arbitrum | 17 deployments: arbitrum [`0x2433a6...9419ba`](./contracts/arbitrum-42161/0x2433a617c0266091d3f46ae223caa809c89419ba/); arbitrum `0x25374f...b59654`; arbitrum `0x28e8f3...4009ea`; arbitrum `0x394bfe...92e495`; arbitrum `0x5925fd...9b6073`; arbitrum `0x6c81e9...d949cc`; arbitrum `0x7cdd23...d7fa4b`; arbitrum `0x7dd6f7...c0b339`; arbitrum `0x8464fc...123e00`; arbitrum `0xa04ddd...d55a89`; arbitrum `0xa5f6d1...9d37ef`; arbitrum `0xab3252...dd6e2f`; arbitrum `0xb2022e...b312e9`; arbitrum `0xb8c7ed...9da2a7`; arbitrum `0xc29c35...5d767d`; arbitrum `0xc3b6c7...44fbf5`; arbitrum `0xd0eef9...936690` | ⚠️ Unaudited |
| GMRouter | adapter | arbitrum | 16 deployments: arbitrum [`0x00fd61...04653f`](./contracts/arbitrum-42161/0x00fd61b802484eaf39c054a601bdfc08dd04653f/); arbitrum `0x078082...474c29`; arbitrum `0x086cbe...87b6d5`; arbitrum `0x3416a5...33b6bb`; arbitrum `0x34dea3...1f1937`; arbitrum `0x3d1d3b...e21d8a`; arbitrum `0x7af94d...81590c`; arbitrum `0x81ad8e...eabde3`; arbitrum `0xbb5388...f8f5f6`; arbitrum `0xc23065...f144d0`; arbitrum `0xcac4b0...4fa852`; arbitrum `0xd6f383...b8b1e5`; arbitrum `0xe753c2...ff7b11`; arbitrum `0xe9826c...4f071f`; arbitrum `0xf354a3...67883c`; arbitrum `0xfbdfdd...d0ae73` | ⚠️ Unaudited |
| GMViewer | periphery | arbitrum | 9 deployments: arbitrum [`0x146e8d...17f54e`](./contracts/arbitrum-42161/0x146e8da8ac5d203a4f479ede013d2e2ec017f54e/); arbitrum `0x44bb21...10db23`; arbitrum `0x48d544...675655`; arbitrum `0x64f847...693ca8`; arbitrum `0x8029f4...91e0c1`; arbitrum `0x97c881...7487ab`; arbitrum `0xa37e63...a5ef0c`; arbitrum `0xb9447a...b2fb9f`; arbitrum `0xf1c88f...275140` | ⚠️ Unaudited |
| GmxAdapter | adapter | arbitrum | [`0x698e6a...8b37f0`](./contracts/arbitrum-42161/0x698e6a59481c0713f8458e2f100f1c0ce18b37f0/) | ⚠️ Unaudited |
| GmxCustomPriceOracle | operational_periphery | arbitrum | [`0xf92009...33c3e7`](./contracts/arbitrum-42161/0xf92009a73d810798cb71651a73e4c33a3033c3e7/) | ⚠️ Unaudited |
| GmxLibrary | unknown | arbitrum | [`0x405775...7f5d2a`](./contracts/arbitrum-42161/0x405775be91aab1d06a3afbb5a1a6d2a5cf7f5d2a/) | ⚠️ Unaudited |
| GmxPriceOracle | operational_periphery | arbitrum | [`0x60e07b...1c7ee0`](./contracts/arbitrum-42161/0x60e07b25ba79bf8d40831cdbda60cf49571c7ee0/) | ⚠️ Unaudited |
| GmxPriceOracleV2 | operational_periphery | arbitrum | [`0x8856f3...132e93`](./contracts/arbitrum-42161/0x8856f388a2076f1b06f872d4553744c90b132e93/) | ⚠️ Unaudited |
| GmxPutPriceOracle | operational_periphery | arbitrum | [`0x03c53c...08248f`](./contracts/arbitrum-42161/0x03c53c4250c65e06e19ed4c1393e39773508248f/) | ⚠️ Unaudited |
| GmxPutPriceOracleV2 | operational_periphery | arbitrum | [`0x2da831...9a7076`](./contracts/arbitrum-42161/0x2da83188f2c6f760db0493a7087266fd1e9a7076/) | ⚠️ Unaudited |
| GmxSSOV | unknown | arbitrum | 2 deployments: arbitrum [`0x04996a...52c93b`](./contracts/arbitrum-42161/0x04996afcf40a14d0892b00c816874f9c1a52c93b/); arbitrum `0x5be3c7...62b0ae` | ⚠️ Unaudited |
| GmxVolatilityOracle | operational_periphery | arbitrum | [`0x83a5b5...0adb5d`](./contracts/arbitrum-42161/0x83a5b587ae36f342d405a7e5971941168e0adb5d/) | ⚠️ Unaudited |
| GmxVolatilityOracleV2 | operational_periphery | arbitrum | [`0x6bc4ef...f112e4`](./contracts/arbitrum-42161/0x6bc4ef91db2a18cbf557d3339f263872a8f112e4/) | ⚠️ Unaudited |
| GmxWeeklyPutsSsovV3 | unknown | arbitrum | 4 deployments: arbitrum [`0x6237a3...cd4866`](./contracts/arbitrum-42161/0x6237a32482ec21d9d9a35b67d9ecbdbd0dcd4866/); arbitrum `0x7e513b...9ace59`; arbitrum `0xb5acc9...8a79a0`; arbitrum `0xf071f0...e91514` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | 2 deployments: arbitrum [`0xdd0556...d90774`](./contracts/arbitrum-42161/0xdd0556ddcfe7cdab3540e7f09cb366f498d90774/); arbitrum `0xfa82f1...ca0b1f` | ⚠️ Unaudited |
| GohmCallPriceOracle | operational_periphery | arbitrum | [`0x2ba83d...aaf1a7`](./contracts/arbitrum-42161/0x2ba83da46846ccf633db9d30209163c627aaf1a7/) | ⚠️ Unaudited |
| GohmCustomPriceOracle | operational_periphery | arbitrum | [`0x5f5870...0147d4`](./contracts/arbitrum-42161/0x5f5870c7364ae87643747b06a0ca7fde200147d4/) | ⚠️ Unaudited |
| GohmMonthlyCallsSsovV3 | unknown | arbitrum | 2 deployments: arbitrum [`0x52c701...6f98bd`](./contracts/arbitrum-42161/0x52c70138fff1a5a6d821ab4bb39d3df0346f98bd/); arbitrum `0xeda8f8...d614f7` | ⚠️ Unaudited |
| GohmPriceOracle | operational_periphery | arbitrum | [`0x6cb7d5...48a807`](./contracts/arbitrum-42161/0x6cb7d5bd21664e0201347bd93d66ce18bc48a807/) | ⚠️ Unaudited |
| GohmPriceOracleV2 | operational_periphery | arbitrum | [`0x4d3e5c...7a3265`](./contracts/arbitrum-42161/0x4d3e5cabc0c91f3899ad3ed2a83401cbee7a3265/) | ⚠️ Unaudited |
| GohmPutPriceOracle | operational_periphery | arbitrum | [`0x7d3bb7...f41570`](./contracts/arbitrum-42161/0x7d3bb7a1d5ec0378ca3a2beb4f2423ecf5f41570/) | ⚠️ Unaudited |
| GohmSSOV | unknown | arbitrum | [`0x89836d...2d2318`](./contracts/arbitrum-42161/0x89836d5f178141aaf013412b12abd754802d2318/) | ⚠️ Unaudited |
| GohmSSOVV2 | unknown | arbitrum | 2 deployments: arbitrum [`0x460f95...db08d6`](./contracts/arbitrum-42161/0x460f95323a32e26c8d32346abe73eb94d7db08d6/); arbitrum `0x54552c...c88e1b` | ⚠️ Unaudited |
| GohmStakingStrategy | core_logic | arbitrum | 3 deployments: arbitrum [`0x525bf3...957587`](./contracts/arbitrum-42161/0x525bf37950e74448e2e39db95e0b9bc971957587/); arbitrum `0x800111...063fd8`; arbitrum `0xf46354...02c88b` | ⚠️ Unaudited |
| GohmVolatilityOracle | operational_periphery | arbitrum | [`0xbf9144...d7a6a8`](./contracts/arbitrum-42161/0xbf91446115f3e3eaf5079a88e078f876c0d7a6a8/) | ⚠️ Unaudited |
| GohmVolatilityOracleV2 | operational_periphery | arbitrum | [`0x746c39...756abf`](./contracts/arbitrum-42161/0x746c3914d3c11139178b1aedd6f3f7eacf756abf/) | ⚠️ Unaudited |
| GohmWeeklyCallsSsovV3 | unknown | arbitrum | [`0x546cd3...5caf0c`](./contracts/arbitrum-42161/0x546cd36f761f1d984eee1dbe67cc4f86e75caf0c/) | ⚠️ Unaudited |
| GohmWeeklyPutsSsovV3 | unknown | arbitrum | 4 deployments: arbitrum [`0x4269af...b877fd`](./contracts/arbitrum-42161/0x4269af9076586230bf5fa3655144a5fe9cb877fd/); arbitrum `0x541fdd...6b8985`; arbitrum `0x7904ea...b65042`; arbitrum `0xdc6912...762d66` | ⚠️ Unaudited |
| GovernanceRing | unknown | arbitrum | 3 deployments: base `0x3f1c45...ebc9b9`; arbitrum [`0x08fb38...363a7c`](./contracts/arbitrum-42161/0x08fb380cadf28fc7e0121db7c47d149c0d363a7c/); blast `0xd45245...322a5e` | ⚠️ Unaudited |
| HatDistributionCenter | unknown | arbitrum | 4 deployments: arbitrum [`0x1c208c...df48d7`](./contracts/arbitrum-42161/0x1c208cb30838cc3fd492627321624ce87cdf48d7/); arbitrum `0x808a84...dfdf86`; arbitrum `0x8c197b...a82eb4`; arbitrum `0xa35724...c4bf8c` | ⚠️ Unaudited |
| HatDistributionCenterV2 | unknown | arbitrum | [`0x4c163b...757bca`](./contracts/arbitrum-42161/0x4c163b64fd2c777bd0752cfc4312c7bbea757bca/) | ⚠️ Unaudited |
| HyperAirdropClaim | operational_periphery | blast | [`0xf537fb...49ac94`](./contracts/blast-81457/0xf537fb9a99b58104b898f692bbc363c3e949ac94/) | ⚠️ Unaudited |
| HyperClaimer | operational_periphery | blast | [`0xb13643...bc2b2a`](./contracts/blast-81457/0xb1364361dc71641defc57a0b1f06afb5e0bc2b2a/) | ⚠️ Unaudited |
| IndividualBuffer | unknown | arbitrum | 3 deployments: arbitrum [`0x917aab...3b33fb`](./contracts/arbitrum-42161/0x917aab660066cd8a96bc3bf0de9ed863313b33fb/); arbitrum `0x91e8df...6cf722`; arbitrum `0xb65bdf...d3b310` | ⚠️ Unaudited |
| InsuredLongsUtils | unknown | arbitrum | [`0x82ad59...20f3d4`](./contracts/arbitrum-42161/0x82ad5948e47c6e18d0cd1a5a243a4f032420f3d4/) | ⚠️ Unaudited |
| IrVaultFeeStrategy | core_logic | arbitrum | [`0xd6b065...aaf951`](./contracts/arbitrum-42161/0xd6b0654e180d1fc0b7b9a64be8ddebce4aaaf951/) | ⚠️ Unaudited |
| jAuraRateProvider | unknown | ethereum | 2 deployments: ethereum [`0x3556f7...f7eaea`](./contracts/ethereum-1/0x3556f710c165090aae9f98eb62f5b04adef7eaea/); ethereum `0xee5327...2db368` | ⚠️ Unaudited |
| jGlpOracle | operational_periphery | arbitrum | 4 deployments: arbitrum [`0x70c7e4...af9bf6`](./contracts/arbitrum-42161/0x70c7e4834a3f7565b7cd8977b33c93d347af9bf6/); arbitrum `0x8f5166...141e7e`; arbitrum `0xef96d5...af220c`; arbitrum `0xfbc4cf...1d23bf` | ⚠️ Unaudited |
| jGlpViewer | periphery | arbitrum | 7 deployments: arbitrum [`0x017bd9...07497b`](./contracts/arbitrum-42161/0x017bd9d6657d18f4114572f340c944165f07497b/); arbitrum `0x380dfd...c86594`; arbitrum `0x38333a...7d50fd`; arbitrum `0x86dd54...45895e`; arbitrum `0xdd80ac...2f50da`; arbitrum `0xddafd8...e1b5e9`; arbitrum `0xee5828...fe86ac` | ⚠️ Unaudited |
| jGMIndex | unknown | arbitrum | 4 deployments: arbitrum [`0x4ff190...25de59`](./contracts/arbitrum-42161/0x4ff19015f6d27d9a745cd76c0a6092719925de59/); arbitrum `0xabb464...47670a`; arbitrum `0xaf9fb7...d19f5f`; arbitrum `0xbef7a3...bfdaf9` | ⚠️ Unaudited |
| JonesAirdrop | operational_periphery | arbitrum | [`0x5444c7...e7944d`](./contracts/arbitrum-42161/0x5444c71cdd5ed85b6d51a297175bf71914e7944d/) | ⚠️ Unaudited |
| JonesArbETHVaultV2 | core_logic | arbitrum | 3 deployments: arbitrum [`0x6be861...8b1354`](./contracts/arbitrum-42161/0x6be861aa87009331bf62e22d418ab666e88b1354/); arbitrum `0xd126f3...7535f8`; arbitrum `0xd38e5d...0e7b2d` | ⚠️ Unaudited |
| JonesAsset | unknown | arbitrum | 5 deployments: arbitrum [`0x1f6fa7...eccb23`](./contracts/arbitrum-42161/0x1f6fa7a58701b3773b08a1a16d06b656b0eccb23/); arbitrum `0x537561...dce421`; arbitrum `0x662d0f...ac08a3`; arbitrum `0xc38687...f4768c`; arbitrum `0xf01886...b9ea19` | ⚠️ Unaudited |
| JonesAssetVaultV1 | core_logic | arbitrum | [`0xeefd6b...dd2281`](./contracts/arbitrum-42161/0xeefd6ba4f562330a3ba35badce2210a2e6dd2281/) | ⚠️ Unaudited |
| JonesBuybacks | unknown | arbitrum | 2 deployments: arbitrum [`0x2d067a...16c0c3`](./contracts/arbitrum-42161/0x2d067a1dc49f4b5809619bdbd2289d067016c0c3/); arbitrum `0xa00523...0cad24` | ⚠️ Unaudited |
| JonesDpxCallStrategy | core_logic | arbitrum | [`0x6ecaa3...ed7c24`](./contracts/arbitrum-42161/0x6ecaa3203aeb4d0cc21745f2752a73b41ced7c24/) | ⚠️ Unaudited |
| JonesDpxEthBearStrategy | core_logic | arbitrum | 2 deployments: arbitrum [`0x765a3f...b1e02a`](./contracts/arbitrum-42161/0x765a3f26bcafc024746f856a0345dc83f1b1e02a/); arbitrum `0x7bd895...4ecdc4` | ⚠️ Unaudited |
| JonesDPXHedgingV3Strategy | core_logic | arbitrum | [`0xc75417...127901`](./contracts/arbitrum-42161/0xc75417cb103d7008ecb07aa6fbf214ee2c127901/) | ⚠️ Unaudited |
| JonesDpxPutStrategy | core_logic | arbitrum | [`0x504764...d9d31f`](./contracts/arbitrum-42161/0x504764add41632c460924456074aa62c1bd9d31f/) | ⚠️ Unaudited |
| JonesDPXVaultV2 | core_logic | arbitrum | 3 deployments: arbitrum [`0x1c8db7...7612ba`](./contracts/arbitrum-42161/0x1c8db76703ad7e33551e6e022bf429fd857612ba/); arbitrum `0x211c70...f7c221`; arbitrum `0xba3386...80f7b4` | ⚠️ Unaudited |
| JonesEthCallStrategy | core_logic | arbitrum | [`0xba0563...c1f1dc`](./contracts/arbitrum-42161/0xba0563ffe3c7abe915d3dc404f1667682bc1f1dc/) | ⚠️ Unaudited |
| JonesEthPutStrategy | core_logic | arbitrum | 2 deployments: arbitrum [`0x02017a...43674e`](./contracts/arbitrum-42161/0x02017a8334196537fd1933de833b3ece9a43674e/); arbitrum `0x6266d3...c77f81` | ⚠️ Unaudited |
| JonesETHVaultV1 | core_logic | arbitrum | [`0x50744d...2d561c`](./contracts/arbitrum-42161/0x50744d5e6d138aca596f7d36e659d097be2d561c/) | ⚠️ Unaudited |
| JonesFeeReceiver | unknown | arbitrum | [`0xccdb22...ea6b24`](./contracts/arbitrum-42161/0xccdb22c29f849c2c34380d64217cb8636dea6b24/) | ⚠️ Unaudited |
| JonesGlpCompoundRewards | unknown | arbitrum | 2 deployments: arbitrum [`0x7241bc...4a3af6`](./contracts/arbitrum-42161/0x7241bc8035b65865156ddb5edef3eb32874a3af6/); arbitrum `0xe66998...8458e0` | ⚠️ Unaudited |
| JonesGlpLeverageStrategy | core_logic | arbitrum | 2 deployments: arbitrum [`0x15df56...b584d5`](./contracts/arbitrum-42161/0x15df56a82c194fefec9337c37a41964b69b584d5/); arbitrum `0x8e53d1...04cd31` | ⚠️ Unaudited |
| JonesGlpRewardDistributor | operational_periphery | arbitrum | [`0xda04b5...980a12`](./contracts/arbitrum-42161/0xda04b5f54756774ad405de499bb5100c80980a12/) | ⚠️ Unaudited |
| JonesGlpRewardsSplitter | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x43cc8e...ad7216`](./contracts/arbitrum-42161/0x43cc8e7026077e4b21ddc658ea26f39475ad7216/); arbitrum `0xb77289...bf889a` | ⚠️ Unaudited |
| JonesGlpRewardsSwapper | adapter | arbitrum | [`0x65ab0a...a689b4`](./contracts/arbitrum-42161/0x65ab0ad9f0e6db36aac10f28e97505c199a689b4/) | ⚠️ Unaudited |
| JonesGlpRewardTracker | unknown | arbitrum | 2 deployments: arbitrum [`0x13c6be...b19d9d`](./contracts/arbitrum-42161/0x13c6bed5aa16823aba5bba691caec63788b19d9d/); arbitrum `0xeb23c7...7cfaca` | ⚠️ Unaudited |
| JonesGlpVault | core_logic | arbitrum | [`0x17ff15...7f24c7`](./contracts/arbitrum-42161/0x17ff154a329e37282eb9a76c3ae848fc277f24c7/) | ⚠️ Unaudited |
| JonesGlpVaultRouter | adapter | arbitrum | 2 deployments: arbitrum [`0x01ad96...05aec2`](./contracts/arbitrum-42161/0x01ad96292cdc627307817c428562226fd905aec2/); arbitrum `0x2f43c6...f3d713` | ⚠️ Unaudited |
| JonesGohmCallStrategy | core_logic | arbitrum | [`0x68798c...41bf04`](./contracts/arbitrum-42161/0x68798c683dbd43c3a16ae8c3e02c37999641bf04/) | ⚠️ Unaudited |
| JonesGOHMHedgingV3Strategy | core_logic | arbitrum | [`0x2f9980...60618b`](./contracts/arbitrum-42161/0x2f9980d6fb25bd972196b19e243e36dbde60618b/) | ⚠️ Unaudited |
| JonesGohmPutStrategy | core_logic | arbitrum | [`0xe5a8ab...ccba61`](./contracts/arbitrum-42161/0xe5a8ab24dc1b0f54dc3803cb33098879f8ccba61/) | ⚠️ Unaudited |
| JonesgOHMVaultV2 | core_logic | arbitrum | 2 deployments: arbitrum [`0x9a62e4...69c814`](./contracts/arbitrum-42161/0x9a62e407028961eac4538453cb5d97038b69c814/); arbitrum `0xa0f154...4d76ba` | ⚠️ Unaudited |
| JonesGuardedLaunch | governance | arbitrum | [`0x39c144...007ddb`](./contracts/arbitrum-42161/0x39c1442223a30e14066302b2c80aa660ab007ddb/) | ⚠️ Unaudited |
| JonesHedgingV3Strategy | core_logic | arbitrum | 5 deployments: arbitrum [`0x211187...b6beb9`](./contracts/arbitrum-42161/0x2111875f2e37d98c0b00bc66099b1bfb07b6beb9/); arbitrum `0xb9bd05...7543e6`; arbitrum `0xc8d6d2...d12725`; arbitrum `0xe36fa7...77d349`; arbitrum `0xe98f68...d02939` | ⚠️ Unaudited |
| JonesRdpxCallStrategy | core_logic | arbitrum | [`0xb98976...3aabc5`](./contracts/arbitrum-42161/0xb98976a008191948a6857df824034d3c5f3aabc5/) | ⚠️ Unaudited |
| JonesRdpxEthBullStrategy | core_logic | arbitrum | [`0x711f1b...524de9`](./contracts/arbitrum-42161/0x711f1bf759d3f749b938cf040ab65110b8524de9/) | ⚠️ Unaudited |
| JonesRDPXHedgingV3Strategy | core_logic | arbitrum | [`0x37a86c...8f95bf`](./contracts/arbitrum-42161/0x37a86cb53981cc762709b2c402b0f790d58f95bf/) | ⚠️ Unaudited |
| JonesRdpxPutStrategy | core_logic | arbitrum | [`0x261287...84e823`](./contracts/arbitrum-42161/0x2612870b2a96f43430e19bb6873a74295684e823/) | ⚠️ Unaudited |
| JonesRefund | unknown | arbitrum | [`0x9e74c8...b9e307`](./contracts/arbitrum-42161/0x9e74c867198e2c46bc3f365ac3b401d67cb9e307/) | ⚠️ Unaudited |
| JonesSaleClaim | unknown | arbitrum | [`0x5a81ab...19829b`](./contracts/arbitrum-42161/0x5a81abb52d96241d15d8b2bdcd76034e4119829b/) | ⚠️ Unaudited |
| JonesSSOVCallV3Strategy | core_logic | arbitrum | 13 deployments: arbitrum [`0x02dcd1...182d95`](./contracts/arbitrum-42161/0x02dcd1d46ca19cca8961658f9389b4901e182d95/); arbitrum `0x1304e5...c897dd`; arbitrum `0x30f3cd...1a083f`; arbitrum `0x37a15b...607c05`; arbitrum `0x5296d6...44e33e`; arbitrum `0x5faa93...4bf437`; arbitrum `0x64f4be...cf7219`; arbitrum `0x67b99b...510e57`; arbitrum `0xc298d6...5a1637`; arbitrum `0xc54562...b42538`; arbitrum `0xcb75dd...637d86`; arbitrum `0xcb9423...91044c`; arbitrum `0xd74645...7520a5` | ⚠️ Unaudited |
| JonesSSOVPutV3Strategy | core_logic | arbitrum | 8 deployments: arbitrum [`0x220890...ebeb34`](./contracts/arbitrum-42161/0x22089039a813aedde848ac5876c1492fd2ebeb34/); arbitrum `0x34c471...6529b6`; arbitrum `0x43c952...35a6cd`; arbitrum `0xa151fe...49f1d0`; arbitrum `0xb3994c...a54fc1`; arbitrum `0xbd2c07...3e7545`; arbitrum `0xdedc5d...376ffa`; arbitrum `0xe2bfe2...1d6110` | ⚠️ Unaudited |
| JonesTestnet | unknown | arbitrum | 2 deployments: arbitrum [`0x4a7d28...8409ca`](./contracts/arbitrum-42161/0x4a7d28bfba97dc5fc71bca31cf454f1b498409ca/); arbitrum `0x98c053...d877a3` | ⚠️ Unaudited |
| JonesTokenSale | token | arbitrum | [`0x6580f4...36f79a`](./contracts/arbitrum-42161/0x6580f41efc34e6d49ab692bd338d2a0e0636f79a/) | ⚠️ Unaudited |
| JonesTokenSaleV3 | token | arbitrum | [`0x8a0027...4f1cf5`](./contracts/arbitrum-42161/0x8a0027152ad2781c0cbabda0cc53290bf04f1cf5/) | ⚠️ Unaudited |
| JonesWETHHedgingV3Strategy | core_logic | arbitrum | [`0x3327a5...a32993`](./contracts/arbitrum-42161/0x3327a5f041e821f476e00572ee0862fbcaa32993/) | ⚠️ Unaudited |
| JonesWETHVaultV3Adapter | adapter | arbitrum | 2 deployments: arbitrum [`0x086d9a...be7772`](./contracts/arbitrum-42161/0x086d9abc69c60b75470e620221cd857bcdbe7772/); arbitrum `0xbcb55b...6f3c2d` | ⚠️ Unaudited |
| jUsdcOracle | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x263c4f...bb4cc2`](./contracts/arbitrum-42161/0x263c4fabd13b3822f5d476683bbfe2c437bb4cc2/); arbitrum `0xb8d51f...e59c83` | ⚠️ Unaudited |
| LeverageRouter | adapter | arbitrum | 7 deployments: arbitrum [`0x13504b...d06d63`](./contracts/arbitrum-42161/0x13504bfff1ce638c04619f4fd0d51a2867d06d63/); arbitrum `0x3675fb...a5b144`; arbitrum `0x3f3738...810c55`; arbitrum `0x557ca5...b5a7dc`; arbitrum `0x6cba0f...16e4f3`; arbitrum `0xabe8f6...961c7e`; arbitrum `0xdc5055...8e2c47` | ⚠️ Unaudited |
| LeverageStrategy | core_logic | arbitrum | 4 deployments: arbitrum [`0x145f1d...072780`](./contracts/arbitrum-42161/0x145f1d25abc5ca103a9680496d07ba26d3072780/); arbitrum `0x7dfbd2...465fca`; arbitrum `0x7ee753...c61c5b`; arbitrum `0xfb69d6...666d92` | ⚠️ Unaudited |
| LeverageVault | core_logic | arbitrum | 4 deployments: arbitrum [`0x410fec...9319c1`](./contracts/arbitrum-42161/0x410fec5d0df9031d9c39e594faa2ef99b19319c1/); arbitrum `0x7566be...edee86`; arbitrum `0xd6fde6...ec7946`; arbitrum `0xfad9ae...863fb2` | ⚠️ Unaudited |
| LeverageViewer | periphery | arbitrum | 7 deployments: arbitrum [`0x3942cd...6c63f1`](./contracts/arbitrum-42161/0x3942cda55cc29dd28879f479768d293c9b6c63f1/); arbitrum `0x54d413...709313`; arbitrum `0x6b3b31...484daa`; arbitrum `0xc54fdb...4b4ae2`; arbitrum `0xc6512f...ef31d1`; arbitrum `0xc74b66...ea66ba`; arbitrum `0xc971db...202cb1` | ⚠️ Unaudited |
| LPStrategyLib | core_logic | arbitrum | [`0xb330a2...2d8f60`](./contracts/arbitrum-42161/0xb330a28c8518c4095c8411191120d1739c2d8f60/) | ⚠️ Unaudited |
| LunaPutPriceOracle | operational_periphery | arbitrum | [`0xf064f6...15847c`](./contracts/arbitrum-42161/0xf064f66aaa2e10f2bcfb865a99dca59eb515847c/) | ⚠️ Unaudited |
| LunaVolatilityOracle | operational_periphery | arbitrum | [`0x92e0da...d3bcde`](./contracts/arbitrum-42161/0x92e0da4bfd120ef25f74af7041f48a205ad3bcde/) | ⚠️ Unaudited |
| LunaWeeklyPutsSsovV3 | unknown | arbitrum | 2 deployments: arbitrum [`0x29a1d8...011602`](./contracts/arbitrum-42161/0x29a1d81d7f3f3dc20e81fe875012b7bed4011602/); arbitrum `0xb2d114...0684af` | ⚠️ Unaudited |
| MainnetWrappedJonesAura | unknown | ethereum | 3 deployments: ethereum [`0x13f580...4cc865`](./contracts/ethereum-1/0x13f5802d1d5b4f0ff529537c694843515e4cc865/); ethereum `0x625f72...97e0da`; ethereum `0xec1939...3283c0` | ⚠️ Unaudited |
| MainnetWrappedJonesAuraOFT | unknown | ethereum | 2 deployments: ethereum [`0x041532...eda798`](./contracts/ethereum-1/0x041532cb7feb5bbedf8248a0f7d58db827eda798/); ethereum `0x549d5a...d08512` | ⚠️ Unaudited |
| MillinerV2 | unknown | arbitrum | 2 deployments: arbitrum [`0x018b44...900717`](./contracts/arbitrum-42161/0x018b44c923a567205caee45b882fd61394900717/); arbitrum `0xb94d19...0fd756` | ⚠️ Unaudited |
| MiniChefV2 | unknown | arbitrum | 3 deployments: arbitrum [`0x0aefad...6fac38`](./contracts/arbitrum-42161/0x0aefad19aa454bcc1b1dd86e18a7d58d0a6fac38/); arbitrum `0x68f81a...7120c7`; arbitrum `0x7522e6...6c7c74` | ⚠️ Unaudited |
| MultichainHub | unknown | arbitrum | 4 deployments: arbitrum [`0x080a07...87fa71`](./contracts/arbitrum-42161/0x080a07b4f24e75607522948c77d4529e5e87fa71/); arbitrum `0x5d987b...0d4905`; arbitrum `0x5e920c...658617`; arbitrum `0xcc2134...f75497` | ⚠️ Unaudited |
| MultichainMiddleware | unknown | arbitrum | 2 deployments: arbitrum [`0x36a022...0bb86b`](./contracts/arbitrum-42161/0x36a0221d9f6509137e68c3b910b240e7f20bb86b/); arbitrum `0xc9abf9...9afe0b` | ⚠️ Unaudited |
| MultichainReceiver | unknown | ethereum | 4 deployments: ethereum [`0x3e8aed...a1a7af`](./contracts/ethereum-1/0x3e8aed9dbb0d1a7769feb431a23dd00bfba1a7af/); ethereum `0x905178...f61a77`; ethereum `0xa43bec...e034e0`; ethereum `0xbbbe33...2ea723` | ⚠️ Unaudited |
| NativeSSOV1inchRouter | adapter | arbitrum | [`0x444d91...c54dbd`](./contracts/arbitrum-42161/0x444d91660642128a17dd574599981304f9c54dbd/) | ⚠️ Unaudited |
| NStakingStrategy | core_logic | arbitrum | [`0x1c3ad2...9faa05`](./contracts/arbitrum-42161/0x1c3ad2dcd598d41ad531f15421e9be1d089faa05/) | ⚠️ Unaudited |
| OFTReceiverMainnet | unknown | ethereum | 4 deployments: ethereum [`0xb23064...b51d21`](./contracts/ethereum-1/0xb23064d4048d5d30b665f6f5adc4637b2bb51d21/); ethereum `0xc441a9...f32eb5`; ethereum `0xd860b2...2c0ce2`; ethereum `0xe7642e...0ace87` | ⚠️ Unaudited |
| OneInchV4Swapper | adapter | ethereum | [`0x5f7f00...eb7103`](./contracts/ethereum-1/0x5f7f007be2a22ea16fe2af6eca769494b6eb7103/) | ⚠️ Unaudited |
| OneInchV5Swapper | adapter | arbitrum | [`0xd21368...b25748`](./contracts/arbitrum-42161/0xd21368d942dd9672c139e61d2cc50c0d2bb25748/) | ⚠️ Unaudited |
| OneInchZapLib | adapter | arbitrum | 2 deployments: arbitrum [`0x38b700...95300d`](./contracts/arbitrum-42161/0x38b700f33daa663de0e05a487c41aa070c95300d/); arbitrum `0x46be03...419fa5` | ⚠️ Unaudited |
| OptionPricingSimple | unknown | arbitrum | 3 deployments: arbitrum [`0x2b99e3...bdd67b`](./contracts/arbitrum-42161/0x2b99e3d67dad973c1b9747da742b7e26c8bdd67b/); arbitrum `0x30dea2...efd30f`; arbitrum `0xb5a0f2...7bc9ed` | ⚠️ Unaudited |
| OptionsToken | token | arbitrum | [`0xb77a55...caf7b5`](./contracts/arbitrum-42161/0xb77a55274251c4fe858f76b8d94ae76e1dcaf7b5/) | ⚠️ Unaudited |
| OracleAggregator | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x0a4b52...9c982a`](./contracts/arbitrum-42161/0x0a4b5223698ca750f0061e93c1de8cfde19c982a/); arbitrum `0x8b1f43...992d52` | ⚠️ Unaudited |
| PancakeLPManager | governance | arbitrum | [`0xb12e27...1a18b2`](./contracts/arbitrum-42161/0xb12e272dcb206c3638667672ae7a851be41a18b2/) | ⚠️ Unaudited |
| PancakePriceHelper | operational_periphery | arbitrum | 3 deployments: arbitrum [`0x084dca...d2f014`](./contracts/arbitrum-42161/0x084dca9e32b3391052f05e55a6b278ba04d2f014/); arbitrum `0x16ed57...1cc55e`; arbitrum `0x7e8825...14d959` | ⚠️ Unaudited |
| PancakeSwapper | adapter | arbitrum | 4 deployments: arbitrum [`0x4380db...a943b8`](./contracts/arbitrum-42161/0x4380db1cac9f723bd5a0b523f47bf23eb8a943b8/); arbitrum `0x6e1d3a...428eae`; arbitrum `0x9c1af9...484896`; arbitrum `0xc79465...87e331` | ⚠️ Unaudited |
| PatchOfTheAdapter | adapter | arbitrum | [`0x3f8473...a92a1c`](./contracts/arbitrum-42161/0x3f84734005bda494d3718f7a507e18dd83a92a1c/) | ⚠️ Unaudited |
| PatchOfThePatch | unknown | arbitrum | [`0x84f6ba...e36ae2`](./contracts/arbitrum-42161/0x84f6bae09c7057fcc09ecb6ac143e03ac4e36ae2/) | ⚠️ Unaudited |
| Payroll | unknown | arbitrum | 2 deployments: arbitrum [`0x04f4f0...c0c744`](./contracts/arbitrum-42161/0x04f4f0c6c09370576a8f22fd5f8838abecc0c744/); arbitrum `0x88ae90...6ea855` | ⚠️ Unaudited |
| plsSYKAdapter | adapter | arbitrum | 5 deployments: arbitrum [`0x095bd2...9f366c`](./contracts/arbitrum-42161/0x095bd2500a20be6351ad86605457f22a489f366c/); arbitrum `0x2bf156...fbb332`; arbitrum `0x3fa53b...ee8aae`; arbitrum `0x690847...1e5a02`; arbitrum `0x964d0b...784fef` | ⚠️ Unaudited |
| PoolManagerProxy | core_logic | ethereum | [`0x16a04e...94947a`](./contracts/ethereum-1/0x16a04e58a77ab1ce561a37371dfb479a8594947a/) | ⚠️ Unaudited |
| PoolManagerSecondaryProxy | core_logic | ethereum | [`0xdc274f...34cf67`](./contracts/ethereum-1/0xdc274f4854831fed60f9eca12cacbd449134cf67/) | ⚠️ Unaudited |
| PoolManagerV3 | core_logic | ethereum | [`0xf843f6...28de50`](./contracts/ethereum-1/0xf843f61508fc17543412de55b10ed87f4c28de50/) | ⚠️ Unaudited |
| PriceOracleAggregator | operational_periphery | arbitrum | [`0x74cadb...d334b4`](./contracts/arbitrum-42161/0x74cadbdf7850abd4f9bd355e528a9b23a2d334b4/) | ⚠️ Unaudited |
| PrivateVesting | operational_periphery | arbitrum | [`0xf164ac...c63d4c`](./contracts/arbitrum-42161/0xf164acdb5dcf5f855b98f9ba8ca73ca300c63d4c/) | ⚠️ Unaudited |
| ProxyFactory | registry | ethereum | [`0x7ed900...377b0f`](./contracts/ethereum-1/0x7ed9003c6003eace1e8c3ae99f0bb19894377b0f/) | ⚠️ Unaudited |
| PusdVault | core_logic | arbitrum | [`0xdb2825...36dd41`](./contracts/arbitrum-42161/0xdb2825f2a6c141a86862ccd5d4a86b18a436dd41/) | ⚠️ Unaudited |
| PusdVaultBiWeekly | core_logic | arbitrum | 3 deployments: arbitrum [`0x66cf90...d22a3d`](./contracts/arbitrum-42161/0x66cf9033e119fca8429bc87d423a14aaced22a3d/); arbitrum `0xba3d21...32fa77`; arbitrum `0xd8c832...a88398` | ⚠️ Unaudited |
| PusdVaultWeekly | core_logic | arbitrum | 3 deployments: arbitrum [`0x21485d...fa9289`](./contracts/arbitrum-42161/0x21485d96036644041a0398e2ce2ea51d21fa9289/); arbitrum `0x44bfe4...526048`; arbitrum `0x7a8390...3dc35c` | ⚠️ Unaudited |
| PusdVolatilityOracle | operational_periphery | arbitrum | [`0x86f5c3...bb454c`](./contracts/arbitrum-42161/0x86f5c37be9d87975d0aea307ac9143c13fbb454c/) | ⚠️ Unaudited |
| RamsesClaimer | operational_periphery | arbitrum | [`0xe14e75...1f75c6`](./contracts/arbitrum-42161/0xe14e7506a70781bc36a6e72d46ef2b028d1f75c6/) | ⚠️ Unaudited |
| RamsesLPManager | governance | arbitrum | 15 deployments: arbitrum [`0x4699c8...68fc23`](./contracts/arbitrum-42161/0x4699c804bb6e330b6ac3ea1e2e0aff06e468fc23/); arbitrum `0x54ffcf...5b9f30`; arbitrum `0x5c3eb9...310caa`; arbitrum `0x66b67c...f1effb`; arbitrum `0x831961...aff7c2`; arbitrum `0x909bbb...38a007`; arbitrum `0x90c40a...45745a`; arbitrum `0x9243f6...f6cd5d`; arbitrum `0x93b41e...e9a561`; arbitrum `0xa2fc9a...be0fbe`; arbitrum `0xbe6748...1ae72e`; arbitrum `0xc68c22...acc372`; arbitrum `0xd3659f...f5c76e`; arbitrum `0xdc40cb...8b46c6`; arbitrum `0xe71b89...dbdef5` | ⚠️ Unaudited |
| RamsesPriceHelper | operational_periphery | arbitrum | 5 deployments: arbitrum [`0x00218f...308ed1`](./contracts/arbitrum-42161/0x00218f82bd478e0ce0ca1ba67022db06e8308ed1/); arbitrum `0x428d38...768a3b`; arbitrum `0x61d834...3437e9`; arbitrum `0xa7272d...a3324c`; arbitrum `0xf54b95...9d12dd` | ⚠️ Unaudited |
| RamsesSwapper | adapter | arbitrum | 6 deployments: arbitrum [`0x19a707...1f6abc`](./contracts/arbitrum-42161/0x19a70792f88f4da9272114ae00e03998e21f6abc/); arbitrum `0x367fe7...00a26e`; arbitrum `0x445e1e...170dbd`; arbitrum `0x644f8e...b4c50e`; arbitrum `0x6a0826...5d8e90`; arbitrum `0xc579bc...b39461` | ⚠️ Unaudited |
| RdpxCallPriceOracle | operational_periphery | arbitrum | 2 deployments: arbitrum [`0xcb903c...3789f2`](./contracts/arbitrum-42161/0xcb903c8aa3b4b87eedb13f747fc16f27833789f2/); arbitrum `0xdfd4d4...db22f3` | ⚠️ Unaudited |
| RdpxCallPriceOracleV2 | operational_periphery | arbitrum | [`0x4ae3ae...f1f1a2`](./contracts/arbitrum-42161/0x4ae3ae438eca476a5fc4a96681432c9530f1f1a2/) | ⚠️ Unaudited |
| RdpxCustomPriceOracle | operational_periphery | arbitrum | [`0xc0cdd1...4afaa0`](./contracts/arbitrum-42161/0xc0cdd1176aa1624b89b7476142b41c04414afaa0/) | ⚠️ Unaudited |
| RdpxEthLpFarm | unknown | arbitrum | 3 deployments: arbitrum [`0x253b77...c075a2`](./contracts/arbitrum-42161/0x253b772408c5c2ee6c96b027aae6896fecc075a2/); arbitrum `0x738ee3...de4483`; arbitrum `0xeb0f03...ca29eb` | ⚠️ Unaudited |
| RdpxEthStorage | unknown | arbitrum | 2 deployments: arbitrum [`0x0c8f76...cfbc87`](./contracts/arbitrum-42161/0x0c8f76ae6b3636643c912dbace26f3b65acfbc87/); arbitrum `0x2b441a...45e05d` | ⚠️ Unaudited |
| RdpxMonthlyCallsSsovV3 | unknown | arbitrum | 3 deployments: arbitrum [`0x8d66b8...0db22d`](./contracts/arbitrum-42161/0x8d66b80e03fceff5d825b77433b62400c00db22d/); arbitrum `0xafd90a...21ec34`; arbitrum `0xd74c61...5efb4e` | ⚠️ Unaudited |
| RdpxPriceOracle | operational_periphery | arbitrum | [`0xa70bf6...ef1b9c`](./contracts/arbitrum-42161/0xa70bf62578aadb37032c73f01873bcc7dcef1b9c/) | ⚠️ Unaudited |
| RdpxPriceOracleV2 | operational_periphery | arbitrum | [`0x63f033...ef3871`](./contracts/arbitrum-42161/0x63f03311bc9c467665abb61f94dc538265ef3871/) | ⚠️ Unaudited |
| RdpxPutPriceOracle | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x882f24...a2f148`](./contracts/arbitrum-42161/0x882f241d061ce44f20b9991bc10e834f68a2f148/); arbitrum `0xb23010...6ac9ba` | ⚠️ Unaudited |
| RdpxPutPriceOracleV2 | operational_periphery | arbitrum | [`0xaa6cf3...ad9c5f`](./contracts/arbitrum-42161/0xaa6cf3c71d334aa142f4a73b1c545cea06ad9c5f/) | ⚠️ Unaudited |
| RdpxSSOV | unknown | arbitrum | [`0xfe351e...2fb663`](./contracts/arbitrum-42161/0xfe351e85eb6b4292088dc28b66e9e92ab62fb663/) | ⚠️ Unaudited |
| RdpxSSOVV2 | unknown | arbitrum | 4 deployments: arbitrum [`0x039335...5bcb5c`](./contracts/arbitrum-42161/0x0393352c7c28903e7deaa5508f01cc89f25bcb5c/); arbitrum `0x6a1142...0e4435`; arbitrum `0xa206a0...9c6892`; arbitrum `0xd4cafe...e63488` | ⚠️ Unaudited |
| RdpxStakingStrategyV1 | core_logic | arbitrum | 3 deployments: arbitrum [`0x1d1cc5...35a4ec`](./contracts/arbitrum-42161/0x1d1cc5a92a87772607639acf5a8f5a55fd35a4ec/); arbitrum `0xbbc4cc...5515cd`; arbitrum `0xc12e96...661d0b` | ⚠️ Unaudited |
| RdpxVolatilityOracle | operational_periphery | arbitrum | [`0x3e0215...1b3212`](./contracts/arbitrum-42161/0x3e0215c1d639280e13b46e3af94fb5630d1b3212/) | ⚠️ Unaudited |
| RdpxVolatilityOracleV2 | operational_periphery | arbitrum | [`0x398010...b6da1c`](./contracts/arbitrum-42161/0x39801002866657f95cb111bff0f3b7218cb6da1c/) | ⚠️ Unaudited |
| RdpxWeeklyCallsSsovV3 | unknown | arbitrum | [`0xcdaacf...4b28a8`](./contracts/arbitrum-42161/0xcdaacf37726bf1017821b5169e22eb34734b28a8/) | ⚠️ Unaudited |
| RdpxWeeklyPutsSsovV3 | unknown | arbitrum | 4 deployments: arbitrum [`0x4d7d61...5a2326`](./contracts/arbitrum-42161/0x4d7d6100122c92ddad3b57e472b00979e45a2326/); arbitrum `0x73a88e...c1ab8f`; arbitrum `0xb4ec6b...6cf11d`; arbitrum `0xdbafe8...d00631` | ⚠️ Unaudited |
| RebalanceStrategy | core_logic | arbitrum | 4 deployments: arbitrum [`0x10ca28...3540f6`](./contracts/arbitrum-42161/0x10ca281f1e48258411a366da7f2a486fcf3540f6/); arbitrum `0x573363...560712`; arbitrum `0x6a8626...faf4aa`; arbitrum `0xbffb89...dd784b` | ⚠️ Unaudited |
| RewardFactory | registry | ethereum | [`0x45aad1...74f356`](./contracts/ethereum-1/0x45aad11f2fa2c215bc9686eb6f06d46e0474f356/) | ⚠️ Unaudited |
| RewardPoolDepositWrapper | core_logic | ethereum | [`0xb188b1...9fec59`](./contracts/ethereum-1/0xb188b1cb84fb0ba13cb9ee1292769f903a9fec59/) | ⚠️ Unaudited |
| RewardsDistribution | unknown | arbitrum | 2 deployments: arbitrum [`0x09a454...5b952b`](./contracts/arbitrum-42161/0x09a454fd7a7f6f66cb2cc0196860f94ced5b952b/); arbitrum `0xf47920...ebadbb` | ⚠️ Unaudited |
| RewardsDistributionV2 | unknown | arbitrum | [`0xc4e63f...7fc134`](./contracts/arbitrum-42161/0xc4e63f3be080d932f6d2d1ba1936be72b37fc134/) | ⚠️ Unaudited |
| RewardsDistributionV3 | unknown | arbitrum | 2 deployments: arbitrum [`0x7f3649...f6a40f`](./contracts/arbitrum-42161/0x7f3649c4b6acc01d50eaa725096df27a36f6a40f/); arbitrum `0xa5151f...e941c6` | ⚠️ Unaudited |
| RoleController | governance | arbitrum | 4 deployments: arbitrum [`0x19f056...3950f7`](./contracts/arbitrum-42161/0x19f056cecd9599db1724de7a6814e779843950f7/); arbitrum `0x724bfb...d9b41d`; arbitrum `0xa7ce1a...00fbdf`; arbitrum `0xba5c01...59c838` | ⚠️ Unaudited |
| SsovAdapter | adapter | arbitrum | 4 deployments: arbitrum [`0x27cebe...cf68c1`](./contracts/arbitrum-42161/0x27cebe6b5075e4d6feec384b0a31ec6e53cf68c1/); arbitrum `0x51eb37...58ed04`; arbitrum `0x634ae8...fe18c2`; arbitrum `0xaa6348...3d5d47` | ⚠️ Unaudited |
| SSOVDelegatorFactory | registry | arbitrum | [`0xfc2403...c314d0`](./contracts/arbitrum-42161/0xfc240385b257dac2600e7fd643090e02bdc314d0/) | ⚠️ Unaudited |
| SSOVDpx | unknown | arbitrum | 3 deployments: arbitrum [`0x73b82e...6f8a84`](./contracts/arbitrum-42161/0x73b82eba5176d8aa02606459e416f13f686f8a84/); arbitrum `0x818ced...1a76ec`; arbitrum `0xc13e7c...cb3db4` | ⚠️ Unaudited |
| SsovLpFactory | registry | arbitrum | [`0x03ba96...820376`](./contracts/arbitrum-42161/0x03ba968ff53f3966836b1ee895038b5064820376/) | ⚠️ Unaudited |
| SSOVRdpx | unknown | arbitrum | [`0x6607c5...b14d7b`](./contracts/arbitrum-42161/0x6607c5e39a43cce1760288dc33f20ead51b14d7b/) | ⚠️ Unaudited |
| SsovV3FeeStrategy | core_logic | arbitrum | [`0x8c73b6...71add0`](./contracts/arbitrum-42161/0x8c73b6d3c81c6cc42e8285c8c147a7563d71add0/) | ⚠️ Unaudited |
| SsovV3OptionsToken | token | arbitrum | 2 deployments: arbitrum [`0x11a99d...0d0d47`](./contracts/arbitrum-42161/0x11a99d3a49dd1b5adcaf24964646c90de50d0d47/); arbitrum `0x2e4665...f0ab10` | ⚠️ Unaudited |
| SsovV3Router | adapter | arbitrum | 3 deployments: arbitrum [`0x1962ce...8f0d66`](./contracts/arbitrum-42161/0x1962ceb5c394ed5ad20dc72f98f2617d9d8f0d66/); arbitrum `0x8bebc5...3a16c5`; arbitrum `0xb11fe3...bf04c0` | ⚠️ Unaudited |
| SsovV3StakingRewards | unknown | arbitrum | 2 deployments: arbitrum [`0x64ccdd...0239e3`](./contracts/arbitrum-42161/0x64ccddf4ee6bc26ab6f6967b7eab60f3280239e3/); arbitrum `0x9d5fa3...40b62d` | ⚠️ Unaudited |
| SsovV3Viewer | periphery | arbitrum | 10 deployments: arbitrum [`0x0a93ff...13022a`](./contracts/arbitrum-42161/0x0a93ff362287f0aeffc313423c80854f4713022a/); arbitrum `0x14333c...26f2c9`; arbitrum `0x25ed6d...4f0bb5`; arbitrum `0x426ede...2128da`; arbitrum `0x535e6f...680c52`; arbitrum `0x5cc110...dc31d1`; arbitrum `0x8ef275...3812be`; arbitrum `0x9abe93...072001`; arbitrum `0x9f948e...6dbaa2`; arbitrum `0xdc05c7...b5483e` | ⚠️ Unaudited |
| SsovV3Wrapper | unknown | arbitrum | 2 deployments: arbitrum [`0x7487c1...65052f`](./contracts/arbitrum-42161/0x7487c19df56b7ea764fc269468b5d3014565052f/); arbitrum `0xe098e7...c248e2` | ⚠️ Unaudited |
| StableSwapper | adapter | arbitrum | [`0xd91656...5f4926`](./contracts/arbitrum-42161/0xd916561da38ad838577f631f67aef889d75f4926/) | ⚠️ Unaudited |
| StakingRewardsFactory | registry | arbitrum | 2 deployments: arbitrum [`0x2c2082...1a1cf3`](./contracts/arbitrum-42161/0x2c2082e4062bfd02141adc86cbd5e437201a1cf3/); arbitrum `0x923c88...94aeea` | ⚠️ Unaudited |
| StakingRewardsV2 | unknown | arbitrum | 2 deployments: arbitrum [`0x125cc7...ccb6bb`](./contracts/arbitrum-42161/0x125cc7cce81a809c825c945e5aa874e60cccb6bb/); arbitrum `0x8d4812...c29ae5` | ⚠️ Unaudited |
| StashFactoryV2 | registry | ethereum | [`0x95171c...458eb5`](./contracts/ethereum-1/0x95171c9ef5ca540a6d3502e9547fcfe022458eb5/) | ⚠️ Unaudited |
| StaticRateViewer | periphery | ethereum | [`0xf274e4...0ab08e`](./contracts/ethereum-1/0xf274e48939a1c619c0f2aac134732995f20ab08e/) | ⚠️ Unaudited |
| StEthCallPriceOracle | operational_periphery | arbitrum | [`0x6f3f4b...a46e1d`](./contracts/arbitrum-42161/0x6f3f4b7aaeb2fc8df55703c12b6320fe9fa46e1d/) | ⚠️ Unaudited |
| StEthMonthlyCallsSsovV3 | unknown | arbitrum | [`0x475a5a...d1851b`](./contracts/arbitrum-42161/0x475a5a712b741b9ab992e6af0b9e5adee3d1851b/) | ⚠️ Unaudited |
| StEthWeeklyCallsSsovV3 | unknown | arbitrum | [`0xfca61e...8df678`](./contracts/arbitrum-42161/0xfca61e79f38a7a82c62f469f55a9df54cb8df678/) | ⚠️ Unaudited |
| StraddlePositionMinter | unknown | arbitrum | 4 deployments: arbitrum [`0x0f4a22...3664b5`](./contracts/arbitrum-42161/0x0f4a22977df09f2a52bec2d4f5722251d73664b5/); arbitrum `0x175c46...8a9747`; arbitrum `0x39ab75...7c4df6`; arbitrum `0xdb7590...4a5a31` | ⚠️ Unaudited |
| SushiLPAdapter | adapter | arbitrum | 4 deployments: arbitrum [`0x4ff2ef...6aa8ca`](./contracts/arbitrum-42161/0x4ff2ef146989f1e6bcc5bcbdf46d7fff416aa8ca/); arbitrum `0xaa6ffd...c4732b`; arbitrum `0xbc6448...0dec73`; arbitrum `0xca7920...1fd191` | ⚠️ Unaudited |
| SushiLPManager | governance | arbitrum | [`0x773923...392b42`](./contracts/arbitrum-42161/0x77392374db9ecdfe1bd385b5f863e2e5fe392b42/) | ⚠️ Unaudited |
| SushiSwapper | adapter | arbitrum | [`0x3df104...2d7927`](./contracts/arbitrum-42161/0x3df10460f773c7a548bfc404ab69ee2b262d7927/) | ⚠️ Unaudited |
| Swapper0x | adapter | arbitrum | 3 deployments: ethereum `0xb03021...388c10`; arbitrum [`0x045c50...a8d460`](./contracts/arbitrum-42161/0x045c50251c2864ba9e829a1a503d7fd1fea8d460/); arbitrum `0x662db9...04b45d` | ⚠️ Unaudited |
| TeamVesting | operational_periphery | arbitrum | [`0xc1d968...da55b7`](./contracts/arbitrum-42161/0xc1d9682db60955d64f263025b282acbf8cda55b7/) | ⚠️ Unaudited |
| TeamVestingV2 | operational_periphery | arbitrum | [`0x3757b4...a17f61`](./contracts/arbitrum-42161/0x3757b49d79063e157dc376f2b409c3730fa17f61/) | ⚠️ Unaudited |
| TemporaryViewer | periphery | arbitrum | [`0xedf0f9...fe9a59`](./contracts/arbitrum-42161/0xedf0f9be0ef62ed60522682ddd3aaf5ae9fe9a59/) | ⚠️ Unaudited |
| TheShreddiesCC | unknown | arbitrum | [`0x1261d3...9582b5`](./contracts/arbitrum-42161/0x1261d315da164c41db9968c4544ad641cf9582b5/) | ⚠️ Unaudited |
| TheShreddiesCCTestnet | unknown | arbitrum | 2 deployments: arbitrum [`0x19ad97...e38d4b`](./contracts/arbitrum-42161/0x19ad978263e1525389d5ce7ce9bb886191e38d4b/); arbitrum `0x7ce6b5...2b8c10` | ⚠️ Unaudited |
| ThrusterBoostLPManager | governance | blast | 2 deployments: blast [`0x45d625...0c0542`](./contracts/blast-81457/0x45d6255bc47f27695442e93ea16b4644a20c0542/); blast `0xe961b1...0dc7b0` | ⚠️ Unaudited |
| ThrusterLPManager | governance | blast | 4 deployments: blast [`0x5449d5...7bbdbf`](./contracts/blast-81457/0x5449d500490de877024e2a119e4a9a52397bbdbf/); blast `0x74fb98...876444`; blast `0xa2fc9a...be0fbe`; blast `0xa49bb2...07c5ff` | ⚠️ Unaudited |
| ThrusterNFTLPManager | governance | blast | 3 deployments: blast [`0x182075...1dc26a`](./contracts/blast-81457/0x1820751e3d7e8c35457f2c44da84394cb41dc26a/); blast `0x78d0de...7d0ded`; blast `0xe22cef...671779` | ⚠️ Unaudited |
| ThrusterPool | core_logic | blast | [`0xd99593...aed256`](./contracts/blast-81457/0xd99593149a794496c601f789daa1203d03aed256/) | ⚠️ Unaudited |
| ThrusterPriceHelper | operational_periphery | blast | 3 deployments: blast [`0x2d3329...b872f5`](./contracts/blast-81457/0x2d33299cebbf5e7a8bb23da30c8a73997cb872f5/); blast `0x4d3c03...02eeb4`; blast `0xf65de5...26bd5c` | ⚠️ Unaudited |
| ThrusterV3Swapper | adapter | blast | 2 deployments: blast [`0x73bc32...c5db04`](./contracts/blast-81457/0x73bc329a94a19fd3c26176c05bc55a6ab3c5db04/); blast `0xbc58d2...98f0a2` | ⚠️ Unaudited |
| TokenFactory | registry | ethereum | [`0xb6ce51...b453ac`](./contracts/ethereum-1/0xb6ce51dee8bd4a2fd11c01205414dc26f0b453ac/) | ⚠️ Unaudited |
| UniSwapLPManager | governance | arbitrum | [`0x576c56...d0ea51`](./contracts/arbitrum-42161/0x576c5663188842aa1fa810e1d4969adb25d0ea51/) | ⚠️ Unaudited |
| UniswapPriceHelper | operational_periphery | blast | 4 deployments: arbitrum `0x9eeff0...c29b6b`; arbitrum `0xbbf270...805389`; arbitrum `0xe71ad9...7bbce2`; blast [`0x9ed990...d98514`](./contracts/blast-81457/0x9ed9904e6835bac1fd5eb83e7cae7e5fa8d98514/) | ⚠️ Unaudited |
| UniswapV2Swapper | adapter | ethereum | [`0x873066...8ef314`](./contracts/ethereum-1/0x873066f098e6a3a4febf65c9e437f7f71c8ef314/) | ⚠️ Unaudited |
| UniswapV3Swapper | adapter | arbitrum | 8 deployments: arbitrum [`0x252b8f...73ea55`](./contracts/arbitrum-42161/0x252b8f51763dad24a29de48e9717616c4173ea55/); arbitrum `0x3b671c...3f89a8`; arbitrum `0x4e53e5...946b63`; arbitrum `0x514fa9...c05797`; arbitrum `0x6533f7...e8c5e6`; arbitrum `0x70be7c...a1d34a`; arbitrum `0x9b4627...5515fb`; arbitrum `0xc835ac...44c8ee` | ⚠️ Unaudited |
| UniV3Library | unknown | arbitrum | 3 deployments: arbitrum [`0x0e3d53...a6efee`](./contracts/arbitrum-42161/0x0e3d53c190ce77ac569880055aee6569ada6efee/); arbitrum `0x365fe9...ce1b1c`; arbitrum `0xa67c8a...3b75c4` | ⚠️ Unaudited |
| UniversalMainnetSwapper | adapter | ethereum | [`0xc9dd81...4b4859`](./contracts/ethereum-1/0xc9dd81508af5c47b7d54ba29a027cc1a514b4859/) | ⚠️ Unaudited |
| UpgradeableIncentiveReceiver | unknown | arbitrum | 2 deployments: arbitrum [`0x2a5cc1...105ad6`](./contracts/arbitrum-42161/0x2a5cc190854cd078b2b0ca2a357faf0073105ad6/); arbitrum `0x53ce52...220c26` | ⚠️ Unaudited |
| USDCVesting | operational_periphery | arbitrum | [`0xa0ed02...7a9073`](./contracts/arbitrum-42161/0xa0ed021cf3ad897181c23e20aa5ffb8f607a9073/) | ⚠️ Unaudited |
| veDPXYieldDistributor | operational_periphery | arbitrum | [`0xcbbfb7...d9775f`](./contracts/arbitrum-42161/0xcbbfb7e0e6782df0d3e91f8d785a5bf9e8d9775f/) | ⚠️ Unaudited |
| VeloLPManager | governance | base | [`0x367fe7...00a26e`](./contracts/base-8453/0x367fe7925d523d8f9fd7baeda4ba2a32cf00a26e/) | ⚠️ Unaudited |
| VeloPriceHelper | operational_periphery | base | 2 deployments: base [`0x4ecafa...403a38`](./contracts/base-8453/0x4ecafa6cd6c706b1eca88200c3c1a8d82e403a38/); base `0x9769ca...33712e` | ⚠️ Unaudited |
| VeloSwapper | adapter | base | [`0x440713...f36231`](./contracts/base-8453/0x4407135654126dc6b53e61331775edb312f36231/) | ⚠️ Unaudited |
| VolatilityEngine | unknown | arbitrum | [`0x7da1b5...96454e`](./contracts/arbitrum-42161/0x7da1b58f0a7cbb70f756a01412842d5a8796454e/) | ⚠️ Unaudited |
| VolatilityOracle | operational_periphery | arbitrum | 5 deployments: arbitrum [`0x3a3b40...c430ef`](./contracts/arbitrum-42161/0x3a3b40ec5be35c3c8e8be54d04da60d69ac430ef/); arbitrum `0x75f47f...cc4bc1`; arbitrum `0xb66458...3be0b1`; arbitrum `0xbbe11d...e22681`; arbitrum `0xdf2347...886c20` | ⚠️ Unaudited |
| VoterProxy | unknown | ethereum | 2 deployments: ethereum [`0x42b047...e053ee`](./contracts/ethereum-1/0x42b047d1c751a871e61ec77bfde5fbbf2ce053ee/); ethereum `0xaf5269...0dbec2` | ⚠️ Unaudited |
| WhitelistController | governance | arbitrum | 11 deployments: arbitrum [`0x12c66e...86e3c6`](./contracts/arbitrum-42161/0x12c66ed98c7579d2d00675e18a9feb9cec86e3c6/); arbitrum `0x29e9e0...c3b1b2`; arbitrum `0x2acc79...d73e88`; arbitrum `0x3c9da6...5dacea`; arbitrum `0x7ff3ce...b5aed2`; arbitrum `0xa30ce8...6cd0d6`; arbitrum `0xc06852...abd4cb`; arbitrum `0xde3476...c2bcca`; arbitrum `0xe8eedf...93893c`; arbitrum `0xf3a86e...b7ab24`; arbitrum `0xf6c7ed...b13290` | ⚠️ Unaudited |
| WithdrawUVRT | operational_periphery | arbitrum | [`0x48b0a4...e718d5`](./contracts/arbitrum-42161/0x48b0a4afa62c743c0a6f9a29ec79c1ef65e718d5/) | ⚠️ Unaudited |
| WritePositionMinter | unknown | arbitrum | 4 deployments: arbitrum [`0x041619...a10251`](./contracts/arbitrum-42161/0x0416195d103b70bb91ce627f1e339725f1a10251/); arbitrum `0x477260...b19c4d`; arbitrum `0xe0fb2a...51b43c`; arbitrum `0xf59b37...f41b40` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (15)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ArbitrumWrappedJonesAuraOFT | unknown | ethereum | 3 deployments: ethereum [`0x4db57c...8d0c7b`](./contracts/ethereum-1/0x4db57cab0d8d035dd92599affdc4de22108d0c7b/); arbitrum `0x638385...41c7cf`; arbitrum `0x873066...8ef314` | ⚠️ Unaudited (bytecode match) |
| Creator | unknown | blast | 16 deployments: base `0xb1d090...81e475`; arbitrum `0x2eaefe...a73dd2`; arbitrum `0x3dea0a...9d4061`; arbitrum `0x4033df...086ab1`; arbitrum `0x885d89...cafeba`; arbitrum `0x8c9b75...97a6be`; arbitrum `0x8f8ea5...a677c8`; arbitrum `0xb52b3a...50e356`; arbitrum `0xe06acb...39645b`; berachain `0xb52b3a...50e356`; berachain `0xf6afa2...a7b8de`; blast [`0x1cbbad...71baf9`](./contracts/blast-81457/0x1cbbad4658379c5eaa7da1622d357954cf71baf9/); blast `0x1fb934...0b35e3`; blast `0x212ded...85b28b`; blast `0x31fdf0...c7d3a6`; blast `0x63d984...19f378` | ⚠️ Unaudited (bytecode match) |
| Factory | registry | arbitrum | 41 deployments: base `0x57dd01...7f5ff4`; base `0x61e1f7...90898d`; base `0xb35613...68eab2`; base `0xbc58d2...98f0a2`; base `0xbde8d5...104b62`; base `0xf6afa2...a7b8de`; base `0xf8f0e3...8daf7e`; arbitrum [`0x1e5d2e...77ac25`](./contracts/arbitrum-42161/0x1e5d2eb158bd1a0d04d14718c5575e539577ac25/); arbitrum `0x34d421...985d66`; arbitrum `0x362331...eb3c9a`; arbitrum `0x528ffa...86d827`; arbitrum `0x689a35...616731`; arbitrum `0x967592...d71322`; arbitrum `0x976fea...10dac9`; arbitrum `0xa37fef...25dd95`; arbitrum `0xb2cba1...bb692d`; arbitrum `0xb38580...318a92`; arbitrum `0xb754d8...481e60`; arbitrum `0xc320a8...bcb85d`; arbitrum `0xda2187...1d7208`; arbitrum `0xef6b52...dc3c82`; arbitrum `0xf96573...c34fd2`; arbitrum `0xfefd54...a76cc5`; berachain `0x3f1c45...ebc9b9`; berachain `0x63d984...19f378`; berachain `0x885d89...cafeba`; berachain `0xd6a42c...3b9330`; blast `0x30be05...203a9a`; blast `0x3de777...90b2a9`; blast `0x3f11b4...76a771`; blast `0x4206b0...7a2f7e`; blast `0x65486c...68a0cd`; blast `0x723f69...917208`; blast `0x7c93d3...164f49`; blast `0x964893...f63f72`; blast `0x9d97f6...812135`; blast `0xe8896b...a7181a`; blast `0xe9ad63...acdf2a`; blast `0xe9e703...e0165a`; blast `0xf715b4...6be18c`; blast `0xfb208f...fa824d` | ⚠️ Unaudited (bytecode match) |
| Feeds | unknown | arbitrum | 11 deployments: base `0x944fc7...2ec7c3`; arbitrum [`0x0aa4ba...7b95e7`](./contracts/arbitrum-42161/0x0aa4bafa281bc9306ee286a7e8426f9faf7b95e7/); arbitrum `0x31770c...ba3fed`; arbitrum `0x366328...a91322`; arbitrum `0x81861e...473a2f`; arbitrum `0xd05e41...4bec24`; arbitrum `0xd7b1ba...931b1f`; berachain `0x0af020...6f7a0d`; berachain `0xc8cb68...1db074`; blast `0x809271...7488e2`; blast `0xbd6663...e3f665` | ⚠️ Unaudited (bytecode match) |
| IncentiveReceiver | unknown | blast | 6 deployments: base `0xc93706...b55001`; arbitrum `0x5a446b...4f7bbc`; berachain `0x19a707...1f6abc`; berachain `0x70be7c...a1d34a`; blast [`0x073518...e7f3bb`](./contracts/blast-81457/0x073518af8bef8d50b699e26d7fe4442566e7f3bb/); blast `0xf6afa2...a7b8de` | ⚠️ Unaudited (bytecode match) |
| ProxyAdmin | governance | ethereum | 31 deployments: ethereum [`0x0a3492...e43de7`](./contracts/ethereum-1/0x0a3492adabfd852d5b48b0c7390221fbbfe43de7/); ethereum `0x12816c...f5fe85`; ethereum `0x55fb51...ef1746`; ethereum `0x78bf79...38233b`; ethereum `0x7b6cd8...155150`; ethereum `0x7ca237...1c0b69`; ethereum `0xcc2134...f75497`; base `0xc64b95...458dc1`; arbitrum `0x0ff5a8...738d11`; arbitrum `0x1756c4...39f6b9`; arbitrum `0x1daefd...a049d4`; arbitrum `0x2a0027...72dd81`; arbitrum `0x2c107b...09629f`; arbitrum `0x2ddb0d...0719a5`; arbitrum `0x2e6620...fb7c70`; arbitrum `0x36db57...ecdb27`; arbitrum `0x3db8cf...bf5cb0`; arbitrum `0x43f071...6b7d05`; arbitrum `0x5f7f00...eb7103`; arbitrum `0x73bc32...c5db04`; arbitrum `0x9933f4...c0c4aa`; arbitrum `0xc323c5...c1beb2`; arbitrum `0xcd8603...f00694`; arbitrum `0xd7ca56...bdaf39`; arbitrum `0xe0a28b...e24f3e`; arbitrum `0xe58917...c89a4d`; arbitrum `0xec5b07...6d94aa`; berachain `0x34d421...985d66`; berachain `0xd1d417...1b48c1`; blast `0xc185a2...855b8c`; blast `0xedc0ff...ed69df` | ⚠️ Unaudited (bytecode match) |
| RewardReceiver | unknown | arbitrum | 17 deployments: base `0x26c6ce...4b4e75`; base `0x6a0826...5d8e90`; arbitrum [`0x0af020...6f7a0d`](./contracts/arbitrum-42161/0x0af020886c7fc1243c3f843ee76345e2ab6f7a0d/); arbitrum `0x152cc2...a9a1da`; arbitrum `0x311b17...84f875`; arbitrum `0x35da35...24a52a`; arbitrum `0x426b26...532157`; arbitrum `0x52c7f2...613554`; arbitrum `0x55f1bd...af47f2`; arbitrum `0x621c8e...92c1d8`; arbitrum `0x8c78bc...f480dd`; arbitrum `0xc64b95...458dc1`; arbitrum `0xccf028...c143de`; berachain `0x59794f...a874dd`; berachain `0xbc58d2...98f0a2`; blast `0x3be137...490edb`; blast `0xc8cb68...1db074` | ⚠️ Unaudited (bytecode match) |
| RewardTracker | unknown | arbitrum | 16 deployments: base `0xa49bb2...07c5ff`; arbitrum [`0x124b6a...7d0458`](./contracts/arbitrum-42161/0x124b6aef712f9b2f8e239c01ce251287457d0458/); arbitrum `0x26f18b...423643`; arbitrum `0x3c3e0a...f7db2b`; arbitrum `0x4e0443...b54d90`; arbitrum `0x6ef6ba...91c92d`; arbitrum `0x77c5f0...8f612a`; arbitrum `0x9769ca...33712e`; arbitrum `0xaa1c7a...dbb3b9`; arbitrum `0xb66a96...fff9ea`; arbitrum `0xc57166...4886e8`; arbitrum `0xd85926...c7dd21`; berachain `0x26c6ce...4b4e75`; berachain `0x26f18b...423643`; blast `0xcd0505...667955`; blast `0xe71ad9...7bbce2` | ⚠️ Unaudited (bytecode match) |
| Router | adapter | arbitrum | 38 deployments: base `0xbc99ef...3c114e`; arbitrum [`0x06974f...3f6c5f`](./contracts/arbitrum-42161/0x06974f42a1090f07d832240cb2375420eb3f6c5f/); arbitrum `0x06ea20...7e70c7`; arbitrum `0x0946e3...f2ed9b`; arbitrum `0x14c921...6d54e1`; arbitrum `0x15ee32...709e55`; arbitrum `0x204e14...530e9f`; arbitrum `0x33577c...cb7fd3`; arbitrum `0x4b5cf3...18cabe`; arbitrum `0x4bc4d2...e22a04`; arbitrum `0x5178f0...990b81`; arbitrum `0x51c079...8a8314`; arbitrum `0x661322...238c63`; arbitrum `0x6d7042...e5c3e1`; arbitrum `0x71b009...99a185`; arbitrum `0x7f7b47...335437`; arbitrum `0x99d943...211fa2`; arbitrum `0x9c895c...fc2e4d`; arbitrum `0xa49bb2...07c5ff`; arbitrum `0xa6a01f...1de163`; arbitrum `0xb7eae6...e2ca65`; arbitrum `0xbde8d5...104b62`; arbitrum `0xcb83a0...06b927`; arbitrum `0xdd9db4...5b3cc7`; arbitrum `0xe22cef...671779`; arbitrum `0xe9c738...16b18e`; arbitrum `0xea6491...61c767`; arbitrum `0xed1586...4d5753`; arbitrum `0xf18f2f...202b9c`; berachain `0xbde8d5...104b62`; berachain `0xf572c7...455c6d`; blast `0x26c6ce...4b4e75`; blast `0x29e9c7...67d2a8`; blast `0x428d38...768a3b`; blast `0x6a0826...5d8e90`; blast `0x9880d5...599129`; blast `0xb0390b...be6254`; blast `0xc16f61...105a68` | ⚠️ Unaudited (bytecode match) |
| SingleRewardTracker | unknown | arbitrum | 23 deployments: base `0x1f6244...577485`; base `0xe6a316...883c8c`; arbitrum [`0x02af5c...c8748d`](./contracts/arbitrum-42161/0x02af5c07e96b40e3324390da4a794fff55c8748d/); arbitrum `0x067fe6...55c509`; arbitrum `0x0d490c...4790a9`; arbitrum `0x1efc5f...fc6c45`; arbitrum `0x3182a6...f3e2f6`; arbitrum `0x34831f...1ba670`; arbitrum `0x4ecafa...403a38`; arbitrum `0x8d8761...e26622`; arbitrum `0xc7e381...5654ca`; arbitrum `0xcfefb8...2bc59d`; arbitrum `0xd09991...bc51c8`; arbitrum `0xdae0a4...54b5ec`; arbitrum `0xf5692a...cce714`; berachain `0x067fe6...55c509`; berachain `0x367fe7...00a26e`; berachain `0x440713...f36231`; berachain `0xdae0a4...54b5ec`; blast `0x944fc7...2ec7c3`; blast `0xb1d090...81e475`; blast `0xbbf270...805389`; blast `0xccf028...c143de` | ⚠️ Unaudited (bytecode match) |
| TransparentUpgradeableProxy | proxy | arbitrum | 98 deployments: ethereum `0x79ce13...3ef89f`; base `0x10498d...6caeb9`; base `0x250510...f2b931`; base `0x3e7a81...423c01`; base `0x61e40d...61eed5`; base `0x631a6b...22a71b`; base `0x698f96...6ae00d`; base `0x6eae8b...4987ae`; base `0x74fb98...876444`; base `0xa7272d...a3324c`; base `0xcb4e41...18978f`; base `0xe71b89...dbdef5`; base `0xf572c7...455c6d`; arbitrum [`0x00825a...873055`](./contracts/arbitrum-42161/0x00825a475911b51eda11bc8cbc79603991873055/); arbitrum `0x02b229...f35073`; arbitrum `0x0b61a3...7a4c07`; arbitrum `0x1137d4...3fd22e`; arbitrum `0x1c52bd...c5ab4e`; arbitrum `0x1e41d8...cd9d41`; arbitrum `0x24c90a...c0aae1`; arbitrum `0x2fb402...c33452`; arbitrum `0x319902...dc4f3c`; arbitrum `0x32fc66...bbdfb5`; arbitrum `0x391162...7918be`; arbitrum `0x3e6ff5...571e4b`; arbitrum `0x53ae22...5c9be3`; arbitrum `0x53d722...1d807c`; arbitrum `0x543c03...1b9df1`; arbitrum `0x5dc751...17925b`; arbitrum `0x64ecc5...afbd6f`; arbitrum `0x6b9a07...2a7da0`; arbitrum `0x6f333b...79abce`; arbitrum `0x727d5f...fa6e19`; arbitrum `0x7313c3...871fa4`; arbitrum `0x73ac69...443cd9`; arbitrum `0x79ed68...bccdce`; arbitrum `0x7c0b6f...45b092`; arbitrum `0x7ec56f...99869a`; arbitrum `0x872db3...56a8d6`; arbitrum `0x88410a...8df16e`; arbitrum `0x8d18a9...e12928`; arbitrum `0x91a9e8...7e5d0f`; arbitrum `0x944fc7...2ec7c3`; arbitrum `0x94f55e...f616db`; arbitrum `0xa33d49...cfd329`; arbitrum `0xa543ec...4a5b38`; arbitrum `0xa66316...e49379`; arbitrum `0xac3986...a5be1b`; arbitrum `0xad794d...1631a9`; arbitrum `0xae5ee1...995c4b`; arbitrum `0xb1d090...81e475`; arbitrum `0xbc58d2...98f0a2`; arbitrum `0xbc6c7f...efde67`; arbitrum `0xbf15b3...c0060d`; arbitrum `0xbf2d97...5841f0`; arbitrum `0xc51d1c...230ff9`; arbitrum `0xcb56b9...8cb251`; arbitrum `0xd0799b...56bdff`; arbitrum `0xd17d38...216d70`; arbitrum `0xd2e9c1...a832ce`; arbitrum `0xd79086...12b965`; arbitrum `0xda71a0...cad401`; arbitrum `0xe1df1f...8c4375`; arbitrum `0xef9d26...2105c3`; arbitrum `0xf3ba7f...e69011`; berachain `0x07ad6e...c71d15`; berachain `0x1f6244...577485`; berachain `0x252b8f...73ea55`; berachain `0x34a845...8535d7`; berachain `0x350b20...af0f39`; berachain `0x366328...a91322`; berachain `0x3b7281...853696`; berachain `0x428d38...768a3b`; berachain `0x57dba8...cd7320`; berachain `0x5ad326...922009`; berachain `0x644f8e...b4c50e`; berachain `0x6485dd...78573d`; berachain `0x7affa1...11e3b2`; berachain `0x836844...14c328`; berachain `0x93b41e...e9a561`; berachain `0xa45455...b952b0`; berachain `0xa6de2a...7f74a0`; berachain `0xa7272d...a3324c`; berachain `0xbbf270...805389`; berachain `0xbc99ef...3c114e`; berachain `0xc461af...f7af54`; berachain `0xc64b95...458dc1`; berachain `0xcd0505...667955`; berachain `0xcd82f8...085c31`; berachain `0xd59f6c...45491d`; blast `0x4cf08b...751669`; blast `0x66c2f3...66296e`; blast `0x885d89...cafeba`; blast `0xa37fef...25dd95`; blast `0xc461af...f7af54`; blast `0xc64b95...458dc1`; blast `0xc85955...c406d9`; blast `0xd05e41...4bec24` | ⚠️ Unaudited (bytecode match) |
| UniversalSwapper | adapter | arbitrum | 16 deployments: ethereum `0xe4b4b9...72788c`; base `0x47aca1...41c4e0`; base `0xe71ad9...7bbce2`; arbitrum [`0x1cbbad...71baf9`](./contracts/arbitrum-42161/0x1cbbad4658379c5eaa7da1622d357954cf71baf9/); arbitrum `0x6ce9ea...0fa300`; arbitrum `0x8af1f3...ffb7b7`; arbitrum `0x9ed990...d98514`; arbitrum `0xda028b...51d240`; arbitrum `0xe2cae0...cff2e7`; arbitrum `0xf64a94...edfe66`; berachain `0xbd6663...e3f665`; berachain `0xd05e41...4bec24`; blast `0x5a6e4a...5ba32f`; blast `0x629101...c655de`; blast `0x8a5ef3...0f01b4`; blast `0xec5b07...6d94aa` | ⚠️ Unaudited (bytecode match) |
| UpgradeableBeacon | registry | arbitrum | 62 deployments: base `0x36aae6...3251d5`; base `0x3dbf19...ae9b72`; base `0x5692c6...abc776`; base `0xc2e3de...f84aba`; base `0xcdbbbd...43160a`; base `0xdf663f...c4074a`; base `0xf663a2...ae4b85`; arbitrum [`0x012917...e6c295`](./contracts/arbitrum-42161/0x0129176ea773380d53c76627b2605e29b9e6c295/); arbitrum `0x06d0fe...5b3382`; arbitrum `0x079184...c2d4b6`; arbitrum `0x10a83d...9b7d18`; arbitrum `0x10f93a...954228`; arbitrum `0x10fccb...19526b`; arbitrum `0x27f540...385625`; arbitrum `0x2930b2...d08436`; arbitrum `0x2973e1...efa644`; arbitrum `0x34b24d...95b8f2`; arbitrum `0x36aae6...3251d5`; arbitrum `0x3b235b...2b176e`; arbitrum `0x440713...f36231`; arbitrum `0x5449d5...7bbdbf`; arbitrum `0x631a6b...22a71b`; arbitrum `0x68d4f7...26aa80`; arbitrum `0x73568b...6c3a84`; arbitrum `0x74fb98...876444`; arbitrum `0x7865c1...584620`; arbitrum `0x8da877...48a272`; arbitrum `0x9d58be...4d37ba`; arbitrum `0xa8e37c...2b0627`; arbitrum `0xaf6344...246849`; arbitrum `0xcda323...adfaa0`; arbitrum `0xcecf68...1e50b6`; arbitrum `0xceef00...57e0a4`; arbitrum `0xd30a72...5edf4d`; arbitrum `0xd98889...47e149`; arbitrum `0xda7856...7c7a15`; arbitrum `0xe38fcc...8ebd23`; arbitrum `0xf0a87a...a69b63`; arbitrum `0xf572c7...455c6d`; berachain `0x34831f...1ba670`; berachain `0x4ecafa...403a38`; berachain `0x62f681...52a423`; berachain `0x6a0826...5d8e90`; berachain `0x6d5cfa...084ff1`; berachain `0x77c5f0...8f612a`; berachain `0x8d8761...e26622`; berachain `0x9769ca...33712e`; berachain `0xa2fc9a...be0fbe`; berachain `0xc93706...b55001`; berachain `0xd09991...bc51c8`; berachain `0xe22cef...671779`; blast `0x0af020...6f7a0d`; blast `0x30c221...e0eaea`; blast `0x388047...f0fd1e`; blast `0x5208a0...be440d`; blast `0x59794f...a874dd`; blast `0x7affa1...11e3b2`; blast `0xa45455...b952b0`; blast `0xa7272d...a3324c`; blast `0xbe74a2...d8e488`; blast `0xd59f6c...45491d`; blast `0xf54b95...9d12dd` | ⚠️ Unaudited (bytecode match) |
| Viewer | periphery | arbitrum | 38 deployments: ethereum `0x0caeba...22ece1`; ethereum `0x2a7745...550526`; base `0x70be7c...a1d34a`; base `0xa45455...b952b0`; arbitrum [`0x034052...9f6872`](./contracts/arbitrum-42161/0x034052a9d34f2549a4fbe43eb07282ca7d9f6872/); arbitrum `0x139d38...33ac15`; arbitrum `0x16e669...c3f034`; arbitrum `0x23dfb4...051f32`; arbitrum `0x2d3329...b872f5`; arbitrum `0x329ba0...a69df0`; arbitrum `0x440e17...dc4c32`; arbitrum `0x4abc83...fa6e7d`; arbitrum `0x4cf08b...751669`; arbitrum `0x63fc93...87d253`; arbitrum `0x66c2f3...66296e`; arbitrum `0x6c3d87...1d2102`; arbitrum `0x6f0077...77895d`; arbitrum `0x730e89...8c7693`; arbitrum `0x757713...92fe3d`; arbitrum `0x7600ce...b3aa2f`; arbitrum `0x8ff8f0...46c6e0`; arbitrum `0xa14fed...770b98`; arbitrum `0xaec8d9...ed7ade`; arbitrum `0xaed6be...85bfb4`; arbitrum `0xc34f75...9e7560`; arbitrum `0xcd0505...667955`; arbitrum `0xee6f86...d16c17`; arbitrum `0xf13fd9...66335c`; arbitrum `0xf6afa2...a7b8de`; arbitrum `0xfc678b...003c36`; berachain `0x2d3329...b872f5`; berachain `0x5208a0...be440d`; blast `0x05170b...d8e30f`; blast `0x09a317...edc2d3`; blast `0x185848...301166`; blast `0x366328...a91322`; blast `0x8a1c4e...e1a46f`; blast `0xb52b3a...50e356` | ⚠️ Unaudited (bytecode match) |
| WethAdapter | adapter | arbitrum | 9 deployments: base `0x34831f...1ba670`; arbitrum [`0x264ae3...03b65c`](./contracts/arbitrum-42161/0x264ae330b7d1d60903d26ba0750e2e59a003b65c/); arbitrum `0x96af04...d6e1a9`; arbitrum `0x9d5f86...8b9df5`; arbitrum `0xa09dd2...51cf82`; arbitrum `0xd0821a...0dce52`; berachain `0x61e1f7...90898d`; berachain `0x944fc7...2ec7c3`; blast `0x2eaefe...a73dd2` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (146)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CompounderStrategy | adapter | blast | `0xf0c06b...914b6c` | ❓ Unverified |
| MillinerV3 | unknown | arbitrum | `0x8127ff...c72690` | ❓ Unverified |
| Proxy (impl: 0x4f19585be9fdd90060bd38f30213c10d7dbd9588) | proxy | blast | `0xee54a4...e4f538` | ❓ Unverified |
| Proxy (impl: 0xf741d0144229839209cc01e81a87ac195d309586) | proxy | blast | `0x5f7c77...d6fdd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0ecbf9...e5f7c8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x34e03c...069283` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0204fb...e092d7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x060784...ee5ecc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0629d2...8f1ec9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x068e9b...dd10b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0a52a1...8493bc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0ada43...702c18` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0d6284...9dd989` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x17b508...efc53a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x17c5c9...d0a418` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x184ac3...4b6138` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1ab57e...cc4fdd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1c6c89...bdce62` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x20b6e9...41434e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x25211e...12571d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x25ba84...37d63c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2b23de...d5b521` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2c3e09...b39514` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2dbfc3...e2bf62` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2e09ce...dfe3f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2e39ce...178ccb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2fdf5e...787662` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x316701...85c97c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x33faf8...0f6d68` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x370f95...9292e9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3994f6...c3eaad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3b4163...a9a90c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3c7330...d524c2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3ea7ca...b770d7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3ef687...1f2ad9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x402ef0...7f226f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x45c0f5...07f9f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x48186d...983425` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4dc31b...8016a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4df27b...696aeb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x50c4ba...4f7049` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x539ccf...72b9c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x541ffb...d611a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x55632f...344a6a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x593dee...460fa8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x64deca...7f8c58` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x68fd6c...877de6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6ae886...6e3cd3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6d4de3...c657b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6fc228...a7af6b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x705a0e...0c1504` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x714b90...2ddc6e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x73c097...8e478f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x76ee72...e8550a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x78222b...6d9b6c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7962a2...350b30` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7a1027...9a11cc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7cec36...f1601d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7d3c4c...4ccb49` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7d5d24...5658c1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8024af...dcf0bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x81e1af...d9d362` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x824d50...5c0e9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x89198d...482fb0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8adbdd...1ac42b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8c7f82...920eff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8f35d8...f153ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x91d5d6...77d7ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x921d92...d55df6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x94c33c...bd3184` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x94dd33...3f02f7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9652e8...c21e47` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9dcbef...5358ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa09b00...b01a4a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa41cdf...ae8ba4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa4fbe5...fbd8e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaa092c...2f9853` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaa31ab...70791e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaceb6b...fb0042` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xad4e06...751813` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb06f66...eb1270` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb224f9...127c96` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb44b76...2d9cf4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb4a065...ac358f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb5a05d...b69a9f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb5d200...8a01fa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb76b16...84ba74` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb86adb...8ab59d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb8c908...3448bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc0a620...9e6f22` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc0dcee...f52bb4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc1f951...dd8b4a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc32413...aa62c2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc6e0e4...310b76` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xca7e9a...6aeb91` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcbb943...39da16` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xccc131...56bc39` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcd163a...e11e85` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcdf045...065f78` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd563a8...93531e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd5ade9...a8a703` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd5b11d...8db0f6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd8051f...557e0b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdc2b00...c15ded` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdcac4e...c5c457` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xde3e4a...905d06` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdf5ca5...92175f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xeb3639...97cb1c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xebac6f...3dae97` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xebe8b8...6baa74` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xec8670...a8ff80` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xeda109...4bf90d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xee58d2...dafe8e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xee973a...71828e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf396ed...af1112` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf39993...0e5c42` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf4548f...f28470` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf77e57...057cb6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf79459...f24520` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x17ea9c...1e08c5` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x282dd2...d0e2d5` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x3dbf19...ae9b72` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x4384af...bdba8f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x62cd63...fb21fa` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x631a6b...22a71b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x7404eb...2ec71a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x78d0de...7d0ded` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x78e729...b20834` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x9ed990...d98514` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xb1d090...81e475` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xbe74a2...d8e488` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xcf943b...58d7b5` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xe06acb...39645b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xe71ad9...7bbce2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xec5b07...6d94aa` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xf54b95...9d12dd` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xf663a2...ae4b85` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x1c99b4...bb5eb0` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x1e7d8e...79205a` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x4f1958...bd9588` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x6e7223...ac0e88` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x987492...4f14f0` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xa074bc...77aaa8` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xa7b371...78202d` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xdf00be...08bfed` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xf741d0...309586` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x25e8f9...c27326`](./contracts/ethereum-1/0x25e8f96c443b392ff9cdb9159b02f0040ec27326/) | AuraVirtualVault | core_logic | $449,152,584.15 | Verified native implementation with $449,152,584.15 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0b5ddf...d73c40`](./contracts/arbitrum-42161/0x0b5ddfc404aa13e2f9c53f6a3f5126075ad73c40/) | UnderlyingVault | core_logic | $749,446.83 | Verified native implementation with $749,446.83 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x287bfe...d60b09`](./contracts/arbitrum-42161/0x287bfe9ee929842d1af340814332e7548ad60b09/) | MetavaultRefund | core_logic | $4,087.66 | Verified native implementation with $4,087.66 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5ba98a...0e1246`](./contracts/arbitrum-42161/0x5ba98ad75ab87eb90ffc2b680bcfc6b9030e1246/) | JonesDPXVaultV3 | core_logic | $45.50 | Verified native implementation with $45.50 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7a82a0...5fd2c3`](./contracts/arbitrum-42161/0x7a82a0ca7a2569d6cd3df2afeaf508f6d85fd2c3/) | DpxEthBearVault | core_logic | $2.69 | Verified native implementation with $2.69 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x558df6...23a1a6`](./contracts/arbitrum-42161/0x558df6bb25f754aea5fa2f3ed8e78e7afe23a1a6/) | BasicStakingStrategy | core_logic | $1.66 | Verified native implementation with $1.66 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0980a1...0ca1a0`](./contracts/arbitrum-42161/0x0980a15ad64182b275b625c321beeab41e0ca1a0/) | InsuredLongsStrategy | core_logic | $0.42 | Verified native implementation with $0.42 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe6c548...e89cd0`](./contracts/arbitrum-42161/0xe6c548b9443b8a296a5bc084903b569594e89cd0/) | JonesRdpxEthBearStrategy | core_logic | $0.21 | Verified native implementation with $0.21 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1e8060...cef910`](./contracts/arbitrum-42161/0x1e8060fc5c0335f04413032472965c1736cef910/) | RdpxEthBullVault | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5369b3...e72315`](./contracts/arbitrum-42161/0x5369b3eb4c9e87d0b349557034faa20c6ce72315/) | JonesDpxEthBullStrategy | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4ec371...802d52`](./contracts/arbitrum-42161/0x4ec371ceeceda2dfe14eef9358cefc4380802d52/) | DpxEthBullVault | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09a317...edc2d3`](./contracts/arbitrum-42161/0x09a31770ed3f47a08a8cd85df3ec4c009fedc2d3/) | AlgebraLPManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x94c929...32b05e`](./contracts/arbitrum-42161/0x94c929722ee804ae25735839c041fc828732b05e/) | ArbCallPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2c9c1e...3a9d5f`](./contracts/arbitrum-42161/0x2c9c1e9b4bdf6bf9cb59c77e0e8c0892ce3a9d5f/) | ArbEthSSOVV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6157e2...b0a04f`](./contracts/arbitrum-42161/0x6157e2dee2938efca144e507865f10cd93b0a04f/) | ArbitrumWrappedJonesAura | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x61f2d2...10843f`](./contracts/arbitrum-42161/0x61f2d2f39af6c6faa55684666d563d6f1d10843f/) | ArbMultichainRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x94bdab...ffc8a6`](./contracts/arbitrum-42161/0x94bdabbe315cdd992ed399dc52933a9690ffc8a6/) | ArbPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbdb0f3...af3081`](./contracts/arbitrum-42161/0xbdb0f3330d4b32b3133738451c8237d0a8af3081/) | ArbPriceOracleV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x838ea4...4eb2db`](./contracts/arbitrum-42161/0x838ea4314fa7ab13a452f8d4fc7c7dc2d74eb2db/) | AssetSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1640ed...621379`](./contracts/arbitrum-42161/0x1640eda814072286fddc5b952d1c56e576621379/) | AtlanticPutsPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0be090...fa3e51`](./contracts/arbitrum-42161/0x0be0905dafa89dac8f26e9f96e04cfe3c5fa3e51/) | AtlanticStraddle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x418ca2...26d66a`](./contracts/arbitrum-42161/0x418ca2ad46bc90386bc05768da756e494d26d66a/) | AtlanticStraddleUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x774537...60c015`](./contracts/arbitrum-42161/0x7745370dfcc3780dd7675995b529d4e24960c015/) | AtlanticStraddleVolatilityOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x638385...41c7cf`](./contracts/ethereum-1/0x6383851e45098734f0f90742c2e7f258a441c7cf/) | auraBALSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54d6dc...55bc3d`](./contracts/ethereum-1/0x54d6dcae86cb8d181ba3b8dd7f0704140f55bc3d/) | AuraCompounderStrategy | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x198d73...34cd1f`](./contracts/ethereum-1/0x198d7387fa97a73f05b8578cdeff8f2a1f34cd1f/) | AuraCompounderVault | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7429a...70e32c`](./contracts/ethereum-1/0xa7429af4deb16827dad0e71d8aeea9c2bf70e32c/) | BalLiquidityProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x26926f...d693b0`](./contracts/arbitrum-42161/0x26926fca034d971ba8668e900e143f6bb0d693b0/) | BaseIRVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3763a3...d1584f`](./contracts/arbitrum-42161/0x3763a3d54485edba416f093b23d81a14cfd1584f/) | BasicStakingStrategyV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3f38cd...9b5939`](./contracts/arbitrum-42161/0x3f38cde29c185f9ccff5a7d2ecb2ce3e2f9b5939/) | BasicStakingStrategyV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfa838a...54ec34`](./contracts/ethereum-1/0xfa838af70314135159b309bf27f1dbf1f954ec34/) | BoosterOwner | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x90f5a9...a28075`](./contracts/arbitrum-42161/0x90f5a93b562adba63b1c0f5358554e7272a28075/) | BtcPutVolatilityOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x411982...3fef3b`](./contracts/arbitrum-42161/0x411982342c0d41cebb1706ed80ef32d48f3fef3b/) | BtcWeeklyPutsSsovV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x993f5a...aefb77`](./contracts/arbitrum-42161/0x993f5a805bbfb5f59cf08b745b82ac42f1aefb77/) | CallbackForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d8448...062822`](./contracts/arbitrum-42161/0x0d84489932582d394d2275ad92130d85e3062822/) | CallbackRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x999dbc...d0f56e`](./contracts/ethereum-1/0x999dbce0a18f721f04e793f916c30e72a9d0f56e/) | ClaimFeesHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x19ea65...c724f5`](./contracts/arbitrum-42161/0x19ea653256e79abaf90b4586632463d4b3c724f5/) | ContributorVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1e305b...117040`](./contracts/arbitrum-42161/0x1e305b22c177f6fdb55d891c63b1c8c399117040/) | Crv2PoolOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68655a...5d4123`](./contracts/ethereum-1/0x68655ad9852a99c87c0934c7290bb62cfa5d4123/) | CrvDepositorWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8b88a2...cfe4dc`](./contracts/arbitrum-42161/0x8b88a2fc2c2056e0ab243642605dabbd6ccfe4dc/) | CrvPutPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2c1169...053385`](./contracts/arbitrum-42161/0x2c116962b192727fec83f18bf612c959b2053385/) | CustomOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1d4544...ecd7db`](./contracts/arbitrum-42161/0x1d4544459b6d13fbf2e14573d7c01208e0ecd7db/) | Deployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5bc65f...2c31c1`](./contracts/arbitrum-42161/0x5bc65f20abceada2c54140b2bb55962bba2c31c1/) | DopexArbEthSsovWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbd8d54...c425c9`](./contracts/arbitrum-42161/0xbd8d541500c10774cd1404f57344d233eec425c9/) | DopexFeeStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8c44c0...c6b4ea`](./contracts/arbitrum-42161/0x8c44c0ab9a15bacad7a4b663a89593c406c6b4ea/) | DpxBonds | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x58bc6d...529341`](./contracts/arbitrum-42161/0x58bc6da61a00310ebc519fcf8c0d55493c529341/) | DpxCallPriceOracleV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x252c07...3137b9`](./contracts/arbitrum-42161/0x252c07e0356d3b1a8ce273e39885b094053137b9/) | DpxCustomPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0a9522...6ccecd`](./contracts/arbitrum-42161/0x0a95222b5ed8690a0279993e63903687536ccecd/) | DpxEthLpFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x125a52...6357a3`](./contracts/arbitrum-42161/0x125a527949c4f6889c2d80ab0d95b17fe76357a3/) | DpxEthStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x05e7ac...e0c817`](./contracts/arbitrum-42161/0x05e7aced3b7727f9129e6d302b488cd8a1e0c817/) | DpxMonthlyCallsSsovV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9162f6...53b454`](./contracts/arbitrum-42161/0x9162f655d085f266792fca4432c9d17c7e53b454/) | DpxPriceOracleV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0e574e...33f403`](./contracts/arbitrum-42161/0x0e574e2b4859f3789e190e25e9d85b691c33f403/) | DpxPutPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x48252e...2894e3`](./contracts/arbitrum-42161/0x48252edbfcc8a27390827950ccfc1c00152894e3/) | DpxSSOVV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x31d104...6b57ba`](./contracts/arbitrum-42161/0x31d104edb91d681ff5189a92f25f8e14f56b57ba/) | DpxStakingStrategyV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x10fd85...20bd1f`](./contracts/arbitrum-42161/0x10fd85ec522c245a63239b9fc64434f58520bd1f/) | DpxWeeklyCallsSsovV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x459819...f5f273`](./contracts/arbitrum-42161/0x459819c34266dd9154172d373ac559ce27f5f273/) | DpxWeeklyPutsSsovV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8ce052...524e3e`](./contracts/arbitrum-42161/0x8ce052d4fc61c69e9dc11dab22dc47aa5c524e3e/) | EasyMigrate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x08e110...4beed7`](./contracts/arbitrum-42161/0x08e110a186a84b03517906fc06da923d064beed7/) | EnforceHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6d9c28...522baf`](./contracts/arbitrum-42161/0x6d9c288708a77d51fa66393916511cde60522baf/) | Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x19e6ee...e23cc6`](./contracts/arbitrum-42161/0x19e6ee4c2cbe7bcc4cd1ef0bcf7e764fece23cc6/) | EthCallPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x299b44...7ae509`](./contracts/arbitrum-42161/0x299b44c2f6d24ea1b41c6deec861d986047ae509/) | EthPutPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x36b25d...94638f`](./contracts/arbitrum-42161/0x36b25d2f1f638c384ac3e000bef154149d94638f/) | EthPutVolatilityOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8a0dd3...9f0b3a`](./contracts/arbitrum-42161/0x8a0dd3203a9f1cf66c7201e4a8ab4762d09f0b3a/) | EthQuarterlyPutsSsovV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0a1140...3e66d2`](./contracts/arbitrum-42161/0x0a11404220bdd38b98ed9978fb8fba17de3e66d2/) | EthStakingStrategyV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x872096...03fb4f`](./contracts/arbitrum-42161/0x87209686d0f085fd35b084410b99241dbc03fb4f/) | ETHVolatilityOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2b055d...aa9255`](./contracts/arbitrum-42161/0x2b055d25a5fa6d493c53c178480e962aabaa9255/) | EthWeeklyCallsSsovV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1e5d2e...77ac25`](./contracts/arbitrum-42161/0x1e5d2eb158bd1a0d04d14718c5575e539577ac25/) | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d3fdd...58f0c0`](./contracts/arbitrum-42161/0x0d3fdd45706bec4077725bf691bbb4770958f0c0/) | FarmController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0aa4ba...7b95e7`](./contracts/arbitrum-42161/0x0aa4bafa281bc9306ee286a7e8426f9faf7b95e7/) | Feeds | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3f3c58...478d5a`](./contracts/arbitrum-42161/0x3f3c58ccb0655fa9161d0b4b49b217b3f6478d5a/) | FeeStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1a5444...16563a`](./contracts/arbitrum-42161/0x1a5444362857cafdc58ab95b79a5a9285d16563a/) | FeeStrategy2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb96491...b3deac`](./contracts/arbitrum-42161/0xb964912b4054e8fb54431ed952f29ae3c8b3deac/) | FeeStrategy3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3c5376...bd6673`](./contracts/arbitrum-42161/0x3c5376bf032cec70c342b64f43778dc06bbd6673/) | GlpJonesRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x691113...00883b`](./contracts/arbitrum-42161/0x6911132effaee3d1116a96c1357830a35400883b/) | GlpPriceAggregator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x023509...84d6fa`](./contracts/arbitrum-42161/0x0235096e97c12a84d8b96ca2c3bcccf93e84d6fa/) | GlpStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2433a6...9419ba`](./contracts/arbitrum-42161/0x2433a617c0266091d3f46ae223caa809c89419ba/) | GMOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x00fd61...04653f`](./contracts/arbitrum-42161/0x00fd61b802484eaf39c054a601bdfc08dd04653f/) | GMRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x146e8d...17f54e`](./contracts/arbitrum-42161/0x146e8da8ac5d203a4f479ede013d2e2ec017f54e/) | GMViewer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x60e07b...1c7ee0`](./contracts/arbitrum-42161/0x60e07b25ba79bf8d40831cdbda60cf49571c7ee0/) | GmxPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2da831...9a7076`](./contracts/arbitrum-42161/0x2da83188f2c6f760db0493a7087266fd1e9a7076/) | GmxPutPriceOracleV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x04996a...52c93b`](./contracts/arbitrum-42161/0x04996afcf40a14d0892b00c816874f9c1a52c93b/) | GmxSSOV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2ba83d...aaf1a7`](./contracts/arbitrum-42161/0x2ba83da46846ccf633db9d30209163c627aaf1a7/) | GohmCallPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5f5870...0147d4`](./contracts/arbitrum-42161/0x5f5870c7364ae87643747b06a0ca7fde200147d4/) | GohmCustomPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x52c701...6f98bd`](./contracts/arbitrum-42161/0x52c70138fff1a5a6d821ab4bb39d3df0346f98bd/) | GohmMonthlyCallsSsovV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7d3bb7...f41570`](./contracts/arbitrum-42161/0x7d3bb7a1d5ec0378ca3a2beb4f2423ecf5f41570/) | GohmPutPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x89836d...2d2318`](./contracts/arbitrum-42161/0x89836d5f178141aaf013412b12abd754802d2318/) | GohmSSOV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x460f95...db08d6`](./contracts/arbitrum-42161/0x460f95323a32e26c8d32346abe73eb94d7db08d6/) | GohmSSOVV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x525bf3...957587`](./contracts/arbitrum-42161/0x525bf37950e74448e2e39db95e0b9bc971957587/) | GohmStakingStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbf9144...d7a6a8`](./contracts/arbitrum-42161/0xbf91446115f3e3eaf5079a88e078f876c0d7a6a8/) | GohmVolatilityOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x746c39...756abf`](./contracts/arbitrum-42161/0x746c3914d3c11139178b1aedd6f3f7eacf756abf/) | GohmVolatilityOracleV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x546cd3...5caf0c`](./contracts/arbitrum-42161/0x546cd36f761f1d984eee1dbe67cc4f86e75caf0c/) | GohmWeeklyCallsSsovV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4269af...b877fd`](./contracts/arbitrum-42161/0x4269af9076586230bf5fa3655144a5fe9cb877fd/) | GohmWeeklyPutsSsovV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x08fb38...363a7c`](./contracts/arbitrum-42161/0x08fb380cadf28fc7e0121db7c47d149c0d363a7c/) | GovernanceRing | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1c208c...df48d7`](./contracts/arbitrum-42161/0x1c208cb30838cc3fd492627321624ce87cdf48d7/) | HatDistributionCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4c163b...757bca`](./contracts/arbitrum-42161/0x4c163b64fd2c777bd0752cfc4312c7bbea757bca/) | HatDistributionCenterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x917aab...3b33fb`](./contracts/arbitrum-42161/0x917aab660066cd8a96bc3bf0de9ed863313b33fb/) | IndividualBuffer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x82ad59...20f3d4`](./contracts/arbitrum-42161/0x82ad5948e47c6e18d0cd1a5a243a4f032420f3d4/) | InsuredLongsUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3556f7...f7eaea`](./contracts/ethereum-1/0x3556f710c165090aae9f98eb62f5b04adef7eaea/) | jAuraRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x70c7e4...af9bf6`](./contracts/arbitrum-42161/0x70c7e4834a3f7565b7cd8977b33c93d347af9bf6/) | jGlpOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x017bd9...07497b`](./contracts/arbitrum-42161/0x017bd9d6657d18f4114572f340c944165f07497b/) | jGlpViewer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4ff190...25de59`](./contracts/arbitrum-42161/0x4ff19015f6d27d9a745cd76c0a6092719925de59/) | jGMIndex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5444c7...e7944d`](./contracts/arbitrum-42161/0x5444c71cdd5ed85b6d51a297175bf71914e7944d/) | JonesAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6be861...8b1354`](./contracts/arbitrum-42161/0x6be861aa87009331bf62e22d418ab666e88b1354/) | JonesArbETHVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1f6fa7...eccb23`](./contracts/arbitrum-42161/0x1f6fa7a58701b3773b08a1a16d06b656b0eccb23/) | JonesAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xeefd6b...dd2281`](./contracts/arbitrum-42161/0xeefd6ba4f562330a3ba35badce2210a2e6dd2281/) | JonesAssetVaultV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2d067a...16c0c3`](./contracts/arbitrum-42161/0x2d067a1dc49f4b5809619bdbd2289d067016c0c3/) | JonesBuybacks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6ecaa3...ed7c24`](./contracts/arbitrum-42161/0x6ecaa3203aeb4d0cc21745f2752a73b41ced7c24/) | JonesDpxCallStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x765a3f...b1e02a`](./contracts/arbitrum-42161/0x765a3f26bcafc024746f856a0345dc83f1b1e02a/) | JonesDpxEthBearStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc75417...127901`](./contracts/arbitrum-42161/0xc75417cb103d7008ecb07aa6fbf214ee2c127901/) | JonesDPXHedgingV3Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x504764...d9d31f`](./contracts/arbitrum-42161/0x504764add41632c460924456074aa62c1bd9d31f/) | JonesDpxPutStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1c8db7...7612ba`](./contracts/arbitrum-42161/0x1c8db76703ad7e33551e6e022bf429fd857612ba/) | JonesDPXVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xba0563...c1f1dc`](./contracts/arbitrum-42161/0xba0563ffe3c7abe915d3dc404f1667682bc1f1dc/) | JonesEthCallStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x02017a...43674e`](./contracts/arbitrum-42161/0x02017a8334196537fd1933de833b3ece9a43674e/) | JonesEthPutStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x50744d...2d561c`](./contracts/arbitrum-42161/0x50744d5e6d138aca596f7d36e659d097be2d561c/) | JonesETHVaultV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7241bc...4a3af6`](./contracts/arbitrum-42161/0x7241bc8035b65865156ddb5edef3eb32874a3af6/) | JonesGlpCompoundRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x15df56...b584d5`](./contracts/arbitrum-42161/0x15df56a82c194fefec9337c37a41964b69b584d5/) | JonesGlpLeverageStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xda04b5...980a12`](./contracts/arbitrum-42161/0xda04b5f54756774ad405de499bb5100c80980a12/) | JonesGlpRewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x43cc8e...ad7216`](./contracts/arbitrum-42161/0x43cc8e7026077e4b21ddc658ea26f39475ad7216/) | JonesGlpRewardsSplitter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x65ab0a...a689b4`](./contracts/arbitrum-42161/0x65ab0ad9f0e6db36aac10f28e97505c199a689b4/) | JonesGlpRewardsSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x13c6be...b19d9d`](./contracts/arbitrum-42161/0x13c6bed5aa16823aba5bba691caec63788b19d9d/) | JonesGlpRewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x17ff15...7f24c7`](./contracts/arbitrum-42161/0x17ff154a329e37282eb9a76c3ae848fc277f24c7/) | JonesGlpVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01ad96...05aec2`](./contracts/arbitrum-42161/0x01ad96292cdc627307817c428562226fd905aec2/) | JonesGlpVaultRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x68798c...41bf04`](./contracts/arbitrum-42161/0x68798c683dbd43c3a16ae8c3e02c37999641bf04/) | JonesGohmCallStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2f9980...60618b`](./contracts/arbitrum-42161/0x2f9980d6fb25bd972196b19e243e36dbde60618b/) | JonesGOHMHedgingV3Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe5a8ab...ccba61`](./contracts/arbitrum-42161/0xe5a8ab24dc1b0f54dc3803cb33098879f8ccba61/) | JonesGohmPutStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9a62e4...69c814`](./contracts/arbitrum-42161/0x9a62e407028961eac4538453cb5d97038b69c814/) | JonesgOHMVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x39c144...007ddb`](./contracts/arbitrum-42161/0x39c1442223a30e14066302b2c80aa660ab007ddb/) | JonesGuardedLaunch | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x211187...b6beb9`](./contracts/arbitrum-42161/0x2111875f2e37d98c0b00bc66099b1bfb07b6beb9/) | JonesHedgingV3Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb98976...3aabc5`](./contracts/arbitrum-42161/0xb98976a008191948a6857df824034d3c5f3aabc5/) | JonesRdpxCallStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x711f1b...524de9`](./contracts/arbitrum-42161/0x711f1bf759d3f749b938cf040ab65110b8524de9/) | JonesRdpxEthBullStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x37a86c...8f95bf`](./contracts/arbitrum-42161/0x37a86cb53981cc762709b2c402b0f790d58f95bf/) | JonesRDPXHedgingV3Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x261287...84e823`](./contracts/arbitrum-42161/0x2612870b2a96f43430e19bb6873a74295684e823/) | JonesRdpxPutStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9e74c8...b9e307`](./contracts/arbitrum-42161/0x9e74c867198e2c46bc3f365ac3b401d67cb9e307/) | JonesRefund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5a81ab...19829b`](./contracts/arbitrum-42161/0x5a81abb52d96241d15d8b2bdcd76034e4119829b/) | JonesSaleClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x02dcd1...182d95`](./contracts/arbitrum-42161/0x02dcd1d46ca19cca8961658f9389b4901e182d95/) | JonesSSOVCallV3Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x220890...ebeb34`](./contracts/arbitrum-42161/0x22089039a813aedde848ac5876c1492fd2ebeb34/) | JonesSSOVPutV3Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4a7d28...8409ca`](./contracts/arbitrum-42161/0x4a7d28bfba97dc5fc71bca31cf454f1b498409ca/) | JonesTestnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6580f4...36f79a`](./contracts/arbitrum-42161/0x6580f41efc34e6d49ab692bd338d2a0e0636f79a/) | JonesTokenSale | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8a0027...4f1cf5`](./contracts/arbitrum-42161/0x8a0027152ad2781c0cbabda0cc53290bf04f1cf5/) | JonesTokenSaleV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3327a5...a32993`](./contracts/arbitrum-42161/0x3327a5f041e821f476e00572ee0862fbcaa32993/) | JonesWETHHedgingV3Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x086d9a...be7772`](./contracts/arbitrum-42161/0x086d9abc69c60b75470e620221cd857bcdbe7772/) | JonesWETHVaultV3Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x263c4f...bb4cc2`](./contracts/arbitrum-42161/0x263c4fabd13b3822f5d476683bbfe2c437bb4cc2/) | jUsdcOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x13504b...d06d63`](./contracts/arbitrum-42161/0x13504bfff1ce638c04619f4fd0d51a2867d06d63/) | LeverageRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x145f1d...072780`](./contracts/arbitrum-42161/0x145f1d25abc5ca103a9680496d07ba26d3072780/) | LeverageStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3942cd...6c63f1`](./contracts/arbitrum-42161/0x3942cda55cc29dd28879f479768d293c9b6c63f1/) | LeverageViewer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb330a2...2d8f60`](./contracts/arbitrum-42161/0xb330a28c8518c4095c8411191120d1739c2d8f60/) | LPStrategyLib | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x92e0da...d3bcde`](./contracts/arbitrum-42161/0x92e0da4bfd120ef25f74af7041f48a205ad3bcde/) | LunaVolatilityOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x29a1d8...011602`](./contracts/arbitrum-42161/0x29a1d81d7f3f3dc20e81fe875012b7bed4011602/) | LunaWeeklyPutsSsovV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13f580...4cc865`](./contracts/ethereum-1/0x13f5802d1d5b4f0ff529537c694843515e4cc865/) | MainnetWrappedJonesAura | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x041532...eda798`](./contracts/ethereum-1/0x041532cb7feb5bbedf8248a0f7d58db827eda798/) | MainnetWrappedJonesAuraOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x018b44...900717`](./contracts/arbitrum-42161/0x018b44c923a567205caee45b882fd61394900717/) | MillinerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x36a022...0bb86b`](./contracts/arbitrum-42161/0x36a0221d9f6509137e68c3b910b240e7f20bb86b/) | MultichainMiddleware | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e8aed...a1a7af`](./contracts/ethereum-1/0x3e8aed9dbb0d1a7769feb431a23dd00bfba1a7af/) | MultichainReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1c3ad2...9faa05`](./contracts/arbitrum-42161/0x1c3ad2dcd598d41ad531f15421e9be1d089faa05/) | NStakingStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2b99e3...bdd67b`](./contracts/arbitrum-42161/0x2b99e3d67dad973c1b9747da742b7e26c8bdd67b/) | OptionPricingSimple | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb77a55...caf7b5`](./contracts/arbitrum-42161/0xb77a55274251c4fe858f76b8d94ae76e1dcaf7b5/) | OptionsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3f8473...a92a1c`](./contracts/arbitrum-42161/0x3f84734005bda494d3718f7a507e18dd83a92a1c/) | PatchOfTheAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x04f4f0...c0c744`](./contracts/arbitrum-42161/0x04f4f0c6c09370576a8f22fd5f8838abecc0c744/) | Payroll | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x095bd2...9f366c`](./contracts/arbitrum-42161/0x095bd2500a20be6351ad86605457f22a489f366c/) | plsSYKAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf843f6...28de50`](./contracts/ethereum-1/0xf843f61508fc17543412de55b10ed87f4c28de50/) | PoolManagerV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x74cadb...d334b4`](./contracts/arbitrum-42161/0x74cadbdf7850abd4f9bd355e528a9b23a2d334b4/) | PriceOracleAggregator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x21485d...fa9289`](./contracts/arbitrum-42161/0x21485d96036644041a0398e2ce2ea51d21fa9289/) | PusdVaultWeekly | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x86f5c3...bb454c`](./contracts/arbitrum-42161/0x86f5c37be9d87975d0aea307ac9143c13fbb454c/) | PusdVolatilityOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc0cdd1...4afaa0`](./contracts/arbitrum-42161/0xc0cdd1176aa1624b89b7476142b41c04414afaa0/) | RdpxCustomPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x253b77...c075a2`](./contracts/arbitrum-42161/0x253b772408c5c2ee6c96b027aae6896fecc075a2/) | RdpxEthLpFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0c8f76...cfbc87`](./contracts/arbitrum-42161/0x0c8f76ae6b3636643c912dbace26f3b65acfbc87/) | RdpxEthStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8d66b8...0db22d`](./contracts/arbitrum-42161/0x8d66b80e03fceff5d825b77433b62400c00db22d/) | RdpxMonthlyCallsSsovV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa70bf6...ef1b9c`](./contracts/arbitrum-42161/0xa70bf62578aadb37032c73f01873bcc7dcef1b9c/) | RdpxPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x882f24...a2f148`](./contracts/arbitrum-42161/0x882f241d061ce44f20b9991bc10e834f68a2f148/) | RdpxPutPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaa6cf3...ad9c5f`](./contracts/arbitrum-42161/0xaa6cf3c71d334aa142f4a73b1c545cea06ad9c5f/) | RdpxPutPriceOracleV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1d1cc5...35a4ec`](./contracts/arbitrum-42161/0x1d1cc5a92a87772607639acf5a8f5a55fd35a4ec/) | RdpxStakingStrategyV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3e0215...1b3212`](./contracts/arbitrum-42161/0x3e0215c1d639280e13b46e3af94fb5630d1b3212/) | RdpxVolatilityOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x398010...b6da1c`](./contracts/arbitrum-42161/0x39801002866657f95cb111bff0f3b7218cb6da1c/) | RdpxVolatilityOracleV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb188b1...9fec59`](./contracts/ethereum-1/0xb188b1cb84fb0ba13cb9ee1292769f903a9fec59/) | RewardPoolDepositWrapper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0af020...6f7a0d`](./contracts/arbitrum-42161/0x0af020886c7fc1243c3f843ee76345e2ab6f7a0d/) | RewardReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09a454...5b952b`](./contracts/arbitrum-42161/0x09a454fd7a7f6f66cb2cc0196860f94ced5b952b/) | RewardsDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7f3649...f6a40f`](./contracts/arbitrum-42161/0x7f3649c4b6acc01d50eaa725096df27a36f6a40f/) | RewardsDistributionV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x124b6a...7d0458`](./contracts/arbitrum-42161/0x124b6aef712f9b2f8e239c01ce251287457d0458/) | RewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x19f056...3950f7`](./contracts/arbitrum-42161/0x19f056cecd9599db1724de7a6814e779843950f7/) | RoleController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x06974f...3f6c5f`](./contracts/arbitrum-42161/0x06974f42a1090f07d832240cb2375420eb3f6c5f/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x02af5c...c8748d`](./contracts/arbitrum-42161/0x02af5c07e96b40e3324390da4a794fff55c8748d/) | SingleRewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x27cebe...cf68c1`](./contracts/arbitrum-42161/0x27cebe6b5075e4d6feec384b0a31ec6e53cf68c1/) | SsovAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x73b82e...6f8a84`](./contracts/arbitrum-42161/0x73b82eba5176d8aa02606459e416f13f686f8a84/) | SSOVDpx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8c73b6...71add0`](./contracts/arbitrum-42161/0x8c73b6d3c81c6cc42e8285c8c147a7563d71add0/) | SsovV3FeeStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x11a99d...0d0d47`](./contracts/arbitrum-42161/0x11a99d3a49dd1b5adcaf24964646c90de50d0d47/) | SsovV3OptionsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1962ce...8f0d66`](./contracts/arbitrum-42161/0x1962ceb5c394ed5ad20dc72f98f2617d9d8f0d66/) | SsovV3Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0a93ff...13022a`](./contracts/arbitrum-42161/0x0a93ff362287f0aeffc313423c80854f4713022a/) | SsovV3Viewer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7487c1...65052f`](./contracts/arbitrum-42161/0x7487c19df56b7ea764fc269468b5d3014565052f/) | SsovV3Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2c2082...1a1cf3`](./contracts/arbitrum-42161/0x2c2082e4062bfd02141adc86cbd5e437201a1cf3/) | StakingRewardsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x125cc7...ccb6bb`](./contracts/arbitrum-42161/0x125cc7cce81a809c825c945e5aa874e60cccb6bb/) | StakingRewardsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf274e4...0ab08e`](./contracts/ethereum-1/0xf274e48939a1c619c0f2aac134732995f20ab08e/) | StaticRateViewer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x475a5a...d1851b`](./contracts/arbitrum-42161/0x475a5a712b741b9ab992e6af0b9e5adee3d1851b/) | StEthMonthlyCallsSsovV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0f4a22...3664b5`](./contracts/arbitrum-42161/0x0f4a22977df09f2a52bec2d4f5722251d73664b5/) | StraddlePositionMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc1d968...da55b7`](./contracts/arbitrum-42161/0xc1d9682db60955d64f263025b282acbf8cda55b7/) | TeamVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3757b4...a17f61`](./contracts/arbitrum-42161/0x3757b49d79063e157dc376f2b409c3730fa17f61/) | TeamVestingV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1261d3...9582b5`](./contracts/arbitrum-42161/0x1261d315da164c41db9968c4544ad641cf9582b5/) | TheShreddiesCC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x19ad97...e38d4b`](./contracts/arbitrum-42161/0x19ad978263e1525389d5ce7ce9bb886191e38d4b/) | TheShreddiesCCTestnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xd99593...aed256`](./contracts/blast-81457/0xd99593149a794496c601f789daa1203d03aed256/) | ThrusterPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc9dd81...4b4859`](./contracts/ethereum-1/0xc9dd81508af5c47b7d54ba29a027cc1a514b4859/) | UniversalMainnetSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1cbbad...71baf9`](./contracts/arbitrum-42161/0x1cbbad4658379c5eaa7da1622d357954cf71baf9/) | UniversalSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2a5cc1...105ad6`](./contracts/arbitrum-42161/0x2a5cc190854cd078b2b0ca2a357faf0073105ad6/) | UpgradeableIncentiveReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa0ed02...7a9073`](./contracts/arbitrum-42161/0xa0ed021cf3ad897181c23e20aa5ffb8f607a9073/) | USDCVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x367fe7...00a26e`](./contracts/base-8453/0x367fe7925d523d8f9fd7baeda4ba2a32cf00a26e/) | VeloLPManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x440713...f36231`](./contracts/base-8453/0x4407135654126dc6b53e61331775edb312f36231/) | VeloSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x034052...9f6872`](./contracts/arbitrum-42161/0x034052a9d34f2549a4fbe43eb07282ca7d9f6872/) | Viewer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7da1b5...96454e`](./contracts/arbitrum-42161/0x7da1b58f0a7cbb70f756a01412842d5a8796454e/) | VolatilityEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3a3b40...c430ef`](./contracts/arbitrum-42161/0x3a3b40ec5be35c3c8e8be54d04da60d69ac430ef/) | VolatilityOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x264ae3...03b65c`](./contracts/arbitrum-42161/0x264ae330b7d1d60903d26ba0750e2e59a003b65c/) | WethAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x12c66e...86e3c6`](./contracts/arbitrum-42161/0x12c66ed98c7579d2d00675e18a9feb9cec86e3c6/) | WhitelistController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x48b0a4...e718d5`](./contracts/arbitrum-42161/0x48b0a4afa62c743c0a6f9a29ec79c1ef65e718d5/) | WithdrawUVRT | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 258 |
| upstream | 81 |
| standard_library | 24 |
| needs_review | 137 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [9467] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [9468] 0002-metadata-manifest-and-pull-command.md
- [9469] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
