# Agentic Audit Brief: JulSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 4 (1 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: JulSwap (`julswap`)
- Website: [https://julswap.com/#/swap](https://julswap.com/#/swap)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche, bsc, ethereum, optimism, polygon
- Contract surface: 121 unique implementations (121 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $346,754.70
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for JulSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across avalanche, bsc, ethereum, optimism, polygon. Structural roles: 2 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x95ae3f1cd52cc49a12f27c1815ea4e372256ec95`, chain 10)
- UnnamedContract (`0x65244aba8975487cc515cbf5600155c8c8456257`, chain 56)
- UnnamedContract (`0x441f29d66aff1fb52f48279818b689b8e3979847`, chain 137)
- UnnamedContract (`0x9f5be776024660576b17159b2bb4fee2ee319d5e`, chain 43114)
- BSCswapRouter (`0xbd67d157502a23309db761c41965600c2ec788b2`, chain 56)
- OptimizedTransparentUpgradeableProxy (`0x16a7b34353de766ae3e1a8ad0d6a415b4da8a864`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 115 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 6 of 121 unique; 115 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/8
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 113
- Unique implementations: 121
- Raw deployments: 121
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 12.5% | 2021-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BSCswapRouter | unknown | project_anchor | own_supporting | 0 | bsc | unit-243516 | `0xbd67d157502a23309db761c41965600c2ec788b2` | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BSCswapPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x57108ba5a6ce93da2e5503f531ca9bfd1288b0ea` | ⚠️ Unaudited |
| JulProtocolV3_BSC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4edfbdcc6b7bc3596f625137be4f211ea5a08037` | ⚠️ Unaudited |
| JulSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a41f637c3f7553dba6ddc2d3ca92641096577ea` | ⚠️ Unaudited |
| JulSwapCrossChainNode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x16a7b34353de766ae3e1a8ad0d6a415b4da8a864` | ⚠️ Unaudited |
| MultiCall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e6dd9603f4bc56296ee3b9ab33122fecbd7d83e` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-243517 | `0x16a7b34353de766ae3e1a8ad0d6a415b4da8a864` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5dffc99f807963954c83cc3dff9de610ad95a63c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (113)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00e06e79ce701eea2d66b5a8d8e7af40f71e0a65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ae5e97d0e54222bcb5d84fa74025f8ebbb82e16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x441f29d66aff1fb52f48279818b689b8e3979847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dffc99f807963954c83cc3dff9de610ad95a63c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65244aba8975487cc515cbf5600155c8c8456257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dbe83d760088934c5cf2679c1366f285e68f437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7aa1005b47161dbe47a70db2ded957602691d83f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8466ccc6d0b2101c187081b7bdcaa885cecf21db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a03aba87cbab6bbdea5273d3b62bc085cb86d78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95ae3f1cd52cc49a12f27c1815ea4e372256ec95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ae2a11136c11efe5d83522a63cd8e0280083e79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f5be776024660576b17159b2bb4fee2ee319d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5104cffec743f16103ca55e55a90f71e58da6f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb39b2e3284012dad232bafff424baa560a9130c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc11defee45d8bd9220a309c5cb39c8bc475198c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc56395d5c06c2d85d12253d31139c1dfaa706d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd0a1a753cdc001231fd3d90507f3e75b5ed5a60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe067e0d5246f87d06b6ff27b205c158087525a61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0ec63189873fc301a125cc1d7d4adc498752661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x00e06e79ce701eea2d66b5a8d8e7af40f71e0a65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x16a7b34353de766ae3e1a8ad0d6a415b4da8a864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2dc0d6a4c2cc5ffb0f26dda9c2d4469d53125536` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5dffc99f807963954c83cc3dff9de610ad95a63c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x65244aba8975487cc515cbf5600155c8c8456257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6dbe83d760088934c5cf2679c1366f285e68f437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7aa1005b47161dbe47a70db2ded957602691d83f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8466ccc6d0b2101c187081b7bdcaa885cecf21db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8a03aba87cbab6bbdea5273d3b62bc085cb86d78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-243512 | `0x95ae3f1cd52cc49a12f27c1815ea4e372256ec95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa0147bdf3660c9e2dae59a390ac225ac3c248fc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa5104cffec743f16103ca55e55a90f71e58da6f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcb39b2e3284012dad232bafff424baa560a9130c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcc11defee45d8bd9220a309c5cb39c8bc475198c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdc56395d5c06c2d85d12253d31139c1dfaa706d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdd0a1a753cdc001231fd3d90507f3e75b5ed5a60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe067e0d5246f87d06b6ff27b205c158087525a61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00a492756990187a9ec9d465af8ce3796cb8c495` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00e06e79ce701eea2d66b5a8d8e7af40f71e0a65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e2799a8915c42a21d9a8693b40114e7408a3de4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e6dd9603f4bc56296ee3b9ab33122fecbd7d83e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16a7b34353de766ae3e1a8ad0d6a415b4da8a864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b2888c949ac5612bd23354fdd75fd3684049c45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25028de732f9eca9fe4a40a66fc9f64a4701a6ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27a64653d7c7d7c7e3c25e659d81ce1080ae7dda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a1923343fe4549c40cfe4b79dafa0116e0413cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e21d53ec224e64e12cdacdc7fadd846ff514e1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40b1a265cbe18bcfda1592ffa68a54495f2a4042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x441f29d66aff1fb52f48279818b689b8e3979847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4765117f5e462ffd878b2502827828ff58defccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e0ec22e14176fc56b92ca325d3b378ab806ecb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b7c7afacd7591c3ea8a12325e592e37da8ef768` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-243515 | `0x65244aba8975487cc515cbf5600155c8c8456257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c9c8fc2830ef6475103880f45f14f3a845b0ff6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6dbe83d760088934c5cf2679c1366f285e68f437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f69ce2c73be6b5797d494a951770b88c76355f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79e77230f3f6844d801255ab45d46b600e7ae4c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7fec7e8c6bb6169259c7c4dee208d80c6d99b5c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x818980af8e33ef2cc4e00c710e43b11a52a20260` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8466ccc6d0b2101c187081b7bdcaa885cecf21db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a03aba87cbab6bbdea5273d3b62bc085cb86d78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95ae3f1cd52cc49a12f27c1815ea4e372256ec95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ae2a11136c11efe5d83522a63cd8e0280083e79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f5be776024660576b17159b2bb4fee2ee319d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0147bdf3660c9e2dae59a390ac225ac3c248fc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa4abfa1743e9f18d2dc768d45245e8163f9e6d3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa5104cffec743f16103ca55e55a90f71e58da6f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa900e94f49030c7601605851af055312f560fb96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa98332e04e17e1be35e88fdae2365798da6ef55f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbaf3b0829d20520b30a24202f6127aecb31436d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb39b2e3284012dad232bafff424baa560a9130c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc11defee45d8bd9220a309c5cb39c8bc475198c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc56395d5c06c2d85d12253d31139c1dfaa706d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdcff19f2f43795f8c524a2668a7a1ea89c6522f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd0a1a753cdc001231fd3d90507f3e75b5ed5a60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe067e0d5246f87d06b6ff27b205c158087525a61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe342cf462e8d0f2e4197b6c6bf2a8323333db37f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe812261cc98b092da88449450c49d708b6b2d847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00e06e79ce701eea2d66b5a8d8e7af40f71e0a65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2ae5e97d0e54222bcb5d84fa74025f8ebbb82e16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2dc0d6a4c2cc5ffb0f26dda9c2d4469d53125536` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243513 | `0x441f29d66aff1fb52f48279818b689b8e3979847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x65244aba8975487cc515cbf5600155c8c8456257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6dbe83d760088934c5cf2679c1366f285e68f437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8466ccc6d0b2101c187081b7bdcaa885cecf21db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8a03aba87cbab6bbdea5273d3b62bc085cb86d78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x95ae3f1cd52cc49a12f27c1815ea4e372256ec95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9f5be776024660576b17159b2bb4fee2ee319d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0147bdf3660c9e2dae59a390ac225ac3c248fc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa5104cffec743f16103ca55e55a90f71e58da6f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcb39b2e3284012dad232bafff424baa560a9130c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc11defee45d8bd9220a309c5cb39c8bc475198c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdc56395d5c06c2d85d12253d31139c1dfaa706d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdd0a1a753cdc001231fd3d90507f3e75b5ed5a60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe067e0d5246f87d06b6ff27b205c158087525a61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe0ec63189873fc301a125cc1d7d4adc498752661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00e06e79ce701eea2d66b5a8d8e7af40f71e0a65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ae5e97d0e54222bcb5d84fa74025f8ebbb82e16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x441f29d66aff1fb52f48279818b689b8e3979847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5dffc99f807963954c83cc3dff9de610ad95a63c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65244aba8975487cc515cbf5600155c8c8456257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6dbe83d760088934c5cf2679c1366f285e68f437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7aa1005b47161dbe47a70db2ded957602691d83f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8466ccc6d0b2101c187081b7bdcaa885cecf21db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8a03aba87cbab6bbdea5273d3b62bc085cb86d78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x95ae3f1cd52cc49a12f27c1815ea4e372256ec95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-243514 | `0x9f5be776024660576b17159b2bb4fee2ee319d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa5104cffec743f16103ca55e55a90f71e58da6f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcb39b2e3284012dad232bafff424baa560a9130c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc11defee45d8bd9220a309c5cb39c8bc475198c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc56395d5c06c2d85d12253d31139c1dfaa706d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdd0a1a753cdc001231fd3d90507f3e75b5ed5a60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe067e0d5246f87d06b6ff27b205c158087525a61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe0ec63189873fc301a125cc1d7d4adc498752661` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 105
- Live contracts: 0
- Unknown liveness contracts: 105
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=105

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x00e06e79ce701eea2d66b5a8d8e7af40f71e0a65` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x2ae5e97d0e54222bcb5d84fa74025f8ebbb82e16` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x441f29d66aff1fb52f48279818b689b8e3979847` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x5dffc99f807963954c83cc3dff9de610ad95a63c` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x65244aba8975487cc515cbf5600155c8c8456257` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x6dbe83d760088934c5cf2679c1366f285e68f437` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x7aa1005b47161dbe47a70db2ded957602691d83f` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x8466ccc6d0b2101c187081b7bdcaa885cecf21db` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x8a03aba87cbab6bbdea5273d3b62bc085cb86d78` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x95ae3f1cd52cc49a12f27c1815ea4e372256ec95` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x9ae2a11136c11efe5d83522a63cd8e0280083e79` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x9f5be776024660576b17159b2bb4fee2ee319d5e` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xa5104cffec743f16103ca55e55a90f71e58da6f8` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xcb39b2e3284012dad232bafff424baa560a9130c` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xcc11defee45d8bd9220a309c5cb39c8bc475198c` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xdc56395d5c06c2d85d12253d31139c1dfaa706d0` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xdd0a1a753cdc001231fd3d90507f3e75b5ed5a60` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xe067e0d5246f87d06b6ff27b205c158087525a61` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xe0ec63189873fc301a125cc1d7d4adc498752661` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x00e06e79ce701eea2d66b5a8d8e7af40f71e0a65` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x16a7b34353de766ae3e1a8ad0d6a415b4da8a864` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x2dc0d6a4c2cc5ffb0f26dda9c2d4469d53125536` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x5dffc99f807963954c83cc3dff9de610ad95a63c` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x65244aba8975487cc515cbf5600155c8c8456257` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x6dbe83d760088934c5cf2679c1366f285e68f437` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x7aa1005b47161dbe47a70db2ded957602691d83f` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x8466ccc6d0b2101c187081b7bdcaa885cecf21db` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x8a03aba87cbab6bbdea5273d3b62bc085cb86d78` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xa0147bdf3660c9e2dae59a390ac225ac3c248fc7` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xa5104cffec743f16103ca55e55a90f71e58da6f8` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xcb39b2e3284012dad232bafff424baa560a9130c` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xcc11defee45d8bd9220a309c5cb39c8bc475198c` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xdc56395d5c06c2d85d12253d31139c1dfaa706d0` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xdd0a1a753cdc001231fd3d90507f3e75b5ed5a60` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xe067e0d5246f87d06b6ff27b205c158087525a61` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x00a492756990187a9ec9d465af8ce3796cb8c495` | non_address_book | unknown | unknown | unverified | n/a | `0x2982b0ceb9c0d8568b02b5dfca6e3624f1938dba` |
| unverified unclassified | UnnamedContract<br>`0x00e06e79ce701eea2d66b5a8d8e7af40f71e0a65` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x0e2799a8915c42a21d9a8693b40114e7408a3de4` | non_address_book | unknown | unknown | unverified | n/a | `0x2982b0ceb9c0d8568b02b5dfca6e3624f1938dba` |
| unverified unclassified | UnnamedContract<br>`0x0e6dd9603f4bc56296ee3b9ab33122fecbd7d83e` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x1b2888c949ac5612bd23354fdd75fd3684049c45` | non_address_book | unknown | unknown | unverified | n/a | `0x2982b0ceb9c0d8568b02b5dfca6e3624f1938dba` |
| unverified unclassified | UnnamedContract<br>`0x25028de732f9eca9fe4a40a66fc9f64a4701a6ce` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x27a64653d7c7d7c7e3c25e659d81ce1080ae7dda` | non_address_book | unknown | unknown | unverified | n/a | `0x2982b0ceb9c0d8568b02b5dfca6e3624f1938dba` |
| unverified unclassified | UnnamedContract<br>`0x2a1923343fe4549c40cfe4b79dafa0116e0413cc` | non_address_book | unknown | unknown | unverified | n/a | `0x2982b0ceb9c0d8568b02b5dfca6e3624f1938dba` |
| unverified unclassified | UnnamedContract<br>`0x3e21d53ec224e64e12cdacdc7fadd846ff514e1a` | non_address_book | unknown | unknown | unverified | n/a | `0x2982b0ceb9c0d8568b02b5dfca6e3624f1938dba` |
| unverified unclassified | UnnamedContract<br>`0x40b1a265cbe18bcfda1592ffa68a54495f2a4042` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x4765117f5e462ffd878b2502827828ff58defccf` | non_address_book | unknown | unknown | unverified | n/a | `0x2982b0ceb9c0d8568b02b5dfca6e3624f1938dba` |
| unverified unclassified | UnnamedContract<br>`0x4e0ec22e14176fc56b92ca325d3b378ab806ecb5` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x5b7c7afacd7591c3ea8a12325e592e37da8ef768` | non_address_book | unknown | unknown | unverified | n/a | `0x2982b0ceb9c0d8568b02b5dfca6e3624f1938dba` |
| unverified unclassified | UnnamedContract<br>`0x6c9c8fc2830ef6475103880f45f14f3a845b0ff6` | non_address_book | unknown | unknown | unverified | n/a | `0x2982b0ceb9c0d8568b02b5dfca6e3624f1938dba` |
| unverified unclassified | UnnamedContract<br>`0x6dbe83d760088934c5cf2679c1366f285e68f437` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x6f69ce2c73be6b5797d494a951770b88c76355f2` | non_address_book | unknown | unknown | unverified | n/a | `0x2982b0ceb9c0d8568b02b5dfca6e3624f1938dba` |
| unverified unclassified | UnnamedContract<br>`0x79e77230f3f6844d801255ab45d46b600e7ae4c8` | non_address_book | unknown | unknown | unverified | n/a | `0x2982b0ceb9c0d8568b02b5dfca6e3624f1938dba` |
| unverified unclassified | UnnamedContract<br>`0x7fec7e8c6bb6169259c7c4dee208d80c6d99b5c7` | non_address_book | unknown | unknown | unverified | n/a | `0x2982b0ceb9c0d8568b02b5dfca6e3624f1938dba` |
| unverified unclassified | UnnamedContract<br>`0x818980af8e33ef2cc4e00c710e43b11a52a20260` | non_address_book | unknown | unknown | unverified | n/a | `0x2982b0ceb9c0d8568b02b5dfca6e3624f1938dba` |
| unverified unclassified | UnnamedContract<br>`0x8466ccc6d0b2101c187081b7bdcaa885cecf21db` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x8a03aba87cbab6bbdea5273d3b62bc085cb86d78` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x9ae2a11136c11efe5d83522a63cd8e0280083e79` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xa0147bdf3660c9e2dae59a390ac225ac3c248fc7` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xa4abfa1743e9f18d2dc768d45245e8163f9e6d3c` | non_address_book | unknown | unknown | unverified | n/a | `0x2982b0ceb9c0d8568b02b5dfca6e3624f1938dba` |
| unverified unclassified | UnnamedContract<br>`0xa5104cffec743f16103ca55e55a90f71e58da6f8` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xa900e94f49030c7601605851af055312f560fb96` | non_address_book | unknown | unknown | unverified | n/a | `0x2982b0ceb9c0d8568b02b5dfca6e3624f1938dba` |
| unverified unclassified | UnnamedContract<br>`0xa98332e04e17e1be35e88fdae2365798da6ef55f` | non_address_book | unknown | unknown | unverified | n/a | `0x2982b0ceb9c0d8568b02b5dfca6e3624f1938dba` |
| unverified unclassified | UnnamedContract<br>`0xbaf3b0829d20520b30a24202f6127aecb31436d8` | non_address_book | unknown | unknown | unverified | n/a | `0x2982b0ceb9c0d8568b02b5dfca6e3624f1938dba` |
| unverified unclassified | UnnamedContract<br>`0xcb39b2e3284012dad232bafff424baa560a9130c` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xcc11defee45d8bd9220a309c5cb39c8bc475198c` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xdc56395d5c06c2d85d12253d31139c1dfaa706d0` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xdcff19f2f43795f8c524a2668a7a1ea89c6522f1` | non_address_book | unknown | unknown | unverified | n/a | `0x2982b0ceb9c0d8568b02b5dfca6e3624f1938dba` |
| unverified unclassified | UnnamedContract<br>`0xdd0a1a753cdc001231fd3d90507f3e75b5ed5a60` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xe067e0d5246f87d06b6ff27b205c158087525a61` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xe342cf462e8d0f2e4197b6c6bf2a8323333db37f` | non_address_book | unknown | unknown | unverified | n/a | `0x2982b0ceb9c0d8568b02b5dfca6e3624f1938dba` |
| unverified unclassified | UnnamedContract<br>`0xe812261cc98b092da88449450c49d708b6b2d847` | non_address_book | unknown | unknown | unverified | n/a | `0x2982b0ceb9c0d8568b02b5dfca6e3624f1938dba` |
| unverified unclassified | UnnamedContract<br>`0x00e06e79ce701eea2d66b5a8d8e7af40f71e0a65` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x2ae5e97d0e54222bcb5d84fa74025f8ebbb82e16` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x2dc0d6a4c2cc5ffb0f26dda9c2d4469d53125536` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x65244aba8975487cc515cbf5600155c8c8456257` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x6dbe83d760088934c5cf2679c1366f285e68f437` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x8466ccc6d0b2101c187081b7bdcaa885cecf21db` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x8a03aba87cbab6bbdea5273d3b62bc085cb86d78` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x95ae3f1cd52cc49a12f27c1815ea4e372256ec95` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x9f5be776024660576b17159b2bb4fee2ee319d5e` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xa0147bdf3660c9e2dae59a390ac225ac3c248fc7` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xa5104cffec743f16103ca55e55a90f71e58da6f8` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xcb39b2e3284012dad232bafff424baa560a9130c` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xcc11defee45d8bd9220a309c5cb39c8bc475198c` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xdc56395d5c06c2d85d12253d31139c1dfaa706d0` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xdd0a1a753cdc001231fd3d90507f3e75b5ed5a60` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xe067e0d5246f87d06b6ff27b205c158087525a61` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xe0ec63189873fc301a125cc1d7d4adc498752661` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x00e06e79ce701eea2d66b5a8d8e7af40f71e0a65` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x2ae5e97d0e54222bcb5d84fa74025f8ebbb82e16` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x441f29d66aff1fb52f48279818b689b8e3979847` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x5dffc99f807963954c83cc3dff9de610ad95a63c` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x65244aba8975487cc515cbf5600155c8c8456257` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x6dbe83d760088934c5cf2679c1366f285e68f437` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x7aa1005b47161dbe47a70db2ded957602691d83f` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x8466ccc6d0b2101c187081b7bdcaa885cecf21db` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x8a03aba87cbab6bbdea5273d3b62bc085cb86d78` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0x95ae3f1cd52cc49a12f27c1815ea4e372256ec95` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xa5104cffec743f16103ca55e55a90f71e58da6f8` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xcb39b2e3284012dad232bafff424baa560a9130c` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xcc11defee45d8bd9220a309c5cb39c8bc475198c` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xdc56395d5c06c2d85d12253d31139c1dfaa706d0` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xdd0a1a753cdc001231fd3d90507f3e75b5ed5a60` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xe067e0d5246f87d06b6ff27b205c158087525a61` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |
| unverified unclassified | UnnamedContract<br>`0xe0ec63189873fc301a125cc1d7d4adc498752661` | non_address_book | unknown | unknown | unverified | n/a | `0x43540c648cac5dc392ca627b5987dd93354d8313` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [10102020_Jul_Protocol_SC_Third_Audit_Report.pdf](https://github.com/JulSwap/audits/blob/main/10102020_Jul_Protocol_SC_Third_Audit_Report.pdf) | unknown | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [15052021_JulPad_SecondReview_SC_Audit_Report.pdf](https://github.com/JulSwap/audits/blob/main/15052021_JulPad_SecondReview_SC_Audit_Report.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [17112020_JulLimitOrder_SC_Audit_Report.pdf](https://github.com/JulSwap/audits/blob/main/17112020_JulLimitOrder_SC_Audit_Report.pdf) | unknown | Audit | 2020-11 | stale | Direct | address | no match | 0 | 0 | 0 | 3 | high |
| [25022021 JULSWAP_SC_Audit_Report.pdf](https://github.com/JulSwap/audits/blob/main/25022021%20JULSWAP_SC_Audit_Report.pdf) | unknown | Audit | 2021-02 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20595] 10102020_Jul_Protocol_SC_Third_Audit_Report.pdf — no match: Scope section lists the repository; AS-IS overview details two contracts: UniswapV2Library.sol and JulProtocol.sol. Audit date is October 10, 2020 (third audit).
- [20596] 15052021_JulPad_SecondReview_SC_Audit_Report.pdf — no match: All contracts listed in the Scope section of the report.
- [20597] 17112020_JulLimitOrder_SC_Audit_Report.pdf — no match: Scope explicitly lists three files: BSCswapHandler.sol, LimitOrderCore.sol, LimitOrders.sol. Audit date is the end date of the timeline (17 NOV 2020).
- [20598] 25022021 JULSWAP_SC_Audit_Report.pdf — matched: Scope section lists four Solidity files: BSCswapBEP20.sol, BSCswapFactory.sol, BSCswapPair.sol, BSCswapRouter.sol. Audit date is February 25, 2021 from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 10102020_Jul_Protocol_SC_Third_Audit_Report.pdf | JulProtocol | unmatched — not counted | — | listed in scope and AS-IS overview | no |
| 10102020_Jul_Protocol_SC_Third_Audit_Report.pdf | UniswapV2Library | unmatched — not counted | — | listed in AS-IS overview as part of scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | JulPadCertifiedPresale | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | JulPadTierLock | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | IBSCswapRouter01 | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | JulSwapPairMock | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | JulPadToken | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | IBSCswapPair | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | JulPadCertifiedPresaleTimer | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | JulSwapRouterMock | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | MockJulb | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | MockWbnb | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | BasisPoints | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | JulPadDeployerPresale | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | JulPadDeployerTimer | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | JulPadDeployerToken | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | IBSCswapBEP20 | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | Migrations | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | IBEP20 | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | IBSCswapFactory | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | IWBNB | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | IBSCswapCallee | unmatched — not counted | — | listed in scope | no |
| 17112020_JulLimitOrder_SC_Audit_Report.pdf | BSCswapHandler | unmatched — not counted | — | listed in scope files | no |
| 17112020_JulLimitOrder_SC_Audit_Report.pdf | LimitOrderCore | unmatched — not counted | — | listed in scope files and deployed address | no |
| 17112020_JulLimitOrder_SC_Audit_Report.pdf | LimitOrders | unmatched — not counted | — | listed in scope files and deployed address | no |
| 25022021 JULSWAP_SC_Audit_Report.pdf | BSCswapBEP20 | unmatched — not counted | — | listed in scope | no |
| 25022021 JULSWAP_SC_Audit_Report.pdf | BSCswapFactory | unmatched — not counted | — | listed in scope | no |
| 25022021 JULSWAP_SC_Audit_Report.pdf | BSCswapPair | unmatched — not counted | — | listed in scope | no |
| 25022021 JULSWAP_SC_Audit_Report.pdf | BSCswapRouter | own contract | BSCswapRouter (selected) `0xbd67d157502a23309db761c41965600c2ec788b2` — deployed 2020-09-25 12:07:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x16a7b34353de766ae3e1a8ad0d6a415b4da8a864` | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 113 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 28 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: unique_name=1

Zero-match audit list:

- [20595] 10102020_Jul_Protocol_SC_Third_Audit_Report.pdf
- [20596] 15052021_JulPad_SecondReview_SC_Audit_Report.pdf
- [20597] 17112020_JulLimitOrder_SC_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
