# Agentic Audit Brief: Tarot

⚠️ Lifecycle status: DEAD - TVL changed 3.3% over 90 days

## Project Overview

- Project: Tarot (`tarot`)
- Website: [https://www.tarot.to](https://www.tarot.to)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-05-25T05:23:21.157Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: arbitrum, avalanche, base, bsc, canto, ethereum, fantom, kava, linea, optimism, polygon, scroll
- Contract surface: 152 unique implementations (368 raw deployments)
- DeFi Llama TVL: $1,144,454.49
- On-chain TVL (included contracts): $22,861,962.67
- TVL by chain: Optimism $22,861,962.67

## Project Description

Tarot is a decentralized lending and borrowing protocol that enables users to supply assets into isolated lending pools and borrow against them. It also provides leveraged yield farming through its vault infrastructure, allowing users to amplify returns on liquidity provider tokens.

### Architecture

Lending pools and leveraged yield vaults share the same factory and router infrastructure for deployment and user interaction. Vaults borrow from lending pools to execute leveraged strategies, while supply vault tokens represent user deposits in lending pools, and protocol reserves manage fees and incentives across both families.

## Audit Coverage Summary

- Verified implementations audited: 0/48 (0.0%)
- Verified + Unaudited implementations: 48
- Verified by bytecode match: 0
- Unverified implementations: 104
- Unique implementations: 152
- Raw deployments: 368
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $22,861,962.67
- Latest audit: 2022-08 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $22,861,962.67 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (48)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AnyswapV6ERC20 | token | optimism | 69 deployments: optimism [`0x05e481...dba463`](./contracts/optimism-10/0x05e481b19129b560e921e487adb281e70bdba463/); optimism `0x0b3225...a820eb`; optimism `0x130966...b8c18d`; optimism `0x165dbb...bd60d7`; optimism `0x173fd7...35fd14`; optimism `0x1ccca1...6eecb4`; optimism `0x22648c...154ebc`; optimism `0x2823d1...b7f181`; optimism `0x2a9ad4...1c9e91`; optimism `0x338726...66c96d`; optimism `0x340fe1...7b717a`; optimism `0x375488...e736bf`; optimism `0x39fde5...f51205`; optimism `0x3bd2df...726cee`; optimism `0x3d4e19...406ae3`; optimism `0x3d51a9...9a56ff`; optimism `0x451823...583263`; optimism `0x461d52...c94eb5`; optimism `0x47536f...6ec468`; optimism `0x4e720d...6f4642`; optimism `0x4f3aff...be192f`; optimism `0x5d47ba...01023c`; optimism `0x5fcb9d...f97b26`; optimism `0x65e66a...84d97a`; optimism `0x6633c0...5fec18`; optimism `0x667fd8...ac991c`; optimism `0x6b2678...1679ea`; optimism `0x6b7a87...e71522`; optimism `0x739ca6...8abc4b`; optimism `0x76a3d9...ebf528`; optimism `0x7ae970...a056b7`; optimism `0x7f8bc6...f10e57`; optimism `0x82f0b8...6829c1`; optimism `0x855d42...b1968a`; optimism `0x86b3f2...ffd255`; optimism `0x8e6800...c54fb5`; optimism `0x922d64...d112e1`; optimism `0x965f84...d945f4`; optimism `0x97513e...b163c5`; optimism `0x99c409...f0baae`; optimism `0x9d3e36...44bd8c`; optimism `0x9fda7c...0f94d0`; optimism `0xa64932...8ce23f`; optimism `0xaab168...8a5a77`; optimism `0xabd380...0be488`; optimism `0xb0ae10...7855fd`; optimism `0xb12c13...091358`; optimism `0xb153fb...c57901`; optimism `0xb2c22a...a526c7`; optimism `0xb72842...c6322e`; optimism `0xbfc044...83a7cd`; optimism `0xc1be9a...4602c4`; optimism `0xc46fed...a9b255`; optimism `0xcaf870...5e4195`; optimism `0xce1bff...2f7814`; optimism `0xd1a891...65db21`; optimism `0xd1c596...b1b5f3`; optimism `0xd22a58...34b68b`; optimism `0xd65277...222b48`; optimism `0xe069af...63e591`; optimism `0xe0ce60...2a1109`; optimism `0xe3ab61...16c109`; optimism `0xe56979...e2a5ef`; optimism `0xe6bf0e...675135`; optimism `0xe6cdd3...9f0434`; optimism `0xefaeee...d40d73`; optimism `0xf1b798...463660`; optimism `0xf2b3e3...417c84`; optimism `0xf39083...5dcbc2` | ⚠️ Unaudited |
| SupplyVaultV2 | core_logic | optimism | 4 deployments: optimism [`0x4ac8af...8de471`](./contracts/optimism-10/0x4ac8af23f3ef7ededb3dc45c091406aeee8de471/); optimism `0x550d17...a0465d`; optimism `0x811c27...cdd744`; optimism `0x8d3474...cd03f8` | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | optimism | [`0xb44a9b...9c663c`](./contracts/optimism-10/0xb44a9b6905af7c801311e8f4e76932ee959c663c/) | ⚠️ Unaudited |
| FarmingPool | core_logic | optimism | 14 deployments: optimism [`0x01d7e3...bf661c`](./contracts/optimism-10/0x01d7e3bd5d8ea31cd1cee653576f185abdbf661c/); optimism `0x21ee3e...bfcbb8`; optimism `0x378304...0da606`; optimism `0x3c9de6...644865`; optimism `0x4d791a...134a1d`; optimism `0x5751c0...56ea74`; optimism `0x5afbef...59791b`; optimism `0x7c91f5...699d62`; optimism `0x8dbde8...22cc2c`; optimism `0x93dd5d...ae86a4`; optimism `0xc319a1...c7ace2`; optimism `0xd64a1f...cb718d`; optimism `0xd883b9...8f1742`; optimism `0xf465ef...6b9bd7` | ⚠️ Unaudited |
| AeroDexHandler | unknown | base | [`0xa516b9...84405f`](./contracts/base-8453/0xa516b9c7378799799e6dfadbdabf45d5b584405f/) | ⚠️ Unaudited |
| AeroVaultTokenFactory | registry | base | [`0x82d973...cdc245`](./contracts/base-8453/0x82d973434a509f7fe919a8e03a8113be64cdc245/) | ⚠️ Unaudited |
| AnyswapV6Router | adapter | optimism | 4 deployments: optimism [`0x80a160...f0f844`](./contracts/optimism-10/0x80a16016cc4a2e6a2caca8a4a498b1699ff0f844/); optimism `0xa125bc...a9476c`; optimism `0xdc4272...591f98`; optimism `0xf480f3...f00cea` | ⚠️ Unaudited |
| BDeployer | unknown | polygon | 22 deployments: ethereum `0x82b341...37da11`; ethereum `0xb092e1...e36ac2`; optimism `0x304069...55dd24`; optimism `0x3cba82...277a7d`; optimism `0x54b006...7d5420`; optimism `0x952e9c...30335a`; optimism `0xbdb7c9...579252`; optimism `0xcaefa7...2bbc57`; optimism `0xe092a4...2894aa`; optimism `0xecbca7...afdac3`; bsc `0x35c052...3432ea`; bsc `0x6108fe...121834`; polygon [`0x1d90fd...d0989e`](./contracts/polygon-137/0x1d90fdac4dd30c3ba38d53f52a884f6e75d0989e/); base `0x5a8931...933e17`; arbitrum `0x35c052...3432ea`; arbitrum `0x455a76...ab8959`; arbitrum `0x6108fe...121834`; arbitrum `0xb092e1...e36ac2`; arbitrum `0xc5a397...51382a`; arbitrum `0xe1ac0c...c9d452`; avalanche [`0x1d90fd...d0989e`](./contracts/avalanche-43114/0x1d90fdac4dd30c3ba38d53f52a884f6e75d0989e/); linea `0x36df0a...e38a35` | ⚠️ Unaudited |
| CDeployer | unknown | optimism | 22 deployments: ethereum `0xb3f352...0b6252`; ethereum `0xc20099...406d3a`; optimism [`0x15ff31...e05a66`](./contracts/optimism-10/0x15ff312a9930a6499e4d747773a098b013e05a66/); optimism `0x17abab...0a147b`; optimism `0x2ddb64...eec67e`; optimism `0x3e6c79...509c12`; optimism `0x5658dc...6fea48`; optimism `0x5f90e2...e46401`; optimism `0xeb5809...dfc12d`; optimism `0xf32db3...81a2b0`; bsc `0x82b341...37da11`; bsc `0xb6193d...bd1bf2`; polygon `0xd4a6a0...e01741`; base `0x952e9c...30335a`; arbitrum `0x6b8095...7c7227`; arbitrum `0x82b341...37da11`; arbitrum `0x82d973...cdc245`; arbitrum `0xb3f352...0b6252`; arbitrum `0xb6193d...bd1bf2`; arbitrum `0xee618c...6c64bd`; avalanche `0xd4a6a0...e01741`; linea `0x6108fe...121834` | ⚠️ Unaudited |
| ClaimAggregator | unknown | optimism | [`0xa782b2...7e6e1d`](./contracts/optimism-10/0xa782b2a4fb8b329f257e58122cda55310d7e6e1d/) | ⚠️ Unaudited |
| Factory | registry | arbitrum | 22 deployments: ethereum `0x1cafcb...54b653`; ethereum `0x4b6dae...dd4723`; optimism `0x1d90fd...d0989e`; optimism `0x49df1f...db62bf`; optimism `0x8b2e28...9f0723`; optimism `0x9d1a28...7cb88f`; optimism `0xba4731...e4da04`; optimism `0xd7cabe...5fc83c`; optimism `0xd7cb84...4fc5a4`; bsc `0x2217ae...8dba55`; bsc `0xc20099...406d3a`; polygon `0x36df0a...e38a35`; base `0xeb5809...dfc12d`; arbitrum [`0x1967c7...fe5883`](./contracts/arbitrum-42161/0x1967c70031e8b562a2738d22e95a049bebfe5883/); arbitrum `0x1bbd56...553f80`; arbitrum `0x2217ae...8dba55`; arbitrum `0x4b6dae...dd4723`; arbitrum `0x8cec72...2fe526`; arbitrum `0xc20099...406d3a`; avalanche `0x36df0a...e38a35`; linea `0xb6193d...bd1bf2`; scroll `0x2217ae...8dba55` | ⚠️ Unaudited |
| HappyPuppyClub | unknown | base | [`0x1f3ba8...bf6e4e`](./contracts/base-8453/0x1f3ba804efb9cfe17d595e7262cea4782dbf6e4e/) | ⚠️ Unaudited |
| MonolithRewardTokenHelper | token | ethereum | [`0x36df0a...e38a35`](./contracts/ethereum-1/0x36df0a76a124d8b2205fa11766ec2eff8ce38a35/) | ⚠️ Unaudited |
| MonolithVaultTokenFactory | registry | ethereum | [`0x54950c...909f57`](./contracts/ethereum-1/0x54950cae3d8513ea041066f31697903de5909f57/) | ⚠️ Unaudited |
| Multicall2 | periphery | optimism | [`0xfbdd19...5d01b8`](./contracts/optimism-10/0xfbdd194376de19a88118e84e279b977f165d01b8/) | ⚠️ Unaudited |
| MultichainVerseExplore | unknown | optimism | 2 deployments: optimism [`0x750bfe...5db638`](./contracts/optimism-10/0x750bfe8490175c2a9a9387b19aa2aae2d75db638/); optimism `0x94977c...8ad764` | ⚠️ Unaudited |
| OptiSwap | unknown | optimism | 8 deployments: ethereum `0xf54425...952691`; optimism [`0x6108fe...121834`](./contracts/optimism-10/0x6108feaa628155b073150f408d0b390ec3121834/); bsc `0xf54425...952691`; polygon `0x981bd9...c29af5`; base `0xf6e008...b7d697`; arbitrum `0x981bd9...c29af5`; avalanche `0x981bd9...c29af5`; linea `0x981bd9...c29af5` | ⚠️ Unaudited |
| OwnedDistributor | operational_periphery | optimism | [`0xadad28...84af55`](./contracts/optimism-10/0xadad288bd35434d37f79e2050a7776891384af55/) | ⚠️ Unaudited |
| RamsesVaultTokenFactory | registry | linea | 2 deployments: arbitrum `0x6eb099...084e24`; linea [`0x35c052...3432ea`](./contracts/linea-59144/0x35c052bbf8338b06351782a565aa9aad173432ea/) | ⚠️ Unaudited |
| Router02 | adapter | arbitrum | 13 deployments: optimism `0x5f1f8c...cd719c`; optimism `0x88c81e...06172e`; optimism `0x8a3b1b...f53d8c`; optimism `0xa516b9...84405f`; optimism `0xd355c2...86efbe`; optimism `0xd4a6a0...e01741`; bsc `0x1cafcb...54b653`; bsc `0x46fcde...301f30`; arbitrum [`0x002235...1d07b4`](./contracts/arbitrum-42161/0x0022358ebfd5261c325f8160c7c17bc8671d07b4/); arbitrum `0x1850b8...5b84ae`; arbitrum `0x19283d...92dc52`; arbitrum `0x1cafcb...54b653`; arbitrum `0x46fcde...301f30` | ⚠️ Unaudited |
| Router03 | adapter | ethereum | 10 deployments: ethereum [`0x002235...1d07b4`](./contracts/ethereum-1/0x0022358ebfd5261c325f8160c7c17bc8671d07b4/); ethereum `0x3b47f0...e29771`; optimism `0x9761d4...b9a91e`; bsc `0x8184fa...405990`; bsc `0xb6ed26...a97131`; polygon `0x6108fe...121834`; base `0xd7cabe...5fc83c`; arbitrum `0x11876c...ebf1ac`; avalanche `0x6108fe...121834`; linea `0x2217ae...8dba55` | ⚠️ Unaudited |
| SatinVaultTokenFactory | registry | polygon | [`0x82b341...37da11`](./contracts/polygon-137/0x82b3413d575aa93806308a04b53c78ae2037da11/) | ⚠️ Unaudited |
| SolidLizardStableVaultTokenFactory | registry | arbitrum | [`0x4775aa...ae3bb3`](./contracts/arbitrum-42161/0x4775aa12c9e0bb95f3b35139a4f22a886eae3bb3/) | ⚠️ Unaudited |
| SolidLizardVaultTokenFactory | registry | arbitrum | [`0x21d1ed...418cd3`](./contracts/arbitrum-42161/0x21d1ed29bcd89e1e07058575ee48ddaf02418cd3/) | ⚠️ Unaudited |
| SolidlyDexHandler | unknown | arbitrum | 9 deployments: ethereum `0x54b006...7d5420`; optimism `0xc5a397...51382a`; bsc `0x54b006...7d5420`; polygon `0xb6193d...bd1bf2`; base `0x582471...dc92e6`; arbitrum [`0x04e97d...310600`](./contracts/arbitrum-42161/0x04e97d5e3eff5981035622ef4681cf5470310600/); arbitrum `0xf54425...952691`; avalanche `0x2217ae...8dba55`; linea `0xf54425...952691` | ⚠️ Unaudited |
| SolidlyStableVaultTokenFactory | registry | ethereum | [`0xff5d90...5c3c1c`](./contracts/ethereum-1/0xff5d906fc36e9f0d01f099be0c7c69bc795c3c1c/) | ⚠️ Unaudited |
| SolidlyVaultTokenFactory | registry | ethereum | [`0x0998d0...3c94d9`](./contracts/ethereum-1/0x0998d0bfe219222816e7ea50997cf7cf663c94d9/) | ⚠️ Unaudited |
| SoliSnekVaultTokenFactory | registry | avalanche | [`0x4b6dae...dd4723`](./contracts/avalanche-43114/0x4b6dae049a35196a773028b2e835cccce9dd4723/) | ⚠️ Unaudited |
| SterlingStableVaultTokenFactory | registry | arbitrum | [`0x416ae1...4830c9`](./contracts/arbitrum-42161/0x416ae142dbbe08531be93a83b13d93837a4830c9/) | ⚠️ Unaudited |
| SterlingVaultTokenFactory | registry | arbitrum | [`0x255f54...28233d`](./contracts/arbitrum-42161/0x255f549ae4fddaf22b2d75fc8344c1352a28233d/) | ⚠️ Unaudited |
| SupplyVaultRouter01 | adapter | optimism | [`0x539fcd...2b36c9`](./contracts/optimism-10/0x539fcd9adbe7473768beb87bed88988b532b36c9/) | ⚠️ Unaudited |
| SupplyVaultStrategyV4 | core_logic | optimism | [`0x1753f9...289fb1`](./contracts/optimism-10/0x1753f90acc5ff758eb621f935ef0f99254289fb1/) | ⚠️ Unaudited |
| TarotMigrator | periphery | arbitrum | 6 deployments: ethereum `0x8f80d8...66f690`; optimism `0x24005e...4672a4`; bsc `0x28bd42...e5f862`; polygon `0x5ecfec...160f18`; arbitrum [`0x07b414...604602`](./contracts/arbitrum-42161/0x07b414ad4e9b0866a30a05c6bc38fa48f7604602/); avalanche `0xaf20cb...17da87` | ⚠️ Unaudited |
| TarotOFT | unknown | arbitrum | 7 deployments: ethereum `0xa10bf0...ea56e8`; optimism `0x1f514a...a737f7`; bsc `0x982e60...0690be`; polygon `0xb092e1...e36ac2`; base `0xf54425...952691`; arbitrum [`0x13278c...deebf7`](./contracts/arbitrum-42161/0x13278cd824d33a7adb9f0a9a84aca7c0d2deebf7/); avalanche `0x5ecfec...160f18` | ⚠️ Unaudited |
| TarotPriceOracle | operational_periphery | optimism | 2 deployments: optimism [`0x981bd9...c29af5`](./contracts/optimism-10/0x981bd9f77c8aafc14ebc86769503f86a3cc29af5/); arbitrum `0xa516b9...84405f` | ⚠️ Unaudited |
| TarotSolidlyPriceOracle | operational_periphery | optimism | 2 deployments: optimism [`0x5a8931...933e17`](./contracts/optimism-10/0x5a8931f2b235caa2eabf3f07cd1154360c933e17/); arbitrum `0xd4a6a0...e01741` | ⚠️ Unaudited |
| TarotSolidlyPriceOracleV2 | operational_periphery | optimism | 8 deployments: ethereum `0x1d90fd...d0989e`; optimism [`0x0a3b93...d0008c`](./contracts/optimism-10/0x0a3b938d51f1b6d7bf960a0cb6ac9f1154d0008c/); bsc `0xd4a6a0...e01741`; polygon `0x5f90e2...e46401`; base `0x4b6dae...dd4723`; arbitrum `0x36df0a...e38a35`; avalanche `0x5f90e2...e46401`; linea `0x5f90e2...e46401` | ⚠️ Unaudited |
| ThenaV2VaultTokenFactory | registry | bsc | [`0x7c00da...a155e9`](./contracts/bsc-56/0x7c00dac770e0644ab16d85670215c1d96ba155e9/) | ⚠️ Unaudited |
| TowerLongPoolFactory | registry | optimism | [`0x8d92b5...c2ff05`](./contracts/optimism-10/0x8d92b5f12c1beba3583861e9c3067d088bc2ff05/) | ⚠️ Unaudited |
| TowerPoolFactory | registry | arbitrum | 4 deployments: optimism `0x8f5301...7dfe50`; base `0xb0d74d...f57bee`; arbitrum [`0x27eef1...ca1b14`](./contracts/arbitrum-42161/0x27eef135dbc00e5c3cdf5658d690d4c05dca1b14/); linea `0x46fcde...301f30` | ⚠️ Unaudited |
| ValueRouter | adapter | optimism | [`0x650af5...504b76`](./contracts/optimism-10/0x650af55d5877f289837c30b94af91538a7504b76/) | ⚠️ Unaudited |
| ValueRouterImpl | adapter | optimism | [`0x546d10...01c386`](./contracts/optimism-10/0x546d10c1378febef063b72ae4865496ad801c386/) | ⚠️ Unaudited |
| VaultTokenFactoryV2 | registry | arbitrum | [`0xfb3017...c898e7`](./contracts/arbitrum-42161/0xfb3017116a516898af427bdfe3aeb130f2c898e7/) | ⚠️ Unaudited |
| VeloStableVaultTokenFactory | registry | bsc | 4 deployments: optimism `0x66e9b3...9f4859`; optimism `0x987ef1...e089bf`; optimism `0xee1ecc...96cf70`; bsc [`0x54950c...909f57`](./contracts/bsc-56/0x54950cae3d8513ea041066f31697903de5909f57/) | ⚠️ Unaudited |
| VeloV2VaultTokenFactory | registry | optimism | [`0xbcb9da...bc89c5`](./contracts/optimism-10/0xbcb9da603a0a53272b61cb84ac0163ec8abc89c5/) | ⚠️ Unaudited |
| VeloVaultTokenFactory | registry | optimism | 3 deployments: optimism [`0x19283d...92dc52`](./contracts/optimism-10/0x19283dd283c31bf3920f7a530aa3a81a2792dc52/); optimism `0x673b77...c477a0`; bsc `0x3b47f0...e29771` | ⚠️ Unaudited |
| VesterSteppedLinear | operational_periphery | optimism | [`0x8e5f45...905f57`](./contracts/optimism-10/0x8e5f458baee7c38bd8f1e205ceb2acb66a905f57/) | ⚠️ Unaudited |
| ZipVaultTokenFactory | registry | optimism | [`0x54950c...909f57`](./contracts/optimism-10/0x54950cae3d8513ea041066f31697903de5909f57/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (104)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | optimism | `0x0348e0...59b13c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x0b9031...03b0b0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x16a0c2...1c2b0d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x2217ae...8dba55` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x232e84...609a66` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x3b47f0...e29771` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x40e625...f4deea` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x46fcde...301f30` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x4959f8...506ee9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x5634c4...c7d061` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x5ed664...2f08dd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x6237b5...7357ad` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x6e4c88...c08d9d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x76d553...d0cd01` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x7c00da...a155e9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x82b341...37da11` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x84ec15...28bce0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x875f4e...738bb6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x8a5226...e97615` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x8df7da...568ad7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x9ec30a...516863` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xa384bc...0f4e0b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xab4186...4a626b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xc20099...406d3a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xcceaed...8df8a9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xd96ddb...fffb4b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xe03746...dea803` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xebf1f9...c92861` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xfe9cc1...f49fa9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2973c9...58d21c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2e4c7b...92b2e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xda0428...267a0e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x04d04f...0c565a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x075b7f...96283a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x0defef...5d968e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x17235b...121c35` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x1a8c7d...75dd4d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x1f7a54...7420ed` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x1f8e60...c5cdb7` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x20aa24...f9754d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x2217ae...8dba55` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x26b21e...e94572` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x283e62...89ad98` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x2f7134...b36558` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x3303a5...d3622e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x35c052...3432ea` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x36df0a...e38a35` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x3e9d8f...3341a4` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x3e9f34...a10251` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x3f7e61...183a7c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x449ead...641561` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x44f768...e0d47d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x466ebd...a6e86b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x46fcde...301f30` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x4c0931...94ebef` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x4f56f5...f8f897` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x51d49f...560ba7` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x5494b2...2a74df` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x5b0390...721765` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x63d555...febee6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x68d211...dacdfb` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x6caa3e...1c33a8` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x74d1d2...df92f4` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x7e5f7d...febb9a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x80d741...cf014b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x80fe67...c81c7b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x87d057...b64a35` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x9189a6...c595ed` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x93d014...35eaac` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xa45776...c3d452` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xa90092...75d876` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xb7c2dd...37a274` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xbf76f8...cf7322` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xc2218e...c902d1` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xc5e2b0...8764cd` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xcf8660...564889` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xd204e3...c94d1e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xd4fcd1...0979ef` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xdcaeee...c2eaed` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xe034c8...89f7d8` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xe1fe8b...e40e17` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xe21ca4...1db6c7` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xe62745...83c275` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xf62faf...9815a6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xf6d943...dcd01b` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x54950c...909f57` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x82b341...37da11` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x82b341...37da11` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0xb6193d...bd1bf2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0998d0...3c94d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3b47f0...e29771` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x54950c...909f57` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5bcd6c...746916` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5bd75e...24e97f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x63f2a1...ae8bbc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8184fa...405990` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x991b6b...a2354f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaa70d7...a9ad89` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb4b567...40b62e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb6ed26...a97131` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbecbd5...3d10a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcc2587...d856bd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd91a46...cad8c0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x35c052...3432ea` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [CertiK - Tarot](https://skynet.certik.com/projects/tarot) | CertiK | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0x4ac8af...8de471`](./contracts/optimism-10/0x4ac8af23f3ef7ededb3dc45c091406aeee8de471/) | SupplyVaultV2 | core_logic | $16,499.94 | Verified native implementation with $16,499.94 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x01d7e3...bf661c`](./contracts/optimism-10/0x01d7e3bd5d8ea31cd1cee653576f185abdbf661c/) | FarmingPool | core_logic | $34.12 | Verified native implementation with $34.12 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1d90fd...d0989e`](./contracts/polygon-137/0x1d90fdac4dd30c3ba38d53f52a884f6e75d0989e/) | BDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa782b2...7e6e1d`](./contracts/optimism-10/0xa782b2a4fb8b329f257e58122cda55310d7e6e1d/) | ClaimAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6108fe...121834`](./contracts/optimism-10/0x6108feaa628155b073150f408d0b390ec3121834/) | OptiSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xadad28...84af55`](./contracts/optimism-10/0xadad288bd35434d37f79e2050a7776891384af55/) | OwnedDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x35c052...3432ea`](./contracts/linea-59144/0x35c052bbf8338b06351782a565aa9aad173432ea/) | RamsesVaultTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x002235...1d07b4`](./contracts/arbitrum-42161/0x0022358ebfd5261c325f8160c7c17bc8671d07b4/) | Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x82b341...37da11`](./contracts/polygon-137/0x82b3413d575aa93806308a04b53c78ae2037da11/) | SatinVaultTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4775aa...ae3bb3`](./contracts/arbitrum-42161/0x4775aa12c9e0bb95f3b35139a4f22a886eae3bb3/) | SolidLizardStableVaultTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4b6dae...dd4723`](./contracts/avalanche-43114/0x4b6dae049a35196a773028b2e835cccce9dd4723/) | SoliSnekVaultTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x416ae1...4830c9`](./contracts/arbitrum-42161/0x416ae142dbbe08531be93a83b13d93837a4830c9/) | SterlingStableVaultTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x539fcd...2b36c9`](./contracts/optimism-10/0x539fcd9adbe7473768beb87bed88988b532b36c9/) | SupplyVaultRouter01 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1753f9...289fb1`](./contracts/optimism-10/0x1753f90acc5ff758eb621f935ef0f99254289fb1/) | SupplyVaultStrategyV4 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x07b414...604602`](./contracts/arbitrum-42161/0x07b414ad4e9b0866a30a05c6bc38fa48f7604602/) | TarotMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x13278c...deebf7`](./contracts/arbitrum-42161/0x13278cd824d33a7adb9f0a9a84aca7c0d2deebf7/) | TarotOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x981bd9...c29af5`](./contracts/optimism-10/0x981bd9f77c8aafc14ebc86769503f86a3cc29af5/) | TarotPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5a8931...933e17`](./contracts/optimism-10/0x5a8931f2b235caa2eabf3f07cd1154360c933e17/) | TarotSolidlyPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7c00da...a155e9`](./contracts/bsc-56/0x7c00dac770e0644ab16d85670215c1d96ba155e9/) | ThenaV2VaultTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8d92b5...c2ff05`](./contracts/optimism-10/0x8d92b5f12c1beba3583861e9c3067d088bc2ff05/) | TowerLongPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x27eef1...ca1b14`](./contracts/arbitrum-42161/0x27eef135dbc00e5c3cdf5658d690d4c05dca1b14/) | TowerPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfb3017...c898e7`](./contracts/arbitrum-42161/0xfb3017116a516898af427bdfe3aeb130f2c898e7/) | VaultTokenFactoryV2 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x54950c...909f57`](./contracts/bsc-56/0x54950cae3d8513ea041066f31697903de5909f57/) | VeloStableVaultTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xbcb9da...bc89c5`](./contracts/optimism-10/0xbcb9da603a0a53272b61cb84ac0163ec8abc89c5/) | VeloV2VaultTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x19283d...92dc52`](./contracts/optimism-10/0x19283dd283c31bf3920f7a530aa3a81a2792dc52/) | VeloVaultTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8e5f45...905f57`](./contracts/optimism-10/0x8e5f458baee7c38bd8f1e205ceb2acb66a905f57/) | VesterSteppedLinear | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x54950c...909f57`](./contracts/optimism-10/0x54950cae3d8513ea041066f31697903de5909f57/) | ZipVaultTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 70 |
| upstream | 7 |
| standard_library | 2 |
| needs_review | 73 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3202] CertiK - Tarot

Fork inheritance lineage and inherited audits are included when available.
