# Agentic Audit Brief: Brotocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 4 audit(s)
- Eligible audit results: 14 (4 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Brotocol (`brotocol`)
- Website: [https://brotocol.xyz/](https://brotocol.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ailayer, arbitrum, avalanche, base, bsc, ethereum, linea, merlin, mode, sepolia
- Contract surface: 145 unique implementations (260 raw deployments)
- Coverage basis: 2/81 confirmed own live verified implementations (2.5%); conservative 2.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $707,392.17
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Brotocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 86 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, linea, merlin, mode, sepolia. Structural roles: 38 unclassified, 32 supporting, 16 core. 13 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 86
- Structural roles: unclassified (38), supporting (32), core (16)
- Contract kinds: contract (86)
- Detected standards: ownable (24), erc165 (23), erc20 (21), accesscontrol (18), pausable (18), erc1967proxy (4), erc20permit (1)
- Frameworks: openzeppelin (40), openzeppelin-upgradeable (5)
- Upgradeable-pattern rows: 13

## Fork Analysis

0 of 59 contracts are derived from known codebases. 59 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2260fac5e5542a773aa44fbcfedf7c193bc2c599`, chain 1)
- UnnamedContract (`0x514910771af9ca656af840dff83e8264ecf986ca`, chain 1)
- UnnamedContract (`0x6982508145454ce325ddbe47a25d4ec3d2311933`, chain 1)
- UnnamedContract (`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`, chain 1)
- UnnamedContract (`0xd31a59c85ae9d8edefec411d448f90841571b89c`, chain 1)
- UnnamedContract (`0xdac17f958d2ee523a2206206994597c13d831ec7`, chain 1)
- UnnamedContract (`0xe0f63a424a4439cbe457d80e4f4b51ad25b2c56c`, chain 1)
- UnnamedContract (`0x2170ed0880ac9a755fd29b2688956bd959f933f8`, chain 56)
- UnnamedContract (`0x25d887ce7a35172c62febfd67a1856f20faebb00`, chain 56)
- UnnamedContract (`0x88af5f4bdd601c1bd3674bf1ad2cc282a720d66c`, chain 43114)
- UnnamedContract (`0xd96f5d515a679d4a5343eed73d26535a3326a060`, chain 43114)
- BEP20Token (`0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c`, chain 56)
- BEP20USDT (`0x55d398326f99059ff775485246999027b3197955`, chain 56)
- BridgeEndpoint (`0xa18d9690d03dfbb18ea85588ec5fd2a914b2aac9`, chain 34443)
- BridgeEndpointWithSwap (`0xb1c34a9f630edb880f289683cfac2f923b31c94d`, chain 1)
- BridgeEndpointWithSwap (`0x5298718429046b1d38106864bbfdc9326c840092`, chain 56)
- BridgeEndpointWithSwap (`0x18c05ec3799eb15fe49a141ce844e55514438fa7`, chain 8453)
- BridgeEndpointWithSwap (`0x7a5912c6a188d7217db285c890be61d8503a5baf`, chain 42161)
- BridgeEndpointWithSwap (`0x0f38ed043a1a2ec79b15d7f4fb8d25036680ce03`, chain 59144)
- BridgeToken (`0x31761a152f1e96f966c041291644129144233b0b`, chain 1)
- BridgeToken (`0x80074f342764027f5c4e2f7cd7d0ded611dfb7cd`, chain 1)
- BridgeToken (`0xa831a4e181f25d3b35949e582ff27cc44e703f37`, chain 1)
- BridgeToken (`0x0f38ed043a1a2ec79b15d7f4fb8d25036680ce03`, chain 56)
- BridgeToken (`0x18c05ec3799eb15fe49a141ce844e55514438fa7`, chain 56)
- BridgeToken (`0x2e512ba02454fc48269a9589512239d64602cbc8`, chain 56)
- BridgeToken (`0x7a087e75807f2e5143c161a817e64df6dc5eafe0`, chain 8453)
- BridgeToken (`0x70727228db8c7491bf0ad42c180dbf8d95b257e2`, chain 34443)
- BridgeToken (`0x7a087e75807f2e5143c161a817e64df6dc5eafe0`, chain 34443)
- BridgeToken (`0xd0d1b59ca62ce194e882455fd36632d6277b192a`, chain 34443)
- BridgeToken (`0xdfd0660032c2d0d38a9092a43d1669d6568caf71`, chain 34443)
- BridgeToken (`0x7a087e75807f2e5143c161a817e64df6dc5eafe0`, chain 42161)
- BridgeToken (`0xa831a4e181f25d3b35949e582ff27cc44e703f37`, chain 42161)
- BridgeToken (`0xdfd0660032c2d0d38a9092a43d1669d6568caf71`, chain 42161)
- BridgeToken (`0x152b9d0fdc40c096757f570a51e494bd4b943e50`, chain 43114)
- BridgeToken (`0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab`, chain 43114)
- BridgeToken (`0x7a087e75807f2e5143c161a817e64df6dc5eafe0`, chain 59144)
- BridgeToken (`0xdfd0660032c2d0d38a9092a43d1669d6568caf71`, chain 59144)
- ClonableBeaconProxy (`0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f`, chain 42161)
- ClonableBeaconProxy (`0xf97f4df75117a78c1a5a0dbb814af92458539fb4`, chain 42161)
- ERC20BridgeToken (`0x5e0e90e268bc247cc850c789a0db0d5c7621fb59`, chain 43114)
- FiatTokenProxy (`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`, chain 8453)
- FiatTokenProxy (`0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf`, chain 8453)
- FiatTokenProxy (`0xaf88d065e77c8cc2239327c5edb3a432268e5831`, chain 42161)
- FiatTokenProxy (`0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e`, chain 43114)
- MigrateToken (`0x4306374f07382b36aae832a50831c8c5b26cd41e`, chain 1)
- MultisigWallet (`0x65dfacfd08afdd1cc02caf3de411661603394090`, chain 1)
- MultisigWallet (`0x4306374f07382b36aae832a50831c8c5b26cd41e`, chain 56)
- MultisigWallet (`0xf162b6467eaf066a513a4b9235009d60c1facf44`, chain 8453)
- MultisigWallet (`0xf162b6467eaf066a513a4b9235009d60c1facf44`, chain 34443)
- MultisigWallet (`0xf162b6467eaf066a513a4b9235009d60c1facf44`, chain 42161)
- MultisigWallet (`0x62f7d5f4adf9521cfc609ba452839dcb4e81e79c`, chain 43114)
- MultisigWallet (`0x3280a4031d7990d1905d7823e7725cb9ad649f37`, chain 59144)
- PepeToken (`0x25d887ce7a35172c62febfd67a1856f20faebb00`, chain 42161)
- TBTC (`0x18084fba666a33d37592fa2633fd49a74dd93a88`, chain 1)
- TeamToken (`0x9bf543d8460583ff8a669aae01d9cdbee4defe3c`, chain 56)
- Token (`0x795d2710e383f33fbebe980a155b29757b6703f3`, chain 56)
- TransparentUpgradeableProxy (`0x82af49447d8a07e3bd95bd0d56f35241523fbab1`, chain 42161)
- WAVAX (`0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7`, chain 43114)
- WETH9 (`0x4200000000000000000000000000000000000006`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 86; live-surface rows included: 86 (82 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 92/185 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/81 (2.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 92 own, 16 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 37 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 92 of 145 unique; 53 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/97
- Verified + Unaudited implementations: 95
- Verified by bytecode match: 0
- Unverified implementations: 48
- Unique implementations: 145
- Raw deployments: 260
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 6 aging, 5 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CoinFabrik | Tier 2 | 2 | 2.1% | 2025-05 |
| Defence (Thesis) | Tier 2 | 1 | 1.0% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BridgeEndpoint | operational_periphery | project_anchor | own_supporting | 0 | mode | unit-231237 | `0xa18d9690d03dfbb18ea85588ec5fd2a914b2aac9` | ✅ Audited |
| BridgeRegistry | unknown | project_anchor | own_supporting | 0 | mode | unit-231236 | `0x88af5f4bdd601c1bd3674bf1ad2cc282a720d66c` | ✅ Audited |

### ⚠️ Verified + Unaudited (95)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| aeWETH | token | project_anchor | own_supporting | 1 | arbitrum | unit-231301 | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | ⚠️ Unaudited |
| BatchTokenSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb15ee59c4e76450c3c2d3c3f0fa64cd76691fa37` | ⚠️ Unaudited |
| BEP20LINK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd` | ⚠️ Unaudited |
| BEP20Token | token | project_anchor | own_supporting | 0 | bsc | unit-231271 | `0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c` | ⚠️ Unaudited |
| BEP20Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9e7cea3dedca5984780bafc599bd69add087d56` | ⚠️ Unaudited |
| BEP20USDT | token | project_anchor | own_supporting | 0 | bsc | unit-231269 | `0x55d398326f99059ff775485246999027b3197955` | ⚠️ Unaudited |
| BridgeConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x7062db5dcaecdb355878a0bab00a6941345d8711`; bsc `0x7062db5dcaecdb355878a0bab00a6941345d8711`; base `0xf99f62475f50be59393dbdc148e6627e4e88fc24`; mode `0xf99f62475f50be59393dbdc148e6627e4e88fc24`; arbitrum `0xf99f62475f50be59393dbdc148e6627e4e88fc24`; linea `0xf99f62475f50be59393dbdc148e6627e4e88fc24` | ⚠️ Unaudited |
| BridgeConfig | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-231170 | `0x79d1c91053baceced5c796ab8a765e4d5ab38e8a` | ⚠️ Unaudited |
| BridgeEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 18 deployments: ethereum `0x1c5ac43f0b30462c5ddeb1a2152e639bbdfe38ea`; ethereum `0x4a5ccdd40c8131075dae863d725f2a9f9907340a`; ethereum `0x84254da34abe4678017a5bf78506b48490ce4547`; ethereum `0x9883fac487d917e47ed11ae3f2c31507ae1ca925`; bsc `0x13b72a19e221275d3d18ed4d9235f8f859626673`; bsc `0x2aed35a18bc02472519ca6f25b70a8e9fe938430`; bsc `0xa18d9690d03dfbb18ea85588ec5fd2a914b2aac9`; bsc `0xb17192c2ccf721830defb489b255365d3bb369e7`; bsc `0xd851f60b1b487059528a7bbbe444865b79e98661`; bsc `0xf4a6170e827ba17be9a3423b8662cc82eb273730`; base `0x79d1c91053baceced5c796ab8a765e4d5ab38e8a`; base `0xf6af0a12c7983a297d8477f7f3ae38d58ad6b600`; mode `0x79d1c91053baceced5c796ab8a765e4d5ab38e8a`; arbitrum `0x79d1c91053baceced5c796ab8a765e4d5ab38e8a`; arbitrum `0xc13a12e657e0e7c6dad9dd26b86a927b05edcacb`; linea `0x790cd0a2b4d04693e39f71e35fc65a3a3d19edef`; linea `0x79d1c91053baceced5c796ab8a765e4d5ab38e8a`; linea `0xf6af0a12c7983a297d8477f7f3ae38d58ad6b600` | ⚠️ Unaudited |
| BridgeEndpointWithSwap | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-231135 | `0x1a86ff397b58db43ab019d336931e6a71cc56ce5` | ⚠️ Unaudited |
| BridgeEndpointWithSwap | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-231192 | `0xb1c34a9f630edb880f289683cfac2f923b31c94d` | ⚠️ Unaudited |
| BridgeEndpointWithSwap | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-231268 | `0x5298718429046b1d38106864bbfdc9326c840092` | ⚠️ Unaudited |
| BridgeEndpointWithSwap | operational_periphery | project_anchor | own_supporting | 0 | base | unit-231289 | `0x18c05ec3799eb15fe49a141ce844e55514438fa7` | ⚠️ Unaudited |
| BridgeEndpointWithSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 37 deployments: ethereum `0x2df927f8b46d74142fa3ddbd0626c1dcc93d4ee4`; ethereum `0xb304ecdec8b1b7b6d65a7a0e031fff05b559e638`; ethereum `0xb89873b32b6c4a8eedfb76f12078e1d732ae3f78`; ethereum `0xde8d0c9e5a2995017932efde640b3238423dd35b`; ethereum `0xe79097127b837ef3c90302496c42d105aaf9ef2c`; ethereum `0xf28f38176def1aee144a7120659c09d214885028`; bsc `0x2543df081184b45127a7391a37c8b80a5dea89d6`; bsc `0x3a75063d01c5098f8a44e3ff939d4e493ca399a7`; bsc `0x46b20f3106b8bffb9bf63633a854a7a96dfc6379`; bsc `0x4a1a7048f54d4913156ca79c329a8ecd2b6a5f7f`; bsc `0x82d25bd400631de5daf832c1e9cca547ec4b2aab`; bsc `0x99b0341830356d13053a4c14ede8fa83ac34a2c3`; bsc `0xb75231778c0e7c132a1eb0bc1d91134817316a15`; bsc `0xc355e278bf9631173501393dbcdcd5356d3a1334`; base `0x10eeccc43172458f0ff9cc3e9730ab256faee32e`; base `0x144b4256ac30c9b65666336c278d2bc3fb432318`; base `0x916e5dfdf66fdd9df738c63159d5f01268ed21cb`; base `0xa6420eba9b8c514a5793429ba2873274a63531bb`; base `0xd15b997505739c02564de7f0e010b42b2f81520d`; base `0xd8994073ba5f6615ab3ea9e8ae1948047bbef1ad`; base `0xe80e0c533d41343b0038a3ea74102b4b9ff13e7e`; arbitrum `0x0d3c781313b1d4abbb45459621f0168826a6cf07`; arbitrum `0x31761a152f1e96f966c041291644129144233b0b`; arbitrum `0x4306374f07382b36aae832a50831c8c5b26cd41e`; arbitrum `0x4a5ccdd40c8131075dae863d725f2a9f9907340a`; arbitrum `0x73f0f50815ca4698d8e722cf1d054d223a217138`; arbitrum `0x916e5dfdf66fdd9df738c63159d5f01268ed21cb`; arbitrum `0x9df50cafde832eda2857903265905627ac5a8522`; arbitrum `0xa18d9690d03dfbb18ea85588ec5fd2a914b2aac9`; arbitrum `0xce83dd21264323c1d7d246f347db84a8180970cb`; linea `0x10eeccc43172458f0ff9cc3e9730ab256faee32e`; linea `0x144b4256ac30c9b65666336c278d2bc3fb432318`; linea `0x4869f4ec844cd3383f8261affcf29b23182f480c`; linea `0x87e352eb7dad17640f7fe93c3aab8d1c3ae78fe5`; linea `0xa5171f62747dcd8ecb141874e6ba7828576f1c9e`; linea `0xd491f20b3d443dbaa61536662af22421b97bcac9`; linea `0xf4a6170e827ba17be9a3423b8662cc82eb273730` | ⚠️ Unaudited |
| BridgeEndpointWithSwap | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-231247 | `0x7a5912c6a188d7217db285c890be61d8503a5baf` | ⚠️ Unaudited |
| BridgeEndpointWithSwap | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-231278 | `0x0f38ed043a1a2ec79b15d7f4fb8d25036680ce03` | ⚠️ Unaudited |
| BridgeRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231130 | `0x13b72a19e221275d3d18ed4d9235f8f859626673` | ⚠️ Unaudited |
| BridgeRegistry | unknown | project_anchor | own_supporting | 0 | bsc | unit-231277 | `0xffda60ed91039dd4de20492934bc163e0f61e7f5` | ⚠️ Unaudited |
| BridgeRegistry | unknown | project_anchor | own_supporting | 0 | base | unit-231293 | `0x88af5f4bdd601c1bd3674bf1ad2cc282a720d66c` | ⚠️ Unaudited |
| BridgeRegistry | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231248 | `0x88af5f4bdd601c1bd3674bf1ad2cc282a720d66c` | ⚠️ Unaudited |
| BridgeRegistry | unknown | project_anchor | own_supporting | 0 | linea | unit-231283 | `0x88af5f4bdd601c1bd3674bf1ad2cc282a720d66c` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231142 | `0x2aed35a18bc02472519ca6f25b70a8e9fe938430` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-231146 | `0x31761a152f1e96f966c041291644129144233b0b` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231153 | `0x51cda809dc64a060f35f6c96ef6927cabc992d94` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231167 | `0x73f0f50815ca4698d8e722cf1d054d223a217138` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231174 | `0x7d4de6105595a5fcac3fbeaed5639624abdd1d9d` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-231175 | `0x80074f342764027f5c4e2f7cd7d0ded611dfb7cd` | ⚠️ Unaudited |
| BridgeToken | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-231187 | `0xa5171f62747dcd8ecb141874e6ba7828576f1c9e` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-231189 | `0xa831a4e181f25d3b35949e582ff27cc44e703f37` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-231261 | `0x0f38ed043a1a2ec79b15d7f4fb8d25036680ce03` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-231262 | `0x18c05ec3799eb15fe49a141ce844e55514438fa7` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-231265 | `0x2e512ba02454fc48269a9589512239d64602cbc8` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-231266 | `0x305a85e892e89fa0a2bcd92337682d55559a6ee9` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-231270 | `0x5879cdd0a4880d5dc37c5aa8ee0d1f319711b231` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-231273 | `0x916a82e34430804d9b65e0b5ae7d07ae7439c81d` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-231276 | `0xdfd0660032c2d0d38a9092a43d1669d6568caf71` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | base | unit-231291 | `0x70727228db8c7491bf0ad42c180dbf8d95b257e2` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | base | unit-231292 | `0x7a087e75807f2e5143c161a817e64df6dc5eafe0` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | base | unit-231294 | `0x9e801cb9ce84a84a563e5a74cc2f3ad55f914072` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | base | unit-231295 | `0xa831a4e181f25d3b35949e582ff27cc44e703f37` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | base | unit-231296 | `0xcd5ed0b0b1e107d331833715932b4a596bfba378` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | base | unit-231297 | `0xdfd0660032c2d0d38a9092a43d1669d6568caf71` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | mode | unit-231233 | `0x0d3c781313b1d4abbb45459621f0168826a6cf07` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | mode | unit-231234 | `0x70727228db8c7491bf0ad42c180dbf8d95b257e2` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | mode | unit-231235 | `0x7a087e75807f2e5143c161a817e64df6dc5eafe0` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | mode | unit-231238 | `0xa831a4e181f25d3b35949e582ff27cc44e703f37` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | mode | unit-231239 | `0xcd5ed0b0b1e107d331833715932b4a596bfba378` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | mode | unit-231240 | `0xd0d1b59ca62ce194e882455fd36632d6277b192a` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | mode | unit-231241 | `0xd15b997505739c02564de7f0e010b42b2f81520d` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | mode | unit-231242 | `0xdfd0660032c2d0d38a9092a43d1669d6568caf71` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231245 | `0x70727228db8c7491bf0ad42c180dbf8d95b257e2` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-231246 | `0x7a087e75807f2e5143c161a817e64df6dc5eafe0` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-231249 | `0xa831a4e181f25d3b35949e582ff27cc44e703f37` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231250 | `0xab01bbc2ee103d227f2eee50b230506508b560c5` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231251 | `0xcd5ed0b0b1e107d331833715932b4a596bfba378` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-231252 | `0xdfd0660032c2d0d38a9092a43d1669d6568caf71` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-231254 | `0x152b9d0fdc40c096757f570a51e494bd4b943e50` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 24 deployments: bsc `0x858d1dbd14a023a905535823a77925082507d38b`; bsc `0xcd5ed0b0b1e107d331833715932b4a596bfba378`; base `0xc13a12e657e0e7c6dad9dd26b86a927b05edcacb`; base `0xce83dd21264323c1d7d246f347db84a8180970cb`; base `0xe67640abd424d9456ef8a4160d5753fe5833291d`; arbitrum `0x7baa28de9cdb527f963b61f996b81f3cc9d07113`; arbitrum `0xe67d6da03f8ca816805d0b0c3d235e7fd4351bb0`; avalanche `0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98`; avalanche `0x37b608519f91f70f2eeb0e5ed9af4061722e4f76`; avalanche `0x3bd2b1c7ed8d396dbb98ded3aebb41350a5b2339`; avalanche `0x50b7545627a5162f82a992c33b87adc75187b218`; avalanche `0x5947bb275c521040051d82396192181b413227a3`; avalanche `0x596fa47043f99a4e0f122243b841e55375cde0d2`; avalanche `0x63a72806098bd3d9520cc43356dd78afe5d386d9`; avalanche `0x88128fd4b259552a9a1d457f435a6527aab72d42`; avalanche `0x8a0cac13c7da965a312f08ea4229c37869e85cb9`; avalanche `0x8ebaf22b6f053dffeaf46f4dd9efa95d89ba8580`; avalanche `0x98443b96ea4b0858fdf3219cd13e98c7a4690588`; avalanche `0x9eaac1b23d935365bd7b542fe22ceee2922f52dc`; avalanche `0xbec243c995409e6520d7c41e404da5deba4b209b`; avalanche `0xc3048e19e76cb9a3aa9d77d8c03c29fc906e2437`; avalanche `0xc7198437980c041c805a1edcba50c1ce5db95118`; avalanche `0xd501281565bf7789224523144fe5d98e8b28f267`; avalanche `0xd586e7f844cea2f87f50152665bcbc2c279d8d70` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-231255 | `0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | linea | unit-231279 | `0x24a44c95452df9fec1876f7b907e2dd2adaa29a7` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | linea | unit-231281 | `0x70727228db8c7491bf0ad42c180dbf8d95b257e2` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-231282 | `0x7a087e75807f2e5143c161a817e64df6dc5eafe0` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | linea | unit-231284 | `0x9e801cb9ce84a84a563e5a74cc2f3ad55f914072` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | linea | unit-231285 | `0xa831a4e181f25d3b35949e582ff27cc44e703f37` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | linea | unit-231286 | `0xcd5ed0b0b1e107d331833715932b4a596bfba378` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | linea | unit-231287 | `0xce83dd21264323c1d7d246f347db84a8180970cb` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-231288 | `0xdfd0660032c2d0d38a9092a43d1669d6568caf71` | ⚠️ Unaudited |
| ERC20BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-231256 | `0x5e0e90e268bc247cc850c789a0db0d5c7621fb59` | ⚠️ Unaudited |
| FiatTokenV2_1 | token | project_anchor | own_supporting | 1 | base | unit-231304 | `0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3fa3d254bf6af295b5b22cc6730b04144314890` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | base | unit-231303 | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | arbitrum | unit-231300 | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | avalanche | unit-231302 | `0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x2230393edad0299b7e7b59f20aa856cd1bed52e1`; avalanche `0xb7887fed5e2f9dc1a66fbb65f76ba3731d82341a` | ⚠️ Unaudited |
| MigrateToken | token | project_anchor | own_supporting | 0 | ethereum | unit-231150 | `0x4306374f07382b36aae832a50831c8c5b26cd41e` | ⚠️ Unaudited |
| MigrateToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-231275 | `0xd15b997505739c02564de7f0e010b42b2f81520d` | ⚠️ Unaudited |
| MigrateTokenBOBFusionS1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231188 | `0xa6420eba9b8c514a5793429ba2873274a63531bb` | ⚠️ Unaudited |
| MultisigWallet | governance | project_anchor | own_supporting | 0 | ethereum | unit-231161 | `0x65dfacfd08afdd1cc02caf3de411661603394090` | ⚠️ Unaudited |
| MultisigWallet | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-231222 | `0xffda60ed91039dd4de20492934bc163e0f61e7f5` | ⚠️ Unaudited |
| MultisigWallet | governance | project_anchor | own_supporting | 0 | bsc | unit-231267 | `0x4306374f07382b36aae832a50831c8c5b26cd41e` | ⚠️ Unaudited |
| MultisigWallet | governance | project_anchor | own_supporting | 0 | base | unit-231298 | `0xf162b6467eaf066a513a4b9235009d60c1facf44` | ⚠️ Unaudited |
| MultisigWallet | governance | project_anchor | own_supporting | 0 | mode | unit-231243 | `0xf162b6467eaf066a513a4b9235009d60c1facf44` | ⚠️ Unaudited |
| MultisigWallet | governance | project_anchor | own_supporting | 0 | arbitrum | unit-231253 | `0xf162b6467eaf066a513a4b9235009d60c1facf44` | ⚠️ Unaudited |
| MultisigWallet | governance | project_anchor | own_supporting | 0 | avalanche | unit-231257 | `0x62f7d5f4adf9521cfc609ba452839dcb4e81e79c` | ⚠️ Unaudited |
| MultisigWallet | governance | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 23 deployments: bsc `0x79d1c91053baceced5c796ab8a765e4d5ab38e8a`; mode `0x4869f4ec844cd3383f8261affcf29b23182f480c`; mode `0x658064f0d8650f3b95c0a723e7f600042032960e`; mode `0x65dfacfd08afdd1cc02caf3de411661603394090`; mode `0x916e5dfdf66fdd9df738c63159d5f01268ed21cb`; mode `0x9883fac487d917e47ed11ae3f2c31507ae1ca925`; mode `0xa6420eba9b8c514a5793429ba2873274a63531bb`; mode `0xd491f20b3d443dbaa61536662af22421b97bcac9`; mode `0xedd6a24ead1d1e5c33851dbf72a42482e01e3abb`; mode `0xeebb834b73e934c63a3917cd872396a7c36c9051`; mode `0xf5866c90cd07b565df3ec89cec4c6a6078f05c3a`; arbitrum `0x46b20f3106b8bffb9bf63633a854a7a96dfc6379`; arbitrum `0xe9915e964d7dd7f374e4789310d05a829cfe7423`; linea `0x1a86ff397b58db43ab019d336931e6a71cc56ce5`; linea `0x2aed35a18bc02472519ca6f25b70a8e9fe938430`; linea `0x305a85e892e89fa0a2bcd92337682d55559a6ee9`; linea `0x46b20f3106b8bffb9bf63633a854a7a96dfc6379`; linea `0x7a5912c6a188d7217db285c890be61d8503a5baf`; linea `0x7d4de6105595a5fcac3fbeaed5639624abdd1d9d`; linea `0x80a33f79e8acd5793303ad87f465f4c54d19b69f`; linea `0xec72d43eea62f63e097751bfe9866650689ffcbc`; linea `0xf162b6467eaf066a513a4b9235009d60c1facf44`; linea `0xfc57d34855c9944bdbcc0cb3a18b6c7d345dec8c` | ⚠️ Unaudited |
| MultisigWallet | governance | project_anchor | own_supporting | 0 | linea | unit-231280 | `0x3280a4031d7990d1905d7823e7725cb9ad649f37` | ⚠️ Unaudited |
| PepeToken | token | project_anchor | own_supporting | 0 | arbitrum | unit-231244 | `0x25d887ce7a35172c62febfd67a1856f20faebb00` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 2 | arbitrum | unit-231299 (2 proxies) | 2 deployments: arbitrum `0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f`; arbitrum `0xf97f4df75117a78c1a5a0dbb814af92458539fb4` | ⚠️ Unaudited |
| TBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231132 | `0x18084fba666a33d37592fa2633fd49a74dd93a88` | ⚠️ Unaudited |
| TeamToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x55acc837f25c955609433ea905b89e8b1974940d` | ⚠️ Unaudited |
| TeamToken | token | project_anchor | own_supporting | 0 | bsc | unit-231274 | `0x9bf543d8460583ff8a669aae01d9cdbee4defe3c` | ⚠️ Unaudited |
| TimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0x858d1dbd14a023a905535823a77925082507d38b`; bsc `0x7a087e75807f2e5143c161a817e64df6dc5eafe0`; base `0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3`; mode `0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3`; arbitrum `0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3`; linea `0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 0 | bsc | unit-231272 | `0x795d2710e383f33fbebe980a155b29757b6703f3` | ⚠️ Unaudited |
| WAVAX | unknown | project_anchor | own_supporting | 0 | avalanche | unit-231259 | `0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | base | unit-231290 | `0x4200000000000000000000000000000000000006` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (48)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231137 | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-231139 | `0x25d887ce7a35172c62febfd67a1856f20faebb00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231152 | `0x514910771af9ca656af840dff83e8264ecf986ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231162 | `0x6982508145454ce325ddbe47a25d4ec3d2311933` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231198 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-231200 | `0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231205 | `0xd31a59c85ae9d8edefec411d448f90841571b89c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231208 | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231210 | `0xe0f63a424a4439cbe457d80e4f4b51ad25b2c56c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-231263 | `0x2170ed0880ac9a755fd29b2688956bd959f933f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-231264 | `0x25d887ce7a35172c62febfd67a1856f20faebb00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | merlin | n/a | 6 deployments: merlin `0x7a087e75807f2e5143c161a817e64df6dc5eafe0`; merlin `0x858d1dbd14a023a905535823a77925082507d38b`; merlin `0x88af5f4bdd601c1bd3674bf1ad2cc282a720d66c`; merlin `0xa831a4e181f25d3b35949e582ff27cc44e703f37`; merlin `0xc13a12e657e0e7c6dad9dd26b86a927b05edcacb`; merlin `0xf162b6467eaf066a513a4b9235009d60c1facf44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa5171f62747dcd8ecb141874e6ba7828576f1c9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x02111cf82133e29106767dc53ded318281dc84f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x03c69ee62c86c220b5ff71f8212c45a20ca61154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x108d36c7f09761cd77c7879710054a85e493835c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x19e64ad8aab0b156b5aeaf24e28f6183c2d82c2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x5210643e105a80322bbce824b97a3c0b3a9d88f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x57b9b488a02bac0f9195ffee164629b01d03fe4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x715f26cd7a009f3116c93e48dfbedd1de55bf829` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x950cfbc37ce718730bae088031d6699f1aa2c1dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xa1c1f6d111339e26c9fe61256c4751f539b40bd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xe1a512f9d89fddcd2105df4db32ede4bc2ade33b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf4a6170e827ba17be9a3423b8662cc82eb273730` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1fe74ca6c66a33b8b619d799af110741fb6d20e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d3f8fe9cce16e1c2743d5ace99f027df866c6bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4c90c8a368f7d1f4a57906139bac23c72f38f4cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x79d1c91053baceced5c796ab8a765e4d5ab38e8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f2239511051b875ccf84dab02d5a307adcd51c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-231258 | `0x88af5f4bdd601c1bd3674bf1ad2cc282a720d66c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5dc6671e7cdaaa2386536295bf63a221b67311a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-231260 | `0xd96f5d515a679d4a5343eed73d26535a3326a060` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe67640abd424d9456ef8a4160d5753fe5833291d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xecc6ad0608e1e3fc6b314df221cf10ea07ae08d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf162b6467eaf066a513a4b9235009d60c1facf44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf99f62475f50be59393dbdc148e6627e4e88fc24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdd7124a07ddd615cdc6ec10a04a9e83f9b9769bf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231223 | `0x02111cf82133e29106767dc53ded318281dc84f3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231224 | `0x03c69ee62c86c220b5ff71f8212c45a20ca61154` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231225 | `0x108d36c7f09761cd77c7879710054a85e493835c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231226 | `0x19e64ad8aab0b156b5aeaf24e28f6183c2d82c2f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231227 | `0x5210643e105a80322bbce824b97a3c0b3a9d88f3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231228 | `0x57b9b488a02bac0f9195ffee164629b01d03fe4c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231229 | `0x715f26cd7a009f3116c93e48dfbedd1de55bf829` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231230 | `0x950cfbc37ce718730bae088031d6699f1aa2c1dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231231 | `0xa1c1f6d111339e26c9fe61256c4751f539b40bd6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231232 | `0xe1a512f9d89fddcd2105df4db32ede4bc2ade33b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ALEX_Audit_bridge_coinfabrik_202212.pdf](https://cdn.xlink.network/pdf/ALEX_Audit_bridge_coinfabrik_202212.pdf) | CoinFabrik | Audit | 2022-12 | stale | Direct | n/a | matched | 1 | 0 | 0 | 2 | n/a |
| [ALEX_Audit_Bridge_2023-04.pdf](https://cdn.xlink.network/pdf/ALEX_Audit_Bridge_2023-04.pdf) | CoinFabrik | Audit | 2023-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 6 | n/a |
| [ALEX_Audit_202310_Bitcoin_Oracle_and_Bridge.pdf](https://cdn.xlink.network/pdf/ALEX_Audit_202310_Bitcoin_Oracle_and_Bridge.pdf) | CoinFabrik | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [XLink_Bridge_Endpoint_Audit_2024-06.pdf](https://cdn.xlink.network/pdf/XLink_Bridge_Endpoint_Audit_2024-06.pdf) | CoinFabrik | Audit | 2024-06 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 1 | high |
| [XLink_MultisigWallet_BridgeToken_2024-06.pdf](https://cdn.xlink.network/pdf/XLink_MultisigWallet_BridgeToken_2024-06.pdf) | CoinFabrik | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [XLINK_Staking_Audit_2024_11_final.pdf](https://cdn.xlink.network/pdf/XLINK_Staking_Audit_2024_11_final.pdf) | CoinFabrik | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [XLINK_Peg-out_Endpoints_Audit 11-2024.pdf](https://cdn.xlink.network/pdf/XLINK_Peg-out_Endpoints_Audit%2011-2024.pdf) | CoinFabrik | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [XLINK_Peg-in_Endpoints_Audit_11-2024.pdf](https://cdn.xlink.network/pdf/XLINK_Peg-in_Endpoints_Audit_11-2024.pdf) | CoinFabrik | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [XLink_Endpoits_Update_Audit_2025-03.pdf](https://cdn.brotocol.xyz/pdf/XLink_Endpoits_Update_Audit_2025-03.pdf) | CoinFabrik | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [XLink_EVM_Endpoint_Audit_2025-04.pdf](https://cdn.brotocol.xyz/pdf/XLink_EVM_Endpoint_Audit_2025-04.pdf) | CoinFabrik | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [XLINK_Solana_Endpoint_Audit_2025-05.pdf](https://cdn.brotocol.xyz/pdf/XLINK_Solana_Endpoint_Audit_2025-05.pdf) | CoinFabrik | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [250825_Defense_by_Thesis_Brotocol_BridgeEndPoint_Smart_Contract.pdf](https://cdn.brotocol.xyz/pdf/250825_Defense_by_Thesis_Brotocol_BridgeEndPoint_Smart_Contract.pdf) | Defence (Thesis) | Audit | 2025-08 | fresh | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [www.coinfabrik.com](https://www.coinfabrik.com/) | CoinFabrik | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [thesis.co/defense](https://thesis.co/defense) | Defence | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11552] ALEX_Audit_bridge_coinfabrik_202212.pdf — matched: No reason recorded
- [11553] ALEX_Audit_Bridge_2023-04.pdf — matched: No reason recorded
- [11554] ALEX_Audit_202310_Bitcoin_Oracle_and_Bridge.pdf — no match: Four contracts explicitly listed in scope section. Audit date from changelog: initial report 2023-10-30.
- [11555] XLink_Bridge_Endpoint_Audit_2024-06.pdf — matched: Three contracts in scope: BridgeEndpoint, BridgeEndpointWithAxelar, BridgeRegistry. Audit date from changelog final report date.
- [11556] XLink_MultisigWallet_BridgeToken_2024-06.pdf — no match: Two contracts in scope: MultisigWallet and BridgeToken. Audit date inferred from 'June2024' in title and changelog date 2024-06-10.
- [11557] XLINK_Staking_Audit_2024_11_final.pdf — no match: Two contracts in scope: xlink-staking and liabtc-mint-endpoint. Audit date is the latest changelog entry (2024-11-26).
- [11558] XLINK_Peg-out_Endpoints_Audit 11-2024.pdf — no match: Extracted 5 contract names from the scope section. Audit date from changelog final report date.
- [11559] XLINK_Peg-in_Endpoints_Audit_11-2024.pdf — no match: Three contracts in scope from the repository. Audit date from changelog final report date.
- [11560] XLink_Endpoits_Update_Audit_2025-03.pdf — no match: Extracted 3 main scope contracts and 4 additional contracts referenced in findings. Audit date taken from final report date in changelog.
- [11561] XLink_EVM_Endpoint_Audit_2025-04.pdf — no match: Two contracts in scope: BridgeEndpointWithSwap and SwapExecutor. Audit date from changelog: final report date 2025-04-16.
- [11562] XLINK_Solana_Endpoint_Audit_2025-05.pdf — no match: Two Solana programs (bridge-registry and bridge-endpoint) are in scope. Audit date is the reaudit date (2025-05-27) from the changelog.
- [11563] 250825_Defense_by_Thesis_Brotocol_BridgeEndPoint_Smart_Contract.pdf — matched: No reason recorded
- [11564] www.coinfabrik.com — no match: The provided text is a company website homepage, not an audit report. No contracts or audit date are present.
- [11565] thesis.co/defense — no match: The provided text is a marketing page for an auditing firm, not an actual audit report. No contracts, files, or audit date are mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ALEX_Audit_bridge_coinfabrik_202212.pdf | BridgeEndpoint.sol | own contract | BridgeEndpoint (selected) `0xa18d9690d03dfbb18ea85588ec5fd2a914b2aac9` — deployed 2024-10-29 06:03:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ALEX_Audit_bridge_coinfabrik_202212.pdf | ERC20Fixed.sol | unmatched — not counted | — | — | no |
| ALEX_Audit_bridge_coinfabrik_202212.pdf | bridge-endpoint.clar | unmatched — not counted | — | — | no |
| ALEX_Audit_Bridge_2023-04.pdf | Allowlistable | unmatched — not counted | — | — | no |
| ALEX_Audit_Bridge_2023-04.pdf | BridgeEndpoint | own contract | BridgeEndpoint (selected) `0xa18d9690d03dfbb18ea85588ec5fd2a914b2aac9` — deployed 2024-10-29 06:03:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ALEX_Audit_Bridge_2023-04.pdf | ERC20Fixed | unmatched — not counted | — | — | no |
| ALEX_Audit_Bridge_2023-04.pdf | Errors | unmatched — not counted | — | — | no |
| ALEX_Audit_Bridge_2023-04.pdf | FixedPoint | unmatched — not counted | — | — | no |
| ALEX_Audit_Bridge_2023-04.pdf | LogExpMath | unmatched — not counted | — | — | no |
| ALEX_Audit_Bridge_2023-04.pdf | bridge-endpoint | unmatched — not counted | — | — | no |
| ALEX_Audit_202310_Bitcoin_Oracle_and_Bridge.pdf | indexer | unmatched — not counted | — | listed in scope | no |
| ALEX_Audit_202310_Bitcoin_Oracle_and_Bridge.pdf | indexer-registry | unmatched — not counted | — | listed in scope | no |
| ALEX_Audit_202310_Bitcoin_Oracle_and_Bridge.pdf | btc-bridge-endpoint | unmatched — not counted | — | listed in scope | no |
| ALEX_Audit_202310_Bitcoin_Oracle_and_Bridge.pdf | btc-bridge-registry | unmatched — not counted | — | listed in scope | no |
| XLink_Bridge_Endpoint_Audit_2024-06.pdf | BridgeEndpoint | own contract | BridgeEndpoint (selected) `0xa18d9690d03dfbb18ea85588ec5fd2a914b2aac9` — deployed 2024-10-29 06:03:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| XLink_Bridge_Endpoint_Audit_2024-06.pdf | BridgeEndpointWithAxelar | unmatched — not counted | — | listed in scope | no |
| XLink_Bridge_Endpoint_Audit_2024-06.pdf | BridgeRegistry | own contract | BridgeRegistry (alternative) `0x88af5f4bdd601c1bd3674bf1ad2cc282a720d66c` — deployed 2024-10-21 11:29:17+03 — liveness: live (code_present_context)<br>BridgeRegistry (alternative) `0x88af5f4bdd601c1bd3674bf1ad2cc282a720d66c` — deployed 2024-08-21 15:02:47+03 — liveness: live (code_present_context)<br>BridgeRegistry (selected) `0x88af5f4bdd601c1bd3674bf1ad2cc282a720d66c` — deployed 2024-07-24 01:38:55+03 — liveness: live (code_present_context)<br>BridgeRegistry (alternative) `0x13b72a19e221275d3d18ed4d9235f8f859626673` — deployed 2024-06-01 16:11:59+03 — liveness: live (code_present_context)<br>BridgeRegistry (alternative) `0x88af5f4bdd601c1bd3674bf1ad2cc282a720d66c` — deployed 2024-11-25 08:03:33+03 — liveness: live (code_present_context)<br>BridgeRegistry (alternative) `0xffda60ed91039dd4de20492934bc163e0f61e7f5` — deployed 2024-06-01 15:26:02+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-07-24 was 16d from audit; next candidate 37d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| XLink_MultisigWallet_BridgeToken_2024-06.pdf | MultisigWallet | ambiguous — not counted | MultisigWallet (alternative) `0x4306374f07382b36aae832a50831c8c5b26cd41e` — deployed 2024-06-09 09:40:05+03 — liveness: live (current_address_book_code)<br>MultisigWallet (alternative) `0xf162b6467eaf066a513a4b9235009d60c1facf44` — deployed 2024-08-21 15:02:24+03 — liveness: live (current_address_book_code)<br>MultisigWallet (alternative) `0x65dfacfd08afdd1cc02caf3de411661603394090` — deployed 2024-06-09 16:13:35+03 — liveness: live (current_address_book_code)<br>MultisigWallet (alternative) `0x62f7d5f4adf9521cfc609ba452839dcb4e81e79c` — deployed 2025-09-07 17:51:51+03 — liveness: live (current_address_book_code)<br>MultisigWallet (alternative) `0xf162b6467eaf066a513a4b9235009d60c1facf44` — deployed 2024-07-24 01:38:27+03 — liveness: live (code_present_context)<br>MultisigWallet (alternative) `0x3280a4031d7990d1905d7823e7725cb9ad649f37` — deployed 2025-09-07 17:07:24+03 — liveness: live (current_address_book_code)<br>MultisigWallet (alternative) `0xf162b6467eaf066a513a4b9235009d60c1facf44` — deployed 2024-11-25 08:02:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| XLink_MultisigWallet_BridgeToken_2024-06.pdf | BridgeToken | ambiguous — not counted | BridgeToken (alternative) `0xdfd0660032c2d0d38a9092a43d1669d6568caf71` — deployed 2024-10-21 11:30:55+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xab01bbc2ee103d227f2eee50b230506508b560c5` — deployed 2024-09-14 05:54:36+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xa831a4e181f25d3b35949e582ff27cc44e703f37` — deployed 2024-06-01 16:21:47+03 — liveness: live (code_present_context)<br>BridgeToken (alternative) `0x916a82e34430804d9b65e0b5ae7d07ae7439c81d` — deployed 2024-11-18 06:20:31+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x152b9d0fdc40c096757f570a51e494bd4b943e50` — deployed 2022-05-19 20:47:03+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xa831a4e181f25d3b35949e582ff27cc44e703f37` — deployed 2024-08-21 15:07:51+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xd0d1b59ca62ce194e882455fd36632d6277b192a` — deployed 2024-09-12 03:41:49+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x70727228db8c7491bf0ad42c180dbf8d95b257e2` — deployed 2024-07-24 01:41:21+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x2e512ba02454fc48269a9589512239d64602cbc8` — deployed 2024-09-14 05:36:13+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xdfd0660032c2d0d38a9092a43d1669d6568caf71` — deployed 2024-11-25 08:06:23+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xcd5ed0b0b1e107d331833715932b4a596bfba378` — deployed 2024-11-25 08:07:07+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x7a087e75807f2e5143c161a817e64df6dc5eafe0` — deployed 2024-08-21 15:06:43+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xcd5ed0b0b1e107d331833715932b4a596bfba378` — deployed 2024-10-21 11:31:05+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x70727228db8c7491bf0ad42c180dbf8d95b257e2` — deployed 2024-10-21 11:31:15+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x24a44c95452df9fec1876f7b907e2dd2adaa29a7` — deployed 2024-11-14 18:20:24+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x7a087e75807f2e5143c161a817e64df6dc5eafe0` — deployed 2024-11-25 08:05:49+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x0f38ed043a1a2ec79b15d7f4fb8d25036680ce03` — deployed 2024-09-14 05:35:25+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x9e801cb9ce84a84a563e5a74cc2f3ad55f914072` — deployed 2024-10-21 11:31:37+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xa831a4e181f25d3b35949e582ff27cc44e703f37` — deployed 2024-10-21 11:31:27+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x70727228db8c7491bf0ad42c180dbf8d95b257e2` — deployed 2024-11-25 08:07:51+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x9e801cb9ce84a84a563e5a74cc2f3ad55f914072` — deployed 2024-11-25 08:09:21+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xce83dd21264323c1d7d246f347db84a8180970cb` — deployed 2024-11-14 18:20:36+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xa831a4e181f25d3b35949e582ff27cc44e703f37` — deployed 2024-07-24 01:41:43+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x18c05ec3799eb15fe49a141ce844e55514438fa7` — deployed 2024-09-14 05:35:52+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xdfd0660032c2d0d38a9092a43d1669d6568caf71` — deployed 2024-06-01 15:27:20+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x51cda809dc64a060f35f6c96ef6927cabc992d94` — deployed 2025-01-28 17:51:35+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x80074f342764027f5c4e2f7cd7d0ded611dfb7cd` — deployed 2025-01-21 09:28:11+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x7a087e75807f2e5143c161a817e64df6dc5eafe0` — deployed 2024-07-24 01:40:11+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x70727228db8c7491bf0ad42c180dbf8d95b257e2` — deployed 2024-08-21 15:07:44+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xa831a4e181f25d3b35949e582ff27cc44e703f37` — deployed 2024-11-25 08:08:39+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x31761a152f1e96f966c041291644129144233b0b` — deployed 2024-10-29 05:48:47+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x73f0f50815ca4698d8e722cf1d054d223a217138` — deployed 2024-09-14 05:01:11+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x7a087e75807f2e5143c161a817e64df6dc5eafe0` — deployed 2024-10-21 11:30:33+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab` — deployed 2021-07-23 17:59:37+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xdfd0660032c2d0d38a9092a43d1669d6568caf71` — deployed 2024-08-21 15:07:08+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xcd5ed0b0b1e107d331833715932b4a596bfba378` — deployed 2024-07-24 01:40:55+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x2aed35a18bc02472519ca6f25b70a8e9fe938430` — deployed 2024-11-18 06:18:35+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xcd5ed0b0b1e107d331833715932b4a596bfba378` — deployed 2024-08-21 15:07:32+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x0d3c781313b1d4abbb45459621f0168826a6cf07` — deployed 2024-11-18 06:56:43+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x305a85e892e89fa0a2bcd92337682d55559a6ee9` — deployed 2024-11-18 06:19:46+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x5879cdd0a4880d5dc37c5aa8ee0d1f319711b231` — deployed 2025-01-28 17:53:05+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xdfd0660032c2d0d38a9092a43d1669d6568caf71` — deployed 2024-07-24 01:40:33+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x7d4de6105595a5fcac3fbeaed5639624abdd1d9d` — deployed 2024-11-18 06:18:59+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xd15b997505739c02564de7f0e010b42b2f81520d` — deployed 2024-11-18 06:57:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| XLINK_Staking_Audit_2024_11_final.pdf | xlink-staking | unmatched — not counted | — | listed in scope | no |
| XLINK_Staking_Audit_2024_11_final.pdf | liabtc-mint-endpoint | unmatched — not counted | — | listed in scope | no |
| XLINK_Peg-out_Endpoints_Audit 11-2024.pdf | btc-peg-out-endpoint-v2-01 | unmatched — not counted | — | listed in scope | no |
| XLINK_Peg-out_Endpoints_Audit 11-2024.pdf | cross-peg-out-endpoint-v2-01 | unmatched — not counted | — | listed in scope | no |
| XLINK_Peg-out_Endpoints_Audit 11-2024.pdf | meta-peg-out-endpoint-v2-03 | unmatched — not counted | — | listed in scope | no |
| XLINK_Peg-out_Endpoints_Audit 11-2024.pdf | cross-router-v2-02 | unmatched — not counted | — | listed in scope | no |
| XLINK_Peg-out_Endpoints_Audit 11-2024.pdf | bridge-common-v2-02 | unmatched — not counted | — | listed in scope | no |
| XLINK_Peg-in_Endpoints_Audit_11-2024.pdf | btc-peg-in-endpoint-v2-03 | unmatched — not counted | — | listed in scope section | no |
| XLINK_Peg-in_Endpoints_Audit_11-2024.pdf | meta-peg-in-endpoint-v2-02 | unmatched — not counted | — | listed in scope section | no |
| XLINK_Peg-in_Endpoints_Audit_11-2024.pdf | cross-peg-in-endpoint-v2-03 | unmatched — not counted | — | listed in scope section | no |
| XLink_Endpoits_Update_Audit_2025-03.pdf | btc-peg-in-v2-07e-agg | unmatched — not counted | — | listed in scope | no |
| XLink_Endpoits_Update_Audit_2025-03.pdf | cross-peg-out-v2-01b-agg | unmatched — not counted | — | listed in scope | no |
| XLink_Endpoits_Update_Audit_2025-03.pdf | meta-peg-in-v2-06e-agg | unmatched — not counted | — | listed in scope | no |
| XLink_Endpoits_Update_Audit_2025-03.pdf | meta-peg-in-v2-06h-agg | unmatched — not counted | — | mentioned as fix file | no |
| XLink_Endpoits_Update_Audit_2025-03.pdf | btc-peg-in-v2-07g-agg | unmatched — not counted | — | mentioned as fix file | no |
| XLink_Endpoits_Update_Audit_2025-03.pdf | meta-peg-out-endpoint-v2-04 | unmatched — not counted | — | mentioned in finding ME-03 | no |
| XLink_Endpoits_Update_Audit_2025-03.pdf | cross-router-v2-03 | unmatched — not counted | — | mentioned in finding CR-01 | no |
| XLink_EVM_Endpoint_Audit_2025-04.pdf | BridgeEndpointWithSwap | ambiguous — not counted | BridgeEndpointWithSwap (alternative) `0x5298718429046b1d38106864bbfdc9326c840092` — deployed 2025-06-09 17:05:54+03 — liveness: live (current_address_book_code)<br>BridgeEndpointWithSwap (alternative) `0x7a5912c6a188d7217db285c890be61d8503a5baf` — deployed 2025-06-09 16:43:36+03 — liveness: live (current_address_book_code)<br>BridgeEndpointWithSwap (alternative) `0x18c05ec3799eb15fe49a141ce844e55514438fa7` — deployed 2025-06-09 16:31:25+03 — liveness: live (current_address_book_code)<br>BridgeEndpointWithSwap (alternative) `0x0f38ed043a1a2ec79b15d7f4fb8d25036680ce03` — deployed 2025-02-24 20:01:39+03 — liveness: live (current_address_book_code)<br>BridgeEndpointWithSwap (alternative) `0xb1c34a9f630edb880f289683cfac2f923b31c94d` — deployed 2025-06-09 16:25:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| XLink_EVM_Endpoint_Audit_2025-04.pdf | SwapExecutor | unmatched — not counted | — | listed in scope | no |
| XLINK_Solana_Endpoint_Audit_2025-05.pdf | bridge-registry | unmatched — not counted | — | listed in scope | no |
| XLINK_Solana_Endpoint_Audit_2025-05.pdf | bridge-endpoint | unmatched — not counted | — | listed in scope | no |
| 250825_Defense_by_Thesis_Brotocol_BridgeEndPoint_Smart_Contract.pdf | BridgeEndPoint | own contract | BridgeEndpoint (selected) `0xa18d9690d03dfbb18ea85588ec5fd2a914b2aac9` — deployed 2024-10-29 06:03:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | aeWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c` | BEP20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x55d398326f99059ff775485246999027b3197955` | BEP20USDT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb1c34a9f630edb880f289683cfac2f923b31c94d` | BridgeEndpointWithSwap | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5298718429046b1d38106864bbfdc9326c840092` | BridgeEndpointWithSwap | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x18c05ec3799eb15fe49a141ce844e55514438fa7` | BridgeEndpointWithSwap | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x7a5912c6a188d7217db285c890be61d8503a5baf` | BridgeEndpointWithSwap | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x0f38ed043a1a2ec79b15d7f4fb8d25036680ce03` | BridgeEndpointWithSwap | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x13b72a19e221275d3d18ed4d9235f8f859626673` | BridgeRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xffda60ed91039dd4de20492934bc163e0f61e7f5` | BridgeRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x88af5f4bdd601c1bd3674bf1ad2cc282a720d66c` | BridgeRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x88af5f4bdd601c1bd3674bf1ad2cc282a720d66c` | BridgeRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x88af5f4bdd601c1bd3674bf1ad2cc282a720d66c` | BridgeRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2aed35a18bc02472519ca6f25b70a8e9fe938430` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x31761a152f1e96f966c041291644129144233b0b` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x51cda809dc64a060f35f6c96ef6927cabc992d94` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x73f0f50815ca4698d8e722cf1d054d223a217138` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7d4de6105595a5fcac3fbeaed5639624abdd1d9d` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x80074f342764027f5c4e2f7cd7d0ded611dfb7cd` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa831a4e181f25d3b35949e582ff27cc44e703f37` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0f38ed043a1a2ec79b15d7f4fb8d25036680ce03` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x18c05ec3799eb15fe49a141ce844e55514438fa7` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2e512ba02454fc48269a9589512239d64602cbc8` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x305a85e892e89fa0a2bcd92337682d55559a6ee9` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5879cdd0a4880d5dc37c5aa8ee0d1f319711b231` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x916a82e34430804d9b65e0b5ae7d07ae7439c81d` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xdfd0660032c2d0d38a9092a43d1669d6568caf71` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x70727228db8c7491bf0ad42c180dbf8d95b257e2` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x7a087e75807f2e5143c161a817e64df6dc5eafe0` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9e801cb9ce84a84a563e5a74cc2f3ad55f914072` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa831a4e181f25d3b35949e582ff27cc44e703f37` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xcd5ed0b0b1e107d331833715932b4a596bfba378` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xdfd0660032c2d0d38a9092a43d1669d6568caf71` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x0d3c781313b1d4abbb45459621f0168826a6cf07` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x70727228db8c7491bf0ad42c180dbf8d95b257e2` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x7a087e75807f2e5143c161a817e64df6dc5eafe0` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xa831a4e181f25d3b35949e582ff27cc44e703f37` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xcd5ed0b0b1e107d331833715932b4a596bfba378` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xd0d1b59ca62ce194e882455fd36632d6277b192a` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xd15b997505739c02564de7f0e010b42b2f81520d` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xdfd0660032c2d0d38a9092a43d1669d6568caf71` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x70727228db8c7491bf0ad42c180dbf8d95b257e2` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x7a087e75807f2e5143c161a817e64df6dc5eafe0` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa831a4e181f25d3b35949e582ff27cc44e703f37` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xab01bbc2ee103d227f2eee50b230506508b560c5` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xcd5ed0b0b1e107d331833715932b4a596bfba378` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xdfd0660032c2d0d38a9092a43d1669d6568caf71` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x152b9d0fdc40c096757f570a51e494bd4b943e50` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x24a44c95452df9fec1876f7b907e2dd2adaa29a7` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x70727228db8c7491bf0ad42c180dbf8d95b257e2` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x7a087e75807f2e5143c161a817e64df6dc5eafe0` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x9e801cb9ce84a84a563e5a74cc2f3ad55f914072` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xa831a4e181f25d3b35949e582ff27cc44e703f37` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xcd5ed0b0b1e107d331833715932b4a596bfba378` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xce83dd21264323c1d7d246f347db84a8180970cb` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xdfd0660032c2d0d38a9092a43d1669d6568caf71` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x5e0e90e268bc247cc850c789a0db0d5c7621fb59` | ERC20BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf` | FiatTokenV2_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e` | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4306374f07382b36aae832a50831c8c5b26cd41e` | MigrateToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd15b997505739c02564de7f0e010b42b2f81520d` | MigrateToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa6420eba9b8c514a5793429ba2873274a63531bb` | MigrateTokenBOBFusionS1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x65dfacfd08afdd1cc02caf3de411661603394090` | MultisigWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x4306374f07382b36aae832a50831c8c5b26cd41e` | MultisigWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf162b6467eaf066a513a4b9235009d60c1facf44` | MultisigWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xf162b6467eaf066a513a4b9235009d60c1facf44` | MultisigWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf162b6467eaf066a513a4b9235009d60c1facf44` | MultisigWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x62f7d5f4adf9521cfc609ba452839dcb4e81e79c` | MultisigWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x3280a4031d7990d1905d7823e7725cb9ad649f37` | MultisigWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x25d887ce7a35172c62febfd67a1856f20faebb00` | PepeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x18084fba666a33d37592fa2633fd49a74dd93a88` | TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x9bf543d8460583ff8a669aae01d9cdbee4defe3c` | TeamToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x795d2710e383f33fbebe980a155b29757b6703f3` | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7` | WAVAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4200000000000000000000000000000000000006` | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 97 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 48 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 33 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9, low=2
- Match method counts: temporal_name=1, unique_name=4

Zero-match audit list:

- [11554] ALEX_Audit_202310_Bitcoin_Oracle_and_Bridge.pdf
- [11556] XLink_MultisigWallet_BridgeToken_2024-06.pdf
- [11557] XLINK_Staking_Audit_2024_11_final.pdf
- [11558] XLINK_Peg-out_Endpoints_Audit 11-2024.pdf
- [11559] XLINK_Peg-in_Endpoints_Audit_11-2024.pdf
- [11560] XLink_Endpoits_Update_Audit_2025-03.pdf
- [11561] XLink_EVM_Endpoint_Audit_2025-04.pdf
- [11562] XLINK_Solana_Endpoint_Audit_2025-05.pdf
- [11564] www.coinfabrik.com
- [11565] thesis.co/defense

Fork inheritance lineage and inherited audits are included when available.
