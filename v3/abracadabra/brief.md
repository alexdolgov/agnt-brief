# Agentic Audit Brief: Abracadabra

⚠️ Lifecycle status: DEAD - TVL dropped 54.6% over 90 days

## Project Overview

- Project: Abracadabra (`abracadabra`)
- Website: [https://abracadabra.money](https://abracadabra.money)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-04T11:05:39.249Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: arbitrum, avalanche, base, blast, bsc, ethereum, fantom, kava, linea, moonriver, optimism, polygon
- Contract surface: 792 unique implementations (1479 raw deployments)
- DeFi Llama TVL: $4,638,464.02
- On-chain TVL (included contracts): $776,457,863.62
- TVL by chain: Arbitrum $554,026,938.15 | Ethereum $203,036,115.80 | Avalanche $15,212,296.76 | Bsc $2,148,371.15 | Optimism $1,789,911.16 | Blast $223,338.03 | Polygon $20,290.04 | Base $602.52

## Project Description

CDP. Structurally: 1142 project-authored contract(s) across 10 chain(s); 23 ERC4626 vaults, 139 ERC20 tokens, 11 ERC721 NFTs, 17 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 11 functional families. Its contracts share 91 common project-authored base contract(s) (boringownabledata, ownableoperators, erc20permit). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 3064; live-surface contracts included: 1440 (892 live, 548 unknown).
- Excluded by liveness: 1624 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 9/290 (3.1%)
- Deployed-live implementations: 290 of 792 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 9/307
- Verified + Unaudited implementations: 298
- Verified by bytecode match: 0
- Unverified implementations: 485
- Unique implementations: 792
- Raw deployments: 1479
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $776,457,863.62
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $776,457,863.62 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 8 | 2.6% | 2024-12 |
| Guardian | Tier 2 | 2 | 0.7% | 2023-11 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BlastBox | unknown | blast | n/a | [`0xc8f5eb...1e3748`](./contracts/blast-81457/0xc8f5eb8a632f9600d1c7bc91e97dad5f8b1e3748/) | ✅ Audited |
| BlastCauldronV4 | unknown | blast | n/a | [`0x79e8ca...fe402e`](./contracts/blast-81457/0x79e8cad80e2aa49a246b789584c45aab1cfe402e/) | ✅ Audited |
| BlastOnboardingBoot | unknown | blast | n/a | [`0xa64b73...36ab96`](./contracts/blast-81457/0xa64b73699cc7334810e382a4c09caec53636ab96/) | ✅ Audited |
| CauldronV4 | unknown | ethereum | n/a | 27 deployments: ethereum [`0x00380c...0ac923`](./contracts/ethereum-1/0x00380cb5858664078f2289180cc32f74440ac923/); ethereum `0x207763...3c1588`; ethereum `0x38e7d1...4a41bb`; ethereum `0x43243f...4054a5`; ethereum `0x692887...89b684`; ethereum `0x7259e1...1a6a90`; ethereum `0x7d8df3...b90815`; ethereum `0xa84101...4c3b9d`; ethereum `0xc4113a...517c77`; ethereum `0xe8ed74...5bf341`; moonriver `0x2f1ba2...178f89`; moonriver `0x3477df...3c7e75`; moonriver `0x8d99a1...d0da30`; moonriver `0x9affe9...59fbc4`; moonriver `0xe8de4c...fc916a`; arbitrum `0x303a59...bbc0b9`; arbitrum `0x49de72...c8fa57`; arbitrum `0x569813...0406d5`; arbitrum `0x6b04c5...3dacb6`; arbitrum `0x726413...3701b1`; arbitrum `0x780db9...d0c320`; arbitrum `0xdf46f6...045297`; arbitrum `0xe05811...3a194e`; arbitrum `0xed50bb...4c14de`; arbitrum `0xee22ba...14eb16`; arbitrum `0xef2acb...04e16e`; avalanche `0x17b205...6f5341` | ✅ Audited |
| DegenBox | unknown | bsc | n/a | 15 deployments: ethereum `0xd96f48...fc2cce`; optimism `0x233332...accb9c`; optimism `0xa93c81...ba1723`; optimism `0xb3f5c7...a26753`; bsc [`0x090185...37e5f6`](./contracts/bsc-56/0x090185f2135308bad17527004364ebcc2d37e5f6/); polygon `0x7a3b79...080449`; polygon `0xe56f37...d60b42`; moonriver `0x0d2a51...e59449`; base `0x6e4358...b7f442`; base `0xa3372c...b3b20d`; arbitrum `0x268ab9...c54be4`; arbitrum `0x7c8fef...431d38`; arbitrum `0xfd7234...5745f5`; avalanche `0x1fc83f...aae530`; avalanche `0xd825d0...b0e6a4` | ✅ Audited |
| GmxV2CauldronV4 | unknown | arbitrum | n/a | 15 deployments: arbitrum [`0x017ccd...ed6bdb`](./contracts/arbitrum-42161/0x017ccd8ef10fb8bb3a5a04b2798212132eed6bdb/); arbitrum `0x0c8913...166b9b`; arbitrum `0x1b867b...a67043`; arbitrum `0x2b02bb...1934fa`; arbitrum `0x4809cb...34e5cc`; arbitrum `0x4f9737...e40741`; arbitrum `0x625fe7...74bd61`; arbitrum `0x66805f...996c6a`; arbitrum `0x74322f...410359`; arbitrum `0x7962ac...5404fb`; arbitrum `0x9ff8b4...e94831`; arbitrum `0xa6299c...c6b210`; arbitrum `0xb3d722...47f2f0`; arbitrum `0xd7659d...6d552a`; arbitrum `0xf69553...a2bd5e` | ✅ Audited |
| MultiRewards | unknown | arbitrum | n/a | 6 deployments: ethereum `0xafd3d3...0a96ca`; ethereum `0xafe0bb...2c47db`; arbitrum [`0x280c64...b11f97`](./contracts/arbitrum-42161/0x280c64c4c4869cf2a6762eadd4701360c1b11f97/); arbitrum `0x3886a6...f5f755`; arbitrum `0xc30911...1cd652`; arbitrum `0xdc9bc3...ceee96` | ✅ Audited |
| Router | unknown | linea | n/a | 6 deployments: ethereum `0x7202b7...d5b6fe`; arbitrum `0x63d8e7...e09f01`; arbitrum `0x9f0418...5792c7`; arbitrum `0xabbc5f...2f4064`; arbitrum `0xdb0956...34a9fa`; linea [`0x0d2a51...e59449`](./contracts/linea-59144/0x0d2a5107435cbbbe21db1adb5f1e078e63e59449/) | ✅ Audited |
| Spell | unknown | ethereum | n/a | [`0x090185...37e5f6`](./contracts/ethereum-1/0x090185f2135308bad17527004364ebcc2d37e5f6/) | ✅ Audited |

### ⚠️ Verified + Unaudited (298)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StandardArbERC20 | token | arbitrum | n/a | 2 deployments: arbitrum [`0x2f2a25...fc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/); arbitrum `0x3e6648...15d2af` | ⚠️ Unaudited |
| MarketToken | token | arbitrum | n/a | 7 deployments: arbitrum [`0x09400d...af03c9`](./contracts/arbitrum-42161/0x09400d9db990d5ed3f35d7be61dfaeb900af03c9/); arbitrum `0x450bb6...2ac541`; arbitrum `0x47c031...170703`; arbitrum `0x70d955...ee6336`; arbitrum `0x7c11f7...6b9a77`; arbitrum `0x7f1fa2...18455c`; arbitrum `0xc25cef...7e5407` | ⚠️ Unaudited |
| FantomToken | token | ethereum | n/a | [`0x4e1536...717870`](./contracts/ethereum-1/0x4e15361fd6b4bb609fa63c81a2be19d873717870/) | ⚠️ Unaudited |
| cvxCrvToken | token | ethereum | n/a | [`0x62b9c7...810aa7`](./contracts/ethereum-1/0x62b9c7356a2dc64a1969e19c23e4f579f9810aa7/) | ⚠️ Unaudited |
| LUSDToken | token | ethereum | n/a | [`0x5f9880...568ba0`](./contracts/ethereum-1/0x5f98805a4e8be255a32880fdec7f6728c6568ba0/) | ⚠️ Unaudited |
| BaseRewardPool | core_logic | ethereum | n/a | [`0x3fe656...a7587e`](./contracts/ethereum-1/0x3fe65692bfcd0e6cf84cb1e7d24108e434a7587e/) | ⚠️ Unaudited |
| LayerZeroToken | token | ethereum | n/a | 2 deployments: ethereum [`0x698588...3271cd`](./contracts/ethereum-1/0x6985884c4392d348587b19cb9eaaf157f13271cd/); arbitrum [`0x698588...3271cd`](./contracts/arbitrum-42161/0x6985884c4392d348587b19cb9eaaf157f13271cd/) | ⚠️ Unaudited |
| LQTYToken | token | ethereum | n/a | [`0x6dea81...88c54d`](./contracts/ethereum-1/0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d/) | ⚠️ Unaudited |
| JoeToken | token | avalanche | n/a | [`0x6e84a6...bc0fdd`](./contracts/avalanche-43114/0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd/) | ⚠️ Unaudited |
| AlToken | token | ethereum | n/a | [`0xbc6da0...3660e9`](./contracts/ethereum-1/0xbc6da0fe9ad5f3b0d58160288917aa56653660e9/) | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | moonriver | n/a | 5 deployments: bsc `0xfe19f0...f433ba`; polygon `0x49a040...c47242`; moonriver [`0x0cae51...de3adb`](./contracts/moonriver-1285/0x0cae51e1032e8461f4806e26332c030e34de3adb/); arbitrum `0xfea7a6...7d6c2a`; avalanche `0x130966...b8c18d` | ⚠️ Unaudited |
| AlchemixToken | token | ethereum | n/a | [`0xdbdb4d...90c8df`](./contracts/ethereum-1/0xdbdb4d16eda451d0503b854cf79d55697f90c8df/) | ⚠️ Unaudited |
| cvxRewardPool | core_logic | ethereum | n/a | [`0xcf50b8...139332`](./contracts/ethereum-1/0xcf50b810e57ac33b91dcf525c6ddd9881b139332/) | ⚠️ Unaudited |
| DepositToken | token | ethereum | n/a | [`0x903c99...3b61fb`](./contracts/ethereum-1/0x903c9974aaa431a765e60bc07af45f0a1b3b61fb/) | ⚠️ Unaudited |
| cvxFpisToken | token | ethereum | n/a | [`0xa28473...427df6`](./contracts/ethereum-1/0xa2847348b58ced0ca58d23c7e9106a49f1427df6/) | ⚠️ Unaudited |
| AnyswapV6ERC20 | token | optimism | n/a | [`0xb153fb...c57901`](./contracts/optimism-10/0xb153fb3d196a8eb25522705560ac152eeec57901/) | ⚠️ Unaudited |
| Pool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x38ea45...0bd783`](./contracts/ethereum-1/0x38ea452219524bb87e18de1c24d3bb59510bd783/); ethereum `0xdf0770...32ff56` | ⚠️ Unaudited |
| cvxFxsToken | token | ethereum | n/a | [`0xfeef77...4bdf74`](./contracts/ethereum-1/0xfeef77d3f69374f66429c91d732a244f074bdf74/) | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | token | avalanche | n/a | 9 deployments: avalanche [`0x29472d...328db2`](./contracts/avalanche-43114/0x29472d511808ce925f501d25f9ee9effd2328db2/); avalanche `0x3fe38b...a9eb1f`; avalanche `0x585e7b...b96c15`; avalanche `0x8b650e...1e4448`; avalanche `0x929f5c...4633fa`; avalanche `0xbfdbe3...3c76e0`; avalanche `0xc14678...8da696`; avalanche `0xc988c1...a7ca19`; avalanche `0xed6aaf...f637ac` | ⚠️ Unaudited |
| MintableBurnableERC20 | token | base | n/a | 3 deployments: base [`0x4a3a6d...eb6a3d`](./contracts/base-8453/0x4a3a6dd60a34bb2aba60d73b4c88315e9ceb6a3d/); linea `0xdd3b80...c9429a`; blast `0x76da31...8374c1` | ⚠️ Unaudited |
| JoeHatToken | token | avalanche | n/a | [`0x82fe03...62077c`](./contracts/avalanche-43114/0x82fe038ea4b50f9c957da326c412ebd73462077c/) | ⚠️ Unaudited |
| StabilityPool | core_logic | ethereum | n/a | [`0x66017d...5a21bb`](./contracts/ethereum-1/0x66017d22b0f8556afdd19fc67041899eb65a21bb/) | ⚠️ Unaudited |
| BorrowerOperations | core_logic | ethereum | n/a | [`0x24179c...83e007`](./contracts/ethereum-1/0x24179cd81c9e782a4096035f7ec97fb8b783e007/) | ⚠️ Unaudited |
| mSpellStaking | token | arbitrum | n/a | 7 deployments: ethereum `0xbd2fba...5e6797`; arbitrum [`0x1df188...dd9e51`](./contracts/arbitrum-42161/0x1df188958a8674b5177f77667b8d173c3cdd9e51/); arbitrum `0x694808...4b99ff`; arbitrum `0x6cc0cd...8ae668`; avalanche `0xa3c893...a92a12`; avalanche `0xbd8447...f955af`; avalanche `0xc1f186...c3ec70` | ⚠️ Unaudited |
| Booster | core_logic | ethereum | n/a | 2 deployments: ethereum [`0xd8bd5c...f28659`](./contracts/ethereum-1/0xd8bd5cdd145ed2197cb16ddb172df954e3f28659/); ethereum `0xf403c1...8aae31` | ⚠️ Unaudited |
| ActivePool | core_logic | ethereum | n/a | [`0xdf9eb2...fe3d7f`](./contracts/ethereum-1/0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f/) | ⚠️ Unaudited |
| CollSurplusPool | core_logic | ethereum | n/a | [`0x3d32e8...ce5521`](./contracts/ethereum-1/0x3d32e8b97ed5881324241cf03b2da5e2ebce5521/) | ⚠️ Unaudited |
| AbraOFTUpgradeable | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x051ae6...f88b0b`](./contracts/arbitrum-42161/0x051ae6144f4e4c6afd279b202333d3191df88b0b/); arbitrum `0xfc1f2a...f73f83` | ⚠️ Unaudited |
| AbraOFTUpgradeable | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x51c07f...033fae`](./contracts/arbitrum-42161/0x51c07fc69950bed5988fc5dc187baa8465033fae/); arbitrum `0x9473b1...6a7cf6` | ⚠️ Unaudited |
| AbraOFTUpgradeable | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5db2df...f6226b`](./contracts/arbitrum-42161/0x5db2dfe0fb881f046431c4238636a55310f6226b/); arbitrum `0xa21143...a084a6` | ⚠️ Unaudited |
| AdventureGold | unknown | ethereum | n/a | [`0x32353a...489a20`](./contracts/ethereum-1/0x32353a6c91143bfd6c7d363b546e62a9a2489a20/) | ⚠️ Unaudited |
| aeWETH | token | arbitrum | n/a | 2 deployments: arbitrum [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/); arbitrum `0x8b194b...fba668` | ⚠️ Unaudited |
| Alchemist | unknown | ethereum | n/a | [`0xc21d35...9fe35b`](./contracts/ethereum-1/0xc21d353ff4ee73c572425697f4f5aad2109fe35b/) | ⚠️ Unaudited |
| ArbitrumFoundationVestingWallet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x15533b...5d6844`](./contracts/arbitrum-42161/0x15533b77981cda0f85c4f9a485237df4285d6844/); arbitrum `0x28b72d...9d2a14` | ⚠️ Unaudited |
| ArbitrumFoundationVestingWallet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xcfc79f...47513f`](./contracts/arbitrum-42161/0xcfc79fcd07929467a8e1925e06007de5f047513f/); arbitrum `0xe3c6c2...108659` | ⚠️ Unaudited |
| AVAXLevSwapperV1 | unknown | avalanche | n/a | [`0x69bfea...58c7b1`](./contracts/avalanche-43114/0x69bfea0307a071c3e6cd217486b16d20bd58c7b1/) | ⚠️ Unaudited |
| AVAXOracleV1 | unknown | avalanche | n/a | [`0x082454...6ff63a`](./contracts/avalanche-43114/0x0824545b22dd6dc644c8b66d7923e613816ff63a/) | ⚠️ Unaudited |
| AvaxSwapperV1 | unknown | avalanche | n/a | [`0x2b7275...8f36a8`](./contracts/avalanche-43114/0x2b727505fdf3650028c8de0f5d73337ba78f36a8/) | ⚠️ Unaudited |
| BatchSender | periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x1070f7...fe17e8`](./contracts/arbitrum-42161/0x1070f775e8eb466154bba8fa0076c4adc7fe17e8/); arbitrum `0x5179d7...3107a6`; arbitrum `0x5384e6...d1941d` | ⚠️ Unaudited |
| BeaconProxyFactory | unknown | arbitrum | n/a | [`0x863491...a1bda9`](./contracts/arbitrum-42161/0x863491cc6c7275bcc15a386093e92390e2a1bda9/) | ⚠️ Unaudited |
| BeefyMigrator | unknown | arbitrum | n/a | [`0x64920a...72f164`](./contracts/arbitrum-42161/0x64920af66d5772042b0aae8a1ebef75b4372f164/) | ⚠️ Unaudited |
| BeefyTimelockCaller | unknown | arbitrum | n/a | [`0x46a188...f4af2b`](./contracts/arbitrum-42161/0x46a1884484a51b799414c6f02aeed80246f4af2b/) | ⚠️ Unaudited |
| BentoBoxV1 | unknown | ethereum | n/a | [`0xf5bce5...643966`](./contracts/ethereum-1/0xf5bce5077908a1b7370b9ae04adc565ebd643966/) | ⚠️ Unaudited |
| BentoBoxV1 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x74c764...46894a`](./contracts/arbitrum-42161/0x74c764d41b77dbbb4fe771dab1939b00b146894a/); avalanche `0xf4f463...d1d18f` | ⚠️ Unaudited |
| BlastMIMSwapFactory | registry | blast | n/a | [`0x7e0536...b84908`](./contracts/blast-81457/0x7e05363e225c1c8096b1cd233b59457104b84908/) | ⚠️ Unaudited |
| BlastMIMSwapRouter | adapter | blast | n/a | [`0x85faaf...57b705`](./contracts/blast-81457/0x85faafc31bc8b16be7039f869cd2006da257b705/) | ⚠️ Unaudited |
| BnbStaking | unknown | bsc | n/a | [`0x555ea7...6dcb5a`](./contracts/bsc-56/0x555ea72d7347e82c614c16f005fa91caf06dcb5a/) | ⚠️ Unaudited |
| BonusDistributor | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x03f349...40d356`](./contracts/arbitrum-42161/0x03f349b3cc4f200d7fae4d8ddaf1507f5a40d356/); arbitrum `0x31a347...b8efb1`; arbitrum `0x50c62f...1ebaeb`; arbitrum `0x8cce8a...2d48fa` | ⚠️ Unaudited |
| BoostedMasterChefJoe | unknown | avalanche | n/a | 3 deployments: avalanche [`0x217945...8266e9`](./contracts/avalanche-43114/0x217945d4cb3386420252da73743f1730f38266e9/); avalanche `0x846a4c...bfff23`; avalanche `0xbb28e0...0a7ad0` | ⚠️ Unaudited |
| Bridge | unknown | arbitrum | n/a | [`0x931dda...576441`](./contracts/arbitrum-42161/0x931dda8e3d4e4b7832e9005812c979008b576441/) | ⚠️ Unaudited |
| BuybackMigrator | unknown | arbitrum | n/a | [`0x4f47a1...8379d4`](./contracts/arbitrum-42161/0x4f47a156fa8106aa7bd13e6219c54a78748379d4/) | ⚠️ Unaudited |
| CakeToken | token | bsc | n/a | 3 deployments: bsc [`0x0e09fa...81ce82`](./contracts/bsc-56/0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82/); bsc `0x46e358...b42cf4`; bsc `0xe17a47...7f978b` | ⚠️ Unaudited |
| CauldronFeeWithdrawer | operational_periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x2c9f65...29b131`](./contracts/arbitrum-42161/0x2c9f65bd1a501cb406584f5532ce57c28829b131/); avalanche `0x4b4c27...108940`; avalanche `0x64422a...1a7fb7` | ⚠️ Unaudited |
| CauldronLib | unknown | arbitrum | n/a | 9 deployments: ethereum `0x785afa...5faa35`; arbitrum [`0x116899...2aac10`](./contracts/arbitrum-42161/0x11689993dff3f79b27440f4ce74d52bb952aac10/); arbitrum `0x2be431...f361b0`; arbitrum `0x4f5126...3268a7`; arbitrum `0x5d28da...7620b4`; arbitrum `0xc1f186...c3ec70`; arbitrum `0xdbbd96...dce280`; arbitrum `0xef633d...7ed5ee`; arbitrum `0xff498b...baf30b` | ⚠️ Unaudited |
| CauldronLowRiskV1 | unknown | ethereum | n/a | [`0x6cbafe...7c8c8f`](./contracts/ethereum-1/0x6cbafee1fab76ca5b5e144c43b3b50d42b7c8c8f/) | ⚠️ Unaudited |
| CauldronMediumRiskV1 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x6ff906...38b91f`](./contracts/ethereum-1/0x6ff9061bb8f97d948942cef376d98b51fa38b91f/); ethereum `0xbb02a8...b090f3`; ethereum `0xffbf48...3d9ae6` | ⚠️ Unaudited |
| CauldronV2 | unknown | ethereum | n/a | 6 deployments: ethereum [`0x390db1...d18a41`](./contracts/ethereum-1/0x390db10e65b5ab920c19149c919d970ad9d18a41/); ethereum `0x59e908...2e573f`; ethereum `0x5ec47e...192498`; ethereum `0xbc36fd...14dd63`; ethereum `0xcfc571...e74636`; ethereum `0xf179fe...98ed37` | ⚠️ Unaudited |
| CauldronV2CheckpointV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x35a0dd...a30321`](./contracts/ethereum-1/0x35a0dd182e4bca59d5931eae13d0a2332fa30321/); ethereum `0x4eaed7...e4b3a0` | ⚠️ Unaudited |
| CauldronV2Flat | unknown | ethereum | n/a | 12 deployments: ethereum [`0x003d5a...9eed0f`](./contracts/ethereum-1/0x003d5a75d284824af736df51933be522de9eed0f/); ethereum `0x05500e...6e7c27`; ethereum `0x0bca8e...d401c1`; ethereum `0x252dcf...32eae4`; ethereum `0x6371ef...3b7985`; ethereum `0x7b7473...c39020`; ethereum `0x920d9b...953f9f`; ethereum `0x9617b6...795341`; ethereum `0x98a84e...b6b99f`; ethereum `0xc1879b...b592ce`; ethereum `0xc319ee...57e7da`; ethereum `0xebfde8...e93f0a` | ⚠️ Unaudited |
| CauldronV2Multichain | unknown | avalanche | n/a | 12 deployments: bsc `0x692cf1...c12c90`; bsc `0xf80494...a93319`; arbitrum `0x99d8a9...1e17f3`; arbitrum `0xc89958...0215e6`; avalanche [`0x0a1e6a...b1cf3d`](./contracts/avalanche-43114/0x0a1e6a80e93e62bd0d3d3bfcf4c362c40fb1cf3d/); avalanche `0x2450bf...e68d07`; avalanche `0x35fa7a...d6bb21`; avalanche `0x3b63f8...ad964b`; avalanche `0x3cfed0...30d2a2`; avalanche `0x56984f...6ba49d`; avalanche `0x95cce6...b54210`; avalanche `0xacc682...9f28e3` | ⚠️ Unaudited |
| CauldronV3 | unknown | ethereum | n/a | 6 deployments: ethereum [`0x3e2a2b...eb493e`](./contracts/ethereum-1/0x3e2a2bc69e5c22a8da4056b413621d1820eb493e/); ethereum `0x7ce7d9...064757`; ethereum `0x95fdc9...7d0f0f`; ethereum `0xc33d23...927202`; ethereum `0xc6b2b3...09001e`; ethereum `0xd31e19...dc7324` | ⚠️ Unaudited |
| CauldronV3_1 | unknown | avalanche | n/a | 2 deployments: avalanche [`0xced9e3...6b1340`](./contracts/avalanche-43114/0xced9e36f04ca55da41ad2e0bc2f382892a6b1340/); avalanche `0xd8af15...5f9a40` | ⚠️ Unaudited |
| CauldronV3_2 | unknown | optimism | n/a | 4 deployments: ethereum `0x822796...438df5`; ethereum `0xe19b0d...61a12c`; optimism [`0x68f498...ff2362`](./contracts/optimism-10/0x68f498c230015254aff0e1eb6f85da558dff2362/); optimism `0xb69578...cc5e02` | ⚠️ Unaudited |
| CauldronV4WithRewarder | unknown | arbitrum | n/a | 12 deployments: arbitrum [`0x247d7e...1ad85f`](./contracts/arbitrum-42161/0x247d7e28aa79dffe09b287d191393242411ad85f/); arbitrum `0x565195...a0f194`; arbitrum `0x79533f...bec951`; arbitrum `0x967dbc...ffe9ec`; arbitrum `0x96bac9...a8ca62`; arbitrum `0x98bf3e...0d3ede`; arbitrum `0xa3c893...a92a12`; arbitrum `0xac6c43...13d512`; arbitrum `0xc435cc...25534f`; arbitrum `0xcd959b...500c5c`; arbitrum `0xd404be...4cedec`; arbitrum `0xe45217...5fad2b` | ⚠️ Unaudited |
| CheckpointCauldronV4 | unknown | ethereum | n/a | [`0xf36a10...deb23b`](./contracts/ethereum-1/0xf36a106153038c436c470674da0ff1f0dadeb23b/) | ⚠️ Unaudited |
| ClaimZap | adapter | ethereum | n/a | [`0x3f29cb...cf2516`](./contracts/ethereum-1/0x3f29cb4111cbda8081642da1f75b3c12decf2516/) | ⚠️ Unaudited |
| ConvexStakingWrapperAbra | unknown | ethereum | n/a | 3 deployments: ethereum [`0x4985cc...cc8c20`](./contracts/ethereum-1/0x4985cc58c9004772c225aec9c36cc9a56ecc8c20/); ethereum `0x9447c1...4c5646`; ethereum `0xd92494...e51008` | ⚠️ Unaudited |
| CrvDepositor | unknown | ethereum | n/a | [`0x801459...dc86ae`](./contracts/ethereum-1/0x8014595f2ab54cd7c604b00e9fb932176fdc86ae/) | ⚠️ Unaudited |
| CvxCrvRari | unknown | ethereum | n/a | [`0x4fc2a2...56b987`](./contracts/ethereum-1/0x4fc2a279ffddde98cb154f04375e69205156b987/) | ⚠️ Unaudited |
| CvxCrvStakingWrapper | unknown | ethereum | n/a | [`0xaa0c3f...dbe434`](./contracts/ethereum-1/0xaa0c3f5f7dfd688c6e646f66cd2a6b66acdbe434/) | ⚠️ Unaudited |
| CvxDistribution | unknown | ethereum | n/a | [`0x449f2f...d1ddc6`](./contracts/ethereum-1/0x449f2fd99174e1785cf2a1c79e665fec3dd1ddc6/) | ⚠️ Unaudited |
| cvxFpisStaking | unknown | ethereum | n/a | [`0xfa87db...6bc483`](./contracts/ethereum-1/0xfa87db3eaa93b7293021e38416650d2e666bc483/) | ⚠️ Unaudited |
| cvxFxsStaking | unknown | ethereum | n/a | [`0x49b4d1...37e31a`](./contracts/ethereum-1/0x49b4d1df40442f0c31b1bbaea3ede7c38e37e31a/) | ⚠️ Unaudited |
| CvxLocker | unknown | ethereum | n/a | [`0xd18140...94af50`](./contracts/ethereum-1/0xd18140b4b819b895a3dba5442f959fa44994af50/) | ⚠️ Unaudited |
| CvxLockerV2 | unknown | ethereum | n/a | [`0x72a193...2db86e`](./contracts/ethereum-1/0x72a19342e8f1838460ebfccef09f6585e32db86e/) | ⚠️ Unaudited |
| CvxMining | unknown | ethereum | n/a | [`0x3c75bf...de5343`](./contracts/ethereum-1/0x3c75bfe6fbfda3a94e7e7e8c2216afc684de5343/) | ⚠️ Unaudited |
| ENAOFT | unknown | arbitrum | n/a | [`0x58538e...9c0133`](./contracts/arbitrum-42161/0x58538e6a46e07434d7e7375bc268d3cb839c0133/) | ⚠️ Unaudited |
| ERC20Mock | unknown | avalanche | n/a | [`0x72281a...106587`](./contracts/avalanche-43114/0x72281a435fe5a9945e04ef4d0a32771430106587/) | ⚠️ Unaudited |
| EsGMX | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x56f979...8758a0`](./contracts/arbitrum-42161/0x56f9799a53fa850d6f7c71f7e9015eb7768758a0/); arbitrum `0x5d1f0c...71d4d4`; arbitrum `0xe1ae4d...3b107f`; arbitrum `0xf42ae1...a426ca` | ⚠️ Unaudited |
| Factory | unknown | linea | n/a | 3 deployments: ethereum `0xdf46f6...045297`; base `0x9620a2...7c0999`; linea [`0x697778...7d3755`](./contracts/linea-59144/0x697778d9d1f7be0f93f98177a3218859297d3755/) | ⚠️ Unaudited |
| FastPriceEvents | unknown | arbitrum | n/a | 7 deployments: arbitrum [`0x1b27de...d983e6`](./contracts/arbitrum-42161/0x1b27de2815b7903b64961e8c6a992e013dd983e6/); arbitrum `0x37d77f...0cc29f`; arbitrum `0x4530b7...5e1b07`; arbitrum `0x686f6e...0aa8d9`; arbitrum `0x88459b...af8f79`; arbitrum `0xbf3d9b...51db60`; arbitrum `0xe061f2...f42640` | ⚠️ Unaudited |
| FastPriceFeed | unknown | arbitrum | n/a | 17 deployments: arbitrum [`0x068f28...2167c7`](./contracts/arbitrum-42161/0x068f2880c5dc0cb5c1ef913a517f3ad4122167c7/); arbitrum `0x11d628...f43bb7`; arbitrum `0x1a0ad2...fdb774`; arbitrum `0x2ee130...cb807e`; arbitrum `0x2ffbe7...db4c4b`; arbitrum `0x3b8be8...426094`; arbitrum `0x4e9357...bd841e`; arbitrum `0x72927d...fedf95`; arbitrum `0x73fe72...e728df`; arbitrum `0x8960d1...535527`; arbitrum `0xaf47e9...4fef84`; arbitrum `0xb7bd32...6405db`; arbitrum `0xba5555...797e5c`; arbitrum `0xd2a0d4...fefb1c`; arbitrum `0xf5dc6e...f013a3`; arbitrum `0xfaf8c0...2f91d1`; arbitrum `0xfd50a7...55c4a5` | ⚠️ Unaudited |
| FeeBridge | operational_periphery | ethereum | n/a | [`0xd43024...1410e9`](./contracts/ethereum-1/0xd430246142084ec68f7ab090cbd9252a1d1410e9/) | ⚠️ Unaudited |
| FeeDepositV2 | unknown | ethereum | n/a | [`0x7a527d...a0d769`](./contracts/ethereum-1/0x7a527d8bb09f7d70c148ab5de919e9bf68a0d769/) | ⚠️ Unaudited |
| FTT | unknown | ethereum | n/a | [`0x50d1c9...55a4c9`](./contracts/ethereum-1/0x50d1c9771902476076ecfc8b2a83ad6b9355a4c9/) | ⚠️ Unaudited |
| FTT3MonthUnlock | unknown | ethereum | n/a | 2 deployments: ethereum [`0x46c68e...e5c83a`](./contracts/ethereum-1/0x46c68e70c5de077c87e79394b639fde780e5c83a/); ethereum `0x600d08...0b7862` | ⚠️ Unaudited |
| FTT3YearUnlock | unknown | ethereum | n/a | [`0xd76901...28bb83`](./contracts/ethereum-1/0xd769010d3813bafaf4addbfe258eafd07828bb83/) | ⚠️ Unaudited |
| GLP | unknown | arbitrum | n/a | [`0x4277f8...1ac258`](./contracts/arbitrum-42161/0x4277f8f2c384827b5273592ff7cebd9f2c1ac258/) | ⚠️ Unaudited |
| GlpManager | governance | arbitrum | n/a | 3 deployments: arbitrum [`0x321f65...e22649`](./contracts/arbitrum-42161/0x321f653eed006ad1c29d174e17d96351bde22649/); arbitrum `0x3963ff...32ec18`; arbitrum `0x91425a...4f3270` | ⚠️ Unaudited |
| GMX | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x012341...d7c7b8`](./contracts/arbitrum-42161/0x01234181085565ed162a948b6a5e88758cd7c7b8/); arbitrum `0x09cbe2...408b8d`; arbitrum `0x0f0598...9934ba`; arbitrum `0x665ed5...604b7c`; arbitrum `0x9c5c2a...ffe874`; arbitrum `0xfc5a1a...35ad0a` | ⚠️ Unaudited |
| GmxGlpRewardHandler | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3477df...3c7e75`](./contracts/arbitrum-42161/0x3477df28ce70cecf61fffa7a95be4bec3b3c7e75/); arbitrum `0x8d99a1...d0da30` | ⚠️ Unaudited |
| GmxGlpRewardHandler | unknown | arbitrum | n/a | [`0xf4b368...90349e`](./contracts/arbitrum-42161/0xf4b36812d1645dca9d562846e3abf416d590349e/) | ⚠️ Unaudited |
| GmxGlpWrapper | unknown | arbitrum | n/a | [`0xd8cbd5...03993b`](./contracts/arbitrum-42161/0xd8cbd5b22d7d37c978609e4e394ce8b9c003993b/) | ⚠️ Unaudited |
| GmxLens | unknown | avalanche | n/a | 2 deployments: arbitrum `0x714085...a2cd74`; avalanche [`0x1589de...788c69`](./contracts/avalanche-43114/0x1589defc3abb8ac5d0e86c19fb940874ea788c69/) | ⚠️ Unaudited |
| GmxV2CauldronOrderAgent | unknown | arbitrum | n/a | 22 deployments: arbitrum [`0x0155b6...c83203`](./contracts/arbitrum-42161/0x0155b6fe74f90a3840ebf750ea4237d542c83203/); arbitrum `0x0ad2ce...ca1954`; arbitrum `0x10b37a...ce1615`; arbitrum `0x153ecd...07fc17`; arbitrum `0x1ae691...a1ec69`; arbitrum `0x1b6552...750f36`; arbitrum `0x2d9b2d...04056c`; arbitrum `0x49676b...969757`; arbitrum `0x5389e3...fc674e`; arbitrum `0x59eea3...90677c`; arbitrum `0x5b82fa...50e684`; arbitrum `0x6b101c...6987ff`; arbitrum `0x71f94a...cf15bb`; arbitrum `0x815707...8d60f2`; arbitrum `0x8e2c80...2cd862`; arbitrum `0x8e4a11...50ae4a`; arbitrum `0xa822ae...24aa5e`; arbitrum `0xcfd3c2...22e8b3`; arbitrum `0xecabba...32b076`; arbitrum `0xede9a6...1c21aa`; arbitrum `0xf48959...67124a`; arbitrum `0xf6e2a4...2734a8` | ⚠️ Unaudited |
| GmxV2CauldronRouterOrder | adapter | arbitrum | n/a | 20 deployments: arbitrum [`0x02a97f...59414a`](./contracts/arbitrum-42161/0x02a97f80afc2d507bba371f11fe236994159414a/); arbitrum `0x1ce8ec...418f27`; arbitrum `0x3a5770...d0574e`; arbitrum `0x4b0004...338790`; arbitrum `0x6c1ef1...f6df76`; arbitrum `0x709aa6...00bf7c`; arbitrum `0x73962c...b5ca5f`; arbitrum `0x760c0d...2c5c6f`; arbitrum `0x8764f8...d7682a`; arbitrum `0x8b14ff...28854a`; arbitrum `0x94ea6b...e00fc2`; arbitrum `0x992b72...efabcb`; arbitrum `0x9d9826...7bf712`; arbitrum `0xa6032f...81ed3e`; arbitrum `0xb01a7a...8e2167`; arbitrum `0xb14e4e...5d6989`; arbitrum `0xb621b8...18faac`; arbitrum `0xba95c5...390b43`; arbitrum `0xcde8ed...4c42b7`; arbitrum `0xede6ec...bc4fe5` | ⚠️ Unaudited |
| GMXV2Experiment_OrderAgent | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x6ac116...e0746d`](./contracts/arbitrum-42161/0x6ac1163b6f60ba8d6dc1a7f4ccd122418ce0746d/); arbitrum `0x704df2...9ab431`; arbitrum `0x7ad66f...1fdead` | ⚠️ Unaudited |
| GMXV2Experiment_RouterOrder | adapter | arbitrum | n/a | 3 deployments: arbitrum [`0x3b0eca...08eee5`](./contracts/arbitrum-42161/0x3b0ecac5653107a985be93ab25d8dbb8a608eee5/); arbitrum `0x8d9e68...616e59`; arbitrum `0x9cab9f...359439` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0xdf2c27...1e126b`](./contracts/ethereum-1/0xdf2c270f610dc35d8ffda5b453e74db5471e126b/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | n/a | [`0xa71a02...b7174c`](./contracts/arbitrum-42161/0xa71a021ef66b03e45e0d85590432dfcfa1b7174c/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | avalanche | n/a | [`0xae4d3a...a543ca`](./contracts/avalanche-43114/0xae4d3a42e46399827bd094b4426e2f79cca543ca/) | ⚠️ Unaudited |
| Governable | unknown | arbitrum | n/a | [`0xaf8e96...9d8a47`](./contracts/arbitrum-42161/0xaf8e969e3e23f1732f614e64630498ec809d8a47/) | ⚠️ Unaudited |
| Harvester | operational_periphery | ethereum | n/a | [`0x6d6bca...86e1e7`](./contracts/ethereum-1/0x6d6bcac2266468a44da9fa482ca54aaed586e1e7/) | ⚠️ Unaudited |
| IDCard_V2 | unknown | bsc | n/a | 2 deployments: bsc [`0x060bad...d76f69`](./contracts/bsc-56/0x060bad68e5d9b0c0dbcef7963925eca257d76f69/); bsc `0x0bf4c7...28e80b` | ⚠️ Unaudited |
| IDCard_V2 | unknown | bsc | n/a | 2 deployments: bsc [`0x3e0558...2bdfdc`](./contracts/bsc-56/0x3e05584358f0fbfc1909ade5acffbab7842bdfdc/); bsc `0x5c3714...5c007c` | ⚠️ Unaudited |
| IDCard_V2 | unknown | bsc | n/a | 2 deployments: bsc [`0x5c33bb...de16b2`](./contracts/bsc-56/0x5c33bbeaef5bb61872b1a089def880d66cde16b2/); bsc `0xd38b5b...32e950` | ⚠️ Unaudited |
| IDCard_V2 | unknown | polygon | n/a | 2 deployments: polygon [`0x7a0249...9296cc`](./contracts/polygon-137/0x7a02492baa66b0b8266a6d25bbd6d8ba169296cc/); polygon `0xf31789...929452` | ⚠️ Unaudited |
| IDCard_V2_Controller | unknown | bsc | n/a | 2 deployments: bsc [`0x313fdd...4113b8`](./contracts/bsc-56/0x313fdd7368781d5d25b345df07bc65df7b4113b8/); bsc `0xee6430...bdca43` | ⚠️ Unaudited |
| IDCard_V2_Controller | unknown | bsc | n/a | 2 deployments: bsc [`0x81dcd4...889b90`](./contracts/bsc-56/0x81dcd47edad7e30864c7d3f84032368954889b90/); bsc `0xea01dc...1dccf1` | ⚠️ Unaudited |
| IDCard_V2_Controller | unknown | polygon | n/a | 2 deployments: polygon [`0x2d11a4...d3954a`](./contracts/polygon-137/0x2d11a42c7952d645089c8bfeb3a0728a0dd3954a/); polygon `0x5fe673...d7b08c` | ⚠️ Unaudited |
| IDCard_V2_Controller | unknown | polygon | n/a | 2 deployments: polygon [`0x37c246...517eb5`](./contracts/polygon-137/0x37c24675e4a0dfce683c51e1746599f1e2517eb5/); polygon `0xb89a2f...ca2c00` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x0366f1...1d5700`](./contracts/bsc-56/0x0366f1a242c37ca73c73834b7fcd4a66af1d5700/); bsc `0x9c2112...7e0a9e` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x04178a...01896a`](./contracts/bsc-56/0x04178a4a68ac0fb53e11f53170f1be2b3701896a/); bsc `0x828c47...310efa` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x0adb5c...237402`](./contracts/bsc-56/0x0adb5c6a882e212b6202d51ba76a992f33237402/); bsc `0x4bd057...a2861d` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x183e6c...3e3df8`](./contracts/bsc-56/0x183e6c44150627b78d6041c10b884eab543e3df8/); bsc `0xa32509...a4efeb` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x2c6785...49c9a1`](./contracts/bsc-56/0x2c67850ab6d76c36aec82a0a0bcdf0713049c9a1/); bsc `0x570c9e...d20788` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x2d385e...098fce`](./contracts/bsc-56/0x2d385e171a29188f00b098e76dff856e04098fce/); bsc `0x580d5d...bb9a14` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x31f781...871004`](./contracts/bsc-56/0x31f781456b0679bfcf3694195f408e10ec871004/); bsc `0x55344b...84fe6d` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x3fd0d7...1be9ab`](./contracts/bsc-56/0x3fd0d7ee6689bbac605065745105e1585a1be9ab/); bsc `0xc9fbed...2a1d38` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x44081f...8ccc00`](./contracts/bsc-56/0x44081f637776e8e49561127e9992a112008ccc00/); bsc `0x5d028c...63d7dd` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x44a9cc...d99bad`](./contracts/bsc-56/0x44a9cc8463ec00937242b660bf65b10365d99bad/); bsc `0x5d0709...f4151c` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x5ebf71...192697`](./contracts/bsc-56/0x5ebf71bdedb6bc9904920183809e579848192697/); bsc `0xb9e8cf...9c44fa` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x5f402a...3c5be1`](./contracts/bsc-56/0x5f402a3f336d4833a76a72de0104268f6e3c5be1/); bsc `0xf6dd57...0bd443` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x6acc48...bc2585`](./contracts/bsc-56/0x6acc482246d8920ba5530dba24b0e5abdabc2585/); bsc `0x910081...657a06` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x6f82b8...671722`](./contracts/bsc-56/0x6f82b891bab62ae23ad62a7cedb75b24e0671722/); bsc `0x9d3a1c...ef2cfe` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x804583...4d9875`](./contracts/bsc-56/0x80458344d7b5beb363d36de620871725c24d9875/); bsc `0xb922aa...c51f06` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x8ef99b...bb1837`](./contracts/bsc-56/0x8ef99b1bea6866f583e51b52474a6e9a80bb1837/); bsc `0xb1efa4...fa8c82` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x94a24c...a78f02`](./contracts/bsc-56/0x94a24ca3fae6d485639efa72853cf4327ca78f02/); bsc `0xebb16e...f3945a` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0xba79c4...101663`](./contracts/bsc-56/0xba79c4846a82b3fde3bbf1a90dafe25286101663/); bsc `0xff861a...7200e3` | ⚠️ Unaudited |
| IFOUpgradeProxy | unknown | bsc | n/a | [`0xf0ae9b...2624b0`](./contracts/bsc-56/0xf0ae9b39ef4a2680d67c9fb252816725f22624b0/) | ⚠️ Unaudited |
| InchSpellSwapper | adapter | ethereum | n/a | [`0xdfe1a5...a52111`](./contracts/ethereum-1/0xdfe1a5b757523ca6f7f049ac02151808e6a52111/) | ⚠️ Unaudited |
| InterestRateCalculatorV2 | operational_periphery | ethereum | n/a | [`0x1972b5...bc14f7`](./contracts/ethereum-1/0x1972b5d65a690de0bc36278ac93d47fd98bc14f7/) | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | token | avalanche | n/a | [`0xce095a...6a75ea`](./contracts/avalanche-43114/0xce095a9657a02025081e0607c8d8b081c76a75ea/) | ⚠️ Unaudited |
| JoeBar | unknown | avalanche | n/a | [`0x57319d...fd4f33`](./contracts/avalanche-43114/0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33/) | ⚠️ Unaudited |
| JoeFactory | registry | avalanche | n/a | [`0x9ad6c3...0cfa10`](./contracts/avalanche-43114/0x9ad6c38be94206ca50bb0d90783181662f0cfa10/) | ⚠️ Unaudited |
| JoeMaker | unknown | avalanche | n/a | 2 deployments: avalanche [`0x4247c5...bcdcfe`](./contracts/avalanche-43114/0x4247c5dbac51a135939cc904c34e4913b6bcdcfe/); avalanche `0x861726...b65856` | ⚠️ Unaudited |
| JoePair | unknown | avalanche | n/a | 3 deployments: avalanche [`0x781655...fd755d`](./contracts/avalanche-43114/0x781655d802670bba3c89aebaaea59d3182fd755d/); avalanche `0xa389f9...e3ddb1`; avalanche `0xed8cbd...7a6256` | ⚠️ Unaudited |
| JoeRouter02 | adapter | avalanche | n/a | [`0x60ae61...0933d4`](./contracts/avalanche-43114/0x60ae616a2155ee3d9a68541ba4544862310933d4/) | ⚠️ Unaudited |
| Joetroller | unknown | avalanche | n/a | 2 deployments: avalanche [`0x1ed836...92cfcb`](./contracts/avalanche-43114/0x1ed8368ca83437dbf43e50e85e6f82342e92cfcb/); avalanche `0x8b33e8...3d99b7` | ⚠️ Unaudited |
| Joetroller | unknown | avalanche | n/a | [`0xdc1368...a1edac`](./contracts/avalanche-43114/0xdc13687554205e5b89ac783db14bb5bba4a1edac/) | ⚠️ Unaudited |
| JWrappedNativeDelegate | unknown | avalanche | n/a | [`0xc22f01...4ec29e`](./contracts/avalanche-43114/0xc22f01ddc8010ee05574028528614634684ec29e/) | ⚠️ Unaudited |
| LockingMultiRewards | unknown | arbitrum | n/a | 11 deployments: arbitrum [`0x13e17f...321b20`](./contracts/arbitrum-42161/0x13e17fd348f242ff71b9e022ce3714b139321b20/); arbitrum `0x20f2b9...39646f`; arbitrum `0x852563...4371ca`; arbitrum `0x8d476a...8c7b2b`; arbitrum `0x8d8bdf...268e90`; arbitrum `0x9512b9...6984e6`; arbitrum `0x98164d...e02d0a`; arbitrum `0x99be6b...669b5d`; arbitrum `0xd30c93...c1ba7b`; arbitrum `0xe06d95...bd73b6`; arbitrum `0xe71896...b609ad` | ⚠️ Unaudited |
| Lottery | unknown | bsc | n/a | 2 deployments: bsc [`0x4f77f3...0f362a`](./contracts/bsc-56/0x4f77f3f0b6ad0e054ed009d7105450116f0f362a/); bsc `0xf92aa8...c90ef9` | ⚠️ Unaudited |
| Lottery | unknown | bsc | n/a | 2 deployments: bsc [`0x51ae82...1a6971`](./contracts/bsc-56/0x51ae82bdbcf94eaba62d102ab439ec2bad1a6971/); bsc `0xde95ad...1bcec4` | ⚠️ Unaudited |
| LPChainlinkOracleV1 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x04a34f...3e31d6`](./contracts/avalanche-43114/0x04a34ff16f31c8d6ea7b2c4489df13caa53e31d6/); avalanche `0x279d54...6800a3` | ⚠️ Unaudited |
| LQTYStaking | unknown | ethereum | n/a | [`0x4f9fbb...fc605d`](./contracts/ethereum-1/0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d/) | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | base | n/a | 9 deployments: optimism `0x48686c...e74339`; bsc `0x41d5a0...c601af`; polygon `0xca0d86...e05533`; moonriver `0xef2dbd...4f0195`; base [`0x403595...91d262`](./contracts/base-8453/0x4035957323fc05ad9704230e3dc1e7663091d262/); arbitrum `0x957a8a...0b7090`; avalanche `0xb3a661...1b130d`; linea `0x60bbef...25a097`; blast `0xca8a20...91f018` | ⚠️ Unaudited |
| LzProxyOFTV2 | unknown | ethereum | n/a | [`0x439a5f...f83c10`](./contracts/ethereum-1/0x439a5f0f5e8d149dda9a0ca367d4a8e4d6f83c10/) | ⚠️ Unaudited |
| LzSender | unknown | avalanche | n/a | 3 deployments: avalanche [`0x0fb878...2e9be0`](./contracts/avalanche-43114/0x0fb878e8c5b66321632d4a0f348f982c872e9be0/); avalanche `0x290ba9...aadc1b`; avalanche `0xafae61...d16373` | ⚠️ Unaudited |
| MagicApe | unknown | ethereum | n/a | [`0xf35b31...97feb6`](./contracts/ethereum-1/0xf35b31b941d94b249eaded041db1b05b7097feb6/) | ⚠️ Unaudited |
| MagicGlp | unknown | avalanche | n/a | 2 deployments: avalanche [`0x5efc10...ecc2e0`](./contracts/avalanche-43114/0x5efc10c353fa30c5758037fdf0a233e971ecc2e0/); avalanche `0xde3f63...0c9198` | ⚠️ Unaudited |
| MagicGlpRewardHandler | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x41b8db...300026`](./contracts/arbitrum-42161/0x41b8dbde2d4127111fbedf31783781ae69300026/); arbitrum `0x856674...f54214` | ⚠️ Unaudited |
| MagicGlpRewardHandler | unknown | avalanche | n/a | 2 deployments: avalanche [`0x52d75b...d449d3`](./contracts/avalanche-43114/0x52d75bb25a806e247b9b849081685f9913d449d3/); avalanche `0xf4f7be...7b8596` | ⚠️ Unaudited |
| MagicInternetMoneyV1 | unknown | ethereum | n/a | [`0x99d8a9...1e17f3`](./contracts/ethereum-1/0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3/) | ⚠️ Unaudited |
| MagicLevel | unknown | bsc | n/a | 9 deployments: bsc [`0x0253db...c14e16`](./contracts/bsc-56/0x0253db0dda6c063fae1e5fb28318e6dbe1c14e16/); bsc `0x23a22b...afd309`; bsc `0x2906ae...cf0fc5`; bsc `0x6e9368...9500ef`; bsc `0x75adc3...9501b7`; bsc `0x87ac70...b8af75`; bsc `0xc094c2...cc1a39`; bsc `0xd825d0...b0e6a4`; bsc `0xd8cbd5...03993b` | ⚠️ Unaudited |
| MagicLevelHarvestor | unknown | bsc | n/a | 5 deployments: bsc [`0x35467b...806eaa`](./contracts/bsc-56/0x35467bbd152a0f4d9166e649728c101fe4806eaa/); bsc `0x418ade...a64470`; bsc `0x630fc1...819d7e`; bsc `0x640605...b76521`; bsc `0xa32d03...6fd918` | ⚠️ Unaudited |
| MagicLevelRewardHandler | unknown | bsc | n/a | 3 deployments: bsc [`0x60bbef...25a097`](./contracts/bsc-56/0x60bbefe16dc584f9af10138da1dfbb4cdf25a097/); bsc `0xaf2fbb...2d0b86`; bsc `0xba7fd9...24a582` | ⚠️ Unaudited |
| MagicLP | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2958db...6fc6bb`](./contracts/arbitrum-42161/0x2958db359d22411cdf9825f8b27f17350a6fc6bb/); arbitrum `0x8d0cd3...1fec73` | ⚠️ Unaudited |
| MagicLP | unknown | arbitrum | n/a | 5 deployments: ethereum `0x6c843d...45023a`; base `0x75097b...686074`; arbitrum [`0x522cba...8f1fad`](./contracts/arbitrum-42161/0x522cbaabb594d538f0813927b18b99f2638f1fad/); arbitrum `0x61ff8a...53253a`; linea `0xa3372c...b3b20d` | ⚠️ Unaudited |
| MagicUSD0pp | unknown | ethereum | n/a | 3 deployments: ethereum [`0x034de9...fe907a`](./contracts/ethereum-1/0x034de98226851e267c401069dcc18c2680fe907a/); ethereum `0x73075f...2c1c99`; ethereum `0xdb36f6...749963` | ⚠️ Unaudited |
| MagicUSD0ppHarvester | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x0f9af7...fb108b`](./contracts/ethereum-1/0x0f9af7168cc8819ce3066867509a7f9170fb108b/); ethereum `0x800146...ec0aab` | ⚠️ Unaudited |
| Market | unknown | base | n/a | 3 deployments: base [`0x25c27f...28e022`](./contracts/base-8453/0x25c27fb282c5d974e9b091d45f28ba5de128e022/); base `0x85e8a3...59f490`; base `0xa6247e...b3c15e` | ⚠️ Unaudited |
| MarketLens | periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x870729...3022c2`](./contracts/arbitrum-42161/0x87072985aa1a2647da7dc3fc514fc4fa093022c2/); arbitrum `0xc4ee49...48ad4d` | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | 3 deployments: bsc [`0x4e585c...0e764d`](./contracts/bsc-56/0x4e585c367dafa5db5e182a192e73f4e0900e764d/); bsc `0x73feaa...c9e24e`; bsc `0x91dc89...c3e756` | ⚠️ Unaudited |
| MasterChefJoeV2 | unknown | avalanche | n/a | [`0xd6a4f1...f53052`](./contracts/avalanche-43114/0xd6a4f121ca35509af06a0be99093d08462f53052/) | ⚠️ Unaudited |
| MasterChefJoeV3 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x188bed...c18f00`](./contracts/avalanche-43114/0x188bed1968b795d5c9022f6a0bb5931ac4c18f00/); avalanche `0x3eb4ec...6e8945` | ⚠️ Unaudited |
| MathLib | unknown | arbitrum | n/a | [`0x503d14...c13b4c`](./contracts/arbitrum-42161/0x503d141915a740f98da6c12a1156cd4decc13b4c/) | ⚠️ Unaudited |
| Maximillion | unknown | avalanche | n/a | [`0xe5cdda...7ab7e7`](./contracts/avalanche-43114/0xe5cddafd0f7af3deaf4bd213bbaee7a5927ab7e7/) | ⚠️ Unaudited |
| MintableBaseToken | unknown | arbitrum | n/a | 9 deployments: arbitrum [`0x0d0e30...0e6a4f`](./contracts/arbitrum-42161/0x0d0e30d12b54d9ef7300edba23cb34f3730e6a4f/); arbitrum `0x14ecde...817f99`; arbitrum `0x171a32...eca746`; arbitrum `0x28863d...6e3818`; arbitrum `0x352471...486921`; arbitrum `0x3ca273...24f3bc`; arbitrum `0x544a6e...dc250a`; arbitrum `0x626010...95a954`; arbitrum `0x9d8f6f...9ed515` | ⚠️ Unaudited |
| MintableBurnableUpgradeableERC20 | unknown | avalanche | n/a | [`0xd1140b...acf528`](./contracts/avalanche-43114/0xd1140b6dcf3f1a125f5cb9d87d1ab3ca46acf528/) | ⚠️ Unaudited |
| mSpellReporter | unknown | avalanche | n/a | 2 deployments: avalanche [`0xd2b62a...48cf28`](./contracts/avalanche-43114/0xd2b62aef2102c09f475b23dda6b61072e848cf28/); avalanche `0xf8beb5...de90c7` | ⚠️ Unaudited |
| MSpellStakingHub | token | arbitrum | n/a | 3 deployments: arbitrum [`0x3b9e7f...f7f764`](./contracts/arbitrum-42161/0x3b9e7f15876c45956ba5f337cb47849375f7f764/); arbitrum `0xa39cee...5ef606`; arbitrum `0xcfbe02...29e73b` | ⚠️ Unaudited |
| MSpellStakingSpoke | token | ethereum | n/a | 3 deployments: ethereum [`0x3886a6...f5f755`](./contracts/ethereum-1/0x3886a691e88f1a51918b915aa1a0dfbc9af5f755/); ethereum `0xb5980e...f65ec5`; ethereum `0xbbb3bc...39900a` | ⚠️ Unaudited |
| MultichainVerseExplore | unknown | optimism | n/a | [`0x750bfe...5db638`](./contracts/optimism-10/0x750bfe8490175c2a9a9387b19aa2aae2d75db638/) | ⚠️ Unaudited |
| MultichainVerseExplore | unknown | polygon | n/a | [`0x221050...11a0fd`](./contracts/polygon-137/0x2210502051221a600d3653eccc899eceea11a0fd/) | ⚠️ Unaudited |
| MultichainVerseExplore | unknown | arbitrum | n/a | [`0x90d5f3...f5f095`](./contracts/arbitrum-42161/0x90d5f3aa862f87598011e6ef511e4e8ed2f5f095/) | ⚠️ Unaudited |
| MultiHonor_Multichain | unknown | bsc | n/a | [`0x055008...99967b`](./contracts/bsc-56/0x0550082c40c6a04096b62116f227d110a699967b/) | ⚠️ Unaudited |
| MultiHonor_Multichain | unknown | polygon | n/a | [`0xdd98b7...d5acef`](./contracts/polygon-137/0xdd98b79b36c77ee1f23f37b61e58a61cc3d5acef/) | ⚠️ Unaudited |
| MultiRewardsClaimingHandler | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x15838e...6d7f85`](./contracts/arbitrum-42161/0x15838e7a6322a6f37d2c27628a82b9115e6d7f85/); arbitrum `0x3877ef...43a943`; arbitrum `0x46cc17...d0d32b`; arbitrum `0x766cb0...d677d3`; arbitrum `0xa40bcb...7789bd`; arbitrum `0xc699e7...3110c4` | ⚠️ Unaudited |
| MultiRewardsStaking | unknown | arbitrum | n/a | [`0x6d2070...8988cd`](./contracts/arbitrum-42161/0x6d2070b13929df15b13d96cfc509c574168988cd/) | ⚠️ Unaudited |
| MultiSigWalletWithTimeLock | governance | ethereum | n/a | [`0x8392f6...57e225`](./contracts/ethereum-1/0x8392f6669292fa56123f71949b52d883ae57e225/) | ⚠️ Unaudited |
| OFTWrapper | unknown | ethereum | n/a | 7 deployments: ethereum [`0x287176...784adc`](./contracts/ethereum-1/0x287176dfbec7e8cee0f876fc7b52960ee1784adc/); optimism [`0x287176...784adc`](./contracts/optimism-10/0x287176dfbec7e8cee0f876fc7b52960ee1784adc/); bsc [`0x287176...784adc`](./contracts/bsc-56/0x287176dfbec7e8cee0f876fc7b52960ee1784adc/); polygon `0xe1261e...6dfd4c`; moonriver [`0x287176...784adc`](./contracts/moonriver-1285/0x287176dfbec7e8cee0f876fc7b52960ee1784adc/); arbitrum [`0x287176...784adc`](./contracts/arbitrum-42161/0x287176dfbec7e8cee0f876fc7b52960ee1784adc/); avalanche [`0x287176...784adc`](./contracts/avalanche-43114/0x287176dfbec7e8cee0f876fc7b52960ee1784adc/) | ⚠️ Unaudited |
| OlympusStaking | unknown | ethereum | n/a | [`0xfd31c7...36566a`](./contracts/ethereum-1/0xfd31c7d00ca47653c6ce64af53c1571f9c36566a/) | ⚠️ Unaudited |
| OrderBook | unknown | arbitrum | n/a | [`0x09f77e...8a2acb`](./contracts/arbitrum-42161/0x09f77e8a13de9a35a7231028187e9fd5db8a2acb/) | ⚠️ Unaudited |
| PancakeFactory | registry | bsc | n/a | [`0xbcfccb...952812`](./contracts/bsc-56/0xbcfccbde45ce874adcb698cc183debcf17952812/) | ⚠️ Unaudited |
| PancakeOracle | unknown | bsc | n/a | 2 deployments: bsc [`0x4b1b0c...934cef`](./contracts/bsc-56/0x4b1b0c225944808b9017f16e9b10305faa934cef/); bsc `0x6b6354...2193be` | ⚠️ Unaudited |
| PancakeRouter | adapter | bsc | n/a | [`0x05ff2b...608c7f`](./contracts/bsc-56/0x05ff2b0db69458a0750badebc4f9e13add608c7f/) | ⚠️ Unaudited |
| PoolBridge | operational_periphery | ethereum | n/a | [`0xe66db0...1cdcb8`](./contracts/ethereum-1/0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8/) | ⚠️ Unaudited |
| PoolManagerV4 | core_logic | ethereum | n/a | [`0x6d3a38...b423de`](./contracts/ethereum-1/0x6d3a388e310aaa498430d1fe541d6d64ddb423de/) | ⚠️ Unaudited |
| PositionManager | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x6a02e6...af93b2`](./contracts/arbitrum-42161/0x6a02e6381297826cca630fc5e2d53bdbbbaf93b2/); arbitrum `0x75e42e...8a4a0c`; arbitrum `0x87a408...b1c831`; arbitrum `0x87f8dd...eec371`; arbitrum `0x956618...bc9a0f`; arbitrum `0x98a006...bf5491`; arbitrum `0xe0c6b0...e3a21b`; arbitrum `0xe11659...36ad4e` | ⚠️ Unaudited |
| PositionRouter | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x05cb7c...8cb78f`](./contracts/arbitrum-42161/0x05cb7c42890e0522264fe5ec6d84e8d7218cb78f/); arbitrum `0x338ff5...d3aead`; arbitrum `0x3d6ba3...223aba`; arbitrum `0x6fa9dc...796336`; arbitrum `0xa0bf65...e0e7e8`; arbitrum `0xb87a43...b09868` | ⚠️ Unaudited |
| PositionRouterReader | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2a74c7...802f74`](./contracts/arbitrum-42161/0x2a74c7498d42ecee75032ed41416c5fa39802f74/); arbitrum `0x346f05...3a409d` | ⚠️ Unaudited |
| PremiumHolder | unknown | bsc | n/a | 2 deployments: bsc [`0x38cb4e...741049`](./contracts/bsc-56/0x38cb4ed792c8801f8774477051dbb182d9741049/); bsc `0x491d0d...1758b7` | ⚠️ Unaudited |
| PremiumHolder | unknown | polygon | n/a | 2 deployments: polygon [`0x9a161f...aea96a`](./contracts/polygon-137/0x9a161f660053fe279e5c28d43622c480e8aea96a/); polygon `0xff3352...675c07` | ⚠️ Unaudited |
| PriceFeedTimelock | operational_periphery | arbitrum | n/a | [`0x7b1ffd...d43a8b`](./contracts/arbitrum-42161/0x7b1ffddeec3c4797079c7ed91057e399e9d43a8b/) | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | avalanche | n/a | [`0x99f873...ec2bd3`](./contracts/avalanche-43114/0x99f873a8e3e21ccf3e9b691f02fc86a6a2ec2bd3/) | ⚠️ Unaudited |
| PrivateMultiRewardsStaking | unknown | arbitrum | n/a | 14 deployments: arbitrum [`0x18f7cc...d32d31`](./contracts/arbitrum-42161/0x18f7cca3d98ad96cf26dbda1db3fd71e30d32d31/); arbitrum `0x366ac6...e9f18b`; arbitrum `0x3bf887...f56836`; arbitrum `0x5b51f2...17e263`; arbitrum `0x8fac04...111482`; arbitrum `0xa2af3e...e8128e`; arbitrum `0xa5e1a7...d31ba6`; arbitrum `0xa7940d...01c295`; arbitrum `0xaf4fdc...1a74cb`; arbitrum `0xc35553...149718`; arbitrum `0xe5e501...3888ec`; arbitrum `0xe6f823...9017e7`; arbitrum `0xeb0dea...8c5680`; arbitrum `0xf9398c...8c7eea` | ⚠️ Unaudited |
| PrivateRouter | adapter | blast | n/a | 6 deployments: ethereum `0x9b6f6c...d7ad51`; base `0x635693...e7d3be`; arbitrum `0xe046ac...482bed`; linea `0xaf2fbb...2d0b86`; blast [`0x19c08f...7d0fd7`](./contracts/blast-81457/0x19c08f59c4d75407652a6a970078e79d117d0fd7/); blast `0xa98973...0a63ac` | ⚠️ Unaudited |
| PrivilegedCauldronV4 | unknown | ethereum | n/a | 7 deployments: ethereum [`0x406b89...374352`](./contracts/ethereum-1/0x406b89138782851d3a8c04c743b010ceb0374352/); ethereum `0x40d95c...5b87a3`; ethereum `0x6bcd99...45cda2`; ethereum `0x85f60d...25c405`; ethereum `0xc6d3b8...0dc20d`; ethereum `0xce450a...30865b`; ethereum `0xed5106...760e09` | ⚠️ Unaudited |
| PrivilegedCheckpointCauldronV4 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x289424...b134ed`](./contracts/ethereum-1/0x289424add4a1a503870eb475fd8bf1d586b134ed/); ethereum `0x46f54d...9ff82c` | ⚠️ Unaudited |
| ProxyAdmin | unknown | avalanche | n/a | 19 deployments: ethereum `0x1ac267...5757a1`; bsc `0x3b2ebf...49fd9b`; bsc `0x4454b2...cacdf7`; bsc `0x614f4f...29d620`; bsc `0x65ac89...6d58d4`; bsc `0x9f4d0b...bfcf37`; bsc `0xc65d11...b2565f`; bsc `0xde8df7...130a3f`; bsc `0xdec64d...a6a384`; bsc `0xe70b67...b685d5`; bsc `0xf58c65...a52e79`; bsc `0xfef7e2...32e973`; polygon `0xe7e22a...64c75e`; arbitrum `0x5db54b...3dd797`; arbitrum `0x90da0a...46d379`; arbitrum `0xee5ff6...820580`; arbitrum `0xf762bc...4de4cf`; arbitrum `0xff11d8...ed448f`; avalanche [`0x1035b0...c3d784`](./contracts/avalanche-43114/0x1035b0c31d92d5a8cd9efcc9ed240aaa64c3d784/) | ⚠️ Unaudited |
| Reader | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x22199a...cae489`](./contracts/arbitrum-42161/0x22199a49a999c351ef7927602cfb187ec3cae489/); arbitrum `0x22e199...215632`; arbitrum `0x2b43c9...c37694`; arbitrum `0x48de3d...abeaa6`; arbitrum `0xa49f3a...b2871a` | ⚠️ Unaudited |
| ReferralStorage | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2249d0...923392`](./contracts/arbitrum-42161/0x2249d006a8ccdf4c99aa6c8b9502a2aecc923392/); arbitrum `0xe6fab3...06e99d` | ⚠️ Unaudited |
| RevertingToken | token | arbitrum | n/a | 2 deployments: arbitrum [`0x1aa92d...a0d3e0`](./contracts/arbitrum-42161/0x1aa92da659e914982975f8f109a05be904a0d3e0/); arbitrum `0xa9ada7...096270` | ⚠️ Unaudited |
| RewardDistributor | unknown | bsc | n/a | 20 deployments: bsc [`0x103f7d...be426e`](./contracts/bsc-56/0x103f7d014f46c6bcb9f86217c36368a08abe426e/); bsc `0x5b3842...92d153`; bsc `0xb20b24...4f5648`; bsc `0xbdd3c3...f6545e`; arbitrum `0x1de098...4f5554`; arbitrum `0x1fdc87...0de955`; arbitrum `0x23208b...94f193`; arbitrum `0x2b35cc...6f13d5`; arbitrum `0x5c04a1...90150d`; arbitrum `0x60519b...203b34`; arbitrum `0x6a05ab...2552ee`; arbitrum `0x986b4e...7f43aa`; arbitrum `0x9c99e6...384b9b`; arbitrum `0xa7f810...6cb229`; arbitrum `0xc64347...dd9efc`; arbitrum `0xdeea5f...dddf02`; avalanche `0x227449...a14885`; avalanche `0x45b2c4...420324`; avalanche `0x7dcdb8...ec03b6`; avalanche `0xe72438...4d3f99` | ⚠️ Unaudited |
| RewardManager | unknown | arbitrum | n/a | [`0xb9fcd5...728d65`](./contracts/arbitrum-42161/0xb9fcd526e11aa577591d776baa051dc335728d65/) | ⚠️ Unaudited |
| RewardPortal | unknown | bsc | n/a | 2 deployments: bsc [`0xba48da...8c1a97`](./contracts/bsc-56/0xba48da3f26c10de8b243e621ffe379ee788c1a97/); bsc `0xc8f67d...cd436a` | ⚠️ Unaudited |
| RewardRouter | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xc73d55...980fba`](./contracts/arbitrum-42161/0xc73d553473dc65ce56db96c58e6a091c20980fba/); arbitrum `0xea7fcb...3402ea` | ⚠️ Unaudited |
| RewardRouterV2 | adapter | arbitrum | n/a | 4 deployments: arbitrum [`0x159854...a3ce9b`](./contracts/arbitrum-42161/0x159854e14a862df9e39e1d128b8e5f70b4a3ce9b/); arbitrum `0x5e4766...5694a1`; arbitrum `0xa906f3...f8d8f1`; arbitrum `0xb95db5...d271f5` | ⚠️ Unaudited |
| RewardTracker | unknown | arbitrum | n/a | 16 deployments: arbitrum [`0x0755d3...1e5e93`](./contracts/arbitrum-42161/0x0755d33e45ed2b874c9ebf5b279023c8bd1e5e93/); arbitrum `0x0a22fe...be964b`; arbitrum `0x1addd8...4c8903`; arbitrum `0x4292a8...f35e87`; arbitrum `0x4d268a...3fea13`; arbitrum `0x4e971a...5400b6`; arbitrum `0x5707df...134aee`; arbitrum `0x72b0d6...5abe21`; arbitrum `0x735007...4e5816`; arbitrum `0x8087a3...4a26d2`; arbitrum `0x908c4d...c59dd4`; arbitrum `0xa40baa...1c33d7`; arbitrum `0xb14b49...5f2a95`; arbitrum `0xb27b0a...fed453`; arbitrum `0xbb3cd5...7a912e`; arbitrum `0xd2d116...2a728f` | ⚠️ Unaudited |
| RodeoCaller | unknown | arbitrum | n/a | [`0xa6f958...94fc14`](./contracts/arbitrum-42161/0xa6f9581d3a77dbe3df78d3b048756ab0d294fc14/) | ⚠️ Unaudited |
| RodeoMigrator | unknown | arbitrum | n/a | [`0xb34891...a5ed9e`](./contracts/arbitrum-42161/0xb34891fac221f335131d1b6cd8c883d107a5ed9e/) | ⚠️ Unaudited |
| ShortsTracker | unknown | arbitrum | n/a | [`0xf58eec...d434da`](./contracts/arbitrum-42161/0xf58eec83ba28ddd79390b9e90c4d3ebff1d434da/) | ⚠️ Unaudited |
| ShortsTrackerTimelock | governance | arbitrum | n/a | [`0x79b6ee...5c6c2a`](./contracts/arbitrum-42161/0x79b6ee65fc1466b5fd95e20650df740c085c6c2a/) | ⚠️ Unaudited |
| SikobaToken | token | ethereum | n/a | [`0x6b4008...f81765`](./contracts/ethereum-1/0x6b40089e6cba08696d9ae48f38e2b06faff81765/) | ⚠️ Unaudited |
| SimpleWithdrawer | unknown | ethereum | n/a | [`0x24a1a1...608b48`](./contracts/ethereum-1/0x24a1a1cb198f0d3ee9d86b4bd4d3f89358608b48/) | ⚠️ Unaudited |
| SmartChef | unknown | bsc | n/a | 4 deployments: bsc [`0x0c3d68...8e4528`](./contracts/bsc-56/0x0c3d6892aa3b23811af3bd1bbea8b0740e8e4528/); bsc `0x2dcf4c...5b66cf`; bsc `0xa5137e...30964e`; bsc `0xce54ba...dd8d9a` | ⚠️ Unaudited |
| SolidlyGaugeVolatileLPStrategy | operational_periphery | optimism | n/a | [`0xa3372c...b3b20d`](./contracts/optimism-10/0xa3372cd2178c52fdcb1f6e4c4e93014b4db3b20d/) | ⚠️ Unaudited |
| SolidlyLpWrapper | unknown | optimism | n/a | [`0x6eb170...297c04`](./contracts/optimism-10/0x6eb1709e0b562097bf1cc48bc6a378446c297c04/) | ⚠️ Unaudited |
| sOlympus | unknown | ethereum | n/a | [`0x04f269...52111f`](./contracts/ethereum-1/0x04f2694c8fcee23e8fd0dfea1d4f5bb8c352111f/) | ⚠️ Unaudited |
| SpellPowerStaking | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x196b73...448ca1`](./contracts/arbitrum-42161/0x196b73a33f10bc839de082ccf799027190448ca1/); arbitrum `0x3b6bbc...8cb34f`; arbitrum `0x609f4c...42fd72`; arbitrum `0x8b8718...68b884`; arbitrum `0x9961bf...f9fc02`; arbitrum `0xa5901a...72397e`; arbitrum `0xe0f829...45abd6`; arbitrum `0xfa9956...9ce385` | ⚠️ Unaudited |
| sSpellV1 | unknown | ethereum | n/a | [`0x26fa3f...a106a9`](./contracts/ethereum-1/0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9/) | ⚠️ Unaudited |
| StabilizeCaller | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x8299ba...7d53df`](./contracts/arbitrum-42161/0x8299baba76ae944ffbcea6525aaacb3c1e7d53df/); arbitrum `0xca69e8...f6067c` | ⚠️ Unaudited |
| StabilizeMigrator | unknown | arbitrum | n/a | [`0xad8b9d...5380a9`](./contracts/arbitrum-42161/0xad8b9d2abea3ec3abdaf793b93c7467b525380a9/) | ⚠️ Unaudited |
| StakedGlp | token | arbitrum | n/a | 2 deployments: arbitrum [`0x2f546a...3e89ae`](./contracts/arbitrum-42161/0x2f546ad4edd93b956c8999be404cdcafde3e89ae/); arbitrum `0x5402b5...0cffdf` | ⚠️ Unaudited |
| StakedGlpMigrator | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0xb63366...aba240`](./contracts/arbitrum-42161/0xb6336626c56d72ea501b6d14d1abd356c8aba240/); arbitrum `0xe19ab1...0b382c`; arbitrum `0xe469f6...39256c` | ⚠️ Unaudited |
| StakeManager | unknown | arbitrum | n/a | [`0xe547ca...d02fd2`](./contracts/arbitrum-42161/0xe547cadbe081749e5b3dc53cb792dfaea2d02fd2/) | ⚠️ Unaudited |
| StakingHelper | periphery | ethereum | n/a | [`0xc8c436...7a612d`](./contracts/ethereum-1/0xc8c436271f9a6f10a5b80c8b8ed7d0e8f37a612d/) | ⚠️ Unaudited |
| StakingPools | core_logic | ethereum | n/a | [`0xab8e74...d7deca`](./contracts/ethereum-1/0xab8e74017a8cc7c15ffccd726603790d26d7deca/) | ⚠️ Unaudited |
| stdeUSD | unknown | ethereum | n/a | [`0x5c5b19...198326`](./contracts/ethereum-1/0x5c5b196abe0d54485975d1ec29617d42d9198326/) | ⚠️ Unaudited |
| SubaccountRouter | unknown | arbitrum | n/a | [`0x3c48a9...1efa44`](./contracts/arbitrum-42161/0x3c48a997ef5badef5c07780342af0f7ed71efa44/) | ⚠️ Unaudited |
| SushiBar | unknown | ethereum | n/a | [`0x879824...ff4272`](./contracts/ethereum-1/0x8798249c2e607446efb7ad49ec89dd1865ff4272/) | ⚠️ Unaudited |
| SyrupBar | unknown | bsc | n/a | [`0x009cf7...cea9b0`](./contracts/bsc-56/0x009cf7bc57584b7998236eff51b98a168dcea9b0/) | ⚠️ Unaudited |
| TestForMelen | unknown | ethereum | n/a | [`0x09f5e0...878679`](./contracts/ethereum-1/0x09f5e032aae0d6b693db30b2a3daccf2fb878679/) | ⚠️ Unaudited |
| TestForMelen2 | unknown | ethereum | n/a | [`0x1bc998...8074cc`](./contracts/ethereum-1/0x1bc998bf2e25ea49b212b9db35491047c28074cc/) | ⚠️ Unaudited |
| Timelock | governance | arbitrum | n/a | 7 deployments: arbitrum [`0x09fec9...240126`](./contracts/arbitrum-42161/0x09fec993be76230296ce8c3b8edafd32b6240126/); arbitrum `0x460e1a...82bc6e`; arbitrum `0x5cf5e6...615f42`; arbitrum `0x9fd825...fdaa44`; arbitrum `0xaa50bd...b6a597`; arbitrum `0xe7e740...cf4858`; arbitrum `0xf3cf3d...7b2350` | ⚠️ Unaudited |
| TimeToken | token | ethereum | n/a | [`0x869d1b...ae8917`](./contracts/ethereum-1/0x869d1b8610c038a6c4f37bd757135d4c29ae8917/) | ⚠️ Unaudited |
| TokenLocker | token | arbitrum | n/a | 4 deployments: arbitrum [`0x1092b0...acd674`](./contracts/arbitrum-42161/0x1092b0c039f51297ccc9d9c861a2f9a18facd674/); arbitrum `0x18168e...0c8c62`; arbitrum `0x882d37...58419b`; arbitrum `0xf6a75b...b481c3` | ⚠️ Unaudited |
| TokenManager | governance | arbitrum | n/a | [`0xdddc54...5ea96a`](./contracts/arbitrum-42161/0xdddc546e07f1374a07b270b7d863371e575ea96a/) | ⚠️ Unaudited |
| TokenMintERC20Token | token | ethereum | n/a | [`0x95ad61...64c4ce`](./contracts/ethereum-1/0x95ad61b0a150d79219dcf64e1e6cc01f0b64c4ce/) | ⚠️ Unaudited |
| TokenVesting | unknown | avalanche | n/a | 126 deployments: avalanche [`0x0147c0...0ef296`](./contracts/avalanche-43114/0x0147c0212ca4aba29d26dffd3c800893080ef296/); avalanche `0x01b269...2145e3`; avalanche `0x02d632...cab641`; avalanche `0x0473f2...2465a9`; avalanche `0x0584e6...2fd302`; avalanche `0x072c47...6f97f6`; avalanche `0x076917...72cd75`; avalanche `0x089ec7...c22dcc`; avalanche `0x0a3b77...972c0e`; avalanche `0x0a64e8...3b0d7b`; avalanche `0x0cc47a...66a557`; avalanche `0x0f9e96...06e27b`; avalanche `0x0fb72b...faf162`; avalanche `0x0fefca...fb54b0`; avalanche `0x10f672...cb5029`; avalanche `0x123780...dfb337`; avalanche `0x132492...ce10d3`; avalanche `0x14d458...664301`; avalanche `0x14f28f...36e08a`; avalanche `0x156539...0feae4`; avalanche `0x16f419...8ed79e`; avalanche `0x1771ba...dba954`; avalanche `0x1a7727...4c30a9`; avalanche `0x1b2d91...9b440c`; avalanche `0x1fcfde...5501ad`; avalanche `0x23eb41...18f628`; avalanche `0x25dd4a...29d7cc`; avalanche `0x2a834d...086401`; avalanche `0x2aa5ee...75d2da`; avalanche `0x2cd215...1de38b`; avalanche `0x2d92ee...e048eb`; avalanche `0x31ba32...d859ce`; avalanche `0x357211...f67b1c`; avalanche `0x386fbf...122329`; avalanche `0x3c3246...0354ec`; avalanche `0x3c9211...d7b5d9`; avalanche `0x3cb560...eaad04`; avalanche `0x3ccfc1...2f8e24`; avalanche `0x3dca53...a60a63`; avalanche `0x3e6125...01acd1`; avalanche `0x3e9263...ff864d`; avalanche `0x43feff...682414`; avalanche `0x444d68...6890fe`; avalanche `0x45acb6...587d87`; avalanche `0x4d0b73...377313`; avalanche `0x4e931f...112538`; avalanche `0x52d69a...5ea435`; avalanche `0x5410c2...e4c118`; avalanche `0x5caaf1...006e22`; avalanche `0x5d57f6...899c7c`; avalanche `0x5da155...5405ca`; avalanche `0x5f0902...865095`; avalanche `0x5fe9ad...5ec7ec`; avalanche `0x61ecdb...ff90e2`; avalanche `0x627237...7e9f80`; avalanche `0x650967...76f430`; avalanche `0x66b145...f3142d`; avalanche `0x66fa31...7efb63`; avalanche `0x670968...198eec`; avalanche `0x68b28f...264bff`; avalanche `0x6af7e2...eec3a5`; avalanche `0x6baa88...3a4db8`; avalanche `0x6d3431...368edb`; avalanche `0x6ee70b...031ec7`; avalanche `0x703473...b96460`; avalanche `0x70466e...ad27cc`; avalanche `0x70a5e4...be307b`; avalanche `0x70f7d4...5ac7da`; avalanche `0x73cd07...6e9ca0`; avalanche `0x763dc8...e64864`; avalanche `0x76eaa1...f63008`; avalanche `0x770b6e...b264f3`; avalanche `0x7a609a...dc490e`; avalanche `0x7d0a30...311326`; avalanche `0x7e4d8a...31c1d4`; avalanche `0x7e9499...22063f`; avalanche `0x7ef4e0...b975e0`; avalanche `0x7fa453...bcb6fe`; avalanche `0x810998...cbf66d`; avalanche `0x815cbe...a2c9ee`; avalanche `0x81a003...98237e`; avalanche `0x8637eb...08636d`; avalanche `0x868848...43cc3b`; avalanche `0x872f15...f8030f`; avalanche `0x895a53...1c02e7`; avalanche `0x8b58a5...662afc`; avalanche `0x90bbc3...1f6fce`; avalanche `0x927be1...50848b`; avalanche `0x948cf2...566e8f`; avalanche `0x952d82...56d57e`; avalanche `0x96a6b2...c20718`; avalanche `0x971156...997c50`; avalanche `0x99727c...f4e01e`; avalanche `0x9b711b...f3bc5c`; avalanche `0x9c5b9e...0e135d`; avalanche `0x9eb54a...793200`; avalanche `0x9f8c00...b7c983`; avalanche `0x9fcb6b...63fa1c`; avalanche `0xa526c8...419d97`; avalanche `0xafb2aa...c7fe8b`; avalanche `0xb2d98a...191cf1`; avalanche `0xb31a19...0dfec0`; avalanche `0xb3d05b...b8a30e`; avalanche `0xb7b46f...693e26`; avalanche `0xb864ba...3d274e`; avalanche `0xc3e997...2b3429`; avalanche `0xc6001b...669249`; avalanche `0xc698d4...74673c`; avalanche `0xcbaf30...c15965`; avalanche `0xcdac33...30fbeb`; avalanche `0xd60366...fa5360`; avalanche `0xdc0d42...a187a7`; avalanche `0xddf06d...a4fd9d`; avalanche `0xde8cb3...79d652`; avalanche `0xdf1339...ef8fe7`; avalanche `0xdf781b...242aa4`; avalanche `0xe5ba4d...cd298b`; avalanche `0xea347e...d6d0c3`; avalanche `0xec8184...dd7d1a`; avalanche `0xf19c35...ecb452`; avalanche `0xf2eb59...734279`; avalanche `0xfa4329...6abf9b`; avalanche `0xfa4ceb...0a1846`; avalanche `0xfb0586...1a3fe9`; avalanche `0xfc22e8...d56a25`; avalanche `0xfc2f38...747bbb` | ⚠️ Unaudited |
| Transmuter | unknown | ethereum | n/a | [`0xab7a49...122086`](./contracts/ethereum-1/0xab7a49b971afdc7ee26255038c82b4006d122086/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x06661a...486a2e`](./contracts/bsc-56/0x06661a6a4ea0f347b5e02e74017533270f486a2e/); bsc `0x83151a...3d1b81` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x7bd870...6579ea`](./contracts/bsc-56/0x7bd870ffde7e5ad4b2f9837c96ca62d2e86579ea/); bsc `0xbdd021...947810` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x7eae7a...c7ca0f`](./contracts/bsc-56/0x7eae7aad55ec66ff3c5a4fec21820c14e4c7ca0f/); bsc `0xba09e5...0daf83` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1313bb...b51d9f`](./contracts/arbitrum-42161/0x1313bbf677e8fda5284f714f9c743a55a8b51d9f/); arbitrum `0x952a6d...300e58` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x29f86a...3f7ca5`](./contracts/arbitrum-42161/0x29f86a78551fac44217a8763a45540027c3f7ca5/); avalanche `0x2f4391...bb5140`; avalanche `0x592f70...419f37` | ⚠️ Unaudited |
| TreasuryLend | operational_periphery | ethereum | n/a | [`0x04dd97...bd207f`](./contracts/ethereum-1/0x04dd97255ddee29c941d85f5b5cde6ace8bd207f/) | ⚠️ Unaudited |
| TreasuryManager | operational_periphery | ethereum | n/a | [`0xeb8121...6de6b3`](./contracts/ethereum-1/0xeb8121b44a290ee16981d87b92fc16b2366de6b3/) | ⚠️ Unaudited |
| TreasurySwap | operational_periphery | ethereum | n/a | [`0xa25b17...e74316`](./contracts/ethereum-1/0xa25b17d7deee59f9e326e45cc3c0c1b158e74316/) | ⚠️ Unaudited |
| TroveManager | governance | ethereum | n/a | [`0xa39739...cf4bb2`](./contracts/ethereum-1/0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2/) | ⚠️ Unaudited |
| Unipool | core_logic | ethereum | n/a | [`0xd37a77...bdf0d5`](./contracts/ethereum-1/0xd37a77e71ddf3373a79be2ebb76b6c4808bdf0d5/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | avalanche | n/a | [`0xcbb424...f62339`](./contracts/avalanche-43114/0xcbb424fd93cdec0ef330d8a8c985e8b147f62339/) | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | arbitrum | n/a | [`0xded882...626341`](./contracts/arbitrum-42161/0xded8823234e28f18a824abe4f64fa7863b626341/) | ⚠️ Unaudited |
| UpgradeProxy | unknown | bsc | n/a | [`0x8d8f5a...58faa6`](./contracts/bsc-56/0x8d8f5a44d92d3cff40806548d204ffe90e58faa6/) | ⚠️ Unaudited |
| UsdcAvaxLPOracle | unknown | avalanche | n/a | [`0xef9c97...15d70b`](./contracts/avalanche-43114/0xef9c97e356bc5ff2460e25f40f608101ce15d70b/) | ⚠️ Unaudited |
| UsdcAvaxOracleV1 | unknown | avalanche | n/a | [`0x08b918...63ef63`](./contracts/avalanche-43114/0x08b918dd18e087893bb9d711d9e0bbaa7a63ef63/) | ⚠️ Unaudited |
| Utilities | unknown | ethereum | n/a | [`0xf37c41...64b503`](./contracts/ethereum-1/0xf37c41ef2281893b5971769370d6cdd35864b503/) | ⚠️ Unaudited |
| ValueRouter | unknown | optimism | n/a | [`0x650af5...504b76`](./contracts/optimism-10/0x650af55d5877f289837c30b94af91538a7504b76/) | ⚠️ Unaudited |
| ValueRouterImpl | unknown | optimism | n/a | [`0x546d10...01c386`](./contracts/optimism-10/0x546d10c1378febef063b72ae4865496ad801c386/) | ⚠️ Unaudited |
| Vault | core_logic | arbitrum | n/a | [`0x489ee0...097c4a`](./contracts/arbitrum-42161/0x489ee077994b6658eafa855c308275ead8097c4a/) | ⚠️ Unaudited |
| VaultErrorController | unknown | arbitrum | n/a | [`0xe56d2e...afd93a`](./contracts/arbitrum-42161/0xe56d2e4c685e67c866c292b583be732068afd93a/) | ⚠️ Unaudited |
| VeJoeStaking | unknown | avalanche | n/a | 2 deployments: avalanche [`0x4b4e08...7fbc17`](./contracts/avalanche-43114/0x4b4e0888091fb1de74a7e7404b2dc4eb897fbc17/); avalanche `0xdefdbe...e4e933` | ⚠️ Unaudited |
| Vester | operational_periphery | arbitrum | n/a | 6 deployments: arbitrum [`0x199070...363004`](./contracts/arbitrum-42161/0x199070ddfd1cfb69173aa2f7e20906f26b363004/); arbitrum `0x218861...0e4bd4`; arbitrum `0x7c100c...df49b2`; arbitrum `0x886078...999c49`; arbitrum `0xa75287...72042e`; arbitrum `0xaac9fa...d509e2` | ⚠️ Unaudited |
| VesterCap | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x57866d...789b60`](./contracts/arbitrum-42161/0x57866d65acbb7ba3269807bf7af4019366789b60/); arbitrum `0x6c507b...f62696` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 23 deployments: ethereum [`0x1635b5...5846c3`](./contracts/ethereum-1/0x1635b506a88fbf428465ad65d00e8d6b6e5846c3/); ethereum `0x27b7b1...6f07d7`; ethereum `0x2f50d5...5846bb`; ethereum `0x575ccd...318e2c`; ethereum `0x5f18c7...b973a9`; ethereum `0x5f3b5d...94e2a2`; ethereum `0x5faf6a...e52d8e`; ethereum `0x64e3c2...ac041d`; ethereum `0x6c3f90...e6e490`; ethereum `0x705350...55410f`; ethereum `0x7ca5b0...1d7575`; ethereum `0x7da96a...8d87a7`; ethereum `0x807819...b6abf3`; ethereum `0xa258c4...4d168c`; ethereum `0xa90996...857849`; ethereum `0xa9fe46...2f5b28`; ethereum `0xb1f2cd...202cac`; ethereum `0xbc89cd...ca8f53`; ethereum `0xd061d6...c2fce0`; ethereum `0xd533a9...34cd52`; ethereum `0xda8164...970c95`; ethereum `0xdcd90c...0b4325`; ethereum `0xe14d13...097db1` | ⚠️ Unaudited |
| WAVAX | unknown | avalanche | n/a | [`0xb31f66...fd66c7`](./contracts/avalanche-43114/0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7/) | ⚠️ Unaudited |
| WBNB | unknown | bsc | n/a | [`0xbb4cdb...bc095c`](./contracts/bsc-56/0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c/) | ⚠️ Unaudited |
| WBTC | token | ethereum | n/a | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |
| WETH9 | token | ethereum | n/a | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |
| WETHRebasing | token | blast | n/a | [`0x430000...000004`](./contracts/blast-81457/0x4300000000000000000000000000000000000004/) | ⚠️ Unaudited |
| WhitelistedCauldronV3 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x53375a...60a9a6`](./contracts/ethereum-1/0x53375add9d2dfe19398ed65baaeffe622760a9a6/); avalanche `0xe9c057...2d04ff` | ⚠️ Unaudited |
| WhitelistedCauldronV4 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1062eb...495b72`](./contracts/ethereum-1/0x1062eb452f8c7a94276437ec1f4aaca9b1495b72/); ethereum `0xf75edb...614e46` | ⚠️ Unaudited |
| WhitelistedCheckpointCauldronV4 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x333e28...a3b5e8`](./contracts/ethereum-1/0x333e28e557dc026518e25d1d426c4407a0a3b5e8/); ethereum `0x42bb6d...de3e92` | ⚠️ Unaudited |
| wMEMO | unknown | avalanche | n/a | [`0x0da672...e5bb3b`](./contracts/avalanche-43114/0x0da67235dd5787d67955420c84ca1cecd4e5bb3b/) | ⚠️ Unaudited |
| wMEMOLevSwapper | unknown | avalanche | n/a | [`0x3fc446...a28edd`](./contracts/avalanche-43114/0x3fc4468d3e9c63b83c341307193190b7b5a28edd/) | ⚠️ Unaudited |
| wMemoOracle | unknown | avalanche | n/a | 3 deployments: avalanche [`0x26fa3f...a106a9`](./contracts/avalanche-43114/0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9/); avalanche `0x4c56db...c07e17`; avalanche `0x99d8a9...1e17f3` | ⚠️ Unaudited |
| wMEMOSwapper | unknown | avalanche | n/a | 2 deployments: avalanche [`0x1df188...dd9e51`](./contracts/avalanche-43114/0x1df188958a8674b5177f77667b8d173c3cdd9e51/); avalanche `0x469a99...c0b3d3` | ⚠️ Unaudited |
| wOHM | unknown | ethereum | n/a | [`0xca7654...8e3e65`](./contracts/ethereum-1/0xca76543cf381ebbb277be79574059e32108e3e65/) | ⚠️ Unaudited |
| wOHMTWAPOracleV1 | unknown | ethereum | n/a | [`0x261e76...b1a6cb`](./contracts/ethereum-1/0x261e769d52165379834080ec4c80070f6eb1a6cb/) | ⚠️ Unaudited |
| WrappedLuna | unknown | ethereum | n/a | [`0xd28777...c91ea9`](./contracts/ethereum-1/0xd2877702675e6ceb975b4a1dff9fb7baf4c91ea9/) | ⚠️ Unaudited |
| WrappedmAAPL | unknown | ethereum | n/a | [`0xd36932...d15a84`](./contracts/ethereum-1/0xd36932143f6ebdedd872d5fb0651f4b72fd15a84/) | ⚠️ Unaudited |
| WrappedmAMZN | unknown | ethereum | n/a | [`0x0cae9e...b9caa7`](./contracts/ethereum-1/0x0cae9e4d663793c2a2a0b211c1cf4bbca2b9caa7/) | ⚠️ Unaudited |
| WrappedmBABA | unknown | ethereum | n/a | [`0x56aa29...c0af72`](./contracts/ethereum-1/0x56aa298a19c93c6801fdde870fa63ef75cc0af72/) | ⚠️ Unaudited |
| WrappedmGOOGL | unknown | ethereum | n/a | [`0x59a921...653442`](./contracts/ethereum-1/0x59a921db27dd6d4d974745b7ffc5c33932653442/) | ⚠️ Unaudited |
| WrappedmIAU | unknown | ethereum | n/a | [`0x1d3504...91f373`](./contracts/ethereum-1/0x1d350417d9787e000cc1b95d70e9536dcd91f373/) | ⚠️ Unaudited |
| WrappedMIR | unknown | ethereum | n/a | [`0x09a3ec...f2e608`](./contracts/ethereum-1/0x09a3ecafa817268f77be1283176b946c4ff2e608/) | ⚠️ Unaudited |
| WrappedmMSFT | unknown | ethereum | n/a | [`0x41bbed...852bd7`](./contracts/ethereum-1/0x41bbedd7286daab5910a1f15d12cbda839852bd7/) | ⚠️ Unaudited |
| WrappedmNFLX | unknown | ethereum | n/a | [`0xc8d674...0f9dcd`](./contracts/ethereum-1/0xc8d674114bac90148d11d3c1d33c61835a0f9dcd/) | ⚠️ Unaudited |
| WrappedmQQQ | unknown | ethereum | n/a | [`0x13b02c...f57d15`](./contracts/ethereum-1/0x13b02c8de71680e71f0820c996e4be43c2f57d15/) | ⚠️ Unaudited |
| WrappedmSLV | unknown | ethereum | n/a | [`0x9d1555...166676`](./contracts/ethereum-1/0x9d1555d8cb3c846bb4f7d5b1b1080872c3166676/) | ⚠️ Unaudited |
| WrappedmTSLA | unknown | ethereum | n/a | [`0x21ca39...66fd63`](./contracts/ethereum-1/0x21ca39943e91d704678f5d00b6616650f066fd63/) | ⚠️ Unaudited |
| WrappedmTWTR | unknown | ethereum | n/a | [`0xedb041...78cca9`](./contracts/ethereum-1/0xedb0414627e6f1e3f082de65cd4f9c693d78cca9/) | ⚠️ Unaudited |
| WrappedmUSO | unknown | ethereum | n/a | [`0x31c631...356991`](./contracts/ethereum-1/0x31c63146a635eb7465e5853020b39713ac356991/) | ⚠️ Unaudited |
| WrappedmVIXY | unknown | ethereum | n/a | [`0xf72fcd...33fc86`](./contracts/ethereum-1/0xf72fcd9dcf0190923fadd44811e240ef4533fc86/) | ⚠️ Unaudited |
| WrappedSDT | unknown | ethereum | n/a | [`0x676ad1...f39ee5`](./contracts/ethereum-1/0x676ad1b33ae6423c6618c1aecf53baa29cf39ee5/) | ⚠️ Unaudited |
| WrappedUST | unknown | ethereum | n/a | [`0xa47c8b...661acd`](./contracts/ethereum-1/0xa47c8bf37f92abed4a126bda807a7b7498661acd/) | ⚠️ Unaudited |
| xJoeOracle | unknown | avalanche | n/a | [`0xf33eb6...1d2d85`](./contracts/avalanche-43114/0xf33eb640773827afbbb886fa2d60b071d51d2d85/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (485)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0cbd55...390940` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d126c...c00c60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d64d8...50fbd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x102560...5df38b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x127f3c...a9199b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x156ff0...120474` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15f73a...6f5605` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x183739...a98908` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a938e...1cb854` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ff103...26f4da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20826b...363058` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20bdda...9a55b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x230557...37b15e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c6f75...35b507` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ff889...b8854d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31d687...cda740` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31edd3...112560` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x335926...f90c3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33a344...0a7efa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x362b56...9dfce6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x384c53...293036` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x398e2a...0aac3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ad977...98f8a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bd1ee...3ca5af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x402fa0...2584b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x411ea3...9e93b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x450bb6...2ac541` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46695c...003ee7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x471208...0a8732` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c209a...223d28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c3c27...f3964b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c9ad5...1c9acd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x518543...d0342a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56de9e...fa51a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x577060...48fa7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58b49e...72e1a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b4997...5c76c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b4ba4...789c09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x625fe7...74bd61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68d9b8...1dc806` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b04c5...3dacb6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76d8a5...b14646` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x780db9...d0c320` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c11f7...6b9a77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7cf03c...55ea3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d3701...6b4877` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84f162...cbf197` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x897c79...ebc249` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89f800...389aa3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b00a8...af293b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8cbd1d...aeed7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92ab2e...1e0c79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92bfd0...fb3e9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9427e7...df3587` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9843e5...bd50ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98bc79...4cf142` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d01d5...09618d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e978e...73fdd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f4ef8...57df75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f6de3...1f2423` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fcb31...35be6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ff8b4...e94831` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa71a6c...905627` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa72062...df4677` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa766e8...bfd086` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb13352...e3a00f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc61d91...f4a581` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc692b1...5530da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc77841...0cd5ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc79486...05af78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc882b9...2b0d9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbc21c...efe931` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xccf7e3...f4805d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3f3c5...8a8a89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd59619...a730f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6eaa2...a68e1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe81930...a59891` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed27b3...566e38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef0594...5e8173` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf50db8...785f99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf570ad...147b36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf68393...8fbf14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf85903...287c11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf88cbc...c08ff4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfce0b2...13f71f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff0eb5...489010` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x12ea78...9f3e98` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2b95bf...b79676` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x38091a...0a584a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3eb5fc...fe7e93` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x60bbef...25a097` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x789004...f0c952` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8176c5...b59982` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x84ec15...28bce0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x86e761...bd385b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8cbc6f...d61ddc` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x93503a...2e3409` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa384bc...0f4e0b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xab4186...4a626b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb0da6e...b5ed2b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb2c3a9...ba48f4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcceaed...8df8a9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd076f5...75dc49` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd825d0...b0e6a4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd96ddb...fffb4b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xdd3b80...c9429a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xebf1f9...c92861` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xef2dbd...4f0195` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf675bb...3b3d87` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x01ff59...b66d91` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x02bc4c...8330f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x040bec...e0e92b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0708ab...0d10ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x07ebfa...54ccf1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x08f7d6...a6ed0e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x094616...cbf501` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0cbed4...1fe277` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13f423...e93488` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x19459c...c11c96` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1c2db0...fc15ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1cdee2...9f1f69` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1ce9d5...c79b77` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f277b...07f170` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f716d...994d08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26a451...50e49d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2b2710...3464da` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2bc844...d86945` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2c7e45...3eee5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x318cca...c7606d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x31a260...abdf63` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x340e08...99830b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x359895...3a037a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x394473...33e28e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3ced93...76df8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d7efb...e12f3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e8ed2...887b1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x53098a...968a2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5a80eb...91bddf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ccfb1...aee73e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x635684...941fd5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x644165...47a47d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x648f09...c36b3e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x66d839...fca8b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x685d9a...d4300e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x69b4aa...baf807` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c01e6...e1c810` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x70035e...cc6d6e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x77b69b...87ca41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b9255...f96a05` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7dbd30...5af56f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ea445...ce252b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ecd5a...515df3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x82d495...c060ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86de2b...67bdb3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x89dabc...0bf5c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8b7d34...2bf52c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8cacd0...cf6ae1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x97c640...ab4571` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x97ffb1...8cbdd9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9827b2...fc1f53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b1529...12eedc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b20be...b63e07` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9c432f...2440aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e006a...fb0ae8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9f45c5...e49402` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3add6...e4afa5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3b94c...74cf61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa924fb...7226b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa96b5a...17ebca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaec0f9...d88e17` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb0763b...d67bf6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb0dfe3...cc48e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbbb2aa...6974fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbe18d6...c45255` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc057ba...4185b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4a777...ae6d19` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb2b70...8a7a0e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcbdc08...ea236c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc3456...b0f1b3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd23ed8...debb7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd73294...be23f2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd9e4e4...032327` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb85e9...2b863f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xddbe9f...e22e07` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe1ddc3...bfa4aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe30c6c...fbf616` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe33c3e...9ebc75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5b438...25670d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe61ebc...284bd6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe8ed59...b1906f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea68ba...ddd114` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xead33e...61b520` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf013a8...7c4a21` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf58a5a...7a0c61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa718f...ed8105` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc5c0e...2a5b49` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xffcc2b...b81cec` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0288d6...3615e4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x08b918...63ef63` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0991bb...e13753` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0b4e75...c3b6cc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0d0141...cd17c0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0df56a...38a181` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0e5b65...65c296` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x22bf44...2057a9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x240a8d...ff7f0b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x25a528...28cc19` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x26eaf3...75cd40` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x32f120...146422` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x36d947...320734` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x374783...9728bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3a87eb...1db1fe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3cde2c...86e8a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3d913d...2b4934` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3d9f1d...b1e33c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x434aed...c43e11` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4fe2cf...6b9d87` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x546d10...01c386` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6b1a19...9fba89` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6ed71b...ef0920` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x711214...9c3a23` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x733df3...d9667f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7b7caf...c5f45d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x818ec0...d6dc0b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x82197d...60e34d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x84a9bd...db8f63` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x89c881...b77b71` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8a0f53...e1b515` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8a214d...ab94e7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8bb9ca...afbe72` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8ce955...b5f5bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x95bf7e...fcd605` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x97bdbc...753e85` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9877dc...47dca8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9aea86...3259bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9b40e4...7a2c21` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9fe28d...b9ce48` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xabda03...0e1a5b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xad996a...5a4302` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb12c13...091358` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb3f5c7...a26753` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb44a9b...9c663c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xba40c1...a38e7e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbe77ef...e4e156` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc7a161...cd8d8c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc90060...cc6bf8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc931f6...d4ab50` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xce3b88...e428be` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdd03db...4f7524` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe2304a...f0bfb2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe3f5a9...a0ad7d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe68019...fd05f9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xed3d03...ac2e73` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xefbe7b...678c76` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf711f9...fccffc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf90e9c...4babc5` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x090185...37e5f6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 34 deployments: fantom `0x0dec85...cefaf0`; fantom `0x21be37...1a4c83`; fantom `0x287176...784adc`; fantom `0x4fdffa...6d7bc1`; fantom `0x64c655...2af8c4`; fantom `0x6f86e6...456efc`; fantom `0x7208d9...c0a45d`; fantom `0x74a0bc...20a616`; fantom `0x82f0b8...6829c1`; fantom `0x8e45af...eaed34`; fantom `0xa3fc1b...59917e`; fantom `0xa48d95...de7598`; fantom `0xb32b31...ea0488`; fantom `0xc5c015...783191`; fantom `0xd4357d...89d11b`; fantom `0xed745b...884e12`; fantom `0xef7a0b...03298a`; fantom `0xf08e4c...abd7c7`; fantom `0xf5bce5...643966`; fantom `0xf68b78...dd567f`; kava `0x1b77fd...73315b`; kava `0x287176...784adc`; kava `0x30d525...ce7c16`; kava `0x3a2761...77c367`; kava `0x3cff6f...66e6a8`; kava `0x471ee7...f6fceb`; kava `0x526a17...acdfdd`; kava `0x630fc1...819d7e`; kava `0x729d88...936e30`; kava `0x7ad0e5...1eaaa7`; kava `0x895731...18651d`; kava `0xaad094...80a41a`; kava `0xc7a161...cd8d8c`; kava `0xd6b8bd...5dc591` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1d7ca6...ef22c1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x218c3c...61a4c0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2c78f1...3aa07e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x340fe1...7b717a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc1be9a...4602c4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd67de0...850454` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe0ce60...2a1109` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x090185...37e5f6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xacdd6e...a7a97b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc7a161...cd8d8c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x092a85...18d3fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0bfcd5...5745eb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x131238...2bb152` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x14fb47...cc344b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x173e60...c42eeb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x193d7e...e2dae8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1b8911...c56ec6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x205d52...d7e0f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x234ae7...9d3be1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x24a760...d3116c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2706aa...6d1ef1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2791af...8182b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x292a6f...5b3f0a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x29c0dd...f9b6b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2babb1...6d3b66` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2d4b38...e7c045` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2efee1...544abd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3053ad...fc5a54` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x34e197...75da14` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x350fa8...dffc4c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x35e62f...f2baa5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3816a8...d37f50` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x43f986...53608f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x469a99...c0b3d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4a9cb5...c7c7d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d66f7...c3cd57` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4fdad7...846f2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x546d10...01c386` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x585a94...2fbe23` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5abce3...a4f949` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5f719c...b6abe8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5fc174...bc51f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x607451...670f8c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x67b789...a63d5d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6ff060...687f73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7260fd...849576` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x74b4db...c220e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x765277...b39c61` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x790c86...222aa3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7b01ac...583453` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7e174e...56b1e5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x818ec0...d6dc0b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x860d84...7dc7ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x866486...0499ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x89d45c...1d6e2b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x943807...bbfb60` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x94635b...53f41d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9645da...0424b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x988349...afc6f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9ab2de...5e8595` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9d4f0d...c43f14` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa43f45...3b37a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xab8e08...63a3b8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaeb522...818ded` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb2dfd4...dbc536` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb345e5...3b4408` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb8e5ae...7d224b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba1acf...c1a0eb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbaee34...3784b0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbe7d59...0922ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbf2991...ccb0fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbfa496...cd3b12` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc0253c...273894` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc0c54b...4f0ba3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc25ad0...95abbe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc6f72f...c44b03` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc9fdb5...1206a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcceba9...29fe15` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd2a8f5...4dad8b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd3923c...e082fc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd5fcb4...6f8273` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd8284e...d9e020` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdbe514...a400ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xde3590...859663` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdf0096...c0a4ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe3d7a0...594a21` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe3f5a9...a0ad7d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe42bcd...e06f90` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe56979...e2a5ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7a344...e92c94` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe931cd...ad56f6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xebca5e...4c8d49` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xecb6d4...3839ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xed6623...df3106` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xedcade...02d54a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xee1f83...50024d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf3674f...e457f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf461bf...8c6aed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf776b6...3b3bc9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb81be...245437` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfddcbb...865a67` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xff1489...6ddd17` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x04eb48...bdbc1c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x051911...219476` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x05300c...4d6df6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x07dfe5...25a922` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0b94d3...de5864` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0cb6ea...80790c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0e0e2c...556a57` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0e1ec3...18ad6e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0efbfe...45742e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0fb541...27912e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x11cb89...406797` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x160bb4...c9b38f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x16c553...a1ecc0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x18ce97...5d8b83` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x195759...1298a5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1a6708...8f0849` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1af353...2d232c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1c4b41...62c452` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x24d89c...bfd852` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x250a0a...a109b2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2518a3...95610d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2bcccb...7ca327` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2c78f1...3aa07e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2f1ba2...178f89` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x33fa3d...eb35c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3a0fa8...cef572` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3bcda0...54f1c9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x41d5a0...c601af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x44771c...5cd65f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4792c1...13d84e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x47d99d...044f0a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x491a25...0dad5c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x49b4a0...de6759` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4acc99...ae7f2c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x54fe8e...c86fb0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x563111...fc537b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x587b32...1f41c8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5b4dfd...fef862` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5bbfa5...13fe20` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5cfca5...4c6b9c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5e1e12...a424ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x614d7f...2d2eda` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x623877...c2f037` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x639a64...c62c5c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x64c655...2af8c4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x65e66a...84d97a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x65f17e...5d0ac7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x66a809...ff0a11` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6b516b...5adbc9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6c6f89...ee6459` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6e3bf2...aee3e1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x71fe4e...1dd265` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x735abe...e97b0f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x76a3d9...ebf528` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x778204...6b8b2b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x77b995...6403e6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7aca03...0a9e53` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7d9d90...e87740` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7e9985...e9e7ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8165aa...aec225` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x844878...9ad6e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x859ae8...02b834` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x867c10...8a3067` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x884d2e...9d0861` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x89c90e...69d4fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8e7982...9c20fc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x91aa62...2e8bc8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x931b5d...5989ba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x936679...c1354d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x959c61...5bb378` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9732d3...8ad7c9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x97b99b...6e633c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x997fba...2bb073` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa1246c...5f83fc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa2008a...a840d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa47a05...cf0ca9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa49fac...a38f53` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa4e65d...7c55fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa60ef5...28b9d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa66876...dad569` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa71a7c...2959fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaeee31...aaf61c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb06b46...16bce3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb12c13...091358` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb44a9b...9c663c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb5a917...27f800` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb6f012...fb3c4f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbaf1a2...8cb510` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbb09ac...9bfec4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbb83b6...72d204` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbbc4a8...2cf2d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbc05fb...ac21e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbc7fa5...3d7920` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbf7023...d0aa78` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc1be9a...4602c4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc35660...2350bd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc63085...9158e6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc7d35c...395be5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc880ac...dbe04c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc931f6...d4ab50` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcb2804...7088bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcb9d0b...c493e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd12cf5...1e3075` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd19dac...9c9c04` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd4f3a6...9912ef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd7c295...df8990` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdad1d7...881ac3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdc3b37...8a1e1a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdcd29f...fd5ff5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe59bb0...04d0d7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe68019...fd05f9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe8a191...529707` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xef2dbd...4f0195` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf47b8c...d61dc6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf940bd...73f71c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf975aa...68ecbd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfa85b0...572950` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfa9343...f8a40f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfbdd19...5d01b8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfdebd1...b8bb26` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x233332...accb9c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x471ee7...f6fceb` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x617161...a3b3aa` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb9565f...4f265a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc7a161...cd8d8c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [11-14-2023_Abracadabra_GMXV2.pdf](https://github.com/GuardianAudits/Audits/blob/main/AbracadabraMoney/11-14-2023_Abracadabra_GMXV2.pdf) | Guardian | Audit | 2023-11 | stale | Direct | contract_name | 2 | n/a |
| [2024-02-06_Abracadabra_LockingMultiRewards.pdf](https://github.com/Abracadabra-money/abracadabra-money-contracts/blob/main/audits/2024-02-06_Abracadabra_LockingMultiRewards.pdf) | unknown | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [2024-03-21_MIMSwap.pdf](https://github.com/Abracadabra-money/abracadabra-money-contracts/blob/main/audits/2024-03-21_MIMSwap.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 5 | n/a |
| [2024-12-16_Abracadabra_BoundSpell_Report.pdf](https://github.com/Abracadabra-money/abracadabra-money-contracts/blob/main/audits/2024-12-16_Abracadabra_BoundSpell_Report.pdf) | unknown | Audit | 2024-12 | aging | Direct | contract_name | 1 | n/a |
| [MagicGlpReview.md](https://github.com/Abracadabra-money/abracadabra-money-contracts/blob/main/audits/MagicGlpReview.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4e1536...717870`](./contracts/ethereum-1/0x4e15361fd6b4bb609fa63c81a2be19d873717870/) | FantomToken | token | $66,475,926.81 | Verified native implementation with $66,475,926.81 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fe656...a7587e`](./contracts/ethereum-1/0x3fe65692bfcd0e6cf84cb1e7d24108e434a7587e/) | BaseRewardPool | core_logic | $26,353,067.28 | Verified native implementation with $26,353,067.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x903c99...3b61fb`](./contracts/ethereum-1/0x903c9974aaa431a765e60bc07af45f0a1b3b61fb/) | DepositToken | token | $5,050,417.06 | Verified native implementation with $5,050,417.06 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38ea45...0bd783`](./contracts/ethereum-1/0x38ea452219524bb87e18de1c24d3bb59510bd783/) | Pool | core_logic | $1,460,001.24 | Verified native implementation with $1,460,001.24 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4a3a6d...eb6a3d`](./contracts/base-8453/0x4a3a6dd60a34bb2aba60d73b4c88315e9ceb6a3d/) | MintableBurnableERC20 | token | $223,940.55 | Verified native implementation with $223,940.55 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24179c...83e007`](./contracts/ethereum-1/0x24179cd81c9e782a4096035f7ec97fb8b783e007/) | BorrowerOperations | core_logic | $4,002.72 | Verified native implementation with $4,002.72 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1df188...dd9e51`](./contracts/arbitrum-42161/0x1df188958a8674b5177f77667b8d173c3cdd9e51/) | mSpellStaking | token | $2,409.67 | Verified native implementation with $2,409.67 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf9eb2...fe3d7f`](./contracts/ethereum-1/0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f/) | ActivePool | core_logic | $0.02 | Verified native implementation with $0.02 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d32e8...ce5521`](./contracts/ethereum-1/0x3d32e8b97ed5881324241cf03b2da5e2ebce5521/) | CollSurplusPool | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1070f7...fe17e8`](./contracts/arbitrum-42161/0x1070f775e8eb466154bba8fa0076c4adc7fe17e8/) | BatchSender | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf5bce5...643966`](./contracts/ethereum-1/0xf5bce5077908a1b7370b9ae04adc565ebd643966/) | BentoBoxV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x74c764...46894a`](./contracts/arbitrum-42161/0x74c764d41b77dbbb4fe771dab1939b00b146894a/) | BentoBoxV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x555ea7...6dcb5a`](./contracts/bsc-56/0x555ea72d7347e82c614c16f005fa91caf06dcb5a/) | BnbStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2c9f65...29b131`](./contracts/arbitrum-42161/0x2c9f65bd1a501cb406584f5532ce57c28829b131/) | CauldronFeeWithdrawer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6cbafe...7c8c8f`](./contracts/ethereum-1/0x6cbafee1fab76ca5b5e144c43b3b50d42b7c8c8f/) | CauldronLowRiskV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ff906...38b91f`](./contracts/ethereum-1/0x6ff9061bb8f97d948942cef376d98b51fa38b91f/) | CauldronMediumRiskV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x390db1...d18a41`](./contracts/ethereum-1/0x390db10e65b5ab920c19149c919d970ad9d18a41/) | CauldronV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35a0dd...a30321`](./contracts/ethereum-1/0x35a0dd182e4bca59d5931eae13d0a2332fa30321/) | CauldronV2CheckpointV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x003d5a...9eed0f`](./contracts/ethereum-1/0x003d5a75d284824af736df51933be522de9eed0f/) | CauldronV2Flat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e2a2b...eb493e`](./contracts/ethereum-1/0x3e2a2bc69e5c22a8da4056b413621d1820eb493e/) | CauldronV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x68f498...ff2362`](./contracts/optimism-10/0x68f498c230015254aff0e1eb6f85da558dff2362/) | CauldronV3_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x247d7e...1ad85f`](./contracts/arbitrum-42161/0x247d7e28aa79dffe09b287d191393242411ad85f/) | CauldronV4WithRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf36a10...deb23b`](./contracts/ethereum-1/0xf36a106153038c436c470674da0ff1f0dadeb23b/) | CheckpointCauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f29cb...cf2516`](./contracts/ethereum-1/0x3f29cb4111cbda8081642da1f75b3c12decf2516/) | ClaimZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x801459...dc86ae`](./contracts/ethereum-1/0x8014595f2ab54cd7c604b00e9fb932176fdc86ae/) | CrvDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x58538e...9c0133`](./contracts/arbitrum-42161/0x58538e6a46e07434d7e7375bc268d3cb839c0133/) | ENAOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd43024...1410e9`](./contracts/ethereum-1/0xd430246142084ec68f7ab090cbd9252a1d1410e9/) | FeeBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a527d...a0d769`](./contracts/ethereum-1/0x7a527d8bb09f7d70c148ab5de919e9bf68a0d769/) | FeeDepositV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4277f8...1ac258`](./contracts/arbitrum-42161/0x4277f8f2c384827b5273592ff7cebd9f2c1ac258/) | GLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3477df...3c7e75`](./contracts/arbitrum-42161/0x3477df28ce70cecf61fffa7a95be4bec3b3c7e75/) | GmxGlpRewardHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0155b6...c83203`](./contracts/arbitrum-42161/0x0155b6fe74f90a3840ebf750ea4237d542c83203/) | GmxV2CauldronOrderAgent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x02a97f...59414a`](./contracts/arbitrum-42161/0x02a97f80afc2d507bba371f11fe236994159414a/) | GmxV2CauldronRouterOrder | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6ac116...e0746d`](./contracts/arbitrum-42161/0x6ac1163b6f60ba8d6dc1a7f4ccd122418ce0746d/) | GMXV2Experiment_OrderAgent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3b0eca...08eee5`](./contracts/arbitrum-42161/0x3b0ecac5653107a985be93ab25d8dbb8a608eee5/) | GMXV2Experiment_RouterOrder | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d6bca...86e1e7`](./contracts/ethereum-1/0x6d6bcac2266468a44da9fa482ca54aaed586e1e7/) | Harvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdfe1a5...a52111`](./contracts/ethereum-1/0xdfe1a5b757523ca6f7f049ac02151808e6a52111/) | InchSpellSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1972b5...bc14f7`](./contracts/ethereum-1/0x1972b5d65a690de0bc36278ac93d47fd98bc14f7/) | InterestRateCalculatorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x13e17f...321b20`](./contracts/arbitrum-42161/0x13e17fd348f242ff71b9e022ce3714b139321b20/) | LockingMultiRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf35b31...97feb6`](./contracts/ethereum-1/0xf35b31b941d94b249eaded041db1b05b7097feb6/) | MagicApe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x41b8db...300026`](./contracts/arbitrum-42161/0x41b8dbde2d4127111fbedf31783781ae69300026/) | MagicGlpRewardHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99d8a9...1e17f3`](./contracts/ethereum-1/0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3/) | MagicInternetMoneyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3b9e7f...f7f764`](./contracts/arbitrum-42161/0x3b9e7f15876c45956ba5f337cb47849375f7f764/) | MSpellStakingHub | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3886a6...f5f755`](./contracts/ethereum-1/0x3886a691e88f1a51918b915aa1a0dfbc9af5f755/) | MSpellStakingSpoke | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x15838e...6d7f85`](./contracts/arbitrum-42161/0x15838e7a6322a6f37d2c27628a82b9115e6d7f85/) | MultiRewardsClaimingHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6d2070...8988cd`](./contracts/arbitrum-42161/0x6d2070b13929df15b13d96cfc509c574168988cd/) | MultiRewardsStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09f77e...8a2acb`](./contracts/arbitrum-42161/0x09f77e8a13de9a35a7231028187e9fd5db8a2acb/) | OrderBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe66db0...1cdcb8`](./contracts/ethereum-1/0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8/) | PoolBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d3a38...b423de`](./contracts/ethereum-1/0x6d3a388e310aaa498430d1fe541d6d64ddb423de/) | PoolManagerV4 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7b1ffd...d43a8b`](./contracts/arbitrum-42161/0x7b1ffddeec3c4797079c7ed91057e399e9d43a8b/) | PriceFeedTimelock | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x18f7cc...d32d31`](./contracts/arbitrum-42161/0x18f7cca3d98ad96cf26dbda1db3fd71e30d32d31/) | PrivateMultiRewardsStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x406b89...374352`](./contracts/ethereum-1/0x406b89138782851d3a8c04c743b010ceb0374352/) | PrivilegedCauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x289424...b134ed`](./contracts/ethereum-1/0x289424add4a1a503870eb475fd8bf1d586b134ed/) | PrivilegedCheckpointCauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x22199a...cae489`](./contracts/arbitrum-42161/0x22199a49a999c351ef7927602cfb187ec3cae489/) | Reader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1aa92d...a0d3e0`](./contracts/arbitrum-42161/0x1aa92da659e914982975f8f109a05be904a0d3e0/) | RevertingToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x79b6ee...5c6c2a`](./contracts/arbitrum-42161/0x79b6ee65fc1466b5fd95e20650df740c085c6c2a/) | ShortsTrackerTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa3372c...b3b20d`](./contracts/optimism-10/0xa3372cd2178c52fdcb1f6e4c4e93014b4db3b20d/) | SolidlyGaugeVolatileLPStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6eb170...297c04`](./contracts/optimism-10/0x6eb1709e0b562097bf1cc48bc6a378446c297c04/) | SolidlyLpWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x196b73...448ca1`](./contracts/arbitrum-42161/0x196b73a33f10bc839de082ccf799027190448ca1/) | SpellPowerStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26fa3f...a106a9`](./contracts/ethereum-1/0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9/) | sSpellV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8c436...7a612d`](./contracts/ethereum-1/0xc8c436271f9a6f10a5b80c8b8ed7d0e8f37a612d/) | StakingHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab8e74...d7deca`](./contracts/ethereum-1/0xab8e74017a8cc7c15ffccd726603790d26d7deca/) | StakingPools | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bc998...8074cc`](./contracts/ethereum-1/0x1bc998bf2e25ea49b212b9db35491047c28074cc/) | TestForMelen2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09fec9...240126`](./contracts/arbitrum-42161/0x09fec993be76230296ce8c3b8edafd32b6240126/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1092b0...acd674`](./contracts/arbitrum-42161/0x1092b0c039f51297ccc9d9c861a2f9a18facd674/) | TokenLocker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95ad61...64c4ce`](./contracts/ethereum-1/0x95ad61b0a150d79219dcf64e1e6cc01f0b64c4ce/) | TokenMintERC20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04dd97...bd207f`](./contracts/ethereum-1/0x04dd97255ddee29c941d85f5b5cde6ace8bd207f/) | TreasuryLend | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeb8121...6de6b3`](./contracts/ethereum-1/0xeb8121b44a290ee16981d87b92fc16b2366de6b3/) | TreasuryManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa25b17...e74316`](./contracts/ethereum-1/0xa25b17d7deee59f9e326e45cc3c0c1b158e74316/) | TreasurySwap | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf37c41...64b503`](./contracts/ethereum-1/0xf37c41ef2281893b5971769370d6cdd35864b503/) | Utilities | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x489ee0...097c4a`](./contracts/arbitrum-42161/0x489ee077994b6658eafa855c308275ead8097c4a/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x199070...363004`](./contracts/arbitrum-42161/0x199070ddfd1cfb69173aa2f7e20906f26b363004/) | Vester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53375a...60a9a6`](./contracts/ethereum-1/0x53375add9d2dfe19398ed65baaeffe622760a9a6/) | WhitelistedCauldronV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1062eb...495b72`](./contracts/ethereum-1/0x1062eb452f8c7a94276437ec1f4aaca9b1495b72/) | WhitelistedCauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x333e28...a3b5e8`](./contracts/ethereum-1/0x333e28e557dc026518e25d1d426c4407a0a3b5e8/) | WhitelistedCheckpointCauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd28777...c91ea9`](./contracts/ethereum-1/0xd2877702675e6ceb975b4a1dff9fb7baf4c91ea9/) | WrappedLuna | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd36932...d15a84`](./contracts/ethereum-1/0xd36932143f6ebdedd872d5fb0651f4b72fd15a84/) | WrappedmAAPL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56aa29...c0af72`](./contracts/ethereum-1/0x56aa298a19c93c6801fdde870fa63ef75cc0af72/) | WrappedmBABA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59a921...653442`](./contracts/ethereum-1/0x59a921db27dd6d4d974745b7ffc5c33932653442/) | WrappedmGOOGL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d3504...91f373`](./contracts/ethereum-1/0x1d350417d9787e000cc1b95d70e9536dcd91f373/) | WrappedmIAU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41bbed...852bd7`](./contracts/ethereum-1/0x41bbedd7286daab5910a1f15d12cbda839852bd7/) | WrappedmMSFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8d674...0f9dcd`](./contracts/ethereum-1/0xc8d674114bac90148d11d3c1d33c61835a0f9dcd/) | WrappedmNFLX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13b02c...f57d15`](./contracts/ethereum-1/0x13b02c8de71680e71f0820c996e4be43c2f57d15/) | WrappedmQQQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21ca39...66fd63`](./contracts/ethereum-1/0x21ca39943e91d704678f5d00b6616650f066fd63/) | WrappedmTSLA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xedb041...78cca9`](./contracts/ethereum-1/0xedb0414627e6f1e3f082de65cd4f9c693d78cca9/) | WrappedmTWTR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31c631...356991`](./contracts/ethereum-1/0x31c63146a635eb7465e5853020b39713ac356991/) | WrappedmUSO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf72fcd...33fc86`](./contracts/ethereum-1/0xf72fcd9dcf0190923fadd44811e240ef4533fc86/) | WrappedmVIXY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 118 |
| upstream | 37 |
| standard_library | 10 |
| needs_review | 627 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=10

Zero-match audit list:

- [9649] 2024-02-06_Abracadabra_LockingMultiRewards.pdf

Fork inheritance lineage and inherited audits are included when available.
