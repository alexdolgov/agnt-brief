# Agentic Audit Brief: Rysk Finance

## Project Overview

- Project: Rysk Finance (`rysk-finance`)
- Website: [https://app.rysk.finance/join?code=DEFILLAMA](https://app.rysk.finance/join?code=DEFILLAMA)
- Lifecycle: active (Tier 0, 33.1% below peak)
- Generated: 2026-06-17T07:00:43.700Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, ethereum, hyperliquid
- Contract surface: 68 unique implementations (331 raw deployments)
- DeFi Llama TVL: $47,307,420.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Rysk Finance is a DeFi protocol currently positioned around earning upfront yield or premium on crypto assets, described by DefiLlama as providing crypto uncorrelated returns. Its deployed contract surface includes options-related components such as Otoken contracts, MarginPool-style contracts, LiquidityPool deployments, and related registry or infrastructure components, rather than a single shared MarginPool across all product families.

### Architecture

The families share a common MarginPool contract used in both Rysk Premium and HyperEVM for asset management. Rysk V1's hedging reactor may interact with the options or liquidity pools from other families, while Rysk V12's oracle and unit contracts provide infrastructure for cross-chain operations and pricing across the protocol.

## Contract Surface Quality

- Indexed contracts: 900; live-surface contracts included: 331 (297 live, 34 unknown).
- Excluded by liveness: 243 inactive, 326 singleton, 0 uninitialized.
- Deployment units: 0/163 live.
- Detected codebases: none
- Unverified dependencies: 1/12.

## Audit Coverage Summary

- Verified implementations audited: 0/38 (0.0%)
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 30
- Unique implementations: 68
- Raw deployments: 331
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressBook | unknown | ethereum | n/a | 27 deployments: ethereum [`0x015797...5f6657`](./contracts/ethereum-1/0x015797ee212cdb5d3242a6f9d3d4bfbf1f5f6657/); ethereum `0x09be7b...85d797`; ethereum `0x18ee48...5e8fbf`; ethereum `0x487db6...1695e3`; ethereum `0x543453...0e175b`; ethereum `0x65852e...d562e7`; ethereum `0x664b53...02dc58`; ethereum `0x6e72f0...fc05d9`; ethereum `0x8f9d5d...083382`; ethereum `0xa0cc5e...4e6711`; ethereum `0xb6b884...89b539`; ethereum `0xb9699a...3fe822`; ethereum `0xdf1f1b...2516c4`; ethereum `0xec5e41...dfe727`; ethereum `0xf56069...52df58`; hyperliquid `0x0d6ab0...7e886b`; hyperliquid `0x0e16d4...671a46`; hyperliquid `0x12ea0e...c526b8`; hyperliquid `0x48a59f...e79339`; hyperliquid `0x6b5843...cf5092`; hyperliquid `0x7db58b...5937e5`; hyperliquid `0x9ce59a...df89ae`; hyperliquid `0xa46f64...2a0e07`; hyperliquid `0xa7321e...1f54e4`; hyperliquid `0xcfb40a...fb9bb0`; hyperliquid `0xd51de5...a3361e`; hyperliquid `0xfa26f2...800acc` | ⚠️ Unaudited |
| AlphaOptionHandler | unknown | arbitrum | n/a | [`0xc63717...50e8f8`](./contracts/arbitrum-42161/0xc63717c4436043781a63c8c64b02ff774350e8f8/) | ⚠️ Unaudited |
| AlphaPortfolioValuesFeed | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x7f9d82...91c073`](./contracts/arbitrum-42161/0x7f9d820cfc109686f2ca096ffa93dd497b91c073/); arbitrum `0xc7abae...1c68a8` | ⚠️ Unaudited |
| BeyondPricer | operational_periphery | arbitrum | n/a | [`0xea5fb1...158def`](./contracts/arbitrum-42161/0xea5fb118862876f249ff0b3e7fb25feb38158def/) | ⚠️ Unaudited |
| BlackScholes | unknown | arbitrum | n/a | [`0x85c100...68cb8c`](./contracts/arbitrum-42161/0x85c100eb32c3e2f6ea0444e553f3a9bce468cb8c/) | ⚠️ Unaudited |
| Controller | governance | hyperliquid | n/a | 13 deployments: ethereum `0x0bbe71...2927d0`; ethereum `0x2dc108...760a87`; ethereum `0x41ac90...71c5e5`; ethereum `0x4f918d...7b6e35`; ethereum `0x580dd6...b10f59`; ethereum `0x6e84cc...7fb31c`; ethereum `0x982619...211e14`; ethereum `0xc59cc2...fde2fa`; ethereum `0xd60ec8...1db0bb`; ethereum `0xffce2d...593f34`; hyperliquid [`0x082ae6...ece166`](./contracts/hyperliquid-999/0x082ae65918975d65e254946ad9d9977e0eece166/); hyperliquid `0x27469c...944bbe`; hyperliquid `0xa5a153...85ad65` | ⚠️ Unaudited |
| ControllerLogic | governance | ethereum | n/a | 21 deployments: ethereum [`0x0a435a...ba54b8`](./contracts/ethereum-1/0x0a435acfa7b8ca9b23d6ca95d8b80cf6f0ba54b8/); ethereum `0x11440d...00ab0c`; ethereum `0x14a025...615267`; ethereum `0x1ae5dd...b2bc12`; ethereum `0x1e14a1...2f0824`; ethereum `0x3c0f34...25c12e`; ethereum `0x3df997...ccc339`; ethereum `0x47a818...18ba21`; ethereum `0x5fac97...39adcb`; ethereum `0x608f8e...f78d40`; ethereum `0x619af0...a63a27`; ethereum `0x7412e7...2421f5`; ethereum `0x793ebd...e6e1cb`; ethereum `0x97461d...df98b1`; ethereum `0xf0d5c3...16ce52`; hyperliquid `0x0fcb32...6e2663`; hyperliquid `0x136f7a...780a06`; hyperliquid `0x2b16b4...a14699`; hyperliquid `0x2f3410...aa4011`; hyperliquid `0xc3e597...d5c7b5`; hyperliquid `0xfc93bb...b69012` | ⚠️ Unaudited |
| DeltaSettlerMulticall | periphery | arbitrum | n/a | 2 deployments: arbitrum [`0xa07c27...a78b60`](./contracts/arbitrum-42161/0xa07c27805b17f4e5f6ab696a9acf223b4aa78b60/); arbitrum `0xac3445...ee7db5` | ⚠️ Unaudited |
| DeltaSettlerResolver | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xba04ab...0dff20`](./contracts/arbitrum-42161/0xba04ab6357cfdba77b586cfde5da733fdb0dff20/); arbitrum `0xfbdec3...561702` | ⚠️ Unaudited |
| DHVLensMK1 | periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x8f427c...b34376`](./contracts/arbitrum-42161/0x8f427c42d00fa69a88d55c09349a2d4914b34376/); arbitrum `0xa306c0...77600d`; arbitrum `0xa9005b...d49bd1` | ⚠️ Unaudited |
| Disperse | unknown | arbitrum | n/a | [`0x77617b...2c2aa6`](./contracts/arbitrum-42161/0x77617bcb00f497f53ce8fdf70e405bab612c2aa6/) | ⚠️ Unaudited |
| GmxHedgingReactorWithSwap | unknown | arbitrum | n/a | [`0xbcd871...929736`](./contracts/arbitrum-42161/0xbcd871faaf2c36d57b0f4c006c6b0cc2e1929736/) | ⚠️ Unaudited |
| HlAlignedStableV3 | unknown | hyperliquid | n/a | [`0x111111...111111`](./contracts/hyperliquid-999/0x111111a1a0667d36bd57c0a9f569b98057111111/) | ⚠️ Unaudited |
| LiquidityPool | core_logic | hyperliquid | n/a | 8 deployments: hyperliquid [`0x0a9b3b...4db292`](./contracts/hyperliquid-999/0x0a9b3b5e6c4fde989a92ec714f24829a9b4db292/); hyperliquid `0x1e7fe1...b0f2a0`; hyperliquid `0x3f63b6...21d708`; hyperliquid `0x4ec701...086427`; hyperliquid `0x708653...7a38f6`; hyperliquid `0x8e11b7...c68ee1`; hyperliquid `0xd5a381...8e73e3`; arbitrum `0x217749...147b80` | ⚠️ Unaudited |
| Manager | governance | arbitrum | n/a | 2 deployments: arbitrum [`0xa7ad85...4d3682`](./contracts/arbitrum-42161/0xa7ad85ac7eda2807fa2d596b3ff1f9b63d4d3682/); arbitrum `0xd404d0...e41e72` | ⚠️ Unaudited |
| ManualPricer | operational_periphery | ethereum | n/a | 25 deployments: ethereum [`0x001635...0b61cd`](./contracts/ethereum-1/0x001635b6b8a0bb5dc1e901bd5908db41560b61cd/); ethereum `0xb82e16...12cd86`; ethereum `0xd17936...2b8069`; hyperliquid `0x0c5521...947fc3`; hyperliquid `0x17a552...f0b217`; hyperliquid `0x1cb17c...f73758`; hyperliquid `0x211ebd...ffe421`; hyperliquid `0x2f79da...c76451`; hyperliquid `0x3b82ed...6c6bca`; hyperliquid `0x47a818...18ba21`; hyperliquid `0x4bdcc6...5007b8`; hyperliquid `0x4fc168...94e1ce`; hyperliquid `0x5137aa...22c6f3`; hyperliquid `0x8c0cdc...707e72`; hyperliquid `0x921233...09fd44`; hyperliquid `0x92ed22...69f7ae`; hyperliquid `0x973031...60639e`; hyperliquid `0x9c2e3c...5cf008`; hyperliquid `0xa218be...f9ed61`; hyperliquid `0xaadaa0...060bf3`; hyperliquid `0xc1a011...ef0552`; hyperliquid `0xdb3c58...53e4a0`; hyperliquid `0xeb3f94...c1bada`; hyperliquid `0xf74e9d...d5fda4`; hyperliquid `0xfff371...e88ad0` | ⚠️ Unaudited |
| MarginCalculator | unknown | ethereum | n/a | 27 deployments: ethereum [`0x08edf1...f3951c`](./contracts/ethereum-1/0x08edf17746ce47d5b42ed132875ac4d51bf3951c/); ethereum `0x11c551...821631`; ethereum `0x189c97...a10251`; ethereum `0x309334...ba866f`; ethereum `0x36eb4a...482edf`; ethereum `0x3df5cc...370052`; ethereum `0x46dd66...980bc5`; ethereum `0x6c02b4...128ddb`; ethereum `0x993543...b6b9f9`; ethereum `0xa98630...ebad64`; ethereum `0xb68c0d...4a1ed7`; ethereum `0xbb4ad1...b4160e`; ethereum `0xbe8383...0a10c0`; ethereum `0xc8bc1d...ef169c`; ethereum `0xf73f37...3c2e26`; hyperliquid `0x098cb8...aaa3c5`; hyperliquid `0x106b72...d26451`; hyperliquid `0x11b439...9c8650`; hyperliquid `0x360637...a55ea3`; hyperliquid `0x4ccbee...14df4c`; hyperliquid `0x805841...03ad00`; hyperliquid `0x980729...e88c51`; hyperliquid `0x99ea22...87765a`; hyperliquid `0xb36291...90ed22`; hyperliquid `0xb94ecd...b1e421`; hyperliquid `0xd7a209...998431`; hyperliquid `0xe4b21c...32e9c6` | ⚠️ Unaudited |
| MarginPool | core_logic | hyperliquid | n/a | 21 deployments: ethereum `0x0c5521...947fc3`; ethereum `0x1763a5...d67d0e`; ethereum `0x225e95...7c0c08`; ethereum `0x24e5d9...f621ce`; ethereum `0x26be4b...da0215`; ethereum `0x43b798...08695f`; ethereum `0x4c4b78...3e8087`; ethereum `0x64dbdd...9f4e8e`; ethereum `0x694f73...4cbf5d`; ethereum `0x6a0a36...c9d0c8`; ethereum `0x761a3d...947975`; ethereum `0x7ec175...47cf0c`; ethereum `0xa77063...e177ac`; ethereum `0xb520df...cb37ef`; ethereum `0xf76f46...d7d5a0`; hyperliquid [`0x03ecdd...22e490`](./contracts/hyperliquid-999/0x03ecdd16800db7c0c0c354aceaa012746e22e490/); hyperliquid `0x315467...cb583b`; hyperliquid `0x35c508...510c92`; hyperliquid `0x40abf0...dd89fa`; hyperliquid `0xfd7d4e...46b8ce`; hyperliquid `0xff91bc...435c27` | ⚠️ Unaudited |
| MarginVault | core_logic | ethereum | n/a | 8 deployments: ethereum [`0x0f1279...1fd33b`](./contracts/ethereum-1/0x0f12791cb4dd0995912e9e3d099734ac361fd33b/); ethereum `0x16be6c...94a668`; ethereum `0x4998ff...6a0237`; ethereum `0xee79b9...b59539`; ethereum `0xf123ad...3168bf`; hyperliquid `0x8e35bc...88bd80`; hyperliquid `0x986411...ca3a2f`; hyperliquid `0xe46a96...320947` | ⚠️ Unaudited |
| NewController | governance | arbitrum | n/a | [`0x89daee...fb43bb`](./contracts/arbitrum-42161/0x89daeea463c7ddf94ce3cc17be6c755ecdfb43bb/) | ⚠️ Unaudited |
| OptionExchange | unknown | arbitrum | n/a | [`0xc117bf...aae1fa`](./contracts/arbitrum-42161/0xc117bf3103bd09552f9a721f0b8bce9843aae1fa/) | ⚠️ Unaudited |
| OptionRegistry | registry | hyperliquid | n/a | 2 deployments: hyperliquid [`0x7fa624...0778f2`](./contracts/hyperliquid-999/0x7fa624df86b76a57d153ff20a5e08905840778f2/); arbitrum `0x8bc238...3c7725` | ⚠️ Unaudited |
| OptionsCompute | unknown | arbitrum | n/a | [`0xcf2631...587a1c`](./contracts/arbitrum-42161/0xcf263127e7dff09018af1f803bd3f9db58587a1c/) | ⚠️ Unaudited |
| OpynInteractions | unknown | arbitrum | n/a | [`0xc9d885...f7d39e`](./contracts/arbitrum-42161/0xc9d8859bb5e7ac7e9a8c175bf79cecc008f7d39e/) | ⚠️ Unaudited |
| OpynPricerResolver | operational_periphery | arbitrum | n/a | [`0xdd4946...e28286`](./contracts/arbitrum-42161/0xdd494661b45ab0fab447da23ee96837746e28286/) | ⚠️ Unaudited |
| Oracle | operational_periphery | ethereum | n/a | 26 deployments: ethereum [`0x00c269...ddf48b`](./contracts/ethereum-1/0x00c26915de0faf4becf3473e845fd10599ddf48b/); ethereum `0x036215...2d5742`; ethereum `0x45c1a3...197499`; ethereum `0x4a1a32...ce8d5e`; ethereum `0x691a5f...c80d0d`; ethereum `0x706f8a...162aea`; ethereum `0x85f2cf...f694ae`; ethereum `0x865473...e5ab22`; ethereum `0x8e8ee6...3c5d45`; ethereum `0x9ef31a...569b72`; ethereum `0xc11a47...0009a7`; ethereum `0xca97e6...16d7a5`; ethereum `0xe4e94e...002c18`; ethereum `0xf46d6b...cde05f`; ethereum `0xfb7bc4...232c9b`; hyperliquid `0x12b233...13d808`; hyperliquid `0x1dfe94...79bd29`; hyperliquid `0x2075e5...bddeec`; hyperliquid `0x4e2fcd...5ca3fa`; hyperliquid `0x8b2541...785e8f`; hyperliquid `0x983117...e2987e`; hyperliquid `0x9fcfa5...3c5616`; hyperliquid `0xa2777c...8c9449`; hyperliquid `0xa5ba50...b2bca8`; hyperliquid `0xbda5ea...241a68`; hyperliquid `0xf8f27c...720c57` | ⚠️ Unaudited |
| Otoken | token | ethereum | n/a | 21 deployments: ethereum [`0x014ab1...f460ab`](./contracts/ethereum-1/0x014ab162a2fd3196990d07b5d03c6b7357f460ab/); ethereum `0x151efc...fd1667`; ethereum `0x1f1c5f...56a57b`; ethereum `0x62ce61...853f69`; ethereum `0x6aef7d...f19ba4`; ethereum `0x8fff48...06c524`; ethereum `0x90653f...d20c3c`; ethereum `0x974361...aab04d`; ethereum `0x9770b7...26062c`; ethereum `0xbcc557...984c77`; ethereum `0xce6feb...3c893e`; ethereum `0xd2e4ba...be0768`; ethereum `0xd3ba07...5910f0`; ethereum `0xd3c804...279235`; ethereum `0xff85fa...e687cc`; hyperliquid `0x03d35f...0ea3e2`; hyperliquid `0x6732b3...67ff0c`; hyperliquid `0x76b585...78ddbf`; hyperliquid `0x9c1516...16e7e9`; hyperliquid `0x9e0071...9c9c0f`; hyperliquid `0xdd7fe7...bbad24` | ⚠️ Unaudited |
| OtokenFactory | registry | ethereum | n/a | 21 deployments: ethereum [`0x005af6...2d05e2`](./contracts/ethereum-1/0x005af62e72d974b7ad83cfb3ca3d0caae32d05e2/); ethereum `0x0f9b9e...04430b`; ethereum `0x16a8f6...1e01aa`; ethereum `0x17095b...ac8fbe`; ethereum `0x36ba48...138895`; ethereum `0x48bcdc...6bbfd4`; ethereum `0x54dd1f...75b893`; ethereum `0x73ec54...088f24`; ethereum `0x81afe5...74f4c4`; ethereum `0x87e69b...b451c1`; ethereum `0x93cb32...6f6f3a`; ethereum `0xa36227...066b64`; ethereum `0xd3fed8...644e18`; ethereum `0xd65fd8...7a76fc`; ethereum `0xf572d1...800c31`; hyperliquid `0x16e9b8...588cf1`; hyperliquid `0x3a2710...8aa6dc`; hyperliquid `0x6f8e40...89a8a3`; hyperliquid `0x9f912d...2c6d76`; hyperliquid `0xad9a48...0331e5`; hyperliquid `0xb81fbb...9e21b0` | ⚠️ Unaudited |
| PerpHedgingReactorWithSwap | unknown | arbitrum | n/a | [`0xf01376...5d82c5`](./contracts/arbitrum-42161/0xf013767d55954ecccacb4914d52d2ef8f95d82c5/) | ⚠️ Unaudited |
| PremiumOptionHandler | unknown | hyperliquid | n/a | 5 deployments: hyperliquid [`0x0b60de...55b03a`](./contracts/hyperliquid-999/0x0b60debbe6c83692b5264430018a90d1c755b03a/); hyperliquid `0x5afb45...cd4abc`; hyperliquid `0x70ac8f...af6c59`; hyperliquid `0xa5913e...3b1793`; hyperliquid `0xce6141...526e38` | ⚠️ Unaudited |
| PriceFeed | operational_periphery | arbitrum | n/a | [`0x7f86ac...9590a4`](./contracts/arbitrum-42161/0x7f86ac0c38bbc3211c610abe3841847fe19590a4/) | ⚠️ Unaudited |
| QuantPositionLensMK1 | periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x8a29a5...eccaf4`](./contracts/arbitrum-42161/0x8a29a58f7a16a76949fce5c7e75c6a5047eccaf4/); arbitrum `0xaedbe9...abb8c9`; arbitrum `0xe1da05...51efd1` | ⚠️ Unaudited |
| Rysk | unknown | ethereum | n/a | [`0x4263bd...1fe1ef`](./contracts/ethereum-1/0x4263bddb3ee3593c4d92276a9f482355f61fe1ef/) | ⚠️ Unaudited |
| RyskHype | unknown | hyperliquid | n/a | 14 deployments: hyperliquid [`0x036215...2d5742`](./contracts/hyperliquid-999/0x03621534ed35bd43c069042c5362357df42d5742/); hyperliquid `0x0bcbc7...9c25ab`; hyperliquid `0x2b395f...b26183`; hyperliquid `0x2eef66...886eae`; hyperliquid `0x33e1e6...56919d`; hyperliquid `0x694f73...4cbf5d`; hyperliquid `0x716432...6dabf3`; hyperliquid `0x7412e7...2421f5`; hyperliquid `0x7a9940...4aca8a`; hyperliquid `0x8f9d5d...083382`; hyperliquid `0xc4d9d4...2769b9`; hyperliquid `0xd76e80...357b0d`; hyperliquid `0xf572d1...800c31`; hyperliquid `0xfad2ad...d14632` | ⚠️ Unaudited |
| VaultCollateralMulticall | core_logic | arbitrum | n/a | [`0x7e9ee4...3c80a5`](./contracts/arbitrum-42161/0x7e9ee45c683f6160effb56ec1253faf3f43c80a5/) | ⚠️ Unaudited |
| VaultRegistry | registry | hyperliquid | n/a | 9 deployments: hyperliquid [`0x225c87...54154d`](./contracts/hyperliquid-999/0x225c87a6a3cda65b50e59ea18be58febca54154d/); hyperliquid `0x26d7f1...4d2d02`; hyperliquid `0x3f6e89...f268ec`; hyperliquid `0x421d29...5272fe`; hyperliquid `0x425ffa...4c1885`; hyperliquid `0x5f6618...d94657`; hyperliquid `0x8ee262...5d130b`; hyperliquid `0xba3852...d0809e`; hyperliquid `0xe61925...b7010f` | ⚠️ Unaudited |
| VolatilityFeed | unknown | arbitrum | n/a | [`0xf204b6...3a0225`](./contracts/arbitrum-42161/0xf204b60a98b3be05914aec46bced2476d13a0225/) | ⚠️ Unaudited |
| Whitelist | unknown | hyperliquid | n/a | 23 deployments: ethereum `0x278202...3c9f73`; ethereum `0x2945cd...10f356`; ethereum `0x371e70...760fae`; ethereum `0x508eeb...162c3e`; ethereum `0x6f878a...08540d`; ethereum `0x847b2c...3cb371`; ethereum `0x8fa9e1...15277e`; ethereum `0x9890b8...90e85a`; ethereum `0x9ed7a2...5aff18`; ethereum `0xaadaa0...060bf3`; ethereum `0xadf708...5e37d2`; ethereum `0xcd6fe5...05c3d0`; ethereum `0xe33a51...5a1401`; ethereum `0xfccda5...edf7fa`; ethereum `0xfe3be3...14b81c`; hyperliquid [`0x04c8f2...7c4e82`](./contracts/hyperliquid-999/0x04c8f266c6031836960dbd5af8bf73a8067c4e82/); hyperliquid `0x300006...663948`; hyperliquid `0x345741...6e9012`; hyperliquid `0x6b788a...f5ecb2`; hyperliquid `0x9eaa13...3ed1f8`; hyperliquid `0xa4c06f...2164f6`; hyperliquid `0xb5e62b...5448fc`; hyperliquid `0xd1978d...d6be55` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (30)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x072493...d65bc4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0df6ff...58cb2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2546d5...dd80c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38395f...cbbce3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x410ea2...d9b9c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a84e5...d7ff7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c9889...0db539` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x989615...6bfbb7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb77a9d...2a99d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc83be4...b2f976` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdeb110...7ad012` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6e9d6...aae596` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1c052...d7f5d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2f8ed...d18bd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc5f5f...329a99` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x16a02b...73c176` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x45a89e...22f6da` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4a8e9e...174b52` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5268ac...94ab8b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x52db4d...8c63e2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7248c2...d459bb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9f8048...7c5009` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xab72fb...e50043` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd97ae7...7aec95` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe1a5b3...f41cad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x774532...d95de9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7ac1a5...eb1dc7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7c66d3...958465` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa1771a...96abc8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd65da4...3165b3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 68 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
