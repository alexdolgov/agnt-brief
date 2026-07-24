# Agentic Audit Brief: Nomad

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Nomad (`nomad`)
- Website: [https://nomad.xyz](https://nomad.xyz)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche, ethereum, moonbeam
- Contract surface: 364 unique implementations (368 raw deployments)
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
- Outside the address book: 327 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 37 of 364 unique; 327 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/86
- Verified + Unaudited implementations: 86
- Verified by bytecode match: 0
- Unverified implementations: 278
- Unique implementations: 364
- Raw deployments: 368
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
| DarknodeRegistryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2d7b6c95afeffa50c068d50f89c5c0014e054f0a`; ethereum `0x33b53a700de61b6be01d65a758b3635584bcf140` | ⚠️ Unaudited |
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
| MintGatewayProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x05387a10bb3ef789b6c2a9ce2d6c21d5a8c6b1aa`; ethereum `0x4a144820a415bdfa0030937608743cae1d392029` | ⚠️ Unaudited |
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
| ZECGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x37a4860728e292e5852b215c46dbe7a18862ef93`; ethereum `0x85bde74ca4760587ec9d77f775cb83d4cb76e5ae` | ⚠️ Unaudited |
| ZECGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52c883b626637ae7c2b93909ad40c24676ada49d` | ⚠️ Unaudited |
| ZECShifter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b59ef3eb28c7388c7ec69d43a9b8e585c461d5b` | ⚠️ Unaudited |
| zZEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09aa07ae98fde91d66775c13107e9f082ff65295` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (278)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x030bd64a8d2973801e486e3de98bf45b6140fc48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249864 | `0x0876dfe4acae0e1c0a43302716483f5752298b71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249865 | `0x0a627a6398f429b62969cd475fb5ba8e04a4eb70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aac4649c6e73f094d4b3c2209e856f92301a952` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x128f074a90ed84e93b72a82d31e630641965fc98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13bcccb08ca9aa14c738b521d1513186dd0e969e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1458a68793bc6a51c40f15e1b92217d98456db13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15fda9f60310d09fea54e3c99d1197dff5107248` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1770b2245e882b4532d04e0824b5e9471342142d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18e610aeba73a5fc0053793b40c8843ae41eda41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1981eb647dec6bc3b0d7191ea018320eb942f135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c0fdf662731ae93982ce48491dd6ae4ae930cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c4bcdd50efc488ddec89912118e8ed5c92dfa37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c5db575e2ff833e46a2e9864c22f4b22e0b37c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d1d44e8850e7c38550c53aa04a110b5808e2c1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d9642960fcbe14736f1cf2cec639a5fca0dbc97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1de7f327125cb535e02b661f06e66856ba772bb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f98fdc4d8d0806eb3902d57df7a2183b333b80c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x236149d12f553525746aaf674f0526df96b954a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2362843745615368f4ef0a43d7502353649c0783` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x252b12005b6427f87411d9dd2fa9943cb42a394f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2547c77e781843a9369bdb841fbc20bc4288b670` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x263c732f614380e570fc9810ad162aff59978510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26da3dd0956d8c6fc95919d11515ae16b5dc2dc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28167714354cca8453b2cfbb1f0f6cebdbb9fe24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x294b56a639ad29d0cdc58399f9ee3743e64985b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c4ce444252fbeb762d789d6457d2bd530e292f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d7e244ab953f16a48dde4d11a94272c5f6f7f5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f4657e26d4887ed9029fd5b97661ff4582d0cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249872 | `0x3009c99d370b780304d2098196f1ebf779a4777a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x308ecdcefa3231ad1a8083bd42510830e749fbb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32666b64e9fd0f44916e1378efb2cfa3b3b96e80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3485d3299725bb4a4d7cc48a3835a10e0c82cbea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x376d835c6dc5d06c6335915b36ffe9734d3e4faa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3832d2f059e55934220881f831be501d180671a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3840c01167cf06c3101762f0fce991befa1cdfaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a7050701b53c93b64e7399d4b10fa269d27893e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ae34f84b2787854293410a0449f08b9685bd4cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4012ef4d3e24d4a8f8d09ff6a780c7a64bd8f4f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x402ec534baf9e8dd2968c57fdea368f3856460d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43f370152e9484a25ddd9319ff4daa8997788e39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x459086f2376525bdceba5bdda135e4e9d3fef5bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x466dd97f83b18ac23ddf16931f8171a817953ff1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48ace4f7cdfb6ebd96530fd810f4fe47d3642524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4aa8699cdaa97e72837093f227f40d122ba79611` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249878 | `0x4ad6444b55729f657a71a82a5448f85ac8aa47ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b23ebffc2ac3d285a9b3ac4fb8720dcb83e5f29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b636f19525e68a1b951dc8d89b5eb111c1d6013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c2f0533af3792695e71699ff221205f7fa47579` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249879 | `0x4d5ff8a01ed833e11aba43821d2881a5f2911f98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dbc3d23c13ebd7d1b26009a56c1c30b9d8dfe51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4df473725ce09c8e7659148c66761a738e7d061f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e85ac30e05e76881f62fe8959804240e622b28d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x500dc56eb99ef056b44e9a0fc63a4f1e8730e090` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50190f37020505405670656e50a3df49484a9123` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52147113e857c9cc1524fc80288f97b4c9074906` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52d87f22192131636f93c5ab18d0127ea52cb641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x542a45a2bf9ab5a46856e9495e65120588739d34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x556024fd47317d20b2677dc9ef172c836e6aee92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249882 | `0x569d80f7fc17316b4c83f072b92ef37b72819de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a7802e66b067cb1770ee5b1165aa201690a8b6a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249886 | `0x5bae47bf29f4e9b1e275c0b427b84c4daa30033a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5be0e8ed65ff0731df45ac946534743fba4fa359` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249887 | `0x5d94309e5a0090b165fa4181519701637b6daeba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d9bf2bad3dd710e4d533681ed16ed1cfeac9e6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e6cb28dbeb5c88bd7595d7406234c95e337cc3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5edb23629e713e14168442e17bef6463d785ef09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60ab11fe605d2a2c3cf351824816772a131f8782` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64512ff05a27756694e306e483cbb725f1754c0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66bb311e141732e652290fcca635b830c86b7f21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66bbb35c50820de3703f343908893420d2f16e87` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249890 | `0x67833a48b3f509d4252ac2c19cd604556ed6c981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67fc8956904b053600425b822c6d3af000c365fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68f0e6ec0d656dad4a4b977b05aef2b8a97a750b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a16ac43fa969959ad820bf4ce37869cff5830ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e1a6d87e9d26b63fc7304d57feaabff2d87b308` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x731ea4ba77ff184d89dbeb160a0078274acbe9d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7546dbfb23f22c05b190dfbbbaa48e4420316677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7add7e6f431cfa23dffce61dd9749810dc678b16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c08ff068b7ff6d7d2f431f08b8c2e536ed693dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7dca3372a0a236a305fdec3d48d52b09dff82e14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e872936c87594d3e6b2d2e0f9c77f3d5b2cd263` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f221a1850c12b57fed1f0831dd25399a13b68c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249892 | `0x7f58bb8311db968ab110889f2dfa04ab7e8e831b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8006c763fbde70c7f91cf6ff0c6b9a25aebc3ecd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80733a018ca7b2f84c7fbf26f925eee73be96f89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817d2e41dabba7a5e840353c9d73a40674ed3400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82072f772309d8d4e81bad8d646751469976bc4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82e728594b87318e513931469a30713fef966c8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85a6d849c9775a98b0d162cfb7cbe0b105604b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8643010110ec8f512756a8e51539eb507298b3e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249898 | `0x88a69b4e698a4b090df6cf5bd7b2d47325ad30a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x898b3f52b7aa863bc9e033491fb7c3fd4772f981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8adb36eaa3a6957bee7efbb1c4d5952eafe96cbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b49f212f2236f4f49bbeff878a73051a8915de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c14a4f46fed0d2254f20cf41000a8b475f941d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249900 | `0x8ca56e6235d83ff2f4e779f0b35a6c856d5a2fb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cb5e78cd53a6b994d5c1cc52a4a773705a9599a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d456561bfe82373aa83eae8a65d7d19e85ff8a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dd8944320eb76f8e39c58e7a30d34e7fba9d719` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249905 | `0x8f184d6aa1977fd2f9d9024317d0ea5cf5815b6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90630c23dc05e75eb16f635a99fd7bcb26d303e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249909 | `0x9272c9d5fa902ef3804ec81e0333ae420d57f715` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249911 | `0x92d3404a7e6c91455bbd81475cd9fad96acff4c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93e47ec9b8cd1a669c7267e20acf1f6a9c5340ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9636f9ac371ca0965b7c2b4ad13c4cc64d0ff2dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966b2df37ec120c27e4fd9278f38d745a03270b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96f0da162f59bb4e28bdba91a7d1460a1ec63358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97262422f98455a0098117553e43d3ac0fde5781` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9839b6485815546a886f7e5b9a245218ce452a01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98525df99d846458afd9f30c1185c7ac9013111a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x986382b387d400fca9b3191a0bc2483c94ce8863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x989b7cca772768885d54341e4e984c498a2ddb10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98d0b29e59006959b7f0537352d71b0e8c79d7a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c5b076de6c5c01c9e1ac4cb5b48fb681384742b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d6e6e2e58dae136f1e53b3641538731c6b11198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9da12017d0831681defe454034ca5868e93db7b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249914 | `0x9f7ea856ba1fb88d35e000c45e75f134a756ac4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa074139a4975318e7c011783031504d1c177f8ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa08b74daa6ea1ca4397d1e0c14c517f535a7839c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1839beb0b37db0db5d5a8504e6d06eba88c3e6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1eb04db7a0ffd6e458b1868660a0edaf8199fa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2f0a92396cb245bad15ba77817e1620c58bf05b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3077f1aac7ca9321e2cf2f72e82d14d872b9a2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa39bb788fe614ed53444a4ded36a0e0e7a61ef2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa45a8e25fb1feffbd9ef019f7be45b823739f221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4b86bcbb18639d8e708d6163a0c734afcdb770c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5f7461ea681685f8b2c5085f6451c03a8cbac59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa638f33388747d5f62411273f4be8919ed8c94b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa70ac1d4f373b9a4c5c844cdf1020ae7ffead6d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa76bea11766e0b66bd952bc357cf027742021a8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa89072d1057a9713c43cbe7a8d5965b7b4ecd038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa76bc4f861defbc111ba3ec45a1de8d21d96021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab42ebd10f77db551632d88300ea4e52882b045f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab5ebc4ddf9c4d5b00de10ff3692acdec43a5a6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab61ac780a0cf2c90fcd403f5f8261dbb682d900` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabdf8a801e62ebfb3517a011f17f9677ce7e678f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac23817f7e9ec7eb6b7889bdd2b50e04a44470c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae65b0f676313fd715f29d07538d1dc8557f2b1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf0efc4e638a43a27a21d218d07c7499f85f8042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0c560862403e12993c6e29028ba16943607c3a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb227d52375b2625cca1ba9c56abea4015d769e3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb582905ce73069589ce501a049728b1bce9eed1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249917 | `0xb70588b1a51f847d13158ff18e9cac861df5fb00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb92336759618f55bd0f8313bd843604592e27bd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba0ef5cf5a6f9533585c96c03f236811d8354306` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249918 | `0xba8d75baccc4d5c4bd814fde69267213052ea663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd0c94bc27824a76c1ebdaac3a9f5fabec6985b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdd3ea2a899bde5e93ca7d5772bb013450a7b938` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbde11d3c00c98079a4335fb280b509821708c867` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf40fce658d608d4334fa6adc0d4d8b5d9025a94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc04956c6472cdd58766614f8d47f6826ac477fb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1fae48ae1225fce8698503d5bb1378db5ce14f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc25167ffa19b4d9d03c7d5aa4682c7063f345b66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc28aa435be4894d5bd1215ca67eecb7203aa90bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ac15bec6da89e8dc5c4d1b4d0c785547676e3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3bbd5adb611dd74eca6123f05b18acc886e122d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc43ac94d32404cb5a6e622cca65acebcbc9f8ee8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9ebe9f023350128270f2a0d40c370a23afcdc39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc4929ce8ff6b4f3fd4f55e89db33582f932d021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc4ff5b8a4a7adb35f00ff0cbf53784e07c3c52f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0da0d062d18cc70be85ff94afa880ecee66eedd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd33cfe24e84d3156211cc2ea74192593ccf559aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249922 | `0xd3dfd3ede74e0dcebc1aa685e151332857efce2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4d496632b9af3122fb5ddbf0614aa82effa9f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5147bc8e386d91cc5dbe72099dac6c9b99276f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7d7deab930b6d3f98b35a26a4c431630d5ab874` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd945a9333e6641f4c40ccf8e8d240c5436238a62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbcceb1758929d6115426006fcc2e979cebf9d9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbd93af23d97563cb8fd2a0abe7f20a9086fa716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf1d8ed27c54bbe5833320cf5a19fd9e73530145` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf2a33bf44f917b85a716aa1e98af0bba4085dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfaa48c0e5b790ad66503a9cd3678a9095ddfb93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe006c6a4013f820fe093345d63b482f8dc2b9c8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0926b2f1b37c2dae0c5682f5fd75adf83cfe771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0a0fc6ecaba77638b4f516c11b68f3837fe949a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0db61ac718f502b485dec66d013afbbe0b52f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe175a237fdf7b815cbbc6d9e60fd3d9f86490674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2d6ccac3ee3a21abf7bedbe2e107ffc0c037e80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe33417797d6b8aec9171d0d6516e88002fbe23e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe33950d21c6e82ecbc15cc74e6be4407815682b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe33bf1c8be569d29b789d9be8731258f808c5d70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3cb486f3f5c639e98ccbaf57d95369375687f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4b679400f0f267212d5d812b95f58c83243ee71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4ec27bc47f006a1b79da8e3e35051fed5a00f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe57c8c5ab4eb4f117dfba282e000ee1968fbae4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe80d347df1209a76dd9d2319d62912ba98c54ddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8d0c5d4ca958c8619ab1b98ca901d65340c48b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9f0a0a787ceea82f1c8fe7a783826ebd181e707` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb4c2781e4eba804ce9a9803c67d0893436bb27d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb976ea5cb02d96443efe01bef5defff48647287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecc937de88deccf40569fa01fa10630e27624799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecffd7dcf41f8abb079f97b05d4a3cff9c141eb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed7d080aa1d2a4d468c615a5d481125bb56bf1bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee5d2e1742d2f1e934d4db642d1d561a629f9c0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef4de0e97d92757520d78c4d49d8151964f6a85b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249925 | `0xef989866b66a491e7b6c7473d73b589450d0f766` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf15ba8b5c35bacc45e627a1c4e25eb6269f4018b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf218f90c71bb03c23ca1d88f57fb2cf256176ad5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf361843bb2ac2369171a12869c4d207be7d5ade5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3bb7e2d4b26ae2c3eac41171840c227f457ea06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf61e97c464ec0cf48b33262c3a1ef42114275144` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf65d91333b1d4d3887016b17741ad602d7768594` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf67bb4a408a9d54ed52e185ee0eba5245c26ab8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9225086a64f1ea9620af8a8f4dcfe63cb16730f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbd449e6de320dc7143c7bd3e75a16431a59b35c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbea6d67ddd90e1f726c2622c6c42b016fdad5a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc3df9ad8665d584d26ba62ecf961b30ff09bfb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd7d947fb9f718b9209fbba9160d4f66fa64eb5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd956b862b67c476c9a55d016cffd06ea96fac82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe71a296749ae5aa9e223cb2b0390d8880afd656` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249927 | `0xfe8874778f946ac2990a29eba3cfd50760593b2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffe2d785b2565d0146fae2ee18af3bf5aac0dfde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x0a627a6398f429b62969cd475fb5ba8e04a4eb70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x0a6f564c5c9bebd66f1595f1b51d1f3de6ef3b79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x0aac4649c6e73f094d4b3c2209e856f92301a952` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x13bcccb08ca9aa14c738b521d1513186dd0e969e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x1981eb647dec6bc3b0d7191ea018320eb942f135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x1d9642960fcbe14736f1cf2cec639a5fca0dbc97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-249928 | `0x1dc78acda13a8bc4408b207c9e48cdbc096d95e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x1de7f327125cb535e02b661f06e66856ba772bb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x1e107186352122b763c766504ee28cb913cd83c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-249929 | `0x21a8daca6a56434bdb6f39e7616c0f9891829aec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x252b12005b6427f87411d9dd2fa9943cb42a394f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x3009c99d370b780304d2098196f1ebf779a4777a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-249930 | `0x30d2a9f5fdf90ace8c17952cbb4ee48a55d916a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x32c234370777e9bc877562b0ef69190ccd5f9fda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x4983a0bd1100305a51fe69fc7e62115757eccee5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x4ad6444b55729f657a71a82a5448f85ac8aa47ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x4d5ff8a01ed833e11aba43821d2881a5f2911f98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-249933 | `0x5130ca61bf02618548dfc3fdef50b50b36b11f2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x51e44ffad5c2b122c8b635671fcc8139dc636e82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x556024fd47317d20b2677dc9ef172c836e6aee92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x569d80f7fc17316b4c83f072b92ef37b72819de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x56a7a39c413ca3a392f6b09c14eb5dc17a3ca0f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x5b70013fbeb1211a23ea33eb681ec87196475805` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x5bae47bf29f4e9b1e275c0b427b84c4daa30033a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x5d94309e5a0090b165fa4181519701637b6daeba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x67833a48b3f509d4252ac2c19cd604556ed6c981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x78e1d14d5018a0beaf94fb928b39e8a288862a5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7b39da90c9eaf87e85c553964bc3cbd674e7ccc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7f58bb8311db968ab110889f2dfa04ab7e8e831b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7f6d9862cd7442e831123cfa288bb1fef47f7177` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x8643010110ec8f512756a8e51539eb507298b3e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x8ca56e6235d83ff2f4e779f0b35a6c856d5a2fb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x8d2c231c3522b9906b4e017c9ad658868720b436` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-249934 | `0x8d6e233106733c7cc1ba962f8de9e4dcd3b0308e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-249935 | `0x8e70cd5b4ff3f62659049e74b6649c6603a0e594` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x8f184d6aa1977fd2f9d9024317d0ea5cf5815b6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-249936 | `0x8f552a71efe5eefc207bf75485b356a0b3f01ec9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x9272c9d5fa902ef3804ec81e0333ae420d57f715` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x965dcb41c54f522810a99c4eff623b6ed61b6216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x969d515486ba6133400ac9c73298586426a090f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x9f7ea856ba1fb88d35e000c45e75f134a756ac4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xa14c224ecf8a9ccf0343ae8f06c405903c4bd808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xa70ac1d4f373b9a4c5c844cdf1020ae7ffead6d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xa7e4fea3c1468d6c1a3a77e21e6e43daed855c1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xa84e233a12b36125a731e1362121d8d4ea030c91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xaa8c309c18c464de95040a7f21f0cbb3e915a939` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xac56dc4f27159764ecb83823ab6d29439ba3a5e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb70588b1a51f847d13158ff18e9cac861df5fb00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb92336759618f55bd0f8313bd843604592e27bd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xbbb0efa9e6a57b906bba5ad9a656abcf2db5da3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xc1fae48ae1225fce8698503d5bb1378db5ce14f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-249938 | `0xc234a67a4f840e61ade794be47de455361b52413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xd3dfd3ede74e0dcebc1aa685e151332857efce2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xd57b539d25bdf4f4e407e177be5c6433ce5a1bce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xdce06ffe78aaac2894109a56ba83c3c33b073f44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xe33bf1c8be569d29b789d9be8731258f808c5d70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xe4184f47207f84167b634982b63e67f8f7c6e7c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xe5b5cff8a0bbbb14f54f3320e54b584541190d96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xebb99a5b3021c86301df241d3a32dbeba5c15801` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xef989866b66a491e7b6c7473d73b589450d0f766` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf29c29cb99a3ff36e1def82209c3ee1e77065041` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf4694c5de9a60701e278f4ebe4a0532732001338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf67bb4a408a9d54ed52e185ee0eba5245c26ab8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xfe8874778f946ac2990a29eba3cfd50760593b2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-249941 | `0x38dcf0532699b880e6a125f7d918380524cd60a6` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 251
- Live contracts: 0
- Unknown liveness contracts: 251
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=251

Showing first 200 of 251 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x8c14a4f46fed0d2254f20cf41000a8b475f941d3` | non_address_book | unknown | unknown | unverified | n/a | `0x06b3b8d321f609c037fb8d1d6678d1fec7d324eb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbdd3ea2a899bde5e93ca7d5772bb013450a7b938` | non_address_book | unknown | unknown | unverified | n/a | `0x06b3b8d321f609c037fb8d1d6678d1fec7d324eb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x128f074a90ed84e93b72a82d31e630641965fc98` | non_address_book | unknown | unknown | unverified | n/a | `0x63155828e949aeba75038a5e8a5f4edd5038d9a6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1770b2245e882b4532d04e0824b5e9471342142d` | non_address_book | unknown | unknown | unverified | n/a | `0x63155828e949aeba75038a5e8a5f4edd5038d9a6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x26da3dd0956d8c6fc95919d11515ae16b5dc2dc6` | non_address_book | unknown | unknown | unverified | n/a | `0x63155828e949aeba75038a5e8a5f4edd5038d9a6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5e6cb28dbeb5c88bd7595d7406234c95e337cc3c` | non_address_book | unknown | unknown | unverified | n/a | `0x63155828e949aeba75038a5e8a5f4edd5038d9a6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6e1a6d87e9d26b63fc7304d57feaabff2d87b308` | non_address_book | unknown | unknown | unverified | n/a | `0x63155828e949aeba75038a5e8a5f4edd5038d9a6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x898b3f52b7aa863bc9e033491fb7c3fd4772f981` | non_address_book | unknown | unknown | unverified | n/a | `0x63155828e949aeba75038a5e8a5f4edd5038d9a6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x97262422f98455a0098117553e43d3ac0fde5781` | non_address_book | unknown | unknown | unverified | n/a | `0x63155828e949aeba75038a5e8a5f4edd5038d9a6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa1839beb0b37db0db5d5a8504e6d06eba88c3e6d` | non_address_book | unknown | unknown | unverified | n/a | `0x63155828e949aeba75038a5e8a5f4edd5038d9a6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xba0ef5cf5a6f9533585c96c03f236811d8354306` | non_address_book | unknown | unknown | unverified | n/a | `0x63155828e949aeba75038a5e8a5f4edd5038d9a6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc43ac94d32404cb5a6e622cca65acebcbc9f8ee8` | non_address_book | unknown | unknown | unverified | n/a | `0x63155828e949aeba75038a5e8a5f4edd5038d9a6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd945a9333e6641f4c40ccf8e8d240c5436238a62` | non_address_book | unknown | unknown | unverified | n/a | `0x63155828e949aeba75038a5e8a5f4edd5038d9a6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe57c8c5ab4eb4f117dfba282e000ee1968fbae4b` | non_address_book | unknown | unknown | unverified | n/a | `0x63155828e949aeba75038a5e8a5f4edd5038d9a6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf361843bb2ac2369171a12869c4d207be7d5ade5` | non_address_book | unknown | unknown | unverified | n/a | `0x63155828e949aeba75038a5e8a5f4edd5038d9a6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe71a296749ae5aa9e223cb2b0390d8880afd656` | non_address_book | unknown | unknown | unverified | n/a | `0x63155828e949aeba75038a5e8a5f4edd5038d9a6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0aac4649c6e73f094d4b3c2209e856f92301a952` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x13bcccb08ca9aa14c738b521d1513186dd0e969e` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1458a68793bc6a51c40f15e1b92217d98456db13` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x15fda9f60310d09fea54e3c99d1197dff5107248` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1981eb647dec6bc3b0d7191ea018320eb942f135` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1d9642960fcbe14736f1cf2cec639a5fca0dbc97` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1de7f327125cb535e02b661f06e66856ba772bb8` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1f98fdc4d8d0806eb3902d57df7a2183b333b80c` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x252b12005b6427f87411d9dd2fa9943cb42a394f` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x263c732f614380e570fc9810ad162aff59978510` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x28167714354cca8453b2cfbb1f0f6cebdbb9fe24` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3485d3299725bb4a4d7cc48a3835a10e0c82cbea` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4aa8699cdaa97e72837093f227f40d122ba79611` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4dbc3d23c13ebd7d1b26009a56c1c30b9d8dfe51` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x556024fd47317d20b2677dc9ef172c836e6aee92` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x66bbb35c50820de3703f343908893420d2f16e87` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6a16ac43fa969959ad820bf4ce37869cff5830ba` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f221a1850c12b57fed1f0831dd25399a13b68c2` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8643010110ec8f512756a8e51539eb507298b3e4` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9da12017d0831681defe454034ca5868e93db7b6` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa4b86bcbb18639d8e708d6163a0c734afcdb770c` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa5f7461ea681685f8b2c5085f6451c03a8cbac59` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa70ac1d4f373b9a4c5c844cdf1020ae7ffead6d4` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaa76bc4f861defbc111ba3ec45a1de8d21d96021` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xab42ebd10f77db551632d88300ea4e52882b045f` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb92336759618f55bd0f8313bd843604592e27bd8` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbf40fce658d608d4334fa6adc0d4d8b5d9025a94` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc1fae48ae1225fce8698503d5bb1378db5ce14f6` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdbcceb1758929d6115426006fcc2e979cebf9d9d` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdfaa48c0e5b790ad66503a9cd3678a9095ddfb93` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe006c6a4013f820fe093345d63b482f8dc2b9c8a` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe0db61ac718f502b485dec66d013afbbe0b52f84` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe33bf1c8be569d29b789d9be8731258f808c5d70` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe9f0a0a787ceea82f1c8fe7a783826ebd181e707` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf3bb7e2d4b26ae2c3eac41171840c227f457ea06` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf67bb4a408a9d54ed52e185ee0eba5245c26ab8f` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfbea6d67ddd90e1f726c2622c6c42b016fdad5a7` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfd956b862b67c476c9a55d016cffd06ea96fac82` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa39bb788fe614ed53444a4ded36a0e0e7a61ef2c` | non_address_book | unknown | unknown | unverified | n/a | `0xc2da5ee9ef5c2452738a990233a2370d34b6c6bb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa89072d1057a9713c43cbe7a8d5965b7b4ecd038` | non_address_book | unknown | unknown | unverified | n/a | `0xc2da5ee9ef5c2452738a990233a2370d34b6c6bb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x030bd64a8d2973801e486e3de98bf45b6140fc48` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1c4bcdd50efc488ddec89912118e8ed5c92dfa37` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x236149d12f553525746aaf674f0526df96b954a4` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2547c77e781843a9369bdb841fbc20bc4288b670` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3a7050701b53c93b64e7399d4b10fa269d27893e` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3ae34f84b2787854293410a0449f08b9685bd4cb` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4df473725ce09c8e7659148c66761a738e7d061f` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x66bb311e141732e652290fcca635b830c86b7f21` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x68f0e6ec0d656dad4a4b977b05aef2b8a97a750b` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7dca3372a0a236a305fdec3d48d52b09dff82e14` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7e872936c87594d3e6b2d2e0f9c77f3d5b2cd263` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8006c763fbde70c7f91cf6ff0c6b9a25aebc3ecd` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x80733a018ca7b2f84c7fbf26f925eee73be96f89` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x85a6d849c9775a98b0d162cfb7cbe0b105604b76` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x90630c23dc05e75eb16f635a99fd7bcb26d303e5` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9839b6485815546a886f7e5b9a245218ce452a01` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x98d0b29e59006959b7f0537352d71b0e8c79d7a8` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa3077f1aac7ca9321e2cf2f72e82d14d872b9a2c` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa45a8e25fb1feffbd9ef019f7be45b823739f221` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb582905ce73069589ce501a049728b1bce9eed1b` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbde11d3c00c98079a4335fb280b509821708c867` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcc4929ce8ff6b4f3fd4f55e89db33582f932d021` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe33950d21c6e82ecbc15cc74e6be4407815682b8` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeb976ea5cb02d96443efe01bef5defff48647287` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xecc937de88deccf40569fa01fa10630e27624799` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xecffd7dcf41f8abb079f97b05d4a3cff9c141eb4` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf9225086a64f1ea9620af8a8f4dcfe63cb16730f` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfd7d947fb9f718b9209fbba9160d4f66fa64eb5b` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xffe2d785b2565d0146fae2ee18af3bf5aac0dfde` | non_address_book | unknown | unknown | unverified | n/a | `0xcfd68c54f5632aba6c79154b1c37e5724f2c360f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xabdf8a801e62ebfb3517a011f17f9677ce7e678f` | non_address_book | unknown | unknown | unverified | n/a | `0xf325b282cd910d6f1c607399ff41b2e4b0931a56` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x18e610aeba73a5fc0053793b40c8843ae41eda41` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1c0fdf662731ae93982ce48491dd6ae4ae930cdd` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1c5db575e2ff833e46a2e9864c22f4b22e0b37c2` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1d1d44e8850e7c38550c53aa04a110b5808e2c1a` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2362843745615368f4ef0a43d7502353649c0783` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x294b56a639ad29d0cdc58399f9ee3743e64985b8` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2c4ce444252fbeb762d789d6457d2bd530e292f6` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2d7e244ab953f16a48dde4d11a94272c5f6f7f5b` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2f4657e26d4887ed9029fd5b97661ff4582d0cd6` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x308ecdcefa3231ad1a8083bd42510830e749fbb7` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x32666b64e9fd0f44916e1378efb2cfa3b3b96e80` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x33b53a700de61b6be01d65a758b3635584bcf140` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x376d835c6dc5d06c6335915b36ffe9734d3e4faa` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3832d2f059e55934220881f831be501d180671a7` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3840c01167cf06c3101762f0fce991befa1cdfaf` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4012ef4d3e24d4a8f8d09ff6a780c7a64bd8f4f2` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x402ec534baf9e8dd2968c57fdea368f3856460d6` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x43f370152e9484a25ddd9319ff4daa8997788e39` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x459086f2376525bdceba5bdda135e4e9d3fef5bf` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x466dd97f83b18ac23ddf16931f8171a817953ff1` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x48ace4f7cdfb6ebd96530fd810f4fe47d3642524` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4a144820a415bdfa0030937608743cae1d392029` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4b23ebffc2ac3d285a9b3ac4fb8720dcb83e5f29` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4b636f19525e68a1b951dc8d89b5eb111c1d6013` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4c2f0533af3792695e71699ff221205f7fa47579` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4e85ac30e05e76881f62fe8959804240e622b28d` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x500dc56eb99ef056b44e9a0fc63a4f1e8730e090` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50190f37020505405670656e50a3df49484a9123` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x52147113e857c9cc1524fc80288f97b4c9074906` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x52d87f22192131636f93c5ab18d0127ea52cb641` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x542a45a2bf9ab5a46856e9495e65120588739d34` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5a7802e66b067cb1770ee5b1165aa201690a8b6a` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5be0e8ed65ff0731df45ac946534743fba4fa359` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5d9bf2bad3dd710e4d533681ed16ed1cfeac9e6f` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5edb23629e713e14168442e17bef6463d785ef09` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x60ab11fe605d2a2c3cf351824816772a131f8782` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x64512ff05a27756694e306e483cbb725f1754c0e` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x67fc8956904b053600425b822c6d3af000c365fa` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x731ea4ba77ff184d89dbeb160a0078274acbe9d2` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7546dbfb23f22c05b190dfbbbaa48e4420316677` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7add7e6f431cfa23dffce61dd9749810dc678b16` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7c08ff068b7ff6d7d2f431f08b8c2e536ed693dd` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x817d2e41dabba7a5e840353c9d73a40674ed3400` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x82072f772309d8d4e81bad8d646751469976bc4e` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x82e728594b87318e513931469a30713fef966c8e` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x85bde74ca4760587ec9d77f775cb83d4cb76e5ae` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8adb36eaa3a6957bee7efbb1c4d5952eafe96cbf` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8b49f212f2236f4f49bbeff878a73051a8915de0` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8cb5e78cd53a6b994d5c1cc52a4a773705a9599a` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8d456561bfe82373aa83eae8a65d7d19e85ff8a5` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8dd8944320eb76f8e39c58e7a30d34e7fba9d719` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x93e47ec9b8cd1a669c7267e20acf1f6a9c5340ba` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9636f9ac371ca0965b7c2b4ad13c4cc64d0ff2dc` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x966b2df37ec120c27e4fd9278f38d745a03270b5` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x96f0da162f59bb4e28bdba91a7d1460a1ec63358` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x98525df99d846458afd9f30c1185c7ac9013111a` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x986382b387d400fca9b3191a0bc2483c94ce8863` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x989b7cca772768885d54341e4e984c498a2ddb10` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9c5b076de6c5c01c9e1ac4cb5b48fb681384742b` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9d6e6e2e58dae136f1e53b3641538731c6b11198` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa074139a4975318e7c011783031504d1c177f8ca` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa08b74daa6ea1ca4397d1e0c14c517f535a7839c` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa1eb04db7a0ffd6e458b1868660a0edaf8199fa9` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa2f0a92396cb245bad15ba77817e1620c58bf05b` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa638f33388747d5f62411273f4be8919ed8c94b4` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa76bea11766e0b66bd952bc357cf027742021a8c` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xab5ebc4ddf9c4d5b00de10ff3692acdec43a5a6e` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xab61ac780a0cf2c90fcd403f5f8261dbb682d900` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xac23817f7e9ec7eb6b7889bdd2b50e04a44470c5` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xae65b0f676313fd715f29d07538d1dc8557f2b1a` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaf0efc4e638a43a27a21d218d07c7499f85f8042` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb0c560862403e12993c6e29028ba16943607c3a7` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb227d52375b2625cca1ba9c56abea4015d769e3f` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbd0c94bc27824a76c1ebdaac3a9f5fabec6985b7` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc04956c6472cdd58766614f8d47f6826ac477fb9` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc25167ffa19b4d9d03c7d5aa4682c7063f345b66` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc28aa435be4894d5bd1215ca67eecb7203aa90bb` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc3ac15bec6da89e8dc5c4d1b4d0c785547676e3a` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc3bbd5adb611dd74eca6123f05b18acc886e122d` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc9ebe9f023350128270f2a0d40c370a23afcdc39` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcc4ff5b8a4a7adb35f00ff0cbf53784e07c3c52f` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd0da0d062d18cc70be85ff94afa880ecee66eedd` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd33cfe24e84d3156211cc2ea74192593ccf559aa` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd4d496632b9af3122fb5ddbf0614aa82effa9f99` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd5147bc8e386d91cc5dbe72099dac6c9b99276f5` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd7d7deab930b6d3f98b35a26a4c431630d5ab874` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdbd93af23d97563cb8fd2a0abe7f20a9086fa716` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdf1d8ed27c54bbe5833320cf5a19fd9e73530145` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdf2a33bf44f917b85a716aa1e98af0bba4085dec` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe0926b2f1b37c2dae0c5682f5fd75adf83cfe771` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe0a0fc6ecaba77638b4f516c11b68f3837fe949a` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe175a237fdf7b815cbbc6d9e60fd3d9f86490674` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe2d6ccac3ee3a21abf7bedbe2e107ffc0c037e80` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe33417797d6b8aec9171d0d6516e88002fbe23e7` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe3cb486f3f5c639e98ccbaf57d95369375687f80` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe4b679400f0f267212d5d812b95f58c83243ee71` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe4ec27bc47f006a1b79da8e3e35051fed5a00f80` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe80d347df1209a76dd9d2319d62912ba98c54ddd` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe8d0c5d4ca958c8619ab1b98ca901d65340c48b1` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeb4c2781e4eba804ce9a9803c67d0893436bb27d` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xed7d080aa1d2a4d468c615a5d481125bb56bf1bf` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xee5d2e1742d2f1e934d4db642d1d561a629f9c0b` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xef4de0e97d92757520d78c4d49d8151964f6a85b` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf15ba8b5c35bacc45e627a1c4e25eb6269f4018b` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf218f90c71bb03c23ca1d88f57fb2cf256176ad5` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf61e97c464ec0cf48b33262c3a1ef42114275144` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf65d91333b1d4d3887016b17741ad602d7768594` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfbd449e6de320dc7143c7bd3e75a16431a59b35c` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfc3df9ad8665d584d26ba62ecf961b30ff09bfb5` | non_address_book | unknown | unknown | unverified | n/a | `0xfe45ab17919759cfa2ce35215ead5ca4d1fc73c7` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0x0a627a6398f429b62969cd475fb5ba8e04a4eb70` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0x0a6f564c5c9bebd66f1595f1b51d1f3de6ef3b79` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0x0aac4649c6e73f094d4b3c2209e856f92301a952` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0x13bcccb08ca9aa14c738b521d1513186dd0e969e` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0x1981eb647dec6bc3b0d7191ea018320eb942f135` | non_address_book | unknown | unknown | unverified | n/a | `0xa5bd5c661f373256c0ccfbc628fd52de74f9bb55` |

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
| needs_review | 278 |

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
