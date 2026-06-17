# Agentic Audit Brief: Parallel Protocol

## Project Overview

- Project: Parallel Protocol (`parallel-protocol`)
- Website: [https://parallel.best/](https://parallel.best/)
- Lifecycle: active (Tier 0, 93.7% below peak)
- Generated: 2026-06-17T07:00:49.683Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, berachain, bsc, ethereum, fantom, fraxtal, gnosis, hyperliquid, ink, linea, optimism, plasma, polygon, scroll, sei, sonic, unichain
- Contract surface: 35 unique implementations (116 raw deployments)
- DeFi Llama TVL: $3,903,603.00
- On-chain TVL (included contracts): $606,664.36
- TVL by chain: Ethereum $606,664.36

## Project Description

Parallel Protocol is an over-collateralized decentralized stablecoin protocol centered on USDp, enabling users to deposit collateral, mint stablecoins, and access savings or yield products. TokenP is a technical contract implementation name for the stablecoin. Bridge, flash-token, or parallelizer components should be described only as supporting contract modules where independently documented, not as the protocol's primary public-facing product identity.

### Architecture

The Core Protocol's TokenP stablecoin is used across the Flashloan, Bridging, and Savings modules, creating a unified token economy. The Parallelizer Module operates as a separate yield layer, interacting with external protocols via Swapper adapters and distributing rewards, while governance is shared through ParallelAccessManager instances.

## Contract Surface Quality

- Indexed contracts: 227; live-surface contracts included: 116 (65 live, 51 unknown).
- Excluded by liveness: 31 inactive, 80 singleton, 0 uninitialized.
- Deployment units: 0/40 live.
- Detected codebases: none
- Unverified dependencies: 12/66.

## Audit Coverage Summary

- Verified implementations audited: 1/24 (4.2%)
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 35
- Raw deployments: 116
- Audits discovered: 5
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Staleness: 0 fresh, 2 aging, 2 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 4.2% | 2021-06 |
| Quantstamp | Tier 2 | 1 | 4.2% | 2021-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultsCore | core_logic | polygon | n/a | 9 deployments: ethereum `0x173ae6...8c674b`; ethereum `0xe26348...f93204`; polygon [`0x0a9202...1b400f`](./contracts/polygon-137/0x0a9202c6417a7b6b166e7f7fe2719b09261b400f/); polygon `0x6cffe4...acd8c5`; polygon `0x78c48a...a920e6`; polygon `0x9912c1...11a172`; polygon `0xc0459e...16c1a4`; polygon `0xcababc...5e6e5f`; polygon `0xfaee16...6b5711` | ✅ Audited |

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgeableToken | operational_periphery | polygon | n/a | 8 deployments: ethereum `0x74e3f9...f60e30`; ethereum `0xd4dee6...c838eb`; polygon [`0x1b03d0...583342`](./contracts/polygon-137/0x1b03d006a47df53b440b9a94af88f38f63583342/); polygon `0x431132...32273b`; polygon `0x5e6c85...f2be85`; polygon `0x7e6bc0...d0a433`; polygon `0x917b9d...51afd7`; polygon `0xe462df...6bc9a8` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | base | n/a | 17 deployments: ethereum `0x78bb48...95823c`; optimism `0x76a9a0...759dd5`; bsc `0x7b54f3...420c72`; gnosis `0x9ffacb...c699ec`; unichain `0x9ffacb...c699ec`; polygon `0x9afdb5...4a2ca9`; sonic `0xda8189...a377e6`; fraxtal `0x9e79ec...3a9ee7`; hyperliquid `0xc3bef2...8048ed`; sei `0x7b54f3...420c72`; base [`0x4dde0e...8531fc`](./contracts/base-8453/0x4dde0e308cfb60515218c6ad2df1134fc48531fc/); plasma `0x9e79ec...3a9ee7`; arbitrum [`0x4dde0e...8531fc`](./contracts/arbitrum-42161/0x4dde0e308cfb60515218c6ad2df1134fc48531fc/); avalanche `0x9ffacb...c699ec`; linea `0x9e79ec...3a9ee7`; berachain `0x9ffacb...c699ec`; scroll `0x9ffacb...c699ec` | ⚠️ Unaudited |
| DiamondCut | unknown | base | n/a | 3 deployments: sonic `0xe9fe47...5990e8`; base [`0x154524...9295b1`](./contracts/base-8453/0x15452454a9735d68df430879b2941316a09295b1/); avalanche `0x657acb...ce0052` | ⚠️ Unaudited |
| DiamondInitializer | unknown | base | n/a | 3 deployments: sonic `0xbe65f0...57d588`; base [`0x3997f0...2298d7`](./contracts/base-8453/0x3997f0dbd1e2cfc4eccf60c31366930dcf2298d7/); avalanche `0x506ba3...7f3c5a` | ⚠️ Unaudited |
| DiamondLoupe | unknown | avalanche | n/a | 3 deployments: sonic `0x2b6c7c...6e4dec`; base `0x24cef2...13d3aa`; avalanche [`0x23d491...2ba95d`](./contracts/avalanche-43114/0x23d491aa7c0972087f8a607f6f4c7106a02ba95d/) | ⚠️ Unaudited |
| DiamondProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x125030...0f1707`](./contracts/hyperliquid-999/0x1250304f66404cd153fa39388ddcdaec7e0f1707/); avalanche `0x41d589...547c80` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | scroll | n/a | [`0x9ee196...f26aa4`](./contracts/scroll-534352/0x9ee1963f05553ef838604dd39403be21cef26aa4/) | ⚠️ Unaudited |
| GenericHarvester | operational_periphery | avalanche | n/a | 5 deployments: ethereum `0x36da06...12636c`; sonic `0x120805...06a9d2`; hyperliquid `0x57770c...db7e0e`; base `0xca43ec...6b410a`; avalanche [`0x0d45b1...32cae4`](./contracts/avalanche-43114/0x0d45b129dc868963025db79a9074ea9c9e32cae4/) | ⚠️ Unaudited |
| Getters | unknown | sonic | n/a | 3 deployments: sonic [`0x90e4ae...a4ee43`](./contracts/sonic-146/0x90e4ae8ba8c6fd51fced0f9331668b05c7a4ee43/); base `0xbe65f0...57d588`; avalanche `0xf6cc47...e22dbb` | ⚠️ Unaudited |
| MainFeeDistributor | operational_periphery | polygon | n/a | 2 deployments: polygon [`0x90337e...348545`](./contracts/polygon-137/0x90337e484b1cb02132fc150d3afa262147348545/); polygon `0xb4af56...7cbaa1` | ⚠️ Unaudited |
| ParallelAccessManager | governance | optimism | n/a | 18 deployments: ethereum `0x94ea88...355f7a`; optimism [`0x0e4e7c...debf46`](./contracts/optimism-10/0x0e4e7ca9d7b1e6293d0713efefb4bca010debf46/); bsc `0xfd28f1...85998e`; gnosis `0xfd28f1...85998e`; unichain `0xfd28f1...85998e`; polygon `0x7df74b...6e2811`; polygon `0x8fcf91...4140f3`; sonic `0x8efb3d...094b78`; fraxtal `0xfd28f1...85998e`; hyperliquid `0xfd28f1...85998e`; sei `0xfd28f1...85998e`; base [`0x0e4e7c...debf46`](./contracts/base-8453/0x0e4e7ca9d7b1e6293d0713efefb4bca010debf46/); plasma `0xfd28f1...85998e`; arbitrum [`0x0e4e7c...debf46`](./contracts/arbitrum-42161/0x0e4e7ca9d7b1e6293d0713efefb4bca010debf46/); avalanche `0xfd28f1...85998e`; linea `0xfd28f1...85998e`; berachain `0xfd28f1...85998e`; scroll `0xfd28f1...85998e` | ⚠️ Unaudited |
| PeripheralMigrationContract | operational_periphery | polygon | n/a | [`0x9c6885...5316cb`](./contracts/polygon-137/0x9c68850e18eacd4ea7ca2998b6bbed9cf55316cb/) | ⚠️ Unaudited |
| PeripheralPRL | unknown | polygon | n/a | 5 deployments: optimism `0xfd28f1...85998e`; polygon [`0x7790dd...2d5948`](./contracts/polygon-137/0x7790dd69aa10ed3f1271e41cd7222d2a7d2d5948/); sonic `0xfd28f1...85998e`; base `0xfd28f1...85998e`; arbitrum `0xfd28f1...85998e` | ⚠️ Unaudited |
| Redeemer | unknown | avalanche | n/a | 3 deployments: sonic `0xe5c82b...032cc8`; base `0xe9fe47...5990e8`; avalanche [`0x6efedd...f262a2`](./contracts/avalanche-43114/0x6efeddf9269c3683ba516cb0e2124fe335f262a2/) | ⚠️ Unaudited |
| RewardHandler | unknown | base | n/a | 3 deployments: sonic `0xfb2d07...91e3f7`; base [`0x2b6c7c...6e4dec`](./contracts/base-8453/0x2b6c7c275404e93a14a05b549af292231d6e4dec/); avalanche `0x36da06...12636c` | ⚠️ Unaudited |
| RewardMerkleDistributor | operational_periphery | polygon | n/a | [`0x7b54f3...420c72`](./contracts/polygon-137/0x7b54f3d993d3bca077946034ea710f9c07420c72/) | ⚠️ Unaudited |
| SavingsNameable | unknown | avalanche | n/a | [`0x645fea...25884d`](./contracts/avalanche-43114/0x645feabb38283d13249845881778b6c24a25884d/) | ⚠️ Unaudited |
| SettersGovernor | governance | avalanche | n/a | 3 deployments: sonic `0xc3bef2...8048ed`; base `0x90e4ae...a4ee43`; avalanche [`0x5beada...5013a2`](./contracts/avalanche-43114/0x5beada21a6b9cb229117b3ea2c0d1594785013a2/) | ⚠️ Unaudited |
| SettersGuardian | governance | avalanche | n/a | 3 deployments: sonic `0xca43ec...6b410a`; base `0xe5c82b...032cc8`; avalanche [`0xbbc90e...43fe84`](./contracts/avalanche-43114/0xbbc90e685c4a66ebbdc71a3a1437d3111e43fe84/) | ⚠️ Unaudited |
| sPRL1 | unknown | base | n/a | 3 deployments: polygon `0xdb7be3...aa9475`; sonic `0x7df74b...6e2811`; base [`0x01fa35...922e48`](./contracts/base-8453/0x01fa35fde0e813e2d6687660a74a313d8d922e48/) | ⚠️ Unaudited |
| Swapper | adapter | avalanche | n/a | [`0x57265a...ac1490`](./contracts/avalanche-43114/0x57265a3d7db8f4a4a155eadf6c7326926cac1490/) | ⚠️ Unaudited |
| VaultsCoreState | core_logic | polygon | n/a | 5 deployments: ethereum `0x963d98...745249`; ethereum `0xdb7553...06386f`; polygon [`0x02c69c...6f25d8`](./contracts/polygon-137/0x02c69c480ab4a35f2c7117e2c17c904cd76f25d8/); polygon `0x0f3acb...662b48`; polygon `0xfad382...81f346` | ⚠️ Unaudited |
| VaultsV2Feed | core_logic | sei | n/a | 2 deployments: sei [`0xd8cc2a...309862`](./contracts/sei-1329/0xd8cc2a51556da84b5db309e86f30ff98b5309862/); sei `0xeb1974...489095` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x098e37...02d8b6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9e7733...2c64ef` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd4dee6...c838eb` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xf6abf8...c51f58` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa360e5...41c2f5` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x9e0dcf...991277` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x9ee196...f26aa4` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x9ffacb...c699ec` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xcb3e56...de600b` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xe23b5d...05cf7b` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xfd28f1...85998e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://raw.githubusercontent.com/code-423n4/2022-04-mimo/b18670f44d595483df2c0f76d1c57a7bfbfbc083/core/audits/certik.pdf) | CertiK | Audit | 2021-06 | stale | Direct | contract_name | 9 | high |
| [Rendered PDF capture](https://certificate.quantstamp.com/full/ten-x-titan.pdf) | Quantstamp | Audit | 2021-01 | stale | Direct | contract_name | 9 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/parallel-protocol/parallel-prl/dba8cdcac982a9b59006730cd890870bfc807e15/docs/audits/Parallel%20Protocol%20-%20Zenith%20Audit%20Report.pdf) | Guardian | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://raw.githubusercontent.com/parallel-protocol/parallel-prl/dba8cdcac982a9b59006730cd890870bfc807e15/docs/audits/Bailsec%20-%20Parallel%20Protocol%20-%20PRL%20Token%20-%20Final%20Report%20-%20January%202025.pdf) | Guardian | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://raw.githubusercontent.com/parallel-protocol/bridging-module/ad58d439a5e0cae78fa7e53aa0698347bd83b921/docs/audits/Bailsec%20-%20Parallel%20Bridge%20-%20BridgeableToken%20-%20Final%20Report%20-%20December%202024.pdf) | Guardian | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x1b03d0...583342`](./contracts/polygon-137/0x1b03d006a47df53b440b9a94af88f38f63583342/) | BridgeableToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4dde0e...8531fc`](./contracts/base-8453/0x4dde0e308cfb60515218c6ad2df1134fc48531fc/) | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x154524...9295b1`](./contracts/base-8453/0x15452454a9735d68df430879b2941316a09295b1/) | DiamondCut | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3997f0...2298d7`](./contracts/base-8453/0x3997f0dbd1e2cfc4eccf60c31366930dcf2298d7/) | DiamondInitializer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x23d491...2ba95d`](./contracts/avalanche-43114/0x23d491aa7c0972087f8a607f6f4c7106a02ba95d/) | DiamondLoupe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x125030...0f1707`](./contracts/hyperliquid-999/0x1250304f66404cd153fa39388ddcdaec7e0f1707/) | DiamondProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0d45b1...32cae4`](./contracts/avalanche-43114/0x0d45b129dc868963025db79a9074ea9c9e32cae4/) | GenericHarvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x90e4ae...a4ee43`](./contracts/sonic-146/0x90e4ae8ba8c6fd51fced0f9331668b05c7a4ee43/) | Getters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x90337e...348545`](./contracts/polygon-137/0x90337e484b1cb02132fc150d3afa262147348545/) | MainFeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0e4e7c...debf46`](./contracts/optimism-10/0x0e4e7ca9d7b1e6293d0713efefb4bca010debf46/) | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9c6885...5316cb`](./contracts/polygon-137/0x9c68850e18eacd4ea7ca2998b6bbed9cf55316cb/) | PeripheralMigrationContract | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7790dd...2d5948`](./contracts/polygon-137/0x7790dd69aa10ed3f1271e41cd7222d2a7d2d5948/) | PeripheralPRL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6efedd...f262a2`](./contracts/avalanche-43114/0x6efeddf9269c3683ba516cb0e2124fe335f262a2/) | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2b6c7c...6e4dec`](./contracts/base-8453/0x2b6c7c275404e93a14a05b549af292231d6e4dec/) | RewardHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7b54f3...420c72`](./contracts/polygon-137/0x7b54f3d993d3bca077946034ea710f9c07420c72/) | RewardMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x645fea...25884d`](./contracts/avalanche-43114/0x645feabb38283d13249845881778b6c24a25884d/) | SavingsNameable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5beada...5013a2`](./contracts/avalanche-43114/0x5beada21a6b9cb229117b3ea2c0d1594785013a2/) | SettersGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xbbc90e...43fe84`](./contracts/avalanche-43114/0xbbc90e685c4a66ebbdc71a3a1437d3111e43fe84/) | SettersGuardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x01fa35...922e48`](./contracts/base-8453/0x01fa35fde0e813e2d6687660a74a313d8d922e48/) | sPRL1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x57265a...ac1490`](./contracts/avalanche-43114/0x57265a3d7db8f4a4a155eadf6c7326926cac1490/) | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x02c69c...6f25d8`](./contracts/polygon-137/0x02c69c480ab4a35f2c7117e2c17c904cd76f25d8/) | VaultsCoreState | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xd8cc2a...309862`](./contracts/sei-1329/0xd8cc2a51556da84b5db309e86f30ff98b5309862/) | VaultsV2Feed | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 28 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=26

Zero-match audit list:

- [11981] Rendered PDF capture
- [11982] Rendered PDF capture
- [11983] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
