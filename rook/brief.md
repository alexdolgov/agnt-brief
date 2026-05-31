# Agentic Audit Brief: Rook

⚠️ Lifecycle status: DEAD - TVL changed 13.0% over 90 days

## Project Overview

- Project: Rook (`rook`)
- Lifecycle: dead (Tier 0, 99.8% below peak)
- Generated: 2026-05-31T10:29:32.941Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: ethereum
- Contract surface: 74 unique implementations (175 raw deployments)
- DeFi Llama TVL: $1,449,666.24
- On-chain TVL (included contracts): $6,793,617.06
- TVL by chain: Ethereum $6,793,617.06

## Project Description

Rook is a decentralized exchange and liquidity protocol that enables cross-chain asset transfers and trading. It provides tokenized representations of Bitcoin, Bitcoin Cash, and Zcash on Ethereum, along with liquidity pools and vaults for efficient trading and yield generation.

### Architecture

The Rook family shares a common token logic implementation (RenERC20LogicV1) for its bridged assets, and the Unitroller contract likely serves as a comptroller for the liquidity pools, managing risk and incentives. The HidingVaultNFTProxy interacts with the liquidity pools to manage user positions.

## Audit Coverage Summary

- Verified implementations audited: 0/66 (0.0%)
- Verified + Unaudited implementations: 66
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 74
- Raw deployments: 175
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $6,793,617.06
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $6,793,617.06 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (66)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| RenERC20LogicV1 | token | ethereum | 13 deployments: ethereum [`0x0a2d36...8c1bee`](./contracts/ethereum-1/0x0a2d368e4eecbd515033ba29253909f2978c1bee/); ethereum `0x1c5db5...0b37c2`; ethereum `0x3832d2...0671a7`; ethereum `0x459086...fef5bf`; ethereum `0x52d87f...2cb641`; ethereum `0x82e728...966c8e`; ethereum `0x93e47e...5340ba`; ethereum `0xa07413...77f8ca`; ethereum `0xa2f0a9...8bf05b`; ethereum `0xd5147b...9276f5`; ethereum `0xe2d6cc...037e80`; ethereum `0xe3cb48...687f80`; ethereum `0xeb4c27...6bb27d` | ⚠️ Unaudited |
| RookToken | token | ethereum | [`0xfa5047...313d4a`](./contracts/ethereum-1/0xfa5047c9c78b8877af97bdcb85db743fd7313d4a/) | ⚠️ Unaudited |
| DarknodeRewardVault | core_logic | ethereum | [`0x880407...3cd588`](./contracts/ethereum-1/0x880407c9cd119bef48b1821cdfc434e3ca3cd588/) | ⚠️ Unaudited |
| BasicAdapter | adapter | ethereum | 5 deployments: ethereum [`0x0807d0...41b7c3`](./contracts/ethereum-1/0x0807d0810714d85b49e40349a3002f06e841b7c3/); ethereum `0x32666b...b96e80`; ethereum `0x500dc5...30e090`; ethereum `0x67fc89...c365fa`; ethereum `0xae65b0...7f2b1a` | ⚠️ Unaudited |
| BCH_DAI_Reserve | unknown | ethereum | [`0xa2d578...b69772`](./contracts/ethereum-1/0xa2d578e21f430d7469cbc135952dfe5c34b69772/) | ⚠️ Unaudited |
| BCHGateway | unknown | ethereum | [`0xcabb5e...e1a461`](./contracts/ethereum-1/0xcabb5e9e48f22cb6736d5f5cd3f1b652d7e1a461/) | ⚠️ Unaudited |
| BCHShifter | unknown | ethereum | 3 deployments: ethereum [`0x2095be...0de6cd`](./contracts/ethereum-1/0x2095be01f9a30a8ac8302245fdfa524fb20de6cd/); ethereum `0xa76bea...021a8c`; ethereum `0xe0926b...cfe771` | ⚠️ Unaudited |
| BTC_DAI_Reserve | unknown | ethereum | 3 deployments: ethereum [`0x11716a...aee110`](./contracts/ethereum-1/0x11716a1f51fad053e9b43da1025e8ace32aee110/); ethereum `0x1c0fdf...930cdd`; ethereum `0x2c4ce4...e292f6` | ⚠️ Unaudited |
| BTCShifter | unknown | ethereum | 2 deployments: ethereum [`0x1258d7...61902a`](./contracts/ethereum-1/0x1258d7ff385d1d81017d4a3d464c02f74c61902a/); ethereum `0x2f4657...2d0cd6` | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | [`0x3d9819...c9cd3b`](./contracts/ethereum-1/0x3d9819210a31b4961b30ef54be2aed79b9c9cd3b/) | ⚠️ Unaudited |
| DarknodePayment | unknown | ethereum | 9 deployments: ethereum [`0x098e17...c370b9`](./contracts/ethereum-1/0x098e1708b920efbdd7afe33adb6a4cba30c370b9/); ethereum `0x18e610...1eda41`; ethereum `0x376d83...3e4faa`; ethereum `0x43f370...788e39`; ethereum `0x50190f...4a9123`; ethereum `0x5a7802...0a8b6a`; ethereum `0x989b7c...2ddb10`; ethereum `0xab61ac...82d900`; ethereum `0xdf2a33...085dec` | ⚠️ Unaudited |
| DarknodePaymentMigrator | periphery | ethereum | [`0x085d9b...05f54d`](./contracts/ethereum-1/0x085d9b18be81f2b0c35086972caa46177205f54d/) | ⚠️ Unaudited |
| DarknodePaymentStore | unknown | ethereum | 6 deployments: ethereum [`0x311999...effe49`](./contracts/ethereum-1/0x311999ee72b5826d664fd4f3ac09c0c462effe49/); ethereum `0x731ea4...cbe9d2`; ethereum `0x7546db...316677`; ethereum `0x9c5b07...84742b`; ethereum `0xc9ebe9...fcdc39`; ethereum `0xe33417...be23e7` | ⚠️ Unaudited |
| DarknodeRegistry | registry | ethereum | 3 deployments: ethereum [`0x379900...341c2f`](./contracts/ethereum-1/0x3799006a87fde3ccfc7666b3e6553b03ed341c2f/); ethereum `0xa1eb04...199fa9`; ethereum `0xe0a0fc...fe949a` | ⚠️ Unaudited |
| DarknodeRegistryForwarder | registry | ethereum | [`0xb03201...3058fa`](./contracts/ethereum-1/0xb032012073765a74f8f8fe2e6685ad70253058fa/) | ⚠️ Unaudited |
| DarknodeRegistryLogicV1 | registry | ethereum | 7 deployments: ethereum [`0x2d7b6c...054f0a`](./contracts/ethereum-1/0x2d7b6c95afeffa50c068d50f89c5c0014e054f0a/); ethereum `0x308ecd...49fbb7`; ethereum `0x33b53a...bcf140`; ethereum `0x5edb23...85ef09`; ethereum `0x7c08ff...d693dd`; ethereum `0x986382...ce8863`; ethereum `0xfbd449...59b35c` | ⚠️ Unaudited |
| DarknodeRegistryLogicV2 | registry | ethereum | [`0x7f9822...4acecb`](./contracts/ethereum-1/0x7f98228b464101a3b19bf1cc337a9b88c84acecb/) | ⚠️ Unaudited |
| DarknodeRegistryProxy | registry | ethereum | 3 deployments: ethereum [`0x09e343...017405`](./contracts/ethereum-1/0x09e3435c7a92d3296d1221161cb0cbaafa017405/); ethereum `0x8adb36...e96cbf`; ethereum `0x98525d...13111a` | ⚠️ Unaudited |
| DarknodeRegistryStore | registry | ethereum | 8 deployments: ethereum [`0x14add4...98897a`](./contracts/ethereum-1/0x14add4ca443e7445a3418bb572d6079bfc98897a/); ethereum `0x4b636f...1d6013`; ethereum `0x4c2f05...a47579`; ethereum `0x542a45...739d34`; ethereum `0x60ab11...1f8782`; ethereum `0x82072f...76bc4e`; ethereum `0xac2381...4470c5`; ethereum `0xe8d0c5...0c48b1` | ⚠️ Unaudited |
| DarknodeRegistryV1ToV2Preupgrader | registry | ethereum | 2 deployments: ethereum [`0x1e69da...c38f1e`](./contracts/ethereum-1/0x1e69da530e2051cd08259221ef1dacc703c38f1e/); ethereum `0xb0c560...07c3a7` | ⚠️ Unaudited |
| DarknodeRegistryV1ToV2Upgrader | registry | ethereum | [`0x5945bb...9cfaa5`](./contracts/ethereum-1/0x5945bbe065b7a723fd4cf9485a726cb5529cfaa5/) | ⚠️ Unaudited |
| DarknodeSlasher | unknown | ethereum | 6 deployments: ethereum [`0x04ed8f...2962f2`](./contracts/ethereum-1/0x04ed8f5730dd4d2b2064cdb6a5bffc26a72962f2/); ethereum `0x4e85ac...22b28d`; ethereum `0x64512f...754c0e`; ethereum `0x7add7e...678b16`; ethereum `0x966b2d...3270b5`; ethereum `0xd33cfe...f559aa` | ⚠️ Unaudited |
| DEX | unknown | ethereum | 4 deployments: ethereum [`0x8ff192...a8373a`](./contracts/ethereum-1/0x8ff192e634ef6463be60792a384e5f1219a8373a/); ethereum `0xbd0c94...6985b7`; ethereum `0xe4ec27...a00f80`; ethereum `0xf65d91...768594` | ⚠️ Unaudited |
| DEXAdapter | adapter | ethereum | 3 deployments: ethereum [`0x9992e9...8d3a58`](./contracts/ethereum-1/0x9992e9341e496be5bc8f424dfc1f78a7388d3a58/); ethereum `0xaf0efc...5f8042`; ethereum `0xf218f9...176ad5` | ⚠️ Unaudited |
| GatewayLogicV1 | unknown | ethereum | 5 deployments: ethereum [`0x37a486...62ef93`](./contracts/ethereum-1/0x37a4860728e292e5852b215c46dbe7a18862ef93/); ethereum `0x402ec5...6460d6`; ethereum `0x85bde7...76e5ae`; ethereum `0xc3ac15...676e3a`; ethereum `0xd4d496...fa9f99` | ⚠️ Unaudited |
| GatewayRegistry | registry | ethereum | 3 deployments: ethereum [`0x503670...67a24e`](./contracts/ethereum-1/0x503670ec851c55ec1acfb5230192da921467a24e/); ethereum `0x817d2e...ed3400`; ethereum `0xe80d34...c54ddd` | ⚠️ Unaudited |
| GetOperatorDarknodes | unknown | ethereum | [`0x4e27a3...b8b5f0`](./contracts/ethereum-1/0x4e27a3e21e747cf875ad5829b6d9cb7700b8b5f0/) | ⚠️ Unaudited |
| HidingGame2Distributor | operational_periphery | ethereum | [`0x8d5541...df184c`](./contracts/ethereum-1/0x8d5541db390a394d01a5eb03fc8160ba66df184c/) | ⚠️ Unaudited |
| HidingGame3Distributor | operational_periphery | ethereum | [`0xc45bdd...12be17`](./contracts/ethereum-1/0xc45bdd7e82cd72f4cb138aeeb175599e6e12be17/) | ⚠️ Unaudited |
| HidingGame4Distributor | operational_periphery | ethereum | [`0x25d27d...67b139`](./contracts/ethereum-1/0x25d27d026ab896fad8c8080f5b0e3fbd6667b139/) | ⚠️ Unaudited |
| HidingGameDistributor | operational_periphery | ethereum | [`0xd81e97...5311fd`](./contracts/ethereum-1/0xd81e97075dbda444ef65db3a96706c679b5311fd/) | ⚠️ Unaudited |
| HidingVaultNFT | core_logic | ethereum | [`0xe2ad58...ee672e`](./contracts/ethereum-1/0xe2ad581fc01434ee426bb3f471c4cb0317ee672e/) | ⚠️ Unaudited |
| KeeperDistributor | operational_periphery | ethereum | [`0xf55a73...6a9026`](./contracts/ethereum-1/0xf55a73a366f1f9f03cef4cc10d3cd21e5c6a9026/) | ⚠️ Unaudited |
| LiquidityPoolV2 | core_logic | ethereum | [`0x35ffd6...5e40e5`](./contracts/ethereum-1/0x35ffd6e268610e764ff6944d07760d0efe5e40e5/) | ⚠️ Unaudited |
| LiquidityPoolV4 | core_logic | ethereum | [`0x4f868c...6275e2`](./contracts/ethereum-1/0x4f868c1aa37fcf307ab38d215382e88fca6275e2/) | ⚠️ Unaudited |
| LPDistributor | operational_periphery | ethereum | [`0xcadf67...f2f75c`](./contracts/ethereum-1/0xcadf6735144d1d7f1a875a5561555cba5df2f75c/) | ⚠️ Unaudited |
| LPPreDistributor | operational_periphery | ethereum | [`0xaef38e...effe71`](./contracts/ethereum-1/0xaef38e99b9db5e96cab3ce5cbc29a3a1dfeffe71/) | ⚠️ Unaudited |
| LPQ22Distributor | operational_periphery | ethereum | [`0xff1624...e8a356`](./contracts/ethereum-1/0xff1624c7287e22f3fce51ea85dbe9db332e8a356/) | ⚠️ Unaudited |
| LPQ2Distributor | operational_periphery | ethereum | [`0x2777b7...5dd6a1`](./contracts/ethereum-1/0x2777b798fdfb906d42b89cf8f9de541db05dd6a1/) | ⚠️ Unaudited |
| LPQ3Distributor | operational_periphery | ethereum | [`0x59ff89...e4ea2d`](./contracts/ethereum-1/0x59ff8975c813c1e70bdf2bcb8c02886928e4ea2d/) | ⚠️ Unaudited |
| MintGatewayLogicV1 | unknown | ethereum | 5 deployments: ethereum [`0x05387a...c6b1aa`](./contracts/ethereum-1/0x05387a10bb3ef789b6c2a9ce2d6c21d5a8c6b1aa/); ethereum `0x236284...9c0783`; ethereum `0x4a1448...392029`; ethereum `0xd7d7de...5ab874`; ethereum `0xed7d08...6bf1bf` | ⚠️ Unaudited |
| MintGatewayLogicV2 | unknown | ethereum | 5 deployments: ethereum [`0x1a5628...ce22b4`](./contracts/ethereum-1/0x1a562822f99d11e8f993f6bcda86277123ce22b4/); ethereum `0xc3bbd5...6e122d`; ethereum `0xcc4ff5...c3c52f`; ethereum `0xd0da0d...66eedd`; ethereum `0xe4b679...43ee71` | ⚠️ Unaudited |
| MintGatewayUpgrader | unknown | ethereum | 2 deployments: ethereum [`0x137730...b04804`](./contracts/ethereum-1/0x13773093cdad89e8e1615f581a37c7eeabb04804/); ethereum `0x8d4565...5ff8a5` | ⚠️ Unaudited |
| Orderbook | unknown | ethereum | [`0x6b8bb1...2598e0`](./contracts/ethereum-1/0x6b8bb175c092de7d81860b18db360b734a2598e0/) | ⚠️ Unaudited |
| Protocol | unknown | ethereum | [`0x7a43b0...51ee52`](./contracts/ethereum-1/0x7a43b06ed73fcd3707f1a681ca645d758a51ee52/) | ⚠️ Unaudited |
| ProtocolLogic | unknown | ethereum | 3 deployments: ethereum [`0x547516...bdbadf`](./contracts/ethereum-1/0x54751636e04092ee76f25b2b3c50dcdcfebdbadf/); ethereum `0xa638f3...8c94b4`; ethereum `0xef4de0...f6a85b` | ⚠️ Unaudited |
| ProtocolLogicV1 | unknown | ethereum | 6 deployments: ethereum [`0x637278...2447c8`](./contracts/ethereum-1/0x637278bf72127c76d98d9a9be36d2121fb2447c8/); ethereum `0x8b49f2...915de0`; ethereum `0xb227d5...769e3f`; ethereum `0xc25167...345b66`; ethereum `0xee5d2e...9f9c0b`; ethereum `0xf61e97...275144` | ⚠️ Unaudited |
| ProtocolProxy | unknown | ethereum | 2 deployments: ethereum [`0x4d880b...69b47a`](./contracts/ethereum-1/0x4d880bb27b1cd850d4bc331b1654af01bd69b47a/); ethereum `0xf15ba8...f4018b` | ⚠️ Unaudited |
| RenERC20Proxy | token | ethereum | [`0xee2740...7894a7`](./contracts/ethereum-1/0xee274080b8389ac5add6499df348b653447894a7/) | ⚠️ Unaudited |
| RenExAtomicSwapper | adapter | ethereum | [`0xc3fed6...a01cc3`](./contracts/ethereum-1/0xc3fed6eb39178a541d274e6fc748d48f0ca01cc3/) | ⚠️ Unaudited |
| RenExBalances | unknown | ethereum | 2 deployments: ethereum [`0x5ec18b...a77efd`](./contracts/ethereum-1/0x5ec18b477b20af940807b5478db5a64cd4a77efd/); ethereum `0x9636f9...0ff2dc` | ⚠️ Unaudited |
| RenExBrokerVerifier | periphery | ethereum | [`0x31a0d1...d2e383`](./contracts/ethereum-1/0x31a0d1a199631d244761eeba67e8501296d2e383/) | ⚠️ Unaudited |
| RenExSettlement | unknown | ethereum | [`0x908262...2b21e1`](./contracts/ethereum-1/0x908262de0366e42d029b0518d5276762c92b21e1/) | ⚠️ Unaudited |
| RenExTokens | token | ethereum | [`0x7cade4...744ec4`](./contracts/ethereum-1/0x7cade4fbc8761817bb62a080733d1b6cad744ec4/) | ⚠️ Unaudited |
| RenProxyAdmin | governance | ethereum | 6 deployments: ethereum [`0x044906...0ad01c`](./contracts/ethereum-1/0x04490672449654b1d9ad6f0aae14e6e4c60ad01c/); ethereum `0x294b56...4985b8`; ethereum `0x3840c0...1cdfaf`; ethereum `0x521471...074906`; ethereum `0xdf1d8e...530145`; ethereum `0xfc3df9...09bfb5` | ⚠️ Unaudited |
| RenToken | token | ethereum | [`0x8e0679...eb40ed`](./contracts/ethereum-1/0x8e0679d0d4691ea345fb8c2aec9bf9c1d3eb40ed/) | ⚠️ Unaudited |
| RepublicToken | token | ethereum | [`0x21c482...9fcebd`](./contracts/ethereum-1/0x21c482f153d0317fe85c60be1f7fa079019fcebd/) | ⚠️ Unaudited |
| SettlementRegistry | registry | ethereum | [`0x119da7...551036`](./contracts/ethereum-1/0x119da7a8500ade0766f758d934808179dc551036/) | ⚠️ Unaudited |
| ShifterRegistry | registry | ethereum | 2 deployments: ethereum [`0x1d4713...876cac`](./contracts/ethereum-1/0x1d4713b74e79a3696722aebe05de976979876cac/); ethereum `0x5d9bf2...ac9e6f` | ⚠️ Unaudited |
| Timelock | governance | ethereum | [`0xfe43c3...314fdb`](./contracts/ethereum-1/0xfe43c3a01102eda295333f5ad6cc747f03314fdb/) | ⚠️ Unaudited |
| zBCH | unknown | ethereum | 3 deployments: ethereum [`0x0e68ee...8f1a73`](./contracts/ethereum-1/0x0e68ee104c768078cb3624396aaf9285c58f1a73/); ethereum `0x466dd9...953ff1`; ethereum `0x4b23eb...3e5f29` | ⚠️ Unaudited |
| zBTC | unknown | ethereum | 2 deployments: ethereum [`0x88c64a...78bb7d`](./contracts/ethereum-1/0x88c64a7d2ecc882d558dd16abc1537515a78bb7d/); ethereum `0xc04956...477fb9` | ⚠️ Unaudited |
| ZEC_DAI_Reserve | unknown | ethereum | 5 deployments: ethereum [`0x7b3b73...407bf9`](./contracts/ethereum-1/0x7b3b7383bc88b645bdefd7624d9c6fb981407bf9/); ethereum `0x96f0da...c63358`; ethereum `0xa08b74...a7839c`; ethereum `0xc28aa4...aa90bb`; ethereum `0xdbd93a...6fa716` | ⚠️ Unaudited |
| ZECGateway | unknown | ethereum | [`0x52c883...ada49d`](./contracts/ethereum-1/0x52c883b626637ae7c2b93909ad40c24676ada49d/) | ⚠️ Unaudited |
| ZECShifter | unknown | ethereum | 2 deployments: ethereum [`0x2b59ef...461d5b`](./contracts/ethereum-1/0x2b59ef3eb28c7388c7ec69d43a9b8e585c461d5b/); ethereum `0x8cb5e7...a9599a` | ⚠️ Unaudited |
| zZEC | unknown | ethereum | 2 deployments: ethereum [`0x09aa07...f65295`](./contracts/ethereum-1/0x09aa07ae98fde91d66775c13107e9f082ff65295/); ethereum `0x8dd894...a9d719` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x1d1d44...8e2c1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2d7e24...6f7f5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4012ef...d8f4f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x48ace4...642524` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5be0e8...4fa359` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9d6e6e...b11198` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xab5ebc...3a5a6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe175a2...490674` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0a2d36...8c1bee`](./contracts/ethereum-1/0x0a2d368e4eecbd515033ba29253909f2978c1bee/) | RenERC20LogicV1 | token | $6,724,542.88 | Verified native implementation with $6,724,542.88 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfa5047...313d4a`](./contracts/ethereum-1/0xfa5047c9c78b8877af97bdcb85db743fd7313d4a/) | RookToken | token | $68,165.57 | Verified native implementation with $68,165.57 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x880407...3cd588`](./contracts/ethereum-1/0x880407c9cd119bef48b1821cdfc434e3ca3cd588/) | DarknodeRewardVault | core_logic | $908.60 | Verified native implementation with $908.60 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0807d0...41b7c3`](./contracts/ethereum-1/0x0807d0810714d85b49e40349a3002f06e841b7c3/) | BasicAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2d578...b69772`](./contracts/ethereum-1/0xa2d578e21f430d7469cbc135952dfe5c34b69772/) | BCH_DAI_Reserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcabb5e...e1a461`](./contracts/ethereum-1/0xcabb5e9e48f22cb6736d5f5cd3f1b652d7e1a461/) | BCHGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2095be...0de6cd`](./contracts/ethereum-1/0x2095be01f9a30a8ac8302245fdfa524fb20de6cd/) | BCHShifter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11716a...aee110`](./contracts/ethereum-1/0x11716a1f51fad053e9b43da1025e8ace32aee110/) | BTC_DAI_Reserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1258d7...61902a`](./contracts/ethereum-1/0x1258d7ff385d1d81017d4a3d464c02f74c61902a/) | BTCShifter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x098e17...c370b9`](./contracts/ethereum-1/0x098e1708b920efbdd7afe33adb6a4cba30c370b9/) | DarknodePayment | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x085d9b...05f54d`](./contracts/ethereum-1/0x085d9b18be81f2b0c35086972caa46177205f54d/) | DarknodePaymentMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x311999...effe49`](./contracts/ethereum-1/0x311999ee72b5826d664fd4f3ac09c0c462effe49/) | DarknodePaymentStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x379900...341c2f`](./contracts/ethereum-1/0x3799006a87fde3ccfc7666b3e6553b03ed341c2f/) | DarknodeRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb03201...3058fa`](./contracts/ethereum-1/0xb032012073765a74f8f8fe2e6685ad70253058fa/) | DarknodeRegistryForwarder | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d7b6c...054f0a`](./contracts/ethereum-1/0x2d7b6c95afeffa50c068d50f89c5c0014e054f0a/) | DarknodeRegistryLogicV1 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f9822...4acecb`](./contracts/ethereum-1/0x7f98228b464101a3b19bf1cc337a9b88c84acecb/) | DarknodeRegistryLogicV2 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09e343...017405`](./contracts/ethereum-1/0x09e3435c7a92d3296d1221161cb0cbaafa017405/) | DarknodeRegistryProxy | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14add4...98897a`](./contracts/ethereum-1/0x14add4ca443e7445a3418bb572d6079bfc98897a/) | DarknodeRegistryStore | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e69da...c38f1e`](./contracts/ethereum-1/0x1e69da530e2051cd08259221ef1dacc703c38f1e/) | DarknodeRegistryV1ToV2Preupgrader | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5945bb...9cfaa5`](./contracts/ethereum-1/0x5945bbe065b7a723fd4cf9485a726cb5529cfaa5/) | DarknodeRegistryV1ToV2Upgrader | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04ed8f...2962f2`](./contracts/ethereum-1/0x04ed8f5730dd4d2b2064cdb6a5bffc26a72962f2/) | DarknodeSlasher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ff192...a8373a`](./contracts/ethereum-1/0x8ff192e634ef6463be60792a384e5f1219a8373a/) | DEX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9992e9...8d3a58`](./contracts/ethereum-1/0x9992e9341e496be5bc8f424dfc1f78a7388d3a58/) | DEXAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37a486...62ef93`](./contracts/ethereum-1/0x37a4860728e292e5852b215c46dbe7a18862ef93/) | GatewayLogicV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x503670...67a24e`](./contracts/ethereum-1/0x503670ec851c55ec1acfb5230192da921467a24e/) | GatewayRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e27a3...b8b5f0`](./contracts/ethereum-1/0x4e27a3e21e747cf875ad5829b6d9cb7700b8b5f0/) | GetOperatorDarknodes | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d5541...df184c`](./contracts/ethereum-1/0x8d5541db390a394d01a5eb03fc8160ba66df184c/) | HidingGame2Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc45bdd...12be17`](./contracts/ethereum-1/0xc45bdd7e82cd72f4cb138aeeb175599e6e12be17/) | HidingGame3Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25d27d...67b139`](./contracts/ethereum-1/0x25d27d026ab896fad8c8080f5b0e3fbd6667b139/) | HidingGame4Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd81e97...5311fd`](./contracts/ethereum-1/0xd81e97075dbda444ef65db3a96706c679b5311fd/) | HidingGameDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe2ad58...ee672e`](./contracts/ethereum-1/0xe2ad581fc01434ee426bb3f471c4cb0317ee672e/) | HidingVaultNFT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf55a73...6a9026`](./contracts/ethereum-1/0xf55a73a366f1f9f03cef4cc10d3cd21e5c6a9026/) | KeeperDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35ffd6...5e40e5`](./contracts/ethereum-1/0x35ffd6e268610e764ff6944d07760d0efe5e40e5/) | LiquidityPoolV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f868c...6275e2`](./contracts/ethereum-1/0x4f868c1aa37fcf307ab38d215382e88fca6275e2/) | LiquidityPoolV4 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcadf67...f2f75c`](./contracts/ethereum-1/0xcadf6735144d1d7f1a875a5561555cba5df2f75c/) | LPDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaef38e...effe71`](./contracts/ethereum-1/0xaef38e99b9db5e96cab3ce5cbc29a3a1dfeffe71/) | LPPreDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff1624...e8a356`](./contracts/ethereum-1/0xff1624c7287e22f3fce51ea85dbe9db332e8a356/) | LPQ22Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2777b7...5dd6a1`](./contracts/ethereum-1/0x2777b798fdfb906d42b89cf8f9de541db05dd6a1/) | LPQ2Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59ff89...e4ea2d`](./contracts/ethereum-1/0x59ff8975c813c1e70bdf2bcb8c02886928e4ea2d/) | LPQ3Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05387a...c6b1aa`](./contracts/ethereum-1/0x05387a10bb3ef789b6c2a9ce2d6c21d5a8c6b1aa/) | MintGatewayLogicV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a5628...ce22b4`](./contracts/ethereum-1/0x1a562822f99d11e8f993f6bcda86277123ce22b4/) | MintGatewayLogicV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x137730...b04804`](./contracts/ethereum-1/0x13773093cdad89e8e1615f581a37c7eeabb04804/) | MintGatewayUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b8bb1...2598e0`](./contracts/ethereum-1/0x6b8bb175c092de7d81860b18db360b734a2598e0/) | Orderbook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x547516...bdbadf`](./contracts/ethereum-1/0x54751636e04092ee76f25b2b3c50dcdcfebdbadf/) | ProtocolLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x637278...2447c8`](./contracts/ethereum-1/0x637278bf72127c76d98d9a9be36d2121fb2447c8/) | ProtocolLogicV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d880b...69b47a`](./contracts/ethereum-1/0x4d880bb27b1cd850d4bc331b1654af01bd69b47a/) | ProtocolProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3fed6...a01cc3`](./contracts/ethereum-1/0xc3fed6eb39178a541d274e6fc748d48f0ca01cc3/) | RenExAtomicSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ec18b...a77efd`](./contracts/ethereum-1/0x5ec18b477b20af940807b5478db5a64cd4a77efd/) | RenExBalances | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31a0d1...d2e383`](./contracts/ethereum-1/0x31a0d1a199631d244761eeba67e8501296d2e383/) | RenExBrokerVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x908262...2b21e1`](./contracts/ethereum-1/0x908262de0366e42d029b0518d5276762c92b21e1/) | RenExSettlement | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7cade4...744ec4`](./contracts/ethereum-1/0x7cade4fbc8761817bb62a080733d1b6cad744ec4/) | RenExTokens | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x044906...0ad01c`](./contracts/ethereum-1/0x04490672449654b1d9ad6f0aae14e6e4c60ad01c/) | RenProxyAdmin | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e0679...eb40ed`](./contracts/ethereum-1/0x8e0679d0d4691ea345fb8c2aec9bf9c1d3eb40ed/) | RenToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21c482...9fcebd`](./contracts/ethereum-1/0x21c482f153d0317fe85c60be1f7fa079019fcebd/) | RepublicToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x119da7...551036`](./contracts/ethereum-1/0x119da7a8500ade0766f758d934808179dc551036/) | SettlementRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d4713...876cac`](./contracts/ethereum-1/0x1d4713b74e79a3696722aebe05de976979876cac/) | ShifterRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfe43c3...314fdb`](./contracts/ethereum-1/0xfe43c3a01102eda295333f5ad6cc747f03314fdb/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e68ee...8f1a73`](./contracts/ethereum-1/0x0e68ee104c768078cb3624396aaf9285c58f1a73/) | zBCH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88c64a...78bb7d`](./contracts/ethereum-1/0x88c64a7d2ecc882d558dd16abc1537515a78bb7d/) | zBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b3b73...407bf9`](./contracts/ethereum-1/0x7b3b7383bc88b645bdefd7624d9c6fb981407bf9/) | ZEC_DAI_Reserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52c883...ada49d`](./contracts/ethereum-1/0x52c883b626637ae7c2b93909ad40c24676ada49d/) | ZECGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b59ef...461d5b`](./contracts/ethereum-1/0x2b59ef3eb28c7388c7ec69d43a9b8e585c461d5b/) | ZECShifter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09aa07...f65295`](./contracts/ethereum-1/0x09aa07ae98fde91d66775c13107e9f082ff65295/) | zZEC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 71 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
