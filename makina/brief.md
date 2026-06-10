# Agentic Audit Brief: Makina

## Project Overview

- Project: Makina (`makina`)
- Website: [https://app.makina.finance/](https://app.makina.finance/)
- Lifecycle: active (Tier 0, 65.2% below peak)
- Generated: 2026-06-10T20:59:07.148Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: base, ethereum, ink
- Contract surface: 36 unique implementations (60 raw deployments)
- DeFi Llama TVL: $36,799,164.34
- On-chain TVL (included contracts): $12,895,621.86
- TVL by chain: Ethereum $12,895,621.86

## Project Description

Makina is DeFi execution engine and vault infrastructure for professional Operators, enabling strategy vaults called Machines to deploy and manage capital across onchain venues with supporting periphery for operations such as oracles and fee management.

### Architecture

The Deployments family provides shared infrastructure (registries, bridges, oracles) used by Featured Machines and Makina. MachineShare tokens are minted by vaults like ConcreteAsyncVaultImpl, which rely on the Deployments layer for cross-chain operations and fee management.

## Audit Coverage Summary

- Verified implementations audited: 30/33 (90.9%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 36
- Raw deployments: 60
- Audits discovered: 4
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $12,895,621.86
- Latest audit: 2025-09 (fresh)
- Staleness: 4 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: 84.8% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 28 | 84.8% | 2025-09 |
| Enigma Ventures | Tier 2 | 2 | 6.1% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (30)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AcrossV3BridgeAdapter | operational_periphery | ethereum | [`0x511c3f...9ca678`](./contracts/ethereum-1/0x511c3f33417275d060932458dd987bd47c9ca678/) | ✅ Audited |
| AcrossV3BridgeConfig | operational_periphery | ethereum | [`0xdde7fd...36da86`](./contracts/ethereum-1/0xdde7fd6f25c9a58c5ec3e278d31e8584f236da86/) | ✅ Audited |
| AsyncRedeemer | unknown | ethereum | 2 deployments: ethereum [`0x1f20cd...003dd9`](./contracts/ethereum-1/0x1f20cdfa19b860f0dd78fefbb052be5aa5003dd9/); ethereum `0xdea728...65d971` | ✅ Audited |
| BooleanHelper | periphery | ethereum | 3 deployments: ethereum [`0x00c93e...cd8353`](./contracts/ethereum-1/0x00c93e3b09ca2f544487d4298339765eadcd8353/); ethereum `0x8dc601...cc22c4`; base `0x8dc601...cc22c4` | ✅ Audited |
| Bytes32Helper | periphery | ethereum | 2 deployments: ethereum [`0x74dc73...3e45d3`](./contracts/ethereum-1/0x74dc739b8f98ad0f76cd8900695dd8d5083e45d3/); base [`0x74dc73...3e45d3`](./contracts/base-8453/0x74dc739b8f98ad0f76cd8900695dd8d5083e45d3/) | ✅ Audited |
| Caliber | unknown | ethereum | [`0x3f5a88...d7e162`](./contracts/ethereum-1/0x3f5a881db86d6f495823028a1e892e7b2cd7e162/) | ✅ Audited |
| CaliberMailbox | unknown | base | [`0x2f7101...17a0a0`](./contracts/base-8453/0x2f7101c2effa4a2d48a95958f594e3306717a0a0/) | ✅ Audited |
| CastHelper | periphery | ethereum | 2 deployments: ethereum [`0x54423e...9198b5`](./contracts/ethereum-1/0x54423e194cb882608ecd39b94687ed67d89198b5/); base [`0x54423e...9198b5`](./contracts/base-8453/0x54423e194cb882608ecd39b94687ed67d89198b5/) | ✅ Audited |
| ChainRegistry | registry | ethereum | [`0x45681f...8771df`](./contracts/ethereum-1/0x45681fcf26ef1dca89ae2b8b97c6447ea68771df/) | ✅ Audited |
| ContextHelper | periphery | ethereum | 2 deployments: ethereum [`0x0f4313...f953be`](./contracts/ethereum-1/0x0f431322e1ff2500d4c5a4e090a7da7344f953be/); base [`0x0f4313...f953be`](./contracts/base-8453/0x0f431322e1ff2500d4c5a4e090a7da7344f953be/) | ✅ Audited |
| DirectDepositor | unknown | ethereum | 2 deployments: ethereum [`0x20c615...dfb776`](./contracts/ethereum-1/0x20c61516da97188a3b6f3856ff91b92a22dfb776/); ethereum `0x4c4ff8...60e288` | ✅ Audited |
| FlashloanAggregator | unknown | ethereum | [`0x820d35...064065`](./contracts/ethereum-1/0x820d35e62ad73a5dc7b81d54ce993080d2064065/) | ✅ Audited |
| HubCoreFactory | registry | ethereum | [`0x8d28a6...4e070c`](./contracts/ethereum-1/0x8d28a69328561ef9f171c58996fecb9f494e070c/) | ✅ Audited |
| HubCoreRegistry | registry | ethereum | [`0x0faeec...9d53ea`](./contracts/ethereum-1/0x0faeeceab0bcb63be2fe984ea8c77778989d53ea/) | ✅ Audited |
| HubPeripheryFactory | registry | ethereum | 2 deployments: ethereum [`0xd6aeee...6c30da`](./contracts/ethereum-1/0xd6aeeebccc245daa4146f54b75686c33c96c30da/); ethereum `0xf5d399...21ff5a` | ✅ Audited |
| HubPeripheryRegistry | registry | ethereum | 2 deployments: ethereum [`0x520f8e...19f252`](./contracts/ethereum-1/0x520f8ed1ff3d8f6b7bfa86d7b09e7dd7a419f252/); ethereum `0xc01091...39ee05` | ✅ Audited |
| KeyValueStore | unknown | ethereum | 3 deployments: ethereum [`0x7cb36b...aac262`](./contracts/ethereum-1/0x7cb36b14244c7a68c4fe291c88f75bc915aac262/); ethereum `0xa81fc3...c92e91`; ethereum `0xf5b4df...e77437` | ✅ Audited |
| LayerZeroV2BridgeAdapter | operational_periphery | ethereum | [`0x110820...b42467`](./contracts/ethereum-1/0x1108204c18fcb5e0b2b38cbd3b783b2a56b42467/) | ✅ Audited |
| Machine | unknown | ethereum | [`0x5c680e...bd7333`](./contracts/ethereum-1/0x5c680ec39bafe8524f3c2fa9d5f6d65f09bd7333/) | ✅ Audited |
| MachineShare | unknown | ethereum | 4 deployments: ethereum [`0x1e33e9...1204ef`](./contracts/ethereum-1/0x1e33e98af620f1d563fcd3cfd3c75ace841204ef/); ethereum `0x871ab8...deb7ed`; ethereum `0x972966...231bdf`; ethereum `0xac499a...494b06` | ✅ Audited |
| MachineShareOracle | operational_periphery | ethereum | 4 deployments: ethereum [`0x612757...677c5a`](./contracts/ethereum-1/0x61275759bfc5dd5ff96d9ae53056290adc677c5a/); ethereum `0x65692f...d36de6`; ethereum `0x9434fe...fe8bc0`; ethereum `0x9cce24...d96b9f` | ✅ Audited |
| MachineShareOracleFactory | operational_periphery | ethereum | 4 deployments: ethereum [`0x3f762c...0140ce`](./contracts/ethereum-1/0x3f762cbb8919dcef405078500f325baedd0140ce/); ethereum `0x4c5ea6...cf5fb6`; ethereum `0x58de63...69daf5`; ethereum `0xc00365...bbc776` | ✅ Audited |
| MathHelper | periphery | ethereum | 2 deployments: ethereum [`0x3d623b...42e3c0`](./contracts/ethereum-1/0x3d623b199e290358416415ea7e05b635e442e3c0/); base [`0x3d623b...42e3c0`](./contracts/base-8453/0x3d623b199e290358416415ea7e05b635e442e3c0/) | ✅ Audited |
| MetaMorphoOracleFactory | operational_periphery | ethereum | [`0xa793e9...02e6a7`](./contracts/ethereum-1/0xa793e9548337654237bfa49ffd2188236d02e6a7/) | ✅ Audited |
| OracleRegistry | operational_periphery | ethereum | [`0xc388b7...97f485`](./contracts/ethereum-1/0xc388b72ab90be82b230d919f9c05c87f9397f485/) | ✅ Audited |
| SecurityModule | unknown | ethereum | 2 deployments: ethereum [`0x49ee9b...f92542`](./contracts/ethereum-1/0x49ee9b4865cbbf9ec8b142cdd4a5a65971f92542/); ethereum `0xae3d2b...bf8186` | ✅ Audited |
| SignedMathHelper | periphery | ethereum | 2 deployments: ethereum [`0xe11b48...51bc4d`](./contracts/ethereum-1/0xe11b4879a771222cdae84e4392b03adaa151bc4d/); base [`0xe11b48...51bc4d`](./contracts/base-8453/0xe11b4879a771222cdae84e4392b03adaa151bc4d/) | ✅ Audited |
| SwapModule | unknown | ethereum | [`0x923c98...0c17c3`](./contracts/ethereum-1/0x923c98b22f9c367a109e93f7dfbaca28b20c17c3/) | ✅ Audited |
| TokenRegistry | registry | ethereum | [`0xd9310a...2a5fd4`](./contracts/ethereum-1/0xd9310a41d085c0dc1e40f691e8647080862a5fd4/) | ✅ Audited |
| WatermarkFeeManager | governance | ethereum | 2 deployments: ethereum [`0x09002b...51a221`](./contracts/ethereum-1/0x09002bdb52a0cba3b1376f5a373739b20f51a221/); ethereum `0x8eb36d...793590` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ConcreteAsyncVaultImpl | core_logic | ethereum | [`0xcd9f59...0d2a32`](./contracts/ethereum-1/0xcd9f5907f92818bc06c9ad70217f089e190d2a32/) | ⚠️ Unaudited |
| AccessManagerUpgradeable | governance | ethereum | [`0x0fcefa...665d7f`](./contracts/ethereum-1/0x0fcefa3f1047f35521a49cd8b06fabd588665d7f/) | ⚠️ Unaudited |
| LayerZeroV2BridgeConfig | operational_periphery | ethereum | [`0x1b0643...343771`](./contracts/ethereum-1/0x1b064336d9c4999c942ecc36e36d48a411343771/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ink | `0x110820...b42467` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x1b0643...343771` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0xdde7fd...36da86` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [- **Enigma Dark**: [Makina-Core Fuzz/Invariant Testing - Jul 2025]()](https://github.com/Enigma-Dark/security-review-reports/blob/main/2025-07_Invariant_Testing_Engagement_Makina_Finance_Makina_Core.pdf) | Enigma Ventures | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [- **ChainSecurity**: [Makina-Core - Sep 2025](https://www.chainsecurity.com/security-audit/makina-core), [Jan 2026]()](https://reports.chainsecurity.com/Makina/ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Direct | contract_name | 17 | high |
| [- **ChainSecurity**: [Makina-Periphery - Sep 2025](https://www.chainsecurity.com/security-audit/makina-periphery), [Jan 2026]()](https://reports.chainsecurity.com/Makina/ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Direct | contract_name | 30 | high |
| [2025-09_Security_Review_Makina_Finance_Makina_Periphery_Machine_Share_Oracle.pdf](https://github.com/Enigma-Dark/security-review-reports/blob/main/2025-09_Security_Review_Makina_Finance_Makina_Periphery_Machine_Share_Oracle.pdf) | Enigma Ventures | Audit | 2025-09 | fresh | Direct | contract_name | 8 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xcd9f59...0d2a32`](./contracts/ethereum-1/0xcd9f5907f92818bc06c9ad70217f089e190d2a32/) | ConcreteAsyncVaultImpl | core_logic | $12,895,621.86 | Verified native implementation with $12,895,621.86 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 21 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=55

Zero-match audit list:

- [3949] - **Enigma Dark**: [Makina-Core Fuzz/Invariant Testing - Jul 2025]()

Fork inheritance lineage and inherited audits are included when available.
