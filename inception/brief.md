# Agentic Audit Brief: Inception

⚠️ Lifecycle status: DECLINING - TVL changed 5.3% over 90 days

## Project Overview

- Project: Inception (`inception`)
- Website: [https://www.inceptionlrt.com/](https://www.inceptionlrt.com/)
- Lifecycle: declining (Tier 1, sunsetting)
- Generated: 2026-06-10T20:59:06.139Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: arbitrum, base, blast, bsc, ethereum, fraxtal, linea, mode, optimism
- Contract surface: 78 unique implementations (290 raw deployments)
- DeFi Llama TVL: $5,860,583.00
- On-chain TVL (included contracts): $9,815,001.75
- TVL by chain: Ethereum $9,752,463.98 | Blast $49,928.36 | Linea $11,180.07 | Arbitrum $1,216.39 | Optimism $168.83 | Bsc $44.13

## Project Description

Inception is a liquid restaking protocol for Ethereum-based assets that allows users to deposit into Inception-controlled vault and restaking contracts and receive liquid restaking tokens representing their positions. External third-party vault systems such as Amphor should be treated as integrations or out-of-scope infrastructure unless separate ownership evidence is provided.

### Architecture

The Inception family issues LRTs that are used across the protocol, while InceptionLRT and Amphor provide vault strategies that may utilize these tokens. The Ethereum family supplies rate providers and a bridge that connect the multi-chain deployments, enabling cross-chain restaking and yield aggregation.

## Audit Coverage Summary

- Verified implementations audited: 16/65 (24.6%)
- Verified + Unaudited implementations: 48
- Verified by bytecode match: 1
- Unverified implementations: 13
- Unique implementations: 78
- Raw deployments: 290
- Audits discovered: 9
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): $9,532,387.79
- Latest audit: 2025-03 (aging)
- Staleness: 0 fresh, 3 aging, 6 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $9,532,387.79 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 7 | 10.8% | 2024-10 |
| VAR | Tier 2 | 6 | 9.2% | 2024-01 |
| Oxorio | Tier 2 | 5 | 7.7% | 2025-03 |
| Veridise | Tier 2 | 4 | 6.2% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (16)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| cToken | token | ethereum | 2 deployments: ethereum [`0x7c388e...4088e8`](./contracts/ethereum-1/0x7c388e8cbce59ce36b38169058f82d8f774088e8/); ethereum `0xf073ba...10525c` | ✅ Audited |
| InceptionToken | token | ethereum | 34 deployments: ethereum [`0x0c0f7e...6ec479`](./contracts/ethereum-1/0x0c0f7e04b460a57a294bebc6ed0360d0606ec479/); ethereum `0x0e737c...e02413`; ethereum `0x11e880...d5d3f3`; ethereum `0x1aee5e...7649e2`; ethereum `0x36863d...008fca`; ethereum `0x50253d...4e3e4c`; ethereum `0x54e1ea...d46c37`; ethereum `0x57a5a0...5878f2`; ethereum `0x668308...f8041c`; ethereum `0x74d198...3adadd`; ethereum `0x7fa768...41cad5`; ethereum `0x80d69e...8802e2`; ethereum `0x8d18eb...7eff3f`; ethereum `0x8e0789...f6d552`; ethereum `0x9181f6...3e0e92`; ethereum `0x94b888...7ca62e`; ethereum `0x971b35...9efe1a`; ethereum `0x99964b...82804f`; ethereum `0xa1ca3b...1a01a8`; ethereum `0xb2f447...3b6163`; ethereum `0xbaa61a...88a132`; ethereum `0xbdf1c9...f4cb45`; ethereum `0xbf19ee...e8ab2e`; ethereum `0xc16fee...3b157c`; ethereum `0xc3ade5...bd6a9d`; ethereum `0xda9b11...8c5246`; ethereum `0xdcf8f9...637d91`; ethereum `0xecf367...f6fbf9`; ethereum `0xf07052...8641f9`; ethereum `0xf0b067...2fb8ab`; ethereum `0xf21014...fb1e12`; ethereum `0xfa2629...4d8b9d`; ethereum `0xfbb126...571a1e`; ethereum `0xfd07fd...494336` | ✅ Audited |
| XERC20 | token | ethereum | 26 deployments: ethereum [`0x157743...450d41`](./contracts/ethereum-1/0x157743261c3ba961e92421b268a881aece450d41/); ethereum `0x425bbf...2f2180`; ethereum `0x838432...9a3b04`; ethereum `0x9efde4...bdbfe7`; ethereum `0xb2b446...6c5878`; ethereum `0xb65593...4c944e`; ethereum `0xc9dc25...a35477`; ethereum `0xe16207...3bbaa4`; optimism `0x5a7a18...b1d76d`; optimism `0xd08c3f...9a4959`; bsc `0x3059a3...1d5519`; bsc `0x5a32d4...a8064a`; bsc `0x5a7a18...b1d76d`; bsc `0xb2b446...6c5878`; fraxtal [`0x157743...450d41`](./contracts/fraxtal-252/0x157743261c3ba961e92421b268a881aece450d41/); fraxtal `0x7fa768...41cad5`; fraxtal `0xe16207...3bbaa4`; fraxtal `0xe76778...8a7ba1`; base `0xb65593...4c944e`; arbitrum `0x5a7a18...b1d76d`; arbitrum `0xd08c3f...9a4959`; arbitrum `0xd1e555...e1fec5`; linea `0x5a32d4...a8064a`; linea `0x5a7a18...b1d76d`; linea `0xd08c3f...9a4959`; blast `0x5a7a18...b1d76d` | ✅ Audited |
| RestakingPool | core_logic | ethereum | 9 deployments: ethereum [`0x043b7d...05fcb7`](./contracts/ethereum-1/0x043b7dd4979fb34deca99a131ca69dac3805fcb7/); ethereum `0x180e0f...914246`; ethereum `0x429e9c...5f292d`; ethereum `0x46199c...15831a`; ethereum `0x65b13b...63a614`; ethereum `0x7efc15...c0e405`; ethereum `0xa0044e...e48b4d`; ethereum `0xa27f2f...589e7d`; ethereum `0xf7ebce...9d0567` | ✅ Audited |
| InceptionVault_EL | core_logic | ethereum | 4 deployments: ethereum [`0x6e17a8...d93322`](./contracts/ethereum-1/0x6e17a8b5d33e6dbdb9fc61d758bf554b6ad93322/); ethereum `0x99d648...1ccd5b`; ethereum `0xc4181d...95321c`; ethereum `0xfe7153...735d5e` | ✅ Audited |
| InVault_S_E2 | core_logic | ethereum | 7 deployments: ethereum [`0x110a4a...62ec3e`](./contracts/ethereum-1/0x110a4a90d7c8fb68c35f01f5ece186256b62ec3e/); ethereum `0x24ee75...5bfa50`; ethereum `0x3b7373...04e68b`; ethereum `0xdae6ab...22241a`; ethereum `0xe740e5...f6088b`; ethereum `0xebc5b1...63ee53`; ethereum `0xf9d9f8...f5ec97` | ✅ Audited |
| IMellowRestaker | core_logic | ethereum | 11 deployments: ethereum [`0x09740e...728378`](./contracts/ethereum-1/0x09740e3b2ccf6e82f4fb3a57519c8b65da728378/); ethereum `0x2313ce...9c00a2`; ethereum `0x2eb6a1...546958`; ethereum `0x3c9991...8dd129`; ethereum `0x69bd17...dc6b55`; ethereum `0x7c374b...09019b`; ethereum `0xa50299...a2251b`; ethereum `0xb94063...46875d`; ethereum `0xc4f4d6...7f8691`; ethereum `0xd7a622...82feba`; ethereum `0xdd3a08...a356c4` | ✅ Audited |
| InceptionBridge | operational_periphery | ethereum | 16 deployments: ethereum [`0x1f696f...a33eaf`](./contracts/ethereum-1/0x1f696f13dcdb2cd0f1927ad598613c7c95a33eaf/); ethereum `0xc00cd5...83b3ac`; optimism `0xc00cd5...83b3ac`; bsc `0xc00cd5...83b3ac`; fraxtal `0x80d69e...8802e2`; fraxtal `0xc00cd5...83b3ac`; base `0xc00cd5...83b3ac`; mode `0xb81e55...4d1f1e`; mode `0xc00cd5...83b3ac`; arbitrum `0x80d69e...8802e2`; arbitrum `0xb2f447...3b6163`; arbitrum `0xc00cd5...83b3ac`; linea `0x80d69e...8802e2`; linea `0xc00cd5...83b3ac`; blast `0xb81e55...4d1f1e`; blast `0xc00cd5...83b3ac` | ✅ Audited |
| InceptionLibrary | unknown | ethereum | 4 deployments: ethereum [`0x313d6c...cb7d07`](./contracts/ethereum-1/0x313d6c1b075077ce10b3229ee75e0af453cb7d07/); ethereum `0x8a6a8a...d69f66`; ethereum `0xa2aeaf...9423b1`; ethereum `0xf6940a...55116a` | ✅ Audited |
| InceptionRestaker | core_logic | ethereum | 2 deployments: ethereum [`0x02e2fc...3a33f0`](./contracts/ethereum-1/0x02e2fce3efe6619ad882b159e7d897a9c03a33f0/); ethereum `0x3d662f...8e9c9a` | ✅ Audited |
| ISymbioticRestaker | core_logic | ethereum | 4 deployments: ethereum [`0x1d1404...3c5f7d`](./contracts/ethereum-1/0x1d14041c0e180bace9eae187d30b76495d3c5f7d/); ethereum `0x88fcd6...905fc5`; ethereum `0x8fe10f...5ca137`; ethereum `0xc4f1f2...eeeec6` | ✅ Audited |
| ProtocolConfig | governance | ethereum | 3 deployments: ethereum [`0x0d79ad...706b6a`](./contracts/ethereum-1/0x0d79adac5c7043c489a84887d334b7f907706b6a/); ethereum `0x81b98d...da2603`; ethereum `0xe99ad8...0f7bf9` | ✅ Audited |
| RatioFeed | unknown | ethereum | 2 deployments: ethereum [`0x122ee2...910dbf`](./contracts/ethereum-1/0x122ee24cb3cc1b6b987800d3b54a68fc16910dbf/); ethereum `0xb7a63a...7d63ec` | ✅ Audited |
| Restaker | core_logic | ethereum | 5 deployments: ethereum [`0x4b21a1...67d665`](./contracts/ethereum-1/0x4b21a1ee9268f4cf259e228388e1f3ec0c67d665/); ethereum `0x74a395...844f2b`; ethereum `0x82d87f...95a46a`; ethereum `0xab110e...1c51da`; ethereum `0xc89d1a...fa5acf` | ✅ Audited |
| RestakerDeployer | core_logic | ethereum | [`0x10ccb7...1bf57a`](./contracts/ethereum-1/0x10ccb7afb5c2c20fffa38eaf1fbc99db571bf57a/) | ✅ Audited |
| XERC20Lockbox | token | ethereum | 3 deployments: ethereum [`0x4c8588...047f37`](./contracts/ethereum-1/0x4c858892decbf31460603f4bfc4620c328047f37/); ethereum `0xa5a5b4...478452`; ethereum `0xff8690...ea6159` | ✅ Audited |

### ⚠️ Verified + Unaudited (48)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AmphorVaultWithPermit | core_logic | ethereum | 2 deployments: ethereum [`0x920f17...82c079`](./contracts/ethereum-1/0x920f17e741029d904936c58a545dffc72f82c079/); ethereum `0xf97ecd...8f2e00` | ⚠️ Unaudited |
| AsyncVault | core_logic | ethereum | 3 deployments: ethereum [`0x3cda5e...e0e958`](./contracts/ethereum-1/0x3cda5e72fa2550c2bcf2a8db3d6a6cac15e0e958/); ethereum `0xcdc51f...4df54e`; ethereum `0xf74753...355229` | ⚠️ Unaudited |
| InVault_E1 | core_logic | ethereum | 21 deployments: ethereum [`0x13e4a6...af144e`](./contracts/ethereum-1/0x13e4a6a36b61bef57f2f4b6032da945a33af144e/); ethereum `0x1aa53b...d59f12`; ethereum `0x295234...151161`; ethereum `0x36b429...815e55`; ethereum `0x453fcf...da9e86`; ethereum `0x47489d...1d3544`; ethereum `0x4878f6...f86bed`; ethereum `0x4a85b9...42a4ec`; ethereum `0x5198be...4b725e`; ethereum `0x540529...b61c2f`; ethereum `0x6bb087...663495`; ethereum `0x814cc6...977d8d`; ethereum `0x872979...02d1ac`; ethereum `0x90e80e...9023c2`; ethereum `0x9bb0f6...bc0ed4`; ethereum `0xa9f8c7...c780ff`; ethereum `0xaa95d0...5fea5a`; ethereum `0xc06609...e9a2b6`; ethereum `0xd0ee89...426355`; ethereum `0xfbe36c...04a78d`; ethereum `0xfe20c6...3cd0eb` | ⚠️ Unaudited |
| LRTVault | core_logic | ethereum | 6 deployments: ethereum [`0x06824c...4dcec3`](./contracts/ethereum-1/0x06824c27c8a0dbde5f72f770ec82e3c0fd4dcec3/); ethereum `0x1a9c36...967cbd`; ethereum `0x848829...cc7c3e`; ethereum `0x8df05f...603494`; ethereum `0xd3281a...542231`; ethereum `0xed0469...2972e1` | ⚠️ Unaudited |
| InStrategyBaseVault_E1 | core_logic | ethereum | 9 deployments: ethereum [`0x016e07...da2a5f`](./contracts/ethereum-1/0x016e074ca7304b815e29a9b9d8cf7a5603da2a5f/); ethereum `0x3d3b17...a11e70`; ethereum `0x459d34...4c9e36`; ethereum `0x4c9c84...813638`; ethereum `0x8f55d3...c3e7d3`; ethereum `0xc33a82...ed7357`; ethereum `0xc6cc13...778db4`; ethereum `0xc73737...a31d18`; ethereum `0xefaf12...49c2ba` | ⚠️ Unaudited |
| InVault_S_E1 | core_logic | ethereum | 10 deployments: ethereum [`0x295a73...84a2d1`](./contracts/ethereum-1/0x295a7386bf8d307183ae10e3c10eb25ebe84a2d1/); ethereum `0x3748be...d3c8db`; ethereum `0x3aeb60...6f7193`; ethereum `0x5aa102...549ea3`; ethereum `0x653067...8f333a`; ethereum `0x9a5969...6592c1`; ethereum `0xa8211b...b360ae`; ethereum `0xb83ad6...6fce4d`; ethereum `0xd26b63...4f9503`; ethereum `0xd49641...85f529` | ⚠️ Unaudited |
| AmphorSyntheticVault | core_logic | ethereum | [`0xc4a324...f96489`](./contracts/ethereum-1/0xc4a324fdf8a2495776b4d6ca46599b5a52f96489/) | ⚠️ Unaudited |
| ERC20Rebalancer | adapter | ethereum | [`0x203d19...723f62`](./contracts/ethereum-1/0x203d19635e6df0263a431c4d9b8e654dec723f62/) | ⚠️ Unaudited |
| ERC4626Facet_EL_E1 | unknown | ethereum | [`0x80e273...3a89f3`](./contracts/ethereum-1/0x80e27343ab9540cdebd6b865f84a91f3ad3a89f3/) | ⚠️ Unaudited |
| ERC4626Facet_EL_E2 | unknown | ethereum | [`0x7eed68...4bd58e`](./contracts/ethereum-1/0x7eed6897d9f032abccffd2f6aafcfb59b24bd58e/) | ⚠️ Unaudited |
| FeeCollector | unknown | ethereum | 2 deployments: ethereum [`0xf403eb...1a15d0`](./contracts/ethereum-1/0xf403eb7b69f6c7ab73bbaef42afe87c0a61a15d0/); ethereum `0xfdfb52...4a3b24` | ⚠️ Unaudited |
| GenesisTimeLock | governance | ethereum | [`0xc70470...158638`](./contracts/ethereum-1/0xc70470cdc428d6a3966cd25f476f84d898158638/) | ⚠️ Unaudited |
| GenEthRateProvider | unknown | ethereum | [`0xc29783...406619`](./contracts/ethereum-1/0xc29783738a475112cafe58433dd9d19f3a406619/) | ⚠️ Unaudited |
| InankrETHRateProvider | unknown | ethereum | [`0x8bc731...174ddb`](./contracts/ethereum-1/0x8bc73134a736437da780570308d3b37b67174ddb/) | ⚠️ Unaudited |
| IncbETHRateProvider | unknown | ethereum | [`0xa1bb72...3f7a45`](./contracts/ethereum-1/0xa1bb72c5915a7e2c85baea2c563858eacb3f7a45/) | ⚠️ Unaudited |
| InceptionAirdrop | operational_periphery | ethereum | 4 deployments: ethereum [`0x66c559...49566c`](./contracts/ethereum-1/0x66c559fc4fa46a47262efd39db8222275249566c/); ethereum `0x81cdde...ff34f4`; ethereum `0xb2dd98...e1fef7`; ethereum `0xb80a7f...0658c1` | ⚠️ Unaudited |
| InceptionMellowAdapterV3 | adapter | ethereum | 2 deployments: ethereum [`0x1eba85...ea9808`](./contracts/ethereum-1/0x1eba85cad86f88746d7085b38c2d9cbdecea9808/); ethereum `0xbccee9...d9bee6` | ⚠️ Unaudited |
| InceptionRatioFeed | unknown | linea | 11 deployments: ethereum `0x2356d4...3941bd`; ethereum `0xfd73be...69b191`; fraxtal `0x0f2c98...6642c6`; fraxtal `0xfd07fd...494336`; mode `0xbf19ee...e8ab2e`; arbitrum `0xbf19ee...e8ab2e`; arbitrum `0xfe7153...735d5e`; linea [`0x048a2f...07221c`](./contracts/linea-59144/0x048a2f5cd64b89f750cf14a5f36922ae7b07221c/); linea `0xc4181d...95321c`; blast `0xa9f8c7...c780ff`; blast `0xfd07fd...494336` | ⚠️ Unaudited |
| InceptionTimeLock | governance | ethereum | 2 deployments: ethereum [`0x650bd9...a8fb1e`](./contracts/ethereum-1/0x650bd9dee50e3ee15cbb49749ff6abcf55a8fb1e/); linea `0xe8de15...b9f766` | ⚠️ Unaudited |
| InEIGENRateProvider | unknown | ethereum | [`0xf3207c...0fd59f`](./contracts/ethereum-1/0xf3207c4a1fc0d32ccd1159f47a8e5a4b1c0fd59f/) | ⚠️ Unaudited |
| InETHRateProvider | unknown | arbitrum | 3 deployments: arbitrum [`0x971b35...9efe1a`](./contracts/arbitrum-42161/0x971b35225361535d04828f16442aaa54009efe1a/); linea `0xbf4730...222e84`; blast `0xc06609...e9a2b6` | ⚠️ Unaudited |
| InETHxRateProvider | unknown | ethereum | [`0xd812ba...2ba2fc`](./contracts/ethereum-1/0xd812ba3543f9ab64b2bcbce34fb3b00bff2ba2fc/) | ⚠️ Unaudited |
| InLBTCRateProvider | unknown | ethereum | [`0xbba781...ed938f`](./contracts/ethereum-1/0xbba781e2e3376fac640972856250e63a3ced938f/) | ⚠️ Unaudited |
| InLBTCsRateProvider | unknown | ethereum | [`0xeb49d2...930e57`](./contracts/ethereum-1/0xeb49d254631e564d77aa6cc3057bd99915930e57/) | ⚠️ Unaudited |
| InlsETHRateProvider | unknown | ethereum | [`0x20f6d8...f09c36`](./contracts/ethereum-1/0x20f6d8e1e821bd5b94f7bf725af304bc5ef09c36/) | ⚠️ Unaudited |
| InLsETHsRateProvider | unknown | ethereum | [`0x34241c...053c17`](./contracts/ethereum-1/0x34241c4c5fb90a9c6b37583ed77a346e1a053c17/) | ⚠️ Unaudited |
| InmETHRateProvider | unknown | ethereum | [`0xa22a7a...d57707`](./contracts/ethereum-1/0xa22a7a8c550760574fd7b722c9f7100902d57707/) | ⚠️ Unaudited |
| InoETHRateProvider | unknown | ethereum | [`0xbd6000...a3b38b`](./contracts/ethereum-1/0xbd600020f943f7c61a8123fe2720a05434a3b38b/) | ⚠️ Unaudited |
| InosETHRateProvider | unknown | ethereum | [`0x1f2784...bffe8c`](./contracts/ethereum-1/0x1f27848ae927ba278ee575e4a55f6c7ed7bffe8c/) | ⚠️ Unaudited |
| InrETHRateProvider | unknown | ethereum | [`0xd6d553...1e9f66`](./contracts/ethereum-1/0xd6d553327b16dd6076d69c2daec91a50dd1e9f66/) | ⚠️ Unaudited |
| InrEthVault | core_logic | ethereum | 2 deployments: ethereum [`0x63590b...e69aba`](./contracts/ethereum-1/0x63590b09bccc56667934f5e4793a1941bce69aba/); ethereum `0xb5c479...1abd6b` | ⚠️ Unaudited |
| InsFRAXRateProvider | unknown | ethereum | 2 deployments: ethereum [`0xd8554b...9162c2`](./contracts/ethereum-1/0xd8554b2075e9b403d26c8cc444b2dd3b929162c2/); fraxtal `0xda9b11...8c5246` | ⚠️ Unaudited |
| InsfrxETHRateProvider | unknown | ethereum | 2 deployments: ethereum [`0x07f869...c13b1e`](./contracts/ethereum-1/0x07f86901057f392fd3a508b8abcbaafb08c13b1e/); fraxtal `0xc06609...e9a2b6` | ⚠️ Unaudited |
| InslisBNBRateProvider | unknown | ethereum | [`0xc88b97...0e391c`](./contracts/ethereum-1/0xc88b97cee6db90c1186497619eb43cc8160e391c/) | ⚠️ Unaudited |
| InstETHRateProvider | unknown | ethereum | 3 deployments: ethereum [`0x343281...d5de39`](./contracts/ethereum-1/0x343281bb5029c4b698fe736d800115ac64d5de39/); arbitrum `0x57a5a0...5878f2`; linea `0xa365fb...864266` | ⚠️ Unaudited |
| InstEthVault | core_logic | ethereum | 2 deployments: ethereum [`0x64a6c9...a9b84d`](./contracts/ethereum-1/0x64a6c90871b774c1678ddbc48d99040b03a9b84d/); ethereum `0xb5a1e5...5b5285` | ⚠️ Unaudited |
| InswETHRateProvider | token | ethereum | [`0xebfa03...d1e721`](./contracts/ethereum-1/0xebfa0353dff1801f5c8ea07448771d6fadd1e721/) | ⚠️ Unaudited |
| IntBTCBNBRateProvider | unknown | ethereum | [`0x12181a...c6a07f`](./contracts/ethereum-1/0x12181a5454542610f524e53650038889edc6a07f/) | ⚠️ Unaudited |
| InUSBDsRateProvider | unknown | ethereum | [`0x9c2a62...5fee01`](./contracts/ethereum-1/0x9c2a6266748b55f176a5b954c5b80a499c5fee01/) | ⚠️ Unaudited |
| InVault_E2 | core_logic | ethereum | 6 deployments: ethereum [`0x4fbf33...1def36`](./contracts/ethereum-1/0x4fbf33a215861e2bfe01c90760ad5c58921def36/); ethereum `0x51ffd2...e036e7`; ethereum `0xbbf7fc...7f9f17`; ethereum `0xde4d2d...3c31bd`; ethereum `0xfdddfe...a51fc2`; ethereum `0xfe6a0d...ec1a81` | ⚠️ Unaudited |
| InwbETHRateProvider | unknown | ethereum | [`0x69c59c...050eb1`](./contracts/ethereum-1/0x69c59c3dd7566eb12792203f8f832ca81a050eb1/) | ⚠️ Unaudited |
| InwstETHsRateProvider | unknown | ethereum | [`0xae48b9...ceb632`](./contracts/ethereum-1/0xae48b92cbc0882a7d70d878e42cc121a62ceb632/) | ⚠️ Unaudited |
| LZCrossChainAdapterL1 | adapter | ethereum | 7 deployments: ethereum [`0x1e0bd0...9c1448`](./contracts/ethereum-1/0x1e0bd0291165f789b794e9513eb07a76849c1448/); ethereum `0x53207e...fa59dc`; ethereum `0x9495ff...24d35b`; ethereum `0xa25cd7...b4fe83`; ethereum `0xa45ea1...25bb44`; ethereum `0xc18c50...82f6ef`; ethereum `0xd0db5d...251af6` | ⚠️ Unaudited |
| NativeRebalancer | adapter | ethereum | [`0x113a5a...35f7fa`](./contracts/ethereum-1/0x113a5a84f42b7485970d0ea6061dd2cbed35f7fa/) | ⚠️ Unaudited |
| RestakerFacets | core_logic | ethereum | 3 deployments: ethereum [`0x04d7cd...a84dbf`](./contracts/ethereum-1/0x04d7cd78913622b59197880f58c40fdb90a84dbf/); ethereum `0x161cd8...36971d`; ethereum `0x3b621a...8b54e4` | ⚠️ Unaudited |
| Silo | unknown | ethereum | 2 deployments: ethereum [`0x06ecfa...8a8144`](./contracts/ethereum-1/0x06ecfaade8fcb8c1bc58cb05104604282f8a8144/); ethereum `0x361a02...5880d9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | mode | [`0xfe7153...735d5e`](./contracts/mode-34443/0xfe715358368416e01d3a961d3a037b7359735d5e/) | ⚠️ Unaudited |
| VaultZapper | adapter | ethereum | 3 deployments: ethereum [`0x14dc6a...0ebe8d`](./contracts/ethereum-1/0x14dc6a564ac137e4017a39657daed582820ebe8d/); ethereum `0x6b4158...ca499c`; ethereum `0xd697d2...5d05fb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ProxyAdmin | governance | ethereum | 11 deployments: ethereum [`0x10d9a4...ff8110`](./contracts/ethereum-1/0x10d9a419478fee5aa35c9f3b36b37025e9ff8110/); ethereum `0x65ab69...161a67`; ethereum `0xb81e55...4d1f1e`; ethereum `0xcdd6b2...a873a4`; ethereum `0xef6f47...473264`; mode `0x80d69e...8802e2`; arbitrum `0x80579b...071813`; arbitrum `0xb5c479...1abd6b`; arbitrum `0xb81e55...4d1f1e`; linea `0xb5c479...1abd6b`; blast `0x80d69e...8802e2` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0cfa3e...9c34a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3059a3...1d5519` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5a32d4...a8064a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5a7a18...b1d76d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd08c3f...9a4959` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x64a6c9...a9b84d` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xb5c479...1abd6b` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xf0b067...2fb8ab` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x5a32d4...a8064a` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x5a7a18...b1d76d` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x5d9447...f80a46` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x971b35...9efe1a` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xfea428...8b0415` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [* [**Veridise Report**]()](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/InceptionV1_Veridise.pdf) | Halborn | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [* [**Halborn Report**]()](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/InceptionV2_Halborn.pdf) | Halborn | Audit | 2024-04 | stale | Direct | contract_name | 2 | high |
| [* [**Oxorio Report**]()](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/Inception_MellowV2_Symbiotic_Oxorio.pdf) | Oxorio | Audit | 2025-03 | aging | Direct | contract_name | 60 | high |
| [* [**Veridise Report**]()](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/VAR_inception_250210_smart_contracts_V3.pdf) | Veridise | Audit | 2025-03 | aging | Direct | contract_name | 45 | high |
| [* [**Halborn Report**]()](https://github.com/inceptionlrt/bridge/blob/master/audits/InceptionBridge_Halborn.pdf) | Halborn | Audit | 2024-04 | stale | Direct | contract_name | 45 | high |
| [* [**Veridise Report**]()](https://github.com/inceptionlrt/bridge/blob/master/audits/InceptionBridge_Veridise.pdf) | Veridise | Audit | 2024-04 | stale | Direct | contract_name | 16 | high |
| [Inception_DiamondProxy_SymbioticVault_Halborn.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/Inception_DiamondProxy_SymbioticVault_Halborn.pdf) | Halborn | Audit | 2024-10 | aging | Direct | contract_name | 15 | high |
| [Inception_FlashWithdrawal_Halborn.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/Inception_FlashWithdrawal_Halborn.pdf) | Halborn | Audit | 2024-06 | stale | Direct | contract_name | 4 | high |
| [VAR_GenesisLRT_231221-V1.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/VAR_GenesisLRT_231221-V1.pdf) | VAR | Audit | 2024-01 | stale | Direct | contract_name | 22 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x920f17...82c079`](./contracts/ethereum-1/0x920f17e741029d904936c58a545dffc72f82c079/) | AmphorVaultWithPermit | core_logic | $9,502,351.25 | Verified native implementation with $9,502,351.25 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13e4a6...af144e`](./contracts/ethereum-1/0x13e4a6a36b61bef57f2f4b6032da945a33af144e/) | InVault_E1 | core_logic | $10,720.07 | Verified native implementation with $10,720.07 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x295a73...84a2d1`](./contracts/ethereum-1/0x295a7386bf8d307183ae10e3c10eb25ebe84a2d1/) | InVault_S_E1 | core_logic | $29.39 | Verified native implementation with $29.39 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc4a324...f96489`](./contracts/ethereum-1/0xc4a324fdf8a2495776b4d6ca46599b5a52f96489/) | AmphorSyntheticVault | core_logic | $0.01 | Verified native implementation with $0.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x80e273...3a89f3`](./contracts/ethereum-1/0x80e27343ab9540cdebd6b865f84a91f3ad3a89f3/) | ERC4626Facet_EL_E1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7eed68...4bd58e`](./contracts/ethereum-1/0x7eed6897d9f032abccffd2f6aafcfb59b24bd58e/) | ERC4626Facet_EL_E2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc70470...158638`](./contracts/ethereum-1/0xc70470cdc428d6a3966cd25f476f84d898158638/) | GenesisTimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc29783...406619`](./contracts/ethereum-1/0xc29783738a475112cafe58433dd9d19f3a406619/) | GenEthRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8bc731...174ddb`](./contracts/ethereum-1/0x8bc73134a736437da780570308d3b37b67174ddb/) | InankrETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1bb72...3f7a45`](./contracts/ethereum-1/0xa1bb72c5915a7e2c85baea2c563858eacb3f7a45/) | IncbETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1eba85...ea9808`](./contracts/ethereum-1/0x1eba85cad86f88746d7085b38c2d9cbdecea9808/) | InceptionMellowAdapterV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x650bd9...a8fb1e`](./contracts/ethereum-1/0x650bd9dee50e3ee15cbb49749ff6abcf55a8fb1e/) | InceptionTimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf3207c...0fd59f`](./contracts/ethereum-1/0xf3207c4a1fc0d32ccd1159f47a8e5a4b1c0fd59f/) | InEIGENRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x971b35...9efe1a`](./contracts/arbitrum-42161/0x971b35225361535d04828f16442aaa54009efe1a/) | InETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd812ba...2ba2fc`](./contracts/ethereum-1/0xd812ba3543f9ab64b2bcbce34fb3b00bff2ba2fc/) | InETHxRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbba781...ed938f`](./contracts/ethereum-1/0xbba781e2e3376fac640972856250e63a3ced938f/) | InLBTCRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeb49d2...930e57`](./contracts/ethereum-1/0xeb49d254631e564d77aa6cc3057bd99915930e57/) | InLBTCsRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20f6d8...f09c36`](./contracts/ethereum-1/0x20f6d8e1e821bd5b94f7bf725af304bc5ef09c36/) | InlsETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34241c...053c17`](./contracts/ethereum-1/0x34241c4c5fb90a9c6b37583ed77a346e1a053c17/) | InLsETHsRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa22a7a...d57707`](./contracts/ethereum-1/0xa22a7a8c550760574fd7b722c9f7100902d57707/) | InmETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbd6000...a3b38b`](./contracts/ethereum-1/0xbd600020f943f7c61a8123fe2720a05434a3b38b/) | InoETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f2784...bffe8c`](./contracts/ethereum-1/0x1f27848ae927ba278ee575e4a55f6c7ed7bffe8c/) | InosETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd6d553...1e9f66`](./contracts/ethereum-1/0xd6d553327b16dd6076d69c2daec91a50dd1e9f66/) | InrETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63590b...e69aba`](./contracts/ethereum-1/0x63590b09bccc56667934f5e4793a1941bce69aba/) | InrEthVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8554b...9162c2`](./contracts/ethereum-1/0xd8554b2075e9b403d26c8cc444b2dd3b929162c2/) | InsFRAXRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07f869...c13b1e`](./contracts/ethereum-1/0x07f86901057f392fd3a508b8abcbaafb08c13b1e/) | InsfrxETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc88b97...0e391c`](./contracts/ethereum-1/0xc88b97cee6db90c1186497619eb43cc8160e391c/) | InslisBNBRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x343281...d5de39`](./contracts/ethereum-1/0x343281bb5029c4b698fe736d800115ac64d5de39/) | InstETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x64a6c9...a9b84d`](./contracts/ethereum-1/0x64a6c90871b774c1678ddbc48d99040b03a9b84d/) | InstEthVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xebfa03...d1e721`](./contracts/ethereum-1/0xebfa0353dff1801f5c8ea07448771d6fadd1e721/) | InswETHRateProvider | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12181a...c6a07f`](./contracts/ethereum-1/0x12181a5454542610f524e53650038889edc6a07f/) | IntBTCBNBRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c2a62...5fee01`](./contracts/ethereum-1/0x9c2a6266748b55f176a5b954c5b80a499c5fee01/) | InUSBDsRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fbf33...1def36`](./contracts/ethereum-1/0x4fbf33a215861e2bfe01c90760ad5c58921def36/) | InVault_E2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69c59c...050eb1`](./contracts/ethereum-1/0x69c59c3dd7566eb12792203f8f832ca81a050eb1/) | InwbETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae48b9...ceb632`](./contracts/ethereum-1/0xae48b92cbc0882a7d70d878e42cc121a62ceb632/) | InwstETHsRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04d7cd...a84dbf`](./contracts/ethereum-1/0x04d7cd78913622b59197880f58c40fdb90a84dbf/) | RestakerFacets | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14dc6a...0ebe8d`](./contracts/ethereum-1/0x14dc6a564ac137e4017a39657daed582820ebe8d/) | VaultZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 50 |
| upstream | 0 |
| standard_library | 18 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=8
- Match method counts: extraction_exact=209

Zero-match audit list:

- [2400] * [**Veridise Report**]()

Fork inheritance lineage and inherited audits are included when available.
