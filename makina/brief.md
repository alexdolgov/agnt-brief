# Agentic Audit Brief: Makina

## Project Overview

- Project: Makina (`makina`)
- Website: [https://app.makina.finance/](https://app.makina.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.340Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: base, ethereum, ink
- Contract surface: 46 unique implementations (89 raw deployments)
- DeFi Llama TVL: $37,284,328.29
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Onchain Capital Allocator. Structurally: 35 project-authored contract(s) across 2 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 8 functional families. Its contracts share 3 common project-authored base contract(s) (proxy, accessmanagedupgradeable, contextupgradeable). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 92; live-surface contracts included: 89 (86 live, 3 unknown).
- Excluded by liveness: 3 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 38/43 (88.4%)
- Deployed-live implementations: 45 of 46 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 39/45
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 46
- Raw deployments: 89
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 7 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 39 match-unverified
- Tier 1 coverage: 76.7% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 34 | 75.6% | 2026-05 |
| Sigma Prime | Tier 2 | 5 | 11.1% | 2025-08 |
| Enigma Ventures | Tier 2 | 4 | 8.9% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (39)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AcrossV3BridgeAdapter | operational_periphery | ethereum | n/a | [`0x511c3f...9ca678`](./contracts/ethereum-1/0x511c3f33417275d060932458dd987bd47c9ca678/) | ✅ Audited |
| AcrossV3BridgeConfig | operational_periphery | ethereum | n/a | [`0xdde7fd...36da86`](./contracts/ethereum-1/0xdde7fd6f25c9a58c5ec3e278d31e8584f236da86/) | ✅ Audited |
| AsyncRedeemer | unknown | ethereum | n/a | 5 deployments: ethereum [`0x1303c2...def75c`](./contracts/ethereum-1/0x1303c26cfe06bac5bfee29907f37919643def75c/); ethereum `0x1f20cd...003dd9`; ethereum `0x28713b...db1be3`; ethereum `0x75dbee...7828e5`; ethereum `0xe44b62...56250f` | ✅ Audited |
| AsyncRedeemer | unknown | ethereum | n/a | [`0xdea728...65d971`](./contracts/ethereum-1/0xdea7284fdba5e90b0613fb9c2bbddbeb2f65d971/) | ✅ Audited |
| BooleanHelper | periphery | ethereum | n/a | 3 deployments: ethereum [`0x00c93e...cd8353`](./contracts/ethereum-1/0x00c93e3b09ca2f544487d4298339765eadcd8353/); ethereum `0x8dc601...cc22c4`; base `0x8dc601...cc22c4` | ✅ Audited |
| Bytes32Helper | periphery | ethereum | n/a | 2 deployments: ethereum [`0x74dc73...3e45d3`](./contracts/ethereum-1/0x74dc739b8f98ad0f76cd8900695dd8d5083e45d3/); base [`0x74dc73...3e45d3`](./contracts/base-8453/0x74dc739b8f98ad0f76cd8900695dd8d5083e45d3/) | ✅ Audited |
| Caliber | unknown | ethereum | n/a | 5 deployments: ethereum [`0x3f5a88...d7e162`](./contracts/ethereum-1/0x3f5a881db86d6f495823028a1e892e7b2cd7e162/); ethereum `0xbeef12...884e89`; ethereum `0xd1a1c2...c8c1bc`; ethereum `0xd1a2d9...352915`; ethereum `0xd1a3c2...36c326` | ✅ Audited |
| CaliberMailbox | unknown | base | n/a | [`0x2f7101...17a0a0`](./contracts/base-8453/0x2f7101c2effa4a2d48a95958f594e3306717a0a0/) | ✅ Audited |
| CastHelper | periphery | ethereum | n/a | 2 deployments: ethereum [`0x54423e...9198b5`](./contracts/ethereum-1/0x54423e194cb882608ecd39b94687ed67d89198b5/); base [`0x54423e...9198b5`](./contracts/base-8453/0x54423e194cb882608ecd39b94687ed67d89198b5/) | ✅ Audited |
| ChainRegistry | registry | ethereum | n/a | [`0x45681f...8771df`](./contracts/ethereum-1/0x45681fcf26ef1dca89ae2b8b97c6447ea68771df/) | ✅ Audited |
| ContextHelper | periphery | ethereum | n/a | 2 deployments: ethereum [`0x0f4313...f953be`](./contracts/ethereum-1/0x0f431322e1ff2500d4c5a4e090a7da7344f953be/); base [`0x0f4313...f953be`](./contracts/base-8453/0x0f431322e1ff2500d4c5a4e090a7da7344f953be/) | ✅ Audited |
| DirectDepositor | unknown | ethereum | n/a | 5 deployments: ethereum [`0x20c615...dfb776`](./contracts/ethereum-1/0x20c61516da97188a3b6f3856ff91b92a22dfb776/); ethereum `0x45409d...911727`; ethereum `0x94b182...4903d7`; ethereum `0x9662d8...9132b0`; ethereum `0xb0475f...201e4d` | ✅ Audited |
| DirectDepositor | unknown | ethereum | n/a | [`0x4c4ff8...60e288`](./contracts/ethereum-1/0x4c4ff80b0933c1c68c605046f9df094c4860e288/) | ✅ Audited |
| FlashloanAggregator | unknown | ethereum | n/a | [`0x820d35...064065`](./contracts/ethereum-1/0x820d35e62ad73a5dc7b81d54ce993080d2064065/) | ✅ Audited |
| HubCoreFactory | registry | ethereum | n/a | [`0x8d28a6...4e070c`](./contracts/ethereum-1/0x8d28a69328561ef9f171c58996fecb9f494e070c/) | ✅ Audited |
| HubCoreRegistry | registry | ethereum | n/a | [`0x0faeec...9d53ea`](./contracts/ethereum-1/0x0faeeceab0bcb63be2fe984ea8c77778989d53ea/) | ✅ Audited |
| HubPeripheryFactory | registry | ethereum | n/a | [`0xd6aeee...6c30da`](./contracts/ethereum-1/0xd6aeeebccc245daa4146f54b75686c33c96c30da/) | ✅ Audited |
| HubPeripheryFactory | registry | ethereum | n/a | [`0xf5d399...21ff5a`](./contracts/ethereum-1/0xf5d399b8c658f8473815a066a095fd6b0b21ff5a/) | ✅ Audited |
| HubPeripheryRegistry | registry | ethereum | n/a | [`0x520f8e...19f252`](./contracts/ethereum-1/0x520f8ed1ff3d8f6b7bfa86d7b09e7dd7a419f252/) | ✅ Audited |
| HubPeripheryRegistry | registry | ethereum | n/a | [`0xc01091...39ee05`](./contracts/ethereum-1/0xc0109106a2e119087a5739c9532ec7e1b039ee05/) | ✅ Audited |
| KeyValueStore | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7cb36b...aac262`](./contracts/ethereum-1/0x7cb36b14244c7a68c4fe291c88f75bc915aac262/); ethereum `0xa81fc3...c92e91`; ethereum `0xf5b4df...e77437` | ✅ Audited |
| LayerZeroV2BridgeAdapter | operational_periphery | ethereum | n/a | [`0x110820...b42467`](./contracts/ethereum-1/0x1108204c18fcb5e0b2b38cbd3b783b2a56b42467/) | ✅ Audited |
| Machine | unknown | ethereum | n/a | 5 deployments: ethereum [`0x0447d0...11d735`](./contracts/ethereum-1/0x0447d0ad7fd6a3409b48ecbb9ddb075c1e11d735/); ethereum `0x5c680e...bd7333`; ethereum `0x6b0068...3df721`; ethereum `0x733abb...559108`; ethereum `0xfcbe13...73d841` | ✅ Audited |
| MachineShare | unknown | ethereum | n/a | 4 deployments: ethereum [`0x1e33e9...1204ef`](./contracts/ethereum-1/0x1e33e98af620f1d563fcd3cfd3c75ace841204ef/); ethereum `0x871ab8...deb7ed`; ethereum `0x972966...231bdf`; ethereum `0xac499a...494b06` | ✅ Audited |
| MachineShareOracle | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x49fba7...cd6b5a`](./contracts/ethereum-1/0x49fba73738461835fefb19351b161bde4bcd6b5a/); ethereum `0x8b04bf...6bb2fc`; ethereum `0x9cce24...d96b9f`; ethereum `0xffcbc7...4ca078` | ✅ Audited |
| MachineShareOracle | operational_periphery | ethereum | n/a | [`0x9434fe...fe8bc0`](./contracts/ethereum-1/0x9434feba9edc5d0cedc128f417307f8d9afe8bc0/) | ✅ Audited |
| MachineShareOracleFactory | operational_periphery | ethereum | n/a | [`0x4c5ea6...cf5fb6`](./contracts/ethereum-1/0x4c5ea6dc9309147a582fcc330968076158cf5fb6/) | ✅ Audited |
| MachineShareOracleFactory | operational_periphery | ethereum | n/a | [`0x58de63...69daf5`](./contracts/ethereum-1/0x58de6381cbcc919d72e6a2507cae74925e69daf5/) | ✅ Audited |
| MathHelper | periphery | ethereum | n/a | 2 deployments: ethereum [`0x3d623b...42e3c0`](./contracts/ethereum-1/0x3d623b199e290358416415ea7e05b635e442e3c0/); base [`0x3d623b...42e3c0`](./contracts/base-8453/0x3d623b199e290358416415ea7e05b635e442e3c0/) | ✅ Audited |
| MetaMorphoOracleFactory | operational_periphery | ethereum | n/a | [`0xa793e9...02e6a7`](./contracts/ethereum-1/0xa793e9548337654237bfa49ffd2188236d02e6a7/) | ✅ Audited |
| OracleRegistry | operational_periphery | ethereum | n/a | [`0xc388b7...97f485`](./contracts/ethereum-1/0xc388b72ab90be82b230d919f9c05c87f9397f485/) | ✅ Audited |
| PreDepositVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x49af26...4a549e`](./contracts/ethereum-1/0x49af2649eefbc7e3847b41100fddcf91134a549e/); ethereum `0x5df4cb...a49c44`; ethereum `0xefc8e0...a41a53` | ✅ Audited |
| SecurityModule | unknown | ethereum | n/a | 4 deployments: ethereum [`0x1d1e4d...ebf1b5`](./contracts/ethereum-1/0x1d1e4dc88bc3a56cac0495aaa298cde3fcebf1b5/); ethereum `0x314767...c39347`; ethereum `0x49ee9b...f92542`; ethereum `0xb84317...8c3fe1` | ✅ Audited |
| SecurityModule | unknown | ethereum | n/a | [`0xae3d2b...bf8186`](./contracts/ethereum-1/0xae3d2b4526b2c75081a79c0dc620f3aeaabf8186/) | ✅ Audited |
| SignedMathHelper | periphery | ethereum | n/a | 2 deployments: ethereum [`0xe11b48...51bc4d`](./contracts/ethereum-1/0xe11b4879a771222cdae84e4392b03adaa151bc4d/); base [`0xe11b48...51bc4d`](./contracts/base-8453/0xe11b4879a771222cdae84e4392b03adaa151bc4d/) | ✅ Audited |
| SwapModule | unknown | ethereum | n/a | [`0x923c98...0c17c3`](./contracts/ethereum-1/0x923c98b22f9c367a109e93f7dfbaca28b20c17c3/) | ✅ Audited |
| TokenRegistry | registry | ethereum | n/a | [`0xd9310a...2a5fd4`](./contracts/ethereum-1/0xd9310a41d085c0dc1e40f691e8647080862a5fd4/) | ✅ Audited |
| WatermarkFeeManager | governance | ethereum | n/a | [`0x09002b...51a221`](./contracts/ethereum-1/0x09002bdb52a0cba3b1376f5a373739b20f51a221/) | ✅ Audited |
| WatermarkFeeManager | governance | ethereum | n/a | 5 deployments: ethereum [`0x459785...80e14d`](./contracts/ethereum-1/0x459785eac33b1a52e4c3da0a2f0102d94b80e14d/); ethereum `0x8eb36d...793590`; ethereum `0x98072b...819c13`; ethereum `0xa28a77...174e7c`; ethereum `0xa7f012...a690a7` | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessManagerUpgradeable | governance | ethereum | n/a | [`0x0fcefa...665d7f`](./contracts/ethereum-1/0x0fcefa3f1047f35521a49cd8b06fabd588665d7f/) | ⚠️ Unaudited |
| AsyncRedeemerFee | unknown | ethereum | n/a | [`0xa6e1a2...211739`](./contracts/ethereum-1/0xa6e1a23c70c9b05325ae2363af14e44bfc211739/) | ⚠️ Unaudited |
| ConcreteAsyncVaultImpl | core_logic | ethereum | n/a | [`0xcd9f59...0d2a32`](./contracts/ethereum-1/0xcd9f5907f92818bc06c9ad70217f089e190d2a32/) | ⚠️ Unaudited |
| HubStrategyDeploymentZap | adapter | ethereum | n/a | [`0x33d1f3...43e4bb`](./contracts/ethereum-1/0x33d1f3cb1c09b85614d662446a3dbd58ca43e4bb/) | ⚠️ Unaudited |
| LayerZeroV2BridgeConfig | operational_periphery | ethereum | n/a | [`0x1b0643...343771`](./contracts/ethereum-1/0x1b064336d9c4999c942ecc36e36d48a411343771/) | ⚠️ Unaudited |
| MachineShareOracleFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3f762c...0140ce`](./contracts/ethereum-1/0x3f762cbb8919dcef405078500f325baedd0140ce/); ethereum `0xc00365...bbc776` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ink | n/a | 3 deployments: ink `0x110820...b42467`; ink `0x1b0643...343771`; ink `0xdde7fd...36da86` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2025-07_Invariant_Testing_Engagement_Makina_Finance_Makina_Core.pdf](https://github.com/Enigma-Dark/security-review-reports/blob/main/2025-07_Invariant_Testing_Engagement_Makina_Finance_Makina_Core.pdf) | Enigma Ventures | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf](https://reports.chainsecurity.com/Makina/ChainSecurity_Makina_MakinaCoreSmartContracts_Audit.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Direct | contract_name | 14 | n/a |
| [ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf](https://reports.chainsecurity.com/Makina/ChainSecurity_Makina_MakinaPeripherySmartContracts_Audit.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Direct | contract_name | 21 | n/a |
| [www.chainsecurity.com/security-audit/makina-core](https://www.chainsecurity.com/security-audit/makina-core) | ChainSecurity | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [www.chainsecurity.com/security-audit/makina-periphery](https://www.chainsecurity.com/security-audit/makina-periphery) | ChainSecurity | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [ottersec.notion.site/Sampled-Public-Audit-Reports-a296e98838aa4fdb8f3b192663400772](https://ottersec.notion.site/Sampled-Public-Audit-Reports-a296e98838aa4fdb8f3b192663400772?p=2a284d4e41468027b796e222fbbb8939&pm=s) | Ottersec | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [2025-09_Security_Review_Makina_Finance_Makina_Periphery_Machine_Share_Oracle.pdf](https://docs.makina.finance/audits/2025-09_Security_Review_Makina_Finance_Makina_Periphery_Machine_Share_Oracle.pdf) | Enigma Ventures | Audit | 2025-09 | fresh | Direct | contract_name | 4 | n/a |
| [review.pdf](https://github.com/sigp/public-audits/blob/master/reports/makina/review.pdf) | Sigma Prime | Audit | 2025-08 | fresh | Direct | contract_name | 5 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0fcefa...665d7f`](./contracts/ethereum-1/0x0fcefa3f1047f35521a49cd8b06fabd588665d7f/) | AccessManagerUpgradeable | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6e1a2...211739`](./contracts/ethereum-1/0xa6e1a23c70c9b05325ae2363af14e44bfc211739/) | AsyncRedeemerFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcd9f59...0d2a32`](./contracts/ethereum-1/0xcd9f5907f92818bc06c9ad70217f089e190d2a32/) | ConcreteAsyncVaultImpl | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33d1f3...43e4bb`](./contracts/ethereum-1/0x33d1f3cb1c09b85614d662446a3dbd58ca43e4bb/) | HubStrategyDeploymentZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f762c...0140ce`](./contracts/ethereum-1/0x3f762cbb8919dcef405078500f325baedd0140ce/) | MachineShareOracleFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 43 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=44

Zero-match audit list:

- [3949] 2025-07_Invariant_Testing_Engagement_Makina_Finance_Makina_Core.pdf
- [15634] www.chainsecurity.com/security-audit/makina-core
- [15635] www.chainsecurity.com/security-audit/makina-periphery
- [15636] ottersec.notion.site/Sampled-Public-Audit-Reports-a296e98838aa4fdb8f3b192663400772

Fork inheritance lineage and inherited audits are included when available.
