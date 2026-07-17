# Agentic Audit Brief: Rook

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Rook (`rook`)
- Website: [https://keeperdao.com/](https://keeperdao.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 84 unique implementations (176 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,219,064.47
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Rook in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 82 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 25
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/74
- Verified + Unaudited implementations: 74
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 84
- Raw deployments: 176
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (74)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BasicAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0807d0810714d85b49e40349a3002f06e841b7c3`; ethereum `0x32666b64e9fd0f44916e1378efb2cfa3b3b96e80`; ethereum `0x500dc56eb99ef056b44e9a0fc63a4f1e8730e090`; ethereum `0x67fc8956904b053600425b822c6d3af000c365fa`; ethereum `0xae65b0f676313fd715f29d07538d1dc8557f2b1a` | ⚠️ Unaudited |
| BCH_DAI_Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2d578e21f430d7469cbc135952dfe5c34b69772` | ⚠️ Unaudited |
| BCHGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcabb5e9e48f22cb6736d5f5cd3f1b652d7e1a461` | ⚠️ Unaudited |
| BCHShifter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2095be01f9a30a8ac8302245fdfa524fb20de6cd`; ethereum `0xa76bea11766e0b66bd952bc357cf027742021a8c`; ethereum `0xe0926b2f1b37c2dae0c5682f5fd75adf83cfe771` | ⚠️ Unaudited |
| BorrowerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde92742213fea5f78c6840b6ecbf214115ea8002` | ⚠️ Unaudited |
| BTC_DAI_Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x11716a1f51fad053e9b43da1025e8ace32aee110`; ethereum `0x1c0fdf662731ae93982ce48491dd6ae4ae930cdd`; ethereum `0x2c4ce444252fbeb762d789d6457d2bd530e292f6` | ⚠️ Unaudited |
| BTCShifter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1258d7ff385d1d81017d4a3d464c02f74c61902a`; ethereum `0x2f4657e26d4887ed9029fd5b97661ff4582d0cd6` | ⚠️ Unaudited |
| DarknodePayment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x098e1708b920efbdd7afe33adb6a4cba30c370b9`; ethereum `0x18e610aeba73a5fc0053793b40c8843ae41eda41`; ethereum `0x376d835c6dc5d06c6335915b36ffe9734d3e4faa`; ethereum `0x43f370152e9484a25ddd9319ff4daa8997788e39`; ethereum `0x50190f37020505405670656e50a3df49484a9123`; ethereum `0x5a7802e66b067cb1770ee5b1165aa201690a8b6a`; ethereum `0x989b7cca772768885d54341e4e984c498a2ddb10`; ethereum `0xab61ac780a0cf2c90fcd403f5f8261dbb682d900`; ethereum `0xdf2a33bf44f917b85a716aa1e98af0bba4085dec` | ⚠️ Unaudited |
| DarknodePaymentMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x085d9b18be81f2b0c35086972caa46177205f54d` | ⚠️ Unaudited |
| DarknodePaymentStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x311999ee72b5826d664fd4f3ac09c0c462effe49`; ethereum `0x731ea4ba77ff184d89dbeb160a0078274acbe9d2`; ethereum `0x7546dbfb23f22c05b190dfbbbaa48e4420316677`; ethereum `0x9c5b076de6c5c01c9e1ac4cb5b48fb681384742b`; ethereum `0xc9ebe9f023350128270f2a0d40c370a23afcdc39`; ethereum `0xe33417797d6b8aec9171d0d6516e88002fbe23e7` | ⚠️ Unaudited |
| DarknodeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3799006a87fde3ccfc7666b3e6553b03ed341c2f`; ethereum `0xa1eb04db7a0ffd6e458b1868660a0edaf8199fa9`; ethereum `0xe0a0fc6ecaba77638b4f516c11b68f3837fe949a` | ⚠️ Unaudited |
| DarknodeRegistryForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb032012073765a74f8f8fe2e6685ad70253058fa` | ⚠️ Unaudited |
| DarknodeRegistryLogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2d7b6c95afeffa50c068d50f89c5c0014e054f0a`; ethereum `0x33b53a700de61b6be01d65a758b3635584bcf140` | ⚠️ Unaudited |
| DarknodeRegistryLogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x308ecdcefa3231ad1a8083bd42510830e749fbb7`; ethereum `0x7c08ff068b7ff6d7d2f431f08b8c2e536ed693dd` | ⚠️ Unaudited |
| DarknodeRegistryLogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5edb23629e713e14168442e17bef6463d785ef09`; ethereum `0x986382b387d400fca9b3191a0bc2483c94ce8863`; ethereum `0xfbd449e6de320dc7143c7bd3e75a16431a59b35c` | ⚠️ Unaudited |
| DarknodeRegistryLogicV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f98228b464101a3b19bf1cc337a9b88c84acecb` | ⚠️ Unaudited |
| DarknodeRegistryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x09e3435c7a92d3296d1221161cb0cbaafa017405`; ethereum `0x8adb36eaa3a6957bee7efbb1c4d5952eafe96cbf`; ethereum `0x98525df99d846458afd9f30c1185c7ac9013111a` | ⚠️ Unaudited |
| DarknodeRegistryStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x14add4ca443e7445a3418bb572d6079bfc98897a`; ethereum `0x4b636f19525e68a1b951dc8d89b5eb111c1d6013`; ethereum `0x4c2f0533af3792695e71699ff221205f7fa47579`; ethereum `0x542a45a2bf9ab5a46856e9495e65120588739d34`; ethereum `0x60ab11fe605d2a2c3cf351824816772a131f8782`; ethereum `0x82072f772309d8d4e81bad8d646751469976bc4e`; ethereum `0xac23817f7e9ec7eb6b7889bdd2b50e04a44470c5`; ethereum `0xe8d0c5d4ca958c8619ab1b98ca901d65340c48b1` | ⚠️ Unaudited |
| DarknodeRegistryV1ToV2Preupgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1e69da530e2051cd08259221ef1dacc703c38f1e`; ethereum `0xb0c560862403e12993c6e29028ba16943607c3a7` | ⚠️ Unaudited |
| DarknodeRegistryV1ToV2Upgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5945bbe065b7a723fd4cf9485a726cb5529cfaa5` | ⚠️ Unaudited |
| DarknodeRewardVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x880407c9cd119bef48b1821cdfc434e3ca3cd588` | ⚠️ Unaudited |
| DarknodeSlasher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x04ed8f5730dd4d2b2064cdb6a5bffc26a72962f2`; ethereum `0x4e85ac30e05e76881f62fe8959804240e622b28d`; ethereum `0x64512ff05a27756694e306e483cbb725f1754c0e`; ethereum `0x7add7e6f431cfa23dffce61dd9749810dc678b16`; ethereum `0x966b2df37ec120c27e4fd9278f38d745a03270b5`; ethereum `0xd33cfe24e84d3156211cc2ea74192593ccf559aa` | ⚠️ Unaudited |
| DEX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x8ff192e634ef6463be60792a384e5f1219a8373a`; ethereum `0xbd0c94bc27824a76c1ebdaac3a9f5fabec6985b7`; ethereum `0xe4ec27bc47f006a1b79da8e3e35051fed5a00f80`; ethereum `0xf65d91333b1d4d3887016b17741ad602d7768594` | ⚠️ Unaudited |
| DEXAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9992e9341e496be5bc8f424dfc1f78a7388d3a58`; ethereum `0xaf0efc4e638a43a27a21d218d07c7499f85f8042`; ethereum `0xf218f90c71bb03c23ca1d88f57fb2cf256176ad5` | ⚠️ Unaudited |
| GatewayLogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x37a4860728e292e5852b215c46dbe7a18862ef93`; ethereum `0x85bde74ca4760587ec9d77f775cb83d4cb76e5ae`; ethereum `0xc3ac15bec6da89e8dc5c4d1b4d0c785547676e3a`; ethereum `0xd4d496632b9af3122fb5ddbf0614aa82effa9f99` | ⚠️ Unaudited |
| GatewayLogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x402ec534baf9e8dd2968c57fdea368f3856460d6` | ⚠️ Unaudited |
| GatewayRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x503670ec851c55ec1acfb5230192da921467a24e`; ethereum `0x817d2e41dabba7a5e840353c9d73a40674ed3400`; ethereum `0xe80d347df1209a76dd9d2319d62912ba98c54ddd` | ⚠️ Unaudited |
| GetOperatorDarknodes | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e27a3e21e747cf875ad5829b6d9cb7700b8b5f0` | ⚠️ Unaudited |
| HidingGame2Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d5541db390a394d01a5eb03fc8160ba66df184c` | ⚠️ Unaudited |
| HidingGame3Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc45bdd7e82cd72f4cb138aeeb175599e6e12be17` | ⚠️ Unaudited |
| HidingGame4Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25d27d026ab896fad8c8080f5b0e3fbd6667b139` | ⚠️ Unaudited |
| HidingGameDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd81e97075dbda444ef65db3a96706c679b5311fd` | ⚠️ Unaudited |
| KeeperDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf55a73a366f1f9f03cef4cc10d3cd21e5c6a9026` | ⚠️ Unaudited |
| LiquidityPoolV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35ffd6e268610e764ff6944d07760d0efe5e40e5` | ⚠️ Unaudited |
| LiquidityPoolV4 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f868c1aa37fcf307ab38d215382e88fca6275e2` | ⚠️ Unaudited |
| LPDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcadf6735144d1d7f1a875a5561555cba5df2f75c` | ⚠️ Unaudited |
| LPPreDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaef38e99b9db5e96cab3ce5cbc29a3a1dfeffe71` | ⚠️ Unaudited |
| LPQ22Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff1624c7287e22f3fce51ea85dbe9db332e8a356` | ⚠️ Unaudited |
| LPQ2Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2777b798fdfb906d42b89cf8f9de541db05dd6a1` | ⚠️ Unaudited |
| LPQ3Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59ff8975c813c1e70bdf2bcb8c02886928e4ea2d` | ⚠️ Unaudited |
| MintGatewayLogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 5 deployments: ethereum `0x05387a10bb3ef789b6c2a9ce2d6c21d5a8c6b1aa`; ethereum `0x2362843745615368f4ef0a43d7502353649c0783`; ethereum `0x4a144820a415bdfa0030937608743cae1d392029`; ethereum `0xd7d7deab930b6d3f98b35a26a4c431630d5ab874`; ethereum `0xed7d080aa1d2a4d468c615a5d481125bb56bf1bf` | ⚠️ Unaudited |
| MintGatewayLogicV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a562822f99d11e8f993f6bcda86277123ce22b4` | ⚠️ Unaudited |
| MintGatewayLogicV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0xc3bbd5adb611dd74eca6123f05b18acc886e122d`; ethereum `0xcc4ff5b8a4a7adb35f00ff0cbf53784e07c3c52f`; ethereum `0xd0da0d062d18cc70be85ff94afa880ecee66eedd`; ethereum `0xe4b679400f0f267212d5d812b95f58c83243ee71` | ⚠️ Unaudited |
| MintGatewayUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x13773093cdad89e8e1615f581a37c7eeabb04804`; ethereum `0x8d456561bfe82373aa83eae8a65d7d19e85ff8a5` | ⚠️ Unaudited |
| Orderbook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b8bb175c092de7d81860b18db360b734a2598e0` | ⚠️ Unaudited |
| Protocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a43b06ed73fcd3707f1a681ca645d758a51ee52` | ⚠️ Unaudited |
| ProtocolLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54751636e04092ee76f25b2b3c50dcdcfebdbadf` | ⚠️ Unaudited |
| ProtocolLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa638f33388747d5f62411273f4be8919ed8c94b4`; ethereum `0xef4de0e97d92757520d78c4d49d8151964f6a85b` | ⚠️ Unaudited |
| ProtocolLogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x637278bf72127c76d98d9a9be36d2121fb2447c8`; ethereum `0xf61e97c464ec0cf48b33262c3a1ef42114275144` | ⚠️ Unaudited |
| ProtocolLogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8b49f212f2236f4f49bbeff878a73051a8915de0`; ethereum `0xc25167ffa19b4d9d03c7d5aa4682c7063f345b66` | ⚠️ Unaudited |
| ProtocolLogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb227d52375b2625cca1ba9c56abea4015d769e3f`; ethereum `0xee5d2e1742d2f1e934d4db642d1d561a629f9c0b` | ⚠️ Unaudited |
| ProtocolProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4d880bb27b1cd850d4bc331b1654af01bd69b47a`; ethereum `0xf15ba8b5c35bacc45e627a1c4e25eb6269f4018b` | ⚠️ Unaudited |
| RenERC20LogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x0a2d368e4eecbd515033ba29253909f2978c1bee`; ethereum `0x82e728594b87318e513931469a30713fef966c8e`; ethereum `0x93e47ec9b8cd1a669c7267e20acf1f6a9c5340ba`; ethereum `0xa2f0a92396cb245bad15ba77817e1620c58bf05b` | ⚠️ Unaudited |
| RenERC20LogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x1c5db575e2ff833e46a2e9864c22f4b22e0b37c2`; ethereum `0x459086f2376525bdceba5bdda135e4e9d3fef5bf`; ethereum `0xe2d6ccac3ee3a21abf7bedbe2e107ffc0c037e80`; ethereum `0xeb4c2781e4eba804ce9a9803c67d0893436bb27d` | ⚠️ Unaudited |
| RenERC20LogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 5 deployments: ethereum `0x3832d2f059e55934220881f831be501d180671a7`; ethereum `0x52d87f22192131636f93c5ab18d0127ea52cb641`; ethereum `0xa074139a4975318e7c011783031504d1c177f8ca`; ethereum `0xd5147bc8e386d91cc5dbe72099dac6c9b99276f5`; ethereum `0xe3cb486f3f5c639e98ccbaf57d95369375687f80` | ⚠️ Unaudited |
| RenERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee274080b8389ac5add6499df348b653447894a7` | ⚠️ Unaudited |
| RenExAtomicSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3fed6eb39178a541d274e6fc748d48f0ca01cc3` | ⚠️ Unaudited |
| RenExBalances | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5ec18b477b20af940807b5478db5a64cd4a77efd`; ethereum `0x9636f9ac371ca0965b7c2b4ad13c4cc64d0ff2dc` | ⚠️ Unaudited |
| RenExBrokerVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31a0d1a199631d244761eeba67e8501296d2e383` | ⚠️ Unaudited |
| RenExSettlement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x908262de0366e42d029b0518d5276762c92b21e1` | ⚠️ Unaudited |
| RenExTokens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cade4fbc8761817bb62a080733d1b6cad744ec4` | ⚠️ Unaudited |
| RenProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x04490672449654b1d9ad6f0aae14e6e4c60ad01c`; ethereum `0x294b56a639ad29d0cdc58399f9ee3743e64985b8`; ethereum `0x3840c01167cf06c3101762f0fce991befa1cdfaf`; ethereum `0x52147113e857c9cc1524fc80288f97b4c9074906`; ethereum `0xdf1d8ed27c54bbe5833320cf5a19fd9e73530145`; ethereum `0xfc3df9ad8665d584d26ba62ecf961b30ff09bfb5` | ⚠️ Unaudited |
| RenToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e0679d0d4691ea345fb8c2aec9bf9c1d3eb40ed` | ⚠️ Unaudited |
| RepublicToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21c482f153d0317fe85c60be1f7fa079019fcebd` | ⚠️ Unaudited |
| RookToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa5047c9c78b8877af97bdcb85db743fd7313d4a` | ⚠️ Unaudited |
| SettlementRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x119da7a8500ade0766f758d934808179dc551036` | ⚠️ Unaudited |
| ShifterRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1d4713b74e79a3696722aebe05de976979876cac`; ethereum `0x5d9bf2bad3dd710e4d533681ed16ed1cfeac9e6f` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe43c3a01102eda295333f5ad6cc747f03314fdb` | ⚠️ Unaudited |
| zBCH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0e68ee104c768078cb3624396aaf9285c58f1a73`; ethereum `0x466dd97f83b18ac23ddf16931f8171a817953ff1`; ethereum `0x4b23ebffc2ac3d285a9b3ac4fb8720dcb83e5f29` | ⚠️ Unaudited |
| zBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x88c64a7d2ecc882d558dd16abc1537515a78bb7d`; ethereum `0xc04956c6472cdd58766614f8d47f6826ac477fb9` | ⚠️ Unaudited |
| ZEC_DAI_Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x7b3b7383bc88b645bdefd7624d9c6fb981407bf9`; ethereum `0x96f0da162f59bb4e28bdba91a7d1460a1ec63358`; ethereum `0xa08b74daa6ea1ca4397d1e0c14c517f535a7839c`; ethereum `0xc28aa435be4894d5bd1215ca67eecb7203aa90bb`; ethereum `0xdbd93af23d97563cb8fd2a0abe7f20a9086fa716` | ⚠️ Unaudited |
| ZECGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52c883b626637ae7c2b93909ad40c24676ada49d` | ⚠️ Unaudited |
| ZECShifter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2b59ef3eb28c7388c7ec69d43a9b8e585c461d5b`; ethereum `0x8cb5e78cd53a6b994d5c1cc52a4a773705a9599a` | ⚠️ Unaudited |
| zZEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x09aa07ae98fde91d66775c13107e9f082ff65295`; ethereum `0x8dd8944320eb76f8e39c58e7a30d34e7fba9d719` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d1d44e8850e7c38550c53aa04a110b5808e2c1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d7e244ab953f16a48dde4d11a94272c5f6f7f5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4012ef4d3e24d4a8f8d09ff6a780c7a64bd8f4f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48ace4f7cdfb6ebd96530fd810f4fe47d3642524` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x4c8cc29226f97d92ec2d299bc14edf16bad436b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5be0e8ed65ff0731df45ac946534743fba4fa359` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x82151ca501c81108d032c490e25f804787bef3b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d6e6e2e58dae136f1e53b3641538731c6b11198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab5ebc4ddf9c4d5b00de10ff3692acdec43a5a6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe175a237fdf7b815cbbc6d9e60fd3d9f86490674` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [peckshield_final.pdf](http://web.archive.org/web/20201117220335/https://github.com/keeperdao/docs/blob/master/audits/peckshield_final.pdf) | PeckShield | Audit | 2020-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [quantstamp_draft.pdf](http://web.archive.org/web/20201117220334/https://github.com/keeperdao/docs/blob/master/audits/quantstamp_draft.pdf) | Quantstamp | Audit | 2020-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | medium |
| [PeckShield-Audit-Report-KeeperDAOStaking-v1.0_1.pdf](http://web.archive.org/web/20221212181643/https://github.com/rookprotocol/docs/blob/master/audits/PeckShield-Audit-Report-KeeperDAOStaking-v1.0_1.pdf) | PeckShield | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [PeckShield-kCompound.pdf](http://web.archive.org/web/20221212174138/https://github.com/rookprotocol/docs/blob/master/audits/PeckShield-kCompound.pdf) | PeckShield | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Quantstamp-kCompound.pdf](http://web.archive.org/web/20221212181221/https://github.com/rookprotocol/docs/blob/master/audits/Quantstamp-kCompound.pdf) | Quantstamp | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [KeeperDAO Liquidity Pool and HidingVault - Report.pdf](http://web.archive.org/web/20210805222729/https://github.com/keeperdao/docs/blob/master/audits/KeeperDAO%20Liquidity%20Pool%20and%20HidingVault%20-%20Report.pdf) | unspecified | Audit | 2021-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [Manual audit seed](http://web.archive.org/web/20221212172733/https://github.com/rookprotocol/docs/tree/master/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21327] peckshield_final.pdf — no match: No explicit scope section; contract names extracted from findings targets and file paths in code snippets.
- [21328] quantstamp_draft.pdf — no match: No explicit scope section; contracts inferred from findings and test output. Audit date from changelog: 2020-04-21.
- [21329] PeckShield-Audit-Report-KeeperDAOStaking-v1.0_1.pdf — no match: No explicit scope table; contracts extracted from findings targets.
- [21330] PeckShield-kCompound.pdf — no match: The report explicitly lists KComptroller, CompoundVars, JITU, and KCompoundPosition as targets in findings. No other contracts are mentioned as in scope. The audit date is clearly stated on the cover page and in the document properties.
- [21331] Quantstamp-kCompound.pdf — no match: Extracted contracts from scope, findings, file signatures, and code coverage table. Audit date from revised report date (2021-05-04).
- [21332] KeeperDAO Liquidity Pool and HidingVault - Report.pdf — no match: Extracted contract names from scope, findings, file signatures, and code coverage sections. Audit date from cover page.
- [24474] Manual audit seed — no match: The provided text is a GitHub directory listing of audit reports, not the actual audit report content. No contract names or audit date could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| peckshield_final.pdf | KToken | unmatched — not counted | — | Target in findings PVE-001, PVE-003 | no |
| peckshield_final.pdf | LiquidityPoolV1 | unmatched — not counted | — | Target in findings PVE-002, PVE-003, PVE-004, PVE-007, PVE-008 | no |
| peckshield_final.pdf | MarketContractProxy | unmatched — not counted | — | Target in findings PVE-005, PVE-006 | no |
| quantstamp_draft.pdf | CompoundKeeper | unmatched — not counted | — | mentioned in findings QSP-2, QSP-3, QSP-4, QSP-5, QSP-6, QSP-10, and test output | no |
| quantstamp_draft.pdf | CoreKeeper | unmatched — not counted | — | mentioned in test output as CoreKeeperV1 | no |
| quantstamp_draft.pdf | KToken | unmatched — not counted | — | mentioned in findings QSP-7 and test output | no |
| quantstamp_draft.pdf | FlashLoanReceiver | unmatched — not counted | — | mentioned in findings QSP-3, QSP-10 and test output | no |
| quantstamp_draft.pdf | KeeperRoles | unmatched — not counted | — | mentioned in finding QSP-8 | no |
| quantstamp_draft.pdf | Compound | unmatched — not counted | — | mentioned in finding QSP-11 | no |
| PeckShield-Audit-Report-KeeperDAOStaking-v1.0_1.pdf | KRoles | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-KeeperDAOStaking-v1.0_1.pdf | CoordinationPaymentChannels | unmatched — not counted | — | Target in findings PVE-002 and PVE-003 | no |
| PeckShield-kCompound.pdf | KComptroller | unmatched — not counted | — | Listed as target in findings PVE-001, PVE-004, PVE-005, PVE-008; described as a gateway contract in the report. | no |
| PeckShield-kCompound.pdf | CompoundVars | unmatched — not counted | — | Listed as target in finding PVE-002; described as protocol-wide registry. | no |
| PeckShield-kCompound.pdf | JITU | unmatched — not counted | — | Listed as target in finding PVE-007; described as gateway contract for users. | no |
| PeckShield-kCompound.pdf | KCompoundPosition | unmatched — not counted | — | Mentioned in findings PVE-006 and PVE-007; described as managing compound positions. | no |
| Quantstamp-kCompound.pdf | CompoundVars | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-kCompound.pdf | KCompound | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-kCompound.pdf | CompoundMigrator | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-kCompound.pdf | KCompoundPosition | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-kCompound.pdf | KComptroller | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-kCompound.pdf | JITU | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-kCompound.pdf | KFactory | unmatched — not counted | — | listed in scope (code coverage table) | no |
| Quantstamp-kCompound.pdf | Interfaces | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp-kCompound.pdf | Tokens | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp-kCompound.pdf | Comptroller | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp-kCompound.pdf | Exponential | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp-kCompound.pdf | CToken | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp-kCompound.pdf | ComptrollerErrorReporter | unmatched — not counted | — | listed in file signatures | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | LiquidityPool | unmatched — not counted | — | listed in scope and findings | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | HidingVaultNFT | unmatched — not counted | — | listed in scope and findings | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | JITUCore | unmatched — not counted | — | listed in scope and findings | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | JITUCompound | unmatched — not counted | — | listed in scope and findings | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | KCompound | unmatched — not counted | — | listed in scope and findings | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | HidingVault | unmatched — not counted | — | listed in file signatures | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | Proxy | unmatched — not counted | — | listed in file signatures | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | LibHidingVault | unmatched — not counted | — | listed in file signatures | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | IJITUCompound | unmatched — not counted | — | listed in file signatures | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | LibCompound | unmatched — not counted | — | listed in file signatures | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | LibCToken | unmatched — not counted | — | listed in file signatures | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | IKCompound | unmatched — not counted | — | listed in file signatures | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | BorrowerProxy | unmatched — not counted | — | listed in code coverage | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | CanReclaimTokens | unmatched — not counted | — | listed in code coverage | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | KRoles | unmatched — not counted | — | listed in code coverage | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | Tokens | unmatched — not counted | — | listed in code coverage | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | GelatoJITU | unmatched — not counted | — | listed in code coverage | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | Gelatofied | unmatched — not counted | — | listed in code coverage | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | MockKCompound | unmatched — not counted | — | listed in code coverage | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | Compound | unmatched — not counted | — | listed in code coverage | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 74 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 48 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1, medium=3
- Match method counts: n/a

Zero-match audit list:

- [21327] peckshield_final.pdf
- [21328] quantstamp_draft.pdf
- [21329] PeckShield-Audit-Report-KeeperDAOStaking-v1.0_1.pdf
- [21330] PeckShield-kCompound.pdf
- [21331] Quantstamp-kCompound.pdf
- [21332] KeeperDAO Liquidity Pool and HidingVault - Report.pdf
- [24474] Manual audit seed

Fork inheritance lineage and inherited audits are included when available.
