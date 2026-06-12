# Agentic Audit Brief: Rysk Finance

## Project Overview

- Project: Rysk Finance (`rysk-finance`)
- Website: [https://app.rysk.finance/join?code=DEFILLAMA](https://app.rysk.finance/join?code=DEFILLAMA)
- Lifecycle: active (Tier 0, 33.1% below peak)
- Generated: 2026-06-12T09:15:27.215Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-645a
- Chains: arbitrum, ethereum, hyperliquid
- Contract surface: 193 unique implementations (900 raw deployments)
- DeFi Llama TVL: $47,307,420.00
- On-chain TVL (included contracts): $21,393,064.46
- TVL by chain: Hyperliquid $21,393,064.46

## Project Description

Rysk Finance is a DeFi protocol currently positioned around earning upfront yield or premium on crypto assets, described by DefiLlama as providing crypto uncorrelated returns. Its deployed contract surface includes options-related components such as Otoken contracts, MarginPool-style contracts, LiquidityPool deployments, and related registry or infrastructure components, rather than a single shared MarginPool across all product families.

### Architecture

The families share a common MarginPool contract used in both Rysk Premium and HyperEVM for asset management. Rysk V1's hedging reactor may interact with the options or liquidity pools from other families, while Rysk V12's oracle and unit contracts provide infrastructure for cross-chain operations and pricing across the protocol.

## Audit Coverage Summary

- Verified implementations audited: 0/57 (0.0%)
- Verified + Unaudited implementations: 57
- Verified by bytecode match: 0
- Unverified implementations: 136
- Unique implementations: 193
- Raw deployments: 900
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $21,393,064.46
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (57)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MarginPool | core_logic | hyperliquid | 27 deployments: ethereum `0x0c5521...947fc3`; ethereum `0x1763a5...d67d0e`; ethereum `0x225e95...7c0c08`; ethereum `0x24e5d9...f621ce`; ethereum `0x26be4b...da0215`; ethereum `0x43b798...08695f`; ethereum `0x4c4b78...3e8087`; ethereum `0x64dbdd...9f4e8e`; ethereum `0x694f73...4cbf5d`; ethereum `0x6a0a36...c9d0c8`; ethereum `0x761a3d...947975`; ethereum `0x7ec175...47cf0c`; ethereum `0xa77063...e177ac`; ethereum `0xb520df...cb37ef`; ethereum `0xf76f46...d7d5a0`; hyperliquid [`0x03ecdd...22e490`](./contracts/hyperliquid-999/0x03ecdd16800db7c0c0c354aceaa012746e22e490/); hyperliquid `0x246032...d3f5ab`; hyperliquid `0x24a44f...c91ab4`; hyperliquid `0x2f74fb...431d42`; hyperliquid `0x315467...cb583b`; hyperliquid `0x35c508...510c92`; hyperliquid `0x40abf0...dd89fa`; hyperliquid `0x4d68ac...dfd887`; hyperliquid `0xadf708...5e37d2`; hyperliquid `0xc68cb9...cdf950`; hyperliquid `0xfd7d4e...46b8ce`; hyperliquid `0xff91bc...435c27` | ⚠️ Unaudited |
| Accounting | unknown | hyperliquid | 22 deployments: hyperliquid [`0x08b953...1631c8`](./contracts/hyperliquid-999/0x08b95354db96b02f9bae480ad6e3f39b081631c8/); hyperliquid `0x208504...f28c50`; hyperliquid `0x2743b5...42e5ca`; hyperliquid `0x352e5e...2b2363`; hyperliquid `0x480a40...714548`; hyperliquid `0x5eb40c...139d89`; hyperliquid `0x735f1a...3a3f29`; hyperliquid `0x79d072...6b20bd`; hyperliquid `0x7f8d5b...d37925`; hyperliquid `0x874252...6a1e3d`; hyperliquid `0x9e68bd...53c0c6`; hyperliquid `0xa278ca...ae0885`; hyperliquid `0xa519e9...5a173e`; hyperliquid `0xb4b840...175779`; hyperliquid `0xb6eea2...f2cb76`; hyperliquid `0xbce73e...2a8841`; hyperliquid `0xd2b5b1...f64fb5`; hyperliquid `0xe816f3...a57247`; hyperliquid `0xf968e2...94988e`; hyperliquid `0xffd187...277672`; arbitrum `0x48672a...533f7c`; arbitrum `0xd527be...0c5ee8` | ⚠️ Unaudited |
| AddressBook | unknown | ethereum | 35 deployments: ethereum [`0x015797...5f6657`](./contracts/ethereum-1/0x015797ee212cdb5d3242a6f9d3d4bfbf1f5f6657/); ethereum `0x09be7b...85d797`; ethereum `0x18ee48...5e8fbf`; ethereum `0x487db6...1695e3`; ethereum `0x543453...0e175b`; ethereum `0x65852e...d562e7`; ethereum `0x664b53...02dc58`; ethereum `0x6e72f0...fc05d9`; ethereum `0x8f9d5d...083382`; ethereum `0xa0cc5e...4e6711`; ethereum `0xb6b884...89b539`; ethereum `0xb9699a...3fe822`; ethereum `0xdf1f1b...2516c4`; ethereum `0xec5e41...dfe727`; ethereum `0xf56069...52df58`; hyperliquid [`0x015797...5f6657`](./contracts/hyperliquid-999/0x015797ee212cdb5d3242a6f9d3d4bfbf1f5f6657/); hyperliquid `0x0d6ab0...7e886b`; hyperliquid `0x0e16d4...671a46`; hyperliquid `0x12ea0e...c526b8`; hyperliquid `0x2c5aab...4360d4`; hyperliquid `0x48a59f...e79339`; hyperliquid `0x62ce61...853f69`; hyperliquid `0x6b5843...cf5092`; hyperliquid `0x75fcec...04785e`; hyperliquid `0x7db58b...5937e5`; hyperliquid `0x81bb2e...82f2fb`; hyperliquid `0x9ce59a...df89ae`; hyperliquid `0xa46f64...2a0e07`; hyperliquid `0xa7321e...1f54e4`; hyperliquid `0xb89b35...c51c5f`; hyperliquid `0xcfb40a...fb9bb0`; hyperliquid `0xd2e4ba...be0768`; hyperliquid `0xd51de5...a3361e`; hyperliquid `0xfa26f2...800acc`; hyperliquid `0xffce2d...593f34` | ⚠️ Unaudited |
| AlphaOptionHandler | unknown | arbitrum | 5 deployments: arbitrum [`0x5493b7...28f21c`](./contracts/arbitrum-42161/0x5493b7ee745ea7b378242ff793898baac728f21c/); arbitrum `0x789def...cd8f88`; arbitrum `0x9ce557...896bf4`; arbitrum `0xa80279...099b27`; arbitrum `0xc63717...50e8f8` | ⚠️ Unaudited |
| AlphaPortfolioValuesFeed | unknown | arbitrum | 8 deployments: arbitrum [`0x14ef34...9b33df`](./contracts/arbitrum-42161/0x14ef340b33bd4f64c160e3bfcd2b84d67e9b33df/); arbitrum `0x3fdba4...e03b30`; arbitrum `0x55caa9...9b9b1a`; arbitrum `0x5825b4...f94be6`; arbitrum `0x662aef...92b1e1`; arbitrum `0x7f9d82...91c073`; arbitrum `0xc7abae...1c68a8`; arbitrum `0xf6796b...fadaaa` | ⚠️ Unaudited |
| Authority | governance | hyperliquid | 84 deployments: hyperliquid [`0x028cef...ce7056`](./contracts/hyperliquid-999/0x028ceff09ecd7107a2d4f3c752bad954f5ce7056/); hyperliquid `0x08eb98...46ec8e`; hyperliquid `0x0fc2c1...0ab17c`; hyperliquid `0x1192ae...0ff64e`; hyperliquid `0x119582...93c91a`; hyperliquid `0x137869...716447`; hyperliquid `0x15a269...111fc2`; hyperliquid `0x1a924d...3835f6`; hyperliquid `0x1c98e8...ad5632`; hyperliquid `0x213beb...ec30b1`; hyperliquid `0x246b49...0c08e9`; hyperliquid `0x281ea9...1bc010`; hyperliquid `0x295f9e...bc3ad8`; hyperliquid `0x2d0ae8...3dc3a5`; hyperliquid `0x3ed59f...515250`; hyperliquid `0x467f7b...499dbb`; hyperliquid `0x482106...6a2619`; hyperliquid `0x580714...e2fa8d`; hyperliquid `0x660127...cea0ee`; hyperliquid `0x6655fb...b3e18c`; hyperliquid `0x6c1f6e...56d84a`; hyperliquid `0x7d26c2...90939e`; hyperliquid `0x7e7d58...2b81cb`; hyperliquid `0x804524...739892`; hyperliquid `0x81c544...d5e27c`; hyperliquid `0x8232a6...ddd309`; hyperliquid `0x82daac...1666e5`; hyperliquid `0x96d40b...62ee38`; hyperliquid `0x9761ab...d37314`; hyperliquid `0x99fb04...340d0f`; hyperliquid `0x9bc13d...b28c28`; hyperliquid `0xa35616...34b21a`; hyperliquid `0xa3b9d6...5fb017`; hyperliquid `0xa42db1...c0763a`; hyperliquid `0xa5b3d3...c0cbf0`; hyperliquid `0xb03d28...50f9a8`; hyperliquid `0xbb6e1e...07f325`; hyperliquid `0xbc7625...5bae15`; hyperliquid `0xbf86cc...9ae9b9`; hyperliquid `0xd086ce...6d6857`; hyperliquid `0xd59540...86ae01`; hyperliquid `0xd772dc...37cc54`; hyperliquid `0xd7d775...a1d5bf`; hyperliquid `0xd9ef09...d95f5c`; hyperliquid `0xe41076...9a13e5`; hyperliquid `0xe9b66f...2c02fb`; hyperliquid `0xef4db5...269d05`; hyperliquid `0xf341cb...e73fb2`; hyperliquid `0xf4a99b...115bbe`; hyperliquid `0xf8c712...60373a`; arbitrum `0x0ad374...ad88cc`; arbitrum `0x0c83e4...86dcd2`; arbitrum `0x140ad5...ded091`; arbitrum `0x192dd6...1c22d8`; arbitrum `0x1c19d1...f373b5`; arbitrum `0x2024b0...76087d`; arbitrum `0x2a9967...19f5ae`; arbitrum `0x3bd400...51cea9`; arbitrum `0x3bd53f...dfee53`; arbitrum `0x3c3c46...09825e`; arbitrum `0x45ede4...9aef41`; arbitrum `0x4fbe44...45da4b`; arbitrum `0x50caf8...c95d75`; arbitrum `0x566c6a...38c907`; arbitrum `0x66a7ec...94606f`; arbitrum `0x6c3a9f...d7d2df`; arbitrum `0x7399f8...578673`; arbitrum `0x74948d...f39ac9`; arbitrum `0x80b8f9...b7b1d0`; arbitrum `0x869303...8041f1`; arbitrum `0x87d105...7d82dc`; arbitrum `0x9567a8...8481c6`; arbitrum `0x9bc5f7...b4365b`; arbitrum `0x9d8ec2...90c462`; arbitrum `0x9fd860...bf4726`; arbitrum `0xa520eb...39c07a`; arbitrum `0xb10ea6...ee57f1`; arbitrum `0xc4d147...77f357`; arbitrum `0xd75465...0a4582`; arbitrum `0xd85753...126003`; arbitrum `0xdfa49a...478083`; arbitrum `0xee33e4...58ad51`; arbitrum `0xef6ce8...b1d1eb`; arbitrum `0xfb9b59...54c205` | ⚠️ Unaudited |
| BeyondPricer | operational_periphery | arbitrum | [`0xea5fb1...158def`](./contracts/arbitrum-42161/0xea5fb118862876f249ff0b3e7fb25feb38158def/) | ⚠️ Unaudited |
| BlackScholes | unknown | arbitrum | 6 deployments: arbitrum [`0x2c215b...500020`](./contracts/arbitrum-42161/0x2c215b6bac6a4871c2e58669f0437853da500020/); arbitrum `0x499dc2...0bfe42`; arbitrum `0x85c100...68cb8c`; arbitrum `0x96d191...986cd9`; arbitrum `0xbbe2b9...b46194`; arbitrum `0xbf7600...8f20b4` | ⚠️ Unaudited |
| Controller | governance | hyperliquid | 16 deployments: ethereum `0x0bbe71...2927d0`; ethereum `0x2dc108...760a87`; ethereum `0x41ac90...71c5e5`; ethereum `0x4f918d...7b6e35`; ethereum `0x580dd6...b10f59`; ethereum `0x6e84cc...7fb31c`; ethereum `0x982619...211e14`; ethereum `0xc59cc2...fde2fa`; ethereum `0xd60ec8...1db0bb`; ethereum `0xffce2d...593f34`; hyperliquid [`0x082ae6...ece166`](./contracts/hyperliquid-999/0x082ae65918975d65e254946ad9d9977e0eece166/); hyperliquid `0x27469c...944bbe`; hyperliquid `0x4eec7c...53c89e`; hyperliquid `0xa5a153...85ad65`; hyperliquid `0xa5c68e...36073d`; hyperliquid `0xad832a...f2cfe4` | ⚠️ Unaudited |
| ControllerLogic | governance | ethereum | 21 deployments: ethereum [`0x0a435a...ba54b8`](./contracts/ethereum-1/0x0a435acfa7b8ca9b23d6ca95d8b80cf6f0ba54b8/); ethereum `0x11440d...00ab0c`; ethereum `0x14a025...615267`; ethereum `0x1ae5dd...b2bc12`; ethereum `0x1e14a1...2f0824`; ethereum `0x3c0f34...25c12e`; ethereum `0x3df997...ccc339`; ethereum `0x47a818...18ba21`; ethereum `0x5fac97...39adcb`; ethereum `0x608f8e...f78d40`; ethereum `0x619af0...a63a27`; ethereum `0x7412e7...2421f5`; ethereum `0x793ebd...e6e1cb`; ethereum `0x97461d...df98b1`; ethereum `0xf0d5c3...16ce52`; hyperliquid `0x0fcb32...6e2663`; hyperliquid `0x136f7a...780a06`; hyperliquid `0x2b16b4...a14699`; hyperliquid `0x2f3410...aa4011`; hyperliquid `0xc3e597...d5c7b5`; hyperliquid `0xfc93bb...b69012` | ⚠️ Unaudited |
| DeltaSettlerMulticall | periphery | arbitrum | 3 deployments: arbitrum [`0x64edf4...3b7fcd`](./contracts/arbitrum-42161/0x64edf4c021d4a4e65e9a4d07129541a9a73b7fcd/); arbitrum `0xa07c27...a78b60`; arbitrum `0xac3445...ee7db5` | ⚠️ Unaudited |
| DeltaSettlerResolver | unknown | arbitrum | 2 deployments: arbitrum [`0xba04ab...0dff20`](./contracts/arbitrum-42161/0xba04ab6357cfdba77b586cfde5da733fdb0dff20/); arbitrum `0xfbdec3...561702` | ⚠️ Unaudited |
| DHVLensMK1 | periphery | arbitrum | 5 deployments: arbitrum [`0x10779c...c7fcf1`](./contracts/arbitrum-42161/0x10779cae21c91897a5add1831ffb813803c7fcf1/); arbitrum `0x36cdbb...cb4b34`; arbitrum `0x8f427c...b34376`; arbitrum `0xa306c0...77600d`; arbitrum `0xa9005b...d49bd1` | ⚠️ Unaudited |
| Disperse | unknown | arbitrum | [`0x77617b...2c2aa6`](./contracts/arbitrum-42161/0x77617bcb00f497f53ce8fdf70e405bab612c2aa6/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | hyperliquid | 38 deployments: hyperliquid [`0x0a5884...b95960`](./contracts/hyperliquid-999/0x0a5884c2c5c742900407970dcddf19a0a7b95960/); hyperliquid `0x10bd9c...2d26a7`; hyperliquid `0x133f10...51afe3`; hyperliquid `0x17d32d...34dd7c`; hyperliquid `0x18ff0e...d6c0e4`; hyperliquid `0x1cd897...fbf8c8`; hyperliquid `0x22cdeb...54fe0d`; hyperliquid `0x2c5c10...818625`; hyperliquid `0x3211fa...754ca1`; hyperliquid `0x32afcc...0b2281`; hyperliquid `0x46bf1c...4e2595`; hyperliquid `0x50efa1...6e906f`; hyperliquid `0x50efd1...e16125`; hyperliquid `0x59021a...7cbbb4`; hyperliquid `0x5d387e...51e979`; hyperliquid `0x602646...26a4bf`; hyperliquid `0x7b0005...575b92`; hyperliquid `0x852614...0a2484`; hyperliquid `0x89c6c5...adedd1`; hyperliquid `0x90b93f...7b861b`; hyperliquid `0x9cde00...9229d7`; hyperliquid `0x9ea33d...35f3a9`; hyperliquid `0x9fdbda...993463`; hyperliquid `0xad70ff...6811a7`; hyperliquid `0xb3948d...eaa2c2`; hyperliquid `0xb7d273...3ab791`; hyperliquid `0xb96470...0a70d9`; hyperliquid `0xbc93cc...088010`; hyperliquid `0xc240df...de130f`; hyperliquid `0xcfc710...f4ab12`; hyperliquid `0xd3a0fd...d16b0d`; hyperliquid `0xde4a27...b0a770`; hyperliquid `0xe41cb0...ee5207`; hyperliquid `0xe7c2c5...dd737d`; hyperliquid `0xe86d43...e9c701`; hyperliquid `0xed1ce6...037a4b`; hyperliquid `0xf911ba...922290`; hyperliquid `0xfd9924...6dcc0a` | ⚠️ Unaudited |
| ExposureLensMK1 | periphery | arbitrum | [`0x43878d...64c25c`](./contracts/arbitrum-42161/0x43878d77d52d763db344350a75ac9442db64c25c/) | ⚠️ Unaudited |
| GmxHedgingReactor | unknown | arbitrum | 2 deployments: arbitrum [`0xd3711d...f52489`](./contracts/arbitrum-42161/0xd3711d400845d5052c518565411ce47d15f52489/); arbitrum `0xe30d1b...e2b4f3` | ⚠️ Unaudited |
| GmxHedgingReactorWithSwap | unknown | arbitrum | 4 deployments: arbitrum [`0x0efebb...628f84`](./contracts/arbitrum-42161/0x0efebb7443f60d522869a48f0fef29155b628f84/); arbitrum `0x171233...3843e6`; arbitrum `0x575e77...409f16`; arbitrum `0xbcd871...929736` | ⚠️ Unaudited |
| HlAlignedStableV3 | unknown | hyperliquid | [`0x111111...111111`](./contracts/hyperliquid-999/0x111111a1a0667d36bd57c0a9f569b98057111111/) | ⚠️ Unaudited |
| LiquidityPool | core_logic | hyperliquid | 42 deployments: hyperliquid [`0x0209db...5d7f1b`](./contracts/hyperliquid-999/0x0209db4a136cc0daa2c08be8030d2c50415d7f1b/); hyperliquid `0x0a9b3b...4db292`; hyperliquid `0x0ef3d2...f1c52f`; hyperliquid `0x0fe456...5fa541`; hyperliquid `0x10b046...456be0`; hyperliquid `0x10c2b9...ac50ac`; hyperliquid `0x1e7fe1...b0f2a0`; hyperliquid `0x2106ea...d5ffa9`; hyperliquid `0x377476...4edcf4`; hyperliquid `0x3dc8e4...122c63`; hyperliquid `0x3f63b6...21d708`; hyperliquid `0x419ece...97eacf`; hyperliquid `0x4ec701...086427`; hyperliquid `0x4f0180...707b30`; hyperliquid `0x542e3e...d0bd6a`; hyperliquid `0x6a7910...64d266`; hyperliquid `0x708653...7a38f6`; hyperliquid `0x7a8239...2e284b`; hyperliquid `0x7de4a3...d7850e`; hyperliquid `0x8369a9...736305`; hyperliquid `0x89d399...17918f`; hyperliquid `0x8bed8a...43e004`; hyperliquid `0x8db3ed...1bf568`; hyperliquid `0x8e11b7...c68ee1`; hyperliquid `0x9cb64c...0c392e`; hyperliquid `0xa26801...62ba85`; hyperliquid `0xa9e64b...409d3f`; hyperliquid `0xadcbd0...15f5d7`; hyperliquid `0xb7c981...d2ca8f`; hyperliquid `0xcbcb96...d3f1a5`; hyperliquid `0xd1ee59...9522f9`; hyperliquid `0xd5a381...8e73e3`; hyperliquid `0xd94cac...00ac08`; hyperliquid `0xdf6839...c78ec5`; hyperliquid `0xe5c6fb...db9955`; hyperliquid `0xece49e...c85bf4`; hyperliquid `0xfe9d41...36eebb`; arbitrum `0x217749...147b80`; arbitrum `0x2cf7ad...eeb4e1`; arbitrum `0x3d7cce...05b17f`; arbitrum `0xb685ff...a57d01`; arbitrum `0xc10b97...e100a5` | ⚠️ Unaudited |
| Manager | governance | arbitrum | 4 deployments: arbitrum [`0x5f35b8...852ff4`](./contracts/arbitrum-42161/0x5f35b814c2e3a5a499c385eb7426b2e71e852ff4/); arbitrum `0xa7ad85...4d3682`; arbitrum `0xadde1f...6c10b0`; arbitrum `0xd404d0...e41e72` | ⚠️ Unaudited |
| ManualPricer | operational_periphery | ethereum | 25 deployments: ethereum [`0x001635...0b61cd`](./contracts/ethereum-1/0x001635b6b8a0bb5dc1e901bd5908db41560b61cd/); ethereum `0xb82e16...12cd86`; ethereum `0xd17936...2b8069`; hyperliquid `0x0c5521...947fc3`; hyperliquid `0x17a552...f0b217`; hyperliquid `0x1cb17c...f73758`; hyperliquid `0x211ebd...ffe421`; hyperliquid `0x2f79da...c76451`; hyperliquid `0x3b82ed...6c6bca`; hyperliquid `0x47a818...18ba21`; hyperliquid `0x4bdcc6...5007b8`; hyperliquid `0x4fc168...94e1ce`; hyperliquid `0x5137aa...22c6f3`; hyperliquid `0x8c0cdc...707e72`; hyperliquid `0x921233...09fd44`; hyperliquid `0x92ed22...69f7ae`; hyperliquid `0x973031...60639e`; hyperliquid `0x9c2e3c...5cf008`; hyperliquid `0xa218be...f9ed61`; hyperliquid `0xaadaa0...060bf3`; hyperliquid `0xc1a011...ef0552`; hyperliquid `0xdb3c58...53e4a0`; hyperliquid `0xeb3f94...c1bada`; hyperliquid `0xf74e9d...d5fda4`; hyperliquid `0xfff371...e88ad0` | ⚠️ Unaudited |
| MarginCalculator | unknown | hyperliquid | 29 deployments: ethereum `0x08edf1...f3951c`; ethereum `0x11c551...821631`; ethereum `0x189c97...a10251`; ethereum `0x309334...ba866f`; ethereum `0x36eb4a...482edf`; ethereum `0x3df5cc...370052`; ethereum `0x46dd66...980bc5`; ethereum `0x6c02b4...128ddb`; ethereum `0x993543...b6b9f9`; ethereum `0xa98630...ebad64`; ethereum `0xb68c0d...4a1ed7`; ethereum `0xbb4ad1...b4160e`; ethereum `0xbe8383...0a10c0`; ethereum `0xc8bc1d...ef169c`; ethereum `0xf73f37...3c2e26`; hyperliquid [`0x01fb00...a07714`](./contracts/hyperliquid-999/0x01fb006a69b8c2f9387a9b46d813dcc8e5a07714/); hyperliquid `0x098cb8...aaa3c5`; hyperliquid `0x106b72...d26451`; hyperliquid `0x11b439...9c8650`; hyperliquid `0x360637...a55ea3`; hyperliquid `0x472366...b5680b`; hyperliquid `0x4ccbee...14df4c`; hyperliquid `0x805841...03ad00`; hyperliquid `0x980729...e88c51`; hyperliquid `0x99ea22...87765a`; hyperliquid `0xb36291...90ed22`; hyperliquid `0xb94ecd...b1e421`; hyperliquid `0xd7a209...998431`; hyperliquid `0xe4b21c...32e9c6` | ⚠️ Unaudited |
| MarginVault | core_logic | ethereum | 8 deployments: ethereum [`0x0f1279...1fd33b`](./contracts/ethereum-1/0x0f12791cb4dd0995912e9e3d099734ac361fd33b/); ethereum `0x16be6c...94a668`; ethereum `0x4998ff...6a0237`; ethereum `0xee79b9...b59539`; ethereum `0xf123ad...3168bf`; hyperliquid `0x8e35bc...88bd80`; hyperliquid `0x986411...ca3a2f`; hyperliquid `0xe46a96...320947` | ⚠️ Unaudited |
| MMarket | unknown | hyperliquid | 12 deployments: ethereum `0x47589e...4bfbce`; ethereum `0x549153...0b1670`; ethereum `0x60538d...49e8c9`; ethereum `0x6644d5...558e59`; ethereum `0x80eb43...0e141c`; ethereum `0x965f96...be4109`; ethereum `0xc01c9e...f01c32`; ethereum `0xd11429...521ba0`; hyperliquid [`0x1618b1...fd1a16`](./contracts/hyperliquid-999/0x1618b16c4f1563b1ca8ebaa913e385107cfd1a16/); hyperliquid `0x5f5ec2...3933f5`; hyperliquid `0x691a5f...c80d0d`; hyperliquid `0xfc9e60...c68f6c` | ⚠️ Unaudited |
| NewController | governance | arbitrum | 2 deployments: arbitrum [`0x74f08e...7c3dea`](./contracts/arbitrum-42161/0x74f08ebacfaf986827d26c95cfe1ccf83a7c3dea/); arbitrum `0x89daee...fb43bb` | ⚠️ Unaudited |
| NewMarginCalculator | unknown | arbitrum | 2 deployments: arbitrum [`0x268544...2aed45`](./contracts/arbitrum-42161/0x268544e8dc0b016aabda5dfa633c7ec4362aed45/); arbitrum `0x700106...41a016` | ⚠️ Unaudited |
| NormalDist | unknown | arbitrum | 7 deployments: arbitrum [`0x1477b6...94ad7c`](./contracts/arbitrum-42161/0x1477b61ba2e2b2d455704dd489d700952c94ad7c/); arbitrum `0x1e4d65...d293ca`; arbitrum `0x2e7034...e32773`; arbitrum `0x35bdc3...7bfeaa`; arbitrum `0x67c7b1...0a1a44`; arbitrum `0xbebf33...f411df`; arbitrum `0xee4cfa...dc4a02` | ⚠️ Unaudited |
| OptionCatalogue | unknown | arbitrum | [`0x44227d...f12168`](./contracts/arbitrum-42161/0x44227dc2a1d71fc07dc254dfd42b1c44aff12168/) | ⚠️ Unaudited |
| OptionExchange | unknown | arbitrum | [`0xc117bf...aae1fa`](./contracts/arbitrum-42161/0xc117bf3103bd09552f9a721f0b8bce9843aae1fa/) | ⚠️ Unaudited |
| OptionRegistry | registry | hyperliquid | 33 deployments: hyperliquid [`0x02029a...2e25c9`](./contracts/hyperliquid-999/0x02029af7f2b4a648cefc9d15cf298968122e25c9/); hyperliquid `0x06e6bc...8d77c8`; hyperliquid `0x122485...cc07d3`; hyperliquid `0x17f88d...d124fd`; hyperliquid `0x19beb1...8149f6`; hyperliquid `0x1b400f...d3579b`; hyperliquid `0x2144fe...5dc97b`; hyperliquid `0x333bbe...4b7521`; hyperliquid `0x65f163...2697cf`; hyperliquid `0x65f923...386569`; hyperliquid `0x6660da...4cdcef`; hyperliquid `0x697b6e...72d58e`; hyperliquid `0x7048d0...66af47`; hyperliquid `0x710fa4...8af987`; hyperliquid `0x764c4d...e6c621`; hyperliquid `0x77b353...b61ec7`; hyperliquid `0x7fa624...0778f2`; hyperliquid `0x85864a...bba60e`; hyperliquid `0x90af19...7ae813`; hyperliquid `0x9c327c...e139bc`; hyperliquid `0xab7062...6376e4`; hyperliquid `0xac618d...a78833`; hyperliquid `0xb8dbfc...42f6c5`; hyperliquid `0xd7a0c4...9cb0f5`; hyperliquid `0xe5a0d0...e5da64`; hyperliquid `0xe6a0eb...a98226`; hyperliquid `0xf5b5a6...5f3754`; arbitrum `0x04706d...952368`; arbitrum `0x61eeb9...90c4c5`; arbitrum `0x76259e...fd8280`; arbitrum `0x8bc238...3c7725`; arbitrum `0x907974...e28c7d`; arbitrum `0xef5946...9c258f` | ⚠️ Unaudited |
| OptionsCompute | unknown | arbitrum | 6 deployments: arbitrum [`0x303956...e341f0`](./contracts/arbitrum-42161/0x303956bcc420b3b74b861874d39bad5d5ee341f0/); arbitrum `0x8114b9...ab6a00`; arbitrum `0x84f44f...993748`; arbitrum `0x9759fb...c42fb4`; arbitrum `0xc3bbde...9fb1c4`; arbitrum `0xcf2631...587a1c` | ⚠️ Unaudited |
| OpynInteractions | unknown | arbitrum | 12 deployments: arbitrum [`0x0244b6...85e5a2`](./contracts/arbitrum-42161/0x0244b69a84d85262a27db9bf57166e3dc485e5a2/); arbitrum `0x048603...c1ea30`; arbitrum `0x26ed74...e2cc82`; arbitrum `0x29f646...86a15d`; arbitrum `0x504c2c...17ebbf`; arbitrum `0x57a165...f678f2`; arbitrum `0x640a2b...32aacf`; arbitrum `0x7b5346...001da5`; arbitrum `0x9558d5...771368`; arbitrum `0xae785f...2a35d4`; arbitrum `0xc9d885...f7d39e`; arbitrum `0xd2c58e...a65eda` | ⚠️ Unaudited |
| OpynPricerResolver | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x1053eb...76e77c`](./contracts/arbitrum-42161/0x1053eb11562891e2a2b4c6738eb9fb737976e77c/); arbitrum `0xdd4946...e28286` | ⚠️ Unaudited |
| Oracle | operational_periphery | ethereum | 33 deployments: ethereum [`0x00c269...ddf48b`](./contracts/ethereum-1/0x00c26915de0faf4becf3473e845fd10599ddf48b/); ethereum `0x036215...2d5742`; ethereum `0x45c1a3...197499`; ethereum `0x4a1a32...ce8d5e`; ethereum `0x691a5f...c80d0d`; ethereum `0x706f8a...162aea`; ethereum `0x85f2cf...f694ae`; ethereum `0x865473...e5ab22`; ethereum `0x8e8ee6...3c5d45`; ethereum `0x9ef31a...569b72`; ethereum `0xc11a47...0009a7`; ethereum `0xca97e6...16d7a5`; ethereum `0xe4e94e...002c18`; ethereum `0xf46d6b...cde05f`; ethereum `0xfb7bc4...232c9b`; hyperliquid `0x12b233...13d808`; hyperliquid `0x1dfe94...79bd29`; hyperliquid `0x2075e5...bddeec`; hyperliquid `0x26be4b...da0215`; hyperliquid `0x38395f...cbbce3`; hyperliquid `0x4c4b78...3e8087`; hyperliquid `0x4e2fcd...5ca3fa`; hyperliquid `0x664ad8...57e815`; hyperliquid `0x8b2541...785e8f`; hyperliquid `0x983117...e2987e`; hyperliquid `0x9fcfa5...3c5616`; hyperliquid `0xa2777c...8c9449`; hyperliquid `0xa5ba50...b2bca8`; hyperliquid `0xbda5ea...241a68`; hyperliquid `0xc83be4...b2f976`; hyperliquid `0xe25edc...f357ce`; hyperliquid `0xf5f9b7...da6d63`; hyperliquid `0xf8f27c...720c57` | ⚠️ Unaudited |
| Otoken | token | ethereum | 29 deployments: ethereum [`0x014ab1...f460ab`](./contracts/ethereum-1/0x014ab162a2fd3196990d07b5d03c6b7357f460ab/); ethereum `0x151efc...fd1667`; ethereum `0x1f1c5f...56a57b`; ethereum `0x62ce61...853f69`; ethereum `0x6aef7d...f19ba4`; ethereum `0x8fff48...06c524`; ethereum `0x90653f...d20c3c`; ethereum `0x974361...aab04d`; ethereum `0x9770b7...26062c`; ethereum `0xbcc557...984c77`; ethereum `0xce6feb...3c893e`; ethereum `0xd2e4ba...be0768`; ethereum `0xd3ba07...5910f0`; ethereum `0xd3c804...279235`; ethereum `0xff85fa...e687cc`; hyperliquid `0x03d35f...0ea3e2`; hyperliquid `0x1e5f09...785602`; hyperliquid `0x3ed1a7...90de46`; hyperliquid `0x65cedb...df8020`; hyperliquid `0x6732b3...67ff0c`; hyperliquid `0x76b585...78ddbf`; hyperliquid `0x7e2c58...c94fd4`; hyperliquid `0x9c1516...16e7e9`; hyperliquid `0x9e0071...9c9c0f`; hyperliquid `0xa364c4...7deedc`; hyperliquid `0xb9847a...10d07d`; hyperliquid `0xbcece7...9a6173`; hyperliquid `0xc39aeb...646d23`; hyperliquid `0xdd7fe7...bbad24` | ⚠️ Unaudited |
| OtokenFactory | registry | ethereum | 30 deployments: ethereum [`0x005af6...2d05e2`](./contracts/ethereum-1/0x005af62e72d974b7ad83cfb3ca3d0caae32d05e2/); ethereum `0x0f9b9e...04430b`; ethereum `0x16a8f6...1e01aa`; ethereum `0x17095b...ac8fbe`; ethereum `0x36ba48...138895`; ethereum `0x48bcdc...6bbfd4`; ethereum `0x54dd1f...75b893`; ethereum `0x73ec54...088f24`; ethereum `0x81afe5...74f4c4`; ethereum `0x87e69b...b451c1`; ethereum `0x93cb32...6f6f3a`; ethereum `0xa36227...066b64`; ethereum `0xd3fed8...644e18`; ethereum `0xd65fd8...7a76fc`; ethereum `0xf572d1...800c31`; hyperliquid `0x16a8f6...1e01aa`; hyperliquid `0x16e9b8...588cf1`; hyperliquid `0x1a8d8c...647ed0`; hyperliquid `0x2546d5...dd80c3`; hyperliquid `0x3a2710...8aa6dc`; hyperliquid `0x543453...0e175b`; hyperliquid `0x609f62...f8b749`; hyperliquid `0x6f8e40...89a8a3`; hyperliquid `0x9d3522...f6dbd3`; hyperliquid `0x9f912d...2c6d76`; hyperliquid `0xad9a48...0331e5`; hyperliquid `0xb81fbb...9e21b0`; hyperliquid `0xc845c7...73a026`; hyperliquid `0xd8eb81...e12eff`; hyperliquid `0xdeaef7...002eb1` | ⚠️ Unaudited |
| PerpHedgingReactor | unknown | arbitrum | 4 deployments: arbitrum [`0x1dd4d8...4661ee`](./contracts/arbitrum-42161/0x1dd4d8a880b36e491df3b06f74864e10294661ee/); arbitrum `0x225840...36d234`; arbitrum `0xdd418b...b8e89a`; arbitrum `0xfb640d...68f0fc` | ⚠️ Unaudited |
| PerpHedgingReactorWithSwap | unknown | arbitrum | [`0xf01376...5d82c5`](./contracts/arbitrum-42161/0xf013767d55954ecccacb4914d52d2ef8f95d82c5/) | ⚠️ Unaudited |
| PPSLensMK1 | periphery | arbitrum | [`0x2cd150...f10f52`](./contracts/arbitrum-42161/0x2cd150d8a3327e377f06c55454c86c603af10f52/) | ⚠️ Unaudited |
| PremiumOptionHandler | unknown | hyperliquid | 35 deployments: hyperliquid [`0x0b60de...55b03a`](./contracts/hyperliquid-999/0x0b60debbe6c83692b5264430018a90d1c755b03a/); hyperliquid `0x1480ca...c3ea30`; hyperliquid `0x1e3a51...4df86f`; hyperliquid `0x284ed0...ecf4d1`; hyperliquid `0x2b5725...1dcf7b`; hyperliquid `0x301791...518c9d`; hyperliquid `0x59b32b...d99765`; hyperliquid `0x5afb45...cd4abc`; hyperliquid `0x5b0532...867806`; hyperliquid `0x658fe2...a78823`; hyperliquid `0x6773d3...aa85f9`; hyperliquid `0x70ac8f...af6c59`; hyperliquid `0x743652...8e123e`; hyperliquid `0x769918...e44da7`; hyperliquid `0x76cc8f...ef70c8`; hyperliquid `0x7c34b9...974be6`; hyperliquid `0x7c92d7...adbbee`; hyperliquid `0x9df924...959e6e`; hyperliquid `0xa1e04e...72d8bd`; hyperliquid `0xa5913e...3b1793`; hyperliquid `0xb69fce...1803d8`; hyperliquid `0xbcb523...410739`; hyperliquid `0xc0428f...8a51ce`; hyperliquid `0xc0db33...5d7f26`; hyperliquid `0xc92c39...d9e732`; hyperliquid `0xccd7ac...fa15b1`; hyperliquid `0xce6141...526e38`; hyperliquid `0xce930a...18c19a`; hyperliquid `0xd06167...31a52c`; hyperliquid `0xd53e9d...68feeb`; hyperliquid `0xeb2412...4a5db7`; hyperliquid `0xf5a046...094cf4`; hyperliquid `0xf693e6...ed0402`; hyperliquid `0xf6a3a4...79bab9`; hyperliquid `0xfed97c...d375a7` | ⚠️ Unaudited |
| PriceFeed | operational_periphery | arbitrum | 9 deployments: arbitrum [`0x183d9a...a19358`](./contracts/arbitrum-42161/0x183d9a4f14598356e18005b398802c6ba4a19358/); arbitrum `0x3652a9...67d0ec`; arbitrum `0x50c603...0593a8`; arbitrum `0x59b274...28d79f`; arbitrum `0x6acff9...02d59c`; arbitrum `0x7f86ac...9590a4`; arbitrum `0xa5a095...dec297`; arbitrum `0xcf36a3...413b26`; arbitrum `0xe0c80d...2f867a` | ⚠️ Unaudited |
| Protocol | unknown | hyperliquid | 54 deployments: hyperliquid [`0x064c25...7bc36c`](./contracts/hyperliquid-999/0x064c25de0e96aac813bc2fc18efab914217bc36c/); hyperliquid `0x0edccc...ee996d`; hyperliquid `0x10a47f...e18a3c`; hyperliquid `0x123439...4d22f2`; hyperliquid `0x139a18...849883`; hyperliquid `0x25bb8a...d2bc80`; hyperliquid `0x2702a4...e90cd8`; hyperliquid `0x285e32...be9d03`; hyperliquid `0x29180f...cab579`; hyperliquid `0x38afa2...8f22ae`; hyperliquid `0x3be25a...73c341`; hyperliquid `0x3c6e48...d1d871`; hyperliquid `0x529b36...ad5abf`; hyperliquid `0x5b9989...192bd0`; hyperliquid `0x656d71...56d143`; hyperliquid `0x6aafdb...b58300`; hyperliquid `0x6e1fc7...051017`; hyperliquid `0x6ff7e6...909a47`; hyperliquid `0x70bdd6...a7ee8f`; hyperliquid `0x74f831...1f608d`; hyperliquid `0x77229a...29fd6a`; hyperliquid `0x7c2992...8044e7`; hyperliquid `0x7c7e63...7059a0`; hyperliquid `0x81d590...c8a93c`; hyperliquid `0x83f0f4...14c512`; hyperliquid `0x93bfe7...ca8c4e`; hyperliquid `0x96a272...85d1e9`; hyperliquid `0x99515b...908a67`; hyperliquid `0x9f7348...b3f6ab`; hyperliquid `0xa7fc13...cb6349`; hyperliquid `0xaba6e7...348b40`; hyperliquid `0xb42b9a...1bc278`; hyperliquid `0xb5f132...cf2198`; hyperliquid `0xbbacf0...6d089b`; hyperliquid `0xc5388f...54c326`; hyperliquid `0xca7685...b3bb5e`; hyperliquid `0xcdcccb...5d9d8c`; hyperliquid `0xcdeaa8...2affc6`; hyperliquid `0xd568c3...413de6`; hyperliquid `0xd97efb...a3ce39`; hyperliquid `0xe20985...bdcb5d`; hyperliquid `0xe4f53e...fb1704`; hyperliquid `0xe56821...e8cbf3`; hyperliquid `0xee2252...c0ebf4`; hyperliquid `0xf1efc0...354600`; hyperliquid `0xf3ad14...b88041`; hyperliquid `0xf4df29...963776`; hyperliquid `0xf62f6c...6a26a2`; arbitrum `0x081e51...c3fcbe`; arbitrum `0x08674f...8db5b2`; arbitrum `0x4e920e...40e5fb`; arbitrum `0x9e2324...bdc976`; arbitrum `0xaafe50...8e89c1`; arbitrum `0xba4ea0...98103c` | ⚠️ Unaudited |
| QuantPositionLensMK1 | periphery | arbitrum | 3 deployments: arbitrum [`0x8a29a5...eccaf4`](./contracts/arbitrum-42161/0x8a29a58f7a16a76949fce5c7e75c6a5047eccaf4/); arbitrum `0xaedbe9...abb8c9`; arbitrum `0xe1da05...51efd1` | ⚠️ Unaudited |
| Rysk | unknown | ethereum | 7 deployments: ethereum [`0x0268ee...e3c2b9`](./contracts/ethereum-1/0x0268ee65a043b90709add7fdb1bd40ba6ae3c2b9/); ethereum `0x2e493d...f3de2b`; ethereum `0x4263bd...1fe1ef`; ethereum `0x76eaee...2ae0ba`; ethereum `0x7a3dde...3c2aad`; ethereum `0x81f038...912fce`; ethereum `0xeedb88...5863d0` | ⚠️ Unaudited |
| RyskHype | unknown | hyperliquid | 20 deployments: ethereum `0x4d68ac...dfd887`; ethereum `0xcd2428...d82474`; hyperliquid [`0x01a092...f36a96`](./contracts/hyperliquid-999/0x01a0926052b3542ee877c2ecc3ac5ccc2ff36a96/); hyperliquid `0x036215...2d5742`; hyperliquid `0x0bcbc7...9c25ab`; hyperliquid `0x151efc...fd1667`; hyperliquid `0x2b395f...b26183`; hyperliquid `0x2eef66...886eae`; hyperliquid `0x33e1e6...56919d`; hyperliquid `0x5e3763...da911f`; hyperliquid `0x694f73...4cbf5d`; hyperliquid `0x716432...6dabf3`; hyperliquid `0x7412e7...2421f5`; hyperliquid `0x7a9940...4aca8a`; hyperliquid `0x8c8bcb...9b4e35`; hyperliquid `0x8f9d5d...083382`; hyperliquid `0xc4d9d4...2769b9`; hyperliquid `0xd76e80...357b0d`; hyperliquid `0xf572d1...800c31`; hyperliquid `0xfad2ad...d14632` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | hyperliquid | 4 deployments: hyperliquid [`0x3a013a...2f2810`](./contracts/hyperliquid-999/0x3a013af20b7ea42d5f01ca317c214e0be72f2810/); hyperliquid `0x3b51a5...dba5b5`; hyperliquid `0xaf9303...a4e206`; hyperliquid `0xd3ba07...5910f0` | ⚠️ Unaudited |
| UnitEthereum | unknown | hyperliquid | 2 deployments: hyperliquid [`0xbe6727...cf7907`](./contracts/hyperliquid-999/0xbe6727b535545c67d5caa73dea54865b92cf7907/); hyperliquid `0xe60dd4...c4a83b` | ⚠️ Unaudited |
| UnitFartcoin | unknown | hyperliquid | 2 deployments: hyperliquid [`0x3b4575...b2cedf`](./contracts/hyperliquid-999/0x3b4575e689ded21caad31d64c4df1f10f3b2cedf/); hyperliquid `0xeee571...99e96a` | ⚠️ Unaudited |
| UnitPlasma | unknown | hyperliquid | 2 deployments: hyperliquid [`0x11e10b...0798a1`](./contracts/hyperliquid-999/0x11e10b315363d43e46b04f139fc051164e0798a1/); hyperliquid `0x33af3c...e421f5` | ⚠️ Unaudited |
| UnitPump | unknown | hyperliquid | 2 deployments: hyperliquid [`0x27ec64...6f4452`](./contracts/hyperliquid-999/0x27ec642013bcb3d80ca3706599d3cda04f6f4452/); hyperliquid `0xd9d236...3e0617` | ⚠️ Unaudited |
| UnitSolana | unknown | hyperliquid | 2 deployments: hyperliquid [`0x068f32...1c8a29`](./contracts/hyperliquid-999/0x068f321fa8fb9f0d135f290ef6a3e2813e1c8a29/); hyperliquid `0xab73c0...19d74c` | ⚠️ Unaudited |
| UserPositionLensMK1 | periphery | arbitrum | 3 deployments: arbitrum [`0x02efd4...59336c`](./contracts/arbitrum-42161/0x02efd4e61c1883a0fff1044acd61c9100859336c/); arbitrum `0x0aea44...6c6dbd`; arbitrum `0x5f055e...ca52c0` | ⚠️ Unaudited |
| VaultCollateralMulticall | core_logic | arbitrum | 3 deployments: arbitrum [`0x622a32...b9fd59`](./contracts/arbitrum-42161/0x622a3275d05f31f2f3aedc439de1e7913fb9fd59/); arbitrum `0x7e9ee4...3c80a5`; arbitrum `0xc6b513...b0bc50` | ⚠️ Unaudited |
| VaultRegistry | registry | hyperliquid | 9 deployments: hyperliquid [`0x225c87...54154d`](./contracts/hyperliquid-999/0x225c87a6a3cda65b50e59ea18be58febca54154d/); hyperliquid `0x26d7f1...4d2d02`; hyperliquid `0x3f6e89...f268ec`; hyperliquid `0x421d29...5272fe`; hyperliquid `0x425ffa...4c1885`; hyperliquid `0x5f6618...d94657`; hyperliquid `0x8ee262...5d130b`; hyperliquid `0xba3852...d0809e`; hyperliquid `0xe61925...b7010f` | ⚠️ Unaudited |
| VolatilityFeed | unknown | arbitrum | 11 deployments: arbitrum [`0x309990...0bccb9`](./contracts/arbitrum-42161/0x3099900e3e9fa62b291586f5046a09cf5b0bccb9/); arbitrum `0x3908a3...b6c8b3`; arbitrum `0x4296d0...577788`; arbitrum `0x57f49c...c0ef6d`; arbitrum `0x7c678b...956995`; arbitrum `0x9c84e5...a47344`; arbitrum `0xad99fc...f98de4`; arbitrum `0xb9eb65...2c9a3b`; arbitrum `0xcbdab9...28bd95`; arbitrum `0xea81db...a31523`; arbitrum `0xf204b6...3a0225` | ⚠️ Unaudited |
| Whitelist | unknown | hyperliquid | 30 deployments: ethereum `0x278202...3c9f73`; ethereum `0x2945cd...10f356`; ethereum `0x371e70...760fae`; ethereum `0x508eeb...162c3e`; ethereum `0x6f878a...08540d`; ethereum `0x847b2c...3cb371`; ethereum `0x8fa9e1...15277e`; ethereum `0x9890b8...90e85a`; ethereum `0x9ed7a2...5aff18`; ethereum `0xaadaa0...060bf3`; ethereum `0xadf708...5e37d2`; ethereum `0xcd6fe5...05c3d0`; ethereum `0xe33a51...5a1401`; ethereum `0xfccda5...edf7fa`; ethereum `0xfe3be3...14b81c`; hyperliquid [`0x04c8f2...7c4e82`](./contracts/hyperliquid-999/0x04c8f266c6031836960dbd5af8bf73a8067c4e82/); hyperliquid `0x300006...663948`; hyperliquid `0x345741...6e9012`; hyperliquid `0x6b788a...f5ecb2`; hyperliquid `0x6c59cf...d5a182`; hyperliquid `0x7461cf...50670d`; hyperliquid `0x93b29e...219e1b`; hyperliquid `0x9eaa13...3ed1f8`; hyperliquid `0xa4c06f...2164f6`; hyperliquid `0xb5e62b...5448fc`; hyperliquid `0xb9699a...3fe822`; hyperliquid `0xcb5e55...6c8c8d`; hyperliquid `0xd11429...521ba0`; hyperliquid `0xd1978d...d6be55`; hyperliquid `0xf2f8ed...d18bd2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (136)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x072493...d65bc4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0df6ff...58cb2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2546d5...dd80c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x38395f...cbbce3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x410ea2...d9b9c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6a84e5...d7ff7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6c9889...0db539` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x989615...6bfbb7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb77a9d...2a99d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc83be4...b2f976` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdeb110...7ad012` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe6e9d6...aae596` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf1c052...d7f5d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf2f8ed...d18bd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfc5f5f...329a99` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x00d8f8...e6bded` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x043756...c14482` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x0e93d3...9bbc54` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x10f5b9...46ff00` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x121e3a...572998` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x14c64e...776a68` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x1548f4...454c7a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x15fa14...9ae77b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x16a02b...73c176` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x17735d...4f84f3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x1a7689...7034fc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x1baebe...a6bfc4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x1bc792...65d636` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x1cf613...9f5f92` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x1fab7f...e8d928` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x225e95...7c0c08` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x255a00...af6c40` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x2fdfcd...0bd7ce` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x397157...7ebb7b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x3e2d97...03c989` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x3ebabb...355a5d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x44edb5...a0ba7a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x45a89e...22f6da` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x467a98...e37678` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x4a8e9e...174b52` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x4bc7e5...54c280` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x4c20de...75e3cd` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x5067e5...b737a7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x5268ac...94ab8b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x52db4d...8c63e2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x59b184...a2535e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x5b2118...a310df` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x630283...3101e5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x647b79...4a3f02` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x67fbcd...f3ee13` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x6a1090...3bff59` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x7248c2...d459bb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x80eb43...0e141c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x866fb7...16a581` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x8894db...08b6f2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x931d02...ca36a4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x94592f...fc7ebb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x9512ae...f20058` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x9f8048...7c5009` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x9fd2ea...02e305` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xa13462...e42f3c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xa49d1c...719b7b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xab72fb...e50043` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xb744e6...95ca09` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xb8453f...8b8cf9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xbad9c9...8bef2d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xc1475a...5f51e6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xc2be62...64d63b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xd396f8...22f154` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xd97ae7...7aec95` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xdff4e9...bff341` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xe1a1f2...4cde69` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xe1a5b3...f41cad` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xe35c3a...057132` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xeacc99...41f03a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xf1dfd8...db099f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xf2e3a2...4b923e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xf7d4bb...67e58c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x005308...b9fc2c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x020a4d...06d3bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x029a2c...fb2cb6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x051ee6...ab44cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0922a8...ff9b1d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x11533d...1e0aff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x15411e...d8f2a9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1860bc...9d23ee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2131a6...ebea63` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x234543...f38421` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x242a82...a17ae9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2c4d92...70f7ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2da637...8684e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x37e9bc...e87d07` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3c282b...32f677` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x45f1a6...1fe9b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4a8002...c640f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4b6d6e...52d574` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4fae85...ccb9d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x56cfca...07e669` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x63eddb...780aee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6a60fa...42b804` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6b4ff2...90e66b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6b72ee...c6af48` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x774532...d95de9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7ac1a5...eb1dc7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7adbd6...e820c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7c66d3...958465` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8054d0...b1eee5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x808ca6...0396a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x82ec1f...7e5e5e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8409cb...5ed8ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x860d4f...52242b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8c2c60...85d4c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9bb58c...55791f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9e6940...300826` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa1771a...96abc8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa2ec0f...695842` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa304d4...d70385` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa3b128...ad73d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa7ffb2...d60a04` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xac112c...9980d8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xacda9d...eb7bb9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xafe083...1e8238` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb28bfc...ac52e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb3371d...c06ada` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb3447d...75809b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb50673...7fe0d8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc01ac0...9b1591` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc76062...ee8bb8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd20ab7...3c3a58` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd65da4...3165b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdb56eb...acbd0e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdf80d4...64b448` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xec1f3b...e89d87` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xecfd50...e12949` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf6aa8e...1c7396` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfcb224...341f39` | ❓ Unverified |

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
| needs_review | 193 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
