# Agentic Audit Brief: Brotocol

## Project Overview

- Project: Brotocol (`brotocol`)
- Website: [https://brotocol.xyz/](https://brotocol.xyz/)
- Lifecycle: active (Tier 0, 81.8% below peak)
- Generated: 2026-06-17T07:00:46.697Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, bsc, ethereum, linea, merlin, mode
- Contract surface: 43 unique implementations (115 raw deployments)
- DeFi Llama TVL: $6,475,562.48
- On-chain TVL (included contracts): $447,562,617.86
- TVL by chain: Arbitrum $447,485,817.65 | Bsc $76,800.21

## Project Description

Brotocol is a Bitcoin-centric DeFi and bridge aggregation protocol that enables users to move liquidity between Bitcoin, its L2 networks, and EVM chains. It aggregates multiple bridging solutions and provides swap functionality to facilitate cross-chain asset transfers.

### Architecture

All product families share a common bridging architecture using BridgeToken, BridgeRegistry, and BridgeEndpoint contracts, governed by MultisigWallet instances. The Brotocol family provides central configuration via BridgeConfig, while each chain-specific family deploys its own set of core and supporting contracts to manage cross-chain liquidity.

## Contract Surface Quality

- Indexed contracts: 258; live-surface contracts included: 115 (98 live, 17 unknown).
- Excluded by liveness: 143 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 4/23 (17.4%)
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 43
- Raw deployments: 115
- Audits discovered: 14
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $447,562,617.86
- Latest audit: 2025-08 (fresh)
- Staleness: 1 fresh, 6 aging, 5 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CoinFabrik | Tier 2 | 4 | 17.4% | 2025-05 |
| Defence (Thesis) | Tier 2 | 1 | 4.3% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgeEndpoint | operational_periphery | mode | n/a | [`0xa18d96...b2aac9`](./contracts/mode-34443/0xa18d9690d03dfbb18ea85588ec5fd2a914b2aac9/) | ✅ Audited |
| BridgeEndpointWithSwap | operational_periphery | linea | n/a | 5 deployments: ethereum `0xb1c34a...31c94d`; bsc `0x529871...840092`; base `0x18c05e...438fa7`; arbitrum `0x7a5912...3a5baf`; linea [`0x0f38ed...80ce03`](./contracts/linea-59144/0x0f38ed043a1a2ec79b15d7f4fb8d25036680ce03/) | ✅ Audited |
| BridgeToken | operational_periphery | bsc | n/a | 35 deployments: ethereum `0x31761a...233b0b`; ethereum `0x80074f...dfb7cd`; ethereum `0xa831a4...703f37`; bsc [`0x0f38ed...80ce03`](./contracts/bsc-56/0x0f38ed043a1a2ec79b15d7f4fb8d25036680ce03/); bsc `0x18c05e...438fa7`; bsc `0x2e512b...02cbc8`; base `0x7a087e...5eafe0`; mode `0x707272...b257e2`; mode `0x7a087e...5eafe0`; mode `0xd0d1b5...7b192a`; mode `0xdfd066...8caf71`; arbitrum `0x7a087e...5eafe0`; arbitrum `0xa831a4...703f37`; arbitrum `0xdfd066...8caf71`; avalanche `0x152b9d...943e50`; avalanche `0x19860c...8dde98`; avalanche `0x37b608...2e4f76`; avalanche `0x3bd2b1...5b2339`; avalanche `0x49d5c2...c10bab`; avalanche `0x50b754...87b218`; avalanche `0x5947bb...3227a3`; avalanche `0x596fa4...cde0d2`; avalanche `0x63a728...d386d9`; avalanche `0x88128f...b72d42`; avalanche `0x8a0cac...e85cb9`; avalanche `0x8ebaf2...ba8580`; avalanche `0x98443b...690588`; avalanche `0x9eaac1...2f52dc`; avalanche `0xbec243...4b209b`; avalanche `0xc3048e...6e2437`; avalanche `0xc71984...b95118`; avalanche `0xd50128...28f267`; avalanche `0xd586e7...9d8d70`; linea `0x7a087e...5eafe0`; linea `0xdfd066...8caf71` | ✅ Audited |
| MultisigWallet | governance | linea | n/a | 29 deployments: ethereum `0x65dfac...394090`; bsc `0x430637...6cd41e`; base `0xf162b6...facf44`; mode `0x4869f4...2f480c`; mode `0x658064...32960e`; mode `0x65dfac...394090`; mode `0x916e5d...ed21cb`; mode `0x9883fa...1ca925`; mode `0xa6420e...3531bb`; mode `0xd491f2...7bcac9`; mode `0xedd6a2...1e3abb`; mode `0xeebb83...6c9051`; mode `0xf162b6...facf44`; mode `0xf5866c...f05c3a`; arbitrum `0x46b20f...fc6379`; arbitrum `0xe9915e...fe7423`; arbitrum `0xf162b6...facf44`; avalanche `0x62f7d5...81e79c`; linea [`0x1a86ff...c56ce5`](./contracts/linea-59144/0x1a86ff397b58db43ab019d336931e6a71cc56ce5/); linea `0x2aed35...938430`; linea `0x305a85...9a6ee9`; linea `0x3280a4...649f37`; linea `0x46b20f...fc6379`; linea `0x7a5912...3a5baf`; linea `0x7d4de6...dd1d9d`; linea `0x80a33f...19b69f`; linea `0xec72d4...9ffcbc`; linea `0xf162b6...facf44`; linea `0xfc57d3...5dec8c` | ✅ Audited |

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StandardArbERC20 | token | arbitrum | unit-19917 (2 proxies) | 2 deployments: arbitrum [`0x2f2a25...fc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/); arbitrum `0xf97f4d...539fb4` | ⚠️ Unaudited |
| PepeToken | token | arbitrum | n/a | [`0x25d887...aebb00`](./contracts/arbitrum-42161/0x25d887ce7a35172c62febfd67a1856f20faebb00/) | ⚠️ Unaudited |
| Token | token | bsc | n/a | [`0x795d27...6703f3`](./contracts/bsc-56/0x795d2710e383f33fbebe980a155b29757b6703f3/) | ⚠️ Unaudited |
| TeamToken | token | bsc | n/a | [`0x9bf543...defe3c`](./contracts/bsc-56/0x9bf543d8460583ff8a669aae01d9cdbee4defe3c/) | ⚠️ Unaudited |
| aeWETH | token | arbitrum | unit-19918 | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| BEP20LINK | unknown | bsc | n/a | [`0xf8a0bf...1a51bd`](./contracts/bsc-56/0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd/) | ⚠️ Unaudited |
| BEP20Token | token | bsc | n/a | 2 deployments: bsc [`0x7130d2...3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/); bsc `0xe9e7ce...087d56` | ⚠️ Unaudited |
| BEP20USDT | token | bsc | n/a | [`0x55d398...197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | ⚠️ Unaudited |
| BridgeConfig | operational_periphery | base | n/a | 4 deployments: base [`0xf99f62...88fc24`](./contracts/base-8453/0xf99f62475f50be59393dbdc148e6627e4e88fc24/); mode [`0xf99f62...88fc24`](./contracts/mode-34443/0xf99f62475f50be59393dbdc148e6627e4e88fc24/); arbitrum [`0xf99f62...88fc24`](./contracts/arbitrum-42161/0xf99f62475f50be59393dbdc148e6627e4e88fc24/); linea [`0xf99f62...88fc24`](./contracts/linea-59144/0xf99f62475f50be59393dbdc148e6627e4e88fc24/) | ⚠️ Unaudited |
| ERC20BridgeToken | operational_periphery | avalanche | n/a | [`0x5e0e90...21fb59`](./contracts/avalanche-43114/0x5e0e90e268bc247cc850c789a0db0d5c7621fb59/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | base | unit-19916 | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | unit-19915 | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | unit-19919 | [`0xaf88d0...8e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | avalanche | unit-19920 | [`0xb97ef9...c48a6e`](./contracts/avalanche-43114/0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e/) | ⚠️ Unaudited |
| MasterMinter | unknown | base | n/a | 2 deployments: base [`0x223039...ed52e1`](./contracts/base-8453/0x2230393edad0299b7e7b59f20aa856cd1bed52e1/); avalanche `0xb7887f...82341a` | ⚠️ Unaudited |
| MigrateToken | token | ethereum | n/a | [`0x430637...6cd41e`](./contracts/ethereum-1/0x4306374f07382b36aae832a50831c8c5b26cd41e/) | ⚠️ Unaudited |
| TBTC | unknown | ethereum | n/a | [`0x18084f...d93a88`](./contracts/ethereum-1/0x18084fba666a33d37592fa2633fd49a74dd93a88/) | ⚠️ Unaudited |
| WAVAX | unknown | avalanche | n/a | [`0xb31f66...fd66c7`](./contracts/avalanche-43114/0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7/) | ⚠️ Unaudited |
| WETH9 | token | base | n/a | [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | merlin | n/a | `0x7a087e...5eafe0` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0x858d1d...07d38b` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0x88af5f...20d66c` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0xa831a4...703f37` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0xc13a12...edcacb` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0xf162b6...facf44` | ❓ Unverified |
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
| UnnamedContract | unknown | avalanche | n/a | `0xd96f5d...26a060` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf162b6...facf44` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf99f62...88fc24` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2022-12 Bridge Endpoints](https://cdn.xlink.network/pdf/ALEX_Audit_bridge_coinfabrik_202212.pdf) | CoinFabrik | Audit | 2022-12 | stale | Direct | contract_name | 1 | high |
| [2023-04 Bridge Backend and Endpoints](https://cdn.xlink.network/pdf/ALEX_Audit_Bridge_2023-04.pdf) | CoinFabrik | Audit | 2023-04 | stale | Direct | contract_name | 1 | high |
| [2023-10 Bitcoin Oracle and Bridge](https://cdn.xlink.network/pdf/ALEX_Audit_202310_Bitcoin_Oracle_and_Bridge.pdf) | CoinFabrik | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [2024-06 BridgeEndpoint, BridgeRegistry and BridgeEndpointWithAxelar](https://cdn.xlink.network/pdf/XLink_Bridge_Endpoint_Audit_2024-06.pdf) | CoinFabrik | Audit | 2024-06 | stale | Direct | contract_name | 1 | high |
| [2024-06 MultisigWallet and BridgeToken](https://cdn.xlink.network/pdf/XLink_MultisigWallet_BridgeToken_2024-06.pdf) | CoinFabrik | Audit | 2024-06 | stale | Direct | contract_name | 64 | high |
| [2024-11 Brotocol Staking Manager](https://cdn.xlink.network/pdf/XLINK_Staking_Audit_2024_11_final.pdf) | CoinFabrik | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [2024-11 Brotocol Peg-out Endpoints](https://cdn.xlink.network/pdf/XLINK_Peg-out_Endpoints_Audit%2011-2024.pdf) | CoinFabrik | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [2024-11 Brotocol Peg-in Endpoints](https://cdn.xlink.network/pdf/XLINK_Peg-in_Endpoints_Audit_11-2024.pdf) | CoinFabrik | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [2025-03 Endpoint Update](https://cdn.brotocol.xyz/pdf/XLink_Endpoits_Update_Audit_2025-03.pdf) | CoinFabrik | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [2025-04 EVM Endpoints](https://cdn.brotocol.xyz/pdf/XLink_EVM_Endpoint_Audit_2025-04.pdf) | CoinFabrik | Audit | 2025-04 | aging | Direct | contract_name | 5 | high |
| [2025-05 Solana Endpoints](https://cdn.brotocol.xyz/pdf/XLINK_Solana_Endpoint_Audit_2025-05.pdf) | CoinFabrik | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [2025-08 EVM BridgeEndpoint](https://cdn.brotocol.xyz/pdf/250825_Defense_by_Thesis_Brotocol_BridgeEndPoint_Smart_Contract.pdf) | Defence (Thesis) | Audit | 2025-08 | fresh | Direct | contract_name | 1 | high |
| [Brotocol is audited by [CoinFabrik]() and [Defence](https://thesis.co/defense), covering both the contracts and the backends.](https://www.coinfabrik.com/) | CoinFabrik | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Brotocol is audited by [CoinFabrik](https://www.coinfabrik.com/) and [Defence](), covering both the contracts and the backends.](https://thesis.co/defense) | Defence | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x795d27...6703f3`](./contracts/bsc-56/0x795d2710e383f33fbebe980a155b29757b6703f3/) | Token | token | $54,865.21 | Verified native implementation with $54,865.21 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9bf543...defe3c`](./contracts/bsc-56/0x9bf543d8460583ff8a669aae01d9cdbee4defe3c/) | TeamToken | token | $21,935.00 | Verified native implementation with $21,935.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf99f62...88fc24`](./contracts/base-8453/0xf99f62475f50be59393dbdc148e6627e4e88fc24/) | BridgeConfig | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5e0e90...21fb59`](./contracts/avalanche-43114/0x5e0e90e268bc247cc850c789a0db0d5c7621fb59/) | ERC20BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x430637...6cd41e`](./contracts/ethereum-1/0x4306374f07382b36aae832a50831c8c5b26cd41e/) | MigrateToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 12 |
| standard_library | 1 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=224

Zero-match audit list:

- [11554] 2023-10 Bitcoin Oracle and Bridge
- [11557] 2024-11 Brotocol Staking Manager
- [11558] 2024-11 Brotocol Peg-out Endpoints
- [11559] 2024-11 Brotocol Peg-in Endpoints
- [11560] 2025-03 Endpoint Update
- [11562] 2025-05 Solana Endpoints
- [11564] Brotocol is audited by [CoinFabrik]() and [Defence](https://thesis.co/defense), covering both the contracts and the backends.
- [11565] Brotocol is audited by [CoinFabrik](https://www.coinfabrik.com/) and [Defence](), covering both the contracts and the backends.

Fork inheritance lineage and inherited audits are included when available.
