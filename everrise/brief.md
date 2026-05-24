# Agentic Audit Brief: EverRise

⚠️ Lifecycle status: DECLINING - TVL dropped 53.0% over 90 days

## Project Overview

- Project: EverRise (`everrise`)
- Website: [https://www.everrise.com](https://www.everrise.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-24T21:38:09.662Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: avalanche, bsc, ethereum, fantom, polygon
- Contract surface: 258 unique implementations (566 raw deployments)
- DeFi Llama TVL: $1,504,465.48
- On-chain TVL (included contracts): $23,379,153.27
- TVL by chain: Avalanche $21,534,575.07 | Bsc $1,844,578.20

## Project Description

EverRise is a cross-chain bridge protocol that enables token transfers across Ethereum, BSC, Polygon, Avalanche, and Fantom. It provides infrastructure for token bridging and liquidity management through a suite of smart contracts.

### Architecture

The EverRise family provides foundational bridging and liquidity infrastructure, while RISE, DEFIDO, VOLT, and VOLT (OLD) are token-specific families that likely interact with EverRise's bridges and liquidity pools. Shared infrastructure includes Uniswap and Joe factories and pairs used across multiple token families.

## Audit Coverage Summary

- Verified implementations audited: 0/111 (0.0%)
- Verified + Unaudited implementations: 108
- Verified by bytecode match: 3
- Unverified implementations: 147
- Unique implementations: 258
- Raw deployments: 566
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $23,379,153.27
- Latest audit: 2023-07 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $23,379,153.27 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (108)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| JoeToken | token | avalanche | [`0x6e84a6...bc0fdd`](./contracts/avalanche-43114/0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd/) | ⚠️ Unaudited |
| CellToken | token | bsc | 2 deployments: bsc [`0x871848...c18df3`](./contracts/bsc-56/0x87184884fc32594d4e347874cbd8294d61c18df3/); bsc `0xf3e144...934346` | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | token | avalanche | 46 deployments: avalanche [`0x125cf8...84b4d2`](./contracts/avalanche-43114/0x125cf88b4dc08b45847dec7b8d8e1b543f84b4d2/); avalanche `0x1adbde...330024`; avalanche `0x28adbb...a7a0a3`; avalanche `0x29472d...328db2`; avalanche `0x296731...f9bd20`; avalanche `0x2e3a35...7975e2`; avalanche `0x2ed5cd...ff11bd`; avalanche `0x320448...6cccee`; avalanche `0x3ac928...16b974`; avalanche `0x3b34e1...185ecc`; avalanche `0x3fe38b...a9eb1f`; avalanche `0x4a586d...a4d271`; avalanche `0x564780...bbacd0`; avalanche `0x585e7b...b96c15`; avalanche `0x5f2a43...083ae6`; avalanche `0x647da9...92cf2b`; avalanche `0x6b5a37...93a86b`; avalanche `0x6caf40...9d51c5`; avalanche `0x737fdf...fddf34`; avalanche `0x7a17fb...bf3421`; avalanche `0x81516e...23f592`; avalanche `0x838549...aa34cd`; avalanche `0x83c672...c6ea8a`; avalanche `0x8b650e...1e4448`; avalanche `0x8cc49b...d8a98a`; avalanche `0x929f5c...4633fa`; avalanche `0x97e3a6...213612`; avalanche `0x9c1e13...da9e8e`; avalanche `0xb2bb1e...7e5e8b`; avalanche `0xbb95aa...d7b337`; avalanche `0xbfdbe3...3c76e0`; avalanche `0xc14678...8da696`; avalanche `0xc17f99...f9a47a`; avalanche `0xc988c1...a7ca19`; avalanche `0xcd85fe...7348ad`; avalanche `0xce095a...6a75ea`; avalanche `0xcf62b6...94429b`; avalanche `0xd1bb83...9fbe3f`; avalanche `0xd7c246...8c3ed5`; avalanche `0xea5e11...cbbf51`; avalanche `0xeb41c9...1b1df8`; avalanche `0xebea85...60e62e`; avalanche `0xed6aaf...f637ac`; avalanche `0xeed14f...54847c`; avalanche `0xf65a08...503d42`; avalanche `0xf88d8e...50317c` | ⚠️ Unaudited |
| CoinSackToken | token | bsc | [`0x125ce3...d680ad`](./contracts/bsc-56/0x125ce3f13950c5fa94397927f88c352fded680ad/) | ⚠️ Unaudited |
| MetaFloki | token | bsc | 2 deployments: bsc [`0x193146...6c5220`](./contracts/bsc-56/0x1931461c770509cc20aca503d3c5637e7b6c5220/); bsc `0x8fc2b4...b9041f` | ⚠️ Unaudited |
| JoeHatToken | token | avalanche | [`0x82fe03...62077c`](./contracts/avalanche-43114/0x82fe038ea4b50f9c957da326c412ebd73462077c/) | ⚠️ Unaudited |
| ERC721Staking | token | bsc | [`0x3ffdb9...f16e54`](./contracts/bsc-56/0x3ffdb968b20c95e3f7f33182482903ed37f16e54/) | ⚠️ Unaudited |
| apezilla | unknown | bsc | 2 deployments: bsc [`0x1f045d...9d8743`](./contracts/bsc-56/0x1f045d1bc3c1cda5554dfe4077b900cb509d8743/); bsc `0x43055a...f60da9` | ⚠️ Unaudited |
| ARMADA | unknown | bsc | [`0xd307e6...e11507`](./contracts/bsc-56/0xd307e64c0c0e70eaa463926e4c2dd7370de11507/) | ⚠️ Unaudited |
| ArmadaOwn | unknown | bsc | [`0x458d0a...6e7635`](./contracts/bsc-56/0x458d0af4a1971958cd50c068fff8ad755a6e7635/) | ⚠️ Unaudited |
| BadBuildersClubSoulbound | unknown | avalanche | [`0x2d1e2e...ac6a42`](./contracts/avalanche-43114/0x2d1e2e2fdab5047b5227e8c16e01432699ac6a42/) | ⚠️ Unaudited |
| BEP20Token | token | bsc | [`0x13f5e0...b32277`](./contracts/bsc-56/0x13f5e0c7a122c3df2914fad879777f7fc3b32277/) | ⚠️ Unaudited |
| BoostedMasterChefJoe | unknown | avalanche | 3 deployments: avalanche [`0x217945...8266e9`](./contracts/avalanche-43114/0x217945d4cb3386420252da73743f1730f38266e9/); avalanche `0x846a4c...bfff23`; avalanche `0xbb28e0...0a7ad0` | ⚠️ Unaudited |
| BoringHelperV1 | periphery | avalanche | 4 deployments: avalanche [`0x1dd4d8...ab5741`](./contracts/avalanche-43114/0x1dd4d86180eee39ac4fb35eca67cacf608ab5741/); avalanche `0xce63ec...412c5e`; avalanche `0xdc0730...4a7c62`; avalanche `0xe35e9c...9a386f` | ⚠️ Unaudited |
| BuffedFeg | unknown | bsc | [`0x2298c7...d5c10c`](./contracts/bsc-56/0x2298c7d99ac8d4dba12d50c174d77e7857d5c10c/) | ⚠️ Unaudited |
| CAKEBAKER | unknown | bsc | [`0xf8c35f...7a501b`](./contracts/bsc-56/0xf8c35f136f3ef177d7d65484a4de7502e67a501b/) | ⚠️ Unaudited |
| CheemsDad | unknown | bsc | [`0x8714e4...25ccd3`](./contracts/bsc-56/0x8714e41ff74cf4637b848077452d3e8d2925ccd3/) | ⚠️ Unaudited |
| Cliff | unknown | avalanche | 2 deployments: avalanche [`0xaff905...2d4f34`](./contracts/avalanche-43114/0xaff90532e2937ff290009521e7e120ed062d4f34/); avalanche `0xc13b1c...7f6796` | ⚠️ Unaudited |
| CMT_v2_B_TR_NC_X | unknown | bsc | [`0x0d472c...94dc7d`](./contracts/bsc-56/0x0d472c572f4c785cc0c5a92ff7f81038ed94dc7d/) | ⚠️ Unaudited |
| CoinSackEverOwnWrapper | unknown | bsc | [`0x65bf1d...3a4462`](./contracts/bsc-56/0x65bf1d8f715c9a602c02adc91a231e5cd43a4462/) | ⚠️ Unaudited |
| CS721Factory | registry | bsc | 6 deployments: bsc [`0x31c46c...172684`](./contracts/bsc-56/0x31c46cf200b0e7cb6eca777f79bd9327e9172684/); bsc `0xbb065b...e81ed5`; bsc `0xc105f2...52a950`; bsc `0xc94530...202fe4`; bsc `0xdb5dd8...36517c`; bsc `0xdc307b...45fade` | ⚠️ Unaudited |
| CS721Listings | unknown | bsc | 2 deployments: bsc [`0x2cefa0...6d456d`](./contracts/bsc-56/0x2cefa0dd58aa85a4085f28056a96b0c5446d456d/); bsc `0xe5bc80...0dd476` | ⚠️ Unaudited |
| CustomMasterChefJoeV2Timelock | governance | avalanche | [`0xadaf18...e6e398`](./contracts/avalanche-43114/0xadaf18d79f316005542da4ecb1624b59c4e6e398/) | ⚠️ Unaudited |
| DeFido | unknown | bsc | 2 deployments: ethereum `0xf32122...c1cd91`; bsc [`0x199f78...db33de`](./contracts/bsc-56/0x199f788ddb566b7ebb59bf35b36914f2acdb33de/) | ⚠️ Unaudited |
| DexUtils | unknown | bsc | 5 deployments: bsc [`0x4883bd...131f12`](./contracts/bsc-56/0x4883bd9e85a0737f3141b613ff80ce00fa131f12/); bsc `0xa6c460...44f093`; bsc `0xa8edf1...9b7269`; bsc `0xb3a7f4...f8df80`; bsc `0xe6c891...b70fb4` | ⚠️ Unaudited |
| DiamondQ | unknown | bsc | [`0xbd573d...4d24e3`](./contracts/bsc-56/0xbd573ddc3ab93d7984012b897821f6c09f4d24e3/) | ⚠️ Unaudited |
| DittoInu | unknown | bsc | [`0x02e81c...d6ab5b`](./contracts/bsc-56/0x02e81cc68c8528b380dc722b98c02ee642d6ab5b/) | ⚠️ Unaudited |
| DogeBoy | unknown | bsc | [`0x6c91e8...e5d9bd`](./contracts/bsc-56/0x6c91e837c071a8acb6988da8e39f9f6759e5d9bd/) | ⚠️ Unaudited |
| DragonLair | unknown | polygon | 2 deployments: polygon [`0xf28164...8a16b1`](./contracts/polygon-137/0xf28164a485b0b2c90639e47b0f377b4a438a16b1/); polygon `0xf3e851...953d22` | ⚠️ Unaudited |
| EFT | unknown | bsc | [`0xb72962...b187e6`](./contracts/bsc-56/0xb72962568345253f71a18318d67e13a282b187e6/) | ⚠️ Unaudited |
| ERC20Mock | token | avalanche | 2 deployments: avalanche [`0x72281a...106587`](./contracts/avalanche-43114/0x72281a435fe5a9945e04ef4d0a32771430106587/); avalanche `0x9e6cab...c05b09` | ⚠️ Unaudited |
| EverOwn | unknown | ethereum | 2 deployments: ethereum [`0x78ab99...d3a69d`](./contracts/ethereum-1/0x78ab99dae7302ea91e36962f4b23418a89d3a69d/); polygon `0x7dd45e...62fdef` | ⚠️ Unaudited |
| FirstFeg | unknown | bsc | 2 deployments: bsc [`0xb5d68d...4af2d9`](./contracts/bsc-56/0xb5d68dad8761edefcf111b1f33146c4aa24af2d9/); bsc `0xe9dc00...180097` | ⚠️ Unaudited |
| FixedAPYStaking | unknown | bsc | 3 deployments: bsc [`0x8a63d4...7eeec1`](./contracts/bsc-56/0x8a63d4d5191417cce9471af059b2b3c7187eeec1/); bsc `0xce870e...f4bf72`; bsc `0xd01a45...04266e` | ⚠️ Unaudited |
| FrankBeans | unknown | bsc | [`0xf55503...37a134`](./contracts/bsc-56/0xf5550372883edc8e1216d69c221f1c3a9837a134/) | ⚠️ Unaudited |
| HomelessAsuka | unknown | bsc | [`0xe19e37...c469a9`](./contracts/bsc-56/0xe19e37d08b43c55d8d4fc39b2a94e54f67c469a9/) | ⚠️ Unaudited |
| IterableMapping | unknown | bsc | [`0xa4013e...2e77b1`](./contracts/bsc-56/0xa4013e1e4f99f5cd22584424552c1d28342e77b1/) | ⚠️ Unaudited |
| JCollateralCapErc20Delegator | token | avalanche | [`0x102011...ae0fbf`](./contracts/avalanche-43114/0x102011863cc4f506d1387cd6b22c522602ae0fbf/) | ⚠️ Unaudited |
| JoeBar | unknown | avalanche | [`0x57319d...fd4f33`](./contracts/avalanche-43114/0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33/) | ⚠️ Unaudited |
| JoeFactory | registry | avalanche | 2 deployments: avalanche [`0x9ad6c3...0cfa10`](./contracts/avalanche-43114/0x9ad6c38be94206ca50bb0d90783181662f0cfa10/); avalanche `0xe2ecc2...e75eb8` | ⚠️ Unaudited |
| JoeLens | periphery | avalanche | [`0xfdf50f...8a47cc`](./contracts/avalanche-43114/0xfdf50fea3527fad31fa840b748fd3694ae8a47cc/) | ⚠️ Unaudited |
| JoeMaker | unknown | avalanche | 2 deployments: avalanche [`0x4247c5...bcdcfe`](./contracts/avalanche-43114/0x4247c5dbac51a135939cc904c34e4913b6bcdcfe/); avalanche `0x861726...b65856` | ⚠️ Unaudited |
| JoeMakerV3 | unknown | avalanche | [`0xdb5b4c...a475d3`](./contracts/avalanche-43114/0xdb5b4cc0276389a943dba9eb07a97c10e8a475d3/) | ⚠️ Unaudited |
| JoePair | unknown | avalanche | [`0x5472e9...9370b5`](./contracts/avalanche-43114/0x5472e98d22b0fb7ec5c3e360788b8700419370b5/) | ⚠️ Unaudited |
| JoeRoll | unknown | avalanche | [`0xacff0f...0bcb58`](./contracts/avalanche-43114/0xacff0fbf56baeb9ef677de19aded8f7a950bcb58/) | ⚠️ Unaudited |
| JoeRouter02 | adapter | avalanche | [`0x60ae61...0933d4`](./contracts/avalanche-43114/0x60ae616a2155ee3d9a68541ba4544862310933d4/) | ⚠️ Unaudited |
| Joetroller | unknown | avalanche | 3 deployments: avalanche [`0x1ed836...92cfcb`](./contracts/avalanche-43114/0x1ed8368ca83437dbf43e50e85e6f82342e92cfcb/); avalanche `0x8b33e8...3d99b7`; avalanche `0xdc1368...a1edac` | ⚠️ Unaudited |
| JoinCoin | unknown | bsc | [`0x003771...546e90`](./contracts/bsc-56/0x003771227d08ac9961b9160b1219fef136546e90/) | ⚠️ Unaudited |
| JoinCoinStaking | unknown | bsc | [`0xd022ba...cddbcb`](./contracts/bsc-56/0xd022bafdbf430555b42d4a6808758bcbedcddbcb/) | ⚠️ Unaudited |
| JOY | unknown | bsc | [`0xad6377...83ff69`](./contracts/bsc-56/0xad6377402f47cc6f6c1d46b7ba5bfd005b83ff69/) | ⚠️ Unaudited |
| JWrappedNativeDelegate | unknown | avalanche | 4 deployments: avalanche [`0x267a45...149df5`](./contracts/avalanche-43114/0x267a4576293d55b53c769606e886e1f343149df5/); avalanche `0x81b539...3d9136`; avalanche `0xc22f01...4ec29e`; avalanche `0xd915fd...015531` | ⚠️ Unaudited |
| KetherNFTLoaner | token | ethereum | [`0x6d0274...b9dbed`](./contracts/ethereum-1/0x6d02744ef4418cb0d72f54c1ee53140430b9dbed/) | ⚠️ Unaudited |
| KingDoge | unknown | bsc | [`0x3785ef...5f0015`](./contracts/bsc-56/0x3785ef92484595d88e71db773ef64f12695f0015/) | ⚠️ Unaudited |
| KingFund | unknown | bsc | [`0x838e37...d79cf8`](./contracts/bsc-56/0x838e37f209950540bbd54d4f52c693a968d79cf8/) | ⚠️ Unaudited |
| KINGSHIBA | unknown | bsc | [`0x84f4f7...22316c`](./contracts/bsc-56/0x84f4f7cdb4574c9556a494dab18ffc1d1d22316c/) | ⚠️ Unaudited |
| KishuForever | unknown | bsc | [`0x5990a2...2931cd`](./contracts/bsc-56/0x5990a27bccaf2ea39d3e8ff1fd29c60bf02931cd/) | ⚠️ Unaudited |
| LadyGagaFan | unknown | bsc | [`0x4a2a0f...74fc2e`](./contracts/bsc-56/0x4a2a0f1e90265a7e35713648f64a9a019f74fc2e/) | ⚠️ Unaudited |
| Landarno | unknown | bsc | 2 deployments: ethereum `0xd5641a...a5afb2`; bsc [`0x3dbfc6...556321`](./contracts/bsc-56/0x3dbfc6387560a7216174a367573290db14556321/) | ⚠️ Unaudited |
| Lilly | unknown | ethereum | [`0x868652...7999f2`](./contracts/ethereum-1/0x8686525d6627a25c68de82c228448f43c97999f2/) | ⚠️ Unaudited |
| LiquidityGeneratorToken | token | bsc | [`0xc46fe5...7bca67`](./contracts/bsc-56/0xc46fe585f349b782ae319046683868b6227bca67/) | ⚠️ Unaudited |
| MasterChefJoeV2 | unknown | avalanche | [`0xd6a4f1...f53052`](./contracts/avalanche-43114/0xd6a4f121ca35509af06a0be99093d08462f53052/) | ⚠️ Unaudited |
| MasterChefJoeV3 | unknown | avalanche | 2 deployments: avalanche [`0x188bed...c18f00`](./contracts/avalanche-43114/0x188bed1968b795d5c9022f6a0bb5931ac4c18f00/); avalanche `0x3eb4ec...6e8945` | ⚠️ Unaudited |
| Maximillion | unknown | avalanche | [`0xe5cdda...7ab7e7`](./contracts/avalanche-43114/0xe5cddafd0f7af3deaf4bd213bbaee7a5927ab7e7/) | ⚠️ Unaudited |
| Momento | unknown | ethereum | 2 deployments: ethereum [`0x0ae8b7...b76a37`](./contracts/ethereum-1/0x0ae8b74cd2d566853715800c9927f879d6b76a37/); bsc `0x1b9a8c...0c67ee` | ⚠️ Unaudited |
| MRC20 | unknown | polygon | [`0x000000...001010`](./contracts/polygon-137/0x0000000000000000000000000000000000001010/) | ⚠️ Unaudited |
| MTGY | unknown | ethereum | 2 deployments: ethereum [`0x025c9f...c8ca23`](./contracts/ethereum-1/0x025c9f1146d4d94f8f369b9d98104300a3c8ca23/); bsc [`0x025c9f...c8ca23`](./contracts/bsc-56/0x025c9f1146d4d94f8f369b9d98104300a3c8ca23/) | ⚠️ Unaudited |
| MTGYAtomicSwap | unknown | bsc | 2 deployments: ethereum `0xa6c81e...95d919`; bsc [`0x5b88b0...03627e`](./contracts/bsc-56/0x5b88b0cfaf3f97fb1a66b16681f6e502ec03627e/) | ⚠️ Unaudited |
| MTGYOKLGSwap | unknown | bsc | 2 deployments: bsc [`0x55e1d9...91bd55`](./contracts/bsc-56/0x55e1d9d077cbee2f39f9e1a45e9f73235891bd55/); bsc `0xed5bb0...7839c5` | ⚠️ Unaudited |
| MTGYRaffle | unknown | ethereum | 2 deployments: ethereum [`0x0424f9...3bd1b7`](./contracts/ethereum-1/0x0424f9347c26a25cd8516a63692662fc013bd1b7/); bsc `0xbd3f48...ca1024` | ⚠️ Unaudited |
| MTGYSpend | unknown | ethereum | [`0x8a31f7...c573a5`](./contracts/ethereum-1/0x8a31f723fbfa371308e5f5dd637246e0f6c573a5/) | ⚠️ Unaudited |
| MTGYTrustedTimestamping | unknown | ethereum | [`0x266bff...d49eb6`](./contracts/ethereum-1/0x266bffc052a5f02d4797a3dd99c3455ac9d49eb6/) | ⚠️ Unaudited |
| MUSO | unknown | ethereum | 3 deployments: ethereum [`0x204a77...45c292`](./contracts/ethereum-1/0x204a771341fcf8b95e56b8fb3a93bdc25a45c292/); bsc `0x746bad...51ae2b`; bsc `0xc08e10...3a2dd1` | ⚠️ Unaudited |
| MyContractOwn | unknown | bsc | 3 deployments: bsc [`0x21e9d9...8d75e0`](./contracts/bsc-56/0x21e9d965404befefb80ea7bae582ab3c4c8d75e0/); bsc `0x75a6bf...e037be`; bsc `0xa8b978...919139` | ⚠️ Unaudited |
| OKLGRewards | unknown | ethereum | [`0x24bc6f...d668c4`](./contracts/ethereum-1/0x24bc6f1f7d954345c989be71934d2396c0d668c4/) | ⚠️ Unaudited |
| Ownable | governance | bsc | [`0xf0720d...dda0c9`](./contracts/bsc-56/0xf0720d11feab2dfe53666039dd6186fc1cdda0c9/) | ⚠️ Unaudited |
| PabloEscoMars | unknown | bsc | [`0xa03c49...fa91c8`](./contracts/bsc-56/0xa03c494ed39aa54f9b1d85647a54670f54fa91c8/) | ⚠️ Unaudited |
| PigToken | token | ethereum | [`0x92446b...fe820e`](./contracts/ethereum-1/0x92446b00281dc85185053fe4d7e5062f65fe820e/) | ⚠️ Unaudited |
| PriceOracleProxyUSD | operational_periphery | avalanche | 4 deployments: avalanche [`0x107b31...b8555a`](./contracts/avalanche-43114/0x107b31d84bf6cec672f3af924471bb6f4fb8555a/); avalanche `0x99f873...ec2bd3`; avalanche `0xd7ae65...10bc2e`; avalanche `0xe34309...114482` | ⚠️ Unaudited |
| ProxyAdmin | governance | avalanche | [`0x1035b0...c3d784`](./contracts/avalanche-43114/0x1035b0c31d92d5a8cd9efcc9ed240aaa64c3d784/) | ⚠️ Unaudited |
| Quick | unknown | polygon | [`0x831753...33dc13`](./contracts/polygon-137/0x831753dd7087cac61ab5644b308642cc1c33dc13/) | ⚠️ Unaudited |
| QuickConverter | unknown | polygon | 3 deployments: polygon [`0x38e8d7...5239ea`](./contracts/polygon-137/0x38e8d77f4b651fb989c8b5ad274346dd5b5239ea/); polygon `0x66f312...6990e9`; polygon `0x8e396f...f5e758` | ⚠️ Unaudited |
| ramx | unknown | bsc | [`0x48f8aa...a4986b`](./contracts/bsc-56/0x48f8aabe54397f24b7eae3f0da39f1e2a2a4986b/) | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | avalanche | 4 deployments: avalanche [`0x227449...a14885`](./contracts/avalanche-43114/0x2274491950b2d6d79b7e69b683b482282ba14885/); avalanche `0x45b2c4...420324`; avalanche `0x7dcdb8...ec03b6`; avalanche `0xe72438...4d3f99` | ⚠️ Unaudited |
| SharkGirl | unknown | bsc | [`0x2f2b08...c4d269`](./contracts/bsc-56/0x2f2b08d78cdec1d610f1356175ff14e0cbc4d269/) | ⚠️ Unaudited |
| ShepherdInu | unknown | bsc | [`0x5efe9c...d40651`](./contracts/bsc-56/0x5efe9c3e5b43580328104da18a091ce6a3d40651/) | ⚠️ Unaudited |
| ShibFenInu | unknown | bsc | 2 deployments: ethereum `0x698072...f9579c`; bsc [`0x190803...e38340`](./contracts/bsc-56/0x1908036ae6324ed8e38e5884dcced4a943e38340/) | ⚠️ Unaudited |
| SimpleRewarderPerSec | unknown | avalanche | 9 deployments: avalanche [`0x05d06a...5a3388`](./contracts/avalanche-43114/0x05d06afb994047acee8c205500ab1aa25c5a3388/); avalanche `0x0babed...ab3689`; avalanche `0x692782...8e8551`; avalanche `0x88e026...5dda60`; avalanche `0x89ecdd...033f00`; avalanche `0x9f509a...5b896c`; avalanche `0xd0c23f...0c2fa1`; avalanche `0xe73477...628cd3`; avalanche `0xeb1f56...6e0b55` | ⚠️ Unaudited |
| SimpleToken | token | bsc | 2 deployments: bsc [`0xaa9b83...06f569`](./contracts/bsc-56/0xaa9b835784d0f9ff2a2a14dd1c395ca58e06f569/); bsc `0xc3ae8d...02fa20` | ⚠️ Unaudited |
| SplitBuysAndSells | unknown | bsc | [`0x4925cb...ef6d28`](./contracts/bsc-56/0x4925cb9390a3e4bd3f43f8a208e437f65aef6d28/) | ⚠️ Unaudited |
| Spooky | unknown | bsc | 6 deployments: bsc [`0x016484...71e011`](./contracts/bsc-56/0x0164845b9ebeefb0888728013f0b727a1671e011/); bsc `0x3f4cdb...16a647`; bsc `0x5c2723...b9ebe4`; bsc `0x612e35...8ddc93`; bsc `0x6c19e8...76ce70`; bsc `0x7818bd...eed948` | ⚠️ Unaudited |
| SpookyShiba | unknown | bsc | 4 deployments: bsc [`0x68e858...90314c`](./contracts/bsc-56/0x68e85862a4c48cc5697c31e6609d13f86f90314c/); bsc `0xad1bb8...9c597d`; bsc `0xe3a551...7783f7`; bsc `0xed74bc...4334a4` | ⚠️ Unaudited |
| SpookyShiba_V2 | unknown | bsc | 2 deployments: bsc [`0x7ea299...24ce21`](./contracts/bsc-56/0x7ea29936a330844f307d4e0af9c1b9182424ce21/); bsc `0x9c2b1b...1bf25a` | ⚠️ Unaudited |
| StakingRewardsFactory | registry | polygon | 30 deployments: polygon [`0x02a2d8...537e1c`](./contracts/polygon-137/0x02a2d80ce5c021a40aec9062a6273bbc33537e1c/); polygon `0x122cfe...94bef6`; polygon `0x17d0a9...331e39`; polygon `0x29d051...17d503`; polygon `0x3b8fed...9a3417`; polygon `0x3d2360...2c83b6`; polygon `0x421267...809e16`; polygon `0x54806f...f35291`; polygon `0x6a0517...43de22`; polygon `0x6a1b56...551548`; polygon `0x729129...32c4ae`; polygon `0x80f130...67eb49`; polygon `0x8a121a...7d990d`; polygon `0x91f16b...c3908e`; polygon `0x9d451d...f11e80`; polygon `0x9f1700...aab86c`; polygon `0xa239ac...2705b4`; polygon `0xa7f8ea...97486b`; polygon `0xacd9d3...440197`; polygon `0xad41f5...edbffe`; polygon `0xbd20fa...102b69`; polygon `0xbd4b6c...1e7e30`; polygon `0xce2944...e3a354`; polygon `0xe592ed...e00d8f`; polygon `0xe8af51...8ea4a6`; polygon `0xe9944f...42df09`; polygon `0xeaff1f...723d8c`; polygon `0xeba917...f64162`; polygon `0xed113a...42efaf`; polygon `0xf48ac6...3acd02` | ⚠️ Unaudited |
| TokenPresaleBridge | operational_periphery | bsc | [`0x72684b...b2d7cb`](./contracts/bsc-56/0x72684be0d98ef4f725c915622be4eb1d49b2d7cb/) | ⚠️ Unaudited |
| TokenVesting | operational_periphery | avalanche | 126 deployments: avalanche [`0x0147c0...0ef296`](./contracts/avalanche-43114/0x0147c0212ca4aba29d26dffd3c800893080ef296/); avalanche `0x01b269...2145e3`; avalanche `0x02d632...cab641`; avalanche `0x0473f2...2465a9`; avalanche `0x0584e6...2fd302`; avalanche `0x072c47...6f97f6`; avalanche `0x076917...72cd75`; avalanche `0x089ec7...c22dcc`; avalanche `0x0a3b77...972c0e`; avalanche `0x0a64e8...3b0d7b`; avalanche `0x0cc47a...66a557`; avalanche `0x0f9e96...06e27b`; avalanche `0x0fb72b...faf162`; avalanche `0x0fefca...fb54b0`; avalanche `0x10f672...cb5029`; avalanche `0x123780...dfb337`; avalanche `0x132492...ce10d3`; avalanche `0x14d458...664301`; avalanche `0x14f28f...36e08a`; avalanche `0x156539...0feae4`; avalanche `0x16f419...8ed79e`; avalanche `0x1771ba...dba954`; avalanche `0x1a7727...4c30a9`; avalanche `0x1b2d91...9b440c`; avalanche `0x1fcfde...5501ad`; avalanche `0x23eb41...18f628`; avalanche `0x25dd4a...29d7cc`; avalanche `0x2a834d...086401`; avalanche `0x2aa5ee...75d2da`; avalanche `0x2cd215...1de38b`; avalanche `0x2d92ee...e048eb`; avalanche `0x31ba32...d859ce`; avalanche `0x357211...f67b1c`; avalanche `0x386fbf...122329`; avalanche `0x3c3246...0354ec`; avalanche `0x3c9211...d7b5d9`; avalanche `0x3cb560...eaad04`; avalanche `0x3ccfc1...2f8e24`; avalanche `0x3dca53...a60a63`; avalanche `0x3e6125...01acd1`; avalanche `0x3e9263...ff864d`; avalanche `0x43feff...682414`; avalanche `0x444d68...6890fe`; avalanche `0x45acb6...587d87`; avalanche `0x4d0b73...377313`; avalanche `0x4e931f...112538`; avalanche `0x52d69a...5ea435`; avalanche `0x5410c2...e4c118`; avalanche `0x5caaf1...006e22`; avalanche `0x5d57f6...899c7c`; avalanche `0x5da155...5405ca`; avalanche `0x5f0902...865095`; avalanche `0x5fe9ad...5ec7ec`; avalanche `0x61ecdb...ff90e2`; avalanche `0x627237...7e9f80`; avalanche `0x650967...76f430`; avalanche `0x66b145...f3142d`; avalanche `0x66fa31...7efb63`; avalanche `0x670968...198eec`; avalanche `0x68b28f...264bff`; avalanche `0x6af7e2...eec3a5`; avalanche `0x6baa88...3a4db8`; avalanche `0x6d3431...368edb`; avalanche `0x6ee70b...031ec7`; avalanche `0x703473...b96460`; avalanche `0x70466e...ad27cc`; avalanche `0x70a5e4...be307b`; avalanche `0x70f7d4...5ac7da`; avalanche `0x73cd07...6e9ca0`; avalanche `0x763dc8...e64864`; avalanche `0x76eaa1...f63008`; avalanche `0x770b6e...b264f3`; avalanche `0x7a609a...dc490e`; avalanche `0x7d0a30...311326`; avalanche `0x7e4d8a...31c1d4`; avalanche `0x7e9499...22063f`; avalanche `0x7ef4e0...b975e0`; avalanche `0x7fa453...bcb6fe`; avalanche `0x810998...cbf66d`; avalanche `0x815cbe...a2c9ee`; avalanche `0x81a003...98237e`; avalanche `0x8637eb...08636d`; avalanche `0x868848...43cc3b`; avalanche `0x872f15...f8030f`; avalanche `0x895a53...1c02e7`; avalanche `0x8b58a5...662afc`; avalanche `0x90bbc3...1f6fce`; avalanche `0x927be1...50848b`; avalanche `0x948cf2...566e8f`; avalanche `0x952d82...56d57e`; avalanche `0x96a6b2...c20718`; avalanche `0x971156...997c50`; avalanche `0x99727c...f4e01e`; avalanche `0x9b711b...f3bc5c`; avalanche `0x9c5b9e...0e135d`; avalanche `0x9eb54a...793200`; avalanche `0x9f8c00...b7c983`; avalanche `0x9fcb6b...63fa1c`; avalanche `0xa526c8...419d97`; avalanche `0xafb2aa...c7fe8b`; avalanche `0xb2d98a...191cf1`; avalanche `0xb31a19...0dfec0`; avalanche `0xb3d05b...b8a30e`; avalanche `0xb7b46f...693e26`; avalanche `0xb864ba...3d274e`; avalanche `0xc3e997...2b3429`; avalanche `0xc6001b...669249`; avalanche `0xc698d4...74673c`; avalanche `0xcbaf30...c15965`; avalanche `0xcdac33...30fbeb`; avalanche `0xd60366...fa5360`; avalanche `0xdc0d42...a187a7`; avalanche `0xddf06d...a4fd9d`; avalanche `0xde8cb3...79d652`; avalanche `0xdf1339...ef8fe7`; avalanche `0xdf781b...242aa4`; avalanche `0xe5ba4d...cd298b`; avalanche `0xea347e...d6d0c3`; avalanche `0xec8184...dd7d1a`; avalanche `0xf19c35...ecb452`; avalanche `0xf2eb59...734279`; avalanche `0xfa4329...6abf9b`; avalanche `0xfa4ceb...0a1846`; avalanche `0xfb0586...1a3fe9`; avalanche `0xfc22e8...d56a25`; avalanche `0xfc2f38...747bbb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | avalanche | 2 deployments: avalanche [`0x2f4391...bb5140`](./contracts/avalanche-43114/0x2f4391579839c5e3bcd6d471ea4aab3de0bb5140/); avalanche `0x592f70...419f37` | ⚠️ Unaudited |
| TripleSlopeRateModel | operational_periphery | avalanche | 3 deployments: avalanche [`0x3c5486...f73682`](./contracts/avalanche-43114/0x3c5486b85faae29b071f2a616a59ca7bf8f73682/); avalanche `0x82ea6f...08038e`; avalanche `0xe6ffd9...f3ba6e` | ⚠️ Unaudited |
| UniswapV2Factory | registry | polygon | 2 deployments: ethereum `0x5c69be...c5aa6f`; polygon [`0x575737...d3ab32`](./contracts/polygon-137/0x5757371414417b8c6caad45baef941abc7d3ab32/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | 2 deployments: ethereum [`0x7250f7...7dc1f9`](./contracts/ethereum-1/0x7250f7e97a4338d2bd72abc4b010d7a8477dc1f9/); polygon `0xf3c62d...c224e2` | ⚠️ Unaudited |
| Uptrend | unknown | bsc | [`0xc4ed75...552d23`](./contracts/bsc-56/0xc4ed752d658989fe86db8ddad3f6f19271552d23/) | ⚠️ Unaudited |
| VamToken | token | polygon | 11 deployments: polygon [`0x1512d2...9cfbc8`](./contracts/polygon-137/0x1512d268a94ce119eacbf80139ad7910eb9cfbc8/); polygon `0x1bd1fa...9a7fda`; polygon `0x1c165a...be6eec`; polygon `0x4b44cd...bcab4b`; polygon `0x4e1470...5263ef`; polygon `0x547620...fd33e8`; polygon `0x7732d1...9fdcee`; polygon `0xa3900a...59b542`; polygon `0xbee2bd...5adca5`; polygon `0xd8e8b9...6d20e7`; polygon `0xe6df55...24b291` | ⚠️ Unaudited |
| VeJoeStaking | unknown | avalanche | 2 deployments: avalanche [`0x4b4e08...7fbc17`](./contracts/avalanche-43114/0x4b4e0888091fb1de74a7e7404b2dc4eb897fbc17/); avalanche `0xdefdbe...e4e933` | ⚠️ Unaudited |
| veRise | unknown | ethereum | 4 deployments: ethereum [`0xdba7b2...072f1b`](./contracts/ethereum-1/0xdba7b24257fc6e397cb7368b4bc922e944072f1b/); bsc [`0xdba7b2...072f1b`](./contracts/bsc-56/0xdba7b24257fc6e397cb7368b4bc922e944072f1b/); polygon [`0xdba7b2...072f1b`](./contracts/polygon-137/0xdba7b24257fc6e397cb7368b4bc922e944072f1b/); avalanche [`0xdba7b2...072f1b`](./contracts/avalanche-43114/0xdba7b24257fc6e397cb7368b4bc922e944072f1b/) | ⚠️ Unaudited |
| VOLT | unknown | ethereum | 2 deployments: ethereum [`0x7db5af...6a58ac`](./contracts/ethereum-1/0x7db5af2b9624e1b3b4bb69d6debd9ad1016a58ac/); bsc [`0x7db5af...6a58ac`](./contracts/bsc-56/0x7db5af2b9624e1b3b4bb69d6debd9ad1016a58ac/) | ⚠️ Unaudited |
| VoltInu | unknown | ethereum | 2 deployments: ethereum [`0x7f792d...799aca`](./contracts/ethereum-1/0x7f792db54b0e580cdc755178443f0430cf799aca/); bsc [`0x7f792d...799aca`](./contracts/bsc-56/0x7f792db54b0e580cdc755178443f0430cf799aca/) | ⚠️ Unaudited |
| WMATIC | unknown | polygon | [`0x0d500b...df1270`](./contracts/polygon-137/0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270/) | ⚠️ Unaudited |
| Zap | adapter | avalanche | [`0x2c7b8e...d02027`](./contracts/avalanche-43114/0x2c7b8e971c704371772edaf16e0db381a8d02027/) | ⚠️ Unaudited |
| ZillaPump | unknown | bsc | [`0x129107...e6a9e7`](./contracts/bsc-56/0x1291072002b37410573c5bc856e7c33830e6a9e7/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (3)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MTGYAirdropper | unknown | bsc | 5 deployments: ethereum `0x87db34...fc8a97`; ethereum `0x9e2618...f93902`; bsc [`0x7ae49b...9ffeaa`](./contracts/bsc-56/0x7ae49b71ad3207b6d3f457bb095e1a2c829ffeaa/); bsc `0x9c171a...0e0b01`; bsc `0xc3f2a5...017272` | ⚠️ Unaudited (bytecode match) |
| MTGYFaaS | unknown | bsc | 12 deployments: ethereum `0x207b1a...1d3c39`; ethereum `0x306996...d4aab7`; ethereum `0x5cfc47...3534e1`; ethereum `0x7c20db...c0c51d`; ethereum `0xf99693...89b32a`; bsc [`0x117247...20c94f`](./contracts/bsc-56/0x1172476e8dbb8dfe6ea0bd9d312f85c9da20c94f/); bsc `0x1b4349...cbdba3`; bsc `0x1e0110...a3fda4`; bsc `0x1e07f7...48a878`; bsc `0x30f401...43d35e`; bsc `0xaa0c28...5fe7e7`; bsc `0xac2f4e...426d56` | ⚠️ Unaudited (bytecode match) |
| MTGYPasswordManager | unknown | bsc | 3 deployments: ethereum `0xc8dd32...6619e2`; bsc [`0x2f74df...86b28f`](./contracts/bsc-56/0x2f74dfc0753d9dd7e67a27ef8789745a8086b28f/); bsc `0xf67f6a...a04524` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (147)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x27c681...9fae78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x478c18...0523d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x48d6f1...51713d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8f7051...786b83` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0002f7...886801` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x00a931...8a79ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x09ae3f...274928` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0f230a...55116f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x104084...b63777` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x167d63...164682` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1d6cc2...a025f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x28d182...fa6d40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2a70b0...292a05` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2de069...94c578` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x30c617...8388be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x319652...e357eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3d2c8a...c0556d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x47a576...23d629` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x49eecf...a6b59f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4ce46b...8bdafb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4dcc38...24b4e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4e2d42...d7682a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x51807e...2a73dc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x519cb8...e48a82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5cfc47...3534e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6d0274...b9dbed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6e7373...52122d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x756935...5482ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x79cde6...154b3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7b010a...3bf7f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x821aae...b532bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x82a70b...68fd7f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8f0e6c...08f8a3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8f7051...786b83` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x92bce7...868764` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x967e99...bc543c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x996f22...2d900c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9b1307...abe91d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9dcc41...8f2bb0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa5b65a...5eabce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa66d3d...e9e3ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb2520b...2ecfc3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb2be0d...83f7fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb7848a...7deae9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xba1f44...4b8930` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc00d97...6d6eff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc51b79...50ed09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc8ae5e...37450d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcb6308...fb69a1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcbfbb8...b16fbe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcc5233...397808` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd04fb4...31b6eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd49015...0f9a08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd736f8...2636d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd7cc2f...62bbf2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdbd8e0...dea723` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xddc2b5...e2716e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xde761a...b22d04` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe01395...66c029` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe06eca...03d2a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe4fa55...1fd386` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe97c82...840e2e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe9d45f...33479d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xefd47d...07c2b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf28632...972307` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf33c8b...0b374d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf51576...95d61c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf60542...f9a116` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf7ca44...8199c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfdac84...28ae89` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfe1490...82d7d9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x019901...554481` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4087f5...4eaea8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x55bee1...a3ef1d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x56c216...4e181e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5eced2...8c91d6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6207a6...af1c8c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x82831e...3e22a4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb28862...2f8bfb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc7efb3...a918ca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc91572...f6f690` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe86ba9...d32599` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf134b2...8c771b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf6ad3c...59adcd` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x152ee6...e61be3` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x595036...f4d32b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xde62a6...299383` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x05300c...4d6df6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x07dfe5...25a922` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0b94d3...de5864` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0e1ec3...18ad6e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x160bb4...c9b38f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x16c553...a1ecc0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x18ce97...5d8b83` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x195759...1298a5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1a6708...8f0849` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1af353...2d232c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1c4b41...62c452` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x22a8e3...b6477d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x250a0a...a109b2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x33fa3d...eb35c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3a0fa8...cef572` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3bcda0...54f1c9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x47d99d...044f0a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4acc99...ae7f2c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x54fe8e...c86fb0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x587b32...1f41c8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5b4dfd...fef862` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5bbfa5...13fe20` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5cfca5...4c6b9c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5e1e12...a424ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x623877...c2f037` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x65f17e...5d0ac7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6b516b...5adbc9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6c6f89...ee6459` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x77b995...6403e6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7aca03...0a9e53` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7d9d90...e87740` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8165aa...aec225` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x884d2e...9d0861` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x931b5d...5989ba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x997fba...2bb073` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa1246c...5f83fc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa2008a...a840d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa49fac...a38f53` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa4e65d...7c55fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa60ef5...28b9d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa71a7c...2959fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaeee31...aaf61c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb06b46...16bce3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb5a917...27f800` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbaf1a2...8cb510` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbb09ac...9bfec4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbb83b6...72d204` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbc05fb...ac21e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbf7023...d0aa78` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc35660...2350bd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc63085...9158e6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc7d35c...395be5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd12cf5...1e3075` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd19dac...9c9c04` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdad1d7...881ac3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdc3b37...8a1e1a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe59bb0...04d0d7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe8a191...529707` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf47b8c...d61dc6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf975aa...68ecbd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/everrise) | CertiK | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [02_Smart_Contract_Audit_EverRise_Token_Staking_v3.pdf](https://github.com/chainsulting/Smart-Contract-Security-Audits/blob/master/EverRise/02_Smart_Contract_Audit_EverRise_Token_Staking_v3.pdf) | chainsulting | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x6e84a6...bc0fdd`](./contracts/avalanche-43114/0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd/) | JoeToken | token | $20,849,952.95 | Verified native implementation with $20,849,952.95 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x871848...c18df3`](./contracts/bsc-56/0x87184884fc32594d4e347874cbd8294d61c18df3/) | CellToken | token | $1,539,072.18 | Verified native implementation with $1,539,072.18 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x125ce3...d680ad`](./contracts/bsc-56/0x125ce3f13950c5fa94397927f88c352fded680ad/) | CoinSackToken | token | $260,000.00 | Verified native implementation with $260,000.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x193146...6c5220`](./contracts/bsc-56/0x1931461c770509cc20aca503d3c5637e7b6c5220/) | MetaFloki | token | $44,685.40 | Verified native implementation with $44,685.40 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3ffdb9...f16e54`](./contracts/bsc-56/0x3ffdb968b20c95e3f7f33182482903ed37f16e54/) | ERC721Staking | token | $820.62 | Verified native implementation with $820.62 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd307e6...e11507`](./contracts/bsc-56/0xd307e64c0c0e70eaa463926e4c2dd7370de11507/) | ARMADA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x458d0a...6e7635`](./contracts/bsc-56/0x458d0af4a1971958cd50c068fff8ad755a6e7635/) | ArmadaOwn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2d1e2e...ac6a42`](./contracts/avalanche-43114/0x2d1e2e2fdab5047b5227e8c16e01432699ac6a42/) | BadBuildersClubSoulbound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x217945...8266e9`](./contracts/avalanche-43114/0x217945d4cb3386420252da73743f1730f38266e9/) | BoostedMasterChefJoe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1dd4d8...ab5741`](./contracts/avalanche-43114/0x1dd4d86180eee39ac4fb35eca67cacf608ab5741/) | BoringHelperV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2298c7...d5c10c`](./contracts/bsc-56/0x2298c7d99ac8d4dba12d50c174d77e7857d5c10c/) | BuffedFeg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf8c35f...7a501b`](./contracts/bsc-56/0xf8c35f136f3ef177d7d65484a4de7502e67a501b/) | CAKEBAKER | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaff905...2d4f34`](./contracts/avalanche-43114/0xaff90532e2937ff290009521e7e120ed062d4f34/) | Cliff | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0d472c...94dc7d`](./contracts/bsc-56/0x0d472c572f4c785cc0c5a92ff7f81038ed94dc7d/) | CMT_v2_B_TR_NC_X | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x65bf1d...3a4462`](./contracts/bsc-56/0x65bf1d8f715c9a602c02adc91a231e5cd43a4462/) | CoinSackEverOwnWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x31c46c...172684`](./contracts/bsc-56/0x31c46cf200b0e7cb6eca777f79bd9327e9172684/) | CS721Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2cefa0...6d456d`](./contracts/bsc-56/0x2cefa0dd58aa85a4085f28056a96b0c5446d456d/) | CS721Listings | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xadaf18...e6e398`](./contracts/avalanche-43114/0xadaf18d79f316005542da4ecb1624b59c4e6e398/) | CustomMasterChefJoeV2Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x199f78...db33de`](./contracts/bsc-56/0x199f788ddb566b7ebb59bf35b36914f2acdb33de/) | DeFido | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4883bd...131f12`](./contracts/bsc-56/0x4883bd9e85a0737f3141b613ff80ce00fa131f12/) | DexUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbd573d...4d24e3`](./contracts/bsc-56/0xbd573ddc3ab93d7984012b897821f6c09f4d24e3/) | DiamondQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x02e81c...d6ab5b`](./contracts/bsc-56/0x02e81cc68c8528b380dc722b98c02ee642d6ab5b/) | DittoInu | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xf28164...8a16b1`](./contracts/polygon-137/0xf28164a485b0b2c90639e47b0f377b4a438a16b1/) | DragonLair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb72962...b187e6`](./contracts/bsc-56/0xb72962568345253f71a18318d67e13a282b187e6/) | EFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78ab99...d3a69d`](./contracts/ethereum-1/0x78ab99dae7302ea91e36962f4b23418a89d3a69d/) | EverOwn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb5d68d...4af2d9`](./contracts/bsc-56/0xb5d68dad8761edefcf111b1f33146c4aa24af2d9/) | FirstFeg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8a63d4...7eeec1`](./contracts/bsc-56/0x8a63d4d5191417cce9471af059b2b3c7187eeec1/) | FixedAPYStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf55503...37a134`](./contracts/bsc-56/0xf5550372883edc8e1216d69c221f1c3a9837a134/) | FrankBeans | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe19e37...c469a9`](./contracts/bsc-56/0xe19e37d08b43c55d8d4fc39b2a94e54f67c469a9/) | HomelessAsuka | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4247c5...bcdcfe`](./contracts/avalanche-43114/0x4247c5dbac51a135939cc904c34e4913b6bcdcfe/) | JoeMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdb5b4c...a475d3`](./contracts/avalanche-43114/0xdb5b4cc0276389a943dba9eb07a97c10e8a475d3/) | JoeMakerV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5472e9...9370b5`](./contracts/avalanche-43114/0x5472e98d22b0fb7ec5c3e360788b8700419370b5/) | JoePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xacff0f...0bcb58`](./contracts/avalanche-43114/0xacff0fbf56baeb9ef677de19aded8f7a950bcb58/) | JoeRoll | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1ed836...92cfcb`](./contracts/avalanche-43114/0x1ed8368ca83437dbf43e50e85e6f82342e92cfcb/) | Joetroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x003771...546e90`](./contracts/bsc-56/0x003771227d08ac9961b9160b1219fef136546e90/) | JoinCoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd022ba...cddbcb`](./contracts/bsc-56/0xd022bafdbf430555b42d4a6808758bcbedcddbcb/) | JoinCoinStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xad6377...83ff69`](./contracts/bsc-56/0xad6377402f47cc6f6c1d46b7ba5bfd005b83ff69/) | JOY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d0274...b9dbed`](./contracts/ethereum-1/0x6d02744ef4418cb0d72f54c1ee53140430b9dbed/) | KetherNFTLoaner | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3785ef...5f0015`](./contracts/bsc-56/0x3785ef92484595d88e71db773ef64f12695f0015/) | KingDoge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x84f4f7...22316c`](./contracts/bsc-56/0x84f4f7cdb4574c9556a494dab18ffc1d1d22316c/) | KINGSHIBA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5990a2...2931cd`](./contracts/bsc-56/0x5990a27bccaf2ea39d3e8ff1fd29c60bf02931cd/) | KishuForever | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4a2a0f...74fc2e`](./contracts/bsc-56/0x4a2a0f1e90265a7e35713648f64a9a019f74fc2e/) | LadyGagaFan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3dbfc6...556321`](./contracts/bsc-56/0x3dbfc6387560a7216174a367573290db14556321/) | Landarno | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x868652...7999f2`](./contracts/ethereum-1/0x8686525d6627a25c68de82c228448f43c97999f2/) | Lilly | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd6a4f1...f53052`](./contracts/avalanche-43114/0xd6a4f121ca35509af06a0be99093d08462f53052/) | MasterChefJoeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x188bed...c18f00`](./contracts/avalanche-43114/0x188bed1968b795d5c9022f6a0bb5931ac4c18f00/) | MasterChefJoeV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ae8b7...b76a37`](./contracts/ethereum-1/0x0ae8b74cd2d566853715800c9927f879d6b76a37/) | Momento | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x025c9f...c8ca23`](./contracts/ethereum-1/0x025c9f1146d4d94f8f369b9d98104300a3c8ca23/) | MTGY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5b88b0...03627e`](./contracts/bsc-56/0x5b88b0cfaf3f97fb1a66b16681f6e502ec03627e/) | MTGYAtomicSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x55e1d9...91bd55`](./contracts/bsc-56/0x55e1d9d077cbee2f39f9e1a45e9f73235891bd55/) | MTGYOKLGSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0424f9...3bd1b7`](./contracts/ethereum-1/0x0424f9347c26a25cd8516a63692662fc013bd1b7/) | MTGYRaffle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a31f7...c573a5`](./contracts/ethereum-1/0x8a31f723fbfa371308e5f5dd637246e0f6c573a5/) | MTGYSpend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x266bff...d49eb6`](./contracts/ethereum-1/0x266bffc052a5f02d4797a3dd99c3455ac9d49eb6/) | MTGYTrustedTimestamping | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x204a77...45c292`](./contracts/ethereum-1/0x204a771341fcf8b95e56b8fb3a93bdc25a45c292/) | MUSO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x21e9d9...8d75e0`](./contracts/bsc-56/0x21e9d965404befefb80ea7bae582ab3c4c8d75e0/) | MyContractOwn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24bc6f...d668c4`](./contracts/ethereum-1/0x24bc6f1f7d954345c989be71934d2396c0d668c4/) | OKLGRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa03c49...fa91c8`](./contracts/bsc-56/0xa03c494ed39aa54f9b1d85647a54670f54fa91c8/) | PabloEscoMars | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92446b...fe820e`](./contracts/ethereum-1/0x92446b00281dc85185053fe4d7e5062f65fe820e/) | PigToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x831753...33dc13`](./contracts/polygon-137/0x831753dd7087cac61ab5644b308642cc1c33dc13/) | Quick | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x38e8d7...5239ea`](./contracts/polygon-137/0x38e8d77f4b651fb989c8b5ad274346dd5b5239ea/) | QuickConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x48f8aa...a4986b`](./contracts/bsc-56/0x48f8aabe54397f24b7eae3f0da39f1e2a2a4986b/) | ramx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x227449...a14885`](./contracts/avalanche-43114/0x2274491950b2d6d79b7e69b683b482282ba14885/) | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2f2b08...c4d269`](./contracts/bsc-56/0x2f2b08d78cdec1d610f1356175ff14e0cbc4d269/) | SharkGirl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5efe9c...d40651`](./contracts/bsc-56/0x5efe9c3e5b43580328104da18a091ce6a3d40651/) | ShepherdInu | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x190803...e38340`](./contracts/bsc-56/0x1908036ae6324ed8e38e5884dcced4a943e38340/) | ShibFenInu | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x05d06a...5a3388`](./contracts/avalanche-43114/0x05d06afb994047acee8c205500ab1aa25c5a3388/) | SimpleRewarderPerSec | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xaa9b83...06f569`](./contracts/bsc-56/0xaa9b835784d0f9ff2a2a14dd1c395ca58e06f569/) | SimpleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4925cb...ef6d28`](./contracts/bsc-56/0x4925cb9390a3e4bd3f43f8a208e437f65aef6d28/) | SplitBuysAndSells | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x02a2d8...537e1c`](./contracts/polygon-137/0x02a2d80ce5c021a40aec9062a6273bbc33537e1c/) | StakingRewardsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x72684b...b2d7cb`](./contracts/bsc-56/0x72684be0d98ef4f725c915622be4eb1d49b2d7cb/) | TokenPresaleBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0147c0...0ef296`](./contracts/avalanche-43114/0x0147c0212ca4aba29d26dffd3c800893080ef296/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc4ed75...552d23`](./contracts/bsc-56/0xc4ed752d658989fe86db8ddad3f6f19271552d23/) | Uptrend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1512d2...9cfbc8`](./contracts/polygon-137/0x1512d268a94ce119eacbf80139ad7910eb9cfbc8/) | VamToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdba7b2...072f1b`](./contracts/ethereum-1/0xdba7b24257fc6e397cb7368b4bc922e944072f1b/) | veRise | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7db5af...6a58ac`](./contracts/ethereum-1/0x7db5af2b9624e1b3b4bb69d6debd9ad1016a58ac/) | VOLT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f792d...799aca`](./contracts/ethereum-1/0x7f792db54b0e580cdc755178443f0430cf799aca/) | VoltInu | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x129107...e6a9e7`](./contracts/bsc-56/0x1291072002b37410573c5bc856e7c33830e6a9e7/) | ZillaPump | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 138 |
| upstream | 13 |
| standard_library | 9 |
| needs_review | 98 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3046] DL audit link
- [3047] 02_Smart_Contract_Audit_EverRise_Token_Staking_v3.pdf

Fork inheritance lineage and inherited audits are included when available.
