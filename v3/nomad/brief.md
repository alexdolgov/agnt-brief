# Agentic Audit Brief: Nomad

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Nomad (`nomad`)
- Website: [https://nomad.xyz](https://nomad.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, ethereum, moonbeam
- Contract surface: 116 unique implementations (117 raw deployments)
- Coverage basis: 0/7 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $323,640.16
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Nomad. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across avalanche, ethereum, moonbeam. Structural roles: 5 supporting, 2 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: supporting (5), core (2)
- Contract kinds: contract (7)
- Detected standards: ownable (1)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 38 contracts are derived from known codebases. 38 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0876dfe4acae0e1c0a43302716483f5752298b71`, chain 1)
- UnnamedContract (`0x0a627a6398f429b62969cd475fb5ba8e04a4eb70`, chain 1)
- UnnamedContract (`0x3009c99d370b780304d2098196f1ebf779a4777a`, chain 1)
- UnnamedContract (`0x4ad6444b55729f657a71a82a5448f85ac8aa47ba`, chain 1)
- UnnamedContract (`0x4d5ff8a01ed833e11aba43821d2881a5f2911f98`, chain 1)
- UnnamedContract (`0x569d80f7fc17316b4c83f072b92ef37b72819de0`, chain 1)
- UnnamedContract (`0x5bae47bf29f4e9b1e275c0b427b84c4daa30033a`, chain 1)
- UnnamedContract (`0x5d94309e5a0090b165fa4181519701637b6daeba`, chain 1)
- UnnamedContract (`0x67833a48b3f509d4252ac2c19cd604556ed6c981`, chain 1)
- UnnamedContract (`0x7f58bb8311db968ab110889f2dfa04ab7e8e831b`, chain 1)
- UnnamedContract (`0x88a69b4e698a4b090df6cf5bd7b2d47325ad30a3`, chain 1)
- UnnamedContract (`0x8ca56e6235d83ff2f4e779f0b35a6c856d5a2fb2`, chain 1)
- UnnamedContract (`0x8f184d6aa1977fd2f9d9024317d0ea5cf5815b6f`, chain 1)
- UnnamedContract (`0x9272c9d5fa902ef3804ec81e0333ae420d57f715`, chain 1)
- UnnamedContract (`0x92d3404a7e6c91455bbd81475cd9fad96acff4c8`, chain 1)
- UnnamedContract (`0x9f7ea856ba1fb88d35e000c45e75f134a756ac4f`, chain 1)
- UnnamedContract (`0xa7e4fea3c1468d6c1a3a77e21e6e43daed855c1b`, chain 1)
- UnnamedContract (`0xb70588b1a51f847d13158ff18e9cac861df5fb00`, chain 1)
- UnnamedContract (`0xba8d75baccc4d5c4bd814fde69267213052ea663`, chain 1)
- UnnamedContract (`0xd3dfd3ede74e0dcebc1aa685e151332857efce2d`, chain 1)
- UnnamedContract (`0xef989866b66a491e7b6c7473d73b589450d0f766`, chain 1)
- UnnamedContract (`0xfe8874778f946ac2990a29eba3cfd50760593b2f`, chain 1)
- UnnamedContract (`0x1dc78acda13a8bc4408b207c9e48cdbc096d95e0`, chain 1284)
- UnnamedContract (`0x21a8daca6a56434bdb6f39e7616c0f9891829aec`, chain 1284)
- UnnamedContract (`0x30d2a9f5fdf90ace8c17952cbb4ee48a55d916a7`, chain 1284)
- UnnamedContract (`0x5130ca61bf02618548dfc3fdef50b50b36b11f2b`, chain 1284)
- UnnamedContract (`0x8d6e233106733c7cc1ba962f8de9e4dcd3b0308e`, chain 1284)
- UnnamedContract (`0x8e70cd5b4ff3f62659049e74b6649c6603a0e594`, chain 1284)
- UnnamedContract (`0x8f552a71efe5eefc207bf75485b356a0b3f01ec9`, chain 1284)
- UnnamedContract (`0xc234a67a4f840e61ade794be47de455361b52413`, chain 1284)
- UnnamedContract (`0x38dcf0532699b880e6a125f7d918380524cd60a6`, chain 43114)
- ETHHelper (`0x2d6775c1673d4ce55e1f827a0d53e62c43d1f304`, chain 1)
- GnosisSafe (`0x93277b8f5939975b9e6694d5fd2837143afbf68a`, chain 1)
- GnosisSafeProxy (`0x2d23b3865d5b7cd88ce9ce7514a13545672d9ef7`, chain 1284)
- Replica (`0x049b51e531fd8f90da6d92ea83dc4125002f20ef`, chain 1)
- TokenRegistry (`0x0a6f564c5c9bebd66f1595f1b51d1f3de6ef3b79`, chain 1)
- UpgradeBeacon (`0x063e871f8db991cead34b557a00b157b360084cc`, chain 1)
- UpgradeBeaconController (`0xdb378579c2af11817eea21474a39f95b5b9dfd7e`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 37/71 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/7 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 37 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 79 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 37 of 116 unique; 79 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/86
- Verified + Unaudited implementations: 86
- Verified by bytecode match: 0
- Unverified implementations: 30
- Unique implementations: 116
- Raw deployments: 117
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (86)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AllowListNFTRecoveryAccountant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09da34a0cedb4e84b5b68cc0d2f47e921d83a794` | ⚠️ Unaudited |
| BasicAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0807d0810714d85b49e40349a3002f06e841b7c3` | ⚠️ Unaudited |
| BCH_DAI_Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2d578e21f430d7469cbc135952dfe5c34b69772` | ⚠️ Unaudited |
| BCHGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcabb5e9e48f22cb6736d5f5cd3f1b652d7e1a461` | ⚠️ Unaudited |
| BCHShifter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2095be01f9a30a8ac8302245fdfa524fb20de6cd` | ⚠️ Unaudited |
| BridgeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x0e6a3fd785f2169a086e179004710ba6b663a892` | ⚠️ Unaudited |
| BridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x18bd26b4763912176a26b422b3f6677901896048` | ⚠️ Unaudited |
| BTC_DAI_Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11716a1f51fad053e9b43da1025e8ace32aee110` | ⚠️ Unaudited |
| BTCShifter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1258d7ff385d1d81017d4a3d464c02f74c61902a` | ⚠️ Unaudited |
| Cards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d6f0dea3ac3c607b3998e6ce14b6350721752d9` | ⚠️ Unaudited |
| CardsVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3d732815ecddd8c7d044eee2e3e428edd7cdd7b` | ⚠️ Unaudited |
| Charlie | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1a91c7d44768070f711c68f33a7ca25c8d30268` | ⚠️ Unaudited |
| CovalentQueryToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd417144312dbf50465b1c641d016962017ef6240` | ⚠️ Unaudited |
| CSWAP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b3f95938958a4029fa8b01873e2721b02950883` | ⚠️ Unaudited |
| DarknodePayment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x098e1708b920efbdd7afe33adb6a4cba30c370b9` | ⚠️ Unaudited |
| DarknodePaymentMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x085d9b18be81f2b0c35086972caa46177205f54d` | ⚠️ Unaudited |
| DarknodePaymentStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x311999ee72b5826d664fd4f3ac09c0c462effe49` | ⚠️ Unaudited |
| DarknodeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3799006a87fde3ccfc7666b3e6553b03ed341c2f` | ⚠️ Unaudited |
| DarknodeRegistryForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb032012073765a74f8f8fe2e6685ad70253058fa` | ⚠️ Unaudited |
| DarknodeRegistryLogicV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f98228b464101a3b19bf1cc337a9b88c84acecb` | ⚠️ Unaudited |
| DarknodeRegistryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09e3435c7a92d3296d1221161cb0cbaafa017405` | ⚠️ Unaudited |
| DarknodeRegistryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2d7b6c95afeffa50c068d50f89c5c0014e054f0a` | ⚠️ Unaudited |
| DarknodeRegistryStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14add4ca443e7445a3418bb572d6079bfc98897a` | ⚠️ Unaudited |
| DarknodeRegistryV1ToV2Preupgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e69da530e2051cd08259221ef1dacc703c38f1e` | ⚠️ Unaudited |
| DarknodeRegistryV1ToV2Upgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5945bbe065b7a723fd4cf9485a726cb5529cfaa5` | ⚠️ Unaudited |
| DarknodeRewardVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x880407c9cd119bef48b1821cdfc434e3ca3cd588` | ⚠️ Unaudited |
| DarknodeSlasher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04ed8f5730dd4d2b2064cdb6a5bffc26a72962f2` | ⚠️ Unaudited |
| DEX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ff192e634ef6463be60792a384e5f1219a8373a` | ⚠️ Unaudited |
| DEXAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9992e9341e496be5bc8f424dfc1f78a7388d3a58` | ⚠️ Unaudited |
| EthereumBridgeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f6d9862cd7442e831123cfa288bb1fef47f7177` | ⚠️ Unaudited |
| ETHHelper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249871 | `0x2d6775c1673d4ce55e1f827a0d53e62c43d1f304` | ⚠️ Unaudited |
| GatewayRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x503670ec851c55ec1acfb5230192da921467a24e` | ⚠️ Unaudited |
| GERO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3431f91b3a388115f00c5ba9fdb899851d005fb5` | ⚠️ Unaudited |
| GetOperatorDarknodes | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e27a3e21e747cf875ad5829b6d9cb7700b8b5f0` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249944 | `0x93277b8f5939975b9e6694d5fd2837143afbf68a` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 1 | moonbeam | unit-249945 | `0x2d23b3865d5b7cd88ce9ce7514a13545672d9ef7` | ⚠️ Unaudited |
| GovernanceRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02842e47a45be8bb4bc60a7fe0ce3cc5d7398f96` | ⚠️ Unaudited |
| HBTCStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc728693dcf6b257bf88577d6c92e52028426eefd` | ⚠️ Unaudited |
| HBTCToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0316eb71485b0ab14103307bf65a021042c6d380` | ⚠️ Unaudited |
| HCTToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60b920ed2e048b10d087ffc63f1adc303e9dd9ad` | ⚠️ Unaudited |
| HDTToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe42ef56340bca5072e3c7ba07df835a65ecd06a6` | ⚠️ Unaudited |
| Home | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dcc98ad3733fd2d788a80545d1c244dd45a9c72` | ⚠️ Unaudited |
| HUSDToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a683d58afa5ce9f54cc498672a33c4a0e13e846` | ⚠️ Unaudited |
| IAGON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40eb746dee876ac1e78697b7ca85142d178a1fc8` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a43b06ed73fcd3707f1a681ca645d758a51ee52` | ⚠️ Unaudited |
| MapMyAddress | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23e4470a671d4264e76e80c7315ca72cd6942719` | ⚠️ Unaudited |
| MintGatewayLogicV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a562822f99d11e8f993f6bcda86277123ce22b4` | ⚠️ Unaudited |
| MintGatewayProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x05387a10bb3ef789b6c2a9ce2d6c21d5a8c6b1aa` | ⚠️ Unaudited |
| MintGatewayUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13773093cdad89e8e1615f581a37c7eeabb04804` | ⚠️ Unaudited |
| Orderbook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b8bb175c092de7d81860b18db360b734a2598e0` | ⚠️ Unaudited |
| ProtocolLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54751636e04092ee76f25b2b3c50dcdcfebdbadf` | ⚠️ Unaudited |
| ProtocolLogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x637278bf72127c76d98d9a9be36d2121fb2447c8` | ⚠️ Unaudited |
| ProtocolProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d880bb27b1cd850d4bc331b1654af01bd69b47a` | ⚠️ Unaudited |
| ProxyERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe18be6b3bd88a2d2a7f928d00292e7a9963cfc6` | ⚠️ Unaudited |
| Raffle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45ef567d82f0fa70b5a4d56dc9c79b2da934f2e2` | ⚠️ Unaudited |
| RenERC20LogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a2d368e4eecbd515033ba29253909f2978c1bee` | ⚠️ Unaudited |
| RenERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee274080b8389ac5add6499df348b653447894a7` | ⚠️ Unaudited |
| RenExAtomicSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3fed6eb39178a541d274e6fc748d48f0ca01cc3` | ⚠️ Unaudited |
| RenExBalances | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ec18b477b20af940807b5478db5a64cd4a77efd` | ⚠️ Unaudited |
| RenExBrokerVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31a0d1a199631d244761eeba67e8501296d2e383` | ⚠️ Unaudited |
| RenExSettlement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x908262de0366e42d029b0518d5276762c92b21e1` | ⚠️ Unaudited |
| RenExTokens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cade4fbc8761817bb62a080733d1b6cad744ec4` | ⚠️ Unaudited |
| RenProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04490672449654b1d9ad6f0aae14e6e4c60ad01c` | ⚠️ Unaudited |
| RenToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e0679d0d4691ea345fb8c2aec9bf9c1d3eb40ed` | ⚠️ Unaudited |
| Replica | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249942 | `0x049b51e531fd8f90da6d92ea83dc4125002f20ef` | ⚠️ Unaudited |
| RepublicToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21c482f153d0317fe85c60be1f7fa079019fcebd` | ⚠️ Unaudited |
| SettlementRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x119da7a8500ade0766f758d934808179dc551036` | ⚠️ Unaudited |
| SHFLFarmer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba4c394eb34eb2392e40c67502b22f2541c920d2` | ⚠️ Unaudited |
| ShifterRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d4713b74e79a3696722aebe05de976979876cac` | ⚠️ Unaudited |
| Staker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad2fd18932c39fa5085429853e1f0d39a65a438e` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe43c3a01102eda295333f5ad6cc747f03314fdb` | ⚠️ Unaudited |
| TokenRegistry | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249943 | 2 deployments: ethereum `0x0a6f564c5c9bebd66f1595f1b51d1f3de6ef3b79`; ethereum `0xa7e4fea3c1468d6c1a3a77e21e6e43daed855c1b` | ⚠️ Unaudited |
| UpdaterManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x2e09edd238eeaea6e4da705fbe5922b1979e03ac` | ⚠️ Unaudited |
| UpgradeBeacon | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249863 | `0x063e871f8db991cead34b557a00b157b360084cc` | ⚠️ Unaudited |
| UpgradeBeaconController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249923 | `0xdb378579c2af11817eea21474a39f95b5b9dfd7e` | ⚠️ Unaudited |
| UpgradeBeaconProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x030932a76f53dbf30fcfd51a8b3eed6833383e61` | ⚠️ Unaudited |
| WMTDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7944b4407796014d7d3191960a44478056beed07` | ⚠️ Unaudited |
| XAppConnectionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xdb378579c2af11817eea21474a39f95b5b9dfd7e` | ⚠️ Unaudited |
| XXXXToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8f56001db32932f34f18101e6d6f9b4d1c1dc1a` | ⚠️ Unaudited |
| zBCH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e68ee104c768078cb3624396aaf9285c58f1a73` | ⚠️ Unaudited |
| zBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88c64a7d2ecc882d558dd16abc1537515a78bb7d` | ⚠️ Unaudited |
| ZEC_DAI_Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b3b7383bc88b645bdefd7624d9c6fb981407bf9` | ⚠️ Unaudited |
| ZECGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x37a4860728e292e5852b215c46dbe7a18862ef93` | ⚠️ Unaudited |
| ZECGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52c883b626637ae7c2b93909ad40c24676ada49d` | ⚠️ Unaudited |
| ZECShifter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b59ef3eb28c7388c7ec69d43a9b8e585c461d5b` | ⚠️ Unaudited |
| zZEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09aa07ae98fde91d66775c13107e9f082ff65295` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (30)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249864 | `0x0876dfe4acae0e1c0a43302716483f5752298b71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249865 | `0x0a627a6398f429b62969cd475fb5ba8e04a4eb70` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249872 | `0x3009c99d370b780304d2098196f1ebf779a4777a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249878 | `0x4ad6444b55729f657a71a82a5448f85ac8aa47ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249879 | `0x4d5ff8a01ed833e11aba43821d2881a5f2911f98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249882 | `0x569d80f7fc17316b4c83f072b92ef37b72819de0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249886 | `0x5bae47bf29f4e9b1e275c0b427b84c4daa30033a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249887 | `0x5d94309e5a0090b165fa4181519701637b6daeba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249890 | `0x67833a48b3f509d4252ac2c19cd604556ed6c981` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249892 | `0x7f58bb8311db968ab110889f2dfa04ab7e8e831b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249898 | `0x88a69b4e698a4b090df6cf5bd7b2d47325ad30a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249900 | `0x8ca56e6235d83ff2f4e779f0b35a6c856d5a2fb2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249905 | `0x8f184d6aa1977fd2f9d9024317d0ea5cf5815b6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249909 | `0x9272c9d5fa902ef3804ec81e0333ae420d57f715` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249911 | `0x92d3404a7e6c91455bbd81475cd9fad96acff4c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249914 | `0x9f7ea856ba1fb88d35e000c45e75f134a756ac4f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249917 | `0xb70588b1a51f847d13158ff18e9cac861df5fb00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249918 | `0xba8d75baccc4d5c4bd814fde69267213052ea663` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249922 | `0xd3dfd3ede74e0dcebc1aa685e151332857efce2d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249925 | `0xef989866b66a491e7b6c7473d73b589450d0f766` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249927 | `0xfe8874778f946ac2990a29eba3cfd50760593b2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-249928 | `0x1dc78acda13a8bc4408b207c9e48cdbc096d95e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-249929 | `0x21a8daca6a56434bdb6f39e7616c0f9891829aec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-249930 | `0x30d2a9f5fdf90ace8c17952cbb4ee48a55d916a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-249933 | `0x5130ca61bf02618548dfc3fdef50b50b36b11f2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-249934 | `0x8d6e233106733c7cc1ba962f8de9e4dcd3b0308e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-249935 | `0x8e70cd5b4ff3f62659049e74b6649c6603a0e594` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-249936 | `0x8f552a71efe5eefc207bf75485b356a0b3f01ec9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-249938 | `0xc234a67a4f840e61ade794be47de455361b52413` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-249941 | `0x38dcf0532699b880e6a125f7d918380524cd60a6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x2d6775c1673d4ce55e1f827a0d53e62c43d1f304` | ETHHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x049b51e531fd8f90da6d92ea83dc4125002f20ef` | Replica | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0a6f564c5c9bebd66f1595f1b51d1f3de6ef3b79` | TokenRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x063e871f8db991cead34b557a00b157b360084cc` | UpgradeBeacon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdb378579c2af11817eea21474a39f95b5b9dfd7e` | UpgradeBeaconController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 83 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 30 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
