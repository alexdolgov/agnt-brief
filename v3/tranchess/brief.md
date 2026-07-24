# Agentic Audit Brief: Tranchess

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 3 audit(s)
- Eligible audit results: 9 (3 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Tranchess (`tranchess`)
- Website: [https://tranchess.com](https://tranchess.com)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum, scroll
- Contract surface: 240 unique implementations (582 raw deployments)
- Coverage basis: 5/60 confirmed own live verified implementations (8.3%); conservative 8.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,205,134.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Tranchess. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 64 contract row(s) across bsc, ethereum, scroll. Structural roles: 26 core, 26 unclassified, 12 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 64
- Structural roles: core (26), unclassified (26), supporting (12)
- Contract kinds: contract (63), abstract (1)
- Detected standards: erc20 (13), ownable (9), erc165 (1), erc1967proxy (1), pausable (1)
- Frameworks: openzeppelin (16), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 73 contracts are derived from known codebases. 73 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2bac57d29570fe56b60216c26da3c5b5c804b916`, chain 1)
- UnnamedContract (`0x00934045078c5159c706ed43b7fa9578b7e058e1`, chain 534352)
- UnnamedContract (`0x034a993627c5f780e9af80160edc94f15c0e9fd7`, chain 534352)
- UnnamedContract (`0x194c6acc13e7ecdcb6fc767359291a6fee179440`, chain 534352)
- UnnamedContract (`0x1bf019a44a708fbeba7adc79bdad3d0769ff3a7b`, chain 534352)
- UnnamedContract (`0x289e69e5b611f6193694f6cfa2f93b7cf161253f`, chain 534352)
- UnnamedContract (`0x33b5ad38dcd817090474d4f79b75e1403384e0c8`, chain 534352)
- UnnamedContract (`0x461f98b371ddb47ff0b60f6be21d9858f13509cf`, chain 534352)
- UnnamedContract (`0x49195ecf9390c5e1fb0081ef28a77df777e0cd65`, chain 534352)
- UnnamedContract (`0x4b0d5fe3c1f58fd68d20651a5bc761553c10d955`, chain 534352)
- UnnamedContract (`0x4dd610d8d2a8f7de277711f0dae0e88e0b270dff`, chain 534352)
- UnnamedContract (`0x512d9cd7df5d4617fea9386ae2d6c28d674378c4`, chain 534352)
- UnnamedContract (`0x62b4b4723770a8f28afb796613c7e245b3c30c86`, chain 534352)
- UnnamedContract (`0x63baee33649e589cc70435f898671461b624cbcc`, chain 534352)
- UnnamedContract (`0x65cecc46288abe7b22a4552a98620b78ed4b3462`, chain 534352)
- UnnamedContract (`0x80800c31672c534344dd639103b83b088dedf5ff`, chain 534352)
- UnnamedContract (`0x80df7e2bb71cd38af14ee8b1b510ad11c032155f`, chain 534352)
- UnnamedContract (`0xa253420a60911b896b87db7e17192990a37734a9`, chain 534352)
- UnnamedContract (`0xa2901b0bdbd42747ca162694d2fcb7a999e0c2bf`, chain 534352)
- UnnamedContract (`0xa793fb87c9062cdb4a9db031343287a9173a1878`, chain 534352)
- UnnamedContract (`0xb6d5d0a3a8298f9cc322d202d60669dd41621807`, chain 534352)
- UnnamedContract (`0xd180fb177890e78af181823f4eb3cb5033ef7795`, chain 534352)
- UnnamedContract (`0xd48cc42e154775f8a65eea1d6fa1a11a31b09b65`, chain 534352)
- UnnamedContract (`0xdd730b2ebe9e5679f695db1aa695ef6f2c9a30df`, chain 534352)
- UnnamedContract (`0xdec17f71ef579123939aca1bdfaeec21eae00d67`, chain 534352)
- UnnamedContract (`0xe302f06f7b9b3041f20508548cff49a0e6fe83e4`, chain 534352)
- UnnamedContract (`0xeda4b3946e3a0f6dbe65bbf0a03a4d3a00cee32f`, chain 534352)
- UnnamedContract (`0xf380bb909434d5a335e7073b6e17bf52982434a0`, chain 534352)
- UnnamedContract (`0xf3bf24b8fdb80b167b3fb6b97131fb942579dafa`, chain 534352)
- UnnamedContract (`0xfae0e20b4d74531e58ea31a964adfc61c08fa13b`, chain 534352)
- UnnamedContract (`0xfbee64fa1a89b76976750d62c8f3298952c5a518`, chain 534352)
- UnnamedContract (`0xfee8cddcc1d2345d8e7057a5a19bc69694b86922`, chain 534352)
- AnyswapChess (`0xd6123271f980d966b00ca4fca6c2c021f05e2e73`, chain 1)
- AnyswapChess (`0x9735fb1126b521a913697a541f768376011bccf9`, chain 534352)
- BatchOperationHelper (`0x97238bc81fcede211ecb49a6b16ca0ad1d55a1d5`, chain 1)
- BatchOperationHelper (`0xbefeb1f4afc01416ac25640c482defbf8f9d6e68`, chain 534352)
- BeaconStakingOracle (`0xffd3196ce42bed1fa988020c902fe7ea6624a15a`, chain 1)
- BishopStableSwapV2 (`0x3d9f20e4f1f5ac1d5f24e271ce6364b2eed71ca6`, chain 534352)
- BishopStableSwapV2 (`0xd151ce31322aea25e4779678df0a3f376f9ffc6f`, chain 534352)
- BishopStableSwapV2 (`0xec8bfa1d15842d6b670d11777a08c39b09a5ff00`, chain 534352)
- ChessControllerV6 (`0x58e2dbf7b25f485ae00983671b517c4cebb7a8ac`, chain 1)
- ConstAprOracle (`0x37473872769ff711bd6d800e518061fae67e10a9`, chain 1)
- FeeConverter (`0x96ccae5662de55c50b997f13396e6a183074f9d5`, chain 1)
- FlashSwapRouterV3 (`0xd462276ef4aa78a3533cf13518d97a16b96e0c95`, chain 1)
- FundV4 (`0x69c53679ec1c06f3275b64c428e8cd069a2d3966`, chain 1)
- FundV5 (`0x811c9dd8b7b670a78d02fac592ebbe465e5dd0fa`, chain 1)
- GnosisSafeProxy (`0x1bf019a44a708fbeba7adc79bdad3d0769ff3a7b`, chain 1)
- LiquidityGaugeV2 (`0x2871956fb1cde2b28f8d77bbecb4d806a4664a9f`, chain 1)
- LiquidityGaugeV2 (`0x3c8465c04e7478b11c7b5cee3919781db5e6d464`, chain 534352)
- MaturityPrimaryMarket (`0x088e2f0fcb2acaa5ad990311839b1d37ee41679d`, chain 534352)
- MaturityPrimaryMarket (`0x21366de9707a1044e351280f085821c734791cee`, chain 534352)
- MaturityPrimaryMarket (`0x47b3913e6ac7dcb9752769465f875596c6f194d4`, chain 534352)
- PrimaryMarketV4 (`0xcf116313bc9c3712a8165d9a8e1c311567c4c829`, chain 1)
- PrimaryMarketV5 (`0xa8be5ab62794a647254e1e62844201efc8477e22`, chain 1)
- ProxyOFTPool (`0x25cd496d66708166a06da16ed641dd286ce76815`, chain 1)
- ProxyOFTPool (`0xf440e381e682a458505c12db813dbc36da4f5970`, chain 534352)
- ShareV2 (`0x307462d1a183659e9af73fa1bca7a0d858714598`, chain 1)
- ShareV2 (`0x379e8d9f6a8a045a8654169fabff8bcfec0d3934`, chain 1)
- ShareV2 (`0x6aff2526d50fa742ca08ed1cf6e3cf7987a30f5c`, chain 1)
- ShareV2 (`0x93ef1ea305d11a9b2a3ebb9bb4fcc34695292e7d`, chain 1)
- ShareV2 (`0xbb18521b4b19bcb7e6c2327f13bbd8e8149ca3a9`, chain 1)
- ShareV2 (`0xd2df8d600f7b32b8e708900646f8898c52158690`, chain 1)
- ShareV2 (`0x09750800529e7bbcd07d4760989b19061e79165b`, chain 534352)
- ShareV2 (`0x0e6a005790559b60bff5b8c3ea68d2361f92ccaa`, chain 534352)
- ShareV2 (`0x3b97ccc0c8c5e10ac3e7f1594b55b6239a493eea`, chain 534352)
- ShareV2 (`0x6e20e4f0f1a3a6836840001e4195b65d7735d92d`, chain 534352)
- ShareV2 (`0x6f2d7ce6601a07fbfaa7b9c9608ca99d5f35ff4a`, chain 534352)
- ShareV2 (`0x820144d59d20f1838a88cae95c946a9bb6a7fea2`, chain 534352)
- ShareV2 (`0xb5e3d3fd34689c27f3549781b0369b87db105839`, chain 534352)
- ShareV2 (`0xbf4ff74af2f4e1b3820c32a0fc3a47530367112e`, chain 534352)
- SwapRouter (`0x657498143d67e14d9928bc5ec1608c771e6c3314`, chain 1)
- TransparentUpgradeableProxy (`0xffd17794bf2e3ba798170f358225763f1af8f5ba`, chain 534352)
- WstETHBishopStableSwap (`0xad06a2dbd34da8f8cf5f85d284a5b93a2057bdb5`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 64; live-surface rows included: 64 (64 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 92/92 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/60 (8.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 92 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 148 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 16
- Confirmed-live implementations: 92 of 240 unique; 148 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 5/154
- Verified + Unaudited implementations: 149
- Verified by bytecode match: 0
- Unverified implementations: 86
- Unique implementations: 240
- Raw deployments: 582
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 4 | 2.6% | 2023-12 |
| CertiK | Tier 2 | 1 | 0.6% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AprOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258963 | `0xa9f575d735439eb4187b7bbc07459124811feaac` | ✅ Audited |
| FundV4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258952 | `0x69c53679ec1c06f3275b64c428e8cd069a2d3966` | ✅ Audited |
| FundV5 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258956 | `0x811c9dd8b7b670a78d02fac592ebbe465e5dd0fa` | ✅ Audited |
| PrimaryMarketV4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258969 | `0xcf116313bc9c3712a8165d9a8e1c311567c4c829` | ✅ Audited |
| WstETHPrimaryMarketRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258961 | `0x9c69b6caf5074a2dec33bdb84d0f871d509240fa` | ✅ Audited |

### ⚠️ Verified + Unaudited (149)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d54854d79280de19031f867f45aa6f461ae0436` | ⚠️ Unaudited |
| AnyswapChess | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258972 | `0xd6123271f980d966b00ca4fca6c2c021f05e2e73` | ⚠️ Unaudited |
| AnyswapChess | unknown | project_anchor | own_supporting | 0 | scroll | unit-259005 | `0x9735fb1126b521a913697a541f768376011bccf9` | ⚠️ Unaudited |
| BatchOperationHelper | periphery | project_anchor | own_supporting | 0 | ethereum | unit-258960 | `0x97238bc81fcede211ecb49a6b16ca0ad1d55a1d5` | ⚠️ Unaudited |
| BatchOperationHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x5647bed4a4d7544d667aeaabf71b13f1c152529d`; bsc `0xa6fd871d96f4e612b2ed7655f3fb78d9672815a1`; bsc `0xdcf0bfff2d6b542b55840621fb560d43d0a35eba` | ⚠️ Unaudited |
| BatchOperationHelper | periphery | project_anchor | own_supporting | 0 | scroll | unit-259011 | `0xbefeb1f4afc01416ac25640c482defbf8f9d6e68` | ⚠️ Unaudited |
| BatchSettleHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78fab7fd7fc80518543af92777dbbb18d7dcb2ca` | ⚠️ Unaudited |
| BatchUpgradeTool | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7d8484c835487c2a88c5e653f75e570eecde071` | ⚠️ Unaudited |
| BeaconStakingOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0eeccdc7c43a9a1536b00894b64f600b855a7c8e`; ethereum `0x946c1cbd2595bc14cb495a440ce3c1f7b19b63e2`; ethereum `0xd325d1ceb50c1c1c54f8bf0c83a7dad2fe0b5242` | ⚠️ Unaudited |
| BeaconStakingOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258977 | `0xffd3196ce42bed1fa988020c902fe7ea6624a15a` | ⚠️ Unaudited |
| BishopStableSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x56118e49582a8ffa8e7309c58e9cd8a7e2ddaa37`; bsc `0x87585a84e0a04b96e653de3dda77a3cb1fdf5b6a`; bsc `0x999db223f0807b164b783ee33d48782cc6e06742` | ⚠️ Unaudited |
| BishopStableSwapV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 21 deployments: ethereum `0xba919470c7a2983fbcda6adc89be9c43b8298079`; bsc `0x01209a232daf2068136d15e76c867c7f7fc21f4e`; bsc `0x0747277ac186a83f828c7ac3ba688f499d2a3f33`; bsc `0x09427783666ec4173e951222ab9b3c12871400aa`; bsc `0x2fa534b3c9cd003e58dc1e8f44969846af311698`; bsc `0x399bbbf150af24851b60a55d8de3397195d62b07`; bsc `0x6da3a029d0f0911c7ee36c1cea2ea69fc31dd970`; bsc `0x8aea25b112a8a614a417e3be36ddf8d9bbc46d4b`; bsc `0xa6d9ad9fd68fa46333a13bb383cc682f50473596`; bsc `0xb4c672600497efd6ee1a74a50788a5cd1a0893e6`; bsc `0xba5a53180504cae2f038685914084ed85d336c2b`; bsc `0xbbb1aa81e95298d64b7f710b936d89394dbdd28f`; bsc `0xc3655312b88b18c5ab089192c46bdf9f73e75dbe`; bsc `0xd0cc89ccf8c7500a3437952a61df5e5d976e735c`; bsc `0xd3392699d679dfa57bc8ee71a0ad44902c1ab9f7`; bsc `0xd3d47598b56e15d5a3f466fc93517d97f7b6256e`; bsc `0xd44783cd7869c4b0c5eaedf8b08ab6dd14e7cac1`; bsc `0xda3bd77f8d05d86b9a6356a9cc89ac74939d1ad4`; bsc `0xf4302b631516e1bda4f46730856dcaa588ed2bbb`; bsc `0xf443f22bdf347c2898429031512036191c5651bc`; bsc `0xf84d3eb88f120e50d80e7b55b98cc3facce0c9d9` | ⚠️ Unaudited |
| BishopStableSwapV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-258990 | `0x3d9f20e4f1f5ac1d5f24e271ce6364b2eed71ca6` | ⚠️ Unaudited |
| BishopStableSwapV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-259013 | `0xd151ce31322aea25e4779678df0a3f376f9ffc6f` | ⚠️ Unaudited |
| BishopStableSwapV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-259019 | `0xec8bfa1d15842d6b670d11777a08c39b09a5ff00` | ⚠️ Unaudited |
| Briber | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4eca7fc4cceea6c47a498e60e295d14abbf76fd3`; ethereum `0x5d76ee4b800660565832f2323f4ac92856fa9776`; ethereum `0x99248d40a4880cb7bb188427e9556f8182e9b614` | ⚠️ Unaudited |
| BscAprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x8424d933fbb73665e5a8880de63c7b1366a56eed`; bsc `0xa79ff9c3d94f4bd7e664415cbe62d076e81b7600` | ⚠️ Unaudited |
| BscAprOracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x1c319ec0def2474108ad5645a8b6fd92f9f35583`; bsc `0x65f5fd05f913ebf5c09ff1bab655c0e9d00d62af`; bsc `0x82c9fdf1a17071cd8150af9c125a21d566d5b165`; bsc `0xa70308019d96f3c49e5dbdc6d96c8d8398519455`; bsc `0xf42f8588f2181f13b0407114f9663a23b625ff04`; bsc `0xf5208bcc2e75a72753490cc298d5bf516ed47cc4`; bsc `0xfc36880eba1194c3b7bdfc8f2934c34944f9c931` | ⚠️ Unaudited |
| BscStakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x82457adf5f7f1fd22622df4808f06392b170134d`; bsc `0x8f1982ace3ace7626fa6f25b20c998b9c8a66da6` | ⚠️ Unaudited |
| BscStakingStrategyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0391ba6f1c59a923f727a6549d27c895fefcab66`; bsc `0xde9f4b6637531852a0c9edad0c92be839b92437b` | ⚠️ Unaudited |
| Chess | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20de22029ab63cf9a7cf5feb2b737ca1ee4c82a6` | ⚠️ Unaudited |
| ChessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x42e285eeeb14e5866d0ccbbed5efb4692194e2e6` | ⚠️ Unaudited |
| ChessControllerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe359efcf1c5c8f3cdb45bc54e97231780127c02d` | ⚠️ Unaudited |
| ChessControllerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03059893d40739d0eb69e151437df67a48d86619` | ⚠️ Unaudited |
| ChessControllerV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbeca6962759c7ae25e900dbe3f898bcf1fb1dd70` | ⚠️ Unaudited |
| ChessControllerV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6986498555ead5659e603f410785c6f0e5c16cc2` | ⚠️ Unaudited |
| ChessControllerV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x419d4c1e4b64c7fdebb6ceb729881ff297843f1e`; ethereum `0xec5468780b57a8988666140a153d858bd00c9113` | ⚠️ Unaudited |
| ChessControllerV6 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-259030 | 2 deployments: ethereum `0x58e2dbf7b25f485ae00983671b517c4cebb7a8ac`; ethereum `0xaa75969e8e407534f6f44d95b5b43b0e6a062750` | ⚠️ Unaudited |
| ChessControllerV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0a7e898e1fab8639dc3a416fe844662f209de8ed`; bsc `0x94ddc5d023e3e4266380a9199d3fae86195dcece` | ⚠️ Unaudited |
| ChessSchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 15 deployments: bsc `0x0088eb834d99095508a85501bd5adff844165cc0`; bsc `0x0fadbb01989f738c79dbc1b8f48cbb1182ef2fb8`; bsc `0x1441f5d0f2dbc6c076430cc2e00c3091d4e511be`; bsc `0x2754e4e81164e79923b9e7a67c034de490170858`; bsc `0x2846ac2eab505cafeaf5c858eb4cc64d4ed97edd`; bsc `0x3e53f4efea6b08dd2eb86df9e8e1a65ae2984f84`; bsc `0x4ef618caad15184c971aeeefdaf57c0cbe4c797f`; bsc `0x4fa1e4109dc56dddbba8e09a8421c1c2e11dc998`; bsc `0x569381f0c7b94d775036014f42bacccc30688ec1`; bsc `0x65acd43325dec47557255285da446b4ec460c69c`; bsc `0x86a9917f67341247d7ca222c3ae2b2a7b461466c`; bsc `0xad4dfcd90ec48c63599716346f82662d605552f4`; bsc `0xd48e4cc92785ffa951cb0f38217089551606a9b8`; bsc `0xe0c2fc1ced3b3bafdd68476d1f19bc0af94ed0e7`; bsc `0xf585179abf2e9c08c9af89aab079f427788930de` | ⚠️ Unaudited |
| ChessSchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0519ff24c82c7fb914334ec36a71cdd199855332`; bsc `0xf071de0e7a6ffceee252df25678c725f04a03b80` | ⚠️ Unaudited |
| ChessScheduleRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x8d0fffacd3b38161256915acdc194538e0626005`; bsc `0xb400d19454efd87ec4199a1f19dbbbaa2352cd10`; bsc `0xdd2cf276d19f67dead53311eeebf3e9ab08122eb` | ⚠️ Unaudited |
| ChessSubSchedule | unknown | project_anchor | own_supporting | 1 | ethereum | unit-259032 | 2 deployments: ethereum `0x0c5f4b16378dfbb71102db10745b79b2dc22b03d`; ethereum `0xf4d665541eaa7e5d27703030ca958d9686ceec69` | ⚠️ Unaudited |
| ChessSubSchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x41e58b9c05dce59608cdc1ebbdef7af3471ebdd2`; ethereum `0x43e42e545ed40b46b81fed3414f03af5cd7f33f6`; ethereum `0x49b71d1d5ad96a870d7f2ac9c6d6cbce359694b1` | ⚠️ Unaudited |
| ChessSubSchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4dad1d42753f2cbab2bb9c3402baa8903583bb47`; ethereum `0xc88ac7d60c8f3f90b43c5ba144f3cd684f01d040` | ⚠️ Unaudited |
| ConstAprOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258947 | `0x37473872769ff711bd6d800e518061fae67e10a9` | ⚠️ Unaudited |
| ConstAprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 17 deployments: ethereum `0xe132be794b1e71a05c55b2db76d7375b7ad24bbd`; bsc `0x0664332d908b1e26b72f7b4c341a051f7be4736b`; bsc `0x0bc9fa36aebeb8f7a1261f94e6049e6156c6bec3`; bsc `0x241be9004148d9c12606e412f4938b731b4a20b5`; bsc `0x443b56e3928baa021659e681fff2dde6e0bcbad1`; bsc `0x44b8bb13a27dd12d697c95605e858b7794acf2d3`; bsc `0x56ba1f1097a183d649119067616132308d5dc314`; bsc `0x715cc099e5e0ecf2b000f7b527b68478b0f1a873`; bsc `0x83b927cb79793ed2642ea55840287f1357015d33`; bsc `0x8dedf2651a7a7ea8d47a4dfeb24524afe304dd79`; bsc `0x9060dac075f6b96e7d753a321652626cec038d86`; bsc `0xa096796e289609c715b4a3765e726097108b6e48`; bsc `0xab7a90088c5b45e1a5ab0356caf338e53097fad8`; bsc `0xbf4507c99898864d3eed6a13fcd008197b455338`; bsc `0xc3626f88fbe4712be2f8322d8c1b29a8d428a983`; bsc `0xc61198fdd3b058ae355ebd55591f9cf81dfe83ea`; bsc `0xfdc433b0df72cd366f1864cc05553340d3ebc56c` | ⚠️ Unaudited |
| ConstPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 17 deployments: ethereum `0x5afd582205fa12a4a4fd9aa8e1d072f7faae7a4c`; bsc `0x18651bf4dd2d920880614df9ad9779da8d4ef250`; bsc `0x2abe5f5264ff838f84ab7610d37d3931ba862683`; bsc `0x30bdb451356f37ece856c8de7a8dd4e0285ddd74`; bsc `0x3c857ff74516ba078155571ad53aae0be13e12bf`; bsc `0x519c13180229ef835c44a262113b244e69bb7e88`; bsc `0x53fd57358bf6bc1f16a7ccb09ec297353f9b1a4a`; bsc `0x6037aefcfbcd1e0bd3108c58f630968da144d165`; bsc `0x64d5af5ee4e2a6e9b7adc04b340723011a25715c`; bsc `0x7a5a1170192f28f3efe30ee6740a104b186f38a7`; bsc `0x827aec5d01ce1e7dc729c86b7b9ad6a3bb0d80f9`; bsc `0x8445c6e0de48d596c2601d68f577301bff47155e`; bsc `0x894738a7465422c69c7372be4ad448c6400fbc6c`; bsc `0x8ceb0f7f13c1d2a1076ff3e57493fc1e063b476f`; bsc `0xd5741e4b23ca486366307e43addea1eb928e13e1`; bsc `0xf63293337cdf3581286255ffbbfcc2140f5df04f`; bsc `0xf8143309af0eae9138cc89254e2f2b6d4710c5d6` | ⚠️ Unaudited |
| ControllerBallot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x66cae7a198792089060c7d68e31ca7fcf9274377`; bsc `0xd28073478157357171f7a8ae111b1c3302ece043` | ⚠️ Unaudited |
| ControllerBallotV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258949 | `0x41b598d49ade2dbf870b5987c25975ecec16826f` | ⚠️ Unaudited |
| ControllerBallotV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xadf40ca696df9185015fab296546dd702186acef`; bsc `0xd1d463d180bc057d104a11654fad4c5493faf8d3` | ⚠️ Unaudited |
| CrossChainMintKeeperHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x72ece039cbdcfa9a26edcdfcfcddacb1d49cf710`; bsc `0xee95acf11bb1c28fd46df00c676d340e49fc4cdd` | ⚠️ Unaudited |
| CrossChainSyncKeeperHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1d611dda4356b5d4cd02b3f93883bf7f0f17df4f`; ethereum `0x2e6fbde85d06f2735970f506af2a718e1cf73097` | ⚠️ Unaudited |
| CrossChainWrappedToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x352e9a93498c4aa72734a32433bca094f5ab6da8` | ⚠️ Unaudited |
| EthPrimaryMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x46b0d06ef0a2a96165b4c8c962ea5b609a88da73`; ethereum `0x8a04a9f1d29c9837604ab4b4c9425098f1db3f2c` | ⚠️ Unaudited |
| EthStakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x50fe5165be08095a1f4cd96877cc54b3cc2ea08e`; ethereum `0x66453f68d6dbcf7859e08f0c43df74e6da06ef8c`; ethereum `0xf737012c83c0ac5cc55df3bbcda7d82dd8c4081b` | ⚠️ Unaudited |
| EthStakingStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258959 | `0x96f4489fe75d0494bd5088b0d80b17a5759dac37` | ⚠️ Unaudited |
| Exchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x907a50140aee1e457b8d8116f9b5f8ead1931e25`; bsc `0xfa5f5940beb7b37ae5c39660f2601d0d75f9ad95` | ⚠️ Unaudited |
| ExchangeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0xabad55484c39d0394279ffcedc11e23001415080`; bsc `0xb4fd07748bb1f1d5736876f6b672a49b81a7b299`; bsc `0xc39d296db45d728cd4b5beff882c2aa2fe329c4c`; bsc `0xe5cc18efa78874c30bdee8a5b34f56392e94ac41` | ⚠️ Unaudited |
| ExchangeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x04ff932ca53ed6e1f5b4b6e98693bd95b0f647d7`; bsc `0xb13a07c57ba5297506c71e9c958210fea8bbcef0` | ⚠️ Unaudited |
| ExchangeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1216be0c4328e75ae9adf726141c2254c2dcc1b6`; bsc `0x8c4e46e99db41d121ac58e72e2b62f56fc0553c6` | ⚠️ Unaudited |
| ExchangeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3826314c4d7d2d6eee7bfed4302a55b422540e87`; bsc `0x42867df3c1ce62613aae3f4238cbcf3d7630880b` | ⚠️ Unaudited |
| FeeConverter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258958 | `0x96ccae5662de55c50b997f13396e6a183074f9d5` | ⚠️ Unaudited |
| FeeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 16 deployments: bsc `0x0fd0130d7271ac44e3e252c58c5856bb11977087`; bsc `0x1dbf2b7b9aaac27370b13f313c8716bc8a6063ca`; bsc `0x29201657baed8fd0ac66fb10244a2c0d37ca5342`; bsc `0x394e4f2bdfa4a513a1d0fc88b4634d1924ce2922`; bsc `0x417d84385155412b4374f4645c890884a51fb3b1`; bsc `0x4b1d68af09adb36d8640c06510820afa412ed0bc`; bsc `0x6b0c7dd95e9db7edd2ed5adf056bc502eb1aeaf3`; bsc `0x7716b84dfc8456c5c4dee389e2e8d1ba113b6533`; bsc `0x782546cda7b28dddec13b3968bdd35a6a466badf`; bsc `0x8dc8ced7fd2e50b28aa73795d03888af1c716d9f`; bsc `0x911237fcf21421fe50715b05304780006409e57a`; bsc `0xb7df19ab27520006292ebe15704d28976f6cc790`; bsc `0xc36b90e56a1961cd24dc1e72118c4f635b87368f`; bsc `0xf4fa05cc4b4a16fe91adf40f52852872bc6ebd07`; bsc `0xfa9040d3fa9498064eae047062ae7123f9ad686b`; bsc `0xfced57ff211587a9bee78bdb7bcba3f726ce8885` | ⚠️ Unaudited |
| FeeDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258941 | `0x00db7b1300b2b24fb9bdf4f661f650a2998e367a` | ⚠️ Unaudited |
| FeeDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258967 | `0xbc428f6573827db9773f9e4bc1f5c899c884842c` | ⚠️ Unaudited |
| FeeDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258973 | `0xe6e659ad43029e8d89ded5d3ff030ddc5c909cbf` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 12 deployments: bsc `0x111150736cdea75eb84cfd86a93e93a60ec56628`; bsc `0x4832f0faeae2b9458d0c01bcc11b99d44d16fd42`; bsc `0x4d8dcec171be8cb32ac9a39f6b024879459b7bb7`; bsc `0x57c6df30436c9f1864536315e157cb999ee20edb`; bsc `0x5bd53b0258c38cbf3e57950697f06021c037eb22`; bsc `0x67eb546a69c7e4d83f3c66018fa549dff5fed35b`; bsc `0x857486754792f1a8cacfc2c07cb4e227ec20e0e7`; bsc `0x85ae5e9d510d8723438b0135cbf29d4f2e8bcda8`; bsc `0xa4ecd920aa06639cf27e817c358d5480dafafb69`; bsc `0xa80287d7183e23d460ac01f05c1b7f3d0fb76ea2`; bsc `0xe06f85862af08c1c5f67f96e41ea663e29639dae`; bsc `0xe5f4efe076b830f69a6b3bad6005618f86dad5c6` | ⚠️ Unaudited |
| FlashSwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x0d5108377c86f4dcfe473177e0ca555095fda0e0`; bsc `0xc841bd0ab8b6cb580ecff647a79ad94287851c49`; bsc `0xcf40917491c60afc1d60888f73f7dfd4629e0a2c` | ⚠️ Unaudited |
| FlashSwapRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c18932d6dd86fbea662de6389fae86f5570983c` | ⚠️ Unaudited |
| FlashSwapRouterV3 | adapter | project_anchor | own_supporting | 0 | ethereum | unit-258971 | `0xd462276ef4aa78a3533cf13518d97a16b96e0c95` | ⚠️ Unaudited |
| FlashSwapRouterV3 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f2217f0e67af3a6571cf4356dd8f6aeb6c60024` | ⚠️ Unaudited |
| FlashSwapRouterV3Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04ab3fbd6b47683b7d3926e38d80c8198cc3ddd9` | ⚠️ Unaudited |
| Fund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x677b7304cb944b413d3c9aebc4d4b5da1a698a6b`; bsc `0xd6b3b86209ebb3c608f3f42bf52818169944e402` | ⚠️ Unaudited |
| FundKeeperHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x57c4daf59286cf3bb419b10b4f029c443a3d36ba`; bsc `0x6ace40bcd487344f28aec0afe6effe9d8e958763`; bsc `0xd30ef276e71697e38fbadba590116ec8be87b5b2` | ⚠️ Unaudited |
| FundV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x629d4562033e432b390d0808b54a82b0c4a0896b` | ⚠️ Unaudited |
| FundV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x1f18cc2b50575a71dd2ebf58793d4e661a7ba0e0`; bsc `0x2f40c245c66c5219e0615571a526c93883b456bb`; bsc `0x7618f37efe8930d5ee6da34185b3abb750bd2a34` | ⚠️ Unaudited |
| FundV3WindDown | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x0d9e1e296bbbcee72fe1c1a7f410910f006d89a3`; bsc `0x60505f655a9aff10d14d7acb9a4d7c6be94368cc`; bsc `0xa04945fae373f2692566669d954e23429010df84` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | ethereum | unit-259028 | `0x1bf019a44a708fbeba7adc79bdad3d0769ff3a7b` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x1bf019a44a708fbeba7adc79bdad3d0769ff3a7b` | ⚠️ Unaudited |
| InterestRateBallot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xe8061a74412e78dda7a762b8f6361518bb9783d3`; bsc `0xeb76e34834fb0e2c31d92f0284466385bce5c09a` | ⚠️ Unaudited |
| InterestRateBallotV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5cf958ff94eadb5247fd4d5c649d85dcf828a0e` | ⚠️ Unaudited |
| InterestRateBallotV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6f6677cf52297005ae6eb93fad5e24a482853352`; ethereum `0xf635b68f85799421ce3b496df5ce687368e197e2` | ⚠️ Unaudited |
| LiquidityGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x00d150c057f5d66107dfdb9d6d97f8b53ebd4d7a`; bsc `0x131678e24f5f447d0a6a1a42ff7d7723861a9d30`; bsc `0x3f586aa29c61488f25748911be3c52246c744fc2`; bsc `0x7350d28b4919d9b05443c0d0121b6dbcb76f022f` | ⚠️ Unaudited |
| LiquidityGaugeV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258944 | `0x2871956fb1cde2b28f8d77bbecb4d806a4664a9f` | ⚠️ Unaudited |
| LiquidityGaugeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: ethereum `0xd6ef5cbb4ca84e3dceb71192130d5bc3675963a5`; bsc `0x424fff3c4ecf03398d5c3652463667782065058e`; bsc `0x74c8a2e9bc849f023ad15339a5f5e47675b3d633`; bsc `0xbc4ac15f72e3fcfd77dc7ded423ceb43d373a15d`; bsc `0xf0e6b7aec2c35c16e47ab342f071718c46f1cf56`; bsc `0xf2a64f6fbd72a51ec1963593ff78b742b35d0a38`; bsc `0xf71cad58e91b5f4fafe19fdc4fe747e2ebbd5afe` | ⚠️ Unaudited |
| LiquidityGaugeV2 | operational_periphery | project_anchor | own_supporting | 0 | scroll | unit-258989 | `0x3c8465c04e7478b11c7b5cee3919781db5e6d464` | ⚠️ Unaudited |
| LiquidityGaugeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: bsc `0x0ffea70d4de8c9cce7312a96c30e8f50c1dc567f`; bsc `0x457cd6d7c7202d25489ca05b9670fcbda0270a35`; bsc `0x70548df45cd73ea326dedcf2f6f774e165cd52e3`; bsc `0x7bd1790d0da10cdb126cd3bfb6cc57051287c054`; bsc `0x8a61419d04d7586f12944e361b053472363862ea`; bsc `0x8a9a25f8ae5f96263c674da97ac1afe95b6c3d49`; bsc `0xa1e3f70c640126d7c3a7a4d026b7601c1942da66`; bsc `0xb446daaefb28cbe127e312704332a3246aeb280f`; bsc `0xc468dc3790627c2c4cc2f856421c37aacab0c753`; bsc `0xc837bed032a798836214b587b3f7baa0b70cd295`; bsc `0xe4138a089d1a6aebb3aa3b969c45bb22e18898ea`; bsc `0xe83cf7ba2abe8981a1418f888423012d051da23e`; bsc `0xf11a107a7bbfcff107383f47249661f4e852371c` | ⚠️ Unaudited |
| MaturityFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 16 deployments: bsc `0x01907f044bcae357f973d051b0f3b09093dc2763`; bsc `0x04eb0d1dcb55b5c3fd08baaa286ac84c6e4f7bdd`; bsc `0x155ded598a186148b8a2f1c7b442f9ceaab0ec37`; bsc `0x2383a2fdaa3536be5191e5eeaf57b9c9f71b8df0`; bsc `0x29a90f69af6ae84c745a3a83cdac153987be387e`; bsc `0x50635585a2bd884d87fcc83c5fc5aad91495ec6a`; bsc `0x6dcd6942c740d3749792149a21eedf3d82cce21e`; bsc `0x78006b8b80677aed97ae4f55782e75ce956f54d6`; bsc `0x91b07b0fb40874a61c2ed26dd63869f579befd34`; bsc `0x97c8d5a7d9c9be17a5b3fc83e14fbe2a878807a9`; bsc `0x9c7f6dc15399b353165ec7f86c1e2cf1feb7be4a`; bsc `0xac05ff30f79d0d697b5156f85839127101a51fe6`; bsc `0xb6730d3c7e43ab99a0558c6caa5ce59fc393cea1`; bsc `0xc410977aa97366eb0250678cdc890c5e650609ed`; bsc `0xcb00aa9d486c1ef51d38a85c2d16cb849affe6b6`; bsc `0xfd53f8daae81f8eb7f5d434e1922949ce6d24f67` | ⚠️ Unaudited |
| MaturityPrimaryMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 16 deployments: bsc `0x07a2d8c053015b57c2dfc2b7450d521de1bf5559`; bsc `0x188fe201b4335cfc1cc4f08b0c7a53488159f274`; bsc `0x27b5dc8d68499a3878805daa4dcbff154cdd7fc4`; bsc `0x2c5752df78d53955fbd4c585a66eb12dcc78033a`; bsc `0x42b2a28822fc79e38f6aa04cc92a2028ed77a8ee`; bsc `0x4346d53e77fbca11c37e25a51189e0344c8b93f5`; bsc `0x64e30fade0ebf18ab8a5123117729d1e374d8a45`; bsc `0x756889b49e77e56606a715e4b20d9ec438b8602a`; bsc `0x7a7bbe67a88f1bc13cad01d9b1e2eca4af47459d`; bsc `0x9af013fabfd2f4b8e3cd4cf6d13dfa502604198b`; bsc `0x9fb23b8a8eb33546346e09a9b780d8f54922ead0`; bsc `0xb26009f75e3f79122d69ecd4688f0e0b90a0eb2f`; bsc `0xc667109e0c857dd7badf3db28a57410ee18e29eb`; bsc `0xc94231f2f60656d1ccd1129d67076157a4842166`; bsc `0xf2b1eb5486c2abccb0ea5b434338fe66b6a111c0`; bsc `0xfaf33641c879bf7b5ad9387c0cf5b2084e0eeac9` | ⚠️ Unaudited |
| MaturityPrimaryMarket | unknown | project_anchor | own_supporting | 0 | scroll | unit-258980 | `0x088e2f0fcb2acaa5ad990311839b1d37ee41679d` | ⚠️ Unaudited |
| MaturityPrimaryMarket | unknown | project_anchor | own_supporting | 0 | scroll | unit-258985 | `0x21366de9707a1044e351280f085821c734791cee` | ⚠️ Unaudited |
| MaturityPrimaryMarket | unknown | project_anchor | own_supporting | 0 | scroll | unit-258992 | `0x47b3913e6ac7dcb9752769465f875596c6f194d4` | ⚠️ Unaudited |
| NodeOperatorRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2625871323360a04d1d4302a993a2b2d049dc51e` | ⚠️ Unaudited |
| NodeOperatorRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258974 | `0xe926f01953c3b94222fcac7474b31e3f8eafb308` | ⚠️ Unaudited |
| NonfungibleRedemptionDescriptor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258954 | `0x7d7473505978442f181eeb9ba147f418281a5504` | ⚠️ Unaudited |
| OracleKeeperHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x141faeefbd9ec0b88326050959fe88a14ddb74bd`; bsc `0x4e58f941745019e4b41b00994d8dc4e2cc6962ea`; bsc `0xf890cecb2b867ecd19d70dd928d1f6a0a017a7ff` | ⚠️ Unaudited |
| PrimaryMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x19ca3baaeaf37b857026dfed3a0ba63987a1008d`; bsc `0x57c8041c6aa3440843b5e48b16016a95f822195f` | ⚠️ Unaudited |
| PrimaryMarketRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x10e02a656b5f9de2c44c687787c36a2c4801cc40`; ethereum `0xba3c7ac882c99ae139a1a9d84e6cc03aa62a2aef`; bsc `0x678dad6d69b610e0a6440ca2bd184154689d0fcd`; bsc `0xa61f3d8073f7d83c21761a123b8083ff73e2f6e1`; bsc `0xd5396f6d8173bd0a8f64c68d81b41a39162673ee` | ⚠️ Unaudited |
| PrimaryMarketRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258975 | `0xea8e6f2c426d207ca0916adb42cea032102b18ba` | ⚠️ Unaudited |
| PrimaryMarketRouterV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 16 deployments: bsc `0x01a45d60af80c42aa3199899f37a9867a87eb9ee`; bsc `0x09e9ecb58e8e485a4999cfe27a6acfe2cd029290`; bsc `0x1058c324d2e37c2da848e7f427debf6ef8264191`; bsc `0x235f1bd0c3e155d6e214474a4f6c76350d1a3c20`; bsc `0x245a734d01d594430fdf55b46c23c4f477134123`; bsc `0x32a8bb260c6be0191ad63c4bcf6990d8d4ab4335`; bsc `0x3a000a62b82f9b4203c9686e1069d8f8f1c63977`; bsc `0x46e6a5989569669b6b99c36f8b5c73dd28a4f5b0`; bsc `0x55ab1fa264113e32a709a380322ecdf33f4c3dd6`; bsc `0x675b9d7f14596478fc8cff1a83bc60cf46eaf832`; bsc `0x8cf1643c988d105a4b1a83df8995ff52b083b276`; bsc `0xa2e8c2aee371d2065d08bbc40a953c8832fb5ca6`; bsc `0xbd1450ae1ef037861f762c03aa55af29f8bdfe17`; bsc `0xc5d5f9b2bc49fbc0a3565a48ee21256dfe79c343`; bsc `0xe3515efd6a2d4c49dd7572546985bdee36542979`; bsc `0xfdf6c8cf9faadc5b9b829c9c8dbbcf15c3fd3463` | ⚠️ Unaudited |
| PrimaryMarketV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15f2fefcf313d397f9933c1cb7590ab925d5cb59` | ⚠️ Unaudited |
| PrimaryMarketV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x25c601a3fca896be827ef47e52bfcab18601eb17`; bsc `0x991c55304790c75cebee69da7601a18aa0977f24`; bsc `0xec887f1ed49ff192a8ac3fcb82e120bd6785f522` | ⚠️ Unaudited |
| PrimaryMarketV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd0b4d35cc6ec86d1d52b8eb07b5d029e39ba70e` | ⚠️ Unaudited |
| PrimaryMarketV5 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258962 | `0xa8be5ab62794a647254e1e62844201efc8477e22` | ⚠️ Unaudited |
| ProtocolDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x023748ca9e8658a4b6815ba8fd396b0ffa7d2ea9`; bsc `0xc4df282fda961f534002cef2bd76e3e649ec0acb` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258942 | `0x18b80619fca159fe3c655a11c94c040f72241abc` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88c8890505384f4eb3a281274b1dedfff8448147` | ⚠️ Unaudited |
| ProxyOFTPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-258943 | `0x25cd496d66708166a06da16ed641dd286ce76815` | ⚠️ Unaudited |
| ProxyOFTPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x38f51be38c01126fd671586ec9d35c58a1672d59` | ⚠️ Unaudited |
| ProxyOFTPool | core_logic | project_anchor | own_supporting | 0 | scroll | unit-259023 | `0xf440e381e682a458505c12db813dbc36da4f5970` | ⚠️ Unaudited |
| QueenRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6aed7922366611953546014a3f9e93f058756a2` | ⚠️ Unaudited |
| QueenStableSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfcf44d5eb5c4a03d03cf5b567c7cde9b66ba5773` | ⚠️ Unaudited |
| RewardCashier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x264382b200bc1fe51a9b58f704394de172341418`; ethereum `0x410f384dff2b9328d90851e13e5e22693fe150f7`; bsc `0x79e8ea3cf94327ebf1b23fb67c1afdb835dcfe0d`; bsc `0xacc5b89b8bf6705aeb9db8889ab85d3dba505e37` | ⚠️ Unaudited |
| RewardClaimer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258955 | `0x7f08c4f98265712c162975cb8da1cf3f5bf8fac1` | ⚠️ Unaudited |
| SafeStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1ef20947d0de8f8db3acec9f349b72d75383f8a9`; ethereum `0xe83f1b5681cd8a7eb132baf2d219331d90d9df03` | ⚠️ Unaudited |
| SafeStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258976 | `0xfb399517bcb023751b363c2b4333f59d3a202f3d` | ⚠️ Unaudited |
| Share | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x15d0318fddf785ac0d3ba690c0033b3bedf4c648`; bsc `0x3a632b713637d837ff3b0e34d093a21da1ef9fb1`; bsc `0x80da8ca6c3dabd3a9f06ca8eeed5d61687fab7ef`; bsc `0x8cc456b384c8ad06bf430f4f130aa63ef0dc6f85`; bsc `0x9fd554cdb6e77d9aa048a37dcccee41fffad1a90`; bsc `0xa0c1a9a702de28d1562c423ccef74bbd45e4dcbb`; bsc `0xed3805ede679cc48fe1e91e561138bca659fca43`; bsc `0xf8d829c3eb05c078e7911efb3303c7899c8d2c3a`; bsc `0xfff9fc084cb58974defaa27e05e1fe2439b75dd9` | ⚠️ Unaudited |
| ShareStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x66f9d16db828d340858b1fd4859c4030247d4b70`; bsc `0xaf098f9aadad3bd8c9fc17ca16c7148f992aa1b4`; bsc `0xfa7b73009d635b0ab069cbe99c5a5d498f701c76` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258946 | `0x307462d1a183659e9af73fa1bca7a0d858714598` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258948 | `0x379e8d9f6a8a045a8654169fabff8bcfec0d3934` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258953 | `0x6aff2526d50fa742ca08ed1cf6e3cf7987a30f5c` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258957 | `0x93ef1ea305d11a9b2a3ebb9bb4fcc34695292e7d` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258966 | `0xbb18521b4b19bcb7e6c2327f13bbd8e8149ca3a9` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258970 | `0xd2df8d600f7b32b8e708900646f8898c52158690` | ⚠️ Unaudited |
| ShareV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 57 deployments: bsc `0x01236efc7c2e52fc940fcca055212a8403aa7ed6`; bsc `0x0818293f0c6c4e752c4927fff881cbad1f3723b7`; bsc `0x0a229c88653ec608f7fd63d50a2c10169864223f`; bsc `0x0e5304160fb7750e89f0a617f5e02bdcf15ac4a4`; bsc `0x1094ee7227b03ccb47113309ee51f327bbd6f175`; bsc `0x1395b84c8f62a0e03cbc0bc83714ce2d82ce5a34`; bsc `0x13df92dc908db6c8df49738acddbbd0fc9ca0c0e`; bsc `0x1424cac841de6540a0df0ed102be0c18c40a5bd3`; bsc `0x17206fadcf4e9884f1e584de5d51b363da26b09d`; bsc `0x1bb33b49d1cc221da402cc4277ba32889f2651b8`; bsc `0x1d56ee9c14734da0a6ff3eb2a9b7b2669a387e2b`; bsc `0x20d269c5bf15b6679d832ed05734e30a7657ddf3`; bsc `0x21944a92fb925c811d0543b7b23cffb4b4385ff1`; bsc `0x3f143697aced30dc167a4cfd73a6ce6bc56a4c7a`; bsc `0x3ff927f15e50227f7db84cf4f911f5825bf172a1`; bsc `0x40faca191e8c571ffe37c631e78732b49845d52f`; bsc `0x47cc4beda800a7860c1a310eb8d8c440cad74759`; bsc `0x4c1e90a25d2782080114a1a58f78d91429e222b2`; bsc `0x4e8a73fc32562bc43f0ca311197ab5f50e7b5543`; bsc `0x52e4353ade31e97600c1d21f0566efe160f05ae3`; bsc `0x53ef5c1b632e483e659a07de6e72d9295da471fd`; bsc `0x5aa9038e1934b163740b5077b679ccd833c79da8`; bsc `0x5d3c9406fefb2d75f21a24118fa3cf549c59557f`; bsc `0x6369395ab20386b3bf6fefb30e6eb759012fea89`; bsc `0x65067cd304850a06a083c4dbc59a57940db9df6d`; bsc `0x716155ad72558e848eab5cb88d6522a3102f5e21`; bsc `0x81607ff6fb66e089b573f2cdb428de4c7fcdbdde`; bsc `0x89035eb6dc4d3bb504c39e05f6cf25a7c8f68bbc`; bsc `0x9000640c460bdd0d16b2a187e820af077aa6c83f`; bsc `0x92b99c7ccbbd42eb789a564e6bc73d2a7bb5fa36`; bsc `0x9c1829b5d1d8533a4ec1d1b8e62081a34ee82244`; bsc `0x9d076ece5dd3ac22dfabfa08dcceb1d7a244a7a6`; bsc `0x9ed29f2c0985ac0eedc1d7ad7efd5a032e9f16f2`; bsc `0xa14424044cd3e78a4f20da2adb25533837fa3547`; bsc `0xa5235d6e6b7684e5c870b797fd3ba35cc7ec4e7b`; bsc `0xa5b75770ffbcac62aac621d57d7ce9f4ea60d7e7`; bsc `0xa8494ca15c6e70b9b27067fd90be614aaaf6389e`; bsc `0xaa107d3cf7035397e2f71b2b588926b01ca125b4`; bsc `0xb309f9696eef80a0b6476e02b84615adc60f52a2`; bsc `0xb34309650024d48251f2b4d73c1372ded31b71d3`; bsc `0xb87967ea83a8d980f1c4034d8319372e3fbe45d5`; bsc `0xbe7ee1b9abf7cb4e781fca15fdc9e72fadd601e1`; bsc `0xc28fb6da376a442b589a218e9f9bef138e01d76c`; bsc `0xcdd85b349861e20bd35c4de72ccd1034d46390c3`; bsc `0xce2a34da4f20b942038114799ce8b3db0f9d9955`; bsc `0xd4b3c0e0b7ffc5166539e816d187e7f871c7188a`; bsc `0xd4c753a46fb7861138c82588fa9bc5dfd318856e`; bsc `0xd94f01d2fb791882fc5e4d11ca7ffd8192ae5f00`; bsc `0xdb3d7e3ba3d5c2b9128a6e072d84ca9a5eeaa3d3`; bsc `0xdbeb5f6667d3a6bf54603687e2d23273990ce0b9`; bsc `0xdcaecd09674e47f8ce6ab004032c8b9f1ca3b76c`; bsc `0xe94a3eaedca412a92869345492cb95c1b80f4665`; bsc `0xecd4a7410aad70858eb38f710e9fdba49992653a`; bsc `0xf87e3d9c0fbd50eeb82ce55205ad68d71177e77e`; bsc `0xf9cd7acabacaba9e3170106663f18824ca1b9926`; bsc `0xfdc8a37f4286868751ad24af083cc31cbb991286`; bsc `0xff23266e1d30582bb4280d3f01f573a75bb79c7c` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-258981 | `0x09750800529e7bbcd07d4760989b19061e79165b` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-258982 | `0x0e6a005790559b60bff5b8c3ea68d2361f92ccaa` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-258988 | `0x3b97ccc0c8c5e10ac3e7f1594b55b6239a493eea` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-259000 | `0x6e20e4f0f1a3a6836840001e4195b65d7735d92d` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-259001 | `0x6f2d7ce6601a07fbfaa7b9c9608ca99d5f35ff4a` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-259004 | `0x820144d59d20f1838a88cae95c946a9bb6a7fea2` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-259009 | `0xb5e3d3fd34689c27f3549781b0369b87db105839` | ⚠️ Unaudited |
| ShareV2 | unknown | project_anchor | own_supporting | 0 | scroll | unit-259012 | `0xbf4ff74af2f4e1b3820c32a0fc3a47530367112e` | ⚠️ Unaudited |
| SwapBonus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 27 deployments: ethereum `0x0df2489117b0e5b72b83c9d263bf609b30322231`; ethereum `0x321091eabb7db3e0a26494d0b822f24ffbf95308`; bsc `0x125ed6972c9baf701f33a2605cac33a2e5ce9c27`; bsc `0x1a4ba3793e16265af18248ea0127119881f62add`; bsc `0x1b52ba6a757434b6b9c62e0d92e3d0ba1e3aa832`; bsc `0x23fac9e289cc5eeabd763af6d83086274749bc88`; bsc `0x32b67cb26f8fb268c6c4f289e809173f4f6d33ae`; bsc `0x41e80d4bb7f6922fcdee112474ee1e0ffbe65d65`; bsc `0x4871782098ef453226b6bea633280c4533d78bae`; bsc `0x4ae8190fd543167341ddc51682182f5bcb7f4056`; bsc `0x4fca6bab60c2cfd7852781efc18972454752a500`; bsc `0x646b96ee9bbd2cf2858c8a846e7181aa803602c2`; bsc `0x6911a973ab19ac6258e5a1e866cc497bba8a6594`; bsc `0x6bec981b14e5a3872eb35bc19d9672078aa2eb2b`; bsc `0x6e6dfc6cb7d8c3a7d5d03e3179e977aed69978a0`; bsc `0x7813b3ee5fb6e296c73039d0561cec875cfcd0c3`; bsc `0x7c29a6a27d3ebd23d6908d16aad6381377b1fc71`; bsc `0x9797976a17101b447c19bd421fdb9b5d875c234f`; bsc `0xa703768eec79cfd3b442539fbdaafc8cfa723f52`; bsc `0xaa712f33796ae98a884fbbefb78dfbd839692c13`; bsc `0xb48d3cd9b1c34c204ce2e2d9bb7accaa937f0bba`; bsc `0xc219786f83f25ad0dcee8a3bd1077cb729e056d5`; bsc `0xc29d808ead2d9dba0edd04ca0cfee0bd8d90b15f`; bsc `0xc532079ea8f21f81e191cf67373a99268ca5d3f8`; bsc `0xc6549dcff837bbe9a2f4061aed188c91dccccba7`; bsc `0xdfd3b0dbf3e506e8ef4d0ffe2820b5a798f793ed`; bsc `0xe68910beabb617cd40f2ea68a3bf755ae1adf3cb` | ⚠️ Unaudited |
| SwapBonus | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258965 | `0xb6f98aa542c3c4aafc1a187a39159bfb25b7c9e4` | ⚠️ Unaudited |
| SwapBonusWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xc690f967ee9036d6a47f75c1f8ade2bb6bbd4855`; bsc `0x6983d348b10bf5c581ed682f041edaa3b800a1ca` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-258951 | `0x657498143d67e14d9928bc5ec1608c771e6c3314` | ⚠️ Unaudited |
| SwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0x688de10e3f17eab15ff45c8da4f39df89cb378a3`; bsc `0x3599ddc1efce801f8657f64127acb07c0b5cadc2` | ⚠️ Unaudited |
| TimelockController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258950 | `0x509b82c847f90e9d19297c25965c534ae0562c35` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4bb3aeb5ba75bc6a44177907b54911b19d1cf8f7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | scroll | unit-259027 | `0xffd17794bf2e3ba798170f358225763f1af8f5ba` | ⚠️ Unaudited |
| TwapOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x7b2a312090344d76bc26bd9d04ed672e844a6d61`; bsc `0xd924955c92a67d32e0c10e686a6003b22ecfba28` | ⚠️ Unaudited |
| UpgradeTool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x8347b6f298340954565bc6c8a47d55bb21313aa8`; bsc `0x8369d4c07a1f853c5d167c9a042fcc918c3705a6`; bsc `0xfd781525e7778cfc84d005cb120cf550e1536b9b` | ⚠️ Unaudited |
| VestingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x0c3eb024942bc2d863796e74f6896b983534be06`; bsc `0x102a99074d49676718139e27282fb1a68b33f51c`; bsc `0x1c8e9f11b6b69a3cbacec8a8ff5aa47b52945260`; bsc `0x2f045538410c8c52a3f6026f7aa5879d83545355`; bsc `0x575a150ada215371b1bffcd3614165fc14b92ffe`; bsc `0x6d2b825d10548cf04e7e306b86438b4541d405cc`; bsc `0x77f82a282cf2cd77806b12be731655de1d130f94`; bsc `0x9667680b71143bd06b2abb0027359b598b6c5b68`; bsc `0xfa52b000ad448401672f9e0b3b34a996c6aa67ac` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x5cb57f1e5b463b093efac1222e87fa51982b5f23`; bsc `0x8fb2a4d801e223a3f76326106b396d3ed25837b4`; bsc `0xc11f14da5e998be1010c06f9d92574c2e88672c1` | ⚠️ Unaudited |
| VotingEscrowCallback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xe7ae69578cff5bef873d341f872ea2b64b1af462`; bsc `0x682ec9172f37b7b21bba6ee094f0c763a5931ebc` | ⚠️ Unaudited |
| VotingEscrowHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x718620141c129fce223287a2f6dda1d4aa5b57f8`; bsc `0x7c0697fccc516b168f1834829d715118aa8e46a3`; bsc `0x983f6170394d21c3cedb10f04eabdcdf87355066`; bsc `0xf60b5beb3d86a4939558a7ae4197e83801479936` | ⚠️ Unaudited |
| VotingEscrowV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x147c0057de638259715edd90772ea568f7775620` | ⚠️ Unaudited |
| VotingEscrowV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x116aeb23c7912c0cda16cbfc5f406e5b1dbdee9b`; ethereum `0xb9d0dd8e9d21aaa785ce6f745012d5084bd4daa4` | ⚠️ Unaudited |
| VotingEscrowV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbeceed296f5093860ef849485c66c65404d3e5cf` | ⚠️ Unaudited |
| VotingEscrowV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x229cf058e5103b657cd035b79e2f1a9d107036e9`; bsc `0x36f4178a988799c5a316fb4fe57b540d4c3b3dcd` | ⚠️ Unaudited |
| VotingEscrowV4 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-259031 | 2 deployments: ethereum `0x3fadadf8f443a6dc1e091f14ddf8d5046b6cf95e`; ethereum `0xa0fe80780ac30afdaaa37f4b4428fc409cd8cb7b` | ⚠️ Unaudited |
| VotingEscrowV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x613576abb2fdbc4108a58aab744154cc5a32863e`; bsc `0x95a2bbcd64e2859d40e2ad1b5ba49dc0e1abc6c2` | ⚠️ Unaudited |
| WithdrawalManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-259029 | 2 deployments: ethereum `0x16d0ff163e6430b99c3e23b8eecbf840a029dd88`; ethereum `0x4ec117002928e5319be38faa16c7f87b0ef3e6d3` | ⚠️ Unaudited |
| WithdrawalManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x901d53bb0362288acbd12113e5b97fbb6c49d7db`; ethereum `0xb0a90429e2bc26209e04330456a69aef5f9ece05`; ethereum `0xfcd9a180a30bf2c0a1f4994ceed6649ea99234ee` | ⚠️ Unaudited |
| WstETHBishopStableSwap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258964 | `0xad06a2dbd34da8f8cf5f85d284a5b93a2057bdb5` | ⚠️ Unaudited |
| WstETHPriceOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258968 | `0xc32f23ee32cb5681eca5e84c2ae728c3f0b0149f` | ⚠️ Unaudited |
| WstETHWrappingSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1e228ff4cf95a2b5c019b7e71d484a09eee84ec` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (86)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17f4d4d859dbc2fac2a5103e4ad5d4d2a871b9d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258945 | `0x2bac57d29570fe56b60216c26da3c5b5c804b916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89d5a6d1b0fef4b745d144db9107c4813b83ccb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9af9ece0bc1f7082f6396494c39c0a32c7f06bf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e9cd4957277bc39ed5aaf21a4d45b174de04f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8e56fceb946239a71ec13b886abb45824f9291e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe17b1db06bcc3c705634c09aab735129b06b5bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfffa6232db0e278bbc55881e2c3454991a17e54f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d7f76f83e208cd19dd1f609cb40750e40aa25d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1dfd37cc31e09c0d2f38eaf7f12b71f604d2bf89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2142a458704d4e8e8fd93c166438a5c2ebbb58cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2aca3dfdd18c91e3131741468e3e186cbc9d5cf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f65f53fbadcb5bfba1150bd2bf944783180d66f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3634e6728a84ea7ab959953b93f41446f3a306dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41092e225e46898e53b35c147420f758ad004906` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44073262764d7cce3ded8882e637e957dcc7c503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47a115ccd06fc8c122ade86d03ff510e32326225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x534b38e2558779e93a0f5f0e7b4fb7205a955d75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7fe452832c69b1ac282dc6984d5bf9ebe1120cbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81e32a0d408a55c1319a7761688ab0d7c2ec218f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93ac57a2933069196bdf8b772379f2f676a3c43c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x953ffb6eda97fa3e22bc1b869e4fe6beaa6dcaf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97993cd66e13fb3f4877886cf5974c4bc78f74af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb6689acac60667c4439c448a83a7f96c3d9a677c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb66ecdce9089e6122f3cb17d140f433bb92edcb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb9a8adf44c74ab46d9821805f3d13070af4f959` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc67428c43238c18a1a588d5429283ade3d98fe76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff12efb4dd001b3fa41e86f3e2660938bfdc9c35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258978 | `0x00934045078c5159c706ed43b7fa9578b7e058e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258979 | `0x034a993627c5f780e9af80160edc94f15c0e9fd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x04281b79df1a24d04af1d304ffc66fc75922f83e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x0e25a7f5b387d3a644fe4426d55e6193042e3b23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x1130eadf1c715672f0fc8dca950ae7c7feccf871` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x12e056175d9c3dbd33e58ed17c0662c41aeb503b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x17fac83735c959928884654bcbc773bf09968078` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258983 | `0x194c6acc13e7ecdcb6fc767359291a6fee179440` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x19a0fc4770168717a5f9becbfea16aca9f711ec3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258984 | `0x1bf019a44a708fbeba7adc79bdad3d0769ff3a7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x1f08983d69a49b11337959e7ae60af3a9c68010a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258986 | `0x289e69e5b611f6193694f6cfa2f93b7cf161253f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x3130010b451e59fe10955cd7c675e32fb34d1200` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258987 | `0x33b5ad38dcd817090474d4f79b75e1403384e0c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4612e18c6bb2d3a3277fd9fa2a2eb6022aea137d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258991 | `0x461f98b371ddb47ff0b60f6be21d9858f13509cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x476e5db98b7d743e8b617259741c11125228023b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258993 | `0x49195ecf9390c5e1fb0081ef28a77df777e0cd65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258994 | `0x4b0d5fe3c1f58fd68d20651a5bc761553c10d955` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4da8458f7c8449c9f5bd126cef49474b71525b9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258995 | `0x4dd610d8d2a8f7de277711f0dae0e88e0b270dff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258996 | `0x512d9cd7df5d4617fea9386ae2d6c28d674378c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x5956f0d618b8a4f8c5473f3804918e7fa7f4fa8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x5e52b5a81ba15360a035a5da1c1575822460b3c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258997 | `0x62b4b4723770a8f28afb796613c7e245b3c30c86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258998 | `0x63baee33649e589cc70435f898671461b624cbcc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-258999 | `0x65cecc46288abe7b22a4552a98620b78ed4b3462` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6d488817ce56959b34492a819044e75f182222d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x733a7382dc8747186dec1bb5fd7e04f0b3e4d221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x7af7326634fc7600a2535a3310d1c9e16043b7da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259002 | `0x80800c31672c534344dd639103b83b088dedf5ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259003 | `0x80df7e2bb71cd38af14ee8b1b510ad11c032155f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x858b14d9e80ce49e9eca487ae9a432bd05a94393` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x868d99d53b8fb1daad69128b3aa55187e5495886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9533333160467efa5c629e633d9c25d95b582ef3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x986b23caf6b9f752eabd355b1b4e5a44dc04ef9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259006 | `0xa253420a60911b896b87db7e17192990a37734a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259007 | `0xa2901b0bdbd42747ca162694d2fcb7a999e0c2bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259008 | `0xa793fb87c9062cdb4a9db031343287a9173a1878` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xb5031d4c4b1bed0756cacad96239c6805d94c14d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259010 | `0xb6d5d0a3a8298f9cc322d202d60669dd41621807` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xb6f09f7aa4080aad666db7dcde45f59393da4853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc6bdb5125515e5ff21b75fbf15cea08d814345b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc895cc35f37a7b545ec0ca3da05b5527669716d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259014 | `0xd180fb177890e78af181823f4eb3cb5033ef7795` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259015 | `0xd48cc42e154775f8a65eea1d6fa1a11a31b09b65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259016 | `0xdd730b2ebe9e5679f695db1aa695ef6f2c9a30df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259017 | `0xdec17f71ef579123939aca1bdfaeec21eae00d67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259018 | `0xe302f06f7b9b3041f20508548cff49a0e6fe83e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259020 | `0xeda4b3946e3a0f6dbe65bbf0a03a4d3a00cee32f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259021 | `0xf380bb909434d5a335e7073b6e17bf52982434a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259022 | `0xf3bf24b8fdb80b167b3fb6b97131fb942579dafa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xf478f5eb8eb12a9ad66f3dfad59ab683486dce25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xf8d590e86e55fd6885f83f55ad352aacdb32b875` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259024 | `0xfae0e20b4d74531e58ea31a964adfc61c08fa13b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259025 | `0xfbee64fa1a89b76976750d62c8f3298952c5a518` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xfc78d4d54863d73e2e50373fcaf2c655ef0fb460` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-259026 | `0xfee8cddcc1d2345d8e7057a5a19bc69694b86922` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 375
- Live contracts: 32
- Unknown liveness contracts: 343
- Source-verified contracts: 321
- Currently scope-matched contracts retained as-is: 3
- Classification counts: currently scope matched=3, candidate review=144, contamination review=12, exact address book overlap=7, source verified unclassified=155, unverified unclassified=54

Showing first 200 of 375 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | AprOracle<br>`0xa9f575d735439eb4187b7bbc07459124811feaac` | project_anchor | unknown | live | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| currently scope matched | FundV4<br>`0x69c53679ec1c06f3275b64c428e8cd069a2d3966` | project_anchor | unknown | live | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| currently scope matched | WstETHPrimaryMarketRouter<br>`0x9c69b6caf5074a2dec33bdb84d0f871d509240fa` | project_anchor | unknown | live | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | Briber<br>`0x4eca7fc4cceea6c47a498e60e295d14abbf76fd3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | Briber<br>`0x5d76ee4b800660565832f2323f4ac92856fa9776` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | Briber<br>`0x99248d40a4880cb7bb188427e9556f8182e9b614` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | ChessSubSchedule<br>`0xf4d665541eaa7e5d27703030ca958d9686ceec69` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | ControllerBallotV2<br>`0x41b598d49ade2dbf870b5987c25975ecec16826f` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | ControllerBallotV2<br>`0xadf40ca696df9185015fab296546dd702186acef` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | EthStakingStrategy<br>`0x50fe5165be08095a1f4cd96877cc54b3cc2ea08e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | EthStakingStrategy<br>`0x66453f68d6dbcf7859e08f0c43df74e6da06ef8c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | EthStakingStrategy<br>`0x96f4489fe75d0494bd5088b0d80b17a5759dac37` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | EthStakingStrategy<br>`0xf737012c83c0ac5cc55df3bbcda7d82dd8c4081b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | FeeDistributor<br>`0x00db7b1300b2b24fb9bdf4f661f650a2998e367a` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | FeeDistributor<br>`0xbc428f6573827db9773f9e4bc1f5c899c884842c` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | FeeDistributor<br>`0xe6e659ad43029e8d89ded5d3ff030ddc5c909cbf` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | FlashSwapRouterV2<br>`0x0c18932d6dd86fbea662de6389fae86f5570983c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | NodeOperatorRegistry<br>`0x2625871323360a04d1d4302a993a2b2d049dc51e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | NodeOperatorRegistry<br>`0xe926f01953c3b94222fcac7474b31e3f8eafb308` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | PrimaryMarketRouter<br>`0x10e02a656b5f9de2c44c687787c36a2c4801cc40` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | PrimaryMarketRouter<br>`0xba3c7ac882c99ae139a1a9d84e6cc03aa62a2aef` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | PrimaryMarketRouter<br>`0xea8e6f2c426d207ca0916adb42cea032102b18ba` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | ProxyAdmin<br>`0x18b80619fca159fe3c655a11c94c040f72241abc` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | RewardClaimer<br>`0x7f08c4f98265712c162975cb8da1cf3f5bf8fac1` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | SafeStaking<br>`0x1ef20947d0de8f8db3acec9f349b72d75383f8a9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | SafeStaking<br>`0xe83f1b5681cd8a7eb132baf2d219331d90d9df03` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | SafeStaking<br>`0xfb399517bcb023751b363c2b4333f59d3a202f3d` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | SwapBonus<br>`0x0df2489117b0e5b72b83c9d263bf609b30322231` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | SwapBonus<br>`0x321091eabb7db3e0a26494d0b822f24ffbf95308` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | SwapBonus<br>`0xb6f98aa542c3c4aafc1a187a39159bfb25b7c9e4` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | SwapBonusWrapper<br>`0xc690f967ee9036d6a47f75c1f8ade2bb6bbd4855` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | SwapRouter<br>`0x688de10e3f17eab15ff45c8da4f39df89cb378a3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | TimelockController<br>`0x509b82c847f90e9d19297c25965c534ae0562c35` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | TransparentUpgradeableProxy<br>`0x0c5f4b16378dfbb71102db10745b79b2dc22b03d` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | TransparentUpgradeableProxy<br>`0x116aeb23c7912c0cda16cbfc5f406e5b1dbdee9b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | TransparentUpgradeableProxy<br>`0x3fadadf8f443a6dc1e091f14ddf8d5046b6cf95e` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | TransparentUpgradeableProxy<br>`0xaa75969e8e407534f6f44d95b5b43b0e6a062750` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | TransparentUpgradeableProxy<br>`0xc88ac7d60c8f3f90b43c5ba144f3cd684f01d040` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | TransparentUpgradeableProxy<br>`0xec5468780b57a8988666140a153d858bd00c9113` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | VotingEscrowV4<br>`0x229cf058e5103b657cd035b79e2f1a9d107036e9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | VotingEscrowV4<br>`0xa0fe80780ac30afdaaa37f4b4428fc409cd8cb7b` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | WithdrawalManager<br>`0x4ec117002928e5319be38faa16c7f87b0ef3e6d3` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | WithdrawalManager<br>`0x901d53bb0362288acbd12113e5b97fbb6c49d7db` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | WithdrawalManager<br>`0xb0a90429e2bc26209e04330456a69aef5f9ece05` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | WithdrawalManager<br>`0xfcd9a180a30bf2c0a1f4994ceed6649ea99234ee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | WithdrawalManagerFactory<br>`0x16d0ff163e6430b99c3e23b8eecbf840a029dd88` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| candidate review | BatchOperationHelper<br>`0xa6fd871d96f4e612b2ed7655f3fb78d9672815a1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | BatchOperationHelper<br>`0xdcf0bfff2d6b542b55840621fb560d43d0a35eba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | BatchSettleHelper<br>`0x78fab7fd7fc80518543af92777dbbb18d7dcb2ca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | BishopStableSwap<br>`0x56118e49582a8ffa8e7309c58e9cd8a7e2ddaa37` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | BishopStableSwap<br>`0x87585a84e0a04b96e653de3dda77a3cb1fdf5b6a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | BishopStableSwap<br>`0x999db223f0807b164b783ee33d48782cc6e06742` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | BscAprOracleProxy<br>`0x1c319ec0def2474108ad5645a8b6fd92f9f35583` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | BscAprOracleProxy<br>`0x82c9fdf1a17071cd8150af9c125a21d566d5b165` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | BscAprOracleProxy<br>`0xfc36880eba1194c3b7bdfc8f2934c34944f9c931` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | ChessControllerV4<br>`0xbeca6962759c7ae25e900dbe3f898bcf1fb1dd70` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | ChessControllerV6<br>`0x94ddc5d023e3e4266380a9199d3fae86195dcece` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | ControllerBallot<br>`0x66cae7a198792089060c7d68e31ca7fcf9274377` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | ControllerBallot<br>`0xd28073478157357171f7a8ae111b1c3302ece043` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | Exchange<br>`0x907a50140aee1e457b8d8116f9b5f8ead1931e25` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | Exchange<br>`0xfa5f5940beb7b37ae5c39660f2601d0d75f9ad95` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | ExchangeV2<br>`0xabad55484c39d0394279ffcedc11e23001415080` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | ExchangeV2<br>`0xb4fd07748bb1f1d5736876f6b672a49b81a7b299` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | ExchangeV2<br>`0xc39d296db45d728cd4b5beff882c2aa2fe329c4c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | ExchangeV2<br>`0xe5cc18efa78874c30bdee8a5b34f56392e94ac41` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | ExchangeV3<br>`0x04ff932ca53ed6e1f5b4b6e98693bd95b0f647d7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | ExchangeV3<br>`0x3826314c4d7d2d6eee7bfed4302a55b422540e87` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | ExchangeV3<br>`0x8c4e46e99db41d121ac58e72e2b62f56fc0553c6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | FeeDistributor<br>`0x111150736cdea75eb84cfd86a93e93a60ec56628` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | FeeDistributor<br>`0x4832f0faeae2b9458d0c01bcc11b99d44d16fd42` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | FeeDistributor<br>`0x4d8dcec171be8cb32ac9a39f6b024879459b7bb7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | FeeDistributor<br>`0x57c6df30436c9f1864536315e157cb999ee20edb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | FeeDistributor<br>`0x5bd53b0258c38cbf3e57950697f06021c037eb22` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | FeeDistributor<br>`0xe5f4efe076b830f69a6b3bad6005618f86dad5c6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | FlashSwapRouter<br>`0xc841bd0ab8b6cb580ecff647a79ad94287851c49` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | FlashSwapRouter<br>`0xcf40917491c60afc1d60888f73f7dfd4629e0a2c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | FlashSwapRouterV3Helper<br>`0x04ab3fbd6b47683b7d3926e38d80c8198cc3ddd9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | Fund<br>`0x677b7304cb944b413d3c9aebc4d4b5da1a698a6b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | Fund<br>`0xd6b3b86209ebb3c608f3f42bf52818169944e402` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | FundV2<br>`0x629d4562033e432b390d0808b54a82b0c4a0896b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | FundV3<br>`0x1f18cc2b50575a71dd2ebf58793d4e661a7ba0e0` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | FundV3<br>`0x2f40c245c66c5219e0615571a526c93883b456bb` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | FundV3<br>`0x7618f37efe8930d5ee6da34185b3abb750bd2a34` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | InterestRateBallot<br>`0xe8061a74412e78dda7a762b8f6361518bb9783d3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | InterestRateBallot<br>`0xeb76e34834fb0e2c31d92f0284466385bce5c09a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | LiquidityGauge<br>`0x00d150c057f5d66107dfdb9d6d97f8b53ebd4d7a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | LiquidityGauge<br>`0x131678e24f5f447d0a6a1a42ff7d7723861a9d30` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | LiquidityGauge<br>`0x7350d28b4919d9b05443c0d0121b6dbcb76f022f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | PrimaryMarket<br>`0x57c8041c6aa3440843b5e48b16016a95f822195f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | PrimaryMarketRouter<br>`0x678dad6d69b610e0a6440ca2bd184154689d0fcd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | PrimaryMarketRouterV2<br>`0x09e9ecb58e8e485a4999cfe27a6acfe2cd029290` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | PrimaryMarketRouterV2<br>`0x1058c324d2e37c2da848e7f427debf6ef8264191` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | PrimaryMarketRouterV2<br>`0x235f1bd0c3e155d6e214474a4f6c76350d1a3c20` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | PrimaryMarketRouterV2<br>`0x32a8bb260c6be0191ad63c4bcf6990d8d4ab4335` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | PrimaryMarketRouterV2<br>`0x3a000a62b82f9b4203c9686e1069d8f8f1c63977` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | PrimaryMarketRouterV2<br>`0x46e6a5989569669b6b99c36f8b5c73dd28a4f5b0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | PrimaryMarketRouterV2<br>`0x675b9d7f14596478fc8cff1a83bc60cf46eaf832` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | PrimaryMarketRouterV2<br>`0x8cf1643c988d105a4b1a83df8995ff52b083b276` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | PrimaryMarketRouterV2<br>`0xa2e8c2aee371d2065d08bbc40a953c8832fb5ca6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | PrimaryMarketRouterV2<br>`0xe3515efd6a2d4c49dd7572546985bdee36542979` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | PrimaryMarketRouterV2<br>`0xfdf6c8cf9faadc5b9b829c9c8dbbcf15c3fd3463` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | PrimaryMarketV2<br>`0x15f2fefcf313d397f9933c1cb7590ab925d5cb59` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | ProtocolDataProvider<br>`0x023748ca9e8658a4b6815ba8fd396b0ffa7d2ea9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | ProtocolDataProvider<br>`0xc4df282fda961f534002cef2bd76e3e649ec0acb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | ProxyAdmin<br>`0x88c8890505384f4eb3a281274b1dedfff8448147` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | SwapBonus<br>`0x125ed6972c9baf701f33a2605cac33a2e5ce9c27` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | SwapBonus<br>`0x1a4ba3793e16265af18248ea0127119881f62add` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | SwapBonus<br>`0x1b52ba6a757434b6b9c62e0d92e3d0ba1e3aa832` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | SwapBonus<br>`0x23fac9e289cc5eeabd763af6d83086274749bc88` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | SwapBonus<br>`0x41e80d4bb7f6922fcdee112474ee1e0ffbe65d65` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | SwapBonus<br>`0x4871782098ef453226b6bea633280c4533d78bae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | SwapBonus<br>`0x4ae8190fd543167341ddc51682182f5bcb7f4056` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | SwapBonus<br>`0x4fca6bab60c2cfd7852781efc18972454752a500` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | SwapBonus<br>`0x646b96ee9bbd2cf2858c8a846e7181aa803602c2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | SwapBonus<br>`0x6bec981b14e5a3872eb35bc19d9672078aa2eb2b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | SwapBonus<br>`0x6e6dfc6cb7d8c3a7d5d03e3179e977aed69978a0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | SwapBonus<br>`0x9797976a17101b447c19bd421fdb9b5d875c234f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | SwapBonus<br>`0xa703768eec79cfd3b442539fbdaafc8cfa723f52` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | SwapBonus<br>`0xaa712f33796ae98a884fbbefb78dfbd839692c13` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | SwapBonus<br>`0xb48d3cd9b1c34c204ce2e2d9bb7accaa937f0bba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | SwapBonus<br>`0xc219786f83f25ad0dcee8a3bd1077cb729e056d5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | SwapBonus<br>`0xc29d808ead2d9dba0edd04ca0cfee0bd8d90b15f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | SwapBonus<br>`0xc532079ea8f21f81e191cf67373a99268ca5d3f8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | SwapBonus<br>`0xc6549dcff837bbe9a2f4061aed188c91dccccba7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | SwapBonus<br>`0xdfd3b0dbf3e506e8ef4d0ffe2820b5a798f793ed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | SwapBonus<br>`0xe68910beabb617cd40f2ea68a3bf755ae1adf3cb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | SwapBonusWrapper<br>`0x6983d348b10bf5c581ed682f041edaa3b800a1ca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | TimelockController<br>`0x4bb3aeb5ba75bc6a44177907b54911b19d1cf8f7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | TransparentUpgradeableProxy<br>`0x0a7e898e1fab8639dc3a416fe844662f209de8ed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | TransparentUpgradeableProxy<br>`0x1216be0c4328e75ae9adf726141c2254c2dcc1b6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | TransparentUpgradeableProxy<br>`0x42867df3c1ce62613aae3f4238cbcf3d7630880b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | TransparentUpgradeableProxy<br>`0x95a2bbcd64e2859d40e2ad1b5ba49dc0e1abc6c2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | TransparentUpgradeableProxy<br>`0xb13a07c57ba5297506c71e9c958210fea8bbcef0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | TransparentUpgradeableProxy<br>`0xde9f4b6637531852a0c9edad0c92be839b92437b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | TransparentUpgradeableProxy<br>`0xf071de0e7a6ffceee252df25678c725f04a03b80` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | UpgradeTool<br>`0x8347b6f298340954565bc6c8a47d55bb21313aa8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | UpgradeTool<br>`0x8369d4c07a1f853c5d167c9a042fcc918c3705a6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | UpgradeTool<br>`0xfd781525e7778cfc84d005cb120cf550e1536b9b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | VotingEscrow<br>`0x5cb57f1e5b463b093efac1222e87fa51982b5f23` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | VotingEscrow<br>`0x8fb2a4d801e223a3f76326106b396d3ed25837b4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | VotingEscrow<br>`0xc11f14da5e998be1010c06f9d92574c2e88672c1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | VotingEscrowHelper<br>`0x718620141c129fce223287a2f6dda1d4aa5b57f8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | VotingEscrowHelper<br>`0x983f6170394d21c3cedb10f04eabdcdf87355066` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | VotingEscrowHelper<br>`0xf60b5beb3d86a4939558a7ae4197e83801479936` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | VotingEscrowV2<br>`0x147c0057de638259715edd90772ea568f7775620` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | VotingEscrowV4<br>`0x36f4178a988799c5a316fb4fe57b540d4c3b3dcd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| candidate review | VotingEscrowV4<br>`0x613576abb2fdbc4108a58aab744154cc5a32863e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| contamination review | InterestRateBallotV3<br>`0x6f6677cf52297005ae6eb93fad5e24a482853352` | non_address_book | unknown | unknown | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| contamination review | NonfungibleRedemptionDescriptor<br>`0x7d7473505978442f181eeb9ba147f418281a5504` | project_anchor | unknown | live | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| contamination review | WstETHPriceOracle<br>`0xc32f23ee32cb5681eca5e84c2ae728c3f0b0149f` | project_anchor | unknown | live | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| contamination review | AddressWhitelist<br>`0x5d54854d79280de19031f867f45aa6f461ae0436` | non_address_book | unknown | unknown | verified | n/a | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| contamination review | BscAprOracle<br>`0x8424d933fbb73665e5a8880de63c7b1366a56eed` | non_address_book | unknown | unknown | verified | n/a | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| contamination review | ChessController<br>`0x42e285eeeb14e5866d0ccbbed5efb4692194e2e6` | non_address_book | unknown | unknown | verified | n/a | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| contamination review | ChessControllerV2<br>`0xe359efcf1c5c8f3cdb45bc54e97231780127c02d` | non_address_book | unknown | unknown | verified | n/a | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| contamination review | ChessControllerV3<br>`0x03059893d40739d0eb69e151437df67a48d86619` | non_address_book | unknown | unknown | verified | n/a | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| contamination review | ChessControllerV5<br>`0x6986498555ead5659e603f410785c6f0e5c16cc2` | non_address_book | unknown | unknown | verified | n/a | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| contamination review | ChessScheduleRelayer<br>`0x8d0fffacd3b38161256915acdc194538e0626005` | non_address_book | unknown | unknown | verified | n/a | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| contamination review | ConstPriceOracle<br>`0x18651bf4dd2d920880614df9ad9779da8d4ef250` | non_address_book | unknown | unknown | verified | n/a | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| contamination review | FeeConverter<br>`0x0fd0130d7271ac44e3e252c58c5856bb11977087` | non_address_book | unknown | unknown | verified | n/a | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| exact address book overlap | BeaconStakingOracle<br>`0xffd3196ce42bed1fa988020c902fe7ea6624a15a` | project_anchor | unknown | live | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| exact address book overlap | ConstAprOracle<br>`0x37473872769ff711bd6d800e518061fae67e10a9` | project_anchor | unknown | live | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| exact address book overlap | FeeConverter<br>`0x96ccae5662de55c50b997f13396e6a183074f9d5` | project_anchor | unknown | live | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| exact address book overlap | LiquidityGaugeV2<br>`0x2871956fb1cde2b28f8d77bbecb4d806a4664a9f` | project_anchor | unknown | live | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| exact address book overlap | ShareV2<br>`0x307462d1a183659e9af73fa1bca7a0d858714598` | project_anchor | unknown | live | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| exact address book overlap | ShareV2<br>`0x6aff2526d50fa742ca08ed1cf6e3cf7987a30f5c` | project_anchor | unknown | live | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| exact address book overlap | ShareV2<br>`0xbb18521b4b19bcb7e6c2327f13bbd8e8149ca3a9` | project_anchor | unknown | live | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| source verified unclassified | BeaconStakingOracle<br>`0x0eeccdc7c43a9a1536b00894b64f600b855a7c8e` | non_address_book | unknown | unknown | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| source verified unclassified | BeaconStakingOracle<br>`0x946c1cbd2595bc14cb495a440ce3c1f7b19b63e2` | non_address_book | unknown | unknown | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| source verified unclassified | BeaconStakingOracle<br>`0xd325d1ceb50c1c1c54f8bf0c83a7dad2fe0b5242` | non_address_book | unknown | unknown | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| source verified unclassified | BishopStableSwapV2<br>`0xba919470c7a2983fbcda6adc89be9c43b8298079` | non_address_book | unknown | unknown | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| source verified unclassified | ChessControllerV6<br>`0x419d4c1e4b64c7fdebb6ceb729881ff297843f1e` | non_address_book | unknown | unknown | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| source verified unclassified | ChessControllerV6<br>`0x58e2dbf7b25f485ae00983671b517c4cebb7a8ac` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| source verified unclassified | ChessSubSchedule<br>`0x41e58b9c05dce59608cdc1ebbdef7af3471ebdd2` | non_address_book | unknown | unknown | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| source verified unclassified | ChessSubSchedule<br>`0x43e42e545ed40b46b81fed3414f03af5cd7f33f6` | non_address_book | unknown | unknown | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| source verified unclassified | ChessSubSchedule<br>`0x49b71d1d5ad96a870d7f2ac9c6d6cbce359694b1` | non_address_book | unknown | unknown | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| source verified unclassified | ChessSubSchedule<br>`0x4dad1d42753f2cbab2bb9c3402baa8903583bb47` | non_address_book | unknown | unknown | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| source verified unclassified | ConstAprOracle<br>`0xe132be794b1e71a05c55b2db76d7375b7ad24bbd` | non_address_book | unknown | unknown | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| source verified unclassified | ConstPriceOracle<br>`0x5afd582205fa12a4a4fd9aa8e1d072f7faae7a4c` | non_address_book | unknown | unknown | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| source verified unclassified | CrossChainSyncKeeperHelper<br>`0x1d611dda4356b5d4cd02b3f93883bf7f0f17df4f` | non_address_book | unknown | unknown | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| source verified unclassified | CrossChainSyncKeeperHelper<br>`0x2e6fbde85d06f2735970f506af2a718e1cf73097` | non_address_book | unknown | unknown | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| source verified unclassified | EthPrimaryMarket<br>`0x46b0d06ef0a2a96165b4c8c962ea5b609a88da73` | non_address_book | unknown | unknown | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| source verified unclassified | EthPrimaryMarket<br>`0x8a04a9f1d29c9837604ab4b4c9425098f1db3f2c` | non_address_book | unknown | unknown | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| source verified unclassified | InterestRateBallotV3<br>`0xf635b68f85799421ce3b496df5ce687368e197e2` | non_address_book | unknown | unknown | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| source verified unclassified | LiquidityGaugeV2<br>`0xd6ef5cbb4ca84e3dceb71192130d5bc3675963a5` | non_address_book | unknown | unknown | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| source verified unclassified | PrimaryMarketV4<br>`0xcd0b4d35cc6ec86d1d52b8eb07b5d029e39ba70e` | non_address_book | unknown | unknown | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| source verified unclassified | QueenRateProvider<br>`0xa6aed7922366611953546014a3f9e93f058756a2` | non_address_book | unknown | unknown | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| source verified unclassified | RewardCashier<br>`0x264382b200bc1fe51a9b58f704394de172341418` | non_address_book | unknown | unknown | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| source verified unclassified | RewardCashier<br>`0x410f384dff2b9328d90851e13e5e22693fe150f7` | non_address_book | unknown | unknown | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| source verified unclassified | VotingEscrowCallback<br>`0xe7ae69578cff5bef873d341f872ea2b64b1af462` | non_address_book | unknown | unknown | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| source verified unclassified | VotingEscrowV3<br>`0xb9d0dd8e9d21aaa785ce6f745012d5084bd4daa4` | non_address_book | unknown | unknown | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| source verified unclassified | WstETHWrappingSwap<br>`0xc1e228ff4cf95a2b5c019b7e71d484a09eee84ec` | non_address_book | unknown | unknown | verified | n/a | `0xb42fba3da9fbc1fc7d07b855889f8843f5a16fd5` |
| source verified unclassified | BishopStableSwapV2<br>`0x0747277ac186a83f828c7ac3ba688f499d2a3f33` | non_address_book | unknown | unknown | verified | n/a | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| source verified unclassified | BishopStableSwapV2<br>`0x8aea25b112a8a614a417e3be36ddf8d9bbc46d4b` | non_address_book | unknown | unknown | verified | n/a | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| source verified unclassified | BishopStableSwapV2<br>`0xd44783cd7869c4b0c5eaedf8b08ab6dd14e7cac1` | non_address_book | unknown | unknown | verified | n/a | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| source verified unclassified | BishopStableSwapV2<br>`0xf84d3eb88f120e50d80e7b55b98cc3facce0c9d9` | non_address_book | unknown | unknown | verified | n/a | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| source verified unclassified | BscAprOracle<br>`0xa79ff9c3d94f4bd7e664415cbe62d076e81b7600` | non_address_book | unknown | unknown | verified | n/a | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| source verified unclassified | BscAprOracleProxy<br>`0x65f5fd05f913ebf5c09ff1bab655c0e9d00d62af` | non_address_book | unknown | unknown | verified | n/a | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| source verified unclassified | BscAprOracleProxy<br>`0xa70308019d96f3c49e5dbdc6d96c8d8398519455` | non_address_book | unknown | unknown | verified | n/a | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| source verified unclassified | BscAprOracleProxy<br>`0xf42f8588f2181f13b0407114f9663a23b625ff04` | non_address_book | unknown | unknown | verified | n/a | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |
| source verified unclassified | BscAprOracleProxy<br>`0xf5208bcc2e75a72753490cc298d5bf516ed47cc4` | non_address_book | unknown | unknown | verified | n/a | `0x0a599ea28beb703f04f45d566e91c94f2761bb26` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Tranchess-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Tranchess-v1.0.pdf) | PeckShield | Audit | 2021-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [skynet.certik.com/projects/tranchess](https://skynet.certik.com/projects/tranchess) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [certik-2021-06-02.pdf](https://github.com/tranchess/contract-core/blob/main/audits/certik-2021-06-02.pdf) | CertiK | Audit | 2021-06 | stale | Direct | n/a | matched | 1 | 0 | 0 | 33 | n/a |
| [peckshield-2021-06-28.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2021-06-28.pdf) | PeckShield | Audit | 2021-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [peckshield-2021-09-10.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2021-09-10.pdf) | PeckShield | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [peckshield-2021-12-24.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2021-12-24.pdf) | PeckShield | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [peckshield-2022-05-20.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2022-05-20.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [peckshield-2022-10-30.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2022-10-30.pdf) | PeckShield | Audit | 2022-10 | stale | Direct | n/a | matched | 2 | 0 | 0 | 3 | n/a |
| [peckshield-2023-12-28.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2023-12-28.pdf) | PeckShield | Audit | 2023-12 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2425] PeckShield-Audit-Report-Tranchess-v1.0.pdf — no match: No reason recorded
- [2426] skynet.certik.com/projects/tranchess — no match: The provided text is a CertiK Skynet project insight page, not an audit report. It contains no scope section, contract names, or audit date. The only contract address mentioned (0x20de...4c82a6) is a token contract, but it is not explicitly listed as in scope for an audit.
- [14940] certik-2021-06-02.pdf — matched: No reason recorded
- [14941] peckshield-2021-06-28.pdf — no match: No reason recorded
- [14942] peckshield-2021-09-10.pdf — no match: Contracts extracted from findings targets and mentions; no explicit scope section found.
- [14943] peckshield-2021-12-24.pdf — no match: Only one contract name explicitly mentioned as target in findings. No explicit scope table or file listing provided.
- [14944] peckshield-2022-05-20.pdf — no match: Extracted contract names from findings targets and references. Audit date from cover page and version history.
- [14945] peckshield-2022-10-30.pdf — matched: No reason recorded
- [14946] peckshield-2023-12-28.pdf — matched: Contracts extracted from findings targets; no explicit scope table but report clearly states audit covers Tranchess protocol with these contracts.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Tranchess-v1.0.pdf | AddressWhitelist | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Tranchess-v1.0.pdf | Exchange | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Tranchess-v1.0.pdf | Fund | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Tranchess-v1.0.pdf | LiquidityStaking | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Tranchess-v1.0.pdf | PrimaryMarket | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Tranchess-v1.0.pdf | Staking | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Tranchess-v1.0.pdf | VestingEscrow | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Tranchess-v1.0.pdf | VotingEscrow | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | AprOracle | own contract | AprOracle (selected) `0xa9f575d735439eb4187b7bbc07459124811feaac` — deployed 2022-10-27 12:35:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| certik-2021-06-02.pdf | CarefulMath | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | Chess | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | ChessController | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | ChessRoles | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | Exchange | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | ExchangeOrderBook | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | ExchangeRoles | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | ExchangeTrade | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | Exponential | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | ExponentialNoError | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | Fund | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | FundRoles | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | IAprOracle | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | IBallot | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | IChess | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | IFund | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | IPrimaryMarket | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | IToken | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | ITrancheIndex | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | ITwapOracle | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | IVotingEscrow | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | InterestRateBallot | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | MockAprOracle | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | MockToken | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | MockTwapOracle | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | PrimaryMarket | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | SafeDecimalMath | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | Share | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | Staking | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | StakingTestWrapper | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | TranchessProxy | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | TwapOracle | unmatched — not counted | — | — | no |
| certik-2021-06-02.pdf | VotingEscrow | unmatched — not counted | — | — | no |
| peckshield-2021-06-28.pdf | Address | unmatched — not counted | — | — | no |
| peckshield-2021-06-28.pdf | Exchange | unmatched — not counted | — | — | no |
| peckshield-2021-06-28.pdf | Fund | unmatched — not counted | — | — | no |
| peckshield-2021-06-28.pdf | LiquidityStaking | unmatched — not counted | — | — | no |
| peckshield-2021-06-28.pdf | PrimaryMarket | unmatched — not counted | — | — | no |
| peckshield-2021-06-28.pdf | Staking | unmatched — not counted | — | — | no |
| peckshield-2021-06-28.pdf | VestingEscrow | unmatched — not counted | — | — | no |
| peckshield-2021-06-28.pdf | VotingEscrow | unmatched — not counted | — | — | no |
| peckshield-2021-09-10.pdf | Fund | unmatched — not counted | — | Target in finding PVE-001 and PVE-002 | no |
| peckshield-2021-09-10.pdf | StakingV2 | unmatched — not counted | — | Target in finding PVE-003 | no |
| peckshield-2021-09-10.pdf | Staking | unmatched — not counted | — | Mentioned in finding PVE-003 | no |
| peckshield-2021-09-10.pdf | LiquidityStaking | unmatched — not counted | — | Mentioned in finding PVE-003 | no |
| peckshield-2021-09-10.pdf | Exchange | unmatched — not counted | — | Mentioned in finding PVE-003 | no |
| peckshield-2021-09-10.pdf | ExchangeV2 | unmatched — not counted | — | Mentioned in finding PVE-003 | no |
| peckshield-2021-09-10.pdf | InterestRateBallot | unmatched — not counted | — | Target in finding PVE-004 | no |
| peckshield-2021-09-10.pdf | VotingEscrowV2 | unmatched — not counted | — | Target in findings PVE-005 and PVE-006 | no |
| peckshield-2021-12-24.pdf | PrimaryMarketV2 | unmatched — not counted | — | Listed as target in finding PVE-001 and PVE-002 | no |
| peckshield-2022-05-20.pdf | SwapReward | unmatched — not counted | — | Target in finding PVE-001 | no |
| peckshield-2022-05-20.pdf | InterestRateBallot | unmatched — not counted | — | Target in finding PVE-002 | no |
| peckshield-2022-05-20.pdf | VestingEscrow | unmatched — not counted | — | Target in finding PVE-003 | no |
| peckshield-2022-05-20.pdf | FundV3 | unmatched — not counted | — | Target in finding PVE-004 | no |
| peckshield-2022-05-20.pdf | StableSwap | unmatched — not counted | — | Target in finding PVE-005 | no |
| peckshield-2022-05-20.pdf | PrimaryMarketV3 | unmatched — not counted | — | Mentioned in finding PVE-006 as example | no |
| peckshield-2022-05-20.pdf | VotingEscrowV2 | unmatched — not counted | — | Referenced in InterestRateBallot finding | no |
| peckshield-2022-05-20.pdf | FeeDistributor | ambiguous — not counted | FeeDistributor (alternative) `0x00db7b1300b2b24fb9bdf4f661f650a2998e367a` — deployed 2024-02-14 11:44:11+03 — liveness: live (code_present_context)<br>FeeDistributor (alternative) `0xbc428f6573827db9773f9e4bc1f5c899c884842c` — deployed 2022-11-01 11:34:23+03 — liveness: live (code_present_context)<br>FeeDistributor (alternative) `0xe6e659ad43029e8d89ded5d3ff030ddc5c909cbf` — deployed 2022-11-03 12:11:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| peckshield-2022-10-30.pdf | BatchKeeperHelperBase | unmatched — not counted | — | — | no |
| peckshield-2022-10-30.pdf | ChessScheduleRelayer | unmatched — not counted | — | — | no |
| peckshield-2022-10-30.pdf | FundV4 | own contract | FundV4 (selected) `0x69c53679ec1c06f3275b64c428e8cd069a2d3966` — deployed 2022-11-01 11:15:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| peckshield-2022-10-30.pdf | PrimaryMarketV4 | own contract | PrimaryMarketV4 (selected) `0xcf116313bc9c3712a8165d9a8e1c311567c4c829` — deployed 2025-02-07 06:11:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| peckshield-2022-10-30.pdf | VotingEscrowV3 | unmatched — not counted | — | — | no |
| peckshield-2023-12-28.pdf | FundV5 | own contract | FundV5 (selected) `0x811c9dd8b7b670a78d02fac592ebbe465e5dd0fa` — deployed 2024-02-14 12:03:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| peckshield-2023-12-28.pdf | FeeDistributor | ambiguous — not counted | FeeDistributor (alternative) `0x00db7b1300b2b24fb9bdf4f661f650a2998e367a` — deployed 2024-02-14 11:44:11+03 — liveness: live (code_present_context)<br>FeeDistributor (alternative) `0xbc428f6573827db9773f9e4bc1f5c899c884842c` — deployed 2022-11-01 11:34:23+03 — liveness: live (code_present_context)<br>FeeDistributor (alternative) `0xe6e659ad43029e8d89ded5d3ff030ddc5c909cbf` — deployed 2022-11-03 12:11:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| peckshield-2023-12-28.pdf | WstETHPrimaryMarketRouter | own contract | WstETHPrimaryMarketRouter (selected) `0x9c69b6caf5074a2dec33bdb84d0f871d509240fa` — deployed 2024-02-14 12:04:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| peckshield-2023-12-28.pdf | VestingEscrow | unmatched — not counted | — | Target in finding PVE-003 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x97238bc81fcede211ecb49a6b16ca0ad1d55a1d5` | BatchOperationHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xbefeb1f4afc01416ac25640c482defbf8f9d6e68` | BatchOperationHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xffd3196ce42bed1fa988020c902fe7ea6624a15a` | BeaconStakingOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x3d9f20e4f1f5ac1d5f24e271ce6364b2eed71ca6` | BishopStableSwapV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xd151ce31322aea25e4779678df0a3f376f9ffc6f` | BishopStableSwapV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xec8bfa1d15842d6b670d11777a08c39b09a5ff00` | BishopStableSwapV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x58e2dbf7b25f485ae00983671b517c4cebb7a8ac` | ChessControllerV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0c5f4b16378dfbb71102db10745b79b2dc22b03d` | ChessSubSchedule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x37473872769ff711bd6d800e518061fae67e10a9` | ConstAprOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x41b598d49ade2dbf870b5987c25975ecec16826f` | ControllerBallotV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x96f4489fe75d0494bd5088b0d80b17a5759dac37` | EthStakingStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x96ccae5662de55c50b997f13396e6a183074f9d5` | FeeConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x00db7b1300b2b24fb9bdf4f661f650a2998e367a` | FeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbc428f6573827db9773f9e4bc1f5c899c884842c` | FeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe6e659ad43029e8d89ded5d3ff030ddc5c909cbf` | FeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd462276ef4aa78a3533cf13518d97a16b96e0c95` | FlashSwapRouterV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2871956fb1cde2b28f8d77bbecb4d806a4664a9f` | LiquidityGaugeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x3c8465c04e7478b11c7b5cee3919781db5e6d464` | LiquidityGaugeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x088e2f0fcb2acaa5ad990311839b1d37ee41679d` | MaturityPrimaryMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x21366de9707a1044e351280f085821c734791cee` | MaturityPrimaryMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x47b3913e6ac7dcb9752769465f875596c6f194d4` | MaturityPrimaryMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe926f01953c3b94222fcac7474b31e3f8eafb308` | NodeOperatorRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7d7473505978442f181eeb9ba147f418281a5504` | NonfungibleRedemptionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xea8e6f2c426d207ca0916adb42cea032102b18ba` | PrimaryMarketRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa8be5ab62794a647254e1e62844201efc8477e22` | PrimaryMarketV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x25cd496d66708166a06da16ed641dd286ce76815` | ProxyOFTPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xf440e381e682a458505c12db813dbc36da4f5970` | ProxyOFTPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7f08c4f98265712c162975cb8da1cf3f5bf8fac1` | RewardClaimer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfb399517bcb023751b363c2b4333f59d3a202f3d` | SafeStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x307462d1a183659e9af73fa1bca7a0d858714598` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x379e8d9f6a8a045a8654169fabff8bcfec0d3934` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6aff2526d50fa742ca08ed1cf6e3cf7987a30f5c` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x93ef1ea305d11a9b2a3ebb9bb4fcc34695292e7d` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbb18521b4b19bcb7e6c2327f13bbd8e8149ca3a9` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd2df8d600f7b32b8e708900646f8898c52158690` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x09750800529e7bbcd07d4760989b19061e79165b` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x0e6a005790559b60bff5b8c3ea68d2361f92ccaa` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x3b97ccc0c8c5e10ac3e7f1594b55b6239a493eea` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x6e20e4f0f1a3a6836840001e4195b65d7735d92d` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x6f2d7ce6601a07fbfaa7b9c9608ca99d5f35ff4a` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x820144d59d20f1838a88cae95c946a9bb6a7fea2` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xb5e3d3fd34689c27f3549781b0369b87db105839` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xbf4ff74af2f4e1b3820c32a0fc3a47530367112e` | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb6f98aa542c3c4aafc1a187a39159bfb25b7c9e4` | SwapBonus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x657498143d67e14d9928bc5ec1608c771e6c3314` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3fadadf8f443a6dc1e091f14ddf8d5046b6cf95e` | VotingEscrowV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x16d0ff163e6430b99c3e23b8eecbf840a029dd88` | WithdrawalManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xad06a2dbd34da8f8cf5f85d284a5b93a2057bdb5` | WstETHBishopStableSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc32f23ee32cb5681eca5e84c2ae728c3f0b0149f` | WstETHPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 145 |
| upstream | 2 |
| standard_library | 7 |
| needs_review | 86 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 69 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1, medium=1
- Match method counts: unique_name=5

Zero-match audit list:

- [2425] PeckShield-Audit-Report-Tranchess-v1.0.pdf
- [2426] skynet.certik.com/projects/tranchess
- [14941] peckshield-2021-06-28.pdf
- [14942] peckshield-2021-09-10.pdf
- [14943] peckshield-2021-12-24.pdf
- [14944] peckshield-2022-05-20.pdf

Fork inheritance lineage and inherited audits are included when available.
