# Agentic Audit Brief: SynFutures

## Project Overview

- Project: SynFutures (`synfutures`)
- Website: [https://www.synfutures.com/](https://www.synfutures.com/)
- Lifecycle: active (Tier 0, 91.2% below peak)
- Generated: 2026-05-23T12:38:12.892Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: arbitrum, base, blast, bsc, ethereum, polygon
- Contract surface: 482 unique implementations (486 raw deployments)
- DeFi Llama TVL: $6,311,913.00
- On-chain TVL (included contracts): $52,438,726.49
- TVL by chain: Ethereum $51,469,366.33 | Bsc $969,360.15

## Project Description

SynFutures is a decentralized derivatives protocol enabling permissionless futures and options trading on multiple chains. It provides an automated market maker (AMM) model for synthetic assets, allowing users to trade and provide liquidity without intermediaries.

### Architecture

SynFutures V3 is the active product family, with multiple proxy contracts pointing to shared implementation contracts (e.g., 0xc4f801..., 0xb19e3a..., 0xc7b285...) that serve as the core AMM and market logic. Supporting contracts include various market-specific or auxiliary implementations, while V1 and V2 remain as legacy, isolated deployments.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 1
- Unverified implementations: 477
- Unique implementations: 482
- Raw deployments: 486
- Audits discovered: 4
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $52,438,726.49
- Latest audit: 2025-02 (aging)
- Staleness: 0 fresh, 1 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SynFuturesToken | token | ethereum | 2 deployments: ethereum [`0x4b2853...c78857`](./contracts/ethereum-1/0x4b28532fb636bab662fff29d56d133c3d9c78857/); ethereum `0x6e15a5...0252f9` | ⚠️ Unaudited |
| SynFuturesTokenOFT | token | bsc | [`0xc9ccbd...04d3bb`](./contracts/bsc-56/0xc9ccbd76c2353e593cc975f13295e8289d04d3bb/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | [`0x2c2449...2e6ed6`](./contracts/base-8453/0x2c24497d4086490e7ead87cc12597fb50c2e6ed6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | base | 2 deployments: base [`0x7ef84c...df33ac`](./contracts/base-8453/0x7ef84cbe4ef6899a4c4f1b006597da6d14df33ac/); base `0x996f26...bd8130` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SynFuturesStakingVault | unknown | base | 3 deployments: ethereum `0x8bcf78...273fbf`; ethereum `0x93432a...94cf05`; base [`0x424615...c43552`](./contracts/base-8453/0x4246150231a8cf58180f7a848f2c5b73e6c43552/) | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (477)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x0045468e066d537c5ff2f21848e4ba560ae328a1) | proxy | base | `0xb85b77...32c751` | ❓ Unverified |
| Proxy (impl: 0x00e2dd97927263023002c544cd0b0d138b4f24b9) | proxy | blast | `0x730d6a...6ac194` | ❓ Unverified |
| Proxy (impl: 0x01da06e0766b4424f6c8504296f657c4ae258ff6) | proxy | base | `0x5eb834...57ee29` | ❓ Unverified |
| Proxy (impl: 0x05f322b9684159c5fb1504b95c629f394f4143b4) | proxy | base | `0x730d6a...6ac194` | ❓ Unverified |
| Proxy (impl: 0x0c7f6fc8bc2a63e2aa94c1b874c191892f3dbc2b) | proxy | base | `0x769b23...320fb6` | ❓ Unverified |
| Proxy (impl: 0x0ca8a35e2e058285604e4d766f82a751bf17e2e4) | proxy | base | `0xc37ead...1384ba` | ❓ Unverified |
| Proxy (impl: 0x0db5ba6294abc1329dbe20433f69699005b2cd29) | proxy | base | `0x12a660...b8cc09` | ❓ Unverified |
| Proxy (impl: 0x0db5ba6294abc1329dbe20433f69699005b2cd29) | proxy | blast | `0x12a660...b8cc09` | ❓ Unverified |
| Proxy (impl: 0x10b4c55046d1ca88d605feea3415d1d296445fc3) | proxy | base | `0xdb166a...b2a830` | ❓ Unverified |
| Proxy (impl: 0x1366acb16580b4971afb3c6770f0c451e05127e6) | proxy | base | `0x5510bc...b9d150` | ❓ Unverified |
| Proxy (impl: 0x14e0cab98a742e01c2786906a3fabc0c1d8072b9) | proxy | base | `0x6926cc...2c0b18` | ❓ Unverified |
| Proxy (impl: 0x1b91f44e8c5d584839000111392095785914e621) | proxy | base | `0x8f7692...1e81cd` | ❓ Unverified |
| Proxy (impl: 0x1d430032700a2e4a763a4f2d88404bed859cdeae) | proxy | base | `0x4a5ef7...5adc08` | ❓ Unverified |
| Proxy (impl: 0x1d430032700a2e4a763a4f2d88404bed859cdeae) | proxy | blast | `0x4a5ef7...5adc08` | ❓ Unverified |
| Proxy (impl: 0x1e43f25ff6f6cf888b0a83f0ca5fcc76f1c95e00) | proxy | base | `0xbe0f37...0bd87e` | ❓ Unverified |
| Proxy (impl: 0x228f51f5f6ae1349674c2d5c37e1caa111f14455) | proxy | base | `0x0b54c5...bf4d1d` | ❓ Unverified |
| Proxy (impl: 0x2d22195756a0a8a39fe09d6857df7d67df62e5f3) | proxy | base | `0x3bc7ad...ee3b76` | ❓ Unverified |
| Proxy (impl: 0x2d22195756a0a8a39fe09d6857df7d67df62e5f3) | proxy | blast | `0x3bc7ad...ee3b76` | ❓ Unverified |
| Proxy (impl: 0x43e5a334ae4ab170e1f27e2bec7542938aee8c95) | proxy | base | `0xc003fa...4a47d1` | ❓ Unverified |
| Proxy (impl: 0x4d605e57510dc81103c6bd363a11fe00a98b88e7) | proxy | base | `0x034a4f...a08123` | ❓ Unverified |
| Proxy (impl: 0x503f83dd26e335c219d8fd889b14281456b140e6) | proxy | base | `0xb3a590...901663` | ❓ Unverified |
| Proxy (impl: 0x53bf62d84131cac36eaf3954473a54fb2791a12c) | proxy | base | `0xefb4fc...4b914c` | ❓ Unverified |
| Proxy (impl: 0x5b33f9ad07a8f807a2765896133c41b146e38ca1) | proxy | base | `0xc3ec13...a5725e` | ❓ Unverified |
| Proxy (impl: 0x5e63b810fde2a2a191c0b2e76bab62f253d3f606) | proxy | base | `0x6f26b4...a5739a` | ❓ Unverified |
| Proxy (impl: 0x5ee78082b1947a8a418f1a599041d157e2c5c886) | proxy | blast | `0x409204...e6fba7` | ❓ Unverified |
| Proxy (impl: 0x6ed3551a5482daa5313053278d6c17bd63542bbd) | proxy | base | `0xba2593...91f3d9` | ❓ Unverified |
| Proxy (impl: 0x727b0fe01214fdfabba7d85ffdf83884d244b837) | proxy | base | `0x3af980...439db2` | ❓ Unverified |
| Proxy (impl: 0x7845ebd12886359767bf7933d33e9f875328e9fa) | proxy | base | `0x2bcc72...69ed96` | ❓ Unverified |
| Proxy (impl: 0x83ce7c1de6d6e039e4cb0ef331e1d5e615399795) | proxy | blast | `0xc003fa...4a47d1` | ❓ Unverified |
| Proxy (impl: 0x8559deffa541ff83eae7d7ef0271fa3da0a5b239) | proxy | base | `0xa42c6f...8c8d2f` | ❓ Unverified |
| Proxy (impl: 0x952d026c3a47b55f9c1a3c81a6c6e3c492d8ab74) | proxy | polygon | `0x2b0da5...ecf8f1` | ❓ Unverified |
| Proxy (impl: 0x9880dc031e993afdb8268142306f23075f18c36f) | proxy | base | `0x8be83f...329f1c` | ❓ Unverified |
| Proxy (impl: 0xa18581168f42c9ff0423213d3205fcf6adf795b5) | proxy | base | `0x94cb98...08cbc7` | ❓ Unverified |
| Proxy (impl: 0xa49b3fdca2ec1ec9dd49a754d4c8f2ae7479aa79) | proxy | blast | `0x19bac6...aaf33a` | ❓ Unverified |
| Proxy (impl: 0xb19e3a35c12723bc8f81bbd7321b92803ce2b3d7) | proxy | base | `0x666f50...d9e997` | ❓ Unverified |
| Proxy (impl: 0xb19e3a35c12723bc8f81bbd7321b92803ce2b3d7) | proxy | base | `0x89c2e7...661a50` | ❓ Unverified |
| Proxy (impl: 0xb19e3a35c12723bc8f81bbd7321b92803ce2b3d7) | proxy | base | `0x90471f...71cec6` | ❓ Unverified |
| Proxy (impl: 0xb19e3a35c12723bc8f81bbd7321b92803ce2b3d7) | proxy | base | `0x9285aa...e20e26` | ❓ Unverified |
| Proxy (impl: 0xb19e3a35c12723bc8f81bbd7321b92803ce2b3d7) | proxy | base | `0xabc244...dbdb3f` | ❓ Unverified |
| Proxy (impl: 0xb19e3a35c12723bc8f81bbd7321b92803ce2b3d7) | proxy | base | `0xb39c83...d1ea45` | ❓ Unverified |
| Proxy (impl: 0xb19e3a35c12723bc8f81bbd7321b92803ce2b3d7) | proxy | base | `0xcdf971...1ec11b` | ❓ Unverified |
| Proxy (impl: 0xb19e3a35c12723bc8f81bbd7321b92803ce2b3d7) | proxy | base | `0xfdc1bb...1ce4ba` | ❓ Unverified |
| Proxy (impl: 0xb3e1fc2d08812dbfecd658bc60fe182cd6e01c4c) | proxy | blast | `0x938fbb...07840f` | ❓ Unverified |
| Proxy (impl: 0xb5b2983e25292ad406c5d915235b14fec871c8c1) | proxy | blast | `0x29c4c7...1c3f26` | ❓ Unverified |
| Proxy (impl: 0xb7ce7bd01a05b020058bc11be34d988edcfe42af) | proxy | base | `0xe73d81...dcf8aa` | ❓ Unverified |
| Proxy (impl: 0xbe621092b1a17ea66ccff0c4703f6750fc61ff3b) | proxy | base | `0x9b0fcc...f9bd36` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | proxy | base | `0x04d72f...330749` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | proxy | base | `0x116752...d1c8b4` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | proxy | base | `0x200e09...36fa6c` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | proxy | base | `0x206a0a...1c61df` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | proxy | base | `0x32bdb0...a51425` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | proxy | base | `0x3737b9...12b0c2` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | proxy | base | `0x38c4c6...ab4a81` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | proxy | base | `0x3dc806...f6ed9d` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | proxy | base | `0x46d7ea...ae383b` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | proxy | base | `0x53aafe...3fb569` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | proxy | base | `0x53e90a...3930ee` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | proxy | base | `0x55de64...6e0e2d` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | proxy | base | `0x620d1d...cd3952` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | proxy | base | `0x62ba13...ab18b0` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | proxy | base | `0x62d010...4f4faa` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | proxy | base | `0x75da1f...aff14f` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | proxy | base | `0x7c83c8...394ded` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | proxy | base | `0x8065b6...610912` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | proxy | base | `0x899194...cf373b` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | proxy | base | `0x9674e2...d44959` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | proxy | base | `0x9c57b8...dce0b5` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | proxy | base | `0x9f824a...a441db` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | proxy | base | `0xb146f1...1488dc` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | proxy | base | `0xb41303...e4b6dd` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | proxy | base | `0xec6c44...e71460` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | proxy | base | `0xf8559f...f9a568` | ❓ Unverified |
| Proxy (impl: 0xc7b285e11602c7c652951f3cc1da0bccc12b24b7) | proxy | blast | `0x0e1b87...eb53d8` | ❓ Unverified |
| Proxy (impl: 0xc7b285e11602c7c652951f3cc1da0bccc12b24b7) | proxy | blast | `0x245bb4...fabb7a` | ❓ Unverified |
| Proxy (impl: 0xc7b285e11602c7c652951f3cc1da0bccc12b24b7) | proxy | blast | `0x543056...cabea7` | ❓ Unverified |
| Proxy (impl: 0xc7b285e11602c7c652951f3cc1da0bccc12b24b7) | proxy | blast | `0x99660f...f9c9c6` | ❓ Unverified |
| Proxy (impl: 0xc7b285e11602c7c652951f3cc1da0bccc12b24b7) | proxy | blast | `0xb0ceff...0ad286` | ❓ Unverified |
| Proxy (impl: 0xc7b285e11602c7c652951f3cc1da0bccc12b24b7) | proxy | blast | `0xeb9e88...b20ff8` | ❓ Unverified |
| Proxy (impl: 0xd046a47e0c3fa89877a0aebec014e90fa43ba439) | proxy | blast | `0xb85b77...32c751` | ❓ Unverified |
| Proxy (impl: 0xe7cd14018f3b5020aeb5c50188176c26f9f8e79a) | proxy | base | `0x8f93fd...1d5b36` | ❓ Unverified |
| Proxy (impl: 0xf20876a9923bd23b42fedb98bafc28f3e94ac8eb) | proxy | base | `0x245bb4...fabb7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x41576f...c54580` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4f6eee...dad46e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x67497b...3f9f3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6e893d...1bf9a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8aee67...934b9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x928e85...1b8f04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9fdf25...91b0a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf18960...94149b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf81ee8...42a493` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0000d0...083b5e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1267c6...0edd73` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x36afdd...017188` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x41576f...c54580` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4f6eee...dad46e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x67497b...3f9f3c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6e893d...1bf9a9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7ce2e1...8dce21` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x84de4d...cbe2d0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8aee67...934b9d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x928e85...1b8f04` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x952d02...d8ab74` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x98e567...b85a1b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9fdf25...91b0a3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc0a10f...a90a52` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf18960...94149b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf81ee8...42a493` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x004546...e328a1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x007754...bcbd4b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x00da3a...79f096` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x00e2dd...4f24b9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x00edbc...0b14cf` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x019d5d...f421db` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x01da06...258ff6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x03f2e7...e2816c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x055658...dcd047` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x056572...16eb7e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x05f322...4143b4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x062436...23f65f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x07a28b...bd62b4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0a2e09...f4a62c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0c4428...7c9fcc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0c7f6f...3dbc2b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0ca8a3...17e2e4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0db5ba...b2cd29` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0dea16...cf0ed7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x10b4c5...445fc3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x10d871...dc9454` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x114507...fd02dc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x130d35...246ed6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1366ac...5127e6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x14e0ca...8072b9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x17f815...814013` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x17fbe1...c58adf` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x187d79...008c78` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x19bac6...aaf33a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1ae92f...b472dc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1b1f9a...8b4276` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1b8267...a5879f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1b91f4...14e621` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1b95bd...205c36` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1d19fd...03ac1f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1d4300...9cdeae` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1e43f2...c95e00` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x208b44...071270` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x224818...37b506` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x228f51...f14455` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x26abc9...323af2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x286dd8...caffa5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x29c4c7...1c3f26` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x29ee09...114d54` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2ac509...572d9f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2bbc2c...f84a7e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2c57e8...86d18f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2cf5f5...24b85a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2d2219...62e5f3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x30c94e...874397` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x344741...a9099b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3481b0...123a67` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x351942...9552ee` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x35614e...2977bb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x35a55f...2119fb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x36f091...edd99f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3914f4...f5fb3c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3a85f3...79def8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x421642...5583bf` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x43e5a3...ee8c95` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x450483...0f7688` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x46e45d...967180` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x47ab1e...b1d6fb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4968e9...2987e5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x49b9b3...fbc1ec` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x49be45...934616` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4a96fd...cd94c1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4bbc0f...c0334b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4d605e...8b88e7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4dd076...f0858e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x503f83...b140e6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x51fc59...7fae86` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5437a7...5e4f81` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x549926...29a40a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x54bc4a...7bf78d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x55e76d...ff9410` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x561a3d...bf1f7d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5850c2...51ee27` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x58eb7b...dc106b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5a0117...0fcbd1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5b33f9...e38ca1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5d1ebb...422bcc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5d2ea7...e67b74` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5e2de6...6fc317` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5e63b8...d3f606` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5ee780...c5c886` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x62a31d...5bf3cc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x632cb6...1278c6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x646284...10f7ad` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x661a9b...e00a3f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6705c2...0e3c51` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x672df9...7de110` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x693307...e49dc1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6970ca...8e19e9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6a372d...72c257` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6adf8b...4b3afe` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6c0f90...47c574` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6c8203...bee8ab` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6cfb0c...6bccd4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6e5b87...82d2f4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6ed355...542bbd` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6f1e74...748ff5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6f9019...db222c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6fc712...2f3fd3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x727b0f...44b837` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x744499...c929a1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x76a51e...875c9b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x77ff90...5862c5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7845eb...28e9fa` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7917bf...ca7dd0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7c3960...7be4b7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7cbb40...2e7b59` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7ff25e...b27796` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x81a391...8d276e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x854330...e1cb8d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x85b9ed...a00f8c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x860555...fbde94` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x86eb76...7b1511` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8926b1...849444` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8a5355...641915` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8a8bac...81cd26` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8bafd6...3d6163` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8c3867...bb3f7b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x907ed8...11b9db` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x910517...dd2112` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x92bbc2...8eccfa` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x938fbb...07840f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9467ae...a9ef80` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9880dc...18c36f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x98d584...953707` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x995000...e21324` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9a7caf...cc9960` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9abb2e...4708ee` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9b0684...bc914e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9b1608...c5bcac` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9c7038...cb5187` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9ffe20...52d770` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa18581...f795b5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa3480b...920467` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa44561...e7531a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa49b3f...79aa79` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa901e7...c64134` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xaaea67...80ef8d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xae5b10...bd83dd` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xaebe4e...f8d942` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb1838d...4879c3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb28922...3437e2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb373ef...8fe043` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb3b27a...223c59` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb3e1fc...e01c4c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb4b678...c8eb85` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb5b298...71c8c1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb61986...7a5e7c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb63902...fea172` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb7ce7b...fe42af` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb9420f...293a7e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb97e69...a5326a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbae2c4...f70b4b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbb74bb...9e2e37` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbbe724...015eb7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbcc19e...fa8ee7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbe4af4...e2ed5b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbe6210...61ff3b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbe6d5c...09e60b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbf35bb...aca536` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc3365f...541fed` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc3dd4b...00a280` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc3e38e...6942b3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc4f801...855272` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc73dac...a63fa6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc77c77...bd3ca8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc7b285...2b24b7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcae2c6...b625f8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcc7d03...b8b69d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xccec32...b62855` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcf5655...f7f4b4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd046a4...3ba439` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd2180e...444e8f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd25a40...0c8b15` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd3c461...71fe8a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd45fb0...404bd1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd51452...1a54a2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd6c30d...ebf7bb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd964e4...42a111` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd9b7ee...3a9947` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdaec96...9be2ce` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdbe8ad...66e89d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdd42b6...0ec940` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xde58f3...bf5313` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe07807...ded051` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe1927c...f1b23b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe1f29f...cd9fcd` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe25ddb...3efea5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe48218...68fa2e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe551db...a4aa6d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe64616...bf7ff5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe6f9de...87450f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe93d50...d09067` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xeb2f7e...f41416` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xebb397...378318` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xec629d...d91d9b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xefdb53...26d70d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf0a58c...4b6ca8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf0e06b...3b15bc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf20876...4ac8eb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf45d60...7620d7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf6b705...7e92ea` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf7e3c2...52722e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf83ff7...21d6de` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfb2206...5d2018` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfd1cce...08d2fe` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfdf9f9...8deaa3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfe0a67...61118b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x138f7c...9a072d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1c8f6a...a27baf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1e7db4...5cbff8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x33e074...722db4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4e650e...c34248` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8a217b...c237c5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa2bae3...3e15c5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb8856b...764f2c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbd791a...814a34` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf86404...d7a35e` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x004546...e328a1` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x007754...bcbd4b` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x00e2dd...4f24b9` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x01da06...258ff6` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x034a4f...a08123` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x03f2e7...e2816c` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x056572...16eb7e` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x05f322...4143b4` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x07a28b...bd62b4` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x0a2e09...f4a62c` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x0b54c5...bf4d1d` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x0c7f6f...3dbc2b` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x0db5ba...b2cd29` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x0dea16...cf0ed7` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x10b4c5...445fc3` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x114507...fd02dc` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x130d35...246ed6` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x1366ac...5127e6` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x14e0ca...8072b9` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x17fbe1...c58adf` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x187d79...008c78` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x1b91f4...14e621` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x1d4300...9cdeae` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x208b44...071270` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x224818...37b506` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x228f51...f14455` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x26abc9...323af2` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x2ac509...572d9f` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x2c57e8...86d18f` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x2cf5f5...24b85a` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x2d2219...62e5f3` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x30c94e...874397` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x3481b0...123a67` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x351942...9552ee` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x35614e...2977bb` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x35a55f...2119fb` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x36f091...edd99f` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x3914f4...f5fb3c` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x3a85f3...79def8` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x3af980...439db2` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x43e5a3...ee8c95` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x49b9b3...fbc1ec` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x49be45...934616` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x4a96fd...cd94c1` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x4d605e...8b88e7` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x4dd076...f0858e` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x51fc59...7fae86` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x5437a7...5e4f81` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x549926...29a40a` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x5510bc...b9d150` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x55e76d...ff9410` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x5850c2...51ee27` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x58eb7b...dc106b` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x5a0117...0fcbd1` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x5b33f9...e38ca1` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x5d1ebb...422bcc` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x5e2de6...6fc317` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x5e63b8...d3f606` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x5eb834...57ee29` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x5ee780...c5c886` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x62f2d5...9316e8` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x646284...10f7ad` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x661a9b...e00a3f` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x6705c2...0e3c51` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x6926cc...2c0b18` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x6a372d...72c257` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x6adf8b...4b3afe` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x6c0f90...47c574` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x6c8203...bee8ab` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x6e5b87...82d2f4` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x6ed355...542bbd` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x6f1e74...748ff5` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x6f26b4...a5739a` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x6fc712...2f3fd3` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x727b0f...44b837` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x744499...c929a1` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x769b23...320fb6` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x7917bf...ca7dd0` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x7ef84c...df33ac` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x7ff25e...b27796` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x81a391...8d276e` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x854330...e1cb8d` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x86eb76...7b1511` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x8a8bac...81cd26` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x8f7692...1e81cd` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x8f93fd...1d5b36` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x910517...dd2112` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x9285aa...e20e26` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x9674e2...d44959` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x9b0684...bc914e` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x9c7038...cb5187` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x9f6a95...1c9bf4` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xa42c6f...8c8d2f` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xa44561...e7531a` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xa49b3f...79aa79` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xa901e7...c64134` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xaaea67...80ef8d` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xaebe4e...f8d942` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xb1838d...4879c3` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xb373ef...8fe043` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xb3b27a...223c59` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xb3e1fc...e01c4c` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xb5b298...71c8c1` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xb61986...7a5e7c` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xb63902...fea172` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xb7ce7b...fe42af` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xb9420f...293a7e` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xba2593...91f3d9` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xbcc19e...fa8ee7` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xbe0f37...0bd87e` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xbe4af4...e2ed5b` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xbe6d5c...09e60b` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xc37ead...1384ba` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xc3dd4b...00a280` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xc3ec13...a5725e` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xc7b285...2b24b7` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xccec32...b62855` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xd046a4...3ba439` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xd25a40...0c8b15` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xd3c461...71fe8a` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xd51452...1a54a2` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xd6c30d...ebf7bb` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xd964e4...42a111` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xd9b7ee...3a9947` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xdaec96...9be2ce` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xdb166a...b2a830` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xdd42b6...0ec940` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xde58f3...bf5313` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xe07807...ded051` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xe1f29f...cd9fcd` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xe25ddb...3efea5` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xe48218...68fa2e` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xe551db...a4aa6d` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xe6f9de...87450f` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xe73d81...dcf8aa` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xebb397...378318` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xec629d...d91d9b` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xefb4fc...4b914c` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xf0a58c...4b6ca8` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xf0e06b...3b15bc` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xf20876...4ac8eb` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xf45d60...7620d7` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xf7e3c2...52722e` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xfb2206...5d2018` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xfd1cce...08d2fe` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xfdf9f9...8deaa3` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xfe0a67...61118b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://www.synfutures.com/peckshield-audit-report-synfutures-v1.1.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | n/a | 0 | n/a |
| [DL audit link](https://www.synfutures.com/PeckShield-Audit-Report-SynFuturesV2-v1.0.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [DL audit link](https://www.synfutures.com/Quantstamp-Audit-Report-SynFuturesV3.pdf) | Quantstamp | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [here](https://www.synfutures.com/PeckShield-Audit-Report-Oyster-v1.0.pdf) | PeckShield | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4b2853...c78857`](./contracts/ethereum-1/0x4b28532fb636bab662fff29d56d133c3d9c78857/) | SynFuturesToken | token | $51,437,122.43 | Verified native implementation with $51,437,122.43 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 110 |
| upstream | 8 |
| standard_library | 1 |
| needs_review | 363 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2297] DL audit link
- [2298] DL audit link
- [2299] DL audit link
- [2300] here

Fork inheritance lineage and inherited audits are included when available.
