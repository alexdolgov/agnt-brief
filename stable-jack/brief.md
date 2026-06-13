# Agentic Audit Brief: Stable Jack

## Project Overview

- Project: Stable Jack (`stable-jack`)
- Website: [https://www.stablejack.xyz](https://www.stablejack.xyz)
- Lifecycle: active (Tier 0, 85.7% below peak)
- Generated: 2026-06-13T19:25:51.426Z
- Pipeline run: v2-pipeline-2026-06-13-e4a349-a865
- Chains: avalanche, sonic
- Contract surface: 249 unique implementations (368 raw deployments)
- DeFi Llama TVL: $1,230,578.00
- On-chain TVL (included contracts): $76,851,427.99
- TVL by chain: Avalanche $76,829,444.38 | Sonic $21,983.60

## Project Description

Stable Jack is a DeFi protocol focused on markets for trading yield, volatility, and points to help users increase or manage exposure to assets. Its observed on-chain components include vault, wrapper, and staking-token contracts, but these should be treated as implementation infrastructure rather than the full product identity.

### Architecture

Stable Jack V2 builds upon V1 by introducing more sophisticated token wrappers and vaults, while V1 contracts remain as legacy infrastructure. Both families share proxy patterns and likely interact with common oracles and registries, though V2's core contracts (e.g., BoringVault) are distinct from V1's bridged token.

## Audit Coverage Summary

- Verified implementations audited: 0/32 (0.0%)
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 1
- Unverified implementations: 217
- Unique implementations: 249
- Raw deployments: 368
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $76,851,427.99
- Latest audit: 2024-06 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StakedAvUSDV2 | token | avalanche | [`0x06d47f...72219e`](./contracts/avalanche-43114/0x06d47f3fb376649c3a9dafe069b3d6e35572219e/) | ⚠️ Unaudited |
| OSVault | core_logic | sonic | [`0xa3c0ec...180186`](./contracts/sonic-146/0xa3c0eca00d2b76b4d1f170b0ab3fdea16c180186/) | ⚠️ Unaudited |
| TokenWrapper | token | sonic | 2 deployments: sonic [`0xb27f55...3e3c8f`](./contracts/sonic-146/0xb27f555175e67783ba16f11de3168f87693e3c8f/); sonic `0xf41ecd...86ba4c` | ⚠️ Unaudited |
| AirdropDistributor | operational_periphery | sonic | 2 deployments: sonic [`0x244c88...05a831`](./contracts/sonic-146/0x244c88a7f5e11b092acd29f0033972d05e05a831/); sonic `0xc49182...9c124c` | ⚠️ Unaudited |
| AirdropReclaimer | operational_periphery | sonic | [`0x5db8d9...5d261a`](./contracts/sonic-146/0x5db8d98ed02a3b8c2781ab0b80f00cd2b75d261a/) | ⚠️ Unaudited |
| BoringVault | core_logic | avalanche | [`0xdf788a...f52f67`](./contracts/avalanche-43114/0xdf788ad40181894da035b827cdf55c523bf52f67/) | ⚠️ Unaudited |
| DistributionSwapper | adapter | sonic | 18 deployments: sonic [`0x05d61a...bfee01`](./contracts/sonic-146/0x05d61aca7111e177ca0a03e7145f342494bfee01/); sonic `0x14cedd...227230`; sonic `0x1bc06e...d86e52`; sonic `0x324a04...64527c`; sonic `0x3692b1...28d3a6`; sonic `0x3a15cc...4b53eb`; sonic `0x4cba4a...c338fd`; sonic `0x4ce11a...e7fb29`; sonic `0x58d02d...df52b2`; sonic `0x61b9bf...54dd5b`; sonic `0x633ff2...7b3b83`; sonic `0x67e199...24875d`; sonic `0x7f8a67...da3743`; sonic `0x9a7d08...19cf7b`; sonic `0xa55d93...891248`; sonic `0xa9d889...b67eb3`; sonic `0xb8c5b4...6b8b5d`; sonic `0xed801d...8678c5` | ⚠️ Unaudited |
| FixedRateDripper | unknown | sonic | 3 deployments: sonic [`0x5b7299...281f03`](./contracts/sonic-146/0x5b72992e9cde8c07ce7c8217eb014ec7fd281f03/); sonic `0x681ac7...0e6542`; sonic `0xc5685a...dad992` | ⚠️ Unaudited |
| JackTokenBridged | operational_periphery | sonic | [`0x9d549c...102e36`](./contracts/sonic-146/0x9d549c39e5e1a0e7ef41d4b7d74c49f976102e36/) | ⚠️ Unaudited |
| OSonic | unknown | sonic | 6 deployments: sonic [`0x170526...5857c6`](./contracts/sonic-146/0x1705268cb99b7aa67e0f1f0c71004b83065857c6/); sonic `0x67895d...751fdf`; sonic `0x8fb9a0...502add`; sonic `0xb1e256...f8a794`; sonic `0xb75137...c9951d`; sonic `0xdb1604...2a1076` | ⚠️ Unaudited |
| OSonicDripperProxy | unknown | sonic | [`0xb570a2...3182ba`](./contracts/sonic-146/0xb570a2d463886c059c94daf779a7bbd84d3182ba/) | ⚠️ Unaudited |
| OSonicOracleRouter | operational_periphery | sonic | [`0xe68e0c...c4e88b`](./contracts/sonic-146/0xe68e0c66950a7e02335fc9f44daa05d115c4e88b/) | ⚠️ Unaudited |
| OSonicVaultAdmin | core_logic | sonic | 6 deployments: sonic [`0x1a44f4...9ec59f`](./contracts/sonic-146/0x1a44f4e2ccd75999cb7fd1d25b0828c4399ec59f/); sonic `0x2c3141...74fed0`; sonic `0x3c1106...0b71f0`; sonic `0x4bc730...a879f8`; sonic `0x5217ff...8c5583`; sonic `0xf611cc...86d2af` | ⚠️ Unaudited |
| OSonicVaultCore | core_logic | sonic | 7 deployments: sonic [`0x087a3e...8dcbd9`](./contracts/sonic-146/0x087a3e2b1342ddc7c4c8af6d7d3e5c8ea78dcbd9/); sonic `0x48bb73...0fe277`; sonic `0x48e483...409ebd`; sonic `0x4a83ce...4e994c`; sonic `0xb3d6e8...f9906c`; sonic `0xb5c4cd...37ac16`; sonic `0xd66afa...836cf3` | ⚠️ Unaudited |
| OSonicVaultProxy | core_logic | sonic | 12 deployments: sonic [`0x062225...13f3d2`](./contracts/sonic-146/0x062225ff81afd93b21c93a30d46f020a8c13f3d2/); sonic `0x33015e...37df3d`; sonic `0x3e07dc...7776a2`; sonic `0x57e407...4f3721`; sonic `0x83e4bc...60ea95`; sonic `0x8a8378...a9a958`; sonic `0xb08442...227dae`; sonic `0xbb3b88...e1b1a8`; sonic `0xd95345...aa7345`; sonic `0xe09676...d55fb2`; sonic `0xeab26f...fc358b`; sonic `0xf85a68...9d2358` | ⚠️ Unaudited |
| OSonicZapper | adapter | sonic | 2 deployments: sonic [`0x8bb678...7d07ac`](./contracts/sonic-146/0x8bb67820e8ac1a775da25e50391718c1457d07ac/); sonic `0xe25a2b...2fab21` | ⚠️ Unaudited |
| PoolBoostCentralRegistry | registry | sonic | 5 deployments: sonic [`0x246594...24b3b3`](./contracts/sonic-146/0x246594d0276ffaeb0442c3edcdfb026e6924b3b3/); sonic `0x4f3b65...4a218a`; sonic `0x6f9468...82bfdc`; sonic `0x7399a8...ae6be8`; sonic `0xe1ee14...9d4aa1` | ⚠️ Unaudited |
| PoolBoostCentralRegistryProxy | registry | sonic | 3 deployments: sonic [`0x7c5cb7...4ca4a7`](./contracts/sonic-146/0x7c5cb7db176b188af729d8b3b00ef222dd4ca4a7/); sonic `0xa63e47...d17dc5`; sonic `0xc10f52...145d81` | ⚠️ Unaudited |
| PoolBoosterFactorySwapxDouble | registry | sonic | 4 deployments: sonic [`0x27281c...5f7689`](./contracts/sonic-146/0x27281ce00322ee8b7c078788fb624d051f5f7689/); sonic `0x840081...5a3b49`; sonic `0xb2e9d0...c3ffe7`; sonic `0xf43f0f...28674f` | ⚠️ Unaudited |
| ProxyAdmin | governance | avalanche | 4 deployments: avalanche [`0x2d1c7b...040dd3`](./contracts/avalanche-43114/0x2d1c7b2eb59f1c93983631be4f05b08b51040dd3/); avalanche `0x36f7b8...51cfc2`; avalanche `0x8e9988...4048d3`; avalanche `0xcfba93...4f5446` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | sonic | 15 deployments: sonic [`0x0ab6d0...1de1d3`](./contracts/sonic-146/0x0ab6d071af5b692c88baddd1f6e4f3ad5c1de1d3/); sonic `0x266c10...6e80b6`; sonic `0x29dafa...c8057f`; sonic `0x485eab...a784bd`; sonic `0x66df6a...27d7ed`; sonic `0x7545dd...8fb931`; sonic `0x7b949a...1c33b5`; sonic `0x8329d2...8f85e9`; sonic `0x87c165...cfde21`; sonic `0x9981a5...8333f5`; sonic `0x9987a6...6638af`; sonic `0xa10466...3b11d7`; sonic `0xadeeb0...9f3ec0`; sonic `0xee1e11...145177`; sonic `0xfc7d3e...e4094a` | ⚠️ Unaudited |
| Router | adapter | sonic | 2 deployments: sonic [`0x10c490...30a829`](./contracts/sonic-146/0x10c490921916e6d2d38535e63080d54e7e30a829/); sonic `0x4d6223...8dc9e0` | ⚠️ Unaudited |
| TestToken | token | avalanche | 2 deployments: avalanche [`0x812571...96453c`](./contracts/avalanche-43114/0x8125713bd45f8b5e807d9899afaa214d5e96453c/); avalanche `0xb6b0ca...40a19f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | avalanche | 15 deployments: avalanche [`0x0363a3...d461db`](./contracts/avalanche-43114/0x0363a3debe776de575c36f524b7877db7dd461db/); avalanche `0x19e6a4...056e46`; avalanche `0x35315c...6562bd`; avalanche `0x5559d4...50ee2a`; avalanche `0x698c34...5e715e`; avalanche `0x872e02...bdadc8`; avalanche `0x9b7c44...7dde97`; avalanche `0xa0d0c6...2cc8da`; avalanche `0xa97d50...0da841`; avalanche `0xabe7a9...c47dc1`; avalanche `0xb05b3d...948dbe`; avalanche `0xbb640e...41b697`; avalanche `0xdc325a...5f9d58`; avalanche `0xea6e19...2e61ed`; avalanche `0xf8ae89...fd6b0d` | ⚠️ Unaudited |
| VaultValueChecker | core_logic | sonic | [`0x06f172...3d2c40`](./contracts/sonic-146/0x06f172e6852085eca886b7f9fd8f7b21db3d2c40/) | ⚠️ Unaudited |
| VeArtProxy | unknown | sonic | 6 deployments: sonic [`0x14f6fb...5f0e1a`](./contracts/sonic-146/0x14f6fbd0195db6baf933bc49e5dd6b805c5f0e1a/); sonic `0x2fc1e7...ec27e9`; sonic `0x47bf4c...15d234`; sonic `0xeae33e...9ed7b2`; sonic `0xf00941...470689`; sonic `0xf2b303...4c90d6` | ⚠️ Unaudited |
| Voter | unknown | sonic | 5 deployments: sonic [`0x18708a...d8c65c`](./contracts/sonic-146/0x18708a93ad916fcafa4ba365cdc723fcd3d8c65c/); sonic `0x9842be...92706e`; sonic `0xeada1c...bbff2f`; sonic `0xf365c4...f44afb`; sonic `0xfed36f...650c34` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | sonic | 3 deployments: sonic [`0x0966ca...5bb86b`](./contracts/sonic-146/0x0966cae7338518961c2d35493d3eb481a75bb86b/); sonic `0x1ec2b9...e3a578`; sonic `0x7e330b...18c1f1` | ⚠️ Unaudited |
| WOSonic | unknown | sonic | 8 deployments: sonic [`0x1ccb48...6c5805`](./contracts/sonic-146/0x1ccb48fb244fe1f6eb0d1c5fbd839db78c6c5805/); sonic `0x563045...e55d0b`; sonic `0x574cb8...b58983`; sonic `0x8cb72f...5558f8`; sonic `0x9f0df7...3df4b1`; sonic `0xa369fa...9657ef`; sonic `0xa8e00f...569cbe`; sonic `0xba7785...3bd2d7` | ⚠️ Unaudited |
| WOSonicProxy | unknown | sonic | 6 deployments: sonic [`0x52a10d...de8342`](./contracts/sonic-146/0x52a10d701c878c5aa3df2731b89bf9b2e7de8342/); sonic `0xbd57cf...240841`; sonic `0xc29a44...7e4506`; sonic `0xda0d34...236479`; sonic `0xe1b612...8be4a2`; sonic `0xfb6985...821836` | ⚠️ Unaudited |
| Wrapper | unknown | sonic | 3 deployments: sonic [`0x9fb76f...494206`](./contracts/sonic-146/0x9fb76f7ce5fceaa2c42887ff441d46095e494206/); sonic `0xdb58c4...10c866`; sonic `0xe8a41c...f37c47` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| WToken | token | sonic | 4 deployments: sonic [`0x0a6f4c...73615f`](./contracts/sonic-146/0x0a6f4c98d087445ef92b589c6f39d22c4373615f/); sonic `0x682d7f...fbe155`; avalanche `0xc37914...9c94c5`; avalanche `0xf01069...6ca440` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (217)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | sonic | `0x50a68c...b7739a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x5220ff...8ea29e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x63cde3...5ce654` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x64bd9c...d0f1f6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x67952c...483d70` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x9fb6b6...9c3b32` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xc9ec89...a1675e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xd0cc28...72ac8b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xd3d5e4...624ed7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xe59c17...814f64` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xe7e7de...b94d8f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xf22f28...4b13cc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x003678...83c3ba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x00b660...44b4a8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x00d011...45f0e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x013b34...6e3273` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x022138...d00c31` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x028f76...8354e9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x04a462...794ead` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x064b25...f1283e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x07bc07...d60d49` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x086418...741e33` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x08a312...3422d2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0954de...7e418b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0b6d8e...318606` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0c5051...b6d26b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0dcaa1...6b530d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0f51e9...7ce2cf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x104a42...54c6ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1177f6...d10b3a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x11fe6f...65d8fa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x125eb4...e99c45` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x126f0d...6bdea7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1346ed...1ae246` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1742cc...a2d914` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1776e8...301b49` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x177a87...886bad` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x193a3d...a94e20` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1cfd34...5ae4be` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1e40c7...bcb417` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x210754...6418db` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x21412c...e7449c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x21c5b8...880ccc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x226a0c...06a298` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x229c4e...721d1b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x24517a...c2b6c3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x259177...c3c3c5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x26585e...87bd7c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2a0dcd...a793fa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2d3152...d25d31` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2d49a6...7ad886` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2f9d5c...7f5a3f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2fbfe6...cff4b9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x30015e...e8ab1e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x33fe6a...265c2d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x34a55a...30ac1c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x350a85...c0a0ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x364ff8...a9eec6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x37023a...501c9f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x383627...00243a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3a6a12...93ee4d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3c5808...444048` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3d8f8d...31a908` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3f451c...5a3162` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4061a9...abe959` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x41c43d...a1e51c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x41fe11...f16929` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x425692...9ccf9f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x42b8ec...71d1b7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x45084f...45c389` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4707fa...03b135` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x481c49...f9453d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4b1df6...78f377` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4b8aa5...af6cf5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4d07ef...6759c5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4f238e...8f3a3d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x532c8e...4084fc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x534d3f...bf639b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5481fa...3d1094` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x56c76f...cc43bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x56e32e...a52618` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x589429...17f813` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x593d89...e0e01a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5c0133...db54d7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5e09be...8a1635` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x600466...19fef0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x60b86f...ba920f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x61e3d9...e815c3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x63e1e3...e6b913` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x644692...121b7d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x646cc7...df06ae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x65c11d...d11783` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x65c325...2a2e71` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x66204a...21c9c3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x664bc5...2ecdbf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x66a12c...1415f6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6752bd...f0a896` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x675bf4...c2d1c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x683d22...462f59` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x68503d...00fc1e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6b76a1...608c58` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6bb76b...d94370` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6c1076...16dc52` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6c2a02...1d1512` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x708b06...496da0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7132c0...0dc8be` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x727828...b15934` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x74c5bc...b7c97b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x758240...4c56a2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x75df77...dc033d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x79a17b...481505` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7aa5c7...4c17a1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7bccff...665957` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7c24ea...1f0d92` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7cdfc6...60c8f9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7d1389...5b6d22` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7e9c09...ca451c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7f49be...baaf45` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x80960f...674333` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x812c22...a1c1bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x83a753...1fdcf3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8478b8...99e815` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x85f50b...20522e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x86bac6...45aadb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8c1af7...44a980` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8da9c1...334ec4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8df5ab...afc6b3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x919e4d...80b8b2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x92796a...1ec2af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x933b32...ee3038` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x940d9a...1d8731` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x95e62a...cb21fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x968806...68e9d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x98b49d...a70b0a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x99bc5c...1d897c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9ab1c7...45ac6a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9b0f96...b588a7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9d0059...9e500f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9e9614...63b232` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9f829c...4a2530` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa3fe85...f73600` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa4dc75...df7ef7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa65ac5...072573` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa8460b...5aa6f6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa861b5...53c06a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xab2bd1...837451` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xabc5cc...981941` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xabc8d7...be8ca9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xac67bf...4f00c1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xac7a41...7e1e05` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xadb77d...b41314` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaec185...66f131` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaee9ce...198267` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaef488...1835ec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaf3ba8...e41c5d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb073f6...fddb74` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb294a9...d2b8bf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb3af67...f178d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb3e8f0...6bebbd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb41c8f...ab7960` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb424b4...ac25bd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb616dd...c2abd0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb67aec...b1540f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb727f2...c60432` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb77fb6...6d50b7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb83893...9e0d2b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb8c6c8...ed1b41` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbab6c3...1d5503` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbbd4b4...d4cbe8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbc33ce...6ef5d7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbddc92...4179d4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc0ef48...fd1d47` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc15f86...e16741` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc2b0a3...54c305` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc50f9d...1a5462` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc92a14...427b59` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc9b584...373a3f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcc4187...9670d6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcdbce5...096a63` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcee8a4...11d914` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcefea5...687927` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcf26a5...30c100` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcf2ea8...da655e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd2a170...a937a7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd2bcdf...50bf4e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd4f8d3...c59ef2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd5222d...67aad7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd8febb...1f56c8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd9103e...d33ba6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd942d4...5c777f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd9b6cd...5ed3c4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd9ede0...d6f4af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdf14ab...0c577b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe1ffe1...7086fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe24f54...f7fe58` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe36d66...c33876` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe5a922...b3f01a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe7e0af...777b5a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe946ca...7b65cd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xeb5ed5...7800b9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xede839...abea23` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xef0a8b...1640e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf287cd...6637c8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf32222...d7a8d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf339fe...ab18bf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf39a46...1f3a81` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf462b3...009070` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf4f3e2...552b79` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf57764...3ac896` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf57a42...c3c3c1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf65fbe...e98d48` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf6b9a0...2b4f20` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfb2746...b9ed0d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfb47da...fed08b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfbf8a6...82a1f3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfceba1...28e087` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xff11c9...4640be` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [aUSD_SC_Final_Audit_Report.pdf](https://github.com/Credshields/audit-reports/blob/master/aUSD_SC_Final_Audit_Report.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x06d47f...72219e`](./contracts/avalanche-43114/0x06d47f3fb376649c3a9dafe069b3d6e35572219e/) | StakedAvUSDV2 | token | $76,829,444.38 | Verified native implementation with $76,829,444.38 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xa3c0ec...180186`](./contracts/sonic-146/0xa3c0eca00d2b76b4d1f170b0ab3fdea16c180186/) | OSVault | core_logic | $12,617.96 | Verified native implementation with $12,617.96 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x244c88...05a831`](./contracts/sonic-146/0x244c88a7f5e11b092acd29f0033972d05e05a831/) | AirdropDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5db8d9...5d261a`](./contracts/sonic-146/0x5db8d98ed02a3b8c2781ab0b80f00cd2b75d261a/) | AirdropReclaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdf788a...f52f67`](./contracts/avalanche-43114/0xdf788ad40181894da035b827cdf55c523bf52f67/) | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x05d61a...bfee01`](./contracts/sonic-146/0x05d61aca7111e177ca0a03e7145f342494bfee01/) | DistributionSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5b7299...281f03`](./contracts/sonic-146/0x5b72992e9cde8c07ce7c8217eb014ec7fd281f03/) | FixedRateDripper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x9d549c...102e36`](./contracts/sonic-146/0x9d549c39e5e1a0e7ef41d4b7d74c49f976102e36/) | JackTokenBridged | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x170526...5857c6`](./contracts/sonic-146/0x1705268cb99b7aa67e0f1f0c71004b83065857c6/) | OSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xb570a2...3182ba`](./contracts/sonic-146/0xb570a2d463886c059c94daf779a7bbd84d3182ba/) | OSonicDripperProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xe68e0c...c4e88b`](./contracts/sonic-146/0xe68e0c66950a7e02335fc9f44daa05d115c4e88b/) | OSonicOracleRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1a44f4...9ec59f`](./contracts/sonic-146/0x1a44f4e2ccd75999cb7fd1d25b0828c4399ec59f/) | OSonicVaultAdmin | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x087a3e...8dcbd9`](./contracts/sonic-146/0x087a3e2b1342ddc7c4c8af6d7d3e5c8ea78dcbd9/) | OSonicVaultCore | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x062225...13f3d2`](./contracts/sonic-146/0x062225ff81afd93b21c93a30d46f020a8c13f3d2/) | OSonicVaultProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x8bb678...7d07ac`](./contracts/sonic-146/0x8bb67820e8ac1a775da25e50391718c1457d07ac/) | OSonicZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x246594...24b3b3`](./contracts/sonic-146/0x246594d0276ffaeb0442c3edcdfb026e6924b3b3/) | PoolBoostCentralRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x7c5cb7...4ca4a7`](./contracts/sonic-146/0x7c5cb7db176b188af729d8b3b00ef222dd4ca4a7/) | PoolBoostCentralRegistryProxy | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x27281c...5f7689`](./contracts/sonic-146/0x27281ce00322ee8b7c078788fb624d051f5f7689/) | PoolBoosterFactorySwapxDouble | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0ab6d0...1de1d3`](./contracts/sonic-146/0x0ab6d071af5b692c88baddd1f6e4f3ad5c1de1d3/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x10c490...30a829`](./contracts/sonic-146/0x10c490921916e6d2d38535e63080d54e7e30a829/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x06f172...3d2c40`](./contracts/sonic-146/0x06f172e6852085eca886b7f9fd8f7b21db3d2c40/) | VaultValueChecker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x14f6fb...5f0e1a`](./contracts/sonic-146/0x14f6fbd0195db6baf933bc49e5dd6b805c5f0e1a/) | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x18708a...d8c65c`](./contracts/sonic-146/0x18708a93ad916fcafa4ba365cdc723fcd3d8c65c/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0966ca...5bb86b`](./contracts/sonic-146/0x0966cae7338518961c2d35493d3eb481a75bb86b/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1ccb48...6c5805`](./contracts/sonic-146/0x1ccb48fb244fe1f6eb0d1c5fbd839db78c6c5805/) | WOSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x52a10d...de8342`](./contracts/sonic-146/0x52a10d701c878c5aa3df2731b89bf9b2e7de8342/) | WOSonicProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x9fb76f...494206`](./contracts/sonic-146/0x9fb76f7ce5fceaa2c42887ff441d46095e494206/) | Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 216 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2961] aUSD_SC_Final_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
