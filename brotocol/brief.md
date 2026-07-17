# Agentic Audit Brief: Brotocol

## Project Overview

- Project: Brotocol (`brotocol`)
- Website: [https://brotocol.xyz/](https://brotocol.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:08.588Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, avalanche, base, bsc, ethereum, linea, merlin, mode
- Contract surface: 53 unique implementations (233 raw deployments)
- DeFi Llama TVL: $707,392.17
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge Aggregator. Structurally: 286 project-authored contract(s) across 7 chain(s); 68 ERC20 tokens, 4 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 50 common project-authored base contract(s) (erc20withpermit, checkpoints, authorizations). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 238; live-surface contracts included: 233 (191 live, 42 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/26 (15.4%)
- Deployed-live implementations: 26 of 53 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/26
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 53
- Raw deployments: 233
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 6 aging, 5 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CoinFabrik | Tier 2 | 4 | 15.4% | 2025-05 |
| Defence (Thesis) | Tier 2 | 1 | 3.8% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgeEndpoint | unknown | bsc | n/a | 19 deployments: ethereum `0x1c5ac43f0b30462c5ddeb1a2152e639bbdfe38ea`; ethereum `0x4a5ccdd40c8131075dae863d725f2a9f9907340a`; ethereum `0x84254da34abe4678017a5bf78506b48490ce4547`; ethereum `0x9883fac487d917e47ed11ae3f2c31507ae1ca925`; bsc [`0x13b72a19e221275d3d18ed4d9235f8f859626673`](./contracts/bsc-56/0x13b72a19e221275d3d18ed4d9235f8f859626673/); bsc `0x2aed35a18bc02472519ca6f25b70a8e9fe938430`; bsc `0xa18d9690d03dfbb18ea85588ec5fd2a914b2aac9`; bsc `0xb17192c2ccf721830defb489b255365d3bb369e7`; bsc `0xd851f60b1b487059528a7bbbe444865b79e98661`; bsc `0xf4a6170e827ba17be9a3423b8662cc82eb273730`; base `0x79d1c91053baceced5c796ab8a765e4d5ab38e8a`; base `0xf6af0a12c7983a297d8477f7f3ae38d58ad6b600`; mode `0x79d1c91053baceced5c796ab8a765e4d5ab38e8a`; mode `0xa18d9690d03dfbb18ea85588ec5fd2a914b2aac9`; arbitrum `0x79d1c91053baceced5c796ab8a765e4d5ab38e8a`; arbitrum `0xc13a12e657e0e7c6dad9dd26b86a927b05edcacb`; linea `0x790cd0a2b4d04693e39f71e35fc65a3a3d19edef`; linea `0x79d1c91053baceced5c796ab8a765e4d5ab38e8a`; linea `0xf6af0a12c7983a297d8477f7f3ae38d58ad6b600` | ✅ Audited |
| BridgeEndpointWithSwap | unknown | arbitrum | n/a | 43 deployments: ethereum `0x1a86ff397b58db43ab019d336931e6a71cc56ce5`; ethereum `0x2df927f8b46d74142fa3ddbd0626c1dcc93d4ee4`; ethereum `0xb1c34a9f630edb880f289683cfac2f923b31c94d`; ethereum `0xb304ecdec8b1b7b6d65a7a0e031fff05b559e638`; ethereum `0xb89873b32b6c4a8eedfb76f12078e1d732ae3f78`; ethereum `0xde8d0c9e5a2995017932efde640b3238423dd35b`; ethereum `0xe79097127b837ef3c90302496c42d105aaf9ef2c`; ethereum `0xf28f38176def1aee144a7120659c09d214885028`; bsc `0x2543df081184b45127a7391a37c8b80a5dea89d6`; bsc `0x3a75063d01c5098f8a44e3ff939d4e493ca399a7`; bsc `0x46b20f3106b8bffb9bf63633a854a7a96dfc6379`; bsc `0x4a1a7048f54d4913156ca79c329a8ecd2b6a5f7f`; bsc `0x5298718429046b1d38106864bbfdc9326c840092`; bsc `0x82d25bd400631de5daf832c1e9cca547ec4b2aab`; bsc `0x99b0341830356d13053a4c14ede8fa83ac34a2c3`; bsc `0xb75231778c0e7c132a1eb0bc1d91134817316a15`; bsc `0xc355e278bf9631173501393dbcdcd5356d3a1334`; base `0x10eeccc43172458f0ff9cc3e9730ab256faee32e`; base `0x144b4256ac30c9b65666336c278d2bc3fb432318`; base `0x18c05ec3799eb15fe49a141ce844e55514438fa7`; base `0x916e5dfdf66fdd9df738c63159d5f01268ed21cb`; base `0xa6420eba9b8c514a5793429ba2873274a63531bb`; base `0xd15b997505739c02564de7f0e010b42b2f81520d`; base `0xd8994073ba5f6615ab3ea9e8ae1948047bbef1ad`; base `0xe80e0c533d41343b0038a3ea74102b4b9ff13e7e`; arbitrum [`0x0d3c781313b1d4abbb45459621f0168826a6cf07`](./contracts/arbitrum-42161/0x0d3c781313b1d4abbb45459621f0168826a6cf07/); arbitrum `0x31761a152f1e96f966c041291644129144233b0b`; arbitrum `0x4306374f07382b36aae832a50831c8c5b26cd41e`; arbitrum `0x4a5ccdd40c8131075dae863d725f2a9f9907340a`; arbitrum `0x73f0f50815ca4698d8e722cf1d054d223a217138`; arbitrum `0x7a5912c6a188d7217db285c890be61d8503a5baf`; arbitrum `0x916e5dfdf66fdd9df738c63159d5f01268ed21cb`; arbitrum `0x9df50cafde832eda2857903265905627ac5a8522`; arbitrum `0xa18d9690d03dfbb18ea85588ec5fd2a914b2aac9`; arbitrum `0xce83dd21264323c1d7d246f347db84a8180970cb`; linea `0x0f38ed043a1a2ec79b15d7f4fb8d25036680ce03`; linea `0x10eeccc43172458f0ff9cc3e9730ab256faee32e`; linea `0x144b4256ac30c9b65666336c278d2bc3fb432318`; linea `0x4869f4ec844cd3383f8261affcf29b23182f480c`; linea `0x87e352eb7dad17640f7fe93c3aab8d1c3ae78fe5`; linea `0xa5171f62747dcd8ecb141874e6ba7828576f1c9e`; linea `0xd491f20b3d443dbaa61536662af22421b97bcac9`; linea `0xf4a6170e827ba17be9a3423b8662cc82eb273730` | ✅ Audited |
| BridgeToken | unknown | mode | n/a | 69 deployments: ethereum `0x2aed35a18bc02472519ca6f25b70a8e9fe938430`; ethereum `0x31761a152f1e96f966c041291644129144233b0b`; ethereum `0x51cda809dc64a060f35f6c96ef6927cabc992d94`; ethereum `0x73f0f50815ca4698d8e722cf1d054d223a217138`; ethereum `0x7d4de6105595a5fcac3fbeaed5639624abdd1d9d`; ethereum `0x80074f342764027f5c4e2f7cd7d0ded611dfb7cd`; ethereum `0xa5171f62747dcd8ecb141874e6ba7828576f1c9e`; ethereum `0xa831a4e181f25d3b35949e582ff27cc44e703f37`; bsc `0x0f38ed043a1a2ec79b15d7f4fb8d25036680ce03`; bsc `0x18c05ec3799eb15fe49a141ce844e55514438fa7`; bsc `0x2e512ba02454fc48269a9589512239d64602cbc8`; bsc `0x305a85e892e89fa0a2bcd92337682d55559a6ee9`; bsc `0x5879cdd0a4880d5dc37c5aa8ee0d1f319711b231`; bsc `0x858d1dbd14a023a905535823a77925082507d38b`; bsc `0x916a82e34430804d9b65e0b5ae7d07ae7439c81d`; bsc `0xcd5ed0b0b1e107d331833715932b4a596bfba378`; bsc `0xdfd0660032c2d0d38a9092a43d1669d6568caf71`; base `0x70727228db8c7491bf0ad42c180dbf8d95b257e2`; base `0x7a087e75807f2e5143c161a817e64df6dc5eafe0`; base `0x9e801cb9ce84a84a563e5a74cc2f3ad55f914072`; base `0xa831a4e181f25d3b35949e582ff27cc44e703f37`; base `0xc13a12e657e0e7c6dad9dd26b86a927b05edcacb`; base `0xcd5ed0b0b1e107d331833715932b4a596bfba378`; base `0xce83dd21264323c1d7d246f347db84a8180970cb`; base `0xdfd0660032c2d0d38a9092a43d1669d6568caf71`; base `0xe67640abd424d9456ef8a4160d5753fe5833291d`; mode [`0x0d3c781313b1d4abbb45459621f0168826a6cf07`](./contracts/mode-34443/0x0d3c781313b1d4abbb45459621f0168826a6cf07/); mode `0x70727228db8c7491bf0ad42c180dbf8d95b257e2`; mode `0x7a087e75807f2e5143c161a817e64df6dc5eafe0`; mode `0xa831a4e181f25d3b35949e582ff27cc44e703f37`; mode `0xcd5ed0b0b1e107d331833715932b4a596bfba378`; mode `0xd0d1b59ca62ce194e882455fd36632d6277b192a`; mode `0xd15b997505739c02564de7f0e010b42b2f81520d`; mode `0xdfd0660032c2d0d38a9092a43d1669d6568caf71`; arbitrum `0x70727228db8c7491bf0ad42c180dbf8d95b257e2`; arbitrum `0x7a087e75807f2e5143c161a817e64df6dc5eafe0`; arbitrum `0x7baa28de9cdb527f963b61f996b81f3cc9d07113`; arbitrum `0xa831a4e181f25d3b35949e582ff27cc44e703f37`; arbitrum `0xab01bbc2ee103d227f2eee50b230506508b560c5`; arbitrum `0xcd5ed0b0b1e107d331833715932b4a596bfba378`; arbitrum `0xdfd0660032c2d0d38a9092a43d1669d6568caf71`; arbitrum `0xe67d6da03f8ca816805d0b0c3d235e7fd4351bb0`; avalanche `0x152b9d0fdc40c096757f570a51e494bd4b943e50`; avalanche `0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98`; avalanche `0x37b608519f91f70f2eeb0e5ed9af4061722e4f76`; avalanche `0x3bd2b1c7ed8d396dbb98ded3aebb41350a5b2339`; avalanche `0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab`; avalanche `0x50b7545627a5162f82a992c33b87adc75187b218`; avalanche `0x5947bb275c521040051d82396192181b413227a3`; avalanche `0x596fa47043f99a4e0f122243b841e55375cde0d2`; avalanche `0x63a72806098bd3d9520cc43356dd78afe5d386d9`; avalanche `0x88128fd4b259552a9a1d457f435a6527aab72d42`; avalanche `0x8a0cac13c7da965a312f08ea4229c37869e85cb9`; avalanche `0x8ebaf22b6f053dffeaf46f4dd9efa95d89ba8580`; avalanche `0x98443b96ea4b0858fdf3219cd13e98c7a4690588`; avalanche `0x9eaac1b23d935365bd7b542fe22ceee2922f52dc`; avalanche `0xbec243c995409e6520d7c41e404da5deba4b209b`; avalanche `0xc3048e19e76cb9a3aa9d77d8c03c29fc906e2437`; avalanche `0xc7198437980c041c805a1edcba50c1ce5db95118`; avalanche `0xd501281565bf7789224523144fe5d98e8b28f267`; avalanche `0xd586e7f844cea2f87f50152665bcbc2c279d8d70`; linea `0x24a44c95452df9fec1876f7b907e2dd2adaa29a7`; linea `0x70727228db8c7491bf0ad42c180dbf8d95b257e2`; linea `0x7a087e75807f2e5143c161a817e64df6dc5eafe0`; linea `0x9e801cb9ce84a84a563e5a74cc2f3ad55f914072`; linea `0xa831a4e181f25d3b35949e582ff27cc44e703f37`; linea `0xcd5ed0b0b1e107d331833715932b4a596bfba378`; linea `0xce83dd21264323c1d7d246f347db84a8180970cb`; linea `0xdfd0660032c2d0d38a9092a43d1669d6568caf71` | ✅ Audited |
| MultisigWallet | governance | linea | n/a | 31 deployments: ethereum `0x65dfacfd08afdd1cc02caf3de411661603394090`; ethereum `0xffda60ed91039dd4de20492934bc163e0f61e7f5`; bsc `0x4306374f07382b36aae832a50831c8c5b26cd41e`; bsc `0x79d1c91053baceced5c796ab8a765e4d5ab38e8a`; base `0xf162b6467eaf066a513a4b9235009d60c1facf44`; mode `0x4869f4ec844cd3383f8261affcf29b23182f480c`; mode `0x658064f0d8650f3b95c0a723e7f600042032960e`; mode `0x65dfacfd08afdd1cc02caf3de411661603394090`; mode `0x916e5dfdf66fdd9df738c63159d5f01268ed21cb`; mode `0x9883fac487d917e47ed11ae3f2c31507ae1ca925`; mode `0xa6420eba9b8c514a5793429ba2873274a63531bb`; mode `0xd491f20b3d443dbaa61536662af22421b97bcac9`; mode `0xedd6a24ead1d1e5c33851dbf72a42482e01e3abb`; mode `0xeebb834b73e934c63a3917cd872396a7c36c9051`; mode `0xf162b6467eaf066a513a4b9235009d60c1facf44`; mode `0xf5866c90cd07b565df3ec89cec4c6a6078f05c3a`; arbitrum `0x46b20f3106b8bffb9bf63633a854a7a96dfc6379`; arbitrum `0xe9915e964d7dd7f374e4789310d05a829cfe7423`; arbitrum `0xf162b6467eaf066a513a4b9235009d60c1facf44`; avalanche `0x62f7d5f4adf9521cfc609ba452839dcb4e81e79c`; linea [`0x1a86ff397b58db43ab019d336931e6a71cc56ce5`](./contracts/linea-59144/0x1a86ff397b58db43ab019d336931e6a71cc56ce5/); linea `0x2aed35a18bc02472519ca6f25b70a8e9fe938430`; linea `0x305a85e892e89fa0a2bcd92337682d55559a6ee9`; linea `0x3280a4031d7990d1905d7823e7725cb9ad649f37`; linea `0x46b20f3106b8bffb9bf63633a854a7a96dfc6379`; linea `0x7a5912c6a188d7217db285c890be61d8503a5baf`; linea `0x7d4de6105595a5fcac3fbeaed5639624abdd1d9d`; linea `0x80a33f79e8acd5793303ad87f465f4c54d19b69f`; linea `0xec72d43eea62f63e097751bfe9866650689ffcbc`; linea `0xf162b6467eaf066a513a4b9235009d60c1facf44`; linea `0xfc57d34855c9944bdbcc0cb3a18b6c7d345dec8c` | ✅ Audited |

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| aeWETH | token | arbitrum | n/a | [`0x82af49447d8a07e3bd95bd0d56f35241523fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| BEP20LINK | unknown | bsc | n/a | [`0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd`](./contracts/bsc-56/0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd/) | ⚠️ Unaudited |
| BEP20Token | token | bsc | n/a | 2 deployments: bsc [`0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/); bsc `0xe9e7cea3dedca5984780bafc599bd69add087d56` | ⚠️ Unaudited |
| BEP20USDT | token | bsc | n/a | [`0x55d398326f99059ff775485246999027b3197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | ⚠️ Unaudited |
| BridgeConfig | operational_periphery | base | n/a | 4 deployments: base [`0xf99f62475f50be59393dbdc148e6627e4e88fc24`](./contracts/base-8453/0xf99f62475f50be59393dbdc148e6627e4e88fc24/); mode [`0xf99f62475f50be59393dbdc148e6627e4e88fc24`](./contracts/mode-34443/0xf99f62475f50be59393dbdc148e6627e4e88fc24/); arbitrum [`0xf99f62475f50be59393dbdc148e6627e4e88fc24`](./contracts/arbitrum-42161/0xf99f62475f50be59393dbdc148e6627e4e88fc24/); linea [`0xf99f62475f50be59393dbdc148e6627e4e88fc24`](./contracts/linea-59144/0xf99f62475f50be59393dbdc148e6627e4e88fc24/) | ⚠️ Unaudited |
| BridgeRegistry | unknown | ethereum | n/a | 6 deployments: ethereum [`0x13b72a19e221275d3d18ed4d9235f8f859626673`](./contracts/ethereum-1/0x13b72a19e221275d3d18ed4d9235f8f859626673/); bsc `0xffda60ed91039dd4de20492934bc163e0f61e7f5`; base `0x88af5f4bdd601c1bd3674bf1ad2cc282a720d66c`; mode `0x88af5f4bdd601c1bd3674bf1ad2cc282a720d66c`; arbitrum `0x88af5f4bdd601c1bd3674bf1ad2cc282a720d66c`; linea `0x88af5f4bdd601c1bd3674bf1ad2cc282a720d66c` | ⚠️ Unaudited |
| ERC20BridgeToken | operational_periphery | avalanche | n/a | [`0x5e0e90e268bc247cc850c789a0db0d5c7621fb59`](./contracts/avalanche-43114/0x5e0e90e268bc247cc850c789a0db0d5c7621fb59/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | base | n/a | [`0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | n/a | [`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | n/a | [`0xaf88d065e77c8cc2239327c5edb3a432268e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | avalanche | n/a | [`0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e`](./contracts/avalanche-43114/0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e/) | ⚠️ Unaudited |
| MasterMinter | unknown | base | n/a | 2 deployments: base [`0x2230393edad0299b7e7b59f20aa856cd1bed52e1`](./contracts/base-8453/0x2230393edad0299b7e7b59f20aa856cd1bed52e1/); avalanche `0xb7887fed5e2f9dc1a66fbb65f76ba3731d82341a` | ⚠️ Unaudited |
| MigrateToken | token | ethereum | n/a | 2 deployments: ethereum [`0x4306374f07382b36aae832a50831c8c5b26cd41e`](./contracts/ethereum-1/0x4306374f07382b36aae832a50831c8c5b26cd41e/); bsc `0xd15b997505739c02564de7f0e010b42b2f81520d` | ⚠️ Unaudited |
| MigrateTokenBOBFusionS1 | unknown | ethereum | n/a | [`0xa6420eba9b8c514a5793429ba2873274a63531bb`](./contracts/ethereum-1/0xa6420eba9b8c514a5793429ba2873274a63531bb/) | ⚠️ Unaudited |
| PepeToken | token | arbitrum | n/a | [`0x25d887ce7a35172c62febfd67a1856f20faebb00`](./contracts/arbitrum-42161/0x25d887ce7a35172c62febfd67a1856f20faebb00/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | 2 deployments: arbitrum [`0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/); arbitrum `0xf97f4df75117a78c1a5a0dbb814af92458539fb4` | ⚠️ Unaudited |
| TBTC | unknown | ethereum | n/a | [`0x18084fba666a33d37592fa2633fd49a74dd93a88`](./contracts/ethereum-1/0x18084fba666a33d37592fa2633fd49a74dd93a88/) | ⚠️ Unaudited |
| TeamToken | token | bsc | n/a | [`0x9bf543d8460583ff8a669aae01d9cdbee4defe3c`](./contracts/bsc-56/0x9bf543d8460583ff8a669aae01d9cdbee4defe3c/) | ⚠️ Unaudited |
| TimeLock | unknown | base | n/a | 6 deployments: ethereum `0x858d1dbd14a023a905535823a77925082507d38b`; bsc `0x7a087e75807f2e5143c161a817e64df6dc5eafe0`; base [`0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3`](./contracts/base-8453/0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3/); mode [`0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3`](./contracts/mode-34443/0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3/); arbitrum [`0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3`](./contracts/arbitrum-42161/0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3/); linea [`0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3`](./contracts/linea-59144/0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3/) | ⚠️ Unaudited |
| Token | token | bsc | n/a | [`0x795d2710e383f33fbebe980a155b29757b6703f3`](./contracts/bsc-56/0x795d2710e383f33fbebe980a155b29757b6703f3/) | ⚠️ Unaudited |
| WAVAX | unknown | avalanche | n/a | [`0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7`](./contracts/avalanche-43114/0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7/) | ⚠️ Unaudited |
| WETH9 | token | base | n/a | [`0x4200000000000000000000000000000000000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | merlin | n/a | 6 deployments: merlin `0x7a087e75807f2e5143c161a817e64df6dc5eafe0`; merlin `0x858d1dbd14a023a905535823a77925082507d38b`; merlin `0x88af5f4bdd601c1bd3674bf1ad2cc282a720d66c`; merlin `0xa831a4e181f25d3b35949e582ff27cc44e703f37`; merlin `0xc13a12e657e0e7c6dad9dd26b86a927b05edcacb`; merlin `0xf162b6467eaf066a513a4b9235009d60c1facf44` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa5171f62747dcd8ecb141874e6ba7828576f1c9e` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x02111cf82133e29106767dc53ded318281dc84f3` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x03c69ee62c86c220b5ff71f8212c45a20ca61154` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x108d36c7f09761cd77c7879710054a85e493835c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x19e64ad8aab0b156b5aeaf24e28f6183c2d82c2f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x5210643e105a80322bbce824b97a3c0b3a9d88f3` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x57b9b488a02bac0f9195ffee164629b01d03fe4c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x715f26cd7a009f3116c93e48dfbedd1de55bf829` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x950cfbc37ce718730bae088031d6699f1aa2c1dc` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa1c1f6d111339e26c9fe61256c4751f539b40bd6` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe1a512f9d89fddcd2105df4db32ede4bc2ade33b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf4a6170e827ba17be9a3423b8662cc82eb273730` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1fe74ca6c66a33b8b619d799af110741fb6d20e3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3d3f8fe9cce16e1c2743d5ace99f027df866c6bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4c90c8a368f7d1f4a57906139bac23c72f38f4cf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x79d1c91053baceced5c796ab8a765e4d5ab38e8a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7f2239511051b875ccf84dab02d5a307adcd51c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x88af5f4bdd601c1bd3674bf1ad2cc282a720d66c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb5dc6671e7cdaaa2386536295bf63a221b67311a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd96f5d515a679d4a5343eed73d26535a3326a060` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe67640abd424d9456ef8a4160d5753fe5833291d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xecc6ad0608e1e3fc6b314df221cf10ea07ae08d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf162b6467eaf066a513a4b9235009d60c1facf44` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf99f62475f50be59393dbdc148e6627e4e88fc24` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xdd7124a07ddd615cdc6ec10a04a9e83f9b9769bf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ALEX_Audit_bridge_coinfabrik_202212.pdf](https://cdn.xlink.network/pdf/ALEX_Audit_bridge_coinfabrik_202212.pdf) | CoinFabrik | Audit | 2022-12 | stale | Direct | contract_name | 1 | n/a |
| [ALEX_Audit_Bridge_2023-04.pdf](https://cdn.xlink.network/pdf/ALEX_Audit_Bridge_2023-04.pdf) | CoinFabrik | Audit | 2023-04 | stale | Direct | contract_name | 1 | n/a |
| [ALEX_Audit_202310_Bitcoin_Oracle_and_Bridge.pdf](https://cdn.xlink.network/pdf/ALEX_Audit_202310_Bitcoin_Oracle_and_Bridge.pdf) | CoinFabrik | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [XLink_Bridge_Endpoint_Audit_2024-06.pdf](https://cdn.xlink.network/pdf/XLink_Bridge_Endpoint_Audit_2024-06.pdf) | CoinFabrik | Audit | 2024-06 | stale | Direct | contract_name | 1 | n/a |
| [XLink_MultisigWallet_BridgeToken_2024-06.pdf](https://cdn.xlink.network/pdf/XLink_MultisigWallet_BridgeToken_2024-06.pdf) | CoinFabrik | Audit | 2024-06 | stale | Direct | contract_name | 2 | n/a |
| [XLINK_Staking_Audit_2024_11_final.pdf](https://cdn.xlink.network/pdf/XLINK_Staking_Audit_2024_11_final.pdf) | CoinFabrik | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [XLINK_Peg-out_Endpoints_Audit 11-2024.pdf](https://cdn.xlink.network/pdf/XLINK_Peg-out_Endpoints_Audit%2011-2024.pdf) | CoinFabrik | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [XLINK_Peg-in_Endpoints_Audit_11-2024.pdf](https://cdn.xlink.network/pdf/XLINK_Peg-in_Endpoints_Audit_11-2024.pdf) | CoinFabrik | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [XLink_Endpoits_Update_Audit_2025-03.pdf](https://cdn.brotocol.xyz/pdf/XLink_Endpoits_Update_Audit_2025-03.pdf) | CoinFabrik | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [XLink_EVM_Endpoint_Audit_2025-04.pdf](https://cdn.brotocol.xyz/pdf/XLink_EVM_Endpoint_Audit_2025-04.pdf) | CoinFabrik | Audit | 2025-04 | aging | Direct | contract_name | 1 | n/a |
| [XLINK_Solana_Endpoint_Audit_2025-05.pdf](https://cdn.brotocol.xyz/pdf/XLINK_Solana_Endpoint_Audit_2025-05.pdf) | CoinFabrik | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [250825_Defense_by_Thesis_Brotocol_BridgeEndPoint_Smart_Contract.pdf](https://cdn.brotocol.xyz/pdf/250825_Defense_by_Thesis_Brotocol_BridgeEndPoint_Smart_Contract.pdf) | Defence (Thesis) | Audit | 2025-08 | fresh | Direct | contract_name | 1 | n/a |
| [www.coinfabrik.com](https://www.coinfabrik.com/) | CoinFabrik | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [thesis.co/defense](https://thesis.co/defense) | Defence | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x82af49447d8a07e3bd95bd0d56f35241523fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | aeWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd`](./contracts/bsc-56/0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd/) | BEP20LINK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/) | BEP20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x55d398326f99059ff775485246999027b3197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | BEP20USDT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf99f62475f50be59393dbdc148e6627e4e88fc24`](./contracts/base-8453/0xf99f62475f50be59393dbdc148e6627e4e88fc24/) | BridgeConfig | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13b72a19e221275d3d18ed4d9235f8f859626673`](./contracts/ethereum-1/0x13b72a19e221275d3d18ed4d9235f8f859626673/) | BridgeRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5e0e90e268bc247cc850c789a0db0d5c7621fb59`](./contracts/avalanche-43114/0x5e0e90e268bc247cc850c789a0db0d5c7621fb59/) | ERC20BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | FiatTokenV2_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaf88d065e77c8cc2239327c5edb3a432268e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e`](./contracts/avalanche-43114/0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2230393edad0299b7e7b59f20aa856cd1bed52e1`](./contracts/base-8453/0x2230393edad0299b7e7b59f20aa856cd1bed52e1/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4306374f07382b36aae832a50831c8c5b26cd41e`](./contracts/ethereum-1/0x4306374f07382b36aae832a50831c8c5b26cd41e/) | MigrateToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6420eba9b8c514a5793429ba2873274a63531bb`](./contracts/ethereum-1/0xa6420eba9b8c514a5793429ba2873274a63531bb/) | MigrateTokenBOBFusionS1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x25d887ce7a35172c62febfd67a1856f20faebb00`](./contracts/arbitrum-42161/0x25d887ce7a35172c62febfd67a1856f20faebb00/) | PepeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18084fba666a33d37592fa2633fd49a74dd93a88`](./contracts/ethereum-1/0x18084fba666a33d37592fa2633fd49a74dd93a88/) | TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9bf543d8460583ff8a669aae01d9cdbee4defe3c`](./contracts/bsc-56/0x9bf543d8460583ff8a669aae01d9cdbee4defe3c/) | TeamToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3`](./contracts/base-8453/0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3/) | TimeLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x795d2710e383f33fbebe980a155b29757b6703f3`](./contracts/bsc-56/0x795d2710e383f33fbebe980a155b29757b6703f3/) | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7`](./contracts/avalanche-43114/0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7/) | WAVAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4200000000000000000000000000000000000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=7

Zero-match audit list:

- [11554] ALEX_Audit_202310_Bitcoin_Oracle_and_Bridge.pdf
- [11557] XLINK_Staking_Audit_2024_11_final.pdf
- [11558] XLINK_Peg-out_Endpoints_Audit 11-2024.pdf
- [11559] XLINK_Peg-in_Endpoints_Audit_11-2024.pdf
- [11560] XLink_Endpoits_Update_Audit_2025-03.pdf
- [11562] XLINK_Solana_Endpoint_Audit_2025-05.pdf
- [11564] www.coinfabrik.com
- [11565] thesis.co/defense

Fork inheritance lineage and inherited audits are included when available.
