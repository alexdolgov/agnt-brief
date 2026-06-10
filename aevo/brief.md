# Agentic Audit Brief: Aevo

## Project Overview

- Project: Aevo (`aevo`)
- Website: [https://app.aevo.xyz/r/defillama](https://app.aevo.xyz/r/defillama)
- Lifecycle: active (Tier 0, 83.8% below peak)
- Generated: 2026-06-10T20:58:56.571Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 256 unique implementations (631 raw deployments)
- DeFi Llama TVL: $20,277,667.00
- On-chain TVL (included contracts): $96,768,351.97
- TVL by chain: Ethereum $51,994,611.05 | Arbitrum $25,537,058.85 | Optimism $17,669,989.51 | Base $1,566,692.57

## Project Description

Aevo is a decentralized crypto derivatives exchange focused on options and perpetual futures trading. Current protocol characterization should be tied to verified Aevo deployments and DefiLlama's Aevo Perps derivatives tracking, while legacy Ribbon/Aevo Options components and inherited Ribbon Finance contracts or audits should be labeled separately unless current production use and bytecode/version equivalence are verified.

### Architecture

The Deposit contracts family provides the bridging infrastructure that feeds into both Aevo Options and Aevo Perps vaults. Aevo Options and Aevo Perps share the same deposit and withdrawal pathways but operate separate vaults for their respective derivative products.

## Audit Coverage Summary

- Verified implementations audited: 11/93 (11.8%)
- Verified + Unaudited implementations: 77
- Verified by bytecode match: 5
- Unverified implementations: 163
- Unique implementations: 256
- Raw deployments: 631
- Audits discovered: 13
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $26,144,406.34
- Latest audit: 2023-10 (stale)
- Staleness: 0 fresh, 0 aging, 12 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 7 | 7.5% | 2021-05 |
| PeckShield | Tier 2 | 2 | 2.2% | 2022-03 |
| Unknown | Tier 2 | 1 | 1.1% | 2021-07 |
| VAR | Tier 2 | 1 | 1.1% | 2023-10 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Vault | core_logic | arbitrum | 46 deployments: optimism `0x2bbc2e...625626`; optimism `0x31a7ab...4ab9e4`; optimism `0x3ab7b9...7a4ec2`; optimism `0x3bb3b7...f35984`; optimism `0x44343a...241b02`; optimism `0x4436ba...576e72`; optimism `0x5c7dd6...10ae7e`; optimism `0x61ce66...65ff34`; optimism `0x780962...3a28ef`; optimism `0x88ce86...8a6965`; optimism `0x923960...3590b6`; optimism `0xad7bdd...2c1bae`; optimism `0xb15f96...bb83fc`; optimism `0xbb9cf2...8fbd8c`; optimism `0xcbecd6...19b608`; optimism `0xd7b091...1d20e8`; optimism `0xdd4c71...eab86d`; optimism `0xdef0bf...7aa98e`; optimism `0xe59678...edcec9`; optimism `0xe8fea3...3dfa99`; optimism `0xe9f2ed...9e0415`; optimism `0xfff4a3...e80584`; base `0x5d6689...64e198`; base `0x6ee390...27fb48`; base `0xa8bd0e...779e8b`; arbitrum [`0x082526...1acee9`](./contracts/arbitrum-42161/0x0825266f72e8841d7fea350b20dd65aa861acee9/); arbitrum `0x087607...4082c3`; arbitrum `0x11b3a7...8524a8`; arbitrum `0x3d20c6...60896f`; arbitrum `0x3faf49...69d990`; arbitrum `0x492baf...e9da07`; arbitrum `0x4ed9ed...743553`; arbitrum `0x5e027a...e32882`; arbitrum `0x7711c9...3e9ddb`; arbitrum `0x80d40e...4d137c`; arbitrum `0x8e9f58...dfc922`; arbitrum `0x90bfb3...30e161`; arbitrum `0x9d3e02...b4df67`; arbitrum `0xa0e9b6...0fde77`; arbitrum `0xb2cb9a...1a60a6`; arbitrum `0xb37130...c68901`; arbitrum `0xd7bbe2...d13047`; arbitrum `0xd7e13d...76165d`; arbitrum `0xed9021...df7bc3`; arbitrum `0xf476d9...1a4b5a`; arbitrum `0xfb7b06...076e0b` | ✅ Audited |
| RibbonToken | token | ethereum | 3 deployments: ethereum [`0x3d11e0...efe64f`](./contracts/ethereum-1/0x3d11e0c0de0cf8bfdf85ea05509cfed9f0efe64f/); ethereum `0x5f7160...9737d2`; ethereum `0x6123b0...21fa6b` | ✅ Audited |
| Controller | governance | optimism | 3 deployments: optimism [`0x5e648e...55a6aa`](./contracts/optimism-10/0x5e648e8391b4e7f764b3e79d8a786078c755a6aa/); optimism `0x6dc5f8...6b470c`; arbitrum `0x9cf6f3...a1bc56` | ✅ Audited |
| L1ERC721Bridge | operational_periphery | ethereum | 6 deployments: ethereum [`0x2e7d7b...d676f0`](./contracts/ethereum-1/0x2e7d7b188d663f38c2e4ff9c59328458a2d676f0/); ethereum `0x66cee1...30a748`; ethereum `0x69ce76...155821`; ethereum `0x93314c...d66630`; ethereum `0xe4fc17...62381d`; ethereum `0xe7935c...30c639` | ✅ Audited |
| L2OutputOracle | operational_periphery | ethereum | 6 deployments: ethereum [`0x2efa0d...83a722`](./contracts/ethereum-1/0x2efa0d1cbd36aa0db7c0b59d32f6da68ca83a722/); ethereum `0x3e5209...2f5b14`; ethereum `0x909e51...ae3770`; ethereum `0x94c0d6...08e4f1`; ethereum `0x9f82b5...2eb376`; ethereum `0xf482aa...fba567` | ✅ Audited |
| MerkleDistributor | operational_periphery | ethereum | 2 deployments: ethereum [`0x1ea2f2...07cf90`](./contracts/ethereum-1/0x1ea2f2367e091525c86f00737bba0aa3b107cf90/); ethereum `0x7902e4...8cc1bf` | ✅ Audited |
| OptimismMintableERC20Factory | registry | ethereum | 6 deployments: ethereum [`0x3d46c8...a8e246`](./contracts/ethereum-1/0x3d46c86c299ff8b2599a0f59e4f8d0d6dda8e246/); ethereum `0x3e549c...9ce51c`; ethereum `0x47ff07...76cef9`; ethereum `0x4e80ed...dfe02d`; ethereum `0x5dbba1...81cc6a`; ethereum `0xbfec86...dd5af4` | ✅ Audited |
| OptimismPortal2 | unknown | ethereum | [`0x787a0a...01e320`](./contracts/ethereum-1/0x787a0acab02437c60aafb1a29167a3609801e320/) | ✅ Audited |
| Proxy | proxy | ethereum | 7 deployments: ethereum [`0x1ace6b...f41011`](./contracts/ethereum-1/0x1ace6b2b50816a058456141c9421de1282f41011/); ethereum `0x2dd0b6...be58c6`; ethereum `0x399bd2...be8bb3`; ethereum `0x6bba90...3ce841`; ethereum `0x72cc6e...ac3ab4`; ethereum `0x9e0b8c...315553`; ethereum `0xc7b404...543a3e` | ✅ Audited |
| ProxyAdmin | governance | ethereum | 3 deployments: ethereum [`0x27ff92...7c5019`](./contracts/ethereum-1/0x27ff92b30cae00dabcf8045cc68fc9dcb67c5019/); ethereum `0x9bd8c9...890f09`; ethereum `0xb145c0...dd0f39` | ✅ Audited |
| SystemConfig | governance | ethereum | [`0xf761cc...0cd9ca`](./contracts/ethereum-1/0xf761cc49bb127ab666899b41cdc4e62fa50cd9ca/) | ✅ Audited |

### ⚠️ Verified + Unaudited (77)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AevoToken | token | ethereum | [`0xb528ed...13b997`](./contracts/ethereum-1/0xb528edbef013aff855ac3c50b381f253af13b997/) | ⚠️ Unaudited |
| L1SwapVault | core_logic | ethereum | 3 deployments: ethereum [`0x426d1f...aecbe6`](./contracts/ethereum-1/0x426d1f3866bfcdf4d0efefed1ba3c5e06caecbe6/); ethereum `0x60453f...74aefc`; ethereum `0x728113...b92a3a` | ⚠️ Unaudited |
| AcrossImplL2 | unknown | optimism | [`0x2ddf16...b41fc0`](./contracts/optimism-10/0x2ddf16ba6d0180e5357d5e170ef1917a01b41fc0/) | ⚠️ Unaudited |
| AcrossImplV2 | unknown | arbitrum | 2 deployments: optimism `0xa7f7e4...d7de47`; arbitrum [`0x0c0858...0c5db6`](./contracts/arbitrum-42161/0x0c0858290b6b268a93fb557af06390a3460c5db6/) | ⚠️ Unaudited |
| AddressAssemble | unknown | optimism | 2 deployments: optimism [`0x4513f5...cfc24c`](./contracts/optimism-10/0x4513f50921a0333f2067ebdb9369daa81bcfc24c/); optimism `0xf5cada...19d5e8` | ⚠️ Unaudited |
| AddressManager | governance | ethereum | 3 deployments: ethereum [`0x7a616b...28ecc1`](./contracts/ethereum-1/0x7a616b25e7c96fc4d652966d7ddabb51de28ecc1/); ethereum `0xbbb4a5...bb02d9`; ethereum `0xeace26...3b3d2e` | ⚠️ Unaudited |
| AevoStaking | unknown | ethereum | 10 deployments: ethereum [`0x0e238a...4e6f5e`](./contracts/ethereum-1/0x0e238a03757c7739840a2b3982c5cb85064e6f5e/); ethereum `0x389130...46ad81`; ethereum `0x665f89...dfeec0`; ethereum `0x70924e...334f1e`; ethereum `0x7a3567...9f6d3b`; ethereum `0x8ac509...8f72ad`; ethereum `0x8f9c5d...3551cd`; ethereum `0xdf4061...a25261`; ethereum `0xec4f5c...d8fa69`; ethereum `0xffc3fa...735d1c` | ⚠️ Unaudited |
| AnyswapImplL2 | unknown | arbitrum | [`0x853730...efff41`](./contracts/arbitrum-42161/0x8537307810fc40f4073a12a38554d4ff78efff41/) | ⚠️ Unaudited |
| ArbitrumL2Switchboard | unknown | arbitrum | 5 deployments: arbitrum [`0x6a4715...94a8d0`](./contracts/arbitrum-42161/0x6a4715fc607c9ebda1377563552d45cbd194a8d0/); arbitrum `0xab2f8c...5770d3`; arbitrum `0xd9f45c...88a8e8`; arbitrum `0xdff78a...2a75f7`; arbitrum `0xf9a512...1400d5` | ⚠️ Unaudited |
| BlockHashChain | unknown | optimism | [`0x792b49...17e90d`](./contracts/optimism-10/0x792b49617491b936cbd61592f2c7d2e07d17e90d/) | ⚠️ Unaudited |
| BugSubmission | unknown | optimism | 2 deployments: optimism [`0x5ee146...0a021f`](./contracts/optimism-10/0x5ee146ea004afbb339d9c4164ca04c89f00a021f/); optimism `0x6c7a28...06d9ae` | ⚠️ Unaudited |
| CapacitorFactory | registry | optimism | 2 deployments: optimism [`0x866829...8ee7d0`](./contracts/optimism-10/0x8668293ba7de23e2e8e9dd5368e6e4eb778ee7d0/); arbitrum `0xbce4cd...67136a` | ⚠️ Unaudited |
| CaptureTheFees | unknown | optimism | 2 deployments: optimism [`0x49c79e...38fa82`](./contracts/optimism-10/0x49c79ed56df2301ec851fad0b2a566e4fe38fa82/); optimism `0xc87dbb...e06e39` | ⚠️ Unaudited |
| CelerImplL1L2 | unknown | arbitrum | 6 deployments: optimism `0x0c0858...0c5db6`; optimism `0x11695f...40a2d8`; optimism `0xb584d4...204599`; optimism `0xb8c328...efd76d`; arbitrum [`0x0aa26a...b32fb9`](./contracts/arbitrum-42161/0x0aa26a14c2559319f9def7304e93db5ae6b32fb9/); arbitrum `0x3f367b...15531a` | ⚠️ Unaudited |
| CommonPlug | unknown | arbitrum | 7 deployments: optimism `0x5df06c...426fb4`; optimism `0x6a8be0...bc1e46`; optimism `0x9d245f...9545d0`; optimism `0xf5b588...6ea2fd`; arbitrum [`0x4611a4...21919c`](./contracts/arbitrum-42161/0x4611a4c47893d57ad2005c9d674f27ddb121919c/); arbitrum `0x765cfb...9690fb`; arbitrum `0xcea535...fed1aa` | ⚠️ Unaudited |
| ConnectIt | unknown | optimism | [`0x18358f...0b3a5f`](./contracts/optimism-10/0x18358f1b750a8c38f041384c1f4d8867820b3a5f/) | ⚠️ Unaudited |
| ConnectorPlug | unknown | arbitrum | 45 deployments: optimism `0x082526...1acee9`; optimism `0x0fd785...f1d970`; optimism `0x1812ff...9b16a8`; optimism `0x242b28...064aa5`; optimism `0x27f4b2...658f64`; optimism `0x32bf26...88174c`; optimism `0x499239...b75833`; optimism `0x4bd04a...9e24c7`; optimism `0x52ee36...45e493`; optimism `0x55fa08...5d7671`; optimism `0x5b64ce...7aeb6f`; optimism `0x619085...083736`; optimism `0x716206...c210d4`; optimism `0x906a44...1109b4`; optimism `0xbc31ec...153a25`; optimism `0xc0acbb...91546c`; optimism `0xeab499...602572`; optimism `0xecaa24...9700c0`; optimism `0xf0a0b2...139793`; optimism `0xfd76d8...096c13`; base `0x1d56e8...74aafe`; base `0x20bdd8...626624`; base `0xbaf4a2...5cb08c`; arbitrum [`0x070fea...8bce43`](./contracts/arbitrum-42161/0x070feadf2208303d341d1d2da6aa41395f8bce43/); arbitrum `0x0a2064...c93b12`; arbitrum `0x17fc4c...6f8b21`; arbitrum `0x2e63d6...cf4571`; arbitrum `0x31dbda...583c86`; arbitrum `0x380915...7c3c67`; arbitrum `0x42c846...234afc`; arbitrum `0x5ea117...e1ff41`; arbitrum `0x6284b3...034516`; arbitrum `0x63d893...577c0f`; arbitrum `0x69adf4...f944d3`; arbitrum `0x7deb24...a672ca`; arbitrum `0x8752c7...f0a5f7`; arbitrum `0xa451cc...bc4ad9`; arbitrum `0xa8eaae...72151d`; arbitrum `0xadec92...8702eb`; arbitrum `0xb0d573...e9be83`; arbitrum `0xdc5650...763288`; arbitrum `0xe02c75...90047e`; arbitrum `0xe0a298...c0b55c`; arbitrum `0xf9715b...10d9b2`; arbitrum `0xff17d3...d7ff54` | ⚠️ Unaudited |
| Counter | unknown | optimism | 10 deployments: optimism [`0x1c2ec0...0bd6b7`](./contracts/optimism-10/0x1c2ec03cf08c77d7a4668c045415a8809d0bd6b7/); optimism `0x29829a...dd6033`; optimism `0x2f6b39...11538e`; optimism `0x36c4b7...0a8bb7`; optimism `0x7e54f4...c32622`; arbitrum `0x25ffcb...3e7e59`; arbitrum `0x360363...33eb55`; arbitrum `0x44513d...a257e3`; arbitrum `0x4fb274...c7260b`; arbitrum `0xd0bb14...1af15c` | ⚠️ Unaudited |
| Easter | unknown | optimism | [`0x92c7a5...c2bb4d`](./contracts/optimism-10/0x92c7a51bd507736ac0dda48b5f35a4aad0c2bb4d/) | ⚠️ Unaudited |
| ExecutionManagerDF | governance | base | 2 deployments: base [`0x31b111...83273c`](./contracts/base-8453/0x31b111b2197971fc982b1a507024cc0d0e83273c/); base `0xbf2492...12cd2f` | ⚠️ Unaudited |
| FastSwitchboard | unknown | optimism | 12 deployments: optimism [`0x09a6e7...2a8b97`](./contracts/optimism-10/0x09a6e77912a6bcfc3abfdfb841a85380bb2a8b97/); optimism `0x1cab02...67cc26`; optimism `0x60f0cc...4739d1`; optimism `0x835531...a981b3`; optimism `0xa989d2...9a7220`; optimism `0xccd5a9...316c6e`; arbitrum `0x1d3695...5eaa49`; arbitrum `0x2d7660...71c2d4`; arbitrum `0x388b07...7ff45e`; arbitrum `0x6216c9...b984dd`; arbitrum `0xd5e829...b42f2f`; arbitrum `0xfff4a3...e80584` | ⚠️ Unaudited |
| FindTheSign | unknown | optimism | [`0x767ce2...b26041`](./contracts/optimism-10/0x767ce21d9f9dc90f524b0c67ebdf50ed5ab26041/) | ⚠️ Unaudited |
| GasMovr | unknown | optimism | 3 deployments: optimism [`0x580024...f814d8`](./contracts/optimism-10/0x5800249621da520adfdca16da20d8a5fc0f814d8/); arbitrum `0xbdf50e...432410`; arbitrum `0xc0e02a...681a00` | ⚠️ Unaudited |
| GasPriceOracle | operational_periphery | optimism | 5 deployments: optimism [`0x09b471...526b65`](./contracts/optimism-10/0x09b471b83b91bdb1aa361f05770cfceff7526b65/); optimism `0xd9a317...aeedf3`; optimism `0xf84890...3632af`; arbitrum `0xcff802...b9f568`; arbitrum `0xd5a83a...45f5cd` | ⚠️ Unaudited |
| GatedCount | unknown | optimism | [`0xf873a0...032775`](./contracts/optimism-10/0xf873a063d74ae5f27aac1ef6317095a383032775/) | ⚠️ Unaudited |
| GimmeMonies | unknown | optimism | [`0x8f4ee8...ae4322`](./contracts/optimism-10/0x8f4ee8ab18ed25f787bc81a8d5e7b1d0deae4322/) | ⚠️ Unaudited |
| HopImplL2 | unknown | arbitrum | 6 deployments: optimism `0x0fd9f1...3c2204`; optimism `0x853730...efff41`; optimism `0xaa3d9f...4d750e`; arbitrum [`0x040993...6d56bb`](./contracts/arbitrum-42161/0x040993fbf458b95871cd2d73ee2e09f4af6d56bb/); arbitrum `0x2b42af...72ccd3`; arbitrum `0xa358d6...572f3d` | ⚠️ Unaudited |
| HyphenImplV2 | unknown | optimism | 2 deployments: optimism [`0xeb0344...f59f86`](./contracts/optimism-10/0xeb03440702bb6de23c63ad1c5a24598433f59f86/); arbitrum `0xf45ec1...c25c81` | ⚠️ Unaudited |
| Imbalance | unknown | optimism | [`0x2eb0e1...3564c9`](./contracts/optimism-10/0x2eb0e1a4194204c6881ef13cdfe6e539b53564c9/) | ⚠️ Unaudited |
| King | unknown | optimism | [`0x5eb0f5...58c5d3`](./contracts/optimism-10/0x5eb0f5958131b627063750a5d4efae37b258c5d3/) | ⚠️ Unaudited |
| L1ChugSplashProxy | bridge_template | ethereum | 2 deployments: ethereum [`0x71ac62...a879ed`](./contracts/ethereum-1/0x71ac62da06c75b202491e792b1a6d54dc2a879ed/); ethereum `0x9fa287...1c88a7` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | 4 deployments: ethereum [`0x11dd2d...4e12b0`](./contracts/ethereum-1/0x11dd2d9b5ec142dbafbefea82a75985eae4e12b0/); ethereum `0xc6fd4e...2e0565`; ethereum `0xeddff4...9c68d5`; ethereum `0xfa6acd...6d526c` | ⚠️ Unaudited |
| L1DepositHelper | periphery | ethereum | 4 deployments: ethereum [`0x09f62d...0a8e60`](./contracts/ethereum-1/0x09f62d9f9fe489c2cd460d7be8e78d4ace0a8e60/); ethereum `0x2c6dc1...5eda05`; ethereum `0xc3bb52...7c4c7f`; ethereum `0xd037a2...b5e4f4` | ⚠️ Unaudited |
| L1SocketDepositHelper | periphery | base | 7 deployments: base [`0x51e29a...9f472d`](./contracts/base-8453/0x51e29ad146c82b1cee4941b89a2d17e7069f472d/); base `0x6ea58e...744e56`; base `0x711c65...03b0c2`; base `0x73659f...8e6b73`; base `0xc54520...1af6d9`; base `0xf6d1c9...4d6fa8`; base `0xfcce85...8491b8` | ⚠️ Unaudited |
| L1StandardBridge | operational_periphery | ethereum | 4 deployments: ethereum [`0x066771...04a8a0`](./contracts/ethereum-1/0x0667714cc6fafb5d2735a3bf6e83553fb804a8a0/); ethereum `0x3e647d...62f4cb`; ethereum `0x4082c9...59c574`; ethereum `0xedc4fb...553a9a` | ⚠️ Unaudited |
| LimitExecutionHook | unknown | optimism | 16 deployments: optimism [`0x063ce1...c380b6`](./contracts/optimism-10/0x063ce19e9d682f38be70644a5fddae3a2ec380b6/); optimism `0x26fde5...4c9a5f`; optimism `0x40a1b2...abc1a3`; optimism `0x5f6f4b...2caed4`; optimism `0x765222...3fbb80`; optimism `0xaf2036...ea2509`; optimism `0xe19dd1...53d600`; optimism `0xf4eea9...8cd014`; arbitrum `0x3e3e6f...13f807`; arbitrum `0x65f258...9b8132`; arbitrum `0x716206...c210d4`; arbitrum `0x854281...8d3d2a`; arbitrum `0xb39f91...468c98`; arbitrum `0xd34308...fb9d3f`; arbitrum `0xed24b1...407e66`; arbitrum `0xf570f6...84cdd8` | ⚠️ Unaudited |
| LimitHook | unknown | base | 3 deployments: optimism `0x6f9234...4cf8f7`; base [`0x1a0dfd...9e8c25`](./contracts/base-8453/0x1a0dfde3fe4f15119bc750414a3457bf5e9e8c25/); arbitrum `0xe4593e...6fa37a` | ⚠️ Unaudited |
| Loot3D | unknown | optimism | 8 deployments: optimism [`0x08cea8...08121c`](./contracts/optimism-10/0x08cea8e6b3f8cf1c04f095edebbcc1df6f08121c/); optimism `0x1bea4f...313740`; optimism `0x259dda...ddfefd`; optimism `0x341903...863459`; arbitrum `0x45e877...da33f4`; arbitrum `0x8091cb...24731b`; arbitrum `0x8df624...b29b86`; arbitrum `0xdf5b1d...334b07` | ⚠️ Unaudited |
| LootDAI | unknown | optimism | 10 deployments: optimism [`0x053178...60c76d`](./contracts/optimism-10/0x0531789edca5f6e641b8d3ae48ef9fda4660c76d/); optimism `0x8f5e37...7159d1`; optimism `0xadf215...d5282a`; optimism `0xc6962f...c176a4`; optimism `0xc893bd...5cec55`; arbitrum `0x488b62...d80093`; arbitrum `0x4a77fb...0bc5d4`; arbitrum `0x9b9875...bce6a8`; arbitrum `0xce7c4d...fda626`; arbitrum `0xfaee8c...253ecf` | ⚠️ Unaudited |
| LootVault | core_logic | arbitrum | 10 deployments: optimism `0x85e9f9...bb9363`; optimism `0x87afc9...9a63a7`; optimism `0x97c783...a12765`; optimism `0x97fad2...5139a4`; optimism `0x9b76a2...5b6fcd`; arbitrum [`0x1f7e83...af2a7c`](./contracts/arbitrum-42161/0x1f7e83f14c18f1f1cdaab77142805338dcaf2a7c/); arbitrum `0x6426ca...5ae16f`; arbitrum `0x93783b...305e3b`; arbitrum `0x97c31d...cd8d62`; arbitrum `0xacd33c...a1ec8a` | ⚠️ Unaudited |
| MakeItRain | unknown | optimism | [`0x60e04b...b5f8fb`](./contracts/optimism-10/0x60e04bab3d82a16a7963bcd44b494bd9bbb5f8fb/) | ⚠️ Unaudited |
| MerkleDistributorAdjustable | operational_periphery | ethereum | 5 deployments: ethereum [`0x04b47c...9ceeed`](./contracts/ethereum-1/0x04b47c3b679c588a23e905b8579e4cc9f19ceeed/); ethereum `0x5c648b...184d76`; ethereum `0x778046...f21591`; ethereum `0x80c86b...5de404`; ethereum `0x9946a1...b76769` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | operational_periphery | ethereum | 2 deployments: ethereum [`0x1f197c...7d9381`](./contracts/ethereum-1/0x1f197ccb582179ef4a408f94c78137eeb77d9381/); ethereum `0xd4b812...2a2483` | ⚠️ Unaudited |
| MerkleDistributorWithStaking | operational_periphery | ethereum | [`0xce90d5...3223e6`](./contracts/ethereum-1/0xce90d5f1f313e25a3e32da3da97a041ee93223e6/) | ⚠️ Unaudited |
| MessageSearch | unknown | optimism | 2 deployments: optimism [`0x10bcd3...5755de`](./contracts/optimism-10/0x10bcd35f03c9c9b68305875f52b406188f5755de/); optimism `0x28ac26...364fd9` | ⚠️ Unaudited |
| Messenger | unknown | optimism | [`0xfcebb7...e6ac6c`](./contracts/optimism-10/0xfcebb7f5f3827f2fb485d24d1342977630e6ac6c/) | ⚠️ Unaudited |
| Miner | unknown | optimism | 2 deployments: optimism [`0x6ec499...6d343c`](./contracts/optimism-10/0x6ec499b869716bb479a843cebe048a90ec6d343c/); optimism `0x956693...f51180` | ⚠️ Unaudited |
| MintableToken | token | optimism | [`0xeb4b08...21d1c8`](./contracts/optimism-10/0xeb4b088441975a903fcda584aef0e985c721d1c8/) | ⚠️ Unaudited |
| OneInchRefuelSwapImpl | unknown | optimism | 2 deployments: optimism [`0x1d4307...38fc76`](./contracts/optimism-10/0x1d43076909ca139bfac4ebb7194518be3638fc76/); arbitrum `0xdcabb6...f2a44b` | ⚠️ Unaudited |
| OneInchSwapImpl | unknown | optimism | 4 deployments: optimism [`0x565810...686339`](./contracts/optimism-10/0x565810cbfa3cf1390963e5afa2fb953795686339/); optimism `0xbdf50e...432410`; arbitrum [`0x565810...686339`](./contracts/arbitrum-42161/0x565810cbfa3cf1390963e5afa2fb953795686339/); arbitrum `0xaa3d9f...4d750e` | ⚠️ Unaudited |
| OpenExecutionManager | governance | optimism | 4 deployments: optimism [`0x4aa89e...d297db`](./contracts/optimism-10/0x4aa89efdd4050dd40c1a3863294b6b148fd297db/); optimism `0xb44258...34a57c`; arbitrum `0xb864fb...10db22`; arbitrum `0xca1618...45c31e` | ⚠️ Unaudited |
| OptimismSwitchboard | unknown | optimism | 5 deployments: optimism [`0x717fac...bc2199`](./contracts/optimism-10/0x717facaa298fa151c6ffad47b5e9c51c41bc2199/); optimism `0x7e6da8...3bfe4d`; optimism `0x9cf744...aa716c`; optimism `0xadbc2c...9dd66a`; optimism `0xb6c103...fcf8c2` | ⚠️ Unaudited |
| OptimisticSwitchboard | unknown | arbitrum | 10 deployments: optimism `0x665288...9288a7`; optimism `0x929625...823d90`; optimism `0x9ba3ff...c7d922`; optimism `0xb113d7...f1e3f4`; optimism `0xcb473d...335ccf`; arbitrum [`0x1812ff...9b16a8`](./contracts/arbitrum-42161/0x1812ff6bd726934f18159164e2927b34949b16a8/); arbitrum `0x213be4...8d1413`; arbitrum `0x450d35...7ae36c`; arbitrum `0x626674...1af17c`; arbitrum `0xfe5de8...a6346d` | ⚠️ Unaudited |
| OrderCheck2 | unknown | optimism | [`0xbb7287...af50a2`](./contracts/optimism-10/0xbb7287aaf5fd6e4cd245e88d000ae41d79af50a2/) | ⚠️ Unaudited |
| PacketSearch | unknown | optimism | 3 deployments: optimism [`0x300e53...331ae1`](./contracts/optimism-10/0x300e530cbd5314860dd8a0e873c8c083d2331ae1/); optimism `0x73f4c9...e0f5a5`; optimism `0xdcef08...5b2cc9` | ⚠️ Unaudited |
| PlayTime | unknown | optimism | 2 deployments: optimism [`0x657a9b...3702bc`](./contracts/optimism-10/0x657a9bdd0d2e89c1fb1f0a4c364dfd7d1a3702bc/); optimism `0x72c948...f88dfe` | ⚠️ Unaudited |
| PoisonPill | unknown | optimism | [`0x992e0b...c40424`](./contracts/optimism-10/0x992e0ba66012858538ca20c621f9ccf09fc40424/) | ⚠️ Unaudited |
| PortalSender | unknown | ethereum | 3 deployments: ethereum [`0x393f4c...963b59`](./contracts/ethereum-1/0x393f4c8dbf38cfd6005611e95bd0c490f8963b59/); ethereum `0x3e801f...c33f20`; ethereum `0x78a4ca...a56a2d` | ⚠️ Unaudited |
| RefuelBridgeImpl | operational_periphery | optimism | 2 deployments: optimism [`0x47e136...1be60e`](./contracts/optimism-10/0x47e136cf4a96e1afa72e19022f9699bbaa1be60e/); arbitrum `0x734079...344f5c` | ⚠️ Unaudited |
| RefuelImpl | unknown | optimism | 2 deployments: optimism [`0x0f933f...dc1b51`](./contracts/optimism-10/0x0f933f6a58d885586d356d6677dc87995bdc1b51/); arbitrum `0x23ddd3...598b89` | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | ethereum | 2 deployments: ethereum [`0x4e6f3f...c281f7`](./contracts/ethereum-1/0x4e6f3f31c2becd2e29c697712cb1a390dcc281f7/); ethereum `0x63cb35...15b3a9` | ⚠️ Unaudited |
| SigMaker | unknown | optimism | 2 deployments: optimism [`0x03709c...ababe8`](./contracts/optimism-10/0x03709c48dec486b64ddedacfbed43acea5ababe8/); optimism `0xb02113...95aeb7` | ⚠️ Unaudited |
| SimilarDeployer | unknown | optimism | [`0x8e304e...6eb0de`](./contracts/optimism-10/0x8e304e89dc574dc3296bbbf94b3f81ae256eb0de/) | ⚠️ Unaudited |
| SimulatorUtils | unknown | optimism | [`0xba9c93...da4f97`](./contracts/optimism-10/0xba9c93014648fc64a0beac857b95c0ff22da4f97/) | ⚠️ Unaudited |
| Socket | unknown | arbitrum | 10 deployments: optimism `0x1eb392...2d8166`; optimism `0x234462...3ad4b6`; optimism `0x301bd2...a1c0a4`; optimism `0x91ce46...2428f7`; optimism `0xd10cb2...6bf573`; arbitrum [`0x16e4a6...0a4ee8`](./contracts/arbitrum-42161/0x16e4a6af6e81c7997fc784c8e621316e480a4ee8/); arbitrum `0x37cc67...55f6ba`; arbitrum `0x9e3e47...13a9d1`; arbitrum `0xbc080a...8306a7`; arbitrum `0xfb6daf...634066` | ⚠️ Unaudited |
| SocketBatcher | periphery | arbitrum | 12 deployments: optimism `0x208cb8...c54408`; optimism `0x2b351e...86fb7b`; optimism `0x2c76df...920b7e`; optimism `0x321767...707b59`; optimism `0x5afa7d...5d2d9b`; optimism `0xffb098...0c8fce`; arbitrum [`0x107e18...d468a8`](./contracts/arbitrum-42161/0x107e182815c5e164e05f0c2cf478ace44fd468a8/); arbitrum `0x1808ca...c0113b`; arbitrum `0x2ea720...1f4b8e`; arbitrum `0x96fef4...ae3b0b`; arbitrum `0xd7b2e3...0255f7`; arbitrum `0xfbb3a5...7a8bd7` | ⚠️ Unaudited |
| SurgePass | unknown | optimism | [`0x35479b...75f937`](./contracts/optimism-10/0x35479b023e508ee9a7b533dbb5b516bb6875f937/) | ⚠️ Unaudited |
| SwitchBeyond | unknown | optimism | 3 deployments: optimism [`0x52a71b...c72daf`](./contracts/optimism-10/0x52a71b10ce5ecf54b6a583a8e1a2a6adf8c72daf/); optimism `0x91e4c4...75c76b`; optimism `0xd075c9...8172dd` | ⚠️ Unaudited |
| SwitchboardSimulator | unknown | optimism | [`0xbd69f4...b86056`](./contracts/optimism-10/0xbd69f42d91c57fe6ac84d1e57fc5c84428b86056/) | ⚠️ Unaudited |
| SyncPlug | unknown | arbitrum | 2 deployments: optimism `0x74af6d...7081df`; arbitrum [`0x50d1f0...803319`](./contracts/arbitrum-42161/0x50d1f0d98a59441e43ecd259598d90b305803319/) | ⚠️ Unaudited |
| ThreeMessageCounts | unknown | optimism | [`0x7a369b...d821bc`](./contracts/optimism-10/0x7a369b3d9cba81d338b98e25422335bfd5d821bc/) | ⚠️ Unaudited |
| TransmitManager | governance | optimism | 10 deployments: optimism [`0x0a523d...ae6163`](./contracts/optimism-10/0x0a523d8d8e2ad6f6623b3318a59743546cae6163/); optimism `0x48261a...b752c1`; optimism `0x6fedde...68dce5`; optimism `0x7398da...cb1470`; optimism `0xd3f391...66fa3e`; arbitrum `0x43a9b2...9755ca`; arbitrum `0x63c10c...2a0416`; arbitrum `0x6fc8d9...f8b4b6`; arbitrum `0xbf0572...cbb5d4`; arbitrum `0xd648a4...0d7f2e` | ⚠️ Unaudited |
| Traveller | unknown | optimism | 2 deployments: optimism [`0xb81de2...849000`](./contracts/optimism-10/0xb81de21eb8811968c03c8ca96b2c5901ee849000/); optimism `0xd6ff17...ed7b22` | ⚠️ Unaudited |
| TwoMessageCounts | unknown | optimism | [`0xafbe4b...4eccf2`](./contracts/optimism-10/0xafbe4bc31b3e5636e1446a987a42d8ad5b4eccf2/) | ⚠️ Unaudited |
| Window | unknown | optimism | [`0x6f0df1...d119a1`](./contracts/optimism-10/0x6f0df1d93dc1673c933a81eb122112c511d119a1/) | ⚠️ Unaudited |
| ZeroXRefuelImpl | unknown | optimism | [`0x029057...9d88d0`](./contracts/optimism-10/0x029057df831cce19fc7adbb8d7283afcbb9d88d0/) | ⚠️ Unaudited |
| ZeroXSwapImpl | unknown | optimism | [`0x2d7f2b...9071fe`](./contracts/optimism-10/0x2d7f2b4cee097f08ed8d30d928a40eb1379071fe/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (5)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ExecutionHelper | periphery | arbitrum | 16 deployments: optimism `0x16c2d3...2e88df`; optimism `0x1dd545...ef12bd`; optimism `0x4229dd...67e528`; optimism `0x66e75b...a22cb2`; optimism `0x6867ff...af3c2f`; optimism `0x922bf6...9f7d24`; optimism `0xbaec9e...3468be`; optimism `0xf18726...15f56f`; arbitrum [`0x063ce1...c380b6`](./contracts/arbitrum-42161/0x063ce19e9d682f38be70644a5fddae3a2ec380b6/); arbitrum `0x246860...564fed`; arbitrum `0x34f869...743109`; arbitrum `0x811f69...5886f9`; arbitrum `0xa9d0c0...7025e8`; arbitrum `0xbca7e7...77b315`; arbitrum `0xc8b6d7...5c4706`; arbitrum `0xdaadd2...bda2c8` | ⚠️ Unaudited (bytecode match) |
| ExecutionManager | governance | optimism | 9 deployments: optimism [`0x052b82...bb98ef`](./contracts/optimism-10/0x052b82b3a096a592f3f28d4736c4796445bb98ef/); optimism `0x105677...03bfec`; optimism `0x1b74ac...6ff35e`; optimism `0xf50ed3...2a4f6c`; optimism `0xfd1256...c7e47f`; arbitrum `0x0a1040...c2d381`; arbitrum `0x7a6edd...bd426d`; arbitrum `0xf84890...3632af`; arbitrum `0xfb9329...163d57` | ⚠️ Unaudited (bytecode match) |
| Hasher | unknown | arbitrum | 16 deployments: optimism `0x3e89c0...580dc5`; optimism `0x4f04f8...220d00`; optimism `0x64b314...50d957`; optimism `0x80b516...c729f8`; optimism `0x8ac0a7...b6724b`; optimism `0xae7ab9...0ee139`; optimism `0xb11c04...e0c8af`; optimism `0xdd975f...4ae3c4`; optimism `0xdf4ff0...55bab5`; arbitrum [`0x0266a4...9929bc`](./contracts/arbitrum-42161/0x0266a47314472f295fdb5bb36f784093e69929bc/); arbitrum `0x5af497...b3e325`; arbitrum `0xac4019...c97808`; arbitrum `0xcda819...004b4e`; arbitrum `0xde007c...76757f`; arbitrum `0xe59562...3a9a5e`; arbitrum `0xebc6fc...782781` | ⚠️ Unaudited (bytecode match) |
| MultiSigWrapper | governance | base | 11 deployments: base [`0x0c98cb...3b6540`](./contracts/base-8453/0x0c98cb76b36a5b5f723cb11b3a031350583b6540/); base `0x1fc216...b40633`; base `0x2db2d1...c15522`; base `0x4bd265...046306`; base `0x65df4c...a623b5`; base `0x6ec8cc...db5827`; base `0x7f3163...40f8eb`; base `0xa3a855...fd0a6b`; base `0xb6f2ac...70c37d`; base `0xc3213d...66b1ec`; base `0xc47d1c...2ee3fe` | ⚠️ Unaudited (bytecode match) |
| SignatureVerifier | periphery | arbitrum | 18 deployments: optimism `0x80e513...86ca5c`; optimism `0x8b57c3...43ff00`; optimism `0x976973...486fa7`; optimism `0xaa2f2b...450f35`; optimism `0xb56843...00c12b`; optimism `0xbb1f20...5a3925`; optimism `0xc94bf9...1e5d15`; optimism `0xde007c...76757f`; optimism `0xf096fd...d219f0`; arbitrum [`0x053407...5e62cd`](./contracts/arbitrum-42161/0x053407dfa30267f6332f3c94a9e9f704a55e62cd/); arbitrum `0x2b59d4...f5079a`; arbitrum `0x378a89...854b29`; arbitrum `0x4d6b52...eab169`; arbitrum `0x769874...f033f8`; arbitrum `0x9879a2...aa74b8`; arbitrum `0xe63347...956d4c`; arbitrum `0xe88f6b...a19537`; arbitrum `0xeaa15f...e83790` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (163)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x032b35...f843ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x37ca01...d0c1c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x495d44...f0500f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x552ffb...436394` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8daaf9...b3bcc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9a89fe...551735` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9cb22a...7b4a97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa5f729...13b0a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf1d30e...af7f23` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x04196c...83c2a6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x045c90...71450f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x064509...37efa1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x0a1040...c2d381` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x0a3451...e58f87` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x0ccfb6...8979b1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x0d50d4...96ace1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x18b237...a72a98` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x18e365...764ace` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x20ebdc...d32540` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x23d5c2...4386cd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x25aaef...c76262` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x29fd3a...bae6bd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x2dff1c...b1f4cf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x326bbb...15b77f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x331d17...dbf46f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x3379f1...507a7b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x37cc67...55f6ba` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x3c7516...7f69d4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x404e93...adf43f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x450aa5...c01ede` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x4793c3...3076b8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x48b4f0...9ac2f2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x49fd46...c8dc00` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x4b4d63...e418ae` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x4bf6e4...848375` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x4c0623...e1f746` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x4fe1ad...d42abd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x5035d9...7032d6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x533398...0fdae3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x5a21d4...0893f2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x5c1ea2...b4c44f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x5dfdff...92ca1c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x66a127...fb3107` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x66ad32...97ce18` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x6712ce...904498` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x749f09...a98e5a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x769874...f033f8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x7ab75a...1f4d7b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x7b2f65...d11161` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x86a0a4...06ce6b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x880997...894106` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x898aef...78d7f2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x8e9e34...64fe9a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x90b4d9...81e8cc` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x91f48c...88a4d8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x9879a2...aa74b8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x9a9567...b45115` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x9e51cd...259a16` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xa3f9a7...a31f68` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xad8cde...7fc81a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xb2dc05...cc364d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xb48b74...b6787f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xb5c4e1...3a7b7e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xb61701...2ad38f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xb7a6db...f5ddf9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xbce4cd...67136a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xbd57fa...8c88dd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xbec174...0e05cd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xbf47f1...38c8b2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xc2bd14...bb43e2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xc457f7...f56747` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xc972ab...9d5256` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xcda819...004b4e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xd23678...2a05c8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xd40213...09d024` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xd5087c...228df5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xd550ce...d8f77c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xd648a4...0d7f2e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xd7bbe2...d13047` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xde2994...f3cd33` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xdfd12c...194cd0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xe8bfe5...a6c70c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xe8da13...9375a2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xece91f...f9150b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xf004c4...99eabd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xf19516...b77aa6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xf68eaa...f8570b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xfb0eab...34781c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xffcbd4...23b4c8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x10c700...091221` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x11bf39...692cd0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x188b69...061f11` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1de492...cf1135` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3304c4...8aa9d1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x38d1ff...f83ab9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x43f3dd...68d063` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4c2bab...1bda26` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4dc25d...947ff5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x52b143...f182ed` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x57ca48...01262f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5a0e01...d4483c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5ab138...db9421` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x687c51...8ec5ee` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7eae8a...eb7de2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8c0d22...719286` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8ce48d...03ec82` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x965749...996bef` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa0be70...af6f6d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xab46c3...3ea6f6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb8ec11...fb2bd3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc56972...7040a6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc7f534...b30da9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xce6a81...e64d60` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd134ea...81e840` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd2663f...220c86` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfe5909...816908` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x01de29...49a0a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x11a418...151fb4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1b74ac...6ff35e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2ae629...1bdb2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2b3a8a...1e0497` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x31a7ab...4ab9e4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3f8f21...c3a26d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x49eddb...9416f7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4bd2a4...5c0594` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4cae61...b00753` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4f04f8...220d00` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x530654...d10366` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5fc8a6...9b70ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x63ef7d...89574b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x66dfb9...67599a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x69ea64...2c42c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6fedde...68dce5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x703f88...c3a039` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x717fac...bc2199` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x732f7d...186afb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x762d5f...8820d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7de493...2d7c9b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x81b955...92c2c6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x858f61...146251` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x921625...d1ff4d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9b5885...73a76e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9ba3ff...c7d922` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaaeb4b...e08c52` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xad0fa5...7d23b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb49dde...9f8e27` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbec622...ba6489` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc2bd14...bb43e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc40a22...6d72f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xccd5a9...316c6e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd10cb2...6bf573` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd4fd62...d0fb34` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd95c52...5cf5c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdee306...e552ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdf5f7d...319cae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe00321...8861cf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe11bcf...8d7ad0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xed037a...730341` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xed4f75...884c7f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf454ad...aaa9e9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfc63fa...7a5562` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfcebb7...e6ac6c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xffc2d8...28d147` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Ribbon-report.pdf (also discovered via alternate URL)](https://github.com/ribbon-finance/aevo-audit/blob/master/Ribbon-report.pdf) | Ribbon | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [VAR-AEVO230918.pdf](https://github.com/ribbon-finance/aevo-audit/blob/master/VAR-AEVO230918.pdf) | VAR | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [VAR_Ribbon.pdf](https://github.com/ribbon-finance/aevo-audit/blob/master/VAR_Ribbon.pdf) | VAR | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [VAR_Ribbon_OTC.pdf](https://github.com/ribbon-finance/aevo-audit/blob/master/VAR_Ribbon_OTC.pdf) | VAR | Audit | 2023-03 | stale | Direct | contract_name | 3 | high |
| [Chainsafe-Ribbon-Audit_April-2021.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/Chainsafe-Ribbon-Audit_April-2021.pdf) | Chainsafe | Audit | 2021 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name | 5 | high |
| [PeckShield-Audit-Report-RVOL-v1.0rc.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RVOL-v1.0rc.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Ribbon-v1.0.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-Ribbon-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-RibbonSwap.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RibbonSwap.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-RibbonTreasuryVault.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RibbonTreasuryVault.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [Quantstamp Theta Vault.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/Quantstamp%20Theta%20Vault.pdf) | Quantstamp | Audit | 2021-05 | stale | Direct | contract_name | 21 | high |
| [RibbonThetaVault V2 Smart Contract Review And Verification.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaVault%20V2%20Smart%20Contract%20Review%20And%20Verification.pdf) | Unknown | Audit | 2021-07 | stale | Direct | contract_name | 46 | high |
| [RibbonThetaYearn-18june.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaYearn-18june.pdf) | Unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xb528ed...13b997`](./contracts/ethereum-1/0xb528edbef013aff855ac3c50b381f253af13b997/) | AevoToken | token | $26,144,406.34 | Verified native implementation with $26,144,406.34 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4513f5...cfc24c`](./contracts/optimism-10/0x4513f50921a0333f2067ebdb9369daa81bcfc24c/) | AddressAssemble | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a616b...28ecc1`](./contracts/ethereum-1/0x7a616b25e7c96fc4d652966d7ddabb51de28ecc1/) | AddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6a4715...94a8d0`](./contracts/arbitrum-42161/0x6a4715fc607c9ebda1377563552d45cbd194a8d0/) | ArbitrumL2Switchboard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x792b49...17e90d`](./contracts/optimism-10/0x792b49617491b936cbd61592f2c7d2e07d17e90d/) | BlockHashChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5ee146...0a021f`](./contracts/optimism-10/0x5ee146ea004afbb339d9c4164ca04c89f00a021f/) | BugSubmission | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x866829...8ee7d0`](./contracts/optimism-10/0x8668293ba7de23e2e8e9dd5368e6e4eb778ee7d0/) | CapacitorFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x49c79e...38fa82`](./contracts/optimism-10/0x49c79ed56df2301ec851fad0b2a566e4fe38fa82/) | CaptureTheFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4611a4...21919c`](./contracts/arbitrum-42161/0x4611a4c47893d57ad2005c9d674f27ddb121919c/) | CommonPlug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x070fea...8bce43`](./contracts/arbitrum-42161/0x070feadf2208303d341d1d2da6aa41395f8bce43/) | ConnectorPlug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1c2ec0...0bd6b7`](./contracts/optimism-10/0x1c2ec03cf08c77d7a4668c045415a8809d0bd6b7/) | Counter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x92c7a5...c2bb4d`](./contracts/optimism-10/0x92c7a51bd507736ac0dda48b5f35a4aad0c2bb4d/) | Easter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x063ce1...c380b6`](./contracts/arbitrum-42161/0x063ce19e9d682f38be70644a5fddae3a2ec380b6/) | ExecutionHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x052b82...bb98ef`](./contracts/optimism-10/0x052b82b3a096a592f3f28d4736c4796445bb98ef/) | ExecutionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x31b111...83273c`](./contracts/base-8453/0x31b111b2197971fc982b1a507024cc0d0e83273c/) | ExecutionManagerDF | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x09a6e7...2a8b97`](./contracts/optimism-10/0x09a6e77912a6bcfc3abfdfb841a85380bb2a8b97/) | FastSwitchboard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x767ce2...b26041`](./contracts/optimism-10/0x767ce21d9f9dc90f524b0c67ebdf50ed5ab26041/) | FindTheSign | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x09b471...526b65`](./contracts/optimism-10/0x09b471b83b91bdb1aa361f05770cfceff7526b65/) | GasPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xf873a0...032775`](./contracts/optimism-10/0xf873a063d74ae5f27aac1ef6317095a383032775/) | GatedCount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8f4ee8...ae4322`](./contracts/optimism-10/0x8f4ee8ab18ed25f787bc81a8d5e7b1d0deae4322/) | GimmeMonies | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0266a4...9929bc`](./contracts/arbitrum-42161/0x0266a47314472f295fdb5bb36f784093e69929bc/) | Hasher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2eb0e1...3564c9`](./contracts/optimism-10/0x2eb0e1a4194204c6881ef13cdfe6e539b53564c9/) | Imbalance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5eb0f5...58c5d3`](./contracts/optimism-10/0x5eb0f5958131b627063750a5d4efae37b258c5d3/) | King | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x71ac62...a879ed`](./contracts/ethereum-1/0x71ac62da06c75b202491e792b1a6d54dc2a879ed/) | L1ChugSplashProxy | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11dd2d...4e12b0`](./contracts/ethereum-1/0x11dd2d9b5ec142dbafbefea82a75985eae4e12b0/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09f62d...0a8e60`](./contracts/ethereum-1/0x09f62d9f9fe489c2cd460d7be8e78d4ace0a8e60/) | L1DepositHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x51e29a...9f472d`](./contracts/base-8453/0x51e29ad146c82b1cee4941b89a2d17e7069f472d/) | L1SocketDepositHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x063ce1...c380b6`](./contracts/optimism-10/0x063ce19e9d682f38be70644a5fddae3a2ec380b6/) | LimitExecutionHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1a0dfd...9e8c25`](./contracts/base-8453/0x1a0dfde3fe4f15119bc750414a3457bf5e9e8c25/) | LimitHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x08cea8...08121c`](./contracts/optimism-10/0x08cea8e6b3f8cf1c04f095edebbcc1df6f08121c/) | Loot3D | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x053178...60c76d`](./contracts/optimism-10/0x0531789edca5f6e641b8d3ae48ef9fda4660c76d/) | LootDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1f7e83...af2a7c`](./contracts/arbitrum-42161/0x1f7e83f14c18f1f1cdaab77142805338dcaf2a7c/) | LootVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x60e04b...b5f8fb`](./contracts/optimism-10/0x60e04bab3d82a16a7963bcd44b494bd9bbb5f8fb/) | MakeItRain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04b47c...9ceeed`](./contracts/ethereum-1/0x04b47c3b679c588a23e905b8579e4cc9f19ceeed/) | MerkleDistributorAdjustable | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f197c...7d9381`](./contracts/ethereum-1/0x1f197ccb582179ef4a408f94c78137eeb77d9381/) | MerkleDistributorWithDeadline | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce90d5...3223e6`](./contracts/ethereum-1/0xce90d5f1f313e25a3e32da3da97a041ee93223e6/) | MerkleDistributorWithStaking | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xfcebb7...e6ac6c`](./contracts/optimism-10/0xfcebb7f5f3827f2fb485d24d1342977630e6ac6c/) | Messenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6ec499...6d343c`](./contracts/optimism-10/0x6ec499b869716bb479a843cebe048a90ec6d343c/) | Miner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xeb4b08...21d1c8`](./contracts/optimism-10/0xeb4b088441975a903fcda584aef0e985c721d1c8/) | MintableToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4aa89e...d297db`](./contracts/optimism-10/0x4aa89efdd4050dd40c1a3863294b6b148fd297db/) | OpenExecutionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x717fac...bc2199`](./contracts/optimism-10/0x717facaa298fa151c6ffad47b5e9c51c41bc2199/) | OptimismSwitchboard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1812ff...9b16a8`](./contracts/arbitrum-42161/0x1812ff6bd726934f18159164e2927b34949b16a8/) | OptimisticSwitchboard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xbb7287...af50a2`](./contracts/optimism-10/0xbb7287aaf5fd6e4cd245e88d000ae41d79af50a2/) | OrderCheck2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x300e53...331ae1`](./contracts/optimism-10/0x300e530cbd5314860dd8a0e873c8c083d2331ae1/) | PacketSearch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x657a9b...3702bc`](./contracts/optimism-10/0x657a9bdd0d2e89c1fb1f0a4c364dfd7d1a3702bc/) | PlayTime | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x992e0b...c40424`](./contracts/optimism-10/0x992e0ba66012858538ca20c621f9ccf09fc40424/) | PoisonPill | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x393f4c...963b59`](./contracts/ethereum-1/0x393f4c8dbf38cfd6005611e95bd0c490f8963b59/) | PortalSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x47e136...1be60e`](./contracts/optimism-10/0x47e136cf4a96e1afa72e19022f9699bbaa1be60e/) | RefuelBridgeImpl | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e6f3f...c281f7`](./contracts/ethereum-1/0x4e6f3f31c2becd2e29c697712cb1a390dcc281f7/) | ResolvedDelegateProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x03709c...ababe8`](./contracts/optimism-10/0x03709c48dec486b64ddedacfbed43acea5ababe8/) | SigMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x053407...5e62cd`](./contracts/arbitrum-42161/0x053407dfa30267f6332f3c94a9e9f704a55e62cd/) | SignatureVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8e304e...6eb0de`](./contracts/optimism-10/0x8e304e89dc574dc3296bbbf94b3f81ae256eb0de/) | SimilarDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xba9c93...da4f97`](./contracts/optimism-10/0xba9c93014648fc64a0beac857b95c0ff22da4f97/) | SimulatorUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x16e4a6...0a4ee8`](./contracts/arbitrum-42161/0x16e4a6af6e81c7997fc784c8e621316e480a4ee8/) | Socket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x107e18...d468a8`](./contracts/arbitrum-42161/0x107e182815c5e164e05f0c2cf478ace44fd468a8/) | SocketBatcher | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x35479b...75f937`](./contracts/optimism-10/0x35479b023e508ee9a7b533dbb5b516bb6875f937/) | SurgePass | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x52a71b...c72daf`](./contracts/optimism-10/0x52a71b10ce5ecf54b6a583a8e1a2a6adf8c72daf/) | SwitchBeyond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xbd69f4...b86056`](./contracts/optimism-10/0xbd69f42d91c57fe6ac84d1e57fc5c84428b86056/) | SwitchboardSimulator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x50d1f0...803319`](./contracts/arbitrum-42161/0x50d1f0d98a59441e43ecd259598d90b305803319/) | SyncPlug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x7a369b...d821bc`](./contracts/optimism-10/0x7a369b3d9cba81d338b98e25422335bfd5d821bc/) | ThreeMessageCounts | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0a523d...ae6163`](./contracts/optimism-10/0x0a523d8d8e2ad6f6623b3318a59743546cae6163/) | TransmitManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xb81de2...849000`](./contracts/optimism-10/0xb81de21eb8811968c03c8ca96b2c5901ee849000/) | Traveller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xafbe4b...4eccf2`](./contracts/optimism-10/0xafbe4bc31b3e5636e1446a987a42d8ad5b4eccf2/) | TwoMessageCounts | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6f0df1...d119a1`](./contracts/optimism-10/0x6f0df1d93dc1673c933a81eb122112c511d119a1/) | Window | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 135 |
| upstream | 12 |
| standard_library | 3 |
| needs_review | 106 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=75

Zero-match audit list:

- [1895] Ribbon-report.pdf
- [1896] VAR-AEVO230918.pdf
- [1897] VAR_Ribbon.pdf
- [1899] Chainsafe-Ribbon-Audit_April-2021.pdf
- [1901] PeckShield-Audit-Report-RVOL-v1.0rc.pdf
- [1902] PeckShield-Audit-Report-Ribbon-v1.0.pdf
- [1903] PeckShield-Audit-Report-RibbonSwap.pdf
- [1904] PeckShield-Audit-Report-RibbonTreasuryVault.pdf
- [1907] RibbonThetaYearn-18june.pdf

Fork inheritance lineage and inherited audits are included when available.
