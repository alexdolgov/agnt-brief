# Agentic Audit Brief: ACryptoS

## Project Overview

- Project: ACryptoS (`acryptos`)
- Website: [https://www.acryptos.com/](https://www.acryptos.com/)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-10T20:58:56.538Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: bsc
- Contract surface: 311 unique implementations (676 raw deployments)
- DeFi Llama TVL: $10,551,959.93
- On-chain TVL (included contracts): $5,193,902.73
- TVL by chain: Bsc $5,193,902.73

## Audit Coverage Summary

- Verified implementations audited: 22/88 (25.0%)
- Verified + Unaudited implementations: 66
- Verified by bytecode match: 0
- Unverified implementations: 223
- Unique implementations: 311
- Raw deployments: 676
- Audits discovered: 7
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $253,012.60
- Latest audit: 2021-11 (stale)
- Staleness: 0 fresh, 0 aging, 5 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hacken | Tier 2 | 19 | 21.6% | 2021-11 |
| unknown | Tier 2 | 9 | 10.2% | 2021-01 |
| CertiK | Tier 2 | 1 | 1.1% | 2021-03 |

## Contract Surface

### ✅ Verified + Audited (22)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ACryptoSVault | core_logic | bsc | 149 deployments: bsc [`0x027b51...baac78`](./contracts/bsc-56/0x027b514b13b17eb123c88f48fedc14676bbaac78/); bsc `0x02aabf...919d0e`; bsc `0x0395fc...5e3eef`; bsc `0x03e0df...4233c1`; bsc `0x03e904...2f5c39`; bsc `0x03f52c...194f38`; bsc `0x0551ea...29fd31`; bsc `0x08234f...b0ee6f`; bsc `0x0e3e97...a6de62`; bsc `0x123108...fedbbe`; bsc `0x12b05c...efb2ed`; bsc `0x14b197...c7dcec`; bsc `0x14cb72...948745`; bsc `0x15edf1...54d73c`; bsc `0x161a62...3962c3`; bsc `0x161afe...78d33f`; bsc `0x17c9bb...15e0d6`; bsc `0x1b0837...119b8a`; bsc `0x1b5ca4...127ec9`; bsc `0x1ba8b2...27406b`; bsc `0x1da371...02c1a3`; bsc `0x1db2f2...1dc655`; bsc `0x1e5ea5...3da59a`; bsc `0x22e61e...55bd95`; bsc `0x265434...71f345`; bsc `0x2875a5...b3ef2c`; bsc `0x2883d6...7d74d4`; bsc `0x28b4b0...314af9`; bsc `0x293256...21e50d`; bsc `0x2c39de...c420b3`; bsc `0x2d8483...041137`; bsc `0x32d5b8...35f3a0`; bsc `0x32fe1b...a31943`; bsc `0x35cadd...8d863e`; bsc `0x3679d4...774ef0`; bsc `0x373561...8276b9`; bsc `0x38e3e6...8962b0`; bsc `0x3a30e2...ab0a06`; bsc `0x3d4bec...425334`; bsc `0x3dcd4c...bc935e`; bsc `0x40085a...30b8c9`; bsc `0x40a7dd...dcdfed`; bsc `0x46e650...60d15f`; bsc `0x471696...ec1f8d`; bsc `0x4939a7...a9efbd`; bsc `0x4951c3...9add67`; bsc `0x49c4b9...3e4429`; bsc `0x4c6f26...1ea377`; bsc `0x4e58b6...dca14f`; bsc `0x51d6b8...dcbb73`; bsc `0x52525a...55c006`; bsc `0x532d57...a9baa5`; bsc `0x54d01f...9c36bf`; bsc `0x55d2ae...e375d4`; bsc `0x56e407...ca2946`; bsc `0x58d35b...3a360b`; bsc `0x5a330d...59620c`; bsc `0x5c2b38...478684`; bsc `0x5c8c85...10e5a8`; bsc `0x5d15d6...60eae2`; bsc `0x5e1d64...d06056`; bsc `0x5e4993...563690`; bsc `0x5f9aab...aedf55`; bsc `0x61e960...35ae8b`; bsc `0x6200f2...384941`; bsc `0x627e65...443ed5`; bsc `0x675361...ab1ed9`; bsc `0x67d288...49bbb8`; bsc `0x68fdcd...9bfc3c`; bsc `0x6c8a59...a30d8d`; bsc `0x6cc0ef...314a9c`; bsc `0x713da0...38d8de`; bsc `0x799808...328b5d`; bsc `0x7a2fb0...7f6624`; bsc `0x7abbcf...34a58e`; bsc `0x7abc58...c8cdda`; bsc `0x7cc9bc...954c6b`; bsc `0x7d34cd...3d996a`; bsc `0x82b4c3...04bced`; bsc `0x838366...c7d5af`; bsc `0x8419ef...0d7dec`; bsc `0x869285...e4c453`; bsc `0x87d5fd...64a230`; bsc `0x8835d7...e4ff31`; bsc `0x883a0d...016811`; bsc `0x8996a3...982852`; bsc `0x8dc707...f1d766`; bsc `0x90f277...6cba16`; bsc `0x93e2e1...1f2d42`; bsc `0x97391c...44317f`; bsc `0x9ce0e8...99ce04`; bsc `0x9e8d91...82b4c1`; bsc `0xa0753c...03e5cd`; bsc `0xa1125b...aadc88`; bsc `0xa20806...e69584`; bsc `0xa387be...8b955e`; bsc `0xa49642...804126`; bsc `0xa7fe1a...833e86`; bsc `0xab8191...31a2d1`; bsc `0xab8195...c8b24a`; bsc `0xac0452...ecbde2`; bsc `0xad4bba...791f6f`; bsc `0xadb783...388ada`; bsc `0xb00b62...c00bc5`; bsc `0xb18cf1...98a081`; bsc `0xb1dc4f...afd5bd`; bsc `0xb2c1b3...deca7c`; bsc `0xb6eb65...00a0c0`; bsc `0xb89294...9e677b`; bsc `0xb8c134...362c98`; bsc `0xb9b837...e84f31`; bsc `0xbb08f8...92cc1b`; bsc `0xbba267...04bea5`; bsc `0xbe6277...8bd0bd`; bsc `0xc109d8...207102`; bsc `0xc34e05...fd49f9`; bsc `0xc3ef17...5e91c4`; bsc `0xcba040...3c0f64`; bsc `0xcd630d...7a08c3`; bsc `0xcdb35c...f0bf6e`; bsc `0xcf69f9...bf6317`; bsc `0xcfb96f...e2d280`; bsc `0xcfbb1a...a6398e`; bsc `0xd016df...416507`; bsc `0xd1ca46...3259f3`; bsc `0xd574c6...66db75`; bsc `0xd7d38d...05ec25`; bsc `0xd9ab25...2aa824`; bsc `0xda6e3b...36033f`; bsc `0xdac0c9...07f323`; bsc `0xdb335c...631306`; bsc `0xdfe0e5...9c94c6`; bsc `0xe0303c...c02f95`; bsc `0xe427a9...ea9908`; bsc `0xe47c98...9f5987`; bsc `0xe9861f...622ff5`; bsc `0xe9d9f5...a3869c`; bsc `0xec94dc...527ab3`; bsc `0xed08bd...8110a7`; bsc `0xed3f6a...e01765`; bsc `0xed51b5...79fce3`; bsc `0xee9ccd...c35ea0`; bsc `0xef015f...a5427f`; bsc `0xf54d43...f6c73a`; bsc `0xf690ae...720494`; bsc `0xf7ffa2...7af16b`; bsc `0xfc698d...17e5e2`; bsc `0xfcf924...6d5a48`; bsc `0xfd1efb...b331b6` | ✅ Audited |
| ACryptoSVaultBnb | core_logic | bsc | 3 deployments: bsc [`0x10137a...373104`](./contracts/bsc-56/0x10137a821fd5aea332f682f4cbafc839e4373104/); bsc `0x6fe676...35a628`; bsc `0x997899...7cfbde` | ✅ Audited |
| ACryptoSVault0V2_ACSI | core_logic | bsc | [`0x2b6639...ae929a`](./contracts/bsc-56/0x2b66399ad01be47c5aa11c48fdd6df689dae929a/) | ✅ Audited |
| ACryptoSVault0 | core_logic | bsc | [`0x767938...3a4fc3`](./contracts/bsc-56/0x7679381507af0c8de64586a458161aa58d3a4fc3/) | ✅ Audited |
| StrategyACryptoSCakeTokenTokenV2 | core_logic | bsc | 11 deployments: bsc [`0x025758...367f32`](./contracts/bsc-56/0x0257583ca11906058eb315b1a55dfb086b367f32/); bsc `0x43f452...d0ecf8`; bsc `0x4e27e8...38dabf`; bsc `0x6da30d...d96bc0`; bsc `0x8ae66a...4c3c26`; bsc `0x8ca3e2...6420e1`; bsc `0x9f8a8e...87a3b1`; bsc `0xac8327...605419`; bsc `0xc261ef...ec4333`; bsc `0xd35ebb...53717a`; bsc `0xf46bed...11ae2d` | ✅ Audited |
| StrategyACryptoSCakeBnbToken | core_logic | bsc | 11 deployments: bsc [`0x0da914...02ca13`](./contracts/bsc-56/0x0da9141b15bb2658652c777724bfafd3fe02ca13/); bsc `0x2e5180...7884d1`; bsc `0x4c6f66...e3abd0`; bsc `0x4ea2b2...9ee07a`; bsc `0x70024a...45ffef`; bsc `0x725462...659b0c`; bsc `0xa1227a...41ebc4`; bsc `0xa9cb9b...c5e529`; bsc `0xb643b6...34fbb1`; bsc `0xbed611...7252b2`; bsc `0xc726e0...a3c403` | ✅ Audited |
| ACryptoSFarmV3 | unknown | bsc | [`0x4df2b5...8a0359`](./contracts/bsc-56/0x4df2b563c8017ac328e96786ba5922ea318a0359/) | ✅ Audited |
| ACS | unknown | bsc | [`0x4197c6...aa1d29`](./contracts/bsc-56/0x4197c6ef3879a08cd51e5560da5064b773aa1d29/) | ✅ Audited |
| ACSI | unknown | bsc | [`0x5b17b4...cba389`](./contracts/bsc-56/0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389/) | ✅ Audited |
| Controller | governance | bsc | 3 deployments: bsc [`0x148679...9aaf63`](./contracts/bsc-56/0x148679fd0befc4ae266bbbd02799cdcd869aaf63/); bsc `0x677907...74c932`; bsc `0xeb8f15...6e5e55` | ✅ Audited |
| MasterChef | unknown | bsc | [`0xeae142...9d0bed`](./contracts/bsc-56/0xeae1425d8ed46554bf56968960e2e567b49d0bed/) | ✅ Audited |
| MasterChefV2 | unknown | bsc | [`0x96c839...c408b7`](./contracts/bsc-56/0x96c8390ba28eb083a784280227c37b853bc408b7/) | ✅ Audited |
| StrategyACryptoS0V3 | core_logic | bsc | [`0x8650ab...e8d690`](./contracts/bsc-56/0x8650ab7e2c53e705d484c3b98be14c1ba1e8d690/) | ✅ Audited |
| StrategyACryptoS0V4_ACSI | core_logic | bsc | 2 deployments: bsc [`0x7232e1...ef20fb`](./contracts/bsc-56/0x7232e1f646b14edfc263e04311729ccfe0ef20fb/); bsc `0xc7b5aa...4e90b0` | ✅ Audited |
| StrategyACryptoSCakeBnbCake | core_logic | bsc | [`0xd6d568...77f39d`](./contracts/bsc-56/0xd6d56824ede8778a3df216bbf1d68de88077f39d/) | ✅ Audited |
| StrategyACryptoSCakeV2b | core_logic | bsc | [`0x4fb1ba...ab17f5`](./contracts/bsc-56/0x4fb1ba482a7f66863317452d0835d87ad8ab17f5/) | ✅ Audited |
| StrategyACryptoSVenusLeverageBnb | core_logic | bsc | [`0x3b5b36...5d78ec`](./contracts/bsc-56/0x3b5b3640096a5381e7378a013069c4ef925d78ec/) | ✅ Audited |
| StrategyACryptoSVenusLeverageUGV6 | core_logic | bsc | 4 deployments: bsc [`0x651fab...315abd`](./contracts/bsc-56/0x651fab792b0c56e561ae74bbf02f46c524315abd/); bsc `0xc64d25...c5b529`; bsc `0xf4caa8...ec835c`; bsc `0xfdecec...676f69` | ✅ Audited |
| StrategyACryptoSVenusLeverageV2 | core_logic | bsc | 8 deployments: bsc [`0x28ad34...e638d5`](./contracts/bsc-56/0x28ad34c5867ba2af6c6ad3cbb68762e476e638d5/); bsc `0x3f5c00...67be40`; bsc `0x5fdbd0...32b211`; bsc `0x601257...ab38d7`; bsc `0x8845fe...19edef`; bsc `0xa0f76b...282fc4`; bsc `0xc970f3...31db94`; bsc `0xdb825f...665da2` | ✅ Audited |
| StrategyACryptoSVenusLeverageXvs | core_logic | bsc | [`0xb0fbc7...53dd28`](./contracts/bsc-56/0xb0fbc7263dcc42d1c3d75b71250122a6c453dd28/) | ✅ Audited |
| StrategyACryptoSVenusVAI | core_logic | bsc | [`0xc50dca...7b2980`](./contracts/bsc-56/0xc50dca2886bc174f55c66d112dc3f1d59d7b2980/) | ✅ Audited |
| Timelock6H | governance | bsc | 2 deployments: bsc [`0x3595d9...fec1bc`](./contracts/bsc-56/0x3595d94a7aa78292b4283fd541ce3ea45afec1bc/); bsc `0xfd6e99...1217b7` | ✅ Audited |

### ⚠️ Verified + Unaudited (66)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StrategyACryptoSVenusLeverageUGV4b | core_logic | bsc | 14 deployments: bsc [`0x316f64...0d0f92`](./contracts/bsc-56/0x316f6488821e08ba7f44ae8e8fe86ca1cd0d0f92/); bsc `0x4e754c...a86ce2`; bsc `0x5ff576...801010`; bsc `0x796b87...3663eb`; bsc `0x7f1bce...2d5e14`; bsc `0x97add6...448d77`; bsc `0xa5d0c4...f899c8`; bsc `0xa63997...d218a2`; bsc `0xae4a00...521bb5`; bsc `0xc40475...c09958`; bsc `0xe47848...9baf39`; bsc `0xe53cdd...ee386f`; bsc `0xe720af...a196cc`; bsc `0xefbfc0...1e5147` | ⚠️ Unaudited |
| StrategyACryptoS0V6_ACSI | core_logic | bsc | [`0x8045db...1bdf51`](./contracts/bsc-56/0x8045db83f60fe9fc8eb67593140eeeb4a71bdf51/) | ⚠️ Unaudited |
| ACryptoSVaultValas | core_logic | bsc | 8 deployments: bsc [`0x20fe82...562377`](./contracts/bsc-56/0x20fe82beb9efbedaccc387d76734927d54562377/); bsc `0x2f6612...b9ce6e`; bsc `0x565b0b...444b2e`; bsc `0x5979b4...58e8c4`; bsc `0x5a9808...2dde80`; bsc `0xd19813...3505b2`; bsc `0xe559a9...21dabc`; bsc `0xfffa04...ec9e33` | ⚠️ Unaudited |
| StrategyACryptoSDsgV2 | core_logic | bsc | 3 deployments: bsc [`0x74c901...d72dd9`](./contracts/bsc-56/0x74c90158aa44ac58502ec7863006d76aced72dd9/); bsc `0x85ab61...3d9397`; bsc `0x9ab252...07cc71` | ⚠️ Unaudited |
| StrategyACryptoSCakeV2TokenTokenV4 | core_logic | bsc | 37 deployments: bsc [`0x01bd7c...ea43f4`](./contracts/bsc-56/0x01bd7c8ff77b5869ad3f5ce3ba1e072f47ea43f4/); bsc `0x07020f...08af43`; bsc `0x0b470d...c03e34`; bsc `0x14eef4...9b2257`; bsc `0x24390d...28cb5d`; bsc `0x2b970f...7690bb`; bsc `0x2d3534...a4c83f`; bsc `0x300b57...b4a1af`; bsc `0x38de02...744c8e`; bsc `0x39731e...9a4343`; bsc `0x4469ba...789de0`; bsc `0x46e90e...b1d334`; bsc `0x48ec62...f1b474`; bsc `0x4dd298...30e916`; bsc `0x51bed7...275479`; bsc `0x59c663...db36cc`; bsc `0x5b7b64...2226a8`; bsc `0x65f9fd...4892d1`; bsc `0x70f97c...79bb4e`; bsc `0x736654...69fee2`; bsc `0x748944...5db0ee`; bsc `0x76044e...95bd24`; bsc `0x787703...18531e`; bsc `0x7c9821...f32dc5`; bsc `0x7d3ac9...310282`; bsc `0x96e38e...c77ffd`; bsc `0x98d515...2f7e66`; bsc `0xa72fc6...17b1af`; bsc `0xb57068...4764e0`; bsc `0xb6cb85...a52dee`; bsc `0xbf3ec1...2f33b4`; bsc `0xca8c49...9a9a41`; bsc `0xdbb259...a35637`; bsc `0xe979ba...e02ff8`; bsc `0xf0214f...913a61`; bsc `0xf91131...a2e5fe`; bsc `0xfb74c8...316aaf` | ⚠️ Unaudited |
| StrategyACryptoSCakeTokenTokenV3 | core_logic | bsc | 7 deployments: bsc [`0x5afa58...afa5f7`](./contracts/bsc-56/0x5afa584096def0012b5e9b0006549598f6afa5f7/); bsc `0x603cee...cf470f`; bsc `0x795aa6...493225`; bsc `0x88206d...706022`; bsc `0xa29489...961e57`; bsc `0xb39959...bb687b`; bsc `0xc0ceb8...cd7694` | ⚠️ Unaudited |
| StrategyACryptoSSwipeTokenTokenV3 | core_logic | bsc | 5 deployments: bsc [`0x14ec92...cdd0e3`](./contracts/bsc-56/0x14ec92a222588293a77c273f17d9c44bf3cdd0e3/); bsc `0x1f44ae...901a86`; bsc `0x70b494...7ab972`; bsc `0xbaeeae...6d57ef`; bsc `0xe786bd...906446` | ⚠️ Unaudited |
| StrategyACryptoSCakeTokenToken | core_logic | bsc | 3 deployments: bsc [`0x316ebf...b58a13`](./contracts/bsc-56/0x316ebfedbc6378cb8fb801ad4dd783b106b58a13/); bsc `0x6c38b6...9bb432`; bsc `0x702607...30b0ca` | ⚠️ Unaudited |
| StrategyACryptoSMdxV3 | core_logic | bsc | 9 deployments: bsc [`0x1eae03...4ab3b8`](./contracts/bsc-56/0x1eae0397274a7e2977f0b78678e22db7014ab3b8/); bsc `0x24a87b...ada317`; bsc `0x3468bc...35d0c6`; bsc `0x5260d8...1db4f0`; bsc `0xa18fdb...55d4d0`; bsc `0xacc5b6...fdf660`; bsc `0xb87a7c...a238ff`; bsc `0xd25ec3...cda438`; bsc `0xe8b2e9...7d2a96` | ⚠️ Unaudited |
| StrategyACryptoSBsw | core_logic | bsc | 9 deployments: bsc [`0x06271d...107c1d`](./contracts/bsc-56/0x06271d7d07f38c835c9ed0005cc4c39bdc107c1d/); bsc `0x2aa23d...9354c5`; bsc `0x577b47...a29d51`; bsc `0xbe35a4...6b935a`; bsc `0xc12a5b...33d8c0`; bsc `0xc807d3...d560cd`; bsc `0xd172ab...0aae5d`; bsc `0xed062e...3b59bb`; bsc `0xfe86e0...ce7d95` | ⚠️ Unaudited |
| StrategyACryptoSDsg | core_logic | bsc | 2 deployments: bsc [`0x02bd61...51e6f9`](./contracts/bsc-56/0x02bd617fbce209d974d545fa06236aec3651e6f9/); bsc `0x5aaa5a...8f7a22` | ⚠️ Unaudited |
| ACryptoSERC20 | token | bsc | [`0x8a5c28...27b2a5`](./contracts/bsc-56/0x8a5c2871e2a437e2fe67f756523fcf444c27b2a5/) | ⚠️ Unaudited |
| ACryptoSFarm | unknown | bsc | 3 deployments: bsc [`0x1e6de8...c26d9c`](./contracts/bsc-56/0x1e6de8d967c9c1e8b4994d260279e1a15dc26d9c/); bsc `0x77c233...72606a`; bsc `0xdfafaa...6aa7de` | ⚠️ Unaudited |
| ACryptoSFarmV2b_ACSI | unknown | bsc | [`0x908cb8...094a8f`](./contracts/bsc-56/0x908cb8400c7aa6559c9541524a20fe4415094a8f/) | ⚠️ Unaudited |
| ACryptoSFarmV4 | unknown | bsc | 3 deployments: bsc [`0x0c3b60...06671c`](./contracts/bsc-56/0x0c3b6058c25205345b8f22578b27065a7506671c/); bsc `0xa98643...4e80d4`; bsc `0xb1fa5d...4b474e` | ⚠️ Unaudited |
| ACryptoSFarmV5_WAV | unknown | bsc | 2 deployments: bsc [`0x308474...beba28`](./contracts/bsc-56/0x308474e30326a1bbaa97d099a85bc12d2bbeba28/); bsc `0xc51ea3...1bf6c2` | ⚠️ Unaudited |
| ACryptoSINFT | token | bsc | [`0xcfbc1f...d75bd6`](./contracts/bsc-56/0xcfbc1ffb05322cdc384e30a1f26ed48e86d75bd6/) | ⚠️ Unaudited |
| ACryptoSNFT | token | bsc | 2 deployments: bsc [`0xbf07d9...33653b`](./contracts/bsc-56/0xbf07d98dfc14d4cf5695eef0fe037f53ad33653b/); bsc `0xcba404...4734dc` | ⚠️ Unaudited |
| ACryptoSUpgradeableBeacon | registry | bsc | [`0x99371d...474ff0`](./contracts/bsc-56/0x99371dff21367e13df0ba87e252286e234474ff0/) | ⚠️ Unaudited |
| ACryptoSValasHelper | periphery | bsc | [`0x9c991d...f70d05`](./contracts/bsc-56/0x9c991dfa844dc19a46f879cc7901cdf6a9f70d05/) | ⚠️ Unaudited |
| ACryptoSVaultFactory | registry | bsc | [`0x59db51...8d9f80`](./contracts/bsc-56/0x59db51f879c54fe31b6d1fc9c6aa733e748d9f80/) | ⚠️ Unaudited |
| ACryptoSVaultsController | core_logic | bsc | 2 deployments: bsc [`0x33db1a...a5165c`](./contracts/bsc-56/0x33db1a3275a384ada357a087f01bb30778a5165c/); bsc `0xb48091...eb9337` | ⚠️ Unaudited |
| ACryptoSVaultTgw | core_logic | bsc | [`0xbf8f88...1fd960`](./contracts/bsc-56/0xbf8f8814ba59e1964acff185ae6ea4ed7b1fd960/) | ⚠️ Unaudited |
| AcsiWeight | unknown | bsc | 2 deployments: bsc [`0x6cb347...00303b`](./contracts/bsc-56/0x6cb347c4ea77402ba0394e2d53366b6bd400303b/); bsc `0xce6c39...34891c` | ⚠️ Unaudited |
| AcsVotes | unknown | bsc | [`0x87d8eb...1d22f5`](./contracts/bsc-56/0x87d8ebd2055d29d26387b64ddc9e00d11e1d22f5/) | ⚠️ Unaudited |
| AcsVotesV2 | unknown | bsc | [`0x81c015...1c8a29`](./contracts/bsc-56/0x81c015ba01e79507a68cbca518a9fbd29d1c8a29/) | ⚠️ Unaudited |
| AcsVotesV3 | unknown | bsc | [`0x3bc194...27fb59`](./contracts/bsc-56/0x3bc194711138df5d6db9b056f36685ad0227fb59/) | ⚠️ Unaudited |
| AcsVotesV4 | unknown | bsc | [`0x6805e4...1bebd1`](./contracts/bsc-56/0x6805e4aafe83d7d70e1e0259191c714d1b1bebd1/) | ⚠️ Unaudited |
| AcsWeight | unknown | bsc | 2 deployments: bsc [`0x34cafb...c01986`](./contracts/bsc-56/0x34cafb511b80180bf8325e6c2dbf8757dec01986/); bsc `0x6866f9...8fc014` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | 11 deployments: bsc [`0x17db2e...171766`](./contracts/bsc-56/0x17db2e4186a69505d93b9d4120f800275b171766/); bsc `0x2b8faf...073861`; bsc `0x31938e...94ce18`; bsc `0x3b2634...634fb8`; bsc `0x7b9196...657f99`; bsc `0x7e1ea6...d46748`; bsc `0x86363a...db44d9`; bsc `0xbbf560...552835`; bsc `0xdac5b7...028ab1`; bsc `0xe1895d...11c467`; bsc `0xea6fba...1e08f6` | ⚠️ Unaudited |
| Authorizer | unknown | bsc | [`0x1bd090...d91f5c`](./contracts/bsc-56/0x1bd090bff5de8cbd74c0399197090c0ec1d91f5c/) | ⚠️ Unaudited |
| BatchRelayerLibrary | periphery | bsc | [`0xf6b8e5...e0bd4f`](./contracts/bsc-56/0xf6b8e5190bff12a89bc4f436bfb4f1c6f2e0bd4f/) | ⚠️ Unaudited |
| ControllerV2 | governance | bsc | 4 deployments: bsc [`0x006062...38f955`](./contracts/bsc-56/0x00606230d318fa47a7c270844c9d24fa1d38f955/); bsc `0x8b1a33...be0e24`; bsc `0xa4752c...0b4add`; bsc `0xd95b9c...9ce129` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | bsc | 28 deployments: bsc [`0x09a182...9880f3`](./contracts/bsc-56/0x09a18250f99118f40a5d992d537e24b8bd9880f3/); bsc `0x0e8aee...e30a2f`; bsc `0x3e499e...b6db0a`; bsc `0x40b3ec...96199e`; bsc `0x44f9cb...eda6e8`; bsc `0x47440e...b399e1`; bsc `0x655c9e...f70195`; bsc `0x6b3de0...f124fa`; bsc `0x75f092...e1f811`; bsc `0x7dbdf9...26981c`; bsc `0x7fa6bf...27c21a`; bsc `0x866e00...bd0d9c`; bsc `0x888888...54d2ca`; bsc `0x888888...7a6ccd`; bsc `0x91590f...5b2266`; bsc `0x9b55e2...0ed3d1`; bsc `0x9efb37...62a090`; bsc `0xa08d2a...6d53e6`; bsc `0xa11c37...9f1b2d`; bsc `0xb1058b...ef5212`; bsc `0xba197f...e4d3f8`; bsc `0xd3c37b...921938`; bsc `0xd65e1f...c51c43`; bsc `0xed3aac...8c455d`; bsc `0xeef75f...44309a`; bsc `0xef3182...ae17ce`; bsc `0xf82d1d...79a01d`; bsc `0xf955c9...5b3f29` | ⚠️ Unaudited |
| ProxyAdmin | governance | bsc | 3 deployments: bsc [`0x17a57b...17edec`](./contracts/bsc-56/0x17a57b0ea4ac87a9ef3182c7cf952c9e4a17edec/); bsc `0x593d93...801b2e`; bsc `0xa54fcd...90156c` | ⚠️ Unaudited |
| StablePoolFactory | registry | bsc | [`0xd2eada...dbc1a3`](./contracts/bsc-56/0xd2eada8bffdabb9321e1512d897afd3537dbc1a3/) | ⚠️ Unaudited |
| StrategyACryptoS0 | core_logic | bsc | [`0x6d4caf...2a8a91`](./contracts/bsc-56/0x6d4caf00ec58adcaa2abbf806651625d032a8a91/) | ⚠️ Unaudited |
| StrategyACryptoS0V2 | core_logic | bsc | [`0xa8e148...77d77b`](./contracts/bsc-56/0xa8e148b29a3d58873277141ad46c672a7377d77b/) | ⚠️ Unaudited |
| StrategyACryptoS0V3_1_ACSI | core_logic | bsc | [`0xf1c9dd...4958c5`](./contracts/bsc-56/0xf1c9dd32ae811e9b8e093266021e69c09f4958c5/) | ⚠️ Unaudited |
| StrategyACryptoS0V5 | core_logic | bsc | [`0xa13a1e...0306d9`](./contracts/bsc-56/0xa13a1e5b7c1d5d40087803a6d4b69b2fc00306d9/) | ⚠️ Unaudited |
| StrategyACryptoS0V5_ACSI | core_logic | bsc | [`0x834828...5205d0`](./contracts/bsc-56/0x83482812f65cc3e625ba15a7d2269f9fbf5205d0/) | ⚠️ Unaudited |
| StrategyACryptoS0V6_ACS | core_logic | bsc | [`0xe4d2ed...7f13b7`](./contracts/bsc-56/0xe4d2ed31fecd197a1857f6619cb60f5fcb7f13b7/) | ⚠️ Unaudited |
| StrategyACryptoSAtlantisLeverageBnbV5 | core_logic | bsc | [`0xb918b4...aee9fa`](./contracts/bsc-56/0xb918b4609462c13272fbf9ba48cb71cf35aee9fa/) | ⚠️ Unaudited |
| StrategyACryptoSAtlantisLeverageUGV6 | core_logic | bsc | 6 deployments: bsc [`0x5405c5...146aa3`](./contracts/bsc-56/0x5405c5afbf0df5eb5339dd61431ee0d519146aa3/); bsc `0x764757...541e09`; bsc `0x942dae...511679`; bsc `0xb12837...c7be80`; bsc `0xd88c09...2fb11b`; bsc `0xe2bcf6...4fb030` | ⚠️ Unaudited |
| StrategyACryptoSBswBsw | core_logic | bsc | [`0xfa4858...372eb8`](./contracts/bsc-56/0xfa48586c190a4437c8651b93265b2ba3be372eb8/) | ⚠️ Unaudited |
| StrategyACryptoSCake | core_logic | bsc | 6 deployments: bsc [`0x083127...356ee9`](./contracts/bsc-56/0x083127866deebdc69b9aa37161753514b9356ee9/); bsc `0x34deff...8d872b`; bsc `0x7be050...8be00d`; bsc `0x91944f...09ae6c`; bsc `0xc0f60c...b4e74a`; bsc `0xd24880...53e859` | ⚠️ Unaudited |
| StrategyACryptoSCakeV3 | core_logic | bsc | [`0x4bbfc7...3a55f1`](./contracts/bsc-56/0x4bbfc7efcd146e3dd1916da99fd72d4e5b3a55f1/) | ⚠️ Unaudited |
| StrategyACryptoSChannelsLeverageBnbV4b | core_logic | bsc | [`0xd8929b...213bbf`](./contracts/bsc-56/0xd8929bbc3f24175587107aba549f5658c5213bbf/) | ⚠️ Unaudited |
| StrategyACryptoSChannelsLeverageUGV6 | core_logic | bsc | 2 deployments: bsc [`0x2cfb72...a29e29`](./contracts/bsc-56/0x2cfb724017cb9302e207c0a7d8202946e8a29e29/); bsc `0x77d0ec...ebc13f` | ⚠️ Unaudited |
| StrategyACryptoSChannelsV2LeverageUGV6 | core_logic | bsc | 5 deployments: bsc [`0x3ce441...d10415`](./contracts/bsc-56/0x3ce4411943924131ac45d6823e0dc7d547d10415/); bsc `0x4651a5...3d7210`; bsc `0x48b02d...96c4da`; bsc `0x6c8eee...18ad08`; bsc `0x7635c6...d1403e` | ⚠️ Unaudited |
| StrategyACryptoSHmdxB | core_logic | bsc | [`0xdb96ed...7ca473`](./contracts/bsc-56/0xdb96edd7e2d8725d439e1231677d2c44df7ca473/) | ⚠️ Unaudited |
| StrategyACryptoSMdxB | core_logic | bsc | [`0xcb08c6...004869`](./contracts/bsc-56/0xcb08c64209d14d0924404c8921dd72c61f004869/) | ⚠️ Unaudited |
| StrategyACryptoSMdxB_BNB | core_logic | bsc | [`0xd180ab...913fbb`](./contracts/bsc-56/0xd180ab2ecafd424a92befbaea655177634913fbb/) | ⚠️ Unaudited |
| StrategyACryptoSMdxV2 | core_logic | bsc | [`0xcad070...f897b4`](./contracts/bsc-56/0xcad070f54eb5b9eb3a0d72999c890adb94f897b4/) | ⚠️ Unaudited |
| StrategyACryptoSVenusLeverageBnbV4b | core_logic | bsc | [`0x5c8c58...b5ccab`](./contracts/bsc-56/0x5c8c5852f3837b37b50497ea11397ec175b5ccab/) | ⚠️ Unaudited |
| StrategyACryptoSVenusLeverageUGV4 | core_logic | bsc | 3 deployments: bsc [`0xc75444...a56f52`](./contracts/bsc-56/0xc75444c41a0cf0bc1388675c1ea684df2ea56f52/); bsc `0xd70a5e...31263f`; bsc `0xe6d84b...a431ec` | ⚠️ Unaudited |
| StrategyACryptoSVenusLeverageUGV5 | core_logic | bsc | 2 deployments: bsc [`0x060b86...0b46db`](./contracts/bsc-56/0x060b86242471d7244414ed6f21c19b95010b46db/); bsc `0xf9ebf7...e9737a` | ⚠️ Unaudited |
| StrategyACryptoSVenusLeverageV3 | core_logic | bsc | 5 deployments: bsc [`0x6c3ea5...286054`](./contracts/bsc-56/0x6c3ea529d5bcd32fef50ad32fb699a8008286054/); bsc `0x8a22ef...9ea167`; bsc `0x99601d...d38227`; bsc `0xd195c2...4a06cb`; bsc `0xebd318...3f25d9` | ⚠️ Unaudited |
| StrategyACryptoSVenusVaiV2 | core_logic | bsc | [`0x20d1d3...8a6f78`](./contracts/bsc-56/0x20d1d365834852f1fea2dfacd5121935f88a6f78/) | ⚠️ Unaudited |
| TgwWeight | unknown | bsc | [`0xaac02d...9ecdf7`](./contracts/bsc-56/0xaac02d86a9fea6f652e0732a73fdfc98ff9ecdf7/) | ⚠️ Unaudited |
| TheGreatWaveNFT | token | bsc | [`0x522f1b...3dc0fd`](./contracts/bsc-56/0x522f1b57bc1dee5c37aa8ecdccd5f076b63dc0fd/) | ⚠️ Unaudited |
| Vault | core_logic | bsc | [`0xa82f32...6ceced`](./contracts/bsc-56/0xa82f327bbbf0667356d2935c6532d164b06ceced/) | ⚠️ Unaudited |
| Vyper_contract | unknown | bsc | 22 deployments: bsc [`0x191409...8a191e`](./contracts/bsc-56/0x191409d5a4effe25b0f4240557ba2192d18a191e/); bsc `0x2d00c5...ac2d63`; bsc `0x38b28b...809ac7`; bsc `0x391987...a4f958`; bsc `0x494403...f02b28`; bsc `0x4deb90...600216`; bsc `0x6f58a7...f78a73`; bsc `0x7f66f5...210b9f`; bsc `0x83d69e...71f29b`; bsc `0x8ba0eb...9fc837`; bsc `0x99c927...3c4b77`; bsc `0x9e31f4...606b98`; bsc `0xb3f0c9...59b0ac`; bsc `0xbe7caa...b5ca81`; bsc `0xc56ebb...f501a6`; bsc `0xc61639...aecbf0`; bsc `0xc8036d...087960`; bsc `0xd3debe...23301b`; bsc `0xd487c8...3939b7`; bsc `0xde14f2...78db21`; bsc `0xeb7dc7...1ea5ad`; bsc `0xec8375...4a16c7` | ⚠️ Unaudited |
| WeightedPool2TokensFactory | registry | bsc | [`0xc8201d...097037`](./contracts/bsc-56/0xc8201dc54256c292ff8ab9b5cb6b01e1a5097037/) | ⚠️ Unaudited |
| WeightedPoolFactory | registry | bsc | [`0xb72380...812e6f`](./contracts/bsc-56/0xb7238020c331e8cdfd26db299cfd2076df812e6f/) | ⚠️ Unaudited |
| yVault | core_logic | bsc | [`0x39af7b...4ab9f2`](./contracts/bsc-56/0x39af7bfd2726fe98bd94783f71112758824ab9f2/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (223)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x16f0a760d690a83e78aaca527f84b34529fc3dc9) | proxy | bsc | `0x316285...649db0` | ❓ Unverified |
| Proxy (impl: 0x26f4e9f1cc37cd70f4962e7e1dea2cb6498a2e70) | proxy | bsc | `0x97affd...07eb3e` | ❓ Unverified |
| Proxy (impl: 0x36d206f624eaa3a4ea31da6ade5c2a7a5ddb088f) | proxy | bsc | `0xecaed9...8daae8` | ❓ Unverified |
| Proxy (impl: 0x4ec70cc0d018c0a69d5e54e5acaf089c6f3b12b1) | proxy | bsc | `0x2b217f...7bece2` | ❓ Unverified |
| Proxy (impl: 0x52b6ea084a1f2e6177b23a7e17fbba8518aa3843) | proxy | bsc | `0x7b4081...41617c` | ❓ Unverified |
| Proxy (impl: 0x89952a6db64d0c731b8e0b7545a0709d2a912539) | proxy | bsc | `0xeb7e2d...ee25ba` | ❓ Unverified |
| Proxy (impl: 0xf347d2c9ea27f7f053cbb122bfada5ebf442b2bb) | proxy | bsc | `0xba4b7a...421d8a` | ❓ Unverified |
| Proxy (impl: 0xff2ae6cba574fb3aa002ababc6bc4d08017c076a) | proxy | bsc | `0x07016c...4528ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0114a4...55d0e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x014acd...d98a47` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x02d444...a6aa8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x02e7b1...a57c79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0478b1...e38ddc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x06f772...9fdfc2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x075054...10bd09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x087e84...48043b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x08a645...aaff9c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0adcc1...d082b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0c5917...cb29a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0e065f...6f901a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0e08dc...568a09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0ed63a...5d49d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x127c84...8d281d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x14ed22...5a8a84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x15a790...dda7d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x16f0a7...fc3dc9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x170c1e...1e8174` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x18241d...54e67c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x18c186...3fac84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1c6c21...f212be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1e73c3...8c7225` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1e79ba...9d4d91` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1e83ee...7d6e1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1ec76e...4631e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1f9068...fa6ce7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1ff0fe...5fb0e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x22cacd...52f6b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x235d80...599f4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2438f4...01701b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x249973...ceef4b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x24d379...a95e84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x26f4e9...8a2e70` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x295f34...5ce1e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2be060...257cb4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2ce79a...c21567` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2e0d0d...1c93b3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2e4534...fc7030` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2ecb16...d91a14` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2eed8c...af8eac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2f9de8...ce648e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3080d2...d8a068` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3195f1...38e2c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x31b9a7...efa9b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3254fc...c887c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3261e4...a2f09c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x32ddea...9290d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x32f6f7...9d2dba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3457fc...45e289` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x358029...f3a21c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x36d206...db088f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x37ced9...271f0a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x39a591...3f4a1a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3a630a...85da4d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3aa07f...fbf9a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3d0c1a...0d366e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3e3d3b...3bdbb5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3ea7ba...cf72a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x428e04...02c614` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x443ca2...ac2254` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x45043f...affdea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x45427a...7119fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x468b7b...a74764` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x49397a...d5d212` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x49edf8...c139d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x49fa76...40c5f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4c3e07...f5de21` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4cbe64...0d8c18` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4ec70c...3b12b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x50bcdf...74937c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x52b6ea...aa3843` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x542678...20d69d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x553a32...aff4f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x555e52...aa0dd4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5809b2...a2e5de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x59e5fc...cc1d78` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x59f450...0ce307` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5ad3d9...ea5b09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5c1310...e63b41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5c7a93...118353` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5efda0...56e362` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x600cc7...59503a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x60cf11...38e4c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x625f0b...fcede9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x632f1a...691e02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x63e648...237e2e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x64c69b...187a8f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6864f8...5f809d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x68ff04...9e7e1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x695577...7a4845` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x69cd48...9444d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6b12c8...2ba69c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6ceecc...3058de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x711208...ac9edd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x71b345...cde4c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x723799...eaebb1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7510ab...3ec81f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x756c99...45901a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x76666f...428a79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x77e893...7e9543` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x794c50...9d88b3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x79cb71...cb5782` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7aa0f9...42962b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7d06dc...295371` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7debb1...1b986c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7f4e87...590fcc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x81031a...07da8a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x814149...9e2605` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x81d0c4...69c12c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x81da84...ed1e28` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x842546...7d9905` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x844cb6...fe68bc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x848230...0e50cd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x85518c...ab04de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8592df...ae2a0a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x86afae...5044b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x86b4e4...b36aab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8761bd...5a5cb6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x87cc18...aff498` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x886786...686d00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x88a419...c15090` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x89952a...912539` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8be55d...9fcd72` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8c1e59...415eec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8d009f...0b7872` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x905f2f...ef31af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x90ff45...814515` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x91d5b2...83ca8b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x936c16...f5d522` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x93f894...560e8b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x941e57...5d1a61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x946921...f0b904` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x94c9bf...24aa71` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x950007...e93096` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x97a4af...1695d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x97c110...958f83` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9e268b...fa2b49` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9f8db5...4cb960` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9fa0bf...4a3709` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa1168d...49e3f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa1a819...a6762a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa6af36...81628e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa6b493...48adcb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa7a4c5...428631` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa998b6...a0d08d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xaa7d33...14706f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xaae93f...883418` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xacc0fb...80bf4b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xacfd02...562df3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xad57a8...ce9df9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xad6c68...0e0974` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb09bf1...60621c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb0e020...f4c30e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb29b01...75a124` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb9df9e...450bcf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb9f2b1...1b6e3c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbb5224...0deefe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbdc1b1...1b3bd9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbf09a4...ef61fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbf0feb...1c3ee2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbf5e37...87bd6e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc0148f...e0f02d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc01e28...64871a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc0d0fd...0c6083` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc13698...392ddf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc1726d...3f1468` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc27585...d841b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc376ad...16c7e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc3b7f8...b927f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc45044...1dbae1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc57036...1c8afd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc582ed...dfb3d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcb9f0a...ed2a25` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcd6033...8a7b2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcf0038...6c19bd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcf4e97...0af7e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcfc60d...28b2e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd009da...f52492` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd0a062...dc9d51` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd1e0e9...57f8cc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd587d4...793aeb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd64e4e...c4d1da` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd672c7...0f8b32` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd68ac0...3fd28f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd8ed47...0ce3b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd8f281...a8a7a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xda8811...b5d5f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdbb44b...b5da5c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdbccd3...602978` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe0b6c0...20ebd4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe0e5fe...ef41d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe3c138...ed8fae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe54706...e594cc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe5f77f...75657e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe64771...addae6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xeac70a...ff88f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xeaf419...cf35fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xeb0745...24c0bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xeceeea...3010f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xed3af2...292db4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xee08a1...91d8a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xee1d9d...88d9e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xef3625...c04fb6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xef5315...dd8bd8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xefcd03...4997c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf347d2...42b2bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf453b2...10a1ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf49f1a...c4dee7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf5cae8...8ff017` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfa8639...f08799` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfac6ab...026b5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfb4143...2c1629` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfb63b8...85afa1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xff2ae6...7c076a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [README.md](https://github.com/acryptos/docs.acryptos.com/blob/master/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [20210128-defiyield.info.pdf](https://github.com/acryptos/acryptos-protocol/blob/main/audits/20210128-defiyield.info.pdf) | unknown | Audit | 2021-01 | stale | Direct | contract_name | 13 | high |
| [20210218-Hacken-ACryptoSFarmV2.pdf](https://github.com/acryptos/acryptos-protocol/blob/main/audits/20210218-Hacken-ACryptoSFarmV2.pdf) | Hacken | Audit | 2021-02 | stale | Direct | n/a | 0 | n/a |
| [20210324-Certik-StrategyACryptoSCakeTokenTokenV2.pdf](https://github.com/acryptos/acryptos-protocol/blob/main/audits/20210324-Certik-StrategyACryptoSCakeTokenTokenV2.pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name | 11 | high |
| [20210331-Hacken-Complete.pdf](https://github.com/acryptos/acryptos-protocol/blob/main/audits/20210331-Hacken-Complete.pdf) | Hacken | Audit | 2021-03 | stale | Direct | contract_name | 187 | high |
| [20211105-Hacken-AcsiFinance-BalancerV2.pdf](https://github.com/acryptos/acryptos-protocol/blob/main/audits/20211105-Hacken-AcsiFinance-BalancerV2.pdf) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [20211116-Hacken-Review.pdf](https://github.com/acryptos/acryptos-protocol/blob/main/audits/20211116-Hacken-Review.pdf) | Hacken | Audit | 2021-11 | stale | Direct | contract_name | 191 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 311 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=402

Zero-match audit list:

- [9664] README.md
- [9666] 20210218-Hacken-ACryptoSFarmV2.pdf
- [9669] 20211105-Hacken-AcsiFinance-BalancerV2.pdf

Fork inheritance lineage and inherited audits are included when available.
