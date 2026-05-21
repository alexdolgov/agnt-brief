# Agentic Audit Brief: King Protocol

## Project Overview

- Project: King Protocol (`king-protocol`)
- Website: [https://kingprotocol.org/](https://kingprotocol.org/)
- Lifecycle: active (Tier 0, 94.6% below peak)
- Generated: 2026-05-21T16:15:42.709Z
- Pipeline run: v2-pipeline-2026-05-21-8a1e64-f793
- Chains: arbitrum, base, mantle, base, ethereum, mantle, swellchain
- Contract surface: 79 unique implementations (241 raw deployments)
- DeFi Llama TVL: $1,283,601.34
- On-chain TVL (included contracts): $217,105,884.71

## Project Description

King Protocol is a liquid restaking protocol that allows users to deposit ETH or LSTs to receive liquid restaking tokens (LRTs) like eETH and weETH, which can be used across DeFi while earning staking and restaking rewards. It also includes cross-chain token bridging via LayerZero OFT and a squared restaking product (LRTSquared) for enhanced yield.

### Architecture

The Liquid Restaking family is the core, issuing eETH/weETH and managing staking, while the Cross-Chain Bridge family extends these tokens to other chains via LayerZero OFT contracts. LRTSquared builds on top of the Liquid Restaking tokens to provide compounded restaking, sharing infrastructure like oracles and price providers.

## Audit Coverage Summary

- Verified implementations audited: 27/59 (45.8%)
- Verified + Unaudited implementations: 32
- Unverified implementations: 20
- Unique implementations: 79
- Raw deployments: 241
- Audits discovered: 4
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a

## Contract Surface

### ✅ Verified + Audited (27)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| EtherFiRestaker | core_logic | ethereum | 2 deployments: ethereum [`0x1b7a4c...736fff`](./contracts/ethereum-1/0x1b7a4c3797236a1c37f8741c0be35c2c72736fff/); ethereum `0x3dbe6b...a6d4e2` | ✅ Audited |
| AvsOperatorManager | governance | ethereum | 4 deployments: ethereum [`0x2093bb...a37a6a`](./contracts/ethereum-1/0x2093bbb221f1d8c7c932c32ee28be6dee4a37a6a/); ethereum `0xc2743a...6fb5e5`; ethereum `0xdc9e0d...04fae7`; ethereum `0xeda445...419e55` | ✅ Audited |
| BoringVaultPriceProvider | operational_periphery | ethereum | [`0x130e22...3a0729`](./contracts/ethereum-1/0x130e22952dd3de2c80ebdfc2b256e344ff3a0729/) | ✅ Audited |
| CumulativeMerkleDrop | operational_periphery | ethereum | 2 deployments: ethereum [`0x26542f...dd0c65`](./contracts/ethereum-1/0x26542fbe5f320f25747e80831acdd1f27cdd0c65/); ethereum `0x6db24e...ba6b64` | ✅ Audited |
| EEigenStrategy | core_logic | ethereum | [`0x2f2342...54cf3e`](./contracts/ethereum-1/0x2f2342bd9fca72887f46de9522014f4cd154cf3e/) | ✅ Audited |
| EETH | unknown | ethereum | 5 deployments: ethereum [`0x1b47a6...eff72f`](./contracts/ethereum-1/0x1b47a665364bc15c28b05f449b53354d0ceff72f/); ethereum `0x35fa16...118ac2`; ethereum `0x46c51d...c369dd`; ethereum `0x5e9035...9e5242`; ethereum `0xe8e55a...22e3e6` | ✅ Audited |
| EtherFiAdmin | unknown | ethereum | 5 deployments: ethereum [`0x0ef8fa...42d705`](./contracts/ethereum-1/0x0ef8fa4760db8f5cd4d993f3e3416f30f942d705/); ethereum `0x92c27b...bd3c4c`; ethereum `0x92e2bd...e5927e`; ethereum `0x9d6fc3...7a4aea`; ethereum `0xc0ad77...e93f86` | ✅ Audited |
| EtherFiOperationParameters | unknown | ethereum | 3 deployments: ethereum [`0x901043...605945`](./contracts/ethereum-1/0x901043448d918af3761d6b04e6f6882733605945/); ethereum `0xd0ff89...fead1a`; ethereum `0xd6e217...fd1c6a` | ✅ Audited |
| EtherFiOracle | operational_periphery | ethereum | 7 deployments: ethereum [`0x57aaf0...bb6a41`](./contracts/ethereum-1/0x57aaf0004c716388b21795431cd7d5f9d3bb6a41/); ethereum `0x5bb017...4d809b`; ethereum `0x698cb4...781d9a`; ethereum `0x7997cf...2e7eaa`; ethereum `0x99be55...377b70`; ethereum `0x9b9608...9f22f4`; ethereum `0xde31e6...7f3d5b` | ✅ Audited |
| EtherFiStaking | unknown | ethereum | 3 deployments: ethereum [`0x1a7158...032a38`](./contracts/ethereum-1/0x1a71588f1a429cb740ae0ecb47c9749373032a38/); ethereum `0x857b4f...d16f8b`; ethereum `0xb6b4a4...6c7d36` | ✅ Audited |
| EtherFiViewer | periphery | ethereum | 13 deployments: ethereum [`0x0fb6cc...f85fe7`](./contracts/ethereum-1/0x0fb6ccbae1360dc1c3c256349d56a3d3f4f85fe7/); ethereum `0x19c10a...0594d7`; ethereum `0x26a2ca...79c22a`; ethereum `0x2ecd15...2fab81`; ethereum `0x5573d6...e77fa8`; ethereum `0x6827bf...09b710`; ethereum `0x683840...2430c1`; ethereum `0x83dd4b...c43c7f`; ethereum `0x97176e...de57e9`; ethereum `0xa6c706...98f223`; ethereum `0xa9094e...acb147`; ethereum `0xb619f9...6dd42c`; ethereum `0xd88f3f...89fed3` | ✅ Audited |
| LiquidityPool | core_logic | ethereum | 12 deployments: ethereum [`0x02656f...bac65b`](./contracts/ethereum-1/0x02656fe285fac5d5c756c2f03c17277df9bac65b/); ethereum `0x11858b...21cf63`; ethereum `0x308861...daf216`; ethereum `0x403ba4...310cef`; ethereum `0x4d784a...d93860`; ethereum `0x605f17...426399`; ethereum `0x72481f...b97f4a`; ethereum `0x833514...3cc0b8`; ethereum `0xa8a8be...4ffb1f`; ethereum `0xcef428...cfc474`; ethereum `0xd27a57...1f5a8b`; ethereum `0xe86922...a5eb79` | ✅ Audited |
| Liquifier | unknown | ethereum | 11 deployments: ethereum [`0x2225c9...6b6ed3`](./contracts/ethereum-1/0x2225c97928934625e8382e6636d30f94c46b6ed3/); ethereum `0x48276d...9f78f8`; ethereum `0x5769ff...395455`; ethereum `0x61e2ca...3f296a`; ethereum `0x6b6d4e...6bacdf`; ethereum `0x82c12f...31c4b8`; ethereum `0x9ffdf4...ef764f`; ethereum `0xb27b1d...1f02c1`; ethereum `0xc22c7f...87e691`; ethereum `0xe41aea...e33f72`; ethereum `0xfdb757...f8ce41` | ✅ Audited |
| LRTSquare | unknown | ethereum | 2 deployments: ethereum [`0x3d987e...9a16a2`](./contracts/ethereum-1/0x3d987e04fc47ac625f720f169c658307fd9a16a2/); ethereum `0xa838b3...03ec54` | ✅ Audited |
| LRTSquaredAdmin | unknown | ethereum | [`0xd2b8c7...d02ff5`](./contracts/ethereum-1/0xd2b8c78a5eb18a5f3b0392c5479bb45c77d02ff5/) | ✅ Audited |
| LRTSquaredCore | unknown | ethereum | 2 deployments: ethereum [`0x1cb489...1957de`](./contracts/ethereum-1/0x1cb489ef513e1cc35c4657c91853a2e6ff1957de/); ethereum `0x8f08b7...8e6040` | ✅ Audited |
| MembershipManager | governance | ethereum | 4 deployments: ethereum [`0x047a77...f15889`](./contracts/ethereum-1/0x047a7749ad683c2fd8a27c7904ca8dd128f15889/); ethereum `0x190f44...a3cfee`; ethereum `0x3d3202...3e3000`; ethereum `0xb27e1b...de3b84` | ✅ Audited |
| MembershipNFT | token | ethereum | 5 deployments: ethereum [`0x290d98...307106`](./contracts/ethereum-1/0x290d981b41b713437265cd7846806d7500307106/); ethereum `0x7106e8...6d29dc`; ethereum `0x79ef32...f98c0a`; ethereum `0xb49e44...27e479`; ethereum `0xe6179d...b144dd` | ✅ Audited |
| MockEtherFiAdmin | unknown | ethereum | 2 deployments: ethereum [`0x0c4a8a...3d63c4`](./contracts/ethereum-1/0x0c4a8aa58885402db92c2a0d3d748265ce3d63c4/); ethereum `0x46c4ab...cc29a8` | ✅ Audited |
| NFTExchange | token | ethereum | 3 deployments: ethereum [`0x200057...d903a2`](./contracts/ethereum-1/0x200057a0a4a97149b0924c5dbba868f283d903a2/); ethereum `0x6494c1...a41042`; ethereum `0x7c8efd...1e4543` | ✅ Audited |
| NodeOperatorManager | governance | ethereum | 2 deployments: ethereum [`0xd5edf7...54e35e`](./contracts/ethereum-1/0xd5edf7730abad812247f6f54d7bd31a52554e35e/); ethereum `0xfcc674...ee2caf` | ✅ Audited |
| PriceProvider | operational_periphery | ethereum | 2 deployments: ethereum [`0x28a6e7...c1f32f`](./contracts/ethereum-1/0x28a6e7ebb6aca8f64145952a9565245c3dc1f32f/); ethereum `0x2b9010...0f19e3` | ✅ Audited |
| RegulationsManager | governance | ethereum | 3 deployments: ethereum [`0x1fcb83...2cd0b4`](./contracts/ethereum-1/0x1fcb83123ffbc72373134d09d1c8ab52812cd0b4/); ethereum `0x8d671a...92920c`; ethereum `0xbd23ff...35f4de` | ✅ Audited |
| SEthFiStrategy | core_logic | ethereum | [`0x76c57e...805ad8`](./contracts/ethereum-1/0x76c57e359c0eda0aac54d97832fb1b4451805ad8/) | ✅ Audited |
| Swapper1InchV6 | adapter | ethereum | [`0x747cac...52232e`](./contracts/ethereum-1/0x747cac75776b3a0bba3de3e61ec12a6a7f52232e/) | ✅ Audited |
| WeETH | unknown | ethereum | 3 deployments: ethereum [`0xcd5fe2...59b7ee`](./contracts/ethereum-1/0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee/); ethereum `0xdd7835...b08f79`; ethereum `0xe629ee...e7d5d9` | ✅ Audited |
| WithdrawRequestNFT | operational_periphery | ethereum | 3 deployments: ethereum [`0x3ed97c...0a9cd4`](./contracts/ethereum-1/0x3ed97c79ded8894036da095b2e2f79f8080a9cd4/); ethereum `0x7d5706...9d4e2c`; ethereum `0xdaaac9...008ca7` | ✅ Audited |

### ⚠️ Verified + Unaudited (32)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AddressProvider | registry | ethereum | 2 deployments: ethereum [`0x20ee00...e38cc7`](./contracts/ethereum-1/0x20ee00f43ef299dba82ba6fef537756dabe38cc7/); ethereum `0x8487c5...e4a848` | ⚠️ Unaudited |
| ArbitrageFoundation | unknown | base | 8 deployments: base [`0x117212...546dc2`](./contracts/base-8453/0x11721202e81eb2f7445bac9f9bf11f0b87546dc2/); base `0x2e7a78...d4eab1`; base `0x44d021...9b42fd`; base `0x506131...55dac7`; base `0x64f582...d7eae2`; base `0xb2bad5...3a18fe`; base `0xe5bb8e...6e29fb`; base `0xe92e65...47cedb` | ⚠️ Unaudited |
| AuctionManager | governance | ethereum | 2 deployments: ethereum [`0x68fe80...ba5366`](./contracts/ethereum-1/0x68fe80c6e97e0c8613e2fed344358c6635ba5366/); ethereum `0xcbf18f...6433a0` | ⚠️ Unaudited |
| AvsOperator | unknown | ethereum | 2 deployments: ethereum [`0x8969d7...3960f5`](./contracts/ethereum-1/0x8969d7c2e3e5b056d5d4984031788eca923960f5/); ethereum `0xf47187...064d29` | ⚠️ Unaudited |
| BNFT | token | ethereum | 2 deployments: ethereum [`0x6a3938...687242`](./contracts/ethereum-1/0x6a393848f5d1b8e7dab45f3a7e01f9f0dc687242/); ethereum `0xad6ad4...c35599` | ⚠️ Unaudited |
| Create2Factory | registry | ethereum | [`0x652199...92ba62`](./contracts/ethereum-1/0x6521991a0bc180a5df7f42b27f4ee8f3b192ba62/) | ⚠️ Unaudited |
| depositRootGenerator | unknown | ethereum | 2 deployments: ethereum [`0x10f2c5...c561d6`](./contracts/ethereum-1/0x10f2c552ef9ca8d2b592a8055e2db0efe5c561d6/); ethereum `0x9f4c27...076776` | ⚠️ Unaudited |
| DummyTokenUpgradeable | token | ethereum | 10 deployments: ethereum [`0x0295e0...a5ae46`](./contracts/ethereum-1/0x0295e0ce709723fb25a28b8f67c54a488ba5ae46/); ethereum `0x20e885...b509ad`; ethereum `0x4e1da7...04081d`; ethereum `0x61ff31...f9a2bf`; ethereum `0x83998e...2d4b28`; ethereum `0xaae009...86fee6`; ethereum `0xabc12e...f04ae8`; ethereum `0xba4f87...65f10e`; ethereum `0xc2455e...f12aa9`; ethereum `0xdc400f...644cf3` | ⚠️ Unaudited |
| eBtcRateProvider | unknown | ethereum | [`0x81be35...31b523`](./contracts/ethereum-1/0x81be3526a71d9013a1a5bd38758e0f248231b523/) | ⚠️ Unaudited |
| EtherFiAvsOperator | unknown | ethereum | 5 deployments: ethereum [`0x792ef6...e9b44a`](./contracts/ethereum-1/0x792ef6fcae08e76253d13efea481cacb22e9b44a/); ethereum `0xad5074...f2130f`; ethereum `0xdce5ac...4800f2`; ethereum `0xf38098...248f53`; ethereum `0xfba2e9...2466c1` | ⚠️ Unaudited |
| EtherFiAvsOperatorsManager | governance | ethereum | 6 deployments: ethereum [`0x176bfd...e18bbb`](./contracts/ethereum-1/0x176bfd9863c349cc8b21e6cfeb7ae01f33e18bbb/); ethereum `0x2261ef...280138`; ethereum `0x642fb9...0b6583`; ethereum `0x7c37cd...bcf63f`; ethereum `0x91121c...75edcb`; ethereum `0xc2709a...a3d321` | ⚠️ Unaudited |
| EtherfiL1LineaReceiverETH | unknown | ethereum | 2 deployments: ethereum [`0x6f149f...94aa35`](./contracts/ethereum-1/0x6f149f8bf1cb0245e70171c9972059c22294aa35/); ethereum `0x755357...48f7c0` | ⚠️ Unaudited |
| EtherfiL1SyncPoolETH | core_logic | ethereum | 3 deployments: ethereum [`0x2c28ae...f50155`](./contracts/ethereum-1/0x2c28aed76d1fa85e1afe42ed476593d6cef50155/); ethereum `0x5cb960...648a39`; ethereum `0xd78987...5da146` | ⚠️ Unaudited |
| EtherFiNode | unknown | ethereum | 10 deployments: ethereum [`0x191a8f...8155c7`](./contracts/ethereum-1/0x191a8f7f67fdfc695f46d3d8e8422f4d848155c7/); ethereum `0x52bbf2...54e3c0`; ethereum `0x6b5c61...c929bc`; ethereum `0x8dac64...43ed6a`; ethereum `0x942ced...8f4748`; ethereum `0x9f0ae0...982da9`; ethereum `0xa4ab5e...b7583d`; ethereum `0xab47d7...fbe70d`; ethereum `0xb737e9...bf19c3`; ethereum `0xfca266...c695ae` | ⚠️ Unaudited |
| EtherFiNodesManager | governance | ethereum | 11 deployments: ethereum [`0x0c5631...b69295`](./contracts/ethereum-1/0x0c5631727ecf13f3e726bc3301e364af51b69295/); ethereum `0x20f2a7...ee9073`; ethereum `0x2b7790...120655`; ethereum `0x812e3d...57bfaa`; ethereum `0x8e35d6...aa26f5`; ethereum `0x997c54...1009f7`; ethereum `0xd90c56...725fda`; ethereum `0xf710e9...8f5142`; ethereum `0xf8208a...9f0625`; ethereum `0xfa7ab3...a1c319`; ethereum `0xfdb118...8747fb` | ⚠️ Unaudited |
| EtherFiOFTAdapter | adapter | ethereum | 2 deployments: ethereum [`0x361a67...d10289`](./contracts/ethereum-1/0x361a67a81a4694612004fa79e23ea8e307d10289/); ethereum `0xfe7fe0...cf7d0d` | ⚠️ Unaudited |
| EtherFiTimelock | governance | ethereum | [`0x9f26d4...d20761`](./contracts/ethereum-1/0x9f26d4c958fd811a1f59b01b86be7dffc9d20761/) | ⚠️ Unaudited |
| globalIndexLibrary | unknown | ethereum | [`0x325ea0...c85fb9`](./contracts/ethereum-1/0x325ea059f11d6860e50a803ae52d49ef35c85fb9/) | ⚠️ Unaudited |
| KingOFTL2 | unknown | arbitrum, base, mantle | 14 deployments: mantle `0x548c41...7b98ed`; mantle `0x5a57eb...7a7ab0`; base [`0x2a57db...9bb283`](./contracts/base-8453/0x2a57db06506ab9764db8dcf06ac17a5fed9bb283/); base `0x4d6a22...51beab`; base `0x6d0431...91570d`; base `0xcc0112...e852a9`; base `0xe22c24...5fbac0`; base `0xf25768...1d689d`; arbitrum [`0x2a57db...9bb283`](./contracts/arbitrum-42161/0x2a57db06506ab9764db8dcf06ac17a5fed9bb283/); arbitrum `0x2e4124...fee275`; arbitrum `0x5df256...e931c3`; arbitrum `0xb57d20...6d127f`; arbitrum `0xbb8660...5329bb`; arbitrum `0xf25768...1d689d` | ⚠️ Unaudited |
| L1LineaReceiverETH | unknown | ethereum | 2 deployments: ethereum [`0x332754...ef27f1`](./contracts/ethereum-1/0x33275453144a4d6ef266ef1164f3e6fcb6ef27f1/); ethereum `0x595677...9a29a5` | ⚠️ Unaudited |
| L1ModeReceiverETH | unknown | ethereum | 2 deployments: ethereum [`0x3b099b...6b7f24`](./contracts/ethereum-1/0x3b099bc0e9854799688b0542222c938e0a6b7f24/); ethereum `0xf68f84...9d3d60` | ⚠️ Unaudited |
| L1ModeReceiverETHUpgradeable | unknown | ethereum | 6 deployments: ethereum [`0x27e120...5985c2`](./contracts/ethereum-1/0x27e120c518a339c3d8b665e56c4503df785985c2/); ethereum `0x40819e...6311ca`; ethereum `0x8963c9...ccbc37`; ethereum `0xc8ad09...e1696f`; ethereum `0xefc323...cf2e8f`; ethereum `0xfab5f2...425ed1` | ⚠️ Unaudited |
| L1SyncPoolETH | core_logic | ethereum | 2 deployments: ethereum [`0x33757a...f43ee7`](./contracts/ethereum-1/0x33757a5e3afb438733679275c03ee2db43f43ee7/); ethereum `0x39272e...d334c0` | ⚠️ Unaudited |
| LoyaltyPointsMarketSafe | unknown | ethereum | 2 deployments: ethereum [`0x1d716d...f2cd24`](./contracts/ethereum-1/0x1d716d4ec89060411b978e00691fac9795f2cd24/); ethereum `0x316554...f4ee24` | ⚠️ Unaudited |
| LRTSquared | unknown | ethereum | 2 deployments: ethereum [`0x138f08...ea7743`](./contracts/ethereum-1/0x138f08a1798b7cf15adbf051bc2f11bca0ea7743/); ethereum `0xee179d...575b54` | ⚠️ Unaudited |
| NetworkRestakeResetHook | core_logic | ethereum | 3 deployments: ethereum [`0x274bbd...cb2fc8`](./contracts/ethereum-1/0x274bbdb8db5cca01e8364e781f8c338f79cb2fc8/); ethereum `0xa2f5e6...1082ae`; ethereum `0xc55cfc...af280a` | ⚠️ Unaudited |
| PreOrder | unknown | ethereum | 2 deployments: ethereum [`0x8b7a14...97ff44`](./contracts/ethereum-1/0x8b7a14fc3a93c2d43ffd2d2089d4e84c0f97ff44/); ethereum `0xb98331...05dcd2` | ⚠️ Unaudited |
| ProtocolRevenueManager | governance | ethereum | [`0xaf8749...e0d322`](./contracts/ethereum-1/0xaf8749c3dc1fc0592f21c2593204c45d3be0d322/) | ⚠️ Unaudited |
| StakingManager | governance | ethereum | 3 deployments: ethereum [`0x4ad639...72fa1e`](./contracts/ethereum-1/0x4ad639fc9c73f547bfff8b28d091d86d2472fa1e/); ethereum `0xb27d4e...d5868f`; ethereum `0xe55eac...008c69` | ⚠️ Unaudited |
| TNFT | token | ethereum | 3 deployments: ethereum [`0x9c377a...f11708`](./contracts/ethereum-1/0x9c377a56c4a5eee3fa4c7a8de0440168e4f11708/); ethereum `0xafb82c...1afea7`; ethereum `0xd60ec8...0277c7` | ⚠️ Unaudited |
| UniswapV3Plugin | unknown | base | 4 deployments: base [`0x409994...200ec2`](./contracts/base-8453/0x409994fd2fdcfccddea418b7f203b4db51200ec2/); base `0x84acc4...983af0`; base `0x8bd78c...e4a459`; base `0xa12772...675ef7` | ⚠️ Unaudited |
| wstETH_Burner | unknown | ethereum | [`0xa7581e...9b2a0f`](./contracts/ethereum-1/0xa7581ebe7870a220360d216c3404ff7cb79b2a0f/) | ⚠️ Unaudited |

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x4af6c5711171de95d5134056abc12b89d84d209f) | proxy | ethereum | `0x8e4304...e37638` | ❓ Unverified |
| Proxy (impl: 0xc8160b38f1bfc64cd2c6cfc78288204fa00569ca) | proxy | ethereum | `0x6d20bb...76aea9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2e346c...61085e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x309696...888b16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4af6c5...4d209f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x56ea97...2f999e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xac3977...79f4d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc8160b...0569ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf75cf7...e31953` | ❓ Unverified |
| UnnamedContract | unknown | swellchain | `0xc2606a...cee6f8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x63f237...077c6a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0e9315...6aca5a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x155938...a33ac4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x34b17b...fc1dc9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x644403...436763` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7e2a99...025844` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xaeab5e...d12dbe` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb71612...e228e2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbd2e14...27586b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe592f9...3421b5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Date | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---:|---|
| [NM_0452_King_Cross_Chain_FINAL.pdf](https://github.com/King-Protocol/king-cross-chain/blob/master/audit/NM_0452_King_Cross_Chain_FINAL.pdf) | unknown | 2025-02 | Direct | n/a | 0 | n/a |
| [Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf (also discovered via alternate URL)](https://github.com/King-Protocol/king-protocol-sc/blob/master/audits/Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf) | Ether_Fi | 2025-03 | Direct | UNKNOWN | 2 | high |
| [NM_0314_EtherFi_LRT_2.pdf (also discovered via alternate URL)](https://github.com/King-Protocol/king-protocol-sc/blob/master/audits/NM_0314_EtherFi_LRT_2.pdf) | NM | 2024-09 | Direct | UNKNOWN | 29 | high |
| [NM_0390_LRT_Square_Strategies_DRAFT.pdf (also discovered via alternate URL)](https://github.com/King-Protocol/king-protocol-sc/blob/master/audits/NM_0390_LRT_Square_Strategies_DRAFT.pdf) | NM | 2024-11 | Direct | UNKNOWN | 8 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x20ee00...e38cc7`](./contracts/ethereum-1/0x20ee00f43ef299dba82ba6fef537756dabe38cc7/) | AddressProvider | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68fe80...ba5366`](./contracts/ethereum-1/0x68fe80c6e97e0c8613e2fed344358c6635ba5366/) | AuctionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8969d7...3960f5`](./contracts/ethereum-1/0x8969d7c2e3e5b056d5d4984031788eca923960f5/) | AvsOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a3938...687242`](./contracts/ethereum-1/0x6a393848f5d1b8e7dab45f3a7e01f9f0dc687242/) | BNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x652199...92ba62`](./contracts/ethereum-1/0x6521991a0bc180a5df7f42b27f4ee8f3b192ba62/) | Create2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10f2c5...c561d6`](./contracts/ethereum-1/0x10f2c552ef9ca8d2b592a8055e2db0efe5c561d6/) | depositRootGenerator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81be35...31b523`](./contracts/ethereum-1/0x81be3526a71d9013a1a5bd38758e0f248231b523/) | eBtcRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x792ef6...e9b44a`](./contracts/ethereum-1/0x792ef6fcae08e76253d13efea481cacb22e9b44a/) | EtherFiAvsOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x176bfd...e18bbb`](./contracts/ethereum-1/0x176bfd9863c349cc8b21e6cfeb7ae01f33e18bbb/) | EtherFiAvsOperatorsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c28ae...f50155`](./contracts/ethereum-1/0x2c28aed76d1fa85e1afe42ed476593d6cef50155/) | EtherfiL1SyncPoolETH | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x191a8f...8155c7`](./contracts/ethereum-1/0x191a8f7f67fdfc695f46d3d8e8422f4d848155c7/) | EtherFiNode | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c5631...b69295`](./contracts/ethereum-1/0x0c5631727ecf13f3e726bc3301e364af51b69295/) | EtherFiNodesManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x361a67...d10289`](./contracts/ethereum-1/0x361a67a81a4694612004fa79e23ea8e307d10289/) | EtherFiOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9f26d4...d20761`](./contracts/ethereum-1/0x9f26d4c958fd811a1f59b01b86be7dffc9d20761/) | EtherFiTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x325ea0...c85fb9`](./contracts/ethereum-1/0x325ea059f11d6860e50a803ae52d49ef35c85fb9/) | globalIndexLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum, base, mantle | [`0x2a57db...9bb283`](./contracts/base-8453/0x2a57db06506ab9764db8dcf06ac17a5fed9bb283/) | KingOFTL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x332754...ef27f1`](./contracts/ethereum-1/0x33275453144a4d6ef266ef1164f3e6fcb6ef27f1/) | L1LineaReceiverETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d716d...f2cd24`](./contracts/ethereum-1/0x1d716d4ec89060411b978e00691fac9795f2cd24/) | LoyaltyPointsMarketSafe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x138f08...ea7743`](./contracts/ethereum-1/0x138f08a1798b7cf15adbf051bc2f11bca0ea7743/) | LRTSquared | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x274bbd...cb2fc8`](./contracts/ethereum-1/0x274bbdb8db5cca01e8364e781f8c338f79cb2fc8/) | NetworkRestakeResetHook | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b7a14...97ff44`](./contracts/ethereum-1/0x8b7a14fc3a93c2d43ffd2d2089d4e84c0f97ff44/) | PreOrder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf8749...e0d322`](./contracts/ethereum-1/0xaf8749c3dc1fc0592f21c2593204c45d3be0d322/) | ProtocolRevenueManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ad639...72fa1e`](./contracts/ethereum-1/0x4ad639fc9c73f547bfff8b28d091d86d2472fa1e/) | StakingManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c377a...f11708`](./contracts/ethereum-1/0x9c377a56c4a5eee3fa4c7a8de0440168e4f11708/) | TNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7581e...9b2a0f`](./contracts/ethereum-1/0xa7581ebe7870a220360d216c3404ff7cb79b2a0f/) | wstETH_Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 51 |
| upstream | 2 |
| standard_library | 14 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=39

Zero-match audit list:

- [1418] NM_0452_King_Cross_Chain_FINAL.pdf

Fork inheritance lineage and inherited audits are included when available.
