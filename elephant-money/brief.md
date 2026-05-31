# Agentic Audit Brief: Elephant Money

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Elephant Money (`elephant-money`)
- Website: [https://elephant.money](https://elephant.money)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-05-31T14:54:04.140Z
- Pipeline run: v2-pipeline-2026-05-27-de70dc-1ce2
- Chains: bsc
- Contract surface: 346 unique implementations (667 raw deployments)
- DeFi Llama TVL: $79,150,904.90
- On-chain TVL (included contracts): $1,571,321.59
- TVL by chain: Bsc $1,571,321.59

## Project Description

Elephant Money is a DeFi yield protocol on BSC offering vaults, futures, and NFT-based products. It provides mechanisms for staking, yield generation, and liquidity management through a suite of interconnected contracts.

### Architecture

Vaults and yield strategies interact with treasuries and engines to manage funds, while the NFT ecosystem uses dedicated minters and marketplaces. Both families share infrastructure like oracles, routers, and the GnosisSafeProxy for governance.

## Audit Coverage Summary

- Verified implementations audited: 9/153 (5.9%)
- Verified + Unaudited implementations: 144
- Verified by bytecode match: 0
- Unverified implementations: 193
- Unique implementations: 346
- Raw deployments: 667
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $1,571,321.59
- Latest audit: 2022-08 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $1,571,321.59 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SourceHat | Tier 2 | 9 | 5.9% | 2021-11 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BankrollNetworkStack | unknown | bsc | [`0xec1005...ce1eb7`](./contracts/bsc-56/0xec10059ba900883ed6154883e9f3a1c24fce1eb7/) | ✅ Audited |
| Elephant | unknown | bsc | 2 deployments: bsc [`0xd96ec8...62be1a`](./contracts/bsc-56/0xd96ec811359bfd94d2dfe2a3bd8da68bf262be1a/); bsc `0xe283d0...92f688` | ✅ Audited |
| ElephantDollar | unknown | bsc | [`0xdd325c...1a70e0`](./contracts/bsc-56/0xdd325c38b12903b727d16961e61333f4871a70e0/) | ✅ Audited |
| ElephantDollarDistributor | operational_periphery | bsc | 5 deployments: bsc [`0x00c66c...da2cd2`](./contracts/bsc-56/0x00c66cf7b0e38d4eb528c81c28b55ca589da2cd2/); bsc `0x8655e8...2eee3b`; bsc `0x9462e7...46de89`; bsc `0xb702b3...c9529c`; bsc `0xdb2c27...440455` | ✅ Audited |
| ElephantGraveyard | unknown | bsc | [`0xf7cc78...a0dd71`](./contracts/bsc-56/0xf7cc784bd260eafc1193d337ffcea4d6dda0dd71/) | ✅ Audited |
| ElephantLiquidityDrive | unknown | bsc | [`0xf9d643...8b5cb3`](./contracts/bsc-56/0xf9d64317d4cda0a6b4ef41a32e301ea64f8b5cb3/) | ✅ Audited |
| ElephantPoolDistributor | operational_periphery | bsc | 2 deployments: bsc [`0x612ce9...4cccba`](./contracts/bsc-56/0x612ce90180ec0185ad1aa09c74704a048a4cccba/); bsc `0xed5514...208843` | ✅ Audited |
| Treasury | operational_periphery | bsc | 8 deployments: bsc [`0x2da1a9...b5267d`](./contracts/bsc-56/0x2da1a94e7bda3a71342a19643f94443641b5267d/); bsc `0x98f6c7...87fc92`; bsc `0xacef13...37bfdd`; bsc `0xaf0980...fbb4fc`; bsc `0xc6a42b...6d18bb`; bsc `0xcb5a02...ce8ce4`; bsc `0xd3b4fb...bc6fdf`; bsc `0xd9de89...00ec3e` | ✅ Audited |
| Whitelist | unknown | bsc | [`0x3064cd...85ed97`](./contracts/bsc-56/0x3064cda024b921f83e72c996bc06982a5885ed97/) | ✅ Audited |

### ⚠️ Verified + Unaudited (144)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DODOBscToken | token | bsc | [`0x67ee3c...b929e2`](./contracts/bsc-56/0x67ee3cb086f8a16f34bee3ca72fad36f7db929e2/) | ⚠️ Unaudited |
| BSWToken | token | bsc | [`0x965f52...120dd1`](./contracts/bsc-56/0x965f527d9159dce6288a2219db51fc6eef120dd1/) | ⚠️ Unaudited |
| AccessControlledAggregator | governance | bsc | 23 deployments: bsc [`0x0687d8...51f333`](./contracts/bsc-56/0x0687d89c804da7c06f9fdf1e8260e0043151f333/); bsc `0x0d52d2...dd9144`; bsc `0x175d7a...f62f08`; bsc `0x17a0da...187c67`; bsc `0x2d6e1c...ec808b`; bsc `0x34dbbb...a325f3`; bsc `0x484201...e3649a`; bsc `0x4fdbdf...4bbace`; bsc `0x6ebcd7...fc27ad`; bsc `0x80ee6a...f34020`; bsc `0x84dc30...ae3633`; bsc `0x944b31...6dae7b`; bsc `0x9bc0b4...a16741`; bsc `0xb303ad...808df7`; bsc `0xba24f9...b92d42`; bsc `0xbccf4b...ad6e91`; bsc `0xc3c652...f5121e`; bsc `0xcdecd5...1e042f`; bsc `0xce864b...85e7df`; bsc `0xce8fda...7db70c`; bsc `0xd313ed...cef6cd`; bsc `0xfb75ac...4a6867`; bsc `0xfca1ba...ea929d` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | governance | bsc | 3 deployments: bsc [`0x3fdb2c...40bd4e`](./contracts/bsc-56/0x3fdb2c8c6fb9bf3c629dcd0924eb1af52c40bd4e/); bsc `0xe6a66a...93c338`; bsc `0xef9363...c40b98` | ⚠️ Unaudited |
| AdministrativeNFTMinter | token | bsc | [`0xa94211...2a8ee4`](./contracts/bsc-56/0xa9421179abe9faa3ab01d9086ff6da0cd82a8ee4/) | ⚠️ Unaudited |
| AprForwardingTreasuryStrategy | operational_periphery | bsc | 3 deployments: bsc [`0x01fb38...6ae484`](./contracts/bsc-56/0x01fb3809de463d114b66d7e428035196cd6ae484/); bsc `0x3750a4...64f326`; bsc `0x6349cb...f4a101` | ⚠️ Unaudited |
| autoBsw | unknown | bsc | [`0x97a16f...cda73d`](./contracts/bsc-56/0x97a16ff6fd63a46bf973671762a39f3780cda73d/) | ⚠️ Unaudited |
| BackedForwardingPool | core_logic | bsc | [`0x99c919...ea8f05`](./contracts/bsc-56/0x99c9196f2bcb898f94a346b27cde7ce305ea8f05/) | ⚠️ Unaudited |
| BakeryAdapter | adapter | bsc | 3 deployments: bsc [`0x08e358...c6c61b`](./contracts/bsc-56/0x08e358a23decff37efca1d3c9e0e43a3e9c6c61b/); bsc `0x17307d...10b9cf`; bsc `0xbe24a0...b0c88c` | ⚠️ Unaudited |
| BatchERC721Transfer | token | bsc | [`0x7776b8...cdd9dc`](./contracts/bsc-56/0x7776b8e7b9228eb030d2e18e30d8adbbd1cdd9dc/) | ⚠️ Unaudited |
| BEP20Token | token | bsc | 2 deployments: bsc [`0x7130d2...3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/); bsc `0xe9e7ce...087d56` | ⚠️ Unaudited |
| BiswapFactory | registry | bsc | 2 deployments: bsc [`0x173661...9f1285`](./contracts/bsc-56/0x173661c75895b15fae9ffc91210017cf6e9f1285/); bsc `0x858e33...8af7ee` | ⚠️ Unaudited |
| BiswapRouter02 | adapter | bsc | [`0x3a6d8c...350dd8`](./contracts/bsc-56/0x3a6d8ca21d1cf76f653a67577fa0d27453350dd8/) | ⚠️ Unaudited |
| BNBReserveStrategy | operational_periphery | bsc | 2 deployments: bsc [`0xb74e96...4ff897`](./contracts/bsc-56/0xb74e9677bdfeabbf33614d468a74b502bc4ff897/); bsc `0xcccc27...51b43c` | ⚠️ Unaudited |
| BotGasStation | unknown | bsc | [`0xc4d9b0...6778b9`](./contracts/bsc-56/0xc4d9b08d0d7632f8e1a0f07f91e10f0c4a6778b9/) | ⚠️ Unaudited |
| BSWMinting | unknown | bsc | 2 deployments: bsc [`0x2a539a...b1f522`](./contracts/bsc-56/0x2a539a4189b23c15a7ccfdeadb56c62b8cb1f522/); bsc `0xaec140...3f0fbf` | ⚠️ Unaudited |
| BTCBTurbine | unknown | bsc | [`0x2e74b4...41858c`](./contracts/bsc-56/0x2e74b429836d7357348b520139a3a6145441858c/) | ⚠️ Unaudited |
| BulkNFTMinter | token | bsc | 3 deployments: bsc [`0x029a89...fb606a`](./contracts/bsc-56/0x029a8915cb63cbb28dcd1195ce6a00596bfb606a/); bsc `0x112492...7f7269`; bsc `0xd606ec...e1444b` | ⚠️ Unaudited |
| BuyoutModel | unknown | bsc | [`0xfea1ac...484197`](./contracts/bsc-56/0xfea1acad77f64bf6e933635ed078e63d22484197/) | ⚠️ Unaudited |
| CloneFactory | registry | bsc | [`0xb7865a...62655a`](./contracts/bsc-56/0xb7865a5cee051d35b09a48b624d7057d3362655a/) | ⚠️ Unaudited |
| ConstOracle | operational_periphery | bsc | [`0xa952f8...b21edb`](./contracts/bsc-56/0xa952f8716a753d9e094c4041febd163e38b21edb/) | ⚠️ Unaudited |
| Controller | governance | bsc | [`0x4187aa...113634`](./contracts/bsc-56/0x4187aab02f9e3abdeb9a6cc71397a7a839113634/) | ⚠️ Unaudited |
| CP | unknown | bsc | 3 deployments: bsc [`0x5d6e6a...16b245`](./contracts/bsc-56/0x5d6e6a0bfb2176afcc4fb809822d8e009216b245/); bsc `0x6a3c8b...0f12e5`; bsc `0xd1aacd...0a53bf` | ⚠️ Unaudited |
| CrowdPoolingFactory | registry | bsc | 3 deployments: bsc [`0x778df5...e185dc`](./contracts/bsc-56/0x778df5b12170e8af8df94356bfc864e57ce185dc/); bsc `0x9c9ef6...28debc`; bsc `0xd5a7e1...07281a` | ⚠️ Unaudited |
| CustomERC20 | token | bsc | 3 deployments: bsc [`0x2aabd1...98051b`](./contracts/bsc-56/0x2aabd11fd4f681636e38c2ee3ca785603598051b/); bsc `0x4777a6...e10f1f`; bsc `0xb71c24...17ced2` | ⚠️ Unaudited |
| CustomMintableERC20 | token | bsc | [`0xff739f...7eaff3`](./contracts/bsc-56/0xff739f9743e14f8846452690f669f730b97eaff3/) | ⚠️ Unaudited |
| Depot | unknown | bsc | 2 deployments: bsc [`0x1a6a71...7e68a5`](./contracts/bsc-56/0x1a6a71f07d85f3aa76baa5616a7bda3ccf7e68a5/); bsc `0x6da246...39f42b` | ⚠️ Unaudited |
| DODO | unknown | bsc | 3 deployments: bsc [`0x47520b...80fec2`](./contracts/bsc-56/0x47520b1e49e252d5a79c3f6a241ae95b0f80fec2/); bsc `0x77106d...d2d748`; bsc `0x99ba96...48515b` | ⚠️ Unaudited |
| DODOCalleeHelper | periphery | bsc | [`0x2673e5...8e3b4b`](./contracts/bsc-56/0x2673e5333620bb22bd1bfb3af9fc7012008e3b4b/) | ⚠️ Unaudited |
| DODOCpProxy | unknown | bsc | 3 deployments: bsc [`0x7831d8...57f08d`](./contracts/bsc-56/0x7831d8f71b9d1aa0204564d19d5e23777357f08d/); bsc `0xa86724...5474d8`; bsc `0xbb8680...97f28c` | ⚠️ Unaudited |
| DODODppProxy | unknown | bsc | [`0x624fc8...ec21b9`](./contracts/bsc-56/0x624fc8368fe11be00d8b2f3fe0b9d0053bec21b9/) | ⚠️ Unaudited |
| DODODropsProxy | unknown | bsc | [`0xc05a30...c3323b`](./contracts/bsc-56/0xc05a30468d039381aabab6dcac31078db2c3323b/) | ⚠️ Unaudited |
| DODODspProxy | unknown | bsc | [`0x2442a8...d4e65a`](./contracts/bsc-56/0x2442a8b5cdf1e659f3f949a7e454caa554d4e65a/) | ⚠️ Unaudited |
| DODOIncentive | unknown | bsc | [`0x4ee639...9cd352`](./contracts/bsc-56/0x4ee6398898f7fc3e648b3f6ba458310ac29cd352/) | ⚠️ Unaudited |
| DODOLimitOrder | unknown | bsc | 2 deployments: bsc [`0xa68d05...8240c1`](./contracts/bsc-56/0xa68d055e4ad41a59b4f27226b6b8b9ad798240c1/); bsc `0xdc5e86...7b2a04` | ⚠️ Unaudited |
| DODOLimitOrderBot | unknown | bsc | 2 deployments: bsc [`0x187da3...9cf5fe`](./contracts/bsc-56/0x187da347debf4221b861eeafc9808d8cf89cf5fe/); bsc `0xd4edd3...43f083` | ⚠️ Unaudited |
| DODOLimitOrderProxy | unknown | bsc | [`0x5e6c9f...a03322`](./contracts/bsc-56/0x5e6c9f63e0ccf68d98bd14fef83a708f1ea03322/) | ⚠️ Unaudited |
| DODOMine | unknown | bsc | [`0x01f9bf...0cc750`](./contracts/bsc-56/0x01f9bfac04e6184e90bd7eafd51999ce430cc750/) | ⚠️ Unaudited |
| DODOMineReader | unknown | bsc | [`0xf94435...387416`](./contracts/bsc-56/0xf94435ad7edc3d5add1c1345622bb745d0387416/) | ⚠️ Unaudited |
| DODOMineV2Factory | registry | bsc | 2 deployments: bsc [`0x4e306a...a8b641`](./contracts/bsc-56/0x4e306abc37724f006b216b802408340bf2a8b641/); bsc `0xf998ff...6fd217` | ⚠️ Unaudited |
| DODOMineV3Proxy | unknown | bsc | 2 deployments: bsc [`0x3c39dc...9597ac`](./contracts/bsc-56/0x3c39dcb3630d305530a30419b3deecea629597ac/); bsc `0x8f3fb1...b5c590` | ⚠️ Unaudited |
| DODOMineV3Registry | registry | bsc | 2 deployments: bsc [`0x2a5aa9...0dabd8`](./contracts/bsc-56/0x2a5aa99095e3724b8955bf7b5e47dbe2730dabd8/); bsc `0xf1ed17...0c6d6a` | ⚠️ Unaudited |
| DODONFT | token | bsc | [`0x5ed972...489888`](./contracts/bsc-56/0x5ed972c0a7f8d0c4dedf6a37848a297b67489888/) | ⚠️ Unaudited |
| DODONFT1155 | token | bsc | [`0xdc9224...f56119`](./contracts/bsc-56/0xdc9224cbc4b1826bb74ff383ff1ce94de1f56119/) | ⚠️ Unaudited |
| DODONFTApprove | token | bsc | [`0x8f6978...4c7a6c`](./contracts/bsc-56/0x8f697865fb43236683a174fee87fd84db64c7a6c/) | ⚠️ Unaudited |
| DODONFTPoolProxy | core_logic | bsc | [`0x509d37...b5b965`](./contracts/bsc-56/0x509d3775f684fa4d19c9c99b961202e309b5b965/) | ⚠️ Unaudited |
| DODONFTProxy | token | bsc | 3 deployments: bsc [`0x0d224a...798c71`](./contracts/bsc-56/0x0d224a4a6da3cfb360b9879965b1f78865798c71/); bsc `0x485239...8131fa`; bsc `0xb9c408...e6fcde` | ⚠️ Unaudited |
| DODONFTRegistry | registry | bsc | [`0x2c0dd7...dce31a`](./contracts/bsc-56/0x2c0dd764a0be8a7e747cb0765e268d576edce31a/) | ⚠️ Unaudited |
| DODONFTRouteHelper | token | bsc | [`0x2d8349...57fbf3`](./contracts/bsc-56/0x2d8349e957a69e4cc7b4ef225a4b6a85be57fbf3/) | ⚠️ Unaudited |
| DODORecharge | unknown | bsc | 2 deployments: bsc [`0x61b216...1d0f6a`](./contracts/bsc-56/0x61b21603a527b487c4a3a80a69224b87751d0f6a/); bsc `0xf7c531...7eddca` | ⚠️ Unaudited |
| DODORouteProxy | unknown | bsc | 3 deployments: bsc [`0x38a92d...5b3b12`](./contracts/bsc-56/0x38a92ddec6c204cba947e91ee856ce57d65b3b12/); bsc `0x6b3d81...9737ca`; bsc `0xea872a...53671b` | ⚠️ Unaudited |
| DODOStarterFactory | registry | bsc | [`0x796249...29ecb9`](./contracts/bsc-56/0x79624977c8065650f03c38d5bc0f03a6f929ecb9/) | ⚠️ Unaudited |
| DODOStarterProxy | unknown | bsc | [`0x81521b...ffe8d1`](./contracts/bsc-56/0x81521b0e899112b36fe7218954a81b7fe8ffe8d1/) | ⚠️ Unaudited |
| DODOUpCpProxy | unknown | bsc | 2 deployments: bsc [`0x01d3e7...0679fa`](./contracts/bsc-56/0x01d3e7271c278aa3aa56eeba6a109b2c200679fa/); bsc `0x39eb55...173d03` | ⚠️ Unaudited |
| DODOV2CuttingRouteHelper | periphery | bsc | [`0xd9d393...9c4468`](./contracts/bsc-56/0xd9d39391959e281284512b71bf79e0c88e9c4468/) | ⚠️ Unaudited |
| DODOV2Proxy02 | unknown | bsc | 3 deployments: bsc [`0x3a343f...054965`](./contracts/bsc-56/0x3a343f2e4e142412c5dd130359edb765a6054965/); bsc `0x8f8dd7...d58486`; bsc `0xd56281...043127` | ⚠️ Unaudited |
| DODOV2RouteHelper | periphery | bsc | 4 deployments: bsc [`0x1dc8d1...f9c993`](./contracts/bsc-56/0x1dc8d1f1600b7c1d39e6b60fbc7b021bc4f9c993/); bsc `0xb48ee7...1c3a65`; bsc `0xc1cce4...53d957`; bsc `0xf2cd74...6cd617` | ⚠️ Unaudited |
| DPPAdvanced | unknown | bsc | 8 deployments: bsc [`0x0fe261...9065f4`](./contracts/bsc-56/0x0fe261aee0d1c4dfddee4102e82dd425999065f4/); bsc `0x3a60a7...abc406`; bsc `0x5a2e22...708759`; bsc `0x64b2e6...c2f1e3`; bsc `0x7f6070...67ac53`; bsc `0x88cbf4...4593e5`; bsc `0xa7e60e...0e6a3d`; bsc `0xf718dd...1ac38e` | ⚠️ Unaudited |
| DPPAdvancedAdmin | unknown | bsc | 7 deployments: bsc [`0x2ae3df...afed36`](./contracts/bsc-56/0x2ae3df375042e0ec192a6e629359885995afed36/); bsc `0x4796db...10dd5f`; bsc `0x68b3ad...5ad28d`; bsc `0x69856d...efaf4b`; bsc `0xbb23ff...964aa5`; bsc `0xcdfd45...3a2380`; bsc `0xff133a...a8ae6a` | ⚠️ Unaudited |
| DPPFactory | registry | bsc | 2 deployments: bsc [`0xafe0a7...609eef`](./contracts/bsc-56/0xafe0a75dffb395eaabd0a7e1bbbd0b11f8609eef/); bsc `0xd9cac3...51daae` | ⚠️ Unaudited |
| DPPOracle | operational_periphery | bsc | 2 deployments: bsc [`0x03e794...35b1a0`](./contracts/bsc-56/0x03e794b315f01744cbfa995fbdc9e871e835b1a0/); bsc `0x3024a8...c2d633` | ⚠️ Unaudited |
| DPPOracleAdmin | operational_periphery | bsc | [`0xe9743c...2bc59c`](./contracts/bsc-56/0xe9743cc05141b3798709c555384f1101252bc59c/) | ⚠️ Unaudited |
| DropsFeeModel | unknown | bsc | [`0x6de96b...c0c67d`](./contracts/bsc-56/0x6de96b1a41ff2e8264925b4c5c0564c46dc0c67d/) | ⚠️ Unaudited |
| DSP | unknown | bsc | 2 deployments: bsc [`0x392b2a...c1cab6`](./contracts/bsc-56/0x392b2ae9ab6161591582c4724ca9a89c0cc1cab6/); bsc `0xe3c91f...e9066e` | ⚠️ Unaudited |
| DSPFactory | registry | bsc | 2 deployments: bsc [`0x0fb981...ede767`](./contracts/bsc-56/0x0fb9815938ad069bf90e14fe6c596c514bede767/); bsc `0xbb245f...b81378` | ⚠️ Unaudited |
| DVM | unknown | bsc | 3 deployments: bsc [`0x026076...33d901`](./contracts/bsc-56/0x02607600407329389c2912f46dd357d7fa33d901/); bsc `0x409e37...5d1dd9`; bsc `0xe44f14...1753c9` | ⚠️ Unaudited |
| DVMFactory | registry | bsc | 2 deployments: bsc [`0x790b4a...1733fb`](./contracts/bsc-56/0x790b4a80fb1094589a3c0efc8740aa9b0c1733fb/); bsc `0xa1254e...96b6d4` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | bsc | 23 deployments: bsc [`0x0567f2...d42aee`](./contracts/bsc-56/0x0567f2323251f0aab15c8dfb1967e4e8a7d42aee/); bsc `0x116eeb...e771a0`; bsc `0x132d3c...deecfa`; bsc `0x264990...ca5ebf`; bsc `0x43d80f...027d41`; bsc `0x45f86c...be46db`; bsc `0x51597f...9ea163`; bsc `0x5fa530...f0dff0`; bsc `0x63d407...aae726`; bsc `0x74e72f...35791d`; bsc `0x87ea38...f99941`; bsc `0x8ec213...db7b35`; bsc `0x93a67d...014fda`; bsc `0x9ef1b8...1d5b2e`; bsc `0xb1bed6...e27718`; bsc `0xb97ad0...8b4320`; bsc `0xbf63f4...10f206`; bsc `0xc333eb...0a2592`; bsc `0xca236e...89fac8`; bsc `0xcbb988...31b82f`; bsc `0xd5c40f...991513`; bsc `0xe188a9...8cd0f1`; bsc `0xe5dbfd...21fb83` | ⚠️ Unaudited |
| ElephantMarketPlace | unknown | bsc | 3 deployments: bsc [`0x239090...5e2a66`](./contracts/bsc-56/0x2390901198838aabbb383ce0ac215ad9e05e2a66/); bsc `0x4d1e19...802b7c`; bsc `0xb6c05c...ae42ea` | ⚠️ Unaudited |
| ElephantMoneyUnlimitedNFT | token | bsc | [`0xb92afe...ab3198`](./contracts/bsc-56/0xb92afedc8f8618be4198fbe5d97adb7c60ab3198/) | ⚠️ Unaudited |
| ElephantNFTBulkSender | token | bsc | [`0x2286be...6a544a`](./contracts/bsc-56/0x2286be1974995b2568cd9e82727fc22bbb6a544a/) | ⚠️ Unaudited |
| ElephantNFTMinter | token | bsc | 3 deployments: bsc [`0x811d1b...f1da38`](./contracts/bsc-56/0x811d1b27a18383b7421bdde1cb81c55609f1da38/); bsc `0x846f61...c6ce9a`; bsc `0xb6f387...b11972` | ⚠️ Unaudited |
| ElephantNFTStaking | token | bsc | 4 deployments: bsc [`0x95beb1...2706ce`](./contracts/bsc-56/0x95beb12924e565e9b1f57d86d8fd848fa52706ce/); bsc `0x9a372c...8ec4da`; bsc `0xb2b1d8...1c4fb3`; bsc `0xd357de...f261e0` | ⚠️ Unaudited |
| ElephantNFTTraitTracker | token | bsc | 2 deployments: bsc [`0x4d8c58...eb9eff`](./contracts/bsc-56/0x4d8c5882110909505faa8407d168a7b7a0eb9eff/); bsc `0xce1b79...2824f1` | ⚠️ Unaudited |
| ElephantRouterProxy | adapter | bsc | 2 deployments: bsc [`0xbf522f...5ab1cc`](./contracts/bsc-56/0xbf522ff5c3d1820ac7d54f580017899a7c5ab1cc/); bsc `0xeaad13...253fa9` | ⚠️ Unaudited |
| ElephantYieldEngine | unknown | bsc | [`0x2689e3...8c5efd`](./contracts/bsc-56/0x2689e35a22b750c046faeb892eb3868a408c5efd/) | ⚠️ Unaudited |
| ERC20Mine | token | bsc | 11 deployments: bsc [`0x132231...b6a630`](./contracts/bsc-56/0x1322315622bf090e0c20f82ab1351f6f6db6a630/); bsc `0x2b40bc...f42999`; bsc `0x2c29cb...aa4c47`; bsc `0x322b43...b0385f`; bsc `0x38e02c...8fd145`; bsc `0x3b6067...9f9237`; bsc `0x7b6bbc...a0f695`; bsc `0x9a74b1...9ef45e`; bsc `0xc1ba6b...d4f032`; bsc `0xf6585f...db608f`; bsc `0xf7ac92...9f8e18` | ⚠️ Unaudited |
| ERC20MineV3 | token | bsc | 2 deployments: bsc [`0xba428f...5168d8`](./contracts/bsc-56/0xba428fc3c5ce457c236869787c26f725ff5168d8/); bsc `0xd12317...ae1e4d` | ⚠️ Unaudited |
| ERC20V2Factory | registry | bsc | [`0x652c09...a19a4d`](./contracts/bsc-56/0x652c09785c15db4adace871ed8874b8968a19a4d/) | ⚠️ Unaudited |
| ERC20V3Factory | registry | bsc | [`0x5ed22a...e7dc92`](./contracts/bsc-56/0x5ed22a48fee263207f5caae1a1f1a27011e7dc92/) | ⚠️ Unaudited |
| FactoryViewer | registry | bsc | 7 deployments: bsc [`0x3202b2...ec8607`](./contracts/bsc-56/0x3202b26f60ab51731f7e9a88262e12cfe6ec8607/); bsc `0x467aa6...983123`; bsc `0x54ae42...809c36`; bsc `0xb322d7...7402b5`; bsc `0xd190d3...e24f91`; bsc `0xedd283...80db8c`; bsc `0xee9934...95560a` | ⚠️ Unaudited |
| FairFunding | unknown | bsc | 2 deployments: bsc [`0x18b60f...d6bc31`](./contracts/bsc-56/0x18b60f1d852636b8ed24da2b682c0bc60dd6bc31/); bsc `0xa0744f...f68502` | ⚠️ Unaudited |
| FarmEngine | unknown | bsc | [`0xa3473f...ab3281`](./contracts/bsc-56/0xa3473fcea7c6cbdfad6326351e07d93f1bab3281/) | ⚠️ Unaudited |
| Fear | unknown | bsc | [`0x3e6293...48b5e1`](./contracts/bsc-56/0x3e629332c51046a17ec236553cb931cf0548b5e1/) | ⚠️ Unaudited |
| FeeRateDIP3Impl | unknown | bsc | 4 deployments: bsc [`0x06c19e...76322b`](./contracts/bsc-56/0x06c19e1d97aadd6f30a8a2be4c5defa30976322b/); bsc `0x818995...b03e45`; bsc `0xafb8ec...07ecc2`; bsc `0xe5e9b0...5a4c4d` | ⚠️ Unaudited |
| FeeRateImpl | unknown | bsc | [`0x2b0d94...76d2fe`](./contracts/bsc-56/0x2b0d94eb7a63b8a2909de1cb3951ecf7ae76d2fe/) | ⚠️ Unaudited |
| FilterAdmin | unknown | bsc | [`0xde8a38...0f9d41`](./contracts/bsc-56/0xde8a380e84998986a59be6519ff172d40c0f9d41/) | ⚠️ Unaudited |
| FilterERC1155V1 | token | bsc | [`0x763569...3caee1`](./contracts/bsc-56/0x7635694249b1bb39476a6ab28cc6b17c1e3caee1/) | ⚠️ Unaudited |
| FilterERC721V1 | token | bsc | [`0x333641...1c301f`](./contracts/bsc-56/0x33364198d93648d3e976aa8625097567791c301f/) | ⚠️ Unaudited |
| FlowEngine | unknown | bsc | [`0x202b8d...8576ab`](./contracts/bsc-56/0x202b8d57709a03d1f9a78c9a034786f5fb8576ab/) | ⚠️ Unaudited |
| Fragment | unknown | bsc | 2 deployments: bsc [`0x9542f4...43b419`](./contracts/bsc-56/0x9542f458b7003e7c8e938c6a87161d410243b419/); bsc `0xa8f057...839b14` | ⚠️ Unaudited |
| FuturesActionVault | core_logic | bsc | [`0x5c5778...d436ae`](./contracts/bsc-56/0x5c5778073e9207ce1479276724fc31757ed436ae/) | ⚠️ Unaudited |
| FuturesEngine | unknown | bsc | 12 deployments: bsc [`0x155479...d7c791`](./contracts/bsc-56/0x155479d35a6d544268db8f5919c24c1b6cd7c791/); bsc `0x1f61a4...3fdaeb`; bsc `0x5b24f7...8af11b`; bsc `0x5d87d8...76237a`; bsc `0x6c81fd...e1a1ee`; bsc `0x778c19...e38440`; bsc `0x8a3955...19ec06`; bsc `0x9a37fa...ceed56`; bsc `0x9ecde1...2cd68e`; bsc `0xa29004...1f3381`; bsc `0xc22e92...208573`; bsc `0xe98529...1dcead` | ⚠️ Unaudited |
| FuturesNFTMigrationVault | operational_periphery | bsc | [`0x9ae4de...8ff408`](./contracts/bsc-56/0x9ae4de43feb64e85698dd3c66b0666448a8ff408/) | ⚠️ Unaudited |
| FuturesRDFVault | core_logic | bsc | [`0xa8e3ee...535b3e`](./contracts/bsc-56/0xa8e3ee88a52644edfd50d4f5527641f5f0535b3e/) | ⚠️ Unaudited |
| FuturesVault | core_logic | bsc | [`0xaeb9b3...77fcd2`](./contracts/bsc-56/0xaeb9b31b9728a2c3d4df59748442d27f2277fcd2/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | [`0xd5d371...bac644`](./contracts/bsc-56/0xd5d3711939d88322a7dceeb529ace4bac3bac644/) | ⚠️ Unaudited |
| InitializableERC1155 | token | bsc | [`0x3c5509...c830a5`](./contracts/bsc-56/0x3c5509cc5212c62f77e36126efec7adb75c830a5/) | ⚠️ Unaudited |
| InitializableERC20 | token | bsc | [`0x99155e...f7bdf5`](./contracts/bsc-56/0x99155e68ac1523b6f461f6427a90607eccf7bdf5/) | ⚠️ Unaudited |
| InitializableERC721 | token | bsc | [`0xbd0ed3...1ea188`](./contracts/bsc-56/0xbd0ed394042ae14a1d6b7478386cdffd9d1ea188/) | ⚠️ Unaudited |
| InstantFunding | unknown | bsc | [`0xfcc60a...8dced8`](./contracts/bsc-56/0xfcc60a464c0be32a96706078ad886947488dced8/) | ⚠️ Unaudited |
| InvestorMine | operational_periphery | bsc | 2 deployments: bsc [`0xbfa00a...678ff7`](./contracts/bsc-56/0xbfa00a7d60df1a7fe4ac3f900d59a98622678ff7/); bsc `0xf723ec...b1d2a4` | ⚠️ Unaudited |
| LockedTokenVault | core_logic | bsc | 3 deployments: bsc [`0x36b673...6110df`](./contracts/bsc-56/0x36b6731ec0992a1c042e9354f85e4f9a586110df/); bsc `0xc6894b...7d834c`; bsc `0xe077ce...f4df9d` | ⚠️ Unaudited |
| MarketingTimeLock | governance | bsc | [`0x706d4d...4f40d0`](./contracts/bsc-56/0x706d4d4e49a2608d2e0088075b67da5dbc4f40d0/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | 2 deployments: bsc [`0xdbc1a1...061739`](./contracts/bsc-56/0xdbc1a13490deef9c3c12b44fe77b503c1b061739/); bsc `0xfb9b2d...e6308e` | ⚠️ Unaudited |
| MysteryBoxKAKA | unknown | bsc | [`0xdf7e00...20c8d4`](./contracts/bsc-56/0xdf7e00cd0bb91d1502a1a14575e58b5d8f20c8d4/) | ⚠️ Unaudited |
| MysteryBoxV1 | unknown | bsc | [`0xc25286...af97b8`](./contracts/bsc-56/0xc25286ef3bae3f6fe2d6d0a6e2acad0301af97b8/) | ⚠️ Unaudited |
| NFTCollateralVault | core_logic | bsc | 2 deployments: bsc [`0x0dd95c...3a1deb`](./contracts/bsc-56/0x0dd95ce685b8b101c52b43b203c351cf2d3a1deb/); bsc `0xd66b8b...1e3629` | ⚠️ Unaudited |
| NFTMarketplaceHelper | token | bsc | 5 deployments: bsc [`0x22a46d...32c150`](./contracts/bsc-56/0x22a46d2da104b9bfc8c6b2dfd2a8c0632432c150/); bsc `0x36239e...f1e30d`; bsc `0x3f3bad...2130e0`; bsc `0x6f4318...ca3248`; bsc `0xf57cad...6fceb3` | ⚠️ Unaudited |
| NFTSalesTracker | token | bsc | 2 deployments: bsc [`0x2aefa3...d8ce12`](./contracts/bsc-56/0x2aefa3eb03f12eb93d6868fc5cbb250b9cd8ce12/); bsc `0xbe8966...e07871` | ⚠️ Unaudited |
| NFTTokenFactory | registry | bsc | [`0x6e08ea...16b8fa`](./contracts/bsc-56/0x6e08eaafea48c147e8d092a7979d7b266f16b8fa/) | ⚠️ Unaudited |
| Oracle | operational_periphery | bsc | 2 deployments: bsc [`0x2f48cd...1f2db0`](./contracts/bsc-56/0x2f48cde4cfd0fb4f5c873291d5cf2dc9e61f2db0/); bsc `0x742e74...4d3736` | ⚠️ Unaudited |
| PancakeFactory | registry | bsc | 3 deployments: bsc [`0x877fe7...15edb6`](./contracts/bsc-56/0x877fe7f4e22e21be397cd9364fafd4af4e15edb6/); bsc `0xca143c...350c73`; bsc `0xe47d22...81f408` | ⚠️ Unaudited |
| PancakePair | unknown | bsc | 4 deployments: bsc [`0x1cea83...195ce1`](./contracts/bsc-56/0x1cea83ec5e48d9157fcae27a19807bef79195ce1/); bsc `0x4e90f5...4b861b`; bsc `0x647bc9...6bec48`; bsc `0xf15a72...e0aede` | ⚠️ Unaudited |
| PancakeRouter | adapter | bsc | 4 deployments: bsc [`0x02ee06...8b689f`](./contracts/bsc-56/0x02ee06c137a106255299589b3184f5ba438b689f/); bsc `0x10ed43...56024e`; bsc `0x1f5ecb...ff1996`; bsc `0x2ad2c5...eb2c56` | ⚠️ Unaudited |
| PcsPeriodicTwapOracle | operational_periphery | bsc | [`0x28fafc...5679e3`](./contracts/bsc-56/0x28fafc6ff614e6c2d7ca95959a3c0881fd5679e3/) | ⚠️ Unaudited |
| PcsSnapshotTwapOracle | operational_periphery | bsc | 2 deployments: bsc [`0x5606ee...326d3c`](./contracts/bsc-56/0x5606ee12d741716c260fda2f6c89efdf60326d3c/); bsc `0xb9394b...893861` | ⚠️ Unaudited |
| PegSupportTreasuryStrategy | operational_periphery | bsc | [`0x6b5eeb...90e567`](./contracts/bsc-56/0x6b5eeb214a87d1d296652dec8c48bbdd1590e567/) | ⚠️ Unaudited |
| PerformanceFund | unknown | bsc | [`0xd23d87...d412ac`](./contracts/bsc-56/0xd23d87a44977b0d77a8f8ca70e037b9001d412ac/) | ⚠️ Unaudited |
| PerformanceFundV3 | unknown | bsc | [`0x060044...d96162`](./contracts/bsc-56/0x0600445ac4e20f1668556e0e058b3dc369d96162/) | ⚠️ Unaudited |
| PoolHeartBeat | core_logic | bsc | [`0xb5cbfa...ed46e5`](./contracts/bsc-56/0xb5cbfa41c00005562560d6e7a9e3d6a028ed46e5/) | ⚠️ Unaudited |
| RandomGenerator | unknown | bsc | 2 deployments: bsc [`0x7c062b...c5fe72`](./contracts/bsc-56/0x7c062b9c584fa6ec2504270790d38240a2c5fe72/); bsc `0xefda12...efc758` | ⚠️ Unaudited |
| ReferralData | unknown | bsc | [`0x6248d9...e1ea4a`](./contracts/bsc-56/0x6248d9a3dff17dcda92141aa1e8f1e9d6fe1ea4a/) | ⚠️ Unaudited |
| SafeElephantNFTMinter | token | bsc | 3 deployments: bsc [`0x29a833...a45c06`](./contracts/bsc-56/0x29a8336a58e9b65b5bbc6f626b5b855cdaa45c06/); bsc `0x825055...74d875`; bsc `0xb3a23f...8fbacd` | ⚠️ Unaudited |
| SmartChef | unknown | bsc | 116 deployments: bsc [`0x00a142...b39346`](./contracts/bsc-56/0x00a142210f6b3bb3f78751dcd7b589e9e7b39346/); bsc `0x00d2d8...fff1d4`; bsc `0x015c8b...3a44c1`; bsc `0x018952...b731a9`; bsc `0x099975...0c1e1b`; bsc `0x0c1e98...e457c9`; bsc `0x109eaa...d5e836`; bsc `0x112ff6...6d4eef`; bsc `0x12e5b4...d93c3f`; bsc `0x131010...fa04b8`; bsc `0x1362b3...f3ba65`; bsc `0x13ca6a...4bb845`; bsc `0x13e903...4c8237`; bsc `0x1beb5a...f4d995`; bsc `0x1c3c5c...661492`; bsc `0x1edb72...a0ced5`; bsc `0x1f337d...d32970`; bsc `0x263678...24303d`; bsc `0x2792cc...8bd280`; bsc `0x28944e...673801`; bsc `0x2968da...ad6a46`; bsc `0x2a979f...0d7ecd`; bsc `0x339c7c...721d69`; bsc `0x34265c...f67006`; bsc `0x36fc9c...28860f`; bsc `0x3e776f...86f08b`; bsc `0x3e963d...4d547b`; bsc `0x44eece...e0ba51`; bsc `0x454076...ece61a`; bsc `0x50945a...0358ac`; bsc `0x5215d0...c18dd2`; bsc `0x53c60a...bd9891`; bsc `0x57393b...c90411`; bsc `0x5f1b5b...f414a3`; bsc `0x61330d...ce5862`; bsc `0x62204e...80378e`; bsc `0x62cfcc...258373`; bsc `0x631b87...90bca0`; bsc `0x6653c3...978a25`; bsc `0x66ac2a...d955ae`; bsc `0x683963...dc39e5`; bsc `0x69c4c9...fc8157`; bsc `0x6c00f2...e5dff4`; bsc `0x6cbba2...a1394d`; bsc `0x6d4067...25fd4d`; bsc `0x6e31da...c1df38`; bsc `0x724b71...dcfa1d`; bsc `0x72a79a...109cc9`; bsc `0x7468af...33bebd`; bsc `0x7517c3...358dc6`; bsc `0x78f818...0aa38e`; bsc `0x7951bc...6fafc0`; bsc `0x7d621c...7c9589`; bsc `0x81af4b...bc5d61`; bsc `0x84f41c...55c859`; bsc `0x850281...de5bbb`; bsc `0x858d2c...4a4832`; bsc `0x868cd8...48536a`; bsc `0x8b10e6...c42ff4`; bsc `0x8bb118...d94d4b`; bsc `0x8d87f0...105e71`; bsc `0x8dde1a...3056d4`; bsc `0x8ddfcd...916f2d`; bsc `0x973304...fda649`; bsc `0x994f7b...e0cb24`; bsc `0x9b0111...892c03`; bsc `0x9b9f3f...b52bff`; bsc `0xa1684b...57ff15`; bsc `0xa320db...72382f`; bsc `0xa394dd...823459`; bsc `0xa3a911...ac4444`; bsc `0xa5aa38...aee8c2`; bsc `0xa6c2f2...577c8f`; bsc `0xaa2b37...9fd4e5`; bsc `0xaa9947...7ff3e4`; bsc `0xab4592...8a4784`; bsc `0xacb2f1...e496f2`; bsc `0xb12c55...2f57b6`; bsc `0xb23b56...391ce9`; bsc `0xbbbc00...c1d10c`; bsc `0xbd09d5...7b0d1d`; bsc `0xc1519a...b52d21`; bsc `0xc50676...81e920`; bsc `0xc6a577...c5f3eb`; bsc `0xc7019f...fdb84a`; bsc `0xc7313c...823fa7`; bsc `0xc7ba45...2ac468`; bsc `0xc941b2...1676a3`; bsc `0xcc1b01...3f6a73`; bsc `0xcdebe0...1c22fa`; bsc `0xcf505c...6bd5fa`; bsc `0xd3b649...9d09d4`; bsc `0xd48558...11e67a`; bsc `0xd59227...5f3161`; bsc `0xd86e47...e0b4c4`; bsc `0xda730d...458187`; bsc `0xe018d6...01831d`; bsc `0xe02f66...51dc98`; bsc `0xe056fb...25990b`; bsc `0xe09d1d...ac20a0`; bsc `0xe42d17...c175a7`; bsc `0xe63967...6e6f74`; bsc `0xe6c58b...cb9cc5`; bsc `0xe737ed...3673a8`; bsc `0xeaebd1...14e4b1`; bsc `0xeb8134...0540b7`; bsc `0xedb963...1e6879`; bsc `0xeeee29...d8e193`; bsc `0xf2db34...186dda`; bsc `0xf31f62...7f7d4c`; bsc `0xf4540b...950f0d`; bsc `0xf4af1a...a1637c`; bsc `0xf54c23...cd9ff1`; bsc `0xf62e23...d1c899`; bsc `0xfd6820...367275`; bsc `0xfd8fce...51755d` | ⚠️ Unaudited |
| StampedeEngine | unknown | bsc | 4 deployments: bsc [`0x7c4dad...b914b7`](./contracts/bsc-56/0x7c4dad1b249efdc998f3569c8537866639b914b7/); bsc `0x7f6cec...a171ce`; bsc `0xac0292...d65c14`; bsc `0xdd8ad4...7b68a8` | ⚠️ Unaudited |
| StampedeMigrationEngine | operational_periphery | bsc | 2 deployments: bsc [`0x24f1c7...f99c58`](./contracts/bsc-56/0x24f1c78008afea4e1a2639db62a2b9d17ef99c58/); bsc `0x49241e...b02400` | ⚠️ Unaudited |
| SuperCharger | unknown | bsc | [`0xec8c93...6d7305`](./contracts/bsc-56/0xec8c93d29418b4d3e13edb18cc6dbc24606d7305/) | ⚠️ Unaudited |
| SwapFeeReward | unknown | bsc | 7 deployments: bsc [`0x2810b4...552dd8`](./contracts/bsc-56/0x2810b4f1172e0dccbc226d8c716534ff9c552dd8/); bsc `0x41bde0...4aaf83`; bsc `0x703932...8f9ee8`; bsc `0x92437a...c31d2c`; bsc `0xc8d5d4...e4ea51`; bsc `0xcfb450...223800`; bsc `0xf6af64...37aedb` | ⚠️ Unaudited |
| TeamTimeLock | governance | bsc | [`0x513d15...b6b036`](./contracts/bsc-56/0x513d1500c5a18816bfed5d78dc4859d831b6b036/) | ⚠️ Unaudited |
| Timelock | governance | bsc | [`0xf5d6fe...dae9fe`](./contracts/bsc-56/0xf5d6fed0f4735ff2036ce4be535bd32e77dae9fe/) | ⚠️ Unaudited |
| Trumpet | unknown | bsc | 2 deployments: bsc [`0x574a69...47e073`](./contracts/bsc-56/0x574a691d05eee825299024b2de584b208647e073/); bsc `0xb6a68a...7ef81c` | ⚠️ Unaudited |
| TrunkElephantLiquidityBridge | operational_periphery | bsc | 2 deployments: bsc [`0x470cb1...f1f1de`](./contracts/bsc-56/0x470cb1f8addb6476c420d0e35744842eeff1f1de/); bsc `0x7cb957...b64b04` | ⚠️ Unaudited |
| TRUNKSupportTreasuryStrategy | operational_periphery | bsc | [`0xcecba4...174587`](./contracts/bsc-56/0xcecba44ce9ee16948551e85864f3eef652174587/) | ⚠️ Unaudited |
| Turbine | unknown | bsc | 4 deployments: bsc [`0x69c714...2f2d86`](./contracts/bsc-56/0x69c714f868855ec3f24dfff0fd5f1805642f2d86/); bsc `0x6de7de...20a51d`; bsc `0x701821...dd874e`; bsc `0xb4fbd2...2c9db8` | ⚠️ Unaudited |
| TurbineProxy | unknown | bsc | 2 deployments: bsc [`0x2e390c...a2cb89`](./contracts/bsc-56/0x2e390c82116870f5f59b48cdd05ead3063a2cb89/); bsc `0x6beadd...42ded1` | ⚠️ Unaudited |
| UpCrowdPoolingFactory | registry | bsc | 4 deployments: bsc [`0x3e64f1...66ba9e`](./contracts/bsc-56/0x3e64f18168651d140aae57e0cf325874d066ba9e/); bsc `0x4f57f6...b0f270`; bsc `0x69f52a...56f0a0`; bsc `0xeceade...95dc32` | ⚠️ Unaudited |
| UserQuota | unknown | bsc | 2 deployments: bsc [`0x695d7b...3887d7`](./contracts/bsc-56/0x695d7be43ab10d9226d7dd1bae26ac1d883887d7/); bsc `0xae7186...6f0e12` | ⚠️ Unaudited |
| UserQuotaFactory | registry | bsc | [`0x2e467a...80cbdd`](./contracts/bsc-56/0x2e467aa3a9c33957dc34a04f64fb0be32f80cbdd/) | ⚠️ Unaudited |
| Vault | core_logic | bsc | 2 deployments: bsc [`0x545787...42d0fb`](./contracts/bsc-56/0x5457877200e4ed4c07acee8b274b0a65c042d0fb/); bsc `0x71b00a...5938ed` | ⚠️ Unaudited |
| vDODOMine | unknown | bsc | [`0x505a0f...ae945f`](./contracts/bsc-56/0x505a0f0f4956f7ca5839c5efd8ebdaf3d3ae945f/) | ⚠️ Unaudited |
| WBNB | unknown | bsc | [`0xbb4cdb...bc095c`](./contracts/bsc-56/0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c/) | ⚠️ Unaudited |
| WELEPHANT | unknown | bsc | 3 deployments: bsc [`0x241f21...87cdca`](./contracts/bsc-56/0x241f21df529c05289a00dafecea10139a287cdca/); bsc `0x60fc26...fd4de3`; bsc `0xa546d0...4d8e47` | ⚠️ Unaudited |
| WElephantRouterProxy | adapter | bsc | 3 deployments: bsc [`0x9ef34c...1880c2`](./contracts/bsc-56/0x9ef34c86cbba9b29d9deb9ea2e7f5efe001880c2/); bsc `0xb247c1...422d15`; bsc `0xba532f...3a963a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (193)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | bsc | `0x00c093...96b9f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x00f736...80053c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x029aa7...8851ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x03533f...7b5a74` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x04a774...cf2532` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x05588d...c284ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x07a7c3...e250c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x08406b...e60a04` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0990d4...8990ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x09fc7c...97f817` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0b3ddb...3ffe11` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0ccf30...2557db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x101d65...c49c7e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x107f56...ad096f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x11dfa8...198d61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x125593...8e95bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x13abe3...69bc6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x14bc99...483c53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x165ba8...02c820` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x16c1bc...51c8bc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x17ebc3...bd3aa7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1c5b10...b2c559` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1d2dde...5edf00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1e0d40...b5e30d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1e2c67...4e4f09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1eb6cc...fdbcee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2037b7...7657f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x20e64a...c179e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x213cc0...87321b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x22013e...a04b23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x221e4c...afd1e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2753cd...5fabd5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x278967...0ff468` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x29828b...76be02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2c6c72...aeb226` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2d5e8e...df943d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2ef706...1f1be6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2efff8...f0961c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3000d2...fa35e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x30c726...c07d22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x30d4d8...fc8732` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x30ead2...9c5b53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x31239b...a37de6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x31d23e...c87f73` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x34cb11...9fcf03` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x351738...afa644` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x366ad3...9fddcb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x368540...a80e5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3ac762...344af8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3aec8f...a3ecbd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3af527...303e85` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3b2a86...67563f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3b53aa...1bd4ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3b545b...547f6d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3c05bf...9582b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3c1173...660d54` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3c1336...d07ee2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3dfd47...e314d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3f2904...56cef5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3fcf08...88c074` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x410ea7...d244c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x442247...6f225d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x47a496...6180a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x48d5a4...f3cd50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x49a984...0de166` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4a8aef...af2115` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4b735d...fc1423` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4c4f80...853f2c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4c6471...5c09d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4e6465...ca71e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4fcd69...523a94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x501bce...63d04d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x51147b...326699` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5310df...dafcf9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x553a68...92eb18` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5687ce...967ca7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5c18ff...332171` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x601cc4...a79d22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x64f674...e2ff84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6576e3...fc783b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x674bb9...c7cae1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6839e2...a82dbf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x691c42...a18325` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6b5081...74c181` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6c9cd0...4693fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6dfaaa...7572d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6e7995...0f8434` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6f052e...722ef8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x708115...5813d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x70e61a...b1255f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x77197a...469def` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x781184...f913c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x799c6e...0d8515` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7a0d7b...68e5e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7a62f3...169b57` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7b68a2...278018` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7bcb41...7a0411` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7c073b...80022a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7c7990...5a5569` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7d908c...385043` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7f73de...d157f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7fcb0c...788b9d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x82e635...dbb3bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x86a109...298b2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x86b332...34fab8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x86c4da...690883` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8796f8...c48a21` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x88d32f...cc8e5f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8cde0d...af3085` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8ce535...f48da5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8cf0a5...ab5740` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8dad7d...d57d82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8e4842...8359d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8e5248...1a05e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9182fd...d38d8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x924c26...55a7fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x92dade...4e162b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x962b70...5a32ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9806ab...304dc6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9ab212...db9f81` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9b8ea5...cdb593` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9d3923...07af34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa03e0d...cbb598` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa0cb2d...1a260b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa70a8d...ebad79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa7473c...4040fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa86f31...36414a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xaaffad...b25f7c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xac0b6a...a06ffc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xaf0a36...cbb968` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xaf47e9...b23d8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xaf860f...eeab3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb2f8f2...d12cf3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb629ac...41f8f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xba8562...ce7b8a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbb947c...46a353` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbc99f6...ae517c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbee8d3...c2b702` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc04c9c...a9e48b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc274f0...f15eee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc342f8...6aabef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc48aa9...36c596` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc5b7fd...d8ae15` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc6f6f5...fb5302` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc6fa53...760968` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc7e2df...f97d8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc8b18b...c4e79a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc8fe24...fd5a53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc99426...dd47c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc9d455...b49099` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcc5dcf...dd21a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xceef79...e7fcd5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd0ae24...dc8fcc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd0ff24...c1016a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd13ab9...3dd813` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd1d231...455876` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd23112...f9c099` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd3477c...2fe4d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd35c54...943e43` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd4fb0d...6dd053` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd520a3...bdf834` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd5a7c9...feb529` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd6ac57...086135` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd72b35...a42707` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd92515...0e5268` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd96d9c...c17151` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdb964b...363bc6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdbd20f...c88852` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdcb503...52e264` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdd171a...0325d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xde3ea6...c4ffa9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdea860...353e05` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdfc11a...82ec33` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe18735...0e7c59` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe1cac5...75388d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe223ac...760ac2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe30dac...c1d3a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe5a7be...955660` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe5cbd9...c36c8a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe60e43...d9b32e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe9bcd0...d5f3f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xede909...7b8141` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf16cd6...8555c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf43910...36f6f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf60d3c...6f752a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf74d1e...1a61eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf7c101...f4d21d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf7f376...11c10e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf907e1...d9e806` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf90f26...0da6f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfbf9a2...aa0282` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfc3a92...8bde30` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfc5860...42bb5e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://sourcehat.com/audits/ElephantMoney) | SourceHat | Audit | 2021-11 | stale | Direct | contract_name | 22 | high |
| [PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf](https://elephant.money/media/PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xa94211...2a8ee4`](./contracts/bsc-56/0xa9421179abe9faa3ab01d9086ff6da0cd82a8ee4/) | AdministrativeNFTMinter | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01fb38...6ae484`](./contracts/bsc-56/0x01fb3809de463d114b66d7e428035196cd6ae484/) | AprForwardingTreasuryStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x99c919...ea8f05`](./contracts/bsc-56/0x99c9196f2bcb898f94a346b27cde7ce305ea8f05/) | BackedForwardingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb74e96...4ff897`](./contracts/bsc-56/0xb74e9677bdfeabbf33614d468a74b502bc4ff897/) | BNBReserveStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc4d9b0...6778b9`](./contracts/bsc-56/0xc4d9b08d0d7632f8e1a0f07f91e10f0c4a6778b9/) | BotGasStation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2a539a...b1f522`](./contracts/bsc-56/0x2a539a4189b23c15a7ccfdeadb56c62b8cb1f522/) | BSWMinting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2e74b4...41858c`](./contracts/bsc-56/0x2e74b429836d7357348b520139a3a6145441858c/) | BTCBTurbine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x029a89...fb606a`](./contracts/bsc-56/0x029a8915cb63cbb28dcd1195ce6a00596bfb606a/) | BulkNFTMinter | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4187aa...113634`](./contracts/bsc-56/0x4187aab02f9e3abdeb9a6cc71397a7a839113634/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xff739f...7eaff3`](./contracts/bsc-56/0xff739f9743e14f8846452690f669f730b97eaff3/) | CustomMintableERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1a6a71...7e68a5`](./contracts/bsc-56/0x1a6a71f07d85f3aa76baa5616a7bda3ccf7e68a5/) | Depot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x239090...5e2a66`](./contracts/bsc-56/0x2390901198838aabbb383ce0ac215ad9e05e2a66/) | ElephantMarketPlace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb92afe...ab3198`](./contracts/bsc-56/0xb92afedc8f8618be4198fbe5d97adb7c60ab3198/) | ElephantMoneyUnlimitedNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2286be...6a544a`](./contracts/bsc-56/0x2286be1974995b2568cd9e82727fc22bbb6a544a/) | ElephantNFTBulkSender | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x811d1b...f1da38`](./contracts/bsc-56/0x811d1b27a18383b7421bdde1cb81c55609f1da38/) | ElephantNFTMinter | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x95beb1...2706ce`](./contracts/bsc-56/0x95beb12924e565e9b1f57d86d8fd848fa52706ce/) | ElephantNFTStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4d8c58...eb9eff`](./contracts/bsc-56/0x4d8c5882110909505faa8407d168a7b7a0eb9eff/) | ElephantNFTTraitTracker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbf522f...5ab1cc`](./contracts/bsc-56/0xbf522ff5c3d1820ac7d54f580017899a7c5ab1cc/) | ElephantRouterProxy | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2689e3...8c5efd`](./contracts/bsc-56/0x2689e35a22b750c046faeb892eb3868a408c5efd/) | ElephantYieldEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xba428f...5168d8`](./contracts/bsc-56/0xba428fc3c5ce457c236869787c26f725ff5168d8/) | ERC20MineV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3202b2...ec8607`](./contracts/bsc-56/0x3202b26f60ab51731f7e9a88262e12cfe6ec8607/) | FactoryViewer | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa3473f...ab3281`](./contracts/bsc-56/0xa3473fcea7c6cbdfad6326351e07d93f1bab3281/) | FarmEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x333641...1c301f`](./contracts/bsc-56/0x33364198d93648d3e976aa8625097567791c301f/) | FilterERC721V1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x202b8d...8576ab`](./contracts/bsc-56/0x202b8d57709a03d1f9a78c9a034786f5fb8576ab/) | FlowEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9542f4...43b419`](./contracts/bsc-56/0x9542f458b7003e7c8e938c6a87161d410243b419/) | Fragment | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5c5778...d436ae`](./contracts/bsc-56/0x5c5778073e9207ce1479276724fc31757ed436ae/) | FuturesActionVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x155479...d7c791`](./contracts/bsc-56/0x155479d35a6d544268db8f5919c24c1b6cd7c791/) | FuturesEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9ae4de...8ff408`](./contracts/bsc-56/0x9ae4de43feb64e85698dd3c66b0666448a8ff408/) | FuturesNFTMigrationVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa8e3ee...535b3e`](./contracts/bsc-56/0xa8e3ee88a52644edfd50d4f5527641f5f0535b3e/) | FuturesRDFVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xaeb9b3...77fcd2`](./contracts/bsc-56/0xaeb9b31b9728a2c3d4df59748442d27f2277fcd2/) | FuturesVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3c5509...c830a5`](./contracts/bsc-56/0x3c5509cc5212c62f77e36126efec7adb75c830a5/) | InitializableERC1155 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbfa00a...678ff7`](./contracts/bsc-56/0xbfa00a7d60df1a7fe4ac3f900d59a98622678ff7/) | InvestorMine | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x36b673...6110df`](./contracts/bsc-56/0x36b6731ec0992a1c042e9354f85e4f9a586110df/) | LockedTokenVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x706d4d...4f40d0`](./contracts/bsc-56/0x706d4d4e49a2608d2e0088075b67da5dbc4f40d0/) | MarketingTimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc25286...af97b8`](./contracts/bsc-56/0xc25286ef3bae3f6fe2d6d0a6e2acad0301af97b8/) | MysteryBoxV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0dd95c...3a1deb`](./contracts/bsc-56/0x0dd95ce685b8b101c52b43b203c351cf2d3a1deb/) | NFTCollateralVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x22a46d...32c150`](./contracts/bsc-56/0x22a46d2da104b9bfc8c6b2dfd2a8c0632432c150/) | NFTMarketplaceHelper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2aefa3...d8ce12`](./contracts/bsc-56/0x2aefa3eb03f12eb93d6868fc5cbb250b9cd8ce12/) | NFTSalesTracker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x28fafc...5679e3`](./contracts/bsc-56/0x28fafc6ff614e6c2d7ca95959a3c0881fd5679e3/) | PcsPeriodicTwapOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5606ee...326d3c`](./contracts/bsc-56/0x5606ee12d741716c260fda2f6c89efdf60326d3c/) | PcsSnapshotTwapOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6b5eeb...90e567`](./contracts/bsc-56/0x6b5eeb214a87d1d296652dec8c48bbdd1590e567/) | PegSupportTreasuryStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd23d87...d412ac`](./contracts/bsc-56/0xd23d87a44977b0d77a8f8ca70e037b9001d412ac/) | PerformanceFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x060044...d96162`](./contracts/bsc-56/0x0600445ac4e20f1668556e0e058b3dc369d96162/) | PerformanceFundV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7c062b...c5fe72`](./contracts/bsc-56/0x7c062b9c584fa6ec2504270790d38240a2c5fe72/) | RandomGenerator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6248d9...e1ea4a`](./contracts/bsc-56/0x6248d9a3dff17dcda92141aa1e8f1e9d6fe1ea4a/) | ReferralData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x29a833...a45c06`](./contracts/bsc-56/0x29a8336a58e9b65b5bbc6f626b5b855cdaa45c06/) | SafeElephantNFTMinter | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7c4dad...b914b7`](./contracts/bsc-56/0x7c4dad1b249efdc998f3569c8537866639b914b7/) | StampedeEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x24f1c7...f99c58`](./contracts/bsc-56/0x24f1c78008afea4e1a2639db62a2b9d17ef99c58/) | StampedeMigrationEngine | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xec8c93...6d7305`](./contracts/bsc-56/0xec8c93d29418b4d3e13edb18cc6dbc24606d7305/) | SuperCharger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x513d15...b6b036`](./contracts/bsc-56/0x513d1500c5a18816bfed5d78dc4859d831b6b036/) | TeamTimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x574a69...47e073`](./contracts/bsc-56/0x574a691d05eee825299024b2de584b208647e073/) | Trumpet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x470cb1...f1f1de`](./contracts/bsc-56/0x470cb1f8addb6476c420d0e35744842eeff1f1de/) | TrunkElephantLiquidityBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcecba4...174587`](./contracts/bsc-56/0xcecba44ce9ee16948551e85864f3eef652174587/) | TRUNKSupportTreasuryStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x69c714...2f2d86`](./contracts/bsc-56/0x69c714f868855ec3f24dfff0fd5f1805642f2d86/) | Turbine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2e390c...a2cb89`](./contracts/bsc-56/0x2e390c82116870f5f59b48cdd05ead3063a2cb89/) | TurbineProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2e467a...80cbdd`](./contracts/bsc-56/0x2e467aa3a9c33957dc34a04f64fb0be32f80cbdd/) | UserQuotaFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x545787...42d0fb`](./contracts/bsc-56/0x5457877200e4ed4c07acee8b274b0a65c042d0fb/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x241f21...87cdca`](./contracts/bsc-56/0x241f21df529c05289a00dafecea10139a287cdca/) | WELEPHANT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9ef34c...1880c2`](./contracts/bsc-56/0x9ef34c86cbba9b29d9deb9ea2e7f5efe001880c2/) | WElephantRouterProxy | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 133 |
| upstream | 68 |
| standard_library | 6 |
| needs_review | 139 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=22

Zero-match audit list:

- [4641] PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf

Fork inheritance lineage and inherited audits are included when available.
