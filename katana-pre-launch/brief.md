# Agentic Audit Brief: Katana Pre-Launch

## Project Overview

- Project: Katana Pre-Launch (`katana-pre-launch`)
- Website: [https://app.katana.network/](https://app.katana.network/)
- Lifecycle: active (Tier 0, 92.6% below peak)
- Generated: 2026-06-12T16:28:02.736Z
- Pipeline run: v2-pipeline-2026-06-12-c7aee3-9d35
- Chains: base, ethereum
- Contract surface: 174 unique implementations (656 raw deployments)
- DeFi Llama TVL: $17,494,776.38
- On-chain TVL (included contracts): $35,475,597.55
- TVL by chain: Ethereum $35,475,597.55

## Project Description

Katana Pre-Launch is an Ethereum pre-launch deposit/farm product where users deposit eligible tokens into Yearn vaults to earn Krates and a pro-rata KAT allocation. Bridge, swap, perps, chain infrastructure, LayerZero, Agglayer, OP Stack, SP1, and other app or chain components should be treated as dependencies or out-of-scope unless directly tied to the pre-launch deposit contracts.

### Architecture

The Katana Pre-Launch vaults mint yield-bearing tokens that can be bridged via the Vault Bridge or LayerZero adapters, while the Agglayer bridge provides a canonical path to the Katana chain. Shared infrastructure like GnosisSafe and Permit2 supports governance and token approvals across families.

## Audit Coverage Summary

- Verified implementations audited: 0/106 (0.0%)
- Verified + Unaudited implementations: 105
- Verified by bytecode match: 1
- Unverified implementations: 68
- Unique implementations: 174
- Raw deployments: 656
- Audits discovered: 28
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $35,475,597.55
- Latest audit: 2025-09 (fresh)
- Staleness: 6 fresh, 7 aging, 6 stale, 9 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (105)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Yearn V3 Vault | core_logic | ethereum | 6 deployments: ethereum [`0x48c03b...eedfcb`](./contracts/ethereum-1/0x48c03b6ffd0008460f8657db1037c7e09deedfcb/); ethereum `0x77570c...97ea2f`; ethereum `0xa5dab3...7d3896`; ethereum `0xd80631...84b00d`; ethereum `0xe1ac97...55544a`; ethereum `0xf470eb...cc014d` | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | 2 deployments: ethereum [`0x69d210...44c16b`](./contracts/ethereum-1/0x69d210d3b60e939bfa6e87cccc4fab7e8f44c16b/); ethereum `0x752310...565ab5` | ⚠️ Unaudited |
| TokenChwomper | token | ethereum | 3 deployments: ethereum [`0x5c2e11...92559c`](./contracts/ethereum-1/0x5c2e112783a6854653b4bc7dc22248d3e592559c/); ethereum `0xdbeca8...b3e9eb`; ethereum `0xde7259...1d5667` | ⚠️ Unaudited |
| LockReleaseTokenPool | core_logic | ethereum | 43 deployments: ethereum [`0x0238d2...25e2e4`](./contracts/ethereum-1/0x0238d2c272f17cf11aedb08cde515d56ed25e2e4/); ethereum `0x047204...8e0786`; ethereum `0x0bc426...f075b4`; ethereum `0x0c291a...c1f4aa`; ethereum `0x0dafed...8b2602`; ethereum `0x1e28dd...c9c3d3`; ethereum `0x21377f...4df45e`; ethereum `0x26cdfc...c7c520`; ethereum `0x2c5c39...25b5b4`; ethereum `0x4ce6f5...bf675c`; ethereum `0x4edc3a...eda56a`; ethereum `0x50f663...a882ac`; ethereum `0x55562a...11c1e6`; ethereum `0x619ed9...b5924e`; ethereum `0x6452d6...3f37a6`; ethereum `0x69c24c...78f93a`; ethereum `0x6ce8b7...4a28f4`; ethereum `0x6ddf2f...494db2`; ethereum `0x6ff6bf...b6cd7e`; ethereum `0x73aeb5...3d90c1`; ethereum `0x8272db...ba413a`; ethereum `0x8291a8...9f3b06`; ethereum `0x82df5c...db012b`; ethereum `0x923f27...c3ee81`; ethereum `0xa00853...00cd91`; ethereum `0xa35304...16c215`; ethereum `0xa370ce...7574da`; ethereum `0xa82a87...eaf858`; ethereum `0xa904b9...19d000`; ethereum `0xa96787...9d349b`; ethereum `0xb5f146...8e0c80`; ethereum `0xb85453...19d7ba`; ethereum `0xc22919...570df4`; ethereum `0xc43c01...778df2`; ethereum `0xc456ea...56cd29`; ethereum `0xcc75c8...c8fa14`; ethereum `0xcd69c1...322733`; ethereum `0xd0b84f...d48595`; ethereum `0xd1b301...af49de`; ethereum `0xdca0a2...add6d0`; ethereum `0xde04b3...dd19df`; ethereum `0xe2f0da...93e366`; ethereum `0xf84bf7...15fa72` | ⚠️ Unaudited |
| AccountantWithRateProviders | unknown | ethereum | [`0xfcb9a6...8e787d`](./contracts/ethereum-1/0xfcb9a6bf02c43f9e38bb102fd960cc1e738e787d/) | ⚠️ Unaudited |
| AgglayerBridge | operational_periphery | ethereum | [`0x2a3dd3...ca2ede`](./contracts/ethereum-1/0x2a3dd3eb832af982ec71669e178424b10dca2ede/) | ⚠️ Unaudited |
| AgoraDollar | unknown | ethereum | [`0x000000...a9012a`](./contracts/ethereum-1/0x00000000efe302beaa2b3e6e1b18d08d69a9012a/) | ⚠️ Unaudited |
| ArcticArchitectureLens | periphery | ethereum | [`0xe0efe9...a857fe`](./contracts/ethereum-1/0xe0efe934dc4744090e8ef93f1d125e4015a857fe/) | ⚠️ Unaudited |
| ARM | unknown | ethereum | [`0x8b63b3...91fa1b`](./contracts/ethereum-1/0x8b63b3de93431c0f756a493644d128134291fa1b/) | ⚠️ Unaudited |
| ARMProxy | unknown | ethereum | [`0x411de1...c75e81`](./contracts/ethereum-1/0x411de17f12d1a34ecc7f45f49844626267c75e81/) | ⚠️ Unaudited |
| AxelarDVNAdapterFeeLib | adapter | ethereum | [`0xbec6f0...b56af7`](./contracts/ethereum-1/0xbec6f0034cb9055b68dc5f02873b45841ab56af7/) | ⚠️ Unaudited |
| BoringOnChainQueue | unknown | ethereum | [`0x52e523...ce2506`](./contracts/ethereum-1/0x52e523b849c584f86bf460a3cf2962b118ce2506/) | ⚠️ Unaudited |
| BoringSolver | unknown | ethereum | [`0x102b3f...d06137`](./contracts/ethereum-1/0x102b3fdb4537df5b15ab91a85bc6f62fbcd06137/) | ⚠️ Unaudited |
| BridgeExtension | operational_periphery | ethereum | [`0x64b20e...52f6a6`](./contracts/ethereum-1/0x64b20eb25aed030fd510ef93b9135278b152f6a6/) | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | ethereum | 33 deployments: ethereum [`0x057152...1fe1b4`](./contracts/ethereum-1/0x057152db365b47851b0a0bd431644b8ee21fe1b4/); ethereum `0x06f981...1da9b8`; ethereum `0x1175e4...4fa62e`; ethereum `0x123ed4...0ee5ca`; ethereum `0x1580c7...092cfa`; ethereum `0x276491...fde73b`; ethereum `0x2dd317...517470`; ethereum `0x3d368d...2d7c8f`; ethereum `0x44622f...c7ff14`; ethereum `0x4c3aee...fb7709`; ethereum `0x550425...65d451`; ethereum `0x57d3bb...28475f`; ethereum `0x7559a8...2128ca`; ethereum `0x781964...dad288`; ethereum `0x80cc10...7de2d4`; ethereum `0x80e2dc...e4cfb8`; ethereum `0x8300e8...a6b12d`; ethereum `0x8bcd7e...ae9062`; ethereum `0x8c6028...422e56`; ethereum `0x9797e8...d828e6`; ethereum `0x9c6a6e...27e1dd`; ethereum `0xa17698...0701e7`; ethereum `0xba0e1c...c824c3`; ethereum `0xbf7cb6...dc0982`; ethereum `0xc62c31...1aad3e`; ethereum `0xcd196d...c73526`; ethereum `0xd72f70...87c66c`; ethereum `0xd8f734...66c351`; ethereum `0xdc85b5...8641a2`; ethereum `0xde71a0...e86f12`; ethereum `0xeae89e...669b73`; ethereum `0xf0d19c...7be823`; ethereum `0xf5224e...dcde99` | ⚠️ Unaudited |
| BurnMintTokenPoolAndProxy | core_logic | ethereum | 25 deployments: ethereum [`0x08b405...7b5abb`](./contracts/ethereum-1/0x08b4058f16d243c977ea1fe91b20af31057b5abb/); ethereum `0x307d03...16bce8`; ethereum `0x46911f...cbf5a6`; ethereum `0x475c8f...36e358`; ethereum `0x485858...db0005`; ethereum `0x518086...196a97`; ethereum `0x581ced...48c9c7`; ethereum `0x5be290...4f58ca`; ethereum `0x67f4e7...1b1787`; ethereum `0x6d1e0c...7d38bb`; ethereum `0x8315bb...27336e`; ethereum `0x8ac682...a158d7`; ethereum `0x8c9015...66b760`; ethereum `0x8ee289...46a4a5`; ethereum `0x916d7d...866d44`; ethereum `0x9f02c1...b6d06c`; ethereum `0xc1d8f2...25d91a`; ethereum `0xc4abcd...4f5f58`; ethereum `0xc576d8...de5b73`; ethereum `0xce8342...098fde`; ethereum `0xcfd063...df23c4`; ethereum `0xe58edb...0a6a84`; ethereum `0xe727f7...dad811`; ethereum `0xe9bfb4...ac54ac`; ethereum `0xea5fd7...86ada1` | ⚠️ Unaudited |
| BurnWithFromMintTokenPool | core_logic | ethereum | 2 deployments: ethereum [`0x45a103...f84b6b`](./contracts/ethereum-1/0x45a103142585bdfc49cdb137f2a45d1ae7f84b6b/); ethereum `0x66d40e...dedcec` | ⚠️ Unaudited |
| BurnWithFromMintTokenPoolAndProxy | core_logic | ethereum | [`0x476eef...240b93`](./contracts/ethereum-1/0x476eefef46e0d65e1e371fe093696259b1240b93/) | ⚠️ Unaudited |
| CCIPDVNAdapter | adapter | ethereum | [`0x771d10...3b9cbf`](./contracts/ethereum-1/0x771d10d0c86e26ea8d3b778ad4d31b30533b9cbf/) | ⚠️ Unaudited |
| ChainlinkOracleClient | operational_periphery | ethereum | [`0xc905e7...534688`](./contracts/ethereum-1/0xc905e74beb8229e258c3c6e5bc0d6cc54c534688/) | ⚠️ Unaudited |
| CommitStore | unknown | ethereum | 88 deployments: ethereum [`0x013467...5e9084`](./contracts/ethereum-1/0x01346721418045a6c07b71052e452ef8615e9084/); ethereum `0x0428df...b587de`; ethereum `0x0d26ba...052045`; ethereum `0x0f254e...a380d7`; ethereum `0x0f5552...2bbe75`; ethereum `0x0f89c7...c52959`; ethereum `0x10d561...945c75`; ethereum `0x118a93...6c6bfc`; ethereum `0x17f1ac...9166ba`; ethereum `0x180776...3f5633`; ethereum `0x1a3d58...e35a8d`; ethereum `0x1bddba...0533b9`; ethereum `0x20718e...411a6d`; ethereum `0x215a3a...861f0e`; ethereum `0x27a4e7...9926fb`; ethereum `0x2aa101...a007ce`; ethereum `0x2d1708...ba1c77`; ethereum `0x31f6ab...0a89ab`; ethereum `0x38a806...c43271`; ethereum `0x3cb2a8...56fc53`; ethereum `0x3d3467...23144c`; ethereum `0x3d8a95...b90466`; ethereum `0x3f1c35...4c4527`; ethereum `0x40c558...74417f`; ethereum `0x459154...f1e5d0`; ethereum `0x4af4b4...a79dc8`; ethereum `0x4b50cd...ee3282`; ethereum `0x52275d...01f694`; ethereum `0x53d196...c12b60`; ethereum `0x57117a...4e8787`; ethereum `0x57b548...3fb9b3`; ethereum `0x57d6cd...3dd114`; ethereum `0x5fd81c...2e15ff`; ethereum `0x607c09...8f128c`; ethereum `0x60f9b5...4b2c2a`; ethereum `0x67b972...a00b90`; ethereum `0x681827...703248`; ethereum `0x6c8b96...4bf4b9`; ethereum `0x6f4abc...c5bf75`; ethereum `0x6fe6f7...29d0a4`; ethereum `0x700b6a...794e02`; ethereum `0x70ac0f...27006a`; ethereum `0x762648...7f190e`; ethereum `0x7986c9...70a5fd`; ethereum `0x807dd6...799a04`; ethereum `0x831097...540c8f`; ethereum `0x83f3da...30250d`; ethereum `0x8705f7...646159`; ethereum `0x87c55d...793d75`; ethereum `0x8a1680...f8a2cf`; ethereum `0x8befca...dc11a0`; ethereum `0x8c3805...cf8555`; ethereum `0x8d846b...77b1ab`; ethereum `0x8dc27d...9bae04`; ethereum `0x8fc54e...e9e262`; ethereum `0x913a2a...ddc04b`; ethereum `0x95deb0...b82d64`; ethereum `0x98d0f8...a67ed9`; ethereum `0x9b2eed...1b7749`; ethereum `0x9b9ec8...83dcdb`; ethereum `0x9d93d5...794f8a`; ethereum `0x9f592c...d705cd`; ethereum `0xa4755c...110320`; ethereum `0xa48269...536d1c`; ethereum `0xa4d264...e3f194`; ethereum `0xa58818...3741b9`; ethereum `0xa9f9bf...a9a2b8`; ethereum `0xac0c6e...9cfd3e`; ethereum `0xaffa4f...643e46`; ethereum `0xbaf669...fc4cb7`; ethereum `0xc46890...56ad8d`; ethereum `0xc5164a...224f9f`; ethereum `0xd07926...d40235`; ethereum `0xd2428f...a6cd99`; ethereum `0xd37a60...beeb76`; ethereum `0xd8f93a...bff802`; ethereum `0xd9d3d9...c3da72`; ethereum `0xdac3a8...205ffe`; ethereum `0xdb156e...6e627c`; ethereum `0xdcf6f2...954110`; ethereum `0xe41677...7470a6`; ethereum `0xf19173...fd4793`; ethereum `0xf28f73...a6a62f`; ethereum `0xf7b343...e75ed3`; ethereum `0xf7d68c...bb8f02`; ethereum `0xfa94e5...7eb210`; ethereum `0xfacfe8...551fd6`; ethereum `0xfe73bc...fb0165` | ⚠️ Unaudited |
| CommunityTreasuryVotes | operational_periphery | ethereum | [`0xcb8b43...3b6905`](./contracts/ethereum-1/0xcb8b435481da1ed5abc895e03535ce0bba3b6905/) | ⚠️ Unaudited |
| ConduitController | governance | ethereum | [`0x000000...00ad63`](./contracts/ethereum-1/0x00000000f9490004c11cef243f5400493c00ad63/) | ⚠️ Unaudited |
| CreateX | unknown | ethereum | [`0xba5ed0...8ba5ed`](./contracts/ethereum-1/0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed/) | ⚠️ Unaudited |
| DeadDVN | unknown | ethereum | [`0x747c74...92f6ac`](./contracts/ethereum-1/0x747c741496a507e4b404b50463e691a8d692f6ac/) | ⚠️ Unaudited |
| DefaultEmissionManager | operational_periphery | ethereum | 4 deployments: ethereum [`0x152442...27fcb9`](./contracts/ethereum-1/0x152442d77e9fb9c210953d583cbb2da88027fcb9/); ethereum `0x282fd4...e6c2e0`; ethereum `0x46ce93...1faeb8`; ethereum `0x5e8752...70b422` | ⚠️ Unaudited |
| Delegation | unknown | ethereum | 2 deployments: ethereum [`0x8287f4...2e88f0`](./contracts/ethereum-1/0x8287f469726a95dede7cff1ea3b24a34a12e88f0/); ethereum `0xe6d3bd...27ac3b` | ⚠️ Unaudited |
| DelegationMigration | operational_periphery | ethereum | [`0x9d2a80...7ab639`](./contracts/ethereum-1/0x9d2a805227fbb433f7c05e98af505b04e07ab639/) | ⚠️ Unaudited |
| DepositManager | core_logic | ethereum | [`0xb00aa6...4a44fc`](./contracts/ethereum-1/0xb00aa68b87256e2f22058fb2ba3246eec54a44fc/) | ⚠️ Unaudited |
| DVN | unknown | ethereum | 2 deployments: ethereum [`0x589ded...94236b`](./contracts/ethereum-1/0x589dedbd617e0cbcb916a9223f4d1300c294236b/); ethereum `0x5d93bb...929334` | ⚠️ Unaudited |
| DVNFeeLib | unknown | ethereum | [`0xb3e790...bbf91b`](./contracts/ethereum-1/0xb3e790273f0a89e53d2c20dd4dfe82aa00bbf91b/) | ⚠️ Unaudited |
| Endpoint | operational_periphery | ethereum | [`0x66a71d...5cd675`](./contracts/ethereum-1/0x66a71dcef29a0ffbdbe3c6a460a3b5bc225cd675/) | ⚠️ Unaudited |
| EndpointV2View | operational_periphery | ethereum | 3 deployments: ethereum [`0x175bfe...92888f`](./contracts/ethereum-1/0x175bfec21a4949c339d1b9b621ad325d9892888f/); ethereum `0x8fafc8...c9ce0b`; ethereum `0xf82fa8...c4f667` | ⚠️ Unaudited |
| EntryPoint | unknown | ethereum | [`0x433708...5ff108`](./contracts/ethereum-1/0x4337084d9e255ff0702461cf8895ce9e3b5ff108/) | ⚠️ Unaudited |
| ERC20Predicate | token | ethereum | [`0x1f4c1e...9884f6`](./contracts/ethereum-1/0x1f4c1e0afbeb5b5b86d7722549274434b29884f6/) | ⚠️ Unaudited |
| ERC20PredicateBurnOnly | token | ethereum | [`0xe30779...02de80`](./contracts/ethereum-1/0xe307798ec35136320528b24d35c0bb086f02de80/) | ⚠️ Unaudited |
| ERC721PredicateBurnOnly | token | ethereum | [`0x031848...596447`](./contracts/ethereum-1/0x031848f9487219cc538c42dac150968f95596447/) | ⚠️ Unaudited |
| EVM2EVMOffRamp | unknown | ethereum | 87 deployments: ethereum [`0x0ab48c...c44554`](./contracts/ethereum-1/0x0ab48c500abd8392620c3c4e4fdd5d7063c44554/); ethereum `0x0af338...0ee395`; ethereum `0x0f1b1a...2e4ba2`; ethereum `0x109c66...dcd9fe`; ethereum `0x1a904d...ed7599`; ethereum `0x1c207d...b2d12c`; ethereum `0x26a101...340fc3`; ethereum `0x310fdc...f73189`; ethereum `0x330349...f65e61`; ethereum `0x332761...cb2b26`; ethereum `0x34eec7...24a604`; ethereum `0x38ad72...e24286`; ethereum `0x3a129e...91c6c5`; ethereum `0x3b45dd...75ef58`; ethereum `0x3c5990...4210c1`; ethereum `0x3c672f...8edc09`; ethereum `0x41627a...7fdab5`; ethereum `0x418dcb...79fbb4`; ethereum `0x467653...4cf214`; ethereum `0x49aac6...1f8edd`; ethereum `0x4bc602...225419`; ethereum `0x4e4003...1950d6`; ethereum `0x559c32...a5f48d`; ethereum `0x562a20...6d1d3b`; ethereum `0x569940...f75c17`; ethereum `0x5b6d29...5eaca5`; ethereum `0x5b859e...1da7ec`; ethereum `0x5e24de...8c559f`; ethereum `0x5eda68...97c3f4`; ethereum `0x61135e...fbaae4`; ethereum `0x64a5c6...88578b`; ethereum `0x66114e...4cf0c9`; ethereum `0x66d84f...8d7c12`; ethereum `0x6868fe...563d69`; ethereum `0x6b4b63...5a9ebd`; ethereum `0x70c705...49c2ec`; ethereum `0x7115f0...5ea175`; ethereum `0x718672...d704a3`; ethereum `0x720ea8...b6ff81`; ethereum `0x794ae3...a5ce96`; ethereum `0x7a82d2...23666d`; ethereum `0x7afe70...b9171c`; ethereum `0x7e4c90...91f656`; ethereum `0x82dae1...d3a0fc`; ethereum `0x8693cd...6580c1`; ethereum `0x8b3eee...5018b8`; ethereum `0x8efae6...91f3e2`; ethereum `0x8fee86...594b28`; ethereum `0x92fbcf...9da04f`; ethereum `0x9a3ed7...20528d`; ethereum `0x9cbba1...18a90e`; ethereum `0x9de971...711988`; ethereum `0x9f0e81...d55181`; ethereum `0xa627f2...f758f0`; ethereum `0xa77c14...dc8f3b`; ethereum `0xa8c12a...992a14`; ethereum `0xaa0da3...b1769b`; ethereum `0xae2a2a...c437f0`; ethereum `0xb09590...f20bf7`; ethereum `0xb0f5b6...ec414f`; ethereum `0xb368c8...d143bf`; ethereum `0xb45cf8...b8d977`; ethereum `0xb57d52...56dd8f`; ethereum `0xbdd822...93fe72`; ethereum `0xc0c8d7...ef120d`; ethereum `0xc1ecce...9a1bf2`; ethereum `0xc71766...33ee94`; ethereum `0xc876d5...482f9c`; ethereum `0xcdca3f...96d7e4`; ethereum `0xce6364...f702e8`; ethereum `0xd50836...4dfd46`; ethereum `0xd98e80...19bfbb`; ethereum `0xde6608...bc8079`; ethereum `0xde81f1...ea57ac`; ethereum `0xdf615e...245ac9`; ethereum `0xdf85c8...cddfb3`; ethereum `0xdfd8c3...b768a4`; ethereum `0xe79705...962162`; ethereum `0xe8af3b...f09b92`; ethereum `0xe93ec2...7d47d4`; ethereum `0xefc4a1...286f4d`; ethereum `0xf2eb4c...a8656a`; ethereum `0xf3ac96...d3b7f9`; ethereum `0xf4468e...1ea9ae`; ethereum `0xfb0422...e28783`; ethereum `0xfc92c3...f0f0a3`; ethereum `0xff51c0...09cd24` | ⚠️ Unaudited |
| EVM2EVMOnRamp | unknown | ethereum | 94 deployments: ethereum [`0x03cb4c...b834d9`](./contracts/ethereum-1/0x03cb4c67d01a78f44289541281e57c33e6b834d9/); ethereum `0x0826b8...83d41b`; ethereum `0x08c798...95672d`; ethereum `0x093844...8cad63`; ethereum `0x0f27c8...d04b3c`; ethereum `0x15a9d7...a7149c`; ethereum `0x1b9605...7a195d`; ethereum `0x1d01e4...a7ef81`; ethereum `0x1fa3af...45f06b`; ethereum `0x20fd5a...b64432`; ethereum `0x266e52...717b8f`; ethereum `0x31ee10...2f8d37`; ethereum `0x333f97...f6264e`; ethereum `0x33417f...3691a4`; ethereum `0x3455d8...7b07bf`; ethereum `0x34748f...cb4094`; ethereum `0x35f0ca...5f1b8b`; ethereum `0x362a22...ba8187`; ethereum `0x3ac0d8...a8c6b1`; ethereum `0x3df8da...9dd630`; ethereum `0x4109d2...64d5b0`; ethereum `0x4545f9...9cbd27`; ethereum `0x466a07...4c9b65`; ethereum `0x486170...f2c44c`; ethereum `0x48f836...e21980`; ethereum `0x4cc3d9...5702c0`; ethereum `0x4fb540...8b05c5`; ethereum `0x4fdaad...595d6a`; ethereum `0x522f82...150fff`; ethereum `0x551390...5e6808`; ethereum `0x5739e5...2025e0`; ethereum `0x58821e...0949f1`; ethereum `0x5e7397...587e04`; ethereum `0x5f6e77...16eb3e`; ethereum `0x608d23...4ab9fa`; ethereum `0x61b4b8...3148a5`; ethereum `0x626189...1f78e9`; ethereum `0x62bfc5...9e0fbf`; ethereum `0x6715ea...4a6b49`; ethereum `0x6751ca...db4e36`; ethereum `0x69ecc4...f2c284`; ethereum `0x70b2b3...bca65d`; ethereum `0x741599...8e9f90`; ethereum `0x74cb66...e77931`; ethereum `0x75d536...49b84e`; ethereum `0x7b78f8...180a2b`; ethereum `0x7c32c6...e18bb2`; ethereum `0x7d7c49...2557b3`; ethereum `0x8469b5...a7d0df`; ethereum `0x86768e...c8d486`; ethereum `0x86b47d...5549d1`; ethereum `0x8b858e...f117ec`; ethereum `0x91d25a...ebfa69`; ethereum `0x925228...44a22c`; ethereum `0x948306...0b480d`; ethereum `0x9557b1...9aa1e0`; ethereum `0x992470...9946e7`; ethereum `0x9b14ae...8a365b`; ethereum `0x9cb0ff...9747d3`; ethereum `0xa32f81...0ebe94`; ethereum `0xa5ef33...8264ac`; ethereum `0xa6d806...8ccb48`; ethereum `0xab6066...4a10d0`; ethereum `0xafd31c...249d8a`; ethereum `0xb8a882...431937`; ethereum `0xba1aa2...653332`; ethereum `0xbeffef...886c42`; ethereum `0xc46e2f...4abf88`; ethereum `0xc5dbe2...ca3fc2`; ethereum `0xcaea22...d4b133`; ethereum `0xcb18b1...4be4c8`; ethereum `0xcbe7e5...a4e2c4`; ethereum `0xcc19bc...7780b0`; ethereum `0xccf971...f3672b`; ethereum `0xd0b5fc...282cf2`; ethereum `0xd1cc3a...cb2ac3`; ethereum `0xd54c93...95a89f`; ethereum `0xd8e872...b2e252`; ethereum `0xdaa386...016819`; ethereum `0xdb6ebb...4f19b6`; ethereum `0xdc5b57...b50844`; ethereum `0xddf4b4...0d234b`; ethereum `0xdefead...6423cc`; ethereum `0xdf1d7f...9f3b24`; ethereum `0xe2c2ab...4dadf7`; ethereum `0xe2eb22...60fe73`; ethereum `0xea6d4a...086f82`; ethereum `0xed5be9...2e3cfa`; ethereum `0xeee2ae...34a8e2`; ethereum `0xf50b9a...30f6f0`; ethereum `0xf538da...58cfd4`; ethereum `0xff31c8...a872db`; ethereum `0xffbd6b...2aa389`; ethereum `0xffbec4...bc4330` | ⚠️ Unaudited |
| Executor | unknown | ethereum | 2 deployments: ethereum [`0x173272...453059`](./contracts/ethereum-1/0x173272739bd7aa6e4e214714048a9fe699453059/); ethereum `0xfe9ab7...5c9805` | ⚠️ Unaudited |
| FPValidator | unknown | ethereum | [`0x07245e...e4df89`](./contracts/ethereum-1/0x07245eea05826f5984c7c3c8f478b04892e4df89/) | ⚠️ Unaudited |
| GasSwapper | adapter | ethereum | 2 deployments: ethereum [`0x4ccd4c...59c17a`](./contracts/ethereum-1/0x4ccd4cbde5ec758ccbf75f0be280647ff359c17a/); ethereum `0xfaea28...66f3e3` | ⚠️ Unaudited |
| GenericVaultBridgeToken | operational_periphery | ethereum | 5 deployments: ethereum [`0x2c24b5...32374f`](./contracts/ethereum-1/0x2c24b57e2ccd1f273045af6a5f632504c432374f/); ethereum `0x3dd459...8c4855`; ethereum `0x53e82a...7a765e`; ethereum `0x6d4f9f...9845cc`; ethereum `0xcc865b...fd6f29` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0x69f4d1...6e2938`](./contracts/ethereum-1/0x69f4d1788e39c87893c980c06edf4b7f686e2938/) | ⚠️ Unaudited |
| KATOFTUpgradeable | unknown | ethereum | 4 deployments: ethereum [`0x8f051c...ab8f91`](./contracts/ethereum-1/0x8f051ca72a3440d83b18e71c3e59676203ab8f91/); ethereum `0xd53903...d1e3da`; base `0xd53903...d1e3da`; base `0xeb8f92...a0275f` | ⚠️ Unaudited |
| LayerZeroOracleMock | operational_periphery | ethereum | [`0x980205...3ec981`](./contracts/ethereum-1/0x980205d352f198748b626f6f7c38a8a5663ec981/) | ⚠️ Unaudited |
| LayerZeroTellerWithRateLimiting | core_logic | ethereum | [`0x739a1e...fd8d16`](./contracts/ethereum-1/0x739a1effaddb0b07ef1284598819232df4fd8d16/) | ⚠️ Unaudited |
| LayerZeroTokenMock | token | ethereum | [`0xfe7c30...d3a098`](./contracts/ethereum-1/0xfe7c30860d01e28371d40434806f4a8fcdd3a098/) | ⚠️ Unaudited |
| LockReleaseTokenPoolAndProxy | core_logic | ethereum | 33 deployments: ethereum [`0x0d7368...521fc0`](./contracts/ethereum-1/0x0d736853812a12f085de867adf4ea4aba9521fc0/); ethereum `0x2ccd6b...52b0f6`; ethereum `0x2e3c68...b10f73`; ethereum `0x399949...a3e576`; ethereum `0x45af36...4f8aa3`; ethereum `0x4913fd...e1f196`; ethereum `0x4e6300...371ed0`; ethereum `0x542bf6...95be84`; ethereum `0x5c1667...c57a59`; ethereum `0x61d405...7ef92f`; ethereum `0x6a888f...31480b`; ethereum `0x75a852...0d9799`; ethereum `0x79bc41...721d49`; ethereum `0x89c903...9a6d04`; ethereum `0x8e7ebb...3bcaea`; ethereum `0x9b8fef...db0dcc`; ethereum `0x9c7922...8fe192`; ethereum `0x9e72f9...8c75a0`; ethereum `0x9ec9f9...ec50f0`; ethereum `0xa27501...a5bbbd`; ethereum `0xa7689c...3a660f`; ethereum `0xac3453...5bf95b`; ethereum `0xafcc99...0bdd1d`; ethereum `0xbdcc99...0218b7`; ethereum `0xbfc86c...e63351`; ethereum `0xc2ef2f...379979`; ethereum `0xc55d7b...c01b79`; ethereum `0xe31009...291739`; ethereum `0xe48320...8ae86f`; ethereum `0xe742e9...c5810e`; ethereum `0xead31b...26461d`; ethereum `0xf57fc1...9ee89a`; ethereum `0xf6c88f...c11b99` | ⚠️ Unaudited |
| LzExecutor | unknown | ethereum | [`0xc4a313...0a9a12`](./contracts/ethereum-1/0xc4a3139d4afd941f56a0b878eb4906b3d20a9a12/) | ⚠️ Unaudited |
| ManagerWithMerkleVerification | operational_periphery | ethereum | [`0x51cdec...84bfeb`](./contracts/ethereum-1/0x51cdecc111c21bed72ab99f415bab6d35984bfeb/) | ⚠️ Unaudited |
| MigrationManager | operational_periphery | ethereum | 2 deployments: ethereum [`0x417d01...689e02`](./contracts/ethereum-1/0x417d01b64ea30c4e163873f3a1f77b727c689e02/); ethereum `0xc6dd63...d30e45` | ⚠️ Unaudited |
| MPTValidatorV2 | unknown | ethereum | [`0xe9ae26...e07b2d`](./contracts/ethereum-1/0xe9ae261d3aff7d3fccf38fa2d612dd3897e07b2d/) | ⚠️ Unaudited |
| MPTValidatorV4 | unknown | ethereum | [`0x4b4ca2...abefb2`](./contracts/ethereum-1/0x4b4ca2f2ad3a5464cc8c01ece76c2951f3abefb2/) | ⚠️ Unaudited |
| MPTValidatorV5 | unknown | ethereum | [`0xe04f26...08e832`](./contracts/ethereum-1/0xe04f26f3f47b6054aeb15796ac4af3c61f08e832/) | ⚠️ Unaudited |
| Multicall3 | periphery | ethereum | [`0xca11bd...76ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| MultiSend | unknown | ethereum | [`0x998739...8f9eda`](./contracts/ethereum-1/0x998739bfdaadde7c933b942a68053933098f9eda/) | ⚠️ Unaudited |
| MyOVaultComposer | core_logic | ethereum | [`0x7b6dd0...2566e9`](./contracts/ethereum-1/0x7b6dd022e7ed1dabcf0c3537f710eb5c8f2566e9/) | ⚠️ Unaudited |
| NativeLBTC | unknown | ethereum | [`0xb0f70c...817072`](./contracts/ethereum-1/0xb0f70c0bd6fd87dbeb7c10dc692a2a6106817072/) | ⚠️ Unaudited |
| NonceContractRadar | unknown | ethereum | [`0x087ceb...384e2e`](./contracts/ethereum-1/0x087cebbd85a161a50f91b9d7743e8b89fc384e2e/) | ⚠️ Unaudited |
| NonDefaultOftAdapter | adapter | ethereum | 20 deployments: ethereum [`0x0d8745...d8f874`](./contracts/ethereum-1/0x0d8745a84259ab5a38e89d5cb4db642003d8f874/); ethereum `0x1e283d...ed0bba`; ethereum `0x4224f6...e51d36`; ethereum `0x4690f3...5b985e`; ethereum `0x4ed3c8...9881e1`; ethereum `0x519fbc...2a462a`; ethereum `0x667efc...a7cd81`; ethereum `0x694d16...cab683`; ethereum `0x807275...d293c0`; ethereum `0x8169e5...520dfc`; ethereum `0x839dc0...95ab82`; ethereum `0x8d09c4...c131d4`; ethereum `0x8f45f7...ff949b`; ethereum `0x93ed06...9a7f24`; ethereum `0xad132b...bb050a`; ethereum `0xb42ab6...621665`; ethereum `0xb5bada...957bb3`; ethereum `0xd28d73...e84092`; ethereum `0xd9e705...62d0c3`; ethereum `0xe5971a...76cf4a` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | 2 deployments: ethereum [`0x5decbe...61ce8a`](./contracts/ethereum-1/0x5decbeeefecc5353355cd79a8fecc4c03f61ce8a/); ethereum `0xa7a8e4...14dc0a` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | ethereum | 13 deployments: ethereum [`0x16cc4e...170347`](./contracts/ethereum-1/0x16cc4ef7c128d7fea96cf46ffd9dd20f76170347/); ethereum `0x26bc65...e0e61e`; ethereum `0x3ec70c...7fc7d1`; ethereum `0x5ac73e...323487`; ethereum `0x60adff...c2962c`; ethereum `0x6bd792...d22c70`; ethereum `0x902f09...98089e`; ethereum `0x9c9e25...4fbd95`; ethereum `0xbf2e10...951320`; ethereum `0xc03f31...a91113`; ethereum `0xc3ce54...58c6b4`; ethereum `0xcb566e...e1aaaa`; ethereum `0xcc0de8...6fd346` | ⚠️ Unaudited |
| Pauser | unknown | ethereum | [`0xe50a6c...282c74`](./contracts/ethereum-1/0xe50a6c887c18c5541d8cf311825016fbbb282c74/) | ⚠️ Unaudited |
| Permit2 | unknown | ethereum | [`0x000000...c78ba3`](./contracts/ethereum-1/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| PolygonMigration | operational_periphery | ethereum | [`0xb03734...9d9231`](./contracts/ethereum-1/0xb037347ef306db3b41ab0b250f891887039d9231/) | ⚠️ Unaudited |
| PriceFeed | operational_periphery | ethereum | [`0xb26ac1...29090c`](./contracts/ethereum-1/0xb26ac124db9439edb7de503ef62e3d3d4e29090c/) | ⚠️ Unaudited |
| PriceRegistry | operational_periphery | ethereum | 4 deployments: ethereum [`0x020082...a81985`](./contracts/ethereum-1/0x020082a7a9c2510e1921116001152dee4da81985/); ethereum `0x8c9b2e...b958ad`; ethereum `0xdafe69...b9b03d`; ethereum `0xed1a8c...d2d4f5` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 10 deployments: ethereum [`0x271689...25ddd3`](./contracts/ethereum-1/0x27168981aa1c0b6ce941babcf3579887ec25ddd3/); ethereum `0x566513...f6ef5e`; ethereum `0x87d8ee...c2357b`; ethereum `0x890636...b8a1fb`; ethereum `0x96ed42...e3e763`; ethereum `0xa36797...c25ee3`; ethereum `0xa65874...d161d9`; ethereum `0xeb8f92...a0275f`; ethereum `0xedb24c...711e63`; base `0x890636...b8a1fb` | ⚠️ Unaudited |
| ProxyMock | unknown | ethereum | [`0xecac9c...5c11c1`](./contracts/ethereum-1/0xecac9c5f704e954931349da37f60e39f515c11c1/) | ⚠️ Unaudited |
| ReadLib1002 | unknown | ethereum | [`0x74f55b...9fdb9d`](./contracts/ethereum-1/0x74f55bc2a79a27a0bf1d1a35db5d0fc36b9fdb9d/) | ⚠️ Unaudited |
| ReceiveUln301 | unknown | ethereum | [`0x245b6e...23eefc`](./contracts/ethereum-1/0x245b6e8ffe9ea5fc301e32d16f66bd4c2123eefc/) | ⚠️ Unaudited |
| ReceiveUln301View | unknown | ethereum | 2 deployments: ethereum [`0x0330f9...acb1e0`](./contracts/ethereum-1/0x0330f95a5110e9f72fe0776a1291834ffeacb1e0/); ethereum `0xe64ae0...73e321` | ⚠️ Unaudited |
| ReceiveUln302 | unknown | ethereum | [`0xc02ab4...6024c2`](./contracts/ethereum-1/0xc02ab410f0734efa3f14628780e6e695156024c2/) | ⚠️ Unaudited |
| ReceiveUln302View | unknown | ethereum | [`0xf6c8bd...18c46d`](./contracts/ethereum-1/0xf6c8bd9229b908dbc54fd5eab7dbca037b18c46d/) | ⚠️ Unaudited |
| RedSnwapper | unknown | ethereum | [`0xac4c6e...f80b75`](./contracts/ethereum-1/0xac4c6e212a361c968f1725b4d055b47e63f80b75/) | ⚠️ Unaudited |
| RegistryModuleOwnerCustom | registry | ethereum | [`0x13022e...b2e533`](./contracts/ethereum-1/0x13022e3e6c77524308bd56aed716e88311b2e533/) | ⚠️ Unaudited |
| Relayer | unknown | ethereum | [`0x153fb4...eb12d4`](./contracts/ethereum-1/0x153fb4738c2698bbdbf256d0fc90f5503eeb12d4/) | ⚠️ Unaudited |
| RelayerV2 | unknown | ethereum | [`0xdd55f5...be306a`](./contracts/ethereum-1/0xdd55f55cb9a39ef1eed4ee1a84ee1b7411be306a/) | ⚠️ Unaudited |
| RelayerV2Radar | unknown | ethereum | [`0x61ab01...39d849`](./contracts/ethereum-1/0x61ab01ce58d1dff3562bb25870020d555e39d849/) | ⚠️ Unaudited |
| RewardExtractor | unknown | ethereum | [`0x3715d2...cecbc6`](./contracts/ethereum-1/0x3715d25c56126fb1bc57e37bf5a017ffb6cecbc6/) | ⚠️ Unaudited |
| RMN | unknown | ethereum | 2 deployments: ethereum [`0x2c1c02...4948f3`](./contracts/ethereum-1/0x2c1c028aa39db7324a2d11333315efbea84948f3/); ethereum `0xdcd484...adf84f` | ⚠️ Unaudited |
| RolesAuthority | governance | ethereum | [`0x1645e0...315cf7`](./contracts/ethereum-1/0x1645e0cc24595fab37916a3d57bc51dff0315cf7/) | ⚠️ Unaudited |
| RootChainManager | governance | ethereum | 2 deployments: ethereum [`0x639f13...3c77de`](./contracts/ethereum-1/0x639f13d5f30b47c792b6851238c05d0b623c77de/); ethereum `0xf0235d...d62dfa` | ⚠️ Unaudited |
| Router | adapter | ethereum | 4 deployments: ethereum [`0x7fb589...fde90b`](./contracts/ethereum-1/0x7fb5895cbcb3264dc7984e8f61037f5d37fde90b/); ethereum `0x80226f...146f7d`; ethereum `0x8c6d31...81ed46`; ethereum `0xe561d5...9a1476` | ⚠️ Unaudited |
| Seaport | unknown | ethereum | [`0x000000...3eb395`](./contracts/ethereum-1/0x0000000000000068f116a894984e2db1123eb395/) | ⚠️ Unaudited |
| SenderCreator | unknown | ethereum | [`0x449ed7...4add33`](./contracts/ethereum-1/0x449ed7c3e6fee6a97311d4b55475df59c44add33/) | ⚠️ Unaudited |
| SendUln301 | unknown | ethereum | [`0xd23108...daf705`](./contracts/ethereum-1/0xd231084bfb234c107d3ee2b22f97f3346fdaf705/) | ⚠️ Unaudited |
| SendUln302 | unknown | ethereum | [`0xbb2ea7...72dce1`](./contracts/ethereum-1/0xbb2ea70c9e858123480642cf96acbcce1372dce1/) | ⚠️ Unaudited |
| SingletonFactory | registry | ethereum | [`0xce0042...fdcf9f`](./contracts/ethereum-1/0xce0042b868300000d44a59004da54a005ffdcf9f/) | ⚠️ Unaudited |
| StakeManager | governance | ethereum | 2 deployments: ethereum [`0x3ad884...d9076c`](./contracts/ethereum-1/0x3ad88467e40399dc6ae10427f8b0842348d9076c/); ethereum `0x97a350...2c389f` | ⚠️ Unaudited |
| TokenAdminRegistry | registry | ethereum | [`0xb22764...c05cb6`](./contracts/ethereum-1/0xb22764f98dd05c789929716d677382df22c05cb6/) | ⚠️ Unaudited |
| TokenBridge | operational_periphery | ethereum | [`0x50002c...1cd907`](./contracts/ethereum-1/0x50002cdfe7ccb0c41f519c6eb0653158d11cd907/) | ⚠️ Unaudited |
| Treasury | operational_periphery | ethereum | 2 deployments: ethereum [`0x5ebb3f...e73056`](./contracts/ethereum-1/0x5ebb3f2feaa15271101a927869b3a56837e73056/); ethereum `0x94fe59...867a9b` | ⚠️ Unaudited |
| TreasuryFeeHandler | operational_periphery | ethereum | [`0xe20403...6fc6d2`](./contracts/ethereum-1/0xe20403867780129b9b5be8da9a84511b406fc6d2/) | ⚠️ Unaudited |
| TreasuryV2Radar | operational_periphery | ethereum | [`0xdcc1a1...994068`](./contracts/ethereum-1/0xdcc1a1a26807c687300a63a72ef111f6fe994068/) | ⚠️ Unaudited |
| UltraLightNode | unknown | ethereum | [`0x5b19bd...a18c1c`](./contracts/ethereum-1/0x5b19bd330a84c049b62d5b0fc2ba120217a18c1c/) | ⚠️ Unaudited |
| UltraLightNodeV2Radar | unknown | ethereum | [`0xbe4fb2...9fc220`](./contracts/ethereum-1/0xbe4fb271cfb7bcbb47ea9573321c7bfe309fc220/) | ⚠️ Unaudited |
| USDCTokenPool | core_logic | ethereum | 2 deployments: ethereum [`0x4a580c...0df59d`](./contracts/ethereum-1/0x4a580c62889ddcd6c2213582270e03ca130df59d/); ethereum `0xa81f4a...0fefda` | ⚠️ Unaudited |
| ValidatorShare | unknown | ethereum | 3 deployments: ethereum [`0x053fa9...0bb462`](./contracts/ethereum-1/0x053fa9b934b83e1e0ffc7e98a41aadc3640bb462/); ethereum `0x7e94d6...8cc67b`; ethereum `0xfb3a3a...58d797` | ⚠️ Unaudited |
| VaultBridgeTokenInitializer | operational_periphery | ethereum | [`0xb2ec4d...3945f5`](./contracts/ethereum-1/0xb2ec4d99c82417257f41b2c8ceda0962c03945f5/) | ⚠️ Unaudited |
| VaultBridgeTokenPart2 | operational_periphery | ethereum | [`0x1c8565...298e80`](./contracts/ethereum-1/0x1c8565f454f8239b854fe62c99b90b3fc9298e80/) | ⚠️ Unaudited |
| VbETH | unknown | ethereum | 2 deployments: ethereum [`0x2dc70f...c34dff`](./contracts/ethereum-1/0x2dc70fb75b88d2eb4715bc06e1595e6d97c34dff/); ethereum `0x81c16f...9d525e` | ⚠️ Unaudited |
| Vote | unknown | ethereum | 3 deployments: ethereum [`0x4e9ae4...938227`](./contracts/ethereum-1/0x4e9ae452290570834c978edf9b3febbcd4938227/); ethereum `0xd87129...9859c0`; ethereum `0xe84c69...e1ee83` | ⚠️ Unaudited |
| WithdrawManager | operational_periphery | ethereum | 2 deployments: ethereum [`0x6f8a42...a35168`](./contracts/ethereum-1/0x6f8a42cf6f3ce657b66a9d5849f1251de7a35168/); ethereum `0xff2331...73bc9c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| GIN | unknown | ethereum | 2 deployments: ethereum [`0x38de71...491251`](./contracts/ethereum-1/0x38de71124f7a447a01d67945a51edce9ff491251/); ethereum `0xc5fd95...b0c05d` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (68)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x000f3d...beac02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x021078...703679` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x03af67...362daf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0ab536...57ad21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0f04f5...7d20ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0f2bfa...c83127` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x13dff8...9fdd92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x181314...4cd838` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x19044c...0274da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1ab914...6665ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1ace9d...159df5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1c3f27...c06eaf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1d2af2...ce158c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1e45f2...279c85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2d61dc...529aaa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x319ae5...d8f627` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x37152c...f1c564` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3b01de...f1eab9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3ced11...98c14c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3ef366...ba6552` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x40f20d...62de26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x442896...fcedc5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4474b8...232dd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x47b3c4...e2e116` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4a59d3...0d321c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4b440d...505b67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4e341b...14c260` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4e9c57...fb9ed0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4f8b7a...904c15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x51e64b...664fae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x556979...ee0c2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5aa71f...4ddd03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x614f72...84261c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6f4756...48dd5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x76a15d...fe00a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8775e9...491027` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x901de2...9106b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9512a8...231874` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9bfac7...ef3ba5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa70136...c96d3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaf3477...913d9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb006a3...5d33cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb25156...fb4577` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb360a5...9c428d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb830a5...0a592f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc14e40...e3e359` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc1b15d...dacb36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc55332...4958b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xccb2d2...a2e6f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcff08a...3def77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd4c956...740bf0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdac2d2...da4232` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdb2fff...7085ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe01f3c...28976b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe5862a...521a7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe59b5b...a8e5a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe85e8d...88c99b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe93cfa...3824cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe94b16...48c595` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe9e353...7fbb3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xed0add...0e1fbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf1e3d7...1f2824` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf641db...63a141` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf9301b...a4c8e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfa6f20...b3e759` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfa9061...76c1a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfe0b8e...3938fe` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [cantina.pdf](https://github.com/succinctlabs/sp1/blob/dev/audits/cantina.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [code4rena.pdf](https://github.com/succinctlabs/sp1/blob/dev/audits/code4rena.pdf) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [hypercube-zellic.pdf](https://github.com/succinctlabs/sp1/blob/dev/audits/hypercube-zellic.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [kalos.md](https://github.com/succinctlabs/sp1/blob/dev/audits/kalos.md) | Kalos | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [rkm0959.md](https://github.com/succinctlabs/sp1/blob/dev/audits/rkm0959.md) | rkm0959 | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [sp1-v4.md](https://github.com/succinctlabs/sp1/blob/dev/audits/sp1-v4.md) | Unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [veridise.pdf](https://github.com/succinctlabs/sp1/blob/dev/audits/veridise.pdf) | Veridise | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [zellic.pdf](https://github.com/succinctlabs/sp1/blob/dev/audits/zellic.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2024-06_pessimistic-proofs_d9d33885b6_trail-of-bits_audit.pdf](https://github.com/agglayer/agglayer/blob/main/docs/audits/2024-06_pessimistic-proofs_d9d33885b6_trail-of-bits_audit.pdf) | Trail of Bits | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [2024-06_pessimistic-proofs_d9d33885b6_trail-of-bits_response.pdf](https://github.com/agglayer/agglayer/blob/main/docs/audits/2024-06_pessimistic-proofs_d9d33885b6_trail-of-bits_response.pdf) | Trail of Bits | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [2024-12_aggregation-layer_d9d33885b6_sigma-prime_audit.pdf](https://github.com/agglayer/agglayer/blob/main/docs/audits/2024-12_aggregation-layer_d9d33885b6_sigma-prime_audit.pdf) | Sigma Prime | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [2025-04_aggregation-layer_d7b3dd1c28_sigma-prime_audit-part-1.pdf](https://github.com/agglayer/agglayer/blob/main/docs/audits/2025-04_aggregation-layer_d7b3dd1c28_sigma-prime_audit-part-1.pdf) | Sigma Prime | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [2025-04_aggregation-layer_f084ad78b6_sigma-prime_audit-part-2.pdf](https://github.com/agglayer/agglayer/blob/main/docs/audits/2025-04_aggregation-layer_f084ad78b6_sigma-prime_audit-part-2.pdf) | Sigma Prime | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [2025-07_aggregation-layer_d7b3dd1_sigma-prime_audit-part-1.pdf](https://github.com/agglayer/agglayer/blob/main/docs/audits/2025-07_aggregation-layer_d7b3dd1_sigma-prime_audit-part-1.pdf) | Sigma Prime | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [2025-07_aggregation_layer_f084ad7_sigma-prime_audit-part-2.pdf](https://github.com/agglayer/agglayer/blob/main/docs/audits/2025-07_aggregation_layer_f084ad7_sigma-prime_audit-part-2.pdf) | Sigma Prime | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [2025-07_aggregation_layer_f084ad7_sigma-prime_response.pdf](https://github.com/agglayer/agglayer/blob/main/docs/audits/2025-07_aggregation_layer_f084ad7_sigma-prime_response.pdf) | Sigma Prime | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Hexens_Polygon_zkEVM_PUBLIC_27.02.23.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Hexens_Polygon_zkEVM_PUBLIC_27.02.23.pdf) | Hexens | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Sigma Prime - Polygon - LXLY Banana - Security Assessment Report - 2.0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma%20Prime%20-%20Polygon%20-%20LXLY%20Banana%20-%20Security%20Assessment%20Report%20-%202.0.pdf) | Sigma Prime | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Polygon_AggLayer_v0.3.0_Smart_Contract_Updates_Security_Assessment_Report_v2_1.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_AggLayer_v0.3.0_Smart_Contract_Updates_Security_Assessment_Report_v2_1.pdf) | Sigma Prime | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Polygon_AggOracleCommittee_Contract_Security_Assessment_Report_v2_0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_AggOracleCommittee_Contract_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Polygon_Agglayer_Contracts_v0_3_5_Security_Assessment_Report_v2_0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_Agglayer_Contracts_v0_3_5_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf) | Sigma Prime | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Polygon_LXLY_Sovereign_Chains_Security_Assessment_Report_v2_0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_LXLY_Sovereign_Chains_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Polygon_PR_478_Changes_Security_Assessment_Report_v2_0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_PR_478_Changes_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Polygon_Polygon_LXLY_UpgradeableWrappedTokens_Security_Assessment_Report_v2_0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_Polygon_LXLY_UpgradeableWrappedTokens_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Spearbits-full-agglayer-v0.3.0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Spearbits-full-agglayer-v0.3.0.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [zkEVM-bridge-Spearbit-27-March.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/zkEVM-bridge-Spearbit-27-March.pdf) | Spearbit | Audit | 2023 | stale | Direct | n/a | 0 | n/a |
| [Polygon-Certora (Kat Token) Final report.pdf](https://github.com/katana-network/kat-token/blob/main/audit/Polygon-Certora%20(Kat%20Token)%20Final%20report.pdf) | Polygon-Certora | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 5 |
| standard_library | 2 |
| needs_review | 167 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 28
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [1919] cantina.pdf
- [1920] code4rena.pdf
- [1921] hypercube-zellic.pdf
- [1922] kalos.md
- [1923] rkm0959.md
- [1924] sp1-v4.md
- [1925] veridise.pdf
- [1926] zellic.pdf
- [1927] 2024-06_pessimistic-proofs_d9d33885b6_trail-of-bits_audit.pdf
- [1928] 2024-06_pessimistic-proofs_d9d33885b6_trail-of-bits_response.pdf
- [1929] 2024-12_aggregation-layer_d9d33885b6_sigma-prime_audit.pdf
- [1930] 2025-04_aggregation-layer_d7b3dd1c28_sigma-prime_audit-part-1.pdf
- [1931] 2025-04_aggregation-layer_f084ad78b6_sigma-prime_audit-part-2.pdf
- [1932] 2025-07_aggregation-layer_d7b3dd1_sigma-prime_audit-part-1.pdf
- [1933] 2025-07_aggregation_layer_f084ad7_sigma-prime_audit-part-2.pdf
- [1934] 2025-07_aggregation_layer_f084ad7_sigma-prime_response.pdf
- [1935] Hexens_Polygon_zkEVM_PUBLIC_27.02.23.pdf
- [1936] Sigma Prime - Polygon - LXLY Banana - Security Assessment Report - 2.0.pdf
- [1937] Sigma_Prime_Polygon_AggLayer_v0.3.0_Smart_Contract_Updates_Security_Assessment_Report_v2_1.pdf
- [1938] Sigma_Prime_Polygon_AggOracleCommittee_Contract_Security_Assessment_Report_v2_0.pdf
- [1939] Sigma_Prime_Polygon_Agglayer_Contracts_v0_3_5_Security_Assessment_Report_v2_0.pdf
- [1940] Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf
- [1941] Sigma_Prime_Polygon_LXLY_Sovereign_Chains_Security_Assessment_Report_v2_0.pdf
- [1942] Sigma_Prime_Polygon_PR_478_Changes_Security_Assessment_Report_v2_0.pdf
- [1943] Sigma_Prime_Polygon_Polygon_LXLY_UpgradeableWrappedTokens_Security_Assessment_Report_v2_0.pdf
- [1944] Spearbits-full-agglayer-v0.3.0.pdf
- [1945] zkEVM-bridge-Spearbit-27-March.pdf
- [1946] Polygon-Certora (Kat Token) Final report.pdf

Fork inheritance lineage and inherited audits are included when available.
