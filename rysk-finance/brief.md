# Agentic Audit Brief: Rysk Finance

## Project Overview

- Project: Rysk Finance (`rysk-finance`)
- Website: [https://app.rysk.finance/join?code=DEFILLAMA](https://app.rysk.finance/join?code=DEFILLAMA)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:53.827Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-0679
- Chains: arbitrum, ethereum, hyperliquid
- Contract surface: 632 unique implementations (895 raw deployments)
- DeFi Llama TVL: $45,773,374.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 42 project-authored contract(s) across 3 chain(s); 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 7 common project-authored base contract(s) (contextupgradeable, ownableupgradesafe, reentrancyguardupgradesafe). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 895; live-surface contracts included: 895 (301 live, 594 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/37 (21.6%)
- Deployed-live implementations: 38 of 632 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/38
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 594
- Unique implementations: 632
- Raw deployments: 895
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 8 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Dedaub | Tier 2 | 8 | 21.1% | 2022-06 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DeltaSettlerMulticall | periphery | arbitrum | n/a | 2 deployments: arbitrum [`0xa07c27...a78b60`](./contracts/arbitrum-42161/0xa07c27805b17f4e5f6ab696a9acf223b4aa78b60/); arbitrum `0xac3445...ee7db5` | ✅ Audited |
| LiquidityPool | core_logic | hyperliquid | n/a | 8 deployments: hyperliquid [`0x0a9b3b...4db292`](./contracts/hyperliquid-999/0x0a9b3b5e6c4fde989a92ec714f24829a9b4db292/); hyperliquid `0x1e7fe1...b0f2a0`; hyperliquid `0x3f63b6...21d708`; hyperliquid `0x4ec701...086427`; hyperliquid `0x708653...7a38f6`; hyperliquid `0x8e11b7...c68ee1`; hyperliquid `0xd5a381...8e73e3`; arbitrum `0x217749...147b80` | ✅ Audited |
| Manager | governance | arbitrum | n/a | 2 deployments: arbitrum [`0xa7ad85...4d3682`](./contracts/arbitrum-42161/0xa7ad85ac7eda2807fa2d596b3ff1f9b63d4d3682/); arbitrum `0xd404d0...e41e72` | ✅ Audited |
| OptionRegistry | registry | hyperliquid | n/a | 2 deployments: hyperliquid [`0x7fa624...0778f2`](./contracts/hyperliquid-999/0x7fa624df86b76a57d153ff20a5e08905840778f2/); arbitrum `0x8bc238...3c7725` | ✅ Audited |
| OptionsCompute | unknown | arbitrum | n/a | [`0xcf2631...587a1c`](./contracts/arbitrum-42161/0xcf263127e7dff09018af1f803bd3f9db58587a1c/) | ✅ Audited |
| PriceFeed | operational_periphery | arbitrum | n/a | [`0x7f86ac...9590a4`](./contracts/arbitrum-42161/0x7f86ac0c38bbc3211c610abe3841847fe19590a4/) | ✅ Audited |
| VaultCollateralMulticall | core_logic | arbitrum | n/a | [`0x7e9ee4...3c80a5`](./contracts/arbitrum-42161/0x7e9ee45c683f6160effb56ec1253faf3f43c80a5/) | ✅ Audited |
| VolatilityFeed | unknown | arbitrum | n/a | [`0xf204b6...3a0225`](./contracts/arbitrum-42161/0xf204b60a98b3be05914aec46bced2476d13a0225/) | ✅ Audited |

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressBook | unknown | ethereum | n/a | 27 deployments: ethereum [`0x015797...5f6657`](./contracts/ethereum-1/0x015797ee212cdb5d3242a6f9d3d4bfbf1f5f6657/); ethereum `0x09be7b...85d797`; ethereum `0x18ee48...5e8fbf`; ethereum `0x487db6...1695e3`; ethereum `0x543453...0e175b`; ethereum `0x65852e...d562e7`; ethereum `0x664b53...02dc58`; ethereum `0x6e72f0...fc05d9`; ethereum `0x8f9d5d...083382`; ethereum `0xa0cc5e...4e6711`; ethereum `0xb6b884...89b539`; ethereum `0xb9699a...3fe822`; ethereum `0xdf1f1b...2516c4`; ethereum `0xec5e41...dfe727`; ethereum `0xf56069...52df58`; hyperliquid `0x0d6ab0...7e886b`; hyperliquid `0x0e16d4...671a46`; hyperliquid `0x12ea0e...c526b8`; hyperliquid `0x48a59f...e79339`; hyperliquid `0x6b5843...cf5092`; hyperliquid `0x7db58b...5937e5`; hyperliquid `0x9ce59a...df89ae`; hyperliquid `0xa46f64...2a0e07`; hyperliquid `0xa7321e...1f54e4`; hyperliquid `0xcfb40a...fb9bb0`; hyperliquid `0xd51de5...a3361e`; hyperliquid `0xfa26f2...800acc` | ⚠️ Unaudited |
| AlphaOptionHandler | unknown | arbitrum | n/a | [`0xc63717...50e8f8`](./contracts/arbitrum-42161/0xc63717c4436043781a63c8c64b02ff774350e8f8/) | ⚠️ Unaudited |
| AlphaPortfolioValuesFeed | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x7f9d82...91c073`](./contracts/arbitrum-42161/0x7f9d820cfc109686f2ca096ffa93dd497b91c073/); arbitrum `0xc7abae...1c68a8` | ⚠️ Unaudited |
| BeyondPricer | operational_periphery | arbitrum | n/a | [`0xea5fb1...158def`](./contracts/arbitrum-42161/0xea5fb118862876f249ff0b3e7fb25feb38158def/) | ⚠️ Unaudited |
| BlackScholes | unknown | arbitrum | n/a | [`0x85c100...68cb8c`](./contracts/arbitrum-42161/0x85c100eb32c3e2f6ea0444e553f3a9bce468cb8c/) | ⚠️ Unaudited |
| Controller | governance | hyperliquid | n/a | 13 deployments: ethereum `0x0bbe71...2927d0`; ethereum `0x2dc108...760a87`; ethereum `0x41ac90...71c5e5`; ethereum `0x4f918d...7b6e35`; ethereum `0x580dd6...b10f59`; ethereum `0x6e84cc...7fb31c`; ethereum `0x982619...211e14`; ethereum `0xc59cc2...fde2fa`; ethereum `0xd60ec8...1db0bb`; ethereum `0xffce2d...593f34`; hyperliquid [`0x082ae6...ece166`](./contracts/hyperliquid-999/0x082ae65918975d65e254946ad9d9977e0eece166/); hyperliquid `0x27469c...944bbe`; hyperliquid `0xa5a153...85ad65` | ⚠️ Unaudited |
| ControllerLogic | governance | ethereum | n/a | 21 deployments: ethereum [`0x0a435a...ba54b8`](./contracts/ethereum-1/0x0a435acfa7b8ca9b23d6ca95d8b80cf6f0ba54b8/); ethereum `0x11440d...00ab0c`; ethereum `0x14a025...615267`; ethereum `0x1ae5dd...b2bc12`; ethereum `0x1e14a1...2f0824`; ethereum `0x3c0f34...25c12e`; ethereum `0x3df997...ccc339`; ethereum `0x47a818...18ba21`; ethereum `0x5fac97...39adcb`; ethereum `0x608f8e...f78d40`; ethereum `0x619af0...a63a27`; ethereum `0x7412e7...2421f5`; ethereum `0x793ebd...e6e1cb`; ethereum `0x97461d...df98b1`; ethereum `0xf0d5c3...16ce52`; hyperliquid `0x0fcb32...6e2663`; hyperliquid `0x136f7a...780a06`; hyperliquid `0x2b16b4...a14699`; hyperliquid `0x2f3410...aa4011`; hyperliquid `0xc3e597...d5c7b5`; hyperliquid `0xfc93bb...b69012` | ⚠️ Unaudited |
| DeltaSettlerResolver | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xba04ab...0dff20`](./contracts/arbitrum-42161/0xba04ab6357cfdba77b586cfde5da733fdb0dff20/); arbitrum `0xfbdec3...561702` | ⚠️ Unaudited |
| DHVLensMK1 | periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x8f427c...b34376`](./contracts/arbitrum-42161/0x8f427c42d00fa69a88d55c09349a2d4914b34376/); arbitrum `0xa306c0...77600d`; arbitrum `0xa9005b...d49bd1` | ⚠️ Unaudited |
| Disperse | unknown | arbitrum | n/a | [`0x77617b...2c2aa6`](./contracts/arbitrum-42161/0x77617bcb00f497f53ce8fdf70e405bab612c2aa6/) | ⚠️ Unaudited |
| GmxHedgingReactorWithSwap | unknown | arbitrum | n/a | [`0xbcd871...929736`](./contracts/arbitrum-42161/0xbcd871faaf2c36d57b0f4c006c6b0cc2e1929736/) | ⚠️ Unaudited |
| HlAlignedStableV3 | unknown | hyperliquid | n/a | [`0x111111...111111`](./contracts/hyperliquid-999/0x111111a1a0667d36bd57c0a9f569b98057111111/) | ⚠️ Unaudited |
| ManualPricer | operational_periphery | ethereum | n/a | 25 deployments: ethereum [`0x001635...0b61cd`](./contracts/ethereum-1/0x001635b6b8a0bb5dc1e901bd5908db41560b61cd/); ethereum `0xb82e16...12cd86`; ethereum `0xd17936...2b8069`; hyperliquid `0x0c5521...947fc3`; hyperliquid `0x17a552...f0b217`; hyperliquid `0x1cb17c...f73758`; hyperliquid `0x211ebd...ffe421`; hyperliquid `0x2f79da...c76451`; hyperliquid `0x3b82ed...6c6bca`; hyperliquid `0x47a818...18ba21`; hyperliquid `0x4bdcc6...5007b8`; hyperliquid `0x4fc168...94e1ce`; hyperliquid `0x5137aa...22c6f3`; hyperliquid `0x8c0cdc...707e72`; hyperliquid `0x921233...09fd44`; hyperliquid `0x92ed22...69f7ae`; hyperliquid `0x973031...60639e`; hyperliquid `0x9c2e3c...5cf008`; hyperliquid `0xa218be...f9ed61`; hyperliquid `0xaadaa0...060bf3`; hyperliquid `0xc1a011...ef0552`; hyperliquid `0xdb3c58...53e4a0`; hyperliquid `0xeb3f94...c1bada`; hyperliquid `0xf74e9d...d5fda4`; hyperliquid `0xfff371...e88ad0` | ⚠️ Unaudited |
| MarginCalculator | unknown | ethereum | n/a | 27 deployments: ethereum [`0x08edf1...f3951c`](./contracts/ethereum-1/0x08edf17746ce47d5b42ed132875ac4d51bf3951c/); ethereum `0x11c551...821631`; ethereum `0x189c97...a10251`; ethereum `0x309334...ba866f`; ethereum `0x36eb4a...482edf`; ethereum `0x3df5cc...370052`; ethereum `0x46dd66...980bc5`; ethereum `0x6c02b4...128ddb`; ethereum `0x993543...b6b9f9`; ethereum `0xa98630...ebad64`; ethereum `0xb68c0d...4a1ed7`; ethereum `0xbb4ad1...b4160e`; ethereum `0xbe8383...0a10c0`; ethereum `0xc8bc1d...ef169c`; ethereum `0xf73f37...3c2e26`; hyperliquid `0x098cb8...aaa3c5`; hyperliquid `0x106b72...d26451`; hyperliquid `0x11b439...9c8650`; hyperliquid `0x360637...a55ea3`; hyperliquid `0x4ccbee...14df4c`; hyperliquid `0x805841...03ad00`; hyperliquid `0x980729...e88c51`; hyperliquid `0x99ea22...87765a`; hyperliquid `0xb36291...90ed22`; hyperliquid `0xb94ecd...b1e421`; hyperliquid `0xd7a209...998431`; hyperliquid `0xe4b21c...32e9c6` | ⚠️ Unaudited |
| MarginPool | core_logic | hyperliquid | n/a | 21 deployments: ethereum `0x0c5521...947fc3`; ethereum `0x1763a5...d67d0e`; ethereum `0x225e95...7c0c08`; ethereum `0x24e5d9...f621ce`; ethereum `0x26be4b...da0215`; ethereum `0x43b798...08695f`; ethereum `0x4c4b78...3e8087`; ethereum `0x64dbdd...9f4e8e`; ethereum `0x694f73...4cbf5d`; ethereum `0x6a0a36...c9d0c8`; ethereum `0x761a3d...947975`; ethereum `0x7ec175...47cf0c`; ethereum `0xa77063...e177ac`; ethereum `0xb520df...cb37ef`; ethereum `0xf76f46...d7d5a0`; hyperliquid [`0x03ecdd...22e490`](./contracts/hyperliquid-999/0x03ecdd16800db7c0c0c354aceaa012746e22e490/); hyperliquid `0x315467...cb583b`; hyperliquid `0x35c508...510c92`; hyperliquid `0x40abf0...dd89fa`; hyperliquid `0xfd7d4e...46b8ce`; hyperliquid `0xff91bc...435c27` | ⚠️ Unaudited |
| MarginVault | core_logic | ethereum | n/a | 8 deployments: ethereum [`0x0f1279...1fd33b`](./contracts/ethereum-1/0x0f12791cb4dd0995912e9e3d099734ac361fd33b/); ethereum `0x16be6c...94a668`; ethereum `0x4998ff...6a0237`; ethereum `0xee79b9...b59539`; ethereum `0xf123ad...3168bf`; hyperliquid `0x8e35bc...88bd80`; hyperliquid `0x986411...ca3a2f`; hyperliquid `0xe46a96...320947` | ⚠️ Unaudited |
| NewController | governance | arbitrum | n/a | [`0x89daee...fb43bb`](./contracts/arbitrum-42161/0x89daeea463c7ddf94ce3cc17be6c755ecdfb43bb/) | ⚠️ Unaudited |
| OptionExchange | unknown | arbitrum | n/a | [`0xc117bf...aae1fa`](./contracts/arbitrum-42161/0xc117bf3103bd09552f9a721f0b8bce9843aae1fa/) | ⚠️ Unaudited |
| OpynInteractions | unknown | arbitrum | n/a | [`0xc9d885...f7d39e`](./contracts/arbitrum-42161/0xc9d8859bb5e7ac7e9a8c175bf79cecc008f7d39e/) | ⚠️ Unaudited |
| OpynPricerResolver | operational_periphery | arbitrum | n/a | [`0xdd4946...e28286`](./contracts/arbitrum-42161/0xdd494661b45ab0fab447da23ee96837746e28286/) | ⚠️ Unaudited |
| Oracle | operational_periphery | ethereum | n/a | 26 deployments: ethereum [`0x00c269...ddf48b`](./contracts/ethereum-1/0x00c26915de0faf4becf3473e845fd10599ddf48b/); ethereum `0x036215...2d5742`; ethereum `0x45c1a3...197499`; ethereum `0x4a1a32...ce8d5e`; ethereum `0x691a5f...c80d0d`; ethereum `0x706f8a...162aea`; ethereum `0x85f2cf...f694ae`; ethereum `0x865473...e5ab22`; ethereum `0x8e8ee6...3c5d45`; ethereum `0x9ef31a...569b72`; ethereum `0xc11a47...0009a7`; ethereum `0xca97e6...16d7a5`; ethereum `0xe4e94e...002c18`; ethereum `0xf46d6b...cde05f`; ethereum `0xfb7bc4...232c9b`; hyperliquid `0x12b233...13d808`; hyperliquid `0x1dfe94...79bd29`; hyperliquid `0x2075e5...bddeec`; hyperliquid `0x4e2fcd...5ca3fa`; hyperliquid `0x8b2541...785e8f`; hyperliquid `0x983117...e2987e`; hyperliquid `0x9fcfa5...3c5616`; hyperliquid `0xa2777c...8c9449`; hyperliquid `0xa5ba50...b2bca8`; hyperliquid `0xbda5ea...241a68`; hyperliquid `0xf8f27c...720c57` | ⚠️ Unaudited |
| Otoken | token | ethereum | n/a | 21 deployments: ethereum [`0x014ab1...f460ab`](./contracts/ethereum-1/0x014ab162a2fd3196990d07b5d03c6b7357f460ab/); ethereum `0x151efc...fd1667`; ethereum `0x1f1c5f...56a57b`; ethereum `0x62ce61...853f69`; ethereum `0x6aef7d...f19ba4`; ethereum `0x8fff48...06c524`; ethereum `0x90653f...d20c3c`; ethereum `0x974361...aab04d`; ethereum `0x9770b7...26062c`; ethereum `0xbcc557...984c77`; ethereum `0xce6feb...3c893e`; ethereum `0xd2e4ba...be0768`; ethereum `0xd3ba07...5910f0`; ethereum `0xd3c804...279235`; ethereum `0xff85fa...e687cc`; hyperliquid `0x03d35f...0ea3e2`; hyperliquid `0x6732b3...67ff0c`; hyperliquid `0x76b585...78ddbf`; hyperliquid `0x9c1516...16e7e9`; hyperliquid `0x9e0071...9c9c0f`; hyperliquid `0xdd7fe7...bbad24` | ⚠️ Unaudited |
| OtokenFactory | registry | ethereum | n/a | 21 deployments: ethereum [`0x005af6...2d05e2`](./contracts/ethereum-1/0x005af62e72d974b7ad83cfb3ca3d0caae32d05e2/); ethereum `0x0f9b9e...04430b`; ethereum `0x16a8f6...1e01aa`; ethereum `0x17095b...ac8fbe`; ethereum `0x36ba48...138895`; ethereum `0x48bcdc...6bbfd4`; ethereum `0x54dd1f...75b893`; ethereum `0x73ec54...088f24`; ethereum `0x81afe5...74f4c4`; ethereum `0x87e69b...b451c1`; ethereum `0x93cb32...6f6f3a`; ethereum `0xa36227...066b64`; ethereum `0xd3fed8...644e18`; ethereum `0xd65fd8...7a76fc`; ethereum `0xf572d1...800c31`; hyperliquid `0x16e9b8...588cf1`; hyperliquid `0x3a2710...8aa6dc`; hyperliquid `0x6f8e40...89a8a3`; hyperliquid `0x9f912d...2c6d76`; hyperliquid `0xad9a48...0331e5`; hyperliquid `0xb81fbb...9e21b0` | ⚠️ Unaudited |
| PerpHedgingReactorWithSwap | unknown | arbitrum | n/a | [`0xf01376...5d82c5`](./contracts/arbitrum-42161/0xf013767d55954ecccacb4914d52d2ef8f95d82c5/) | ⚠️ Unaudited |
| PremiumOptionHandler | unknown | hyperliquid | n/a | 5 deployments: hyperliquid [`0x0b60de...55b03a`](./contracts/hyperliquid-999/0x0b60debbe6c83692b5264430018a90d1c755b03a/); hyperliquid `0x5afb45...cd4abc`; hyperliquid `0x70ac8f...af6c59`; hyperliquid `0xa5913e...3b1793`; hyperliquid `0xce6141...526e38` | ⚠️ Unaudited |
| QuantPositionLensMK1 | periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x8a29a5...eccaf4`](./contracts/arbitrum-42161/0x8a29a58f7a16a76949fce5c7e75c6a5047eccaf4/); arbitrum `0xaedbe9...abb8c9`; arbitrum `0xe1da05...51efd1` | ⚠️ Unaudited |
| Rysk | unknown | ethereum | n/a | [`0x4263bd...1fe1ef`](./contracts/ethereum-1/0x4263bddb3ee3593c4d92276a9f482355f61fe1ef/) | ⚠️ Unaudited |
| RyskHype | unknown | hyperliquid | n/a | 14 deployments: hyperliquid [`0x036215...2d5742`](./contracts/hyperliquid-999/0x03621534ed35bd43c069042c5362357df42d5742/); hyperliquid `0x0bcbc7...9c25ab`; hyperliquid `0x2b395f...b26183`; hyperliquid `0x2eef66...886eae`; hyperliquid `0x33e1e6...56919d`; hyperliquid `0x694f73...4cbf5d`; hyperliquid `0x716432...6dabf3`; hyperliquid `0x7412e7...2421f5`; hyperliquid `0x7a9940...4aca8a`; hyperliquid `0x8f9d5d...083382`; hyperliquid `0xc4d9d4...2769b9`; hyperliquid `0xd76e80...357b0d`; hyperliquid `0xf572d1...800c31`; hyperliquid `0xfad2ad...d14632` | ⚠️ Unaudited |
| VaultRegistry | registry | hyperliquid | n/a | 9 deployments: hyperliquid [`0x225c87...54154d`](./contracts/hyperliquid-999/0x225c87a6a3cda65b50e59ea18be58febca54154d/); hyperliquid `0x26d7f1...4d2d02`; hyperliquid `0x3f6e89...f268ec`; hyperliquid `0x421d29...5272fe`; hyperliquid `0x425ffa...4c1885`; hyperliquid `0x5f6618...d94657`; hyperliquid `0x8ee262...5d130b`; hyperliquid `0xba3852...d0809e`; hyperliquid `0xe61925...b7010f` | ⚠️ Unaudited |
| Whitelist | unknown | hyperliquid | n/a | 23 deployments: ethereum `0x278202...3c9f73`; ethereum `0x2945cd...10f356`; ethereum `0x371e70...760fae`; ethereum `0x508eeb...162c3e`; ethereum `0x6f878a...08540d`; ethereum `0x847b2c...3cb371`; ethereum `0x8fa9e1...15277e`; ethereum `0x9890b8...90e85a`; ethereum `0x9ed7a2...5aff18`; ethereum `0xaadaa0...060bf3`; ethereum `0xadf708...5e37d2`; ethereum `0xcd6fe5...05c3d0`; ethereum `0xe33a51...5a1401`; ethereum `0xfccda5...edf7fa`; ethereum `0xfe3be3...14b81c`; hyperliquid [`0x04c8f2...7c4e82`](./contracts/hyperliquid-999/0x04c8f266c6031836960dbd5af8bf73a8067c4e82/); hyperliquid `0x300006...663948`; hyperliquid `0x345741...6e9012`; hyperliquid `0x6b788a...f5ecb2`; hyperliquid `0x9eaa13...3ed1f8`; hyperliquid `0xa4c06f...2164f6`; hyperliquid `0xb5e62b...5448fc`; hyperliquid `0xd1978d...d6be55` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (594)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0268ee...e3c2b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x072493...d65bc4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0df6ff...58cb2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2546d5...dd80c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e493d...f3de2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38395f...cbbce3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x410ea2...d9b9c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47589e...4bfbce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d68ac...dfd887` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x549153...0b1670` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60538d...49e8c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6644d5...558e59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a84e5...d7ff7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c9889...0db539` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76eaee...2ae0ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a3dde...3c2aad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80eb43...0e141c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x81f038...912fce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x965f96...be4109` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x989615...6bfbb7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb77a9d...2a99d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc01c9e...f01c32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc83be4...b2f976` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd2428...d82474` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd11429...521ba0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdeb110...7ad012` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6e9d6...aae596` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeedb88...5863d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1c052...d7f5d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2f8ed...d18bd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc5f5f...329a99` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x00d8f8...e6bded` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x015797...5f6657` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x01a092...f36a96` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x01fb00...a07714` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x02029a...2e25c9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0209db...5d7f1b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x028cef...ce7056` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x043756...c14482` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x064c25...7bc36c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x06e6bc...8d77c8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x08b953...1631c8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x08eb98...46ec8e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0a5884...b95960` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0e93d3...9bbc54` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0edccc...ee996d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0ef3d2...f1c52f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0fc2c1...0ab17c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0fe456...5fa541` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x10a47f...e18a3c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x10b046...456be0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x10bd9c...2d26a7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x10c2b9...ac50ac` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x10f5b9...46ff00` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1192ae...0ff64e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x119582...93c91a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x121e3a...572998` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x122485...cc07d3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x123439...4d22f2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x133f10...51afe3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x137869...716447` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x139a18...849883` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1480ca...c3ea30` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x14907e...84cb98` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x14c64e...776a68` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x151efc...fd1667` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1548f4...454c7a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x15a269...111fc2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x15fa14...9ae77b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1618b1...fd1a16` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x16a02b...73c176` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x16a8f6...1e01aa` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x17735d...4f84f3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x17d32d...34dd7c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x17f88d...d124fd` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x18ff0e...d6c0e4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x19beb1...8149f6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x19f1e3...8b1c76` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1a8d8c...647ed0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1a924d...3835f6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1b400f...d3579b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1baebe...a6bfc4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1bc792...65d636` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1c98e8...ad5632` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1cd897...fbf8c8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1cf613...9f5f92` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1e3a51...4df86f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1e5f09...785602` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1fab7f...e8d928` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x208504...f28c50` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2106ea...d5ffa9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x213beb...ec30b1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2144fe...5dc97b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x225e95...7c0c08` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x22cdeb...54fe0d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x246032...d3f5ab` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x246b49...0c08e9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2546d5...dd80c3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x255a00...af6c40` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x25bb8a...d2bc80` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x26be4b...da0215` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2702a4...e90cd8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2743b5...42e5ca` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x281ea9...1bc010` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x284ed0...ecf4d1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x285e32...be9d03` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x29180f...cab579` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x295f9e...bc3ad8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2b5725...1dcf7b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2c5aab...4360d4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2c5c10...818625` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2d0ae8...3dc3a5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2fdfcd...0bd7ce` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x301791...518c9d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3211fa...754ca1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x32afcc...0b2281` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x333bbe...4b7521` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x352e5e...2b2363` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x377476...4edcf4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x38395f...cbbce3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x38afa2...8f22ae` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x397157...7ebb7b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3a013a...2f2810` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3b51a5...dba5b5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3be25a...73c341` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3c6e48...d1d871` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3d9cb5...cced15` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3dc8e4...122c63` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3e2d97...03c989` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3ebabb...355a5d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3ed1a7...90de46` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3ed59f...515250` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x419ece...97eacf` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x44edb5...a0ba7a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x45a89e...22f6da` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x467a98...e37678` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x467f7b...499dbb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x46bf1c...4e2595` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x472366...b5680b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x480a40...714548` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x482106...6a2619` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4a8e9e...174b52` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4bc7e5...54c280` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4c20de...75e3cd` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4c4b78...3e8087` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4d68ac...dfd887` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4eec7c...53c89e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4f0180...707b30` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4fb60b...8845be` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5067e5...b737a7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x50ccab...faf9fc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x50efa1...6e906f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x50efd1...e16125` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5268ac...94ab8b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x529b36...ad5abf` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x52db4d...8c63e2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x542e3e...d0bd6a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x543453...0e175b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x580714...e2fa8d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x59021a...7cbbb4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x59b184...a2535e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x59b32b...d99765` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5b0532...867806` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5b2118...a310df` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5b9989...192bd0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5d387e...51e979` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5e3763...da911f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5eb40c...139d89` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5f5ec2...3933f5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x602646...26a4bf` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x609f62...f8b749` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x62ce61...853f69` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x630283...3101e5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x647b79...4a3f02` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x656d71...56d143` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x658fe2...a78823` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x65cedb...df8020` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x65f163...2697cf` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x65f923...386569` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x660127...cea0ee` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x664ad8...57e815` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6655fb...b3e18c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6660da...4cdcef` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6773d3...aa85f9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x67fbcd...f3ee13` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x691a5f...c80d0d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x697b6e...72d58e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6a1090...3bff59` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6a7910...64d266` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6aafdb...b58300` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6c1f6e...56d84a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6c59cf...d5a182` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6e1fc7...051017` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6ff7e6...909a47` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7048d0...66af47` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x70bdd6...a7ee8f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x710fa4...8af987` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7248c2...d459bb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x735f1a...3a3f29` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x743652...8e123e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7461cf...50670d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x74f831...1f608d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x75fcec...04785e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x764c4d...e6c621` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x769918...e44da7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x76cc8f...ef70c8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x77229a...29fd6a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x77b353...b61ec7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x79d072...6b20bd` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7a8239...2e284b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7b0005...575b92` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7c2992...8044e7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7c34b9...974be6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7c7e63...7059a0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7c92d7...adbbee` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7d26c2...90939e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7de4a3...d7850e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7e2c58...c94fd4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7e7d58...2b81cb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7f8d5b...d37925` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x804524...739892` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x80eb43...0e141c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x81bb2e...82f2fb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x81c544...d5e27c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x81d590...c8a93c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8232a6...ddd309` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x82daac...1666e5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8369a9...736305` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x83f0f4...14c512` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x852614...0a2484` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x85864a...bba60e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x866fb7...16a581` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x874252...6a1e3d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8894db...08b6f2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x89c6c5...adedd1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x89d399...17918f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8bed8a...43e004` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8c8bcb...9b4e35` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8db3ed...1bf568` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x90af19...7ae813` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x90b93f...7b861b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9219ad...6b9f22` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x931d02...ca36a4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x93b29e...219e1b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x93bfe7...ca8c4e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x94592f...fc7ebb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9512ae...f20058` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x96a272...85d1e9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x96d40b...62ee38` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9761ab...d37314` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x99515b...908a67` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x99fb04...340d0f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9bc13d...b28c28` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9c327c...e139bc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9cb64c...0c392e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9cde00...9229d7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9d3522...f6dbd3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9df924...959e6e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9e68bd...53c0c6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9ea33d...35f3a9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9f7348...b3f6ab` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9f8048...7c5009` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9fd2ea...02e305` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa13462...e42f3c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa1e04e...72d8bd` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa26801...62ba85` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa278ca...ae0885` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa35616...34b21a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa364c4...7deedc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa3b9d6...5fb017` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa42db1...c0763a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa49d1c...719b7b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa519e9...5a173e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa5b3d3...c0cbf0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa5c68e...36073d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa7fc13...cb6349` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa9e64b...409d3f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xaa04b7...449bce` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xab7062...6376e4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xab72fb...e50043` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xaba6e7...348b40` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xac618d...a78833` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xad70ff...6811a7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xad832a...f2cfe4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xadcbd0...15f5d7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xadf708...5e37d2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xaf9303...a4e206` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb03d28...50f9a8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb3948d...eaa2c2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb42b9a...1bc278` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb4b840...175779` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb5f132...cf2198` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb69fce...1803d8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb6eea2...f2cb76` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb744e6...95ca09` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb7c981...d2ca8f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb7d273...3ab791` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb8453f...8b8cf9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb89b35...c51c5f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb8dbfc...42f6c5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb96470...0a70d9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb9699a...3fe822` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb9847a...10d07d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbad9c9...8bef2d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbb6e1e...07f325` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbbacf0...6d089b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbc7625...5bae15` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbc93cc...088010` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbcb523...410739` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbce73e...2a8841` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbcece7...9a6173` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbf86cc...9ae9b9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc0428f...8a51ce` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc0db33...5d7f26` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc1475a...5f51e6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc240df...de130f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc2be62...64d63b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc39aeb...646d23` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc5388f...54c326` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc68cb9...cdf950` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc83be4...b2f976` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc845c7...73a026` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc92c39...d9e732` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xca7685...b3bb5e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xcb5e55...6c8c8d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xcbcb96...d3f1a5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xccd7ac...fa15b1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xcdcccb...5d9d8c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xcdeaa8...2affc6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xce930a...18c19a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xcfc710...f4ab12` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd06167...31a52c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd086ce...6d6857` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd11429...521ba0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd1ee59...9522f9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd2b5b1...f64fb5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd2e4ba...be0768` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd396f8...22f154` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd3a0fd...d16b0d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd3ba07...5910f0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd3fed8...644e18` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd53e9d...68feeb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd568c3...413de6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd59540...86ae01` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd772dc...37cc54` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd7a0c4...9cb0f5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd7d775...a1d5bf` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd8eb81...e12eff` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd94cac...00ac08` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd97ae7...7aec95` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd97efb...a3ce39` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd9ef09...d95f5c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xde4a27...b0a770` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdeaef7...002eb1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdf6839...c78ec5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdff4e9...bff341` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe1a1f2...4cde69` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe1a5b3...f41cad` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe20985...bdcb5d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe25edc...f357ce` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe35c3a...057132` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe41076...9a13e5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe41cb0...ee5207` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe4f53e...fb1704` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe56821...e8cbf3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe5a0d0...e5da64` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe5c6fb...db9955` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe6a0eb...a98226` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe7c2c5...dd737d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe816f3...a57247` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe86d43...e9c701` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe9b66f...2c02fb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xeacc99...41f03a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xeb2412...4a5db7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xeb2c85...5b4cc6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xece49e...c85bf4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xed1ce6...037a4b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xee2252...c0ebf4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xef4db5...269d05` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf1dfd8...db099f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf1efc0...354600` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf2e3a2...4b923e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf2f8ed...d18bd2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf341cb...e73fb2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf3ad14...b88041` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf4a99b...115bbe` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf4df29...963776` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf5a046...094cf4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf5b5a6...5f3754` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf5f9b7...da6d63` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf62f6c...6a26a2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf693e6...ed0402` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf6a3a4...79bab9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf7d4bb...67e58c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf8c712...60373a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf911ba...922290` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf968e2...94988e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfc9e60...c68f6c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfd9924...6dcc0a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfe9d41...36eebb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfed97c...d375a7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xffce2d...593f34` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xffd187...277672` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x005308...b9fc2c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x020a4d...06d3bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0244b6...85e5a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x029a2c...fb2cb6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x02efd4...59336c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x04706d...952368` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x048603...c1ea30` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x051ee6...ab44cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x081e51...c3fcbe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x08674f...8db5b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0922a8...ff9b1d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0ad374...ad88cc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0aea44...6c6dbd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0c83e4...86dcd2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0efebb...628f84` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1053eb...76e77c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x10779c...c7fcf1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x11533d...1e0aff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x140ad5...ded091` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1477b6...94ad7c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x14ef34...9b33df` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x15411e...d8f2a9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x171233...3843e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x183d9a...a19358` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1860bc...9d23ee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x192dd6...1c22d8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1c19d1...f373b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1dd4d8...4661ee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1e4d65...d293ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2024b0...76087d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2131a6...ebea63` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x225840...36d234` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x234543...f38421` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x242a82...a17ae9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x268544...2aed45` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x26ed74...e2cc82` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x29f646...86a15d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2a9967...19f5ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2c215b...500020` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2c4d92...70f7ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2cd150...f10f52` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2cf7ad...eeb4e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2da637...8684e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2e7034...e32773` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x303956...e341f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x309990...0bccb9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x35bdc3...7bfeaa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3652a9...67d0ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x36cdbb...cb4b34` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x37e9bc...e87d07` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3908a3...b6c8b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3bd400...51cea9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3bd53f...dfee53` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3c282b...32f677` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3c3c46...09825e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3d7cce...05b17f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3fdba4...e03b30` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4296d0...577788` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x43878d...64c25c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x44227d...f12168` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x45ede4...9aef41` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x45f1a6...1fe9b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x48672a...533f7c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x499dc2...0bfe42` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4a8002...c640f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4b6d6e...52d574` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4e920e...40e5fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4fae85...ccb9d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4fbe44...45da4b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x504c2c...17ebbf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x50c603...0593a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x50caf8...c95d75` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5493b7...28f21c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x55caa9...9b9b1a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x566c6a...38c907` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x56cfca...07e669` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x575e77...409f16` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x57a165...f678f2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x57f49c...c0ef6d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5825b4...f94be6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x59b274...28d79f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5f055e...ca52c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5f35b8...852ff4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x61eeb9...90c4c5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x622a32...b9fd59` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x63eddb...780aee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x640a2b...32aacf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x64edf4...3b7fcd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x662aef...92b1e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x66a7ec...94606f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x67c7b1...0a1a44` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6a60fa...42b804` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6acff9...02d59c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6b4ff2...90e66b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6b72ee...c6af48` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6c3a9f...d7d2df` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x700106...41a016` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7399f8...578673` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x74948d...f39ac9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x74f08e...7c3dea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x76259e...fd8280` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x774532...d95de9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x789def...cd8f88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7ac1a5...eb1dc7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7adbd6...e820c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7b5346...001da5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7c66d3...958465` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7c678b...956995` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8054d0...b1eee5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x808ca6...0396a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x80b8f9...b7b1d0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8114b9...ab6a00` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x82ec1f...7e5e5e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8409cb...5ed8ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x84f44f...993748` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x860d4f...52242b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x869303...8041f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x87d105...7d82dc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8c2c60...85d4c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x907974...e28c7d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9558d5...771368` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9567a8...8481c6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x96d191...986cd9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9759fb...c42fb4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9bb58c...55791f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9bc5f7...b4365b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9c84e5...a47344` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9ce557...896bf4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9d8ec2...90c462` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9e2324...bdc976` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9e6940...300826` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9fd860...bf4726` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa1771a...96abc8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa2ec0f...695842` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa304d4...d70385` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa3b128...ad73d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa520eb...39c07a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa5a095...dec297` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa7ffb2...d60a04` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa80279...099b27` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaafe50...8e89c1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xac112c...9980d8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xacda9d...eb7bb9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xad99fc...f98de4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xadde1f...6c10b0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xae785f...2a35d4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xafe083...1e8238` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb10ea6...ee57f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb28bfc...ac52e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb3371d...c06ada` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb3447d...75809b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb50673...7fe0d8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb685ff...a57d01` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb9eb65...2c9a3b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba4ea0...98103c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbbe2b9...b46194` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbebf33...f411df` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbf7600...8f20b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc01ac0...9b1591` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc10b97...e100a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc3bbde...9fb1c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc4d147...77f357` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc6b513...b0bc50` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc76062...ee8bb8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcbdab9...28bd95` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcf36a3...413b26` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd20ab7...3c3a58` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd2c58e...a65eda` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd3711d...f52489` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd527be...0c5ee8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd65da4...3165b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd75465...0a4582` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd85753...126003` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdb56eb...acbd0e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdd418b...b8e89a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdf80d4...64b448` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdfa49a...478083` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe0c80d...2f867a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe30d1b...e2b4f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xea81db...a31523` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xec1f3b...e89d87` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xecfd50...e12949` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xee33e4...58ad51` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xee4cfa...dc4a02` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xef5946...9c258f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xef6ce8...b1d1eb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf6796b...fadaaa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf6aa8e...1c7396` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb640d...68f0fc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb9b59...54c205` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfcb224...341f39` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [dedaub.com/audits/rysk/rysk-jun-18-2022](https://dedaub.com/audits/rysk/rysk-jun-18-2022) | Dedaub | Audit | 2022-06 | stale | Direct | contract_name | 16 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x015797...5f6657`](./contracts/ethereum-1/0x015797ee212cdb5d3242a6f9d3d4bfbf1f5f6657/) | AddressBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc63717...50e8f8`](./contracts/arbitrum-42161/0xc63717c4436043781a63c8c64b02ff774350e8f8/) | AlphaOptionHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7f9d82...91c073`](./contracts/arbitrum-42161/0x7f9d820cfc109686f2ca096ffa93dd497b91c073/) | AlphaPortfolioValuesFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xea5fb1...158def`](./contracts/arbitrum-42161/0xea5fb118862876f249ff0b3e7fb25feb38158def/) | BeyondPricer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x85c100...68cb8c`](./contracts/arbitrum-42161/0x85c100eb32c3e2f6ea0444e553f3a9bce468cb8c/) | BlackScholes | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x082ae6...ece166`](./contracts/hyperliquid-999/0x082ae65918975d65e254946ad9d9977e0eece166/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a435a...ba54b8`](./contracts/ethereum-1/0x0a435acfa7b8ca9b23d6ca95d8b80cf6f0ba54b8/) | ControllerLogic | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xba04ab...0dff20`](./contracts/arbitrum-42161/0xba04ab6357cfdba77b586cfde5da733fdb0dff20/) | DeltaSettlerResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8f427c...b34376`](./contracts/arbitrum-42161/0x8f427c42d00fa69a88d55c09349a2d4914b34376/) | DHVLensMK1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbcd871...929736`](./contracts/arbitrum-42161/0xbcd871faaf2c36d57b0f4c006c6b0cc2e1929736/) | GmxHedgingReactorWithSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x111111...111111`](./contracts/hyperliquid-999/0x111111a1a0667d36bd57c0a9f569b98057111111/) | HlAlignedStableV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x001635...0b61cd`](./contracts/ethereum-1/0x001635b6b8a0bb5dc1e901bd5908db41560b61cd/) | ManualPricer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08edf1...f3951c`](./contracts/ethereum-1/0x08edf17746ce47d5b42ed132875ac4d51bf3951c/) | MarginCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x03ecdd...22e490`](./contracts/hyperliquid-999/0x03ecdd16800db7c0c0c354aceaa012746e22e490/) | MarginPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f1279...1fd33b`](./contracts/ethereum-1/0x0f12791cb4dd0995912e9e3d099734ac361fd33b/) | MarginVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x89daee...fb43bb`](./contracts/arbitrum-42161/0x89daeea463c7ddf94ce3cc17be6c755ecdfb43bb/) | NewController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc117bf...aae1fa`](./contracts/arbitrum-42161/0xc117bf3103bd09552f9a721f0b8bce9843aae1fa/) | OptionExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc9d885...f7d39e`](./contracts/arbitrum-42161/0xc9d8859bb5e7ac7e9a8c175bf79cecc008f7d39e/) | OpynInteractions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdd4946...e28286`](./contracts/arbitrum-42161/0xdd494661b45ab0fab447da23ee96837746e28286/) | OpynPricerResolver | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00c269...ddf48b`](./contracts/ethereum-1/0x00c26915de0faf4becf3473e845fd10599ddf48b/) | Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x014ab1...f460ab`](./contracts/ethereum-1/0x014ab162a2fd3196990d07b5d03c6b7357f460ab/) | Otoken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x005af6...2d05e2`](./contracts/ethereum-1/0x005af62e72d974b7ad83cfb3ca3d0caae32d05e2/) | OtokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf01376...5d82c5`](./contracts/arbitrum-42161/0xf013767d55954ecccacb4914d52d2ef8f95d82c5/) | PerpHedgingReactorWithSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x0b60de...55b03a`](./contracts/hyperliquid-999/0x0b60debbe6c83692b5264430018a90d1c755b03a/) | PremiumOptionHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8a29a5...eccaf4`](./contracts/arbitrum-42161/0x8a29a58f7a16a76949fce5c7e75c6a5047eccaf4/) | QuantPositionLensMK1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4263bd...1fe1ef`](./contracts/ethereum-1/0x4263bddb3ee3593c4d92276a9f482355f61fe1ef/) | Rysk | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x036215...2d5742`](./contracts/hyperliquid-999/0x03621534ed35bd43c069042c5362357df42d5742/) | RyskHype | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x225c87...54154d`](./contracts/hyperliquid-999/0x225c87a6a3cda65b50e59ea18be58febca54154d/) | VaultRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x04c8f2...7c4e82`](./contracts/hyperliquid-999/0x04c8f266c6031836960dbd5af8bf73a8067c4e82/) | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 37 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 594 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=16

Fork inheritance lineage and inherited audits are included when available.
