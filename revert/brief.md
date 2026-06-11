# Agentic Audit Brief: Revert

## Project Overview

- Project: Revert (`revert`)
- Website: [https://revert.finance/#/ref/w6vno3](https://revert.finance/#/ref/w6vno3)
- Lifecycle: active (Tier 0, 40.1% below peak)
- Generated: 2026-06-11T02:17:02.879Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-bd5e
- Chains: arbitrum, base, blast, bsc, ethereum, optimism, polygon, unichain
- Contract surface: 84 unique implementations (546 raw deployments)
- DeFi Llama TVL: $11,629,176.00
- On-chain TVL (included contracts): $2,087,284.04
- TVL by chain: Arbitrum $853,511.07 | Base $840,626.20 | Ethereum $393,146.77 | Polygon $0.00

## Project Description

Revert provides analytics and tools for AMM liquidity providers, with a focus on Uniswap concentrated liquidity positions. Its contract surface includes Uniswap V3/V4 position utilities, automation and compounding components, V3Vault contracts, and related lending or leverage functionality where applicable.

### Architecture

The Revert automation suite uses shared infrastructure like V3Oracle for price feeds and InterestRateModel for lending rate calculations, while FlashloanLiquidator and LeverageTransformer support advanced operations. Revert Lend vaults rely on the same oracle and interest rate models, and the V3 Staker integrates with the broader Uniswap V3 ecosystem managed by Revert's utilities.

## Audit Coverage Summary

- Verified implementations audited: 2/18 (11.1%)
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 66
- Unique implementations: 84
- Raw deployments: 546
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $2,087,284.04
- Latest audit: 2022-09 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 11.1% | 2022-09 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UniswapV3Staker | core_logic | polygon | [`0x8c696d...95659a`](./contracts/polygon-137/0x8c696def6db3104df72f7843730784460795659a/) | ✅ Audited |
| Compoundor | unknown | bsc | 8 deployments: ethereum `0x541189...0f94a1`; optimism `0x541189...0f94a1`; bsc [`0x317202...d505d3`](./contracts/bsc-56/0x317202b11add82232d06bc13892cd22e38d505d3/); bsc `0x98ec49...2ec790`; polygon `0x541189...0f94a1`; base `0x4a8c2b...a57ee4`; arbitrum `0x541189...0f94a1`; blast `0x6a5023...e1dfb3` | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| V3Vault | core_logic | base | 41 deployments: ethereum `0x36aeae...be7599`; ethereum `0x4d858a...79349a`; ethereum `0x674afc...5a045c`; ethereum `0x68e7cb...dd0adb`; ethereum `0x7f48e6...e5fde0`; ethereum `0xa27545...d15667`; ethereum `0xca6b14...f3e459`; ethereum `0xdc4f38...a2b518`; base [`0x02c514...1528cd`](./contracts/base-8453/0x02c51413a0c76af2c71d74cfadb414a0ed1528cd/); base `0x1625d8...18971f`; base `0x22ce29...2454cb`; base `0x2736e6...5f302d`; base `0x33a8ab...c901a6`; base `0x348633...aa988d`; base `0x36aeae...be7599`; base `0x3a23ec...563d3a`; base `0x4aba43...41904b`; base `0x50a854...ac154f`; base `0x516646...22a7a0`; base `0x55fe00...7a2619`; base `0x632fff...dc6564`; base `0x77f769...0fc5f4`; base `0x82132b...31c758`; base `0x89941a...5e05b2`; base `0x93db99...eccd26`; base `0xa1ccfb...005859`; base `0xa2ffbe...8f66b5`; base `0xb0a1a9...53a639`; base `0xb1284d...be3cd3`; base `0xb46941...821e38`; base `0xc09d7d...c69084`; base `0xce5614...d67460`; base `0xd4c617...b06156`; base `0xd70c79...a1c384`; base `0xdfeba9...a55adc`; base `0xdff54f...994054`; base `0xe91793...17c3d9`; base `0xeca183...3e6466`; base `0xed8125...cf9d55`; base `0xff86e4...e4a305`; arbitrum `0x74e6af...e07825` | ⚠️ Unaudited |
| AutoCompound | unknown | base | 7 deployments: ethereum `0x7c8124...a53abd`; optimism `0xbe9317...52c568`; bsc `0x3b1767...2bd875`; bsc `0x843fe4...09b72b`; polygon `0xf887e5...5e9783`; base [`0x0bf485...3f7bec`](./contracts/base-8453/0x0bf485bd7ebb82e282f72e7d14822c680e3f7bec/); arbitrum `0x9d97c7...d5b6db` | ⚠️ Unaudited |
| AutoExit | operational_periphery | polygon | 29 deployments: ethereum `0x1765af...8265a4`; ethereum `0x37c25b...ee4e90`; ethereum `0xef4868...29edf7`; ethereum `0xfcc46d...ca4299`; optimism `0x32d03c...b223c7`; optimism `0x3322ac...4742b9`; optimism `0x6d55aa...17d3da`; bsc `0x3cac4a...974d93`; bsc `0x4bb7c9...6003ba`; bsc `0x4fbfc7...f48170`; bsc `0x5beacd...845729`; bsc `0x68bb8d...fe3cb9`; bsc `0x9f26fb...156f4c`; bsc `0xa16cf1...b66a58`; bsc `0xa65b04...62f9b1`; bsc `0xa8a993...d90cee`; bsc `0xae19eb...829bb1`; bsc `0xc2c77d...f696b3`; bsc `0xd75699...d7eb95`; bsc `0xf0136d...2f9385`; polygon [`0x08ad36...e37533`](./contracts/polygon-137/0x08ad36649da1271124533d36dccacb1e00e37533/); polygon `0x1d0d74...5ebcad`; polygon `0x9210a1...aea00e`; base `0x16e0b9...596a93`; base `0x5b3b61...53d046`; base `0xde3dee...345d6a`; arbitrum `0xd01863...297dda`; arbitrum `0xd82e0b...00ab06`; arbitrum `0xee1e94...4165c0` | ⚠️ Unaudited |
| AutoRange | unknown | base | 33 deployments: ethereum `0x27f713...577f04`; ethereum `0x2c0802...9b144e`; ethereum `0x810300...6b080a`; ethereum `0x88481e...a72d9e`; ethereum `0x9576fc...ce0b1a`; ethereum `0x9b74e5...87cca9`; ethereum `0xd981c8...3c6d99`; optimism `0x6ee802...861e71`; optimism `0x87f442...7fdca5`; optimism `0x9377ff...32ccab`; bsc `0x1af7cf...9c54b1`; bsc `0x48628d...85493e`; bsc `0x52c200...ac3e68`; bsc `0x64346c...d04510`; bsc `0x98b79d...e9e09a`; bsc `0x9a515f...92fb3b`; bsc `0xa0dc48...c10ad5`; bsc `0xa8b9fc...96a493`; bsc `0xc3d24e...a6bcf8`; bsc `0xc642de...ce84cd`; bsc `0xd84913...96353a`; bsc `0xd8dcdb...27d7e4`; bsc `0xf3f778...9a197e`; bsc `0xf82a64...46b826`; polygon `0x54ebb4...e2864e`; polygon `0x55d588...edfbf4`; polygon `0x5e5422...374a5b`; base [`0x043e2f...784c69`](./contracts/base-8453/0x043e2ff28db24061d46629b999a358a24c784c69/); base `0xa85494...f9dc1d`; base `0xca7134...88b906`; arbitrum `0x5ff219...f158de`; arbitrum `0xa44b95...32645a`; arbitrum `0xab6998...0e7f1b` | ⚠️ Unaudited |
| BridgeTester | operational_periphery | ethereum | [`0x3465fa...8e2075`](./contracts/ethereum-1/0x3465fa4252d73ca61ec8c00246335189be8e2075/) | ⚠️ Unaudited |
| BridgeTester2 | operational_periphery | ethereum | [`0xb306f9...a2cba6`](./contracts/ethereum-1/0xb306f936d69cc8425dd3a7d260690b5df5a2cba6/) | ⚠️ Unaudited |
| FlashloanLiquidator | operational_periphery | ethereum | 16 deployments: ethereum [`0x0db09b...24bc88`](./contracts/ethereum-1/0x0db09b29f0726d8dbe04b1083769d30e6724bc88/); ethereum `0x1cb0b8...2aed57`; ethereum `0x5e97a4...3d9b23`; ethereum `0x6926cd...a48e89`; ethereum `0xa44080...2cc79d`; ethereum `0xc11585...9ce1f0`; ethereum `0xf63fc5...74586d`; ethereum `0xfc5637...43f92f`; base `0x2867d6...3a8334`; base `0x4b073a...ecb73d`; base `0x6bcb1a...eeac5b`; base `0x83b218...8e8b9a`; base `0x8ddf5f...9d7a68`; base `0xaa4a65...716673`; base `0xe639d6...ecebc0`; arbitrum `0x5b94d4...bfefc2` | ⚠️ Unaudited |
| GaugeManager | operational_periphery | base | 55 deployments: base [`0x03486d...6a0e11`](./contracts/base-8453/0x03486dd203b725337a0ba72ea60f26c3966a0e11/); base `0x071e48...f0e3a3`; base `0x0bc5e4...03fb2b`; base `0x111559...849cdb`; base `0x1462a8...ac600a`; base `0x16fec3...b84338`; base `0x19f92c...94ba04`; base `0x1a2b34...9dc4e8`; base `0x1ac20b...9d11b9`; base `0x1e9f31...18242b`; base `0x1f44aa...9b25c4`; base `0x233da9...c95673`; base `0x2365c3...527615`; base `0x284b80...061743`; base `0x32eb0f...bd88c4`; base `0x3411e4...856b7d`; base `0x3a9cb8...b08559`; base `0x3de453...7fb0fc`; base `0x3ef141...0f63ce`; base `0x5b6ccd...8a79ab`; base `0x5c9a7d...7f5d82`; base `0x66a248...d3e129`; base `0x6eeee4...b4da21`; base `0x75e77d...d54025`; base `0x779657...7c231e`; base `0x7a5d83...e7f471`; base `0x7e3db2...aa8be7`; base `0x7edbfc...3585e4`; base `0x7f6b60...a95e68`; base `0x8131cc...d7855f`; base `0x8508f9...0dcfac`; base `0x85cf3b...00159e`; base `0x8abc86...000ce7`; base `0x90ab97...a8644f`; base `0x926877...13c16f`; base `0x96beb0...8c35ca`; base `0x9d01fe...4bbfa5`; base `0xa27545...d15667`; base `0xa38ba0...e10c7a`; base `0xb14384...4d6615`; base `0xb8a43d...2edc7b`; base `0xb92213...50b165`; base `0xbe08ff...d237ec`; base `0xbe2868...91ad19`; base `0xbfe23e...b2bd3b`; base `0xc010d0...f9c9ba`; base `0xc311be...f027d2`; base `0xc92c01...5ec8c8`; base `0xd37cfe...6d03de`; base `0xdbc592...79d141`; base `0xe69991...683e8c`; base `0xe7a8d9...8e24a8`; base `0xe8e4f0...c6715f`; base `0xf10b6c...8dfff8`; base `0xf3e49e...87bb92` | ⚠️ Unaudited |
| InterestRateModel | operational_periphery | base | 75 deployments: ethereum `0x12d1a6...ebd96a`; ethereum `0x8bccb7...480279`; ethereum `0xb1e602...dc937f`; ethereum `0xb50daf...1f063b`; ethereum `0xb5634b...956060`; ethereum `0xd0524a...ac7927`; ethereum `0xd468de...7e0577`; ethereum `0xd4c617...b06156`; ethereum `0xdc3538...737878`; ethereum `0xe35bf3...428c40`; base [`0x03688e...0053f9`](./contracts/base-8453/0x03688efa97662d3a2fc7be8a322e02d4810053f9/); base `0x049c4b...f6767e`; base `0x04fd01...c4fa85`; base `0x084531...8d2923`; base `0x089d27...5322f0`; base `0x09e49a...bcb41f`; base `0x0cf4d5...92da7f`; base `0x108885...9e2527`; base `0x10e981...729fe2`; base `0x11f877...71872e`; base `0x180044...fc56c4`; base `0x1905d5...182553`; base `0x1adbdd...434605`; base `0x20d3c8...9abc2b`; base `0x22f1d4...c87f42`; base `0x2774e0...a98e7f`; base `0x30c434...c47719`; base `0x364606...630fc7`; base `0x39b583...9d481a`; base `0x3ab6af...a9ce57`; base `0x3f133f...47b747`; base `0x406fc1...3f8d2b`; base `0x4139d4...b5dd72`; base `0x414690...b9d283`; base `0x447a68...acf7ee`; base `0x456075...5a4276`; base `0x5b5e47...c9c4df`; base `0x61ad77...204415`; base `0x65aa45...5f0fd0`; base `0x660588...4aa715`; base `0x70079c...bfad7a`; base `0x71b45d...6104cc`; base `0x765547...0898ce`; base `0x76c9ae...473519`; base `0x775e3d...0a12d3`; base `0x7b9b1f...b6f35c`; base `0x7fcef7...4b052c`; base `0x86dde7...5f4ec9`; base `0x87d676...d0039e`; base `0x915dde...af3350`; base `0x93463e...2bf4e3`; base `0x948ce9...bc1138`; base `0xa4b628...e93b52`; base `0xb1bbe8...6664fc`; base `0xb3aeb2...f2372b`; base `0xb54768...11f0d5`; base `0xb6845c...550be5`; base `0xb80fec...7e78c3`; base `0xbf25a8...63e739`; base `0xcddb01...47fa70`; base `0xd0524a...ac7927`; base `0xd09053...73af52`; base `0xd1909c...7aecff`; base `0xd24c18...c7577f`; base `0xd887fb...9d60ce`; base `0xdcd435...c93f3e`; base `0xdd34a1...6fc1c5`; base `0xe2ebb8...a839cb`; base `0xe6ec36...f27523`; base `0xe7bf8f...df81ea`; base `0xe8b636...622c67`; base `0xf24139...6bfabe`; base `0xf44ebd...50f2ab`; base `0xf53563...dd35c4`; arbitrum `0x18616c...e58997` | ⚠️ Unaudited |
| LeverageTransformer | unknown | base | 69 deployments: ethereum `0x79a7db...f079a5`; ethereum `0x8f5fe7...2bd6e4`; ethereum `0xa9bfa7...b44bb7`; ethereum `0xaa740d...15c0eb`; ethereum `0xbaea7f...227b1e`; ethereum `0xd58b8f...3a21fb`; ethereum `0xfc3f98...b30aa1`; base [`0x059813...ec4e98`](./contracts/base-8453/0x05981339909992a8d9d13e8c651e54f306ec4e98/); base `0x082de2...8b95a4`; base `0x086dca...6de157`; base `0x1535ea...0db30a`; base `0x15c1f7...0dd5d6`; base `0x16ea81...98bc92`; base `0x1d4f04...5fb7be`; base `0x21cbd9...79bc51`; base `0x265817...ec3bb8`; base `0x26bf32...259875`; base `0x2827cb...dbc07f`; base `0x2d470d...1c4dfe`; base `0x2e20e1...a3d5e7`; base `0x36fc9c...9b556a`; base `0x40b8e6...7abf48`; base `0x416f31...8a24b1`; base `0x44138e...4d709b`; base `0x45085a...0fd1f8`; base `0x468695...9f0d0d`; base `0x4d858a...79349a`; base `0x50d58c...c28b63`; base `0x513051...daa022`; base `0x5253a5...8d4d85`; base `0x52fff3...ea79d6`; base `0x5964f2...b099ed`; base `0x5d45ea...ae52b8`; base `0x5e97a4...3d9b23`; base `0x624870...61bf48`; base `0x674afc...5a045c`; base `0x69193c...18562d`; base `0x691f84...c1c188`; base `0x706d3e...6d951d`; base `0x737902...c8e878`; base `0x787fd5...582c4d`; base `0x7c2998...2d363c`; base `0x969df5...6970c4`; base `0x969ed3...8931d4`; base `0x9743e3...ce2a3f`; base `0x97b02f...0ed481`; base `0xa4bcaf...adfd83`; base `0xab95a1...fcb604`; base `0xad7e16...5daaa7`; base `0xae53b3...01e9b7`; base `0xb2f65f...284471`; base `0xb3562e...b35546`; base `0xba8619...b0a129`; base `0xbb8bc2...3c4286`; base `0xc138d1...66722e`; base `0xc2a0e2...354753`; base `0xc8fd28...103029`; base `0xcbc102...173b5d`; base `0xcbda6f...c0b804`; base `0xd899e0...fc8fe0`; base `0xdd10fa...d9449c`; base `0xe0c658...86936c`; base `0xe328d8...873f07`; base `0xe44de5...e8a998`; base `0xe5c8ff...b98ce7`; base `0xf47d5d...3f5b68`; base `0xf84ef1...404c7a`; base `0xf8d456...80da51`; arbitrum `0xe5047b...bb25e8` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | optimism | 6 deployments: optimism [`0x167829...e3a6d4`](./contracts/optimism-10/0x167829543510c13c792bd8f6a414f74d51e3a6d4/); optimism `0x35ba8c...3058a6`; optimism `0x86690b...a3c967`; optimism `0x9310f8...5a63f2`; polygon `0x243d32...c9132a`; polygon `0x9e9a06...1d1fb6` | ⚠️ Unaudited |
| SelfCompoundor | unknown | optimism | 8 deployments: ethereum `0xb50a39...d3b48f`; optimism [`0x3c0fd0...2847ef`](./contracts/optimism-10/0x3c0fd0b42aa46f03f6cf5e305ed9b2ce402847ef/); bsc `0x48331a...dd747c`; bsc `0x69437b...dd8da6`; polygon `0xad58d1...f739ea`; base `0xc5d8fa...f1551a`; arbitrum `0xb43a61...d9f0a1`; blast `0x4a8c2b...a57ee4` | ⚠️ Unaudited |
| TimelockController | governance | base | 6 deployments: ethereum `0xd7cbf8...6408f0`; ethereum `0xff2dc1...d72145`; polygon `0xb9d4df...61eabf`; base [`0x36bf99...7eb1cf`](./contracts/base-8453/0x36bf9981ba905ca63bdd3271775db43cc57eb1cf/); base `0x477683...bada13`; base `0x7814ea...77ae49` | ⚠️ Unaudited |
| V3Oracle | operational_periphery | ethereum | 74 deployments: ethereum [`0x035462...a9f583`](./contracts/ethereum-1/0x035462f4055338f6411a9a0a4e555d6f11a9f583/); ethereum `0x31c8ae...f4731f`; ethereum `0x38efef...38c471`; ethereum `0x5c7608...b63a9b`; ethereum `0x8c599c...78cc29`; ethereum `0xa125f6...cb6585`; ethereum `0xda0f97...a98a30`; ethereum `0xe0151d...36072f`; base `0x06a1eb...073a7b`; base `0x08d920...0bd1bb`; base `0x0a9228...ea7db3`; base `0x0bb922...59cabc`; base `0x0d16d5...6804b5`; base `0x0e7520...8df829`; base `0x0ff4b8...f05800`; base `0x14b0b9...60625e`; base `0x1572f9...e91e22`; base `0x21df58...1af9e2`; base `0x298816...70a6db`; base `0x2d2b85...bf1bf3`; base `0x2e300f...96757f`; base `0x31c8ae...f4731f`; base `0x3679b7...8ffc21`; base `0x3dfe6e...281c4a`; base `0x42ca6f...0ea1ee`; base `0x446d5d...65762a`; base `0x4652ac...081260`; base `0x46df44...11fd01`; base `0x4d1f01...14ef60`; base `0x4ec09a...5fbae2`; base `0x52fe73...810e5c`; base `0x5358b4...0e4af0`; base `0x56e886...c8cf6d`; base `0x572826...cd3a67`; base `0x5a6cd5...19e7f6`; base `0x5cf669...e35984`; base `0x5d1e74...46bc57`; base `0x5ec421...44908b`; base `0x6014db...5a63a9`; base `0x6e28dd...388100`; base `0x7c73a6...efcff6`; base `0x82e788...bb67c8`; base `0x896a2f...935279`; base `0x90af66...9423bc`; base `0x921054...248d7f`; base `0x950fa0...fc1d47`; base `0xa1e6d9...479285`; base `0xa33f14...9a691b`; base `0xa53f1d...5ac178`; base `0xab52f8...f7c2b6`; base `0xad6239...3cc096`; base `0xaed997...9aa7dd`; base `0xb077e7...853b54`; base `0xb2fe04...c148ae`; base `0xbbaa5a...5c893f`; base `0xbefa9d...a8c988`; base `0xc128e9...077db4`; base `0xc27d15...e85521`; base `0xc38f80...ecbd0d`; base `0xc43d78...d4f91a`; base `0xc5664a...a32d4f`; base `0xc7037f...ef666f`; base `0xcced0b...bc310c`; base `0xcd2e4f...168ec1`; base `0xcf33e4...779967`; base `0xd29e12...7712af`; base `0xe865a2...62c929`; base `0xeccfe1...7d9eb8`; base `0xee49e4...365131`; base `0xf1050a...84a4a3`; base `0xf3b0ab...a1d4d1`; base `0xf3f647...d05e2d`; base `0xf6c04c...ce0e4c`; arbitrum `0x9f703b...83d506` | ⚠️ Unaudited |
| V3Utils | unknown | polygon | 42 deployments: ethereum `0x371a33...423e8c`; ethereum `0x3f133f...47b747`; ethereum `0x531110...04fafd`; ethereum `0xa851b7...4e5627`; ethereum `0xab52f8...f7c2b6`; ethereum `0xae8999...ead578`; ethereum `0xd65683...71161c`; ethereum `0xde1734...36eeb7`; optimism `0x2a017f...e8f8c3`; optimism `0xae8999...ead578`; optimism `0xd5c605...ecf4d8`; bsc `0x2b1971...84d773`; bsc `0x6da6ed...dd5f18`; bsc `0x818354...c53392`; bsc `0x839706...305e9d`; bsc `0x89941a...5e05b2`; bsc `0x91403a...cdfee6`; bsc `0xae8999...ead578`; bsc `0xd694b3...0909ca`; bsc `0xd81a68...aad97d`; bsc `0xedfc44...cb0782`; bsc `0xf6d2da...35a376`; polygon [`0x034f0e...b32da2`](./contracts/polygon-137/0x034f0e78cf205d7f43ebe7878434afd7f4b32da2/); polygon `0x28ef5a...53b44d`; polygon `0x321f13...6b2002`; polygon `0x4ec6f2...52108f`; polygon `0x655657...d07708`; polygon `0x776342...f8cd81`; polygon `0x8c9257...2d07bb`; polygon `0x8cc7f8...a6f548`; polygon `0xae8999...ead578`; polygon `0xb89495...ee32d3`; polygon `0xd6bafb...07ca4a`; base `0x3eb0ff...44b078`; base `0x5b2f7c...b86be5`; base `0x7d1f9f...38b9e1`; base `0x85f7d1...0f3f85`; base `0x98ec49...2ec790`; base `0xde1734...36eeb7`; arbitrum `0x95a8cc...c2a164`; arbitrum `0xae8999...ead578`; arbitrum `0xcfd55a...b30980` | ⚠️ Unaudited |
| V4Utils | unknown | ethereum | 8 deployments: ethereum [`0x01d050...b0699c`](./contracts/ethereum-1/0x01d050d6c303c5861e83b00f2c9a218039b0699c/); ethereum `0x2dba37...32fd1e`; ethereum `0x632343...4f255b`; ethereum `0xe162e0...18436d`; unichain `0x4a8c2b...a57ee4`; unichain `0x541189...0f94a1`; unichain `0x6a5023...e1dfb3`; unichain `0x84b41a...0efe65` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (66)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x1bb202...cfcfaf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x349616...404e50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf4d7e4...f3341e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf6c04c...ce0e4c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x41c84f...30eb47` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xbdd1d4...2b49d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x09f9e5...a73e89` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6c09c1...f97994` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x069cac...432d04` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x0bc36a...97d68d` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x0e5742...2ec2ac` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x14644e...ac4534` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x3eb0ff...44b078` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x7443d4...25fde0` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x8b29cb...75036d` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xca7134...88b906` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1516e9...68f02a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5da73a...240ce7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xac4b3e...3c32e5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x07e73f...cd3666` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0a9732...a84d4b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0b14fe...602e23` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0c0104...443913` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0d73c2...ef5e37` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1bb920...118be5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1c4888...008488` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x24e4d4...433551` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x25459e...7c2e4f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2b80d5...f0657c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3a0724...2d355f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3b168c...d486b2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x45d88c...f13937` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4849fb...0cc7ab` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x511ceb...831349` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5826e9...061eb7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x583c44...cb477d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5e515a...41b554` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5f1a44...751e98` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x61c5e2...679170` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x620158...3321d7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x64be8d...1e7088` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6c98f8...7e94ed` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x72cec4...9bfd6e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7b18b3...aec979` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x894aac...3e26a5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9762bc...9dea01` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9b98c7...4976de` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9bb199...688394` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa98c35...9ebcaf` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb622b4...2d86c3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb9d6dc...7e738c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbe19d3...8eee07` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc92279...8a2a0b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd627fa...7ccfe2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd9f80f...dbb698` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdaf14e...a5cb1a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdf74c9...dffe62` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe0151d...36072f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe289a4...a6c5b6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe5579b...8b3a24` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe7fcaa...578bb9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xeca362...f1db3f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xed071a...956915` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfbba68...3730a4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfcca37...94a849` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfce7d6...67a3c0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Revert-Compoundor-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Revert-Compoundor-v1.0.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | contract_name | 8 | high |
| [PeckShield-Audit-Report-Revert-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Revert-v1.0.pdf) | PeckShield | Audit | 2022-09 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x02c514...1528cd`](./contracts/base-8453/0x02c51413a0c76af2c71d74cfadb414a0ed1528cd/) | V3Vault | core_logic | $2,087,284.04 | Verified native implementation with $2,087,284.04 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0bf485...3f7bec`](./contracts/base-8453/0x0bf485bd7ebb82e282f72e7d14822c680e3f7bec/) | AutoCompound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x08ad36...e37533`](./contracts/polygon-137/0x08ad36649da1271124533d36dccacb1e00e37533/) | AutoExit | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x043e2f...784c69`](./contracts/base-8453/0x043e2ff28db24061d46629b999a358a24c784c69/) | AutoRange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb306f9...a2cba6`](./contracts/ethereum-1/0xb306f936d69cc8425dd3a7d260690b5df5a2cba6/) | BridgeTester2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x03486d...6a0e11`](./contracts/base-8453/0x03486dd203b725337a0ba72ea60f26c3966a0e11/) | GaugeManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x03688e...0053f9`](./contracts/base-8453/0x03688efa97662d3a2fc7be8a322e02d4810053f9/) | InterestRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x059813...ec4e98`](./contracts/base-8453/0x05981339909992a8d9d13e8c651e54f306ec4e98/) | LeverageTransformer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x167829...e3a6d4`](./contracts/optimism-10/0x167829543510c13c792bd8f6a414f74d51e3a6d4/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3c0fd0...2847ef`](./contracts/optimism-10/0x3c0fd0b42aa46f03f6cf5e305ed9b2ce402847ef/) | SelfCompoundor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x034f0e...b32da2`](./contracts/polygon-137/0x034f0e78cf205d7f43ebe7878434afd7f4b32da2/) | V3Utils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 64 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=9

Fork inheritance lineage and inherited audits are included when available.
