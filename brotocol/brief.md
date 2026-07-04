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
| BridgeEndpoint | unknown | bsc | n/a | 19 deployments: ethereum `0x1c5ac4...fe38ea`; ethereum `0x4a5ccd...07340a`; ethereum `0x84254d...ce4547`; ethereum `0x9883fa...1ca925`; bsc [`0x13b72a...626673`](./contracts/bsc-56/0x13b72a19e221275d3d18ed4d9235f8f859626673/); bsc `0x2aed35...938430`; bsc `0xa18d96...b2aac9`; bsc `0xb17192...b369e7`; bsc `0xd851f6...e98661`; bsc `0xf4a617...273730`; base `0x79d1c9...b38e8a`; base `0xf6af0a...d6b600`; mode `0x79d1c9...b38e8a`; mode `0xa18d96...b2aac9`; arbitrum `0x79d1c9...b38e8a`; arbitrum `0xc13a12...edcacb`; linea `0x790cd0...19edef`; linea `0x79d1c9...b38e8a`; linea `0xf6af0a...d6b600` | ✅ Audited |
| BridgeEndpointWithSwap | unknown | arbitrum | n/a | 43 deployments: ethereum `0x1a86ff...c56ce5`; ethereum `0x2df927...3d4ee4`; ethereum `0xb1c34a...31c94d`; ethereum `0xb304ec...59e638`; ethereum `0xb89873...ae3f78`; ethereum `0xde8d0c...3dd35b`; ethereum `0xe79097...f9ef2c`; ethereum `0xf28f38...885028`; bsc `0x2543df...ea89d6`; bsc `0x3a7506...a399a7`; bsc `0x46b20f...fc6379`; bsc `0x4a1a70...6a5f7f`; bsc `0x529871...840092`; bsc `0x82d25b...4b2aab`; bsc `0x99b034...34a2c3`; bsc `0xb75231...316a15`; bsc `0xc355e2...3a1334`; base `0x10eecc...aee32e`; base `0x144b42...432318`; base `0x18c05e...438fa7`; base `0x916e5d...ed21cb`; base `0xa6420e...3531bb`; base `0xd15b99...81520d`; base `0xd89940...bef1ad`; base `0xe80e0c...f13e7e`; arbitrum [`0x0d3c78...a6cf07`](./contracts/arbitrum-42161/0x0d3c781313b1d4abbb45459621f0168826a6cf07/); arbitrum `0x31761a...233b0b`; arbitrum `0x430637...6cd41e`; arbitrum `0x4a5ccd...07340a`; arbitrum `0x73f0f5...217138`; arbitrum `0x7a5912...3a5baf`; arbitrum `0x916e5d...ed21cb`; arbitrum `0x9df50c...5a8522`; arbitrum `0xa18d96...b2aac9`; arbitrum `0xce83dd...0970cb`; linea `0x0f38ed...80ce03`; linea `0x10eecc...aee32e`; linea `0x144b42...432318`; linea `0x4869f4...2f480c`; linea `0x87e352...e78fe5`; linea `0xa5171f...6f1c9e`; linea `0xd491f2...7bcac9`; linea `0xf4a617...273730` | ✅ Audited |
| BridgeToken | unknown | mode | n/a | 69 deployments: ethereum `0x2aed35...938430`; ethereum `0x31761a...233b0b`; ethereum `0x51cda8...992d94`; ethereum `0x73f0f5...217138`; ethereum `0x7d4de6...dd1d9d`; ethereum `0x80074f...dfb7cd`; ethereum `0xa5171f...6f1c9e`; ethereum `0xa831a4...703f37`; bsc `0x0f38ed...80ce03`; bsc `0x18c05e...438fa7`; bsc `0x2e512b...02cbc8`; bsc `0x305a85...9a6ee9`; bsc `0x5879cd...11b231`; bsc `0x858d1d...07d38b`; bsc `0x916a82...39c81d`; bsc `0xcd5ed0...fba378`; bsc `0xdfd066...8caf71`; base `0x707272...b257e2`; base `0x7a087e...5eafe0`; base `0x9e801c...914072`; base `0xa831a4...703f37`; base `0xc13a12...edcacb`; base `0xcd5ed0...fba378`; base `0xce83dd...0970cb`; base `0xdfd066...8caf71`; base `0xe67640...33291d`; mode [`0x0d3c78...a6cf07`](./contracts/mode-34443/0x0d3c781313b1d4abbb45459621f0168826a6cf07/); mode `0x707272...b257e2`; mode `0x7a087e...5eafe0`; mode `0xa831a4...703f37`; mode `0xcd5ed0...fba378`; mode `0xd0d1b5...7b192a`; mode `0xd15b99...81520d`; mode `0xdfd066...8caf71`; arbitrum `0x707272...b257e2`; arbitrum `0x7a087e...5eafe0`; arbitrum `0x7baa28...d07113`; arbitrum `0xa831a4...703f37`; arbitrum `0xab01bb...b560c5`; arbitrum `0xcd5ed0...fba378`; arbitrum `0xdfd066...8caf71`; arbitrum `0xe67d6d...351bb0`; avalanche `0x152b9d...943e50`; avalanche `0x19860c...8dde98`; avalanche `0x37b608...2e4f76`; avalanche `0x3bd2b1...5b2339`; avalanche `0x49d5c2...c10bab`; avalanche `0x50b754...87b218`; avalanche `0x5947bb...3227a3`; avalanche `0x596fa4...cde0d2`; avalanche `0x63a728...d386d9`; avalanche `0x88128f...b72d42`; avalanche `0x8a0cac...e85cb9`; avalanche `0x8ebaf2...ba8580`; avalanche `0x98443b...690588`; avalanche `0x9eaac1...2f52dc`; avalanche `0xbec243...4b209b`; avalanche `0xc3048e...6e2437`; avalanche `0xc71984...b95118`; avalanche `0xd50128...28f267`; avalanche `0xd586e7...9d8d70`; linea `0x24a44c...aa29a7`; linea `0x707272...b257e2`; linea `0x7a087e...5eafe0`; linea `0x9e801c...914072`; linea `0xa831a4...703f37`; linea `0xcd5ed0...fba378`; linea `0xce83dd...0970cb`; linea `0xdfd066...8caf71` | ✅ Audited |
| MultisigWallet | governance | linea | n/a | 31 deployments: ethereum `0x65dfac...394090`; ethereum `0xffda60...61e7f5`; bsc `0x430637...6cd41e`; bsc `0x79d1c9...b38e8a`; base `0xf162b6...facf44`; mode `0x4869f4...2f480c`; mode `0x658064...32960e`; mode `0x65dfac...394090`; mode `0x916e5d...ed21cb`; mode `0x9883fa...1ca925`; mode `0xa6420e...3531bb`; mode `0xd491f2...7bcac9`; mode `0xedd6a2...1e3abb`; mode `0xeebb83...6c9051`; mode `0xf162b6...facf44`; mode `0xf5866c...f05c3a`; arbitrum `0x46b20f...fc6379`; arbitrum `0xe9915e...fe7423`; arbitrum `0xf162b6...facf44`; avalanche `0x62f7d5...81e79c`; linea [`0x1a86ff...c56ce5`](./contracts/linea-59144/0x1a86ff397b58db43ab019d336931e6a71cc56ce5/); linea `0x2aed35...938430`; linea `0x305a85...9a6ee9`; linea `0x3280a4...649f37`; linea `0x46b20f...fc6379`; linea `0x7a5912...3a5baf`; linea `0x7d4de6...dd1d9d`; linea `0x80a33f...19b69f`; linea `0xec72d4...9ffcbc`; linea `0xf162b6...facf44`; linea `0xfc57d3...5dec8c` | ✅ Audited |

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| aeWETH | token | arbitrum | n/a | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| BEP20LINK | unknown | bsc | n/a | [`0xf8a0bf...1a51bd`](./contracts/bsc-56/0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd/) | ⚠️ Unaudited |
| BEP20Token | token | bsc | n/a | 2 deployments: bsc [`0x7130d2...3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/); bsc `0xe9e7ce...087d56` | ⚠️ Unaudited |
| BEP20USDT | token | bsc | n/a | [`0x55d398...197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | ⚠️ Unaudited |
| BridgeConfig | operational_periphery | base | n/a | 4 deployments: base [`0xf99f62...88fc24`](./contracts/base-8453/0xf99f62475f50be59393dbdc148e6627e4e88fc24/); mode [`0xf99f62...88fc24`](./contracts/mode-34443/0xf99f62475f50be59393dbdc148e6627e4e88fc24/); arbitrum [`0xf99f62...88fc24`](./contracts/arbitrum-42161/0xf99f62475f50be59393dbdc148e6627e4e88fc24/); linea [`0xf99f62...88fc24`](./contracts/linea-59144/0xf99f62475f50be59393dbdc148e6627e4e88fc24/) | ⚠️ Unaudited |
| BridgeRegistry | unknown | ethereum | n/a | 6 deployments: ethereum [`0x13b72a...626673`](./contracts/ethereum-1/0x13b72a19e221275d3d18ed4d9235f8f859626673/); bsc `0xffda60...61e7f5`; base `0x88af5f...20d66c`; mode `0x88af5f...20d66c`; arbitrum `0x88af5f...20d66c`; linea `0x88af5f...20d66c` | ⚠️ Unaudited |
| ERC20BridgeToken | operational_periphery | avalanche | n/a | [`0x5e0e90...21fb59`](./contracts/avalanche-43114/0x5e0e90e268bc247cc850c789a0db0d5c7621fb59/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | base | n/a | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | n/a | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | n/a | [`0xaf88d0...8e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | avalanche | n/a | [`0xb97ef9...c48a6e`](./contracts/avalanche-43114/0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e/) | ⚠️ Unaudited |
| MasterMinter | unknown | base | n/a | 2 deployments: base [`0x223039...ed52e1`](./contracts/base-8453/0x2230393edad0299b7e7b59f20aa856cd1bed52e1/); avalanche `0xb7887f...82341a` | ⚠️ Unaudited |
| MigrateToken | token | ethereum | n/a | 2 deployments: ethereum [`0x430637...6cd41e`](./contracts/ethereum-1/0x4306374f07382b36aae832a50831c8c5b26cd41e/); bsc `0xd15b99...81520d` | ⚠️ Unaudited |
| MigrateTokenBOBFusionS1 | unknown | ethereum | n/a | [`0xa6420e...3531bb`](./contracts/ethereum-1/0xa6420eba9b8c514a5793429ba2873274a63531bb/) | ⚠️ Unaudited |
| PepeToken | token | arbitrum | n/a | [`0x25d887...aebb00`](./contracts/arbitrum-42161/0x25d887ce7a35172c62febfd67a1856f20faebb00/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | 2 deployments: arbitrum [`0x2f2a25...fc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/); arbitrum `0xf97f4d...539fb4` | ⚠️ Unaudited |
| TBTC | unknown | ethereum | n/a | [`0x18084f...d93a88`](./contracts/ethereum-1/0x18084fba666a33d37592fa2633fd49a74dd93a88/) | ⚠️ Unaudited |
| TeamToken | token | bsc | n/a | [`0x9bf543...defe3c`](./contracts/bsc-56/0x9bf543d8460583ff8a669aae01d9cdbee4defe3c/) | ⚠️ Unaudited |
| TimeLock | unknown | base | n/a | 6 deployments: ethereum `0x858d1d...07d38b`; bsc `0x7a087e...5eafe0`; base [`0x1dcae9...759ab3`](./contracts/base-8453/0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3/); mode [`0x1dcae9...759ab3`](./contracts/mode-34443/0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3/); arbitrum [`0x1dcae9...759ab3`](./contracts/arbitrum-42161/0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3/); linea [`0x1dcae9...759ab3`](./contracts/linea-59144/0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3/) | ⚠️ Unaudited |
| Token | token | bsc | n/a | [`0x795d27...6703f3`](./contracts/bsc-56/0x795d2710e383f33fbebe980a155b29757b6703f3/) | ⚠️ Unaudited |
| WAVAX | unknown | avalanche | n/a | [`0xb31f66...fd66c7`](./contracts/avalanche-43114/0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7/) | ⚠️ Unaudited |
| WETH9 | token | base | n/a | [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | merlin | n/a | 6 deployments: merlin `0x7a087e...5eafe0`; merlin `0x858d1d...07d38b`; merlin `0x88af5f...20d66c`; merlin `0xa831a4...703f37`; merlin `0xc13a12...edcacb`; merlin `0xf162b6...facf44` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa5171f...6f1c9e` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x02111c...dc84f3` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x03c69e...a61154` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x108d36...93835c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x19e64a...d82c2f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x521064...9d88f3` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x57b9b4...03fe4c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x715f26...5bf829` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x950cfb...a2c1dc` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa1c1f6...b40bd6` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe1a512...ade33b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf4a617...273730` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1dcae9...759ab3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1fe74c...6d20e3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3d3f8f...66c6bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4c90c8...38f4cf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x79d1c9...b38e8a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7f2239...cd51c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x88af5f...20d66c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb5dc66...67311a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd96f5d...26a060` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe67640...33291d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xecc6ad...ae08d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf162b6...facf44` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf99f62...88fc24` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xdd7124...9769bf` | ❓ Unverified |

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
| arbitrum | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | aeWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf8a0bf...1a51bd`](./contracts/bsc-56/0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd/) | BEP20LINK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7130d2...3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/) | BEP20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x55d398...197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | BEP20USDT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf99f62...88fc24`](./contracts/base-8453/0xf99f62475f50be59393dbdc148e6627e4e88fc24/) | BridgeConfig | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13b72a...626673`](./contracts/ethereum-1/0x13b72a19e221275d3d18ed4d9235f8f859626673/) | BridgeRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5e0e90...21fb59`](./contracts/avalanche-43114/0x5e0e90e268bc247cc850c789a0db0d5c7621fb59/) | ERC20BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | FiatTokenV2_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaf88d0...8e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb97ef9...c48a6e`](./contracts/avalanche-43114/0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x223039...ed52e1`](./contracts/base-8453/0x2230393edad0299b7e7b59f20aa856cd1bed52e1/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x430637...6cd41e`](./contracts/ethereum-1/0x4306374f07382b36aae832a50831c8c5b26cd41e/) | MigrateToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6420e...3531bb`](./contracts/ethereum-1/0xa6420eba9b8c514a5793429ba2873274a63531bb/) | MigrateTokenBOBFusionS1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x25d887...aebb00`](./contracts/arbitrum-42161/0x25d887ce7a35172c62febfd67a1856f20faebb00/) | PepeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2f2a25...fc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18084f...d93a88`](./contracts/ethereum-1/0x18084fba666a33d37592fa2633fd49a74dd93a88/) | TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9bf543...defe3c`](./contracts/bsc-56/0x9bf543d8460583ff8a669aae01d9cdbee4defe3c/) | TeamToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1dcae9...759ab3`](./contracts/base-8453/0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3/) | TimeLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x795d27...6703f3`](./contracts/bsc-56/0x795d2710e383f33fbebe980a155b29757b6703f3/) | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb31f66...fd66c7`](./contracts/avalanche-43114/0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7/) | WAVAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
