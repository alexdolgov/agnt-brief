# Agentic Audit Brief: deBridge

⚠️ Lifecycle status: DECLINING - TVL dropped 85.5% over 90 days

## Project Overview

- Project: deBridge (`debridge`)
- Website: [https://app.debridge.com/r/32425](https://app.debridge.com/r/32425)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-30T10:47:39.145Z
- Pipeline run: v2-pipeline-2026-05-30-255779-2e4e
- Chains: arbitrum, avalanche, base, bsc, cronos, ethereum, hyperliquid, linea, optimism, polygon, sei
- Contract surface: 161 unique implementations (436 raw deployments)
- DeFi Llama TVL: $3,812,745.79
- On-chain TVL (included contracts): $263,879,740.52
- TVL by chain: Bsc $263,879,740.52

## Project Description

deBridge is a cross-chain interoperability protocol that enables users to transfer assets and arbitrary messages between multiple blockchains. It provides a decentralized bridge infrastructure with liquidity networks and validation mechanisms to facilitate secure and efficient cross-chain transactions.

### Architecture

The EVM Bridge Core provides foundational cross-chain messaging and token infrastructure, which the DLN Liquidity Network leverages for routing and executing user swaps. Both families share common proxy patterns and rely on SignatureVerifier for validation, while the Subscription module operates independently for recurring payments.

## Audit Coverage Summary

- Verified implementations audited: 13/21 (61.9%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 5
- Unverified implementations: 140
- Unique implementations: 161
- Raw deployments: 436
- Audits discovered: 68
- Scoreable audits (matched contracts): 20
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/debridge/information))
- ASD (verified + unaudited TVL): $263,879,740.52
- Latest audit: 2024-11 (aging)
- Staleness: 0 fresh, 5 aging, 27 stale, 35 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $263,879,740.52 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 12 | 57.1% | 2024-11 |
| Halborn | Tier 2 | 9 | 42.9% | 2023-10 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BatchBalance | periphery | ethereum | 5 deployments: ethereum [`0x501886...98c814`](./contracts/ethereum-1/0x50188692d5549386d102642036bab916b998c814/); bsc [`0x501886...98c814`](./contracts/bsc-56/0x50188692d5549386d102642036bab916b998c814/); polygon [`0x501886...98c814`](./contracts/polygon-137/0x50188692d5549386d102642036bab916b998c814/); arbitrum [`0x501886...98c814`](./contracts/arbitrum-42161/0x50188692d5549386d102642036bab916b998c814/); avalanche `0x55c93b...91654a` | ✅ Audited |
| CallProxy | unknown | ethereum | 39 deployments: ethereum [`0x0c4b79...e3b67a`](./contracts/ethereum-1/0x0c4b79205f6cc20c0e0201b61b99e77f3ce3b67a/); ethereum `0x4e446b...41c391`; ethereum `0x752a9e...861fef`; ethereum `0x8a0c79...28a824`; ethereum `0xbd3d65...a9b6f8`; ethereum `0xd5317e...c7d63b`; ethereum `0xe5a04b...845c7e`; optimism `0x4e446b...41c391`; optimism `0x8a0c79...28a824`; bsc [`0x0c4b79...e3b67a`](./contracts/bsc-56/0x0c4b79205f6cc20c0e0201b61b99e77f3ce3b67a/); bsc `0x4e446b...41c391`; bsc `0x752a9e...861fef`; bsc `0x8a0c79...28a824`; bsc `0xbd3d65...a9b6f8`; bsc `0xd5317e...c7d63b`; bsc `0xe5a04b...845c7e`; polygon [`0x0c4b79...e3b67a`](./contracts/polygon-137/0x0c4b79205f6cc20c0e0201b61b99e77f3ce3b67a/); polygon `0x4e446b...41c391`; polygon `0x752a9e...861fef`; polygon `0x8a0c79...28a824`; polygon `0xbd3d65...a9b6f8`; polygon `0xd5317e...c7d63b`; polygon `0xe5a04b...845c7e`; base `0x4e446b...41c391`; base `0x8a0c79...28a824`; arbitrum [`0x0c4b79...e3b67a`](./contracts/arbitrum-42161/0x0c4b79205f6cc20c0e0201b61b99e77f3ce3b67a/); arbitrum `0x4e446b...41c391`; arbitrum `0x752a9e...861fef`; arbitrum `0x8a0c79...28a824`; arbitrum `0xbd3d65...a9b6f8`; arbitrum `0xd5317e...c7d63b`; arbitrum `0xe5a04b...845c7e`; avalanche `0x1e4823...0570bc`; avalanche `0x4e446b...41c391`; avalanche `0x8a0c79...28a824`; avalanche `0x8b0e35...b01278`; avalanche `0xd34c23...5044d6`; linea `0x4e446b...41c391`; linea `0x8a0c79...28a824` | ✅ Audited |
| DeBridgeGate | operational_periphery | ethereum | 32 deployments: ethereum [`0x24455a...35f8eb`](./contracts/ethereum-1/0x24455aa55ded7728783c9474be8ea2f5c935f8eb/); ethereum `0x43de2d...8398aa`; ethereum `0x51bfd4...0e0ce0`; ethereum `0xb1a20d...bdd20d`; ethereum `0xc8550d...4961bf`; ethereum `0xfce050...cfd576`; optimism `0x43de2d...8398aa`; optimism `0xb1a20d...bdd20d`; bsc [`0x24455a...35f8eb`](./contracts/bsc-56/0x24455aa55ded7728783c9474be8ea2f5c935f8eb/); bsc `0x43de2d...8398aa`; bsc `0x51bfd4...0e0ce0`; bsc `0xb1a20d...bdd20d`; bsc `0xc8550d...4961bf`; bsc `0xfce050...cfd576`; polygon `0x43de2d...8398aa`; polygon `0x51bfd4...0e0ce0`; polygon `0xb1a20d...bdd20d`; polygon `0xc8550d...4961bf`; polygon `0xcc7571...73c695`; polygon `0xfce050...cfd576`; base `0xc1656b...e5bcbf`; base `0xe4427a...7494fe`; arbitrum [`0x24455a...35f8eb`](./contracts/arbitrum-42161/0x24455aa55ded7728783c9474be8ea2f5c935f8eb/); arbitrum `0x43de2d...8398aa`; arbitrum `0x51bfd4...0e0ce0`; arbitrum `0xb1a20d...bdd20d`; arbitrum `0xc8550d...4961bf`; arbitrum `0xfce050...cfd576`; avalanche `0x43de2d...8398aa`; avalanche `0xb1a20d...bdd20d`; linea `0x43de2d...8398aa`; linea `0xb1a20d...bdd20d` | ✅ Audited |
| DeBridgeTokenDeployer | operational_periphery | ethereum | 16 deployments: ethereum [`0x4c7ca8...785491`](./contracts/ethereum-1/0x4c7ca8fcffe77281a8b81d4580cff8257d785491/); ethereum `0x8244d6...4ea464`; optimism [`0x4c7ca8...785491`](./contracts/optimism-10/0x4c7ca8fcffe77281a8b81d4580cff8257d785491/); optimism `0x8244d6...4ea464`; bsc [`0x4c7ca8...785491`](./contracts/bsc-56/0x4c7ca8fcffe77281a8b81d4580cff8257d785491/); bsc `0x8244d6...4ea464`; polygon [`0x4c7ca8...785491`](./contracts/polygon-137/0x4c7ca8fcffe77281a8b81d4580cff8257d785491/); polygon `0x8244d6...4ea464`; base [`0x4c7ca8...785491`](./contracts/base-8453/0x4c7ca8fcffe77281a8b81d4580cff8257d785491/); base `0x8244d6...4ea464`; arbitrum [`0x4c7ca8...785491`](./contracts/arbitrum-42161/0x4c7ca8fcffe77281a8b81d4580cff8257d785491/); arbitrum `0x8244d6...4ea464`; avalanche [`0x4c7ca8...785491`](./contracts/avalanche-43114/0x4c7ca8fcffe77281a8b81d4580cff8257d785491/); avalanche `0x8244d6...4ea464`; linea [`0x4c7ca8...785491`](./contracts/linea-59144/0x4c7ca8fcffe77281a8b81d4580cff8257d785491/); linea `0x8244d6...4ea464` | ✅ Audited |
| DlnExternalCallAdapter | adapter | ethereum | 8 deployments: ethereum [`0x61ef2e...8f6cf9`](./contracts/ethereum-1/0x61ef2e01e603aeb5cd96f9ec9ae76cc6a68f6cf9/); ethereum `0xa85437...555a3a`; optimism `0xa85437...555a3a`; bsc `0xa85437...555a3a`; polygon `0xa85437...555a3a`; base `0xa85437...555a3a`; arbitrum `0xa85437...555a3a`; linea `0xa85437...555a3a` | ✅ Audited |
| DlnSource | unknown | sei | 15 deployments: ethereum `0x7ec2e5...f21677`; ethereum `0xef4fb2...30eb66`; optimism `0x7ec2e5...f21677`; optimism `0xef4fb2...30eb66`; bsc `0x7ec2e5...f21677`; bsc `0xef4fb2...30eb66`; polygon `0x7ec2e5...f21677`; polygon `0xef4fb2...30eb66`; sei [`0x2041cc...745973`](./contracts/sei-1329/0x2041cc32792884323ac519e3f9fd2802d6745973/); base `0x7ec2e5...f21677`; base `0xef4fb2...30eb66`; arbitrum `0x7ec2e5...f21677`; arbitrum `0xef4fb2...30eb66`; linea `0x7ec2e5...f21677`; linea `0xef4fb2...30eb66` | ✅ Audited |
| SignatureVerifier | periphery | ethereum | 20 deployments: ethereum [`0x2a3e72...7b6250`](./contracts/ethereum-1/0x2a3e72ed893b5958690e16c3bbe1bd92137b6250/); ethereum `0x949b3b...9c8a8c`; ethereum `0xfe7de3...f08df4`; optimism [`0x2a3e72...7b6250`](./contracts/optimism-10/0x2a3e72ed893b5958690e16c3bbe1bd92137b6250/); optimism `0x949b3b...9c8a8c`; bsc [`0x2a3e72...7b6250`](./contracts/bsc-56/0x2a3e72ed893b5958690e16c3bbe1bd92137b6250/); bsc `0x949b3b...9c8a8c`; bsc `0xfe7de3...f08df4`; polygon [`0x2a3e72...7b6250`](./contracts/polygon-137/0x2a3e72ed893b5958690e16c3bbe1bd92137b6250/); polygon `0x949b3b...9c8a8c`; polygon `0xfe7de3...f08df4`; base [`0x2a3e72...7b6250`](./contracts/base-8453/0x2a3e72ed893b5958690e16c3bbe1bd92137b6250/); base `0x949b3b...9c8a8c`; arbitrum [`0x2a3e72...7b6250`](./contracts/arbitrum-42161/0x2a3e72ed893b5958690e16c3bbe1bd92137b6250/); arbitrum `0x949b3b...9c8a8c`; arbitrum `0xfe7de3...f08df4`; avalanche [`0x2a3e72...7b6250`](./contracts/avalanche-43114/0x2a3e72ed893b5958690e16c3bbe1bd92137b6250/); avalanche `0x949b3b...9c8a8c`; linea [`0x2a3e72...7b6250`](./contracts/linea-59144/0x2a3e72ed893b5958690e16c3bbe1bd92137b6250/); linea `0x949b3b...9c8a8c` | ✅ Audited |
| WethGate | token | ethereum | 4 deployments: ethereum [`0xfcf836...4d6a59`](./contracts/ethereum-1/0xfcf83648b8cdef62e5d03319a6f1fce16e4d6a59/); bsc [`0xfcf836...4d6a59`](./contracts/bsc-56/0xfcf83648b8cdef62e5d03319a6f1fce16e4d6a59/); polygon [`0xfcf836...4d6a59`](./contracts/polygon-137/0xfcf83648b8cdef62e5d03319a6f1fce16e4d6a59/); avalanche [`0xfcf836...4d6a59`](./contracts/avalanche-43114/0xfcf83648b8cdef62e5d03319a6f1fce16e4d6a59/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BEP20TokenImplementation | token | bsc | 2 deployments: bsc [`0x8ac76a...cd580d`](./contracts/bsc-56/0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d/); bsc `0xba2ae4...744c43` | ⚠️ Unaudited |
| CrosschainForwarderProxy | periphery | optimism | 2 deployments: optimism [`0x663dc1...83c251`](./contracts/optimism-10/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/); linea [`0x663dc1...83c251`](./contracts/linea-59144/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | ⚠️ Unaudited |
| DeBridgeRouter | operational_periphery | ethereum | 3 deployments: ethereum [`0x663dc1...83c251`](./contracts/ethereum-1/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/); bsc [`0x663dc1...83c251`](./contracts/bsc-56/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/); base [`0x663dc1...83c251`](./contracts/base-8453/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| ProxyAdmin | governance | base | 22 deployments: ethereum `0xa7b88a...95f46b`; ethereum `0xc86ab7...997130`; ethereum `0xe4427a...7494fe`; optimism `0xa7b88a...95f46b`; optimism `0xc86ab7...997130`; optimism `0xe4427a...7494fe`; bsc `0xa7b88a...95f46b`; bsc `0xc86ab7...997130`; bsc `0xe4427a...7494fe`; polygon `0xa7b88a...95f46b`; polygon `0xc86ab7...997130`; polygon `0xe4427a...7494fe`; base [`0x43de2d...8398aa`](./contracts/base-8453/0x43de2d77bf8027e25dbd179b491e8d64f38398aa/); base `0xa7b88a...95f46b`; base `0xc86ab7...997130`; arbitrum `0xa7b88a...95f46b`; arbitrum `0xc86ab7...997130`; arbitrum `0xe4427a...7494fe`; avalanche `0xe4427a...7494fe`; linea `0xa7b88a...95f46b`; linea `0xc86ab7...997130`; linea `0xe4427a...7494fe` | ⚠️ Unaudited |
| Subscription | unknown | ethereum | 2 deployments: ethereum [`0x2328ee...0c91a7`](./contracts/ethereum-1/0x2328ee20fa271073328dc94e52dd5b61aa0c91a7/); ethereum `0xf46b9e...4f5e35` | ⚠️ Unaudited |
| TetherToken | token | ethereum | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | 52 deployments: ethereum [`0x413ddd...c2b1b4`](./contracts/ethereum-1/0x413dddce3d0ead2489648e482d192a7758c2b1b4/); ethereum `0x8b0e35...b01278`; optimism [`0x413ddd...c2b1b4`](./contracts/optimism-10/0x413dddce3d0ead2489648e482d192a7758c2b1b4/); optimism `0x61ef2e...8f6cf9`; optimism `0xc2bac0...623636`; bsc [`0x413ddd...c2b1b4`](./contracts/bsc-56/0x413dddce3d0ead2489648e482d192a7758c2b1b4/); bsc `0x61ef2e...8f6cf9`; bsc `0x8b0e35...b01278`; bsc `0xc2bac0...623636`; polygon [`0x413ddd...c2b1b4`](./contracts/polygon-137/0x413dddce3d0ead2489648e482d192a7758c2b1b4/); polygon `0x61ef2e...8f6cf9`; polygon `0x663dc1...83c251`; polygon `0x8b0e35...b01278`; polygon `0xc2bac0...623636`; hyperliquid `0x43de2d...8398aa`; hyperliquid `0x663dc1...83c251`; hyperliquid `0x8244d6...4ea464`; hyperliquid `0x8a0c79...28a824`; hyperliquid `0x949b3b...9c8a8c`; hyperliquid `0xa7b88a...95f46b`; hyperliquid `0xc2bac0...623636`; hyperliquid `0xc86ab7...997130`; hyperliquid `0xe4427a...7494fe`; hyperliquid `0xe7351f...d6dd7f`; hyperliquid `0xe93356...cb624a`; hyperliquid `0xef4fb2...30eb66`; hyperliquid `0xfebdc8...1be0a1`; sei `0x43de2d...8398aa`; sei `0x663dc1...83c251`; sei `0x8244d6...4ea464`; sei `0x8a0c79...28a824`; sei `0x949b3b...9c8a8c`; sei `0xa7b88a...95f46b`; sei `0xc2bac0...623636`; sei `0xc86ab7...997130`; sei `0xe4427a...7494fe`; sei `0xe7351f...d6dd7f`; sei `0xe93356...cb624a`; sei `0xef4fb2...30eb66`; sei `0xfebdc8...1be0a1`; base [`0x413ddd...c2b1b4`](./contracts/base-8453/0x413dddce3d0ead2489648e482d192a7758c2b1b4/); base `0x61ef2e...8f6cf9`; base `0xc2bac0...623636`; arbitrum [`0x413ddd...c2b1b4`](./contracts/arbitrum-42161/0x413dddce3d0ead2489648e482d192a7758c2b1b4/); arbitrum `0x61ef2e...8f6cf9`; arbitrum `0x663dc1...83c251`; arbitrum `0x8b0e35...b01278`; arbitrum `0xc2bac0...623636`; avalanche `0xc2bac0...623636`; linea [`0x413ddd...c2b1b4`](./contracts/linea-59144/0x413dddce3d0ead2489648e482d192a7758c2b1b4/); linea `0x61ef2e...8f6cf9`; linea `0xc2bac0...623636` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (5)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CrosschainForwarder | unknown | linea | 17 deployments: ethereum `0x777c22...6e213a`; ethereum `0xbeb2b3...960ac0`; ethereum `0xc31fc9...a23c47`; ethereum `0xd095a2...414946`; optimism `0xf7399c...902688`; bsc `0xbeb2b3...960ac0`; bsc `0xc31fc9...a23c47`; bsc `0xd095a2...414946`; polygon `0xbeb2b3...960ac0`; polygon `0xc31fc9...a23c47`; polygon `0xd095a2...414946`; polygon `0xd24463...db5e30`; base `0xf7399c...902688`; arbitrum `0xbeb2b3...960ac0`; arbitrum `0xc31fc9...a23c47`; arbitrum `0xd095a2...414946`; linea [`0x4084fd...b0d55d`](./contracts/linea-59144/0x4084fdaa5088427496102a994b079c6018b0d55d/) | ✅ Audited (bytecode match) |
| DeBridgeToken | operational_periphery | base | 13 deployments: ethereum `0xc1656b...e5bcbf`; ethereum `0xf8a290...734c2b`; optimism `0xc1656b...e5bcbf`; bsc `0xc1656b...e5bcbf`; bsc `0xf8a290...734c2b`; polygon `0xa029fc...381e59`; polygon `0xc1656b...e5bcbf`; polygon `0xf8a290...734c2b`; base [`0x0e4add...d5504d`](./contracts/base-8453/0x0e4add4dc86ae1aa0fa43bd7e6a9fb8be2d5504d/); arbitrum `0xc1656b...e5bcbf`; arbitrum `0xf8a290...734c2b`; avalanche `0xc1656b...e5bcbf`; linea `0x55c93b...91654a` | ✅ Audited (bytecode match) |
| DlnDestination | unknown | ethereum | 22 deployments: ethereum [`0x33b72f...d81717`](./contracts/ethereum-1/0x33b72f60f2ceb7bdb64873ac10015a35bed81717/); ethereum `0x979791...1f592c`; ethereum `0xe7351f...d6dd7f`; optimism [`0x33b72f...d81717`](./contracts/optimism-10/0x33b72f60f2ceb7bdb64873ac10015a35bed81717/); optimism `0x979791...1f592c`; optimism `0xe7351f...d6dd7f`; bsc [`0x33b72f...d81717`](./contracts/bsc-56/0x33b72f60f2ceb7bdb64873ac10015a35bed81717/); bsc `0x979791...1f592c`; bsc `0xe7351f...d6dd7f`; polygon [`0x33b72f...d81717`](./contracts/polygon-137/0x33b72f60f2ceb7bdb64873ac10015a35bed81717/); polygon `0xe7351f...d6dd7f`; polygon `0xfb43e4...6ee807`; hyperliquid `0x60e501...57b91f`; base [`0x33b72f...d81717`](./contracts/base-8453/0x33b72f60f2ceb7bdb64873ac10015a35bed81717/); base `0x979791...1f592c`; base `0xe7351f...d6dd7f`; arbitrum [`0x33b72f...d81717`](./contracts/arbitrum-42161/0x33b72f60f2ceb7bdb64873ac10015a35bed81717/); arbitrum `0x979791...1f592c`; arbitrum `0xe7351f...d6dd7f`; linea [`0x33b72f...d81717`](./contracts/linea-59144/0x33b72f60f2ceb7bdb64873ac10015a35bed81717/); linea `0x979791...1f592c`; linea `0xe7351f...d6dd7f` | ✅ Audited (bytecode match) |
| ExternalCallExecutor | unknown | ethereum | 7 deployments: ethereum [`0xae0361...4c7974`](./contracts/ethereum-1/0xae0361b1c3454b297129e01046057f1d294c7974/); optimism [`0xae0361...4c7974`](./contracts/optimism-10/0xae0361b1c3454b297129e01046057f1d294c7974/); bsc [`0xae0361...4c7974`](./contracts/bsc-56/0xae0361b1c3454b297129e01046057f1d294c7974/); polygon [`0xae0361...4c7974`](./contracts/polygon-137/0xae0361b1c3454b297129e01046057f1d294c7974/); base [`0xae0361...4c7974`](./contracts/base-8453/0xae0361b1c3454b297129e01046057f1d294c7974/); arbitrum [`0xae0361...4c7974`](./contracts/arbitrum-42161/0xae0361b1c3454b297129e01046057f1d294c7974/); linea [`0xae0361...4c7974`](./contracts/linea-59144/0xae0361b1c3454b297129e01046057f1d294c7974/) | ✅ Audited (bytecode match) |
| SimpleFeeProxy | unknown | ethereum | 13 deployments: ethereum [`0x27406e...f11f87`](./contracts/ethereum-1/0x27406ebf0b76923d93b4c6c6224bcab7fff11f87/); ethereum `0x37a52d...caa83c`; ethereum `0xc2bac0...623636`; optimism [`0x27406e...f11f87`](./contracts/optimism-10/0x27406ebf0b76923d93b4c6c6224bcab7fff11f87/); bsc [`0x27406e...f11f87`](./contracts/bsc-56/0x27406ebf0b76923d93b4c6c6224bcab7fff11f87/); bsc `0x37a52d...caa83c`; polygon [`0x27406e...f11f87`](./contracts/polygon-137/0x27406ebf0b76923d93b4c6c6224bcab7fff11f87/); polygon `0x37a52d...caa83c`; base [`0x27406e...f11f87`](./contracts/base-8453/0x27406ebf0b76923d93b4c6c6224bcab7fff11f87/); arbitrum [`0x27406e...f11f87`](./contracts/arbitrum-42161/0x27406ebf0b76923d93b4c6c6224bcab7fff11f87/); arbitrum `0x37a52d...caa83c`; avalanche [`0x27406e...f11f87`](./contracts/avalanche-43114/0x27406ebf0b76923d93b4c6c6224bcab7fff11f87/); linea [`0x27406e...f11f87`](./contracts/linea-59144/0x27406ebf0b76923d93b4c6c6224bcab7fff11f87/) | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (140)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x069820...7c9e41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x177c8a...56e4ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4084fd...b0d55d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4a8112...e22180` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x55c93b...91654a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x570687...3d2728` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x57d69a...86a837` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x584049...d50336` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x60e501...57b91f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8aca11...c5b612` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x95c99e...c53a30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xafcfda...686892` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcb8e9e...6970bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd7bc54...5d3bda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd8da6b...a96045` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeae935...e7e000` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf7399c...902688` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfc2ca4...a28f19` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x4a8112...e22180` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x55c93b...91654a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x570687...3d2728` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x584049...d50336` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x60e501...57b91f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x95c99e...c53a30` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xafcfda...686892` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xcb8e9e...6970bf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xeae935...e7e000` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xfc2ca4...a28f19` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x05bd82...10ebea` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x43de2d...8398aa` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x663dc1...83c251` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x8244d6...4ea464` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x8a0c79...28a824` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x949b3b...9c8a8c` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xc1656b...e5bcbf` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xe7351f...d6dd7f` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xe93356...cb624a` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xef4fb2...30eb66` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x069820...7c9e41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x177c8a...56e4ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4084fd...b0d55d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4a8112...e22180` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x55c93b...91654a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x570687...3d2728` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x57d69a...86a837` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x584049...d50336` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x60e501...57b91f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8aca11...c5b612` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x95c99e...c53a30` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xafcfda...686892` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcb8e9e...6970bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd7bc54...5d3bda` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xeae935...e7e000` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf7399c...902688` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfc2ca4...a28f19` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x069820...7c9e41` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x177c8a...56e4ab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4084fd...b0d55d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4a8112...e22180` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x55c93b...91654a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x570687...3d2728` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x57d69a...86a837` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x584049...d50336` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x60e501...57b91f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8aca11...c5b612` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x95c99e...c53a30` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x979791...1f592c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xafcfda...686892` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcb8e9e...6970bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd7bc54...5d3bda` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xeae935...e7e000` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf7399c...902688` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfc2ca4...a28f19` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x05bd82...10ebea` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x27406e...f11f87` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x2a3e72...7b6250` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x4c7ca8...785491` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x4e446b...41c391` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x62a8c4...db27dc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x6a3615...dd5625` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x726f7a...6014a0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x95c99e...c53a30` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xb1a20d...bdd20d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xb77426...af1716` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xc1656b...e5bcbf` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xf0bbd6...22d2a3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xf7399c...902688` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xfcf836...4d6a59` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x05bd82...10ebea` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x1ed401...ef359d` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x27406e...f11f87` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x2a3e72...7b6250` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x4c7ca8...785491` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x4e446b...41c391` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x60e501...57b91f` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x726f7a...6014a0` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x95c99e...c53a30` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xb1a20d...bdd20d` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xc1656b...e5bcbf` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xd3a5e4...5f8c62` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xf0bbd6...22d2a3` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xf7399c...902688` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xfcf836...4d6a59` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4a8112...e22180` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x570687...3d2728` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x584049...d50336` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x60e501...57b91f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x95c99e...c53a30` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xafcfda...686892` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcb8e9e...6970bf` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xeae935...e7e000` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfc2ca4...a28f19` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x069820...7c9e41` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x177c8a...56e4ab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4084fd...b0d55d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4a8112...e22180` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x55c93b...91654a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x570687...3d2728` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x57d69a...86a837` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x584049...d50336` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x60e501...57b91f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8aca11...c5b612` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x95c99e...c53a30` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xafcfda...686892` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcb8e9e...6970bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd7bc54...5d3bda` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xeae935...e7e000` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf7399c...902688` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfc2ca4...a28f19` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x4a8112...e22180` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x570687...3d2728` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x584049...d50336` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x60e501...57b91f` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x95c99e...c53a30` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xafcfda...686892` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xc1656b...e5bcbf` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xcb8e9e...6970bf` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xeae935...e7e000` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xf7399c...902688` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xfc2ca4...a28f19` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/debridge/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [CrosschainForwarder Allowances Audit.pdf](https://github.com/debridge-finance/debridge-security/blob/master/CrosschainForwarder%20Allowances%20Audit.pdf) | unknown | Audit | 2024-09 | aging | Direct | contract_name | 11 | high |
| [DLN Solana Contracts _ SSC.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DLN%20Solana%20Contracts%20_%20SSC.pdf) | unknown | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [DLN Solana Release Assessment Report.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DLN%20Solana%20Release%20Assessment%20Report.pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [DLN-EVM_Upgrades_SSC.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DLN-EVM_Upgrades_SSC.pdf) | unknown | Audit | 2024-11 | aging | Direct | contract_name | 46 | high |
| [DeBridgde_Solana_Events_Reader_Rust_Program_Security_Audit_Report.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridgde_Solana_Events_Reader_Rust_Program_Security_Audit_Report.pdf) | unknown | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [DeBridge_Airdrop_Contract _ SSC.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_Airdrop_Contract%20_%20SSC.pdf) | unknown | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [DeBridge_Contracts_v1_Smart_Contract_Security_Audit_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_Contracts_v1_Smart_Contract_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2022-11 | stale | Direct | contract_name | 132 | high |
| [DeBridge_DLN_EVM_Bridge_1_3_0_Smart_Contract_Security_Assessment.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_DLN_EVM_Bridge_1_3_0_Smart_Contract_Security_Assessment.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 46 | high |
| [DeBridge_DLN_EVM_Contracts_Smart_Contract_Security_Audit_Report.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_DLN_EVM_Contracts_Smart_Contract_Security_Audit_Report.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 36 | high |
| [DeBridge_DLN_External_Call_Smart_Contract_Security_Assessment_Report.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_DLN_External_Call_Smart_Contract_Security_Assessment_Report.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 46 | high |
| [DeBridge_DLN_Taker_Code_Security_Assessment_Report_Halborn_Final.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_DLN_Taker_Code_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [DeBridge_EVM_to_Solana_Serializer_Smart_Contract_Security_Assessment.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_EVM_to_Solana_Serializer_Smart_Contract_Security_Assessment.pdf) | unknown | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [DeBridge_Solana_Contracts_Solana_Program_Security_Audit_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_Solana_Contracts_Solana_Program_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [DeBridge_Solidity_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_Solidity_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-06 | stale | Direct | contract_name | 132 | high |
| [Debridge_DLN_Solana_Program_Security_Audit_Report_Halborn_Final.pdf](https://github.com/debridge-finance/debridge-security/blob/master/Debridge_DLN_Solana_Program_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [Debridge_Solana_Event_Reader_Whitebox_Pentest_Report_Halborn_Final.pdf](https://github.com/debridge-finance/debridge-security/blob/master/Debridge_Solana_Event_Reader_Whitebox_Pentest_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [Debridge_extcall_Solana_Program_Security_Assessment_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/Debridge_extcall_Solana_Program_Security_Assessment_Report_Halborn.pdf) | Halborn | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [Debridge_solana_tx_parser_Whitebox_Pentest_Report_Halborn_Final.pdf](https://github.com/debridge-finance/debridge-security/blob/master/Debridge_solana_tx_parser_Whitebox_Pentest_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [deBridge Core Protocol Solana Contracts _ SSC.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge%20Core%20Protocol%20Solana%20Contracts%20_%20SSC.pdf) | unknown | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [deBridge_Cloudflare_report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Cloudflare_report_Halborn.pdf) | Halborn | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [deBridge_Cross_Chain_Forwarder_Update_Smart_Contract_Security_Audit.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Cross_Chain_Forwarder_Update_Smart_Contract_Security_Audit.pdf) | unknown | Audit | 2022-07 | stale | Direct | contract_name | 11 | high |
| [deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2022-04 | stale | Direct | contract_name | 11 | high |
| [deBridge_FrontEnd_WebApp_Audit_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_FrontEnd_WebApp_Audit_Report_Halborn.pdf) | Halborn | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [deBridge_Main_Pre_Release_Smart_Contract_Security_Audit_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Main_Pre_Release_Smart_Contract_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2022-02 | stale | Direct | contract_name | 132 | high |
| [deBridge_Main_Smart_Contract_Security_Audit_Report_Halborn_v1_1.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Main_Smart_Contract_Security_Audit_Report_Halborn_v1_1.pdf) | Halborn | Audit | 2021-09 | stale | Direct | contract_name | 100 | high |
| [deBridge_Main_Smart_Contract_Security_Audit_Report_ZOKYO.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Main_Smart_Contract_Security_Audit_Report_ZOKYO.pdf) | unknown | Audit | 2021-10 | stale | Direct | contract_name | 100 | high |
| [deBridge_Node_Security_Audit_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Node_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [deBridge_Solana_Multisig_Solana_Program_Security_Audit_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Solana_Multisig_Solana_Program_Security_Audit_Halborn.pdf) | Halborn | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [deBridge_Solana_Security_Audit_Ackee.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Solana_Security_Audit_Ackee.pdf) | Ackee Blockchain | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [deBridge_Solana_Security_Audit_Neodyme.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Solana_Security_Audit_Neodyme.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [debridge_backend_pentest_report_halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/debridge_backend_pentest_report_halborn.pdf) | Halborn | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [debridge_solidity_smart_contract_second_audit_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/debridge_solidity_smart_contract_second_audit_Halborn.pdf) | Halborn | Audit | 2022-04 | stale | Direct | contract_name | 137 | high |
| [SolanaParser.md](https://github.com/debridge-finance/solana-tx-parser-public/blob/master/docs/classes/SolanaParser.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ParsedAccount.md](https://github.com/debridge-finance/solana-tx-parser-public/blob/master/docs/interfaces/ParsedAccount.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ParsedCustomInstruction.md](https://github.com/debridge-finance/solana-tx-parser-public/blob/master/docs/interfaces/ParsedCustomInstruction.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ParsedIdlInstruction.md](https://github.com/debridge-finance/solana-tx-parser-public/blob/master/docs/interfaces/ParsedIdlInstruction.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ProgramInfoType.md](https://github.com/debridge-finance/solana-tx-parser-public/blob/master/docs/interfaces/ProgramInfoType.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SUMMARY.md](https://github.com/debridge-finance/debridge-contracts-v1/blob/main/docs/SUMMARY.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 132 | high |
| [README.md (also discovered via alternate URL)](https://github.com/debridge-finance/debridge-contracts-v1/blob/main/docs/contracts/README.md) | unknown | Audit | n/a | unknown | Direct | contract_name|n/a | 132 | high |
| [ICallProxy.md](https://github.com/debridge-finance/debridge-contracts-v1/blob/main/docs/contracts/interfaces/ICallProxy.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IDeBridgeGate.md](https://github.com/debridge-finance/debridge-contracts-v1/blob/main/docs/contracts/interfaces/IDeBridgeGate.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IDeBridgeToken.md](https://github.com/debridge-finance/debridge-contracts-v1/blob/main/docs/contracts/interfaces/IDeBridgeToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IDeBridgeTokenDeployer.md](https://github.com/debridge-finance/debridge-contracts-v1/blob/main/docs/contracts/interfaces/IDeBridgeTokenDeployer.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IOraclesManager.md](https://github.com/debridge-finance/debridge-contracts-v1/blob/main/docs/contracts/interfaces/IOraclesManager.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ISignatureVerifier.md](https://github.com/debridge-finance/debridge-contracts-v1/blob/main/docs/contracts/interfaces/ISignatureVerifier.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IWethGate.md](https://github.com/debridge-finance/debridge-contracts-v1/blob/main/docs/contracts/interfaces/IWethGate.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Flags.md](https://github.com/debridge-finance/debridge-contracts-v1/blob/main/docs/contracts/libraries/Flags.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CallProxy.md](https://github.com/debridge-finance/debridge-contracts-v1/blob/main/docs/contracts/periphery/CallProxy.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DeBridgeToken.md](https://github.com/debridge-finance/debridge-contracts-v1/blob/main/docs/contracts/periphery/DeBridgeToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DeBridgeTokenProxy.md](https://github.com/debridge-finance/debridge-contracts-v1/blob/main/docs/contracts/periphery/DeBridgeTokenProxy.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 25 | low |
| [SimpleFeeProxy.md](https://github.com/debridge-finance/debridge-contracts-v1/blob/main/docs/contracts/periphery/SimpleFeeProxy.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DeBridgeGate.md](https://github.com/debridge-finance/debridge-contracts-v1/blob/main/docs/contracts/transfers/DeBridgeGate.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 32 | low |
| [DeBridgeTokenDeployer.md](https://github.com/debridge-finance/debridge-contracts-v1/blob/main/docs/contracts/transfers/DeBridgeTokenDeployer.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 16 | low |
| [OraclesManager.md](https://github.com/debridge-finance/debridge-contracts-v1/blob/main/docs/contracts/transfers/OraclesManager.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SignatureVerifier.md](https://github.com/debridge-finance/debridge-contracts-v1/blob/main/docs/contracts/transfers/SignatureVerifier.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [WethGate.md](https://github.com/debridge-finance/debridge-contracts-v1/blob/main/docs/contracts/transfers/WethGate.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [talks-and-videos.md](https://github.com/debridge-finance/debridge-contracts-v1/blob/main/docs/talks-and-videos.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [cross-chain-swaps-liquidity.md](https://github.com/debridge-finance/debridge-contracts-v1/blob/main/docs/the-core-protocol/cross-chain-swaps-liquidity.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [protocol-overview.md](https://github.com/debridge-finance/debridge-contracts-v1/blob/main/docs/the-core-protocol/protocol-overview.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 32 | low |
| [security.md](https://github.com/debridge-finance/debridge-contracts-v1/blob/main/docs/the-core-protocol/security.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [slashing-and-delegated-staking.md](https://github.com/debridge-finance/debridge-contracts-v1/blob/main/docs/the-core-protocol/slashing-and-delegated-staking.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 32 | low |
| [transfers.md](https://github.com/debridge-finance/debridge-contracts-v1/blob/main/docs/the-core-protocol/transfers.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [api-surface.md](https://github.com/debridge-finance/bundle-state-reconciler-example/blob/master/bundle-state-sync/docs/api-surface.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Solana-key-management.md](https://github.com/debridge-finance/dln-taker/blob/main/docs/Solana-key-management.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x8ac76a...cd580d`](./contracts/bsc-56/0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d/) | BEP20TokenImplementation | token | $263,879,740.52 | Verified native implementation with $263,879,740.52 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2328ee...0c91a7`](./contracts/ethereum-1/0x2328ee20fa271073328dc94e52dd5b61aa0c91a7/) | Subscription | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 84 |
| upstream | 2 |
| standard_library | 7 |
| needs_review | 68 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 47
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=15, low=5
- Match method counts: extraction_exact=1413

Zero-match audit list:

- [9998] DLN Solana Contracts _ SSC.pdf
- [9999] DLN Solana Release Assessment Report.pdf
- [10001] DeBridgde_Solana_Events_Reader_Rust_Program_Security_Audit_Report.pdf
- [10002] DeBridge_Airdrop_Contract _ SSC.pdf
- [10007] DeBridge_DLN_Taker_Code_Security_Assessment_Report_Halborn_Final.pdf
- [10008] DeBridge_EVM_to_Solana_Serializer_Smart_Contract_Security_Assessment.pdf
- [10009] DeBridge_Solana_Contracts_Solana_Program_Security_Audit_Report_Halborn.pdf
- [10011] Debridge_DLN_Solana_Program_Security_Audit_Report_Halborn_Final.pdf
- [10012] Debridge_Solana_Event_Reader_Whitebox_Pentest_Report_Halborn_Final.pdf
- [10013] Debridge_extcall_Solana_Program_Security_Assessment_Report_Halborn.pdf
- [10014] Debridge_solana_tx_parser_Whitebox_Pentest_Report_Halborn_Final.pdf
- [10016] deBridge Core Protocol Solana Contracts _ SSC.pdf
- [10017] deBridge_Cloudflare_report_Halborn.pdf
- [10020] deBridge_FrontEnd_WebApp_Audit_Report_Halborn.pdf
- [10024] deBridge_Node_Security_Audit_Report_Halborn.pdf
- [10025] deBridge_Solana_Multisig_Solana_Program_Security_Audit_Halborn.pdf
- [10026] deBridge_Solana_Security_Audit_Ackee.pdf
- [10027] deBridge_Solana_Security_Audit_Neodyme.pdf
- [10028] debridge_backend_pentest_report_halborn.pdf
- [10031] SolanaParser.md
- [10032] ParsedAccount.md
- [10033] ParsedCustomInstruction.md
- [10034] ParsedIdlInstruction.md
- [10035] ProgramInfoType.md
- [10039] ICallProxy.md
- [10040] IDeBridgeGate.md
- [10041] IDeBridgeToken.md
- [10042] IDeBridgeTokenDeployer.md
- [10043] IOraclesManager.md
- [10044] ISignatureVerifier.md
- [10045] IWethGate.md
- [10047] Flags.md
- [10049] CallProxy.md
- [10050] DeBridgeToken.md
- [10053] SimpleFeeProxy.md
- [10056] OraclesManager.md
- [10058] SignatureVerifier.md
- [10059] WethGate.md
- [10060] talks-and-videos.md
- [10061] cross-chain-swaps-liquidity.md
- [10063] security.md
- [10065] transfers.md
- [10066] api-surface.md
- [10067] Solana-key-management.md
- [10068] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [10069] 0002-metadata-manifest-and-pull-command.md
- [10070] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
