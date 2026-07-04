# Agentic Audit Brief: Parallel Protocol

## Project Overview

- Project: Parallel Protocol (`parallel-protocol`)
- Website: [https://parallel.best/](https://parallel.best/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:42.953Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: arbitrum, avalanche, base, berachain, bsc, ethereum, fantom, fraxtal, gnosis, hyperliquid, ink, linea, optimism, plasma, polygon, scroll, sei, sonic, unichain
- Contract surface: 32 unique implementations (107 raw deployments)
- DeFi Llama TVL: $2,623,734.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 46 project-authored contract(s) across 10 chain(s); 1 ERC4626 vault, 9 ERC20 tokens, 1 Chainlink feed; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 15 common project-authored base contract(s) (oft, oftcore, oapp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 223; live-surface contracts included: 107 (92 live, 15 unknown).
- Excluded by liveness: 116 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 9/24 (37.5%)
- Deployed-live implementations: 25 of 32 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 9/26
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 32
- Raw deployments: 107
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Guardian | Tier 2 | 8 | 30.8% | 2025-02 |
| CertiK | Tier 2 | 1 | 3.8% | 2021-06 |
| Quantstamp | Tier 2 | 1 | 3.8% | 2021-01 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgeableToken | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x74e3f9...f60e30`](./contracts/ethereum-1/0x74e3f9d724da6d7e4db8ecab4f18e6ba44f60e30/); ethereum `0xd4dee6...c838eb`; polygon `0xe462df...6bc9a8` | ✅ Audited |
| MainFeeDistributor | operational_periphery | polygon | n/a | [`0x90337e...348545`](./contracts/polygon-137/0x90337e484b1cb02132fc150d3afa262147348545/) | ✅ Audited |
| PeripheralMigrationContract | operational_periphery | polygon | n/a | [`0x9c6885...5316cb`](./contracts/polygon-137/0x9c68850e18eacd4ea7ca2998b6bbed9cf55316cb/) | ✅ Audited |
| PeripheralPRL | unknown | polygon | n/a | 5 deployments: optimism `0xfd28f1...85998e`; polygon [`0x7790dd...2d5948`](./contracts/polygon-137/0x7790dd69aa10ed3f1271e41cd7222d2a7d2d5948/); sonic `0xfd28f1...85998e`; base `0xfd28f1...85998e`; arbitrum `0xfd28f1...85998e` | ✅ Audited |
| RewardMerkleDistributor | operational_periphery | polygon | n/a | [`0x7b54f3...420c72`](./contracts/polygon-137/0x7b54f3d993d3bca077946034ea710f9c07420c72/) | ✅ Audited |
| sPRL1 | unknown | base | n/a | 4 deployments: ethereum `0xead729...1b5901`; polygon `0xdb7be3...aa9475`; sonic `0x7df74b...6e2811`; base [`0x01fa35...922e48`](./contracts/base-8453/0x01fa35fde0e813e2d6687660a74a313d8d922e48/) | ✅ Audited |
| sPRL2 | unknown | ethereum | n/a | [`0xe8a2d8...322135`](./contracts/ethereum-1/0xe8a2d848fe656e34a6caa35f375b42979e322135/) | ✅ Audited |
| VaultsCore | core_logic | polygon | n/a | 4 deployments: ethereum `0x173ae6...8c674b`; ethereum `0xe26348...f93204`; polygon [`0x0a9202...1b400f`](./contracts/polygon-137/0x0a9202c6417a7b6b166e7f7fe2719b09261b400f/); polygon `0xcababc...5e6e5f` | ✅ Audited |
| VaultsCoreState | core_logic | polygon | n/a | 4 deployments: ethereum `0x963d98...745249`; ethereum `0xdb7553...06386f`; polygon [`0x02c69c...6f25d8`](./contracts/polygon-137/0x02c69c480ab4a35f2c7117e2c17c904cd76f25d8/); polygon `0xfad382...81f346` | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgeableTokenP | operational_periphery | base | n/a | 17 deployments: ethereum `0x78bb48...95823c`; optimism `0x76a9a0...759dd5`; bsc `0x7b54f3...420c72`; gnosis `0x9ffacb...c699ec`; unichain `0x9ffacb...c699ec`; polygon `0x9afdb5...4a2ca9`; sonic `0xda8189...a377e6`; fraxtal `0x9e79ec...3a9ee7`; hyperliquid `0xc3bef2...8048ed`; sei `0x7b54f3...420c72`; base [`0x4dde0e...8531fc`](./contracts/base-8453/0x4dde0e308cfb60515218c6ad2df1134fc48531fc/); plasma `0x9e79ec...3a9ee7`; arbitrum [`0x4dde0e...8531fc`](./contracts/arbitrum-42161/0x4dde0e308cfb60515218c6ad2df1134fc48531fc/); avalanche `0x9ffacb...c699ec`; linea `0x9e79ec...3a9ee7`; berachain `0x9ffacb...c699ec`; scroll `0x9ffacb...c699ec` | ⚠️ Unaudited |
| DiamondCut | unknown | base | n/a | 3 deployments: sonic `0xe9fe47...5990e8`; base [`0x154524...9295b1`](./contracts/base-8453/0x15452454a9735d68df430879b2941316a09295b1/); avalanche `0x657acb...ce0052` | ⚠️ Unaudited |
| DiamondInitializer | unknown | base | n/a | 3 deployments: sonic `0xbe65f0...57d588`; base [`0x3997f0...2298d7`](./contracts/base-8453/0x3997f0dbd1e2cfc4eccf60c31366930dcf2298d7/); avalanche `0x506ba3...7f3c5a` | ⚠️ Unaudited |
| DiamondLoupe | unknown | avalanche | n/a | 3 deployments: sonic `0x2b6c7c...6e4dec`; base `0x24cef2...13d3aa`; avalanche [`0x23d491...2ba95d`](./contracts/avalanche-43114/0x23d491aa7c0972087f8a607f6f4c7106a02ba95d/) | ⚠️ Unaudited |
| DiamondProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x125030...0f1707`](./contracts/hyperliquid-999/0x1250304f66404cd153fa39388ddcdaec7e0f1707/); avalanche `0x41d589...547c80` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | scroll | n/a | [`0x9ee196...f26aa4`](./contracts/scroll-534352/0x9ee1963f05553ef838604dd39403be21cef26aa4/) | ⚠️ Unaudited |
| GenericHarvester | operational_periphery | avalanche | n/a | 5 deployments: ethereum `0x36da06...12636c`; sonic `0x120805...06a9d2`; hyperliquid `0x57770c...db7e0e`; base `0xca43ec...6b410a`; avalanche [`0x0d45b1...32cae4`](./contracts/avalanche-43114/0x0d45b129dc868963025db79a9074ea9c9e32cae4/) | ⚠️ Unaudited |
| Getters | unknown | sonic | n/a | 3 deployments: sonic [`0x90e4ae...a4ee43`](./contracts/sonic-146/0x90e4ae8ba8c6fd51fced0f9331668b05c7a4ee43/); base `0xbe65f0...57d588`; avalanche `0xf6cc47...e22dbb` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0x25fc7f...706f9b`](./contracts/ethereum-1/0x25fc7ffa8f9da3582a36633d04804f0004706f9b/) | ⚠️ Unaudited |
| ParallelAccessManager | governance | optimism | n/a | 17 deployments: ethereum `0x94ea88...355f7a`; optimism [`0x0e4e7c...debf46`](./contracts/optimism-10/0x0e4e7ca9d7b1e6293d0713efefb4bca010debf46/); bsc `0xfd28f1...85998e`; gnosis `0xfd28f1...85998e`; unichain `0xfd28f1...85998e`; polygon `0x7df74b...6e2811`; sonic `0x8efb3d...094b78`; fraxtal `0xfd28f1...85998e`; hyperliquid `0xfd28f1...85998e`; sei `0xfd28f1...85998e`; base [`0x0e4e7c...debf46`](./contracts/base-8453/0x0e4e7ca9d7b1e6293d0713efefb4bca010debf46/); plasma `0xfd28f1...85998e`; arbitrum [`0x0e4e7c...debf46`](./contracts/arbitrum-42161/0x0e4e7ca9d7b1e6293d0713efefb4bca010debf46/); avalanche `0xfd28f1...85998e`; linea `0xfd28f1...85998e`; berachain `0xfd28f1...85998e`; scroll `0xfd28f1...85998e` | ⚠️ Unaudited |
| Redeemer | unknown | avalanche | n/a | 3 deployments: sonic `0xe5c82b...032cc8`; base `0xe9fe47...5990e8`; avalanche [`0x6efedd...f262a2`](./contracts/avalanche-43114/0x6efeddf9269c3683ba516cb0e2124fe335f262a2/) | ⚠️ Unaudited |
| RewardHandler | unknown | base | n/a | 3 deployments: sonic `0xfb2d07...91e3f7`; base [`0x2b6c7c...6e4dec`](./contracts/base-8453/0x2b6c7c275404e93a14a05b549af292231d6e4dec/); avalanche `0x36da06...12636c` | ⚠️ Unaudited |
| SavingsNameable | unknown | avalanche | n/a | [`0x645fea...25884d`](./contracts/avalanche-43114/0x645feabb38283d13249845881778b6c24a25884d/) | ⚠️ Unaudited |
| SettersGovernor | governance | avalanche | n/a | 3 deployments: sonic `0xc3bef2...8048ed`; base `0x90e4ae...a4ee43`; avalanche [`0x5beada...5013a2`](./contracts/avalanche-43114/0x5beada21a6b9cb229117b3ea2c0d1594785013a2/) | ⚠️ Unaudited |
| SettersGuardian | governance | avalanche | n/a | 3 deployments: sonic `0xca43ec...6b410a`; base `0xe5c82b...032cc8`; avalanche [`0xbbc90e...43fe84`](./contracts/avalanche-43114/0xbbc90e685c4a66ebbdc71a3a1437d3111e43fe84/) | ⚠️ Unaudited |
| Swapper | adapter | avalanche | n/a | [`0x57265a...ac1490`](./contracts/avalanche-43114/0x57265a3d7db8f4a4a155eadf6c7326926cac1490/) | ⚠️ Unaudited |
| VaultsV2Feed | core_logic | sei | n/a | 2 deployments: sei [`0xd8cc2a...309862`](./contracts/sei-1329/0xd8cc2a51556da84b5db309e86f30ff98b5309862/); sei `0xeb1974...489095` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x098e37...02d8b6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9e7733...2c64ef` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd4dee6...c838eb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xca43ec...6b410a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa360e5...41c2f5` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | 7 deployments: fantom `0xf6abf8...c51f58`; ink `0x9e0dcf...991277`; ink `0x9ee196...f26aa4`; ink `0x9ffacb...c699ec`; ink `0xcb3e56...de600b`; ink `0xe23b5d...05cf7b`; ink `0xfd28f1...85998e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [certik.pdf](https://raw.githubusercontent.com/code-423n4/2022-04-mimo/b18670f44d595483df2c0f76d1c57a7bfbfbc083/core/audits/certik.pdf) | CertiK | Audit | 2021-06 | stale | Direct | contract_name | 1 | n/a |
| [ten-x-titan.pdf](https://certificate.quantstamp.com/full/ten-x-titan.pdf) | Quantstamp | Audit | 2021-01 | stale | Direct | contract_name | 1 | n/a |
| [Parallel Protocol - Zenith Audit Report.pdf](https://raw.githubusercontent.com/parallel-protocol/parallel-prl/dba8cdcac982a9b59006730cd890870bfc807e15/docs/audits/Parallel%20Protocol%20-%20Zenith%20Audit%20Report.pdf) | Guardian | Audit | 2025-02 | aging | Direct | contract_name | 5 | n/a |
| [Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf](https://raw.githubusercontent.com/parallel-protocol/parallel-prl/dba8cdcac982a9b59006730cd890870bfc807e15/docs/audits/Bailsec%20-%20Parallel%20Protocol%20-%20PRL%20Token%20-%20Final%20Report%20-%20January%202025.pdf) | Guardian | Audit | 2025-01 | aging | Direct | contract_name | 6 | n/a |
| [Bailsec - Parallel Bridge - BridgeableToken - Final Report - December 2024.pdf](https://raw.githubusercontent.com/parallel-protocol/bridging-module/ad58d439a5e0cae78fa7e53aa0698347bd83b921/docs/audits/Bailsec%20-%20Parallel%20Bridge%20-%20BridgeableToken%20-%20Final%20Report%20-%20December%202024.pdf) | Guardian | Audit | 2024-12 | aging | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x4dde0e...8531fc`](./contracts/base-8453/0x4dde0e308cfb60515218c6ad2df1134fc48531fc/) | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x154524...9295b1`](./contracts/base-8453/0x15452454a9735d68df430879b2941316a09295b1/) | DiamondCut | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3997f0...2298d7`](./contracts/base-8453/0x3997f0dbd1e2cfc4eccf60c31366930dcf2298d7/) | DiamondInitializer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x23d491...2ba95d`](./contracts/avalanche-43114/0x23d491aa7c0972087f8a607f6f4c7106a02ba95d/) | DiamondLoupe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x125030...0f1707`](./contracts/hyperliquid-999/0x1250304f66404cd153fa39388ddcdaec7e0f1707/) | DiamondProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0d45b1...32cae4`](./contracts/avalanche-43114/0x0d45b129dc868963025db79a9074ea9c9e32cae4/) | GenericHarvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x90e4ae...a4ee43`](./contracts/sonic-146/0x90e4ae8ba8c6fd51fced0f9331668b05c7a4ee43/) | Getters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0e4e7c...debf46`](./contracts/optimism-10/0x0e4e7ca9d7b1e6293d0713efefb4bca010debf46/) | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6efedd...f262a2`](./contracts/avalanche-43114/0x6efeddf9269c3683ba516cb0e2124fe335f262a2/) | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2b6c7c...6e4dec`](./contracts/base-8453/0x2b6c7c275404e93a14a05b549af292231d6e4dec/) | RewardHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x645fea...25884d`](./contracts/avalanche-43114/0x645feabb38283d13249845881778b6c24a25884d/) | SavingsNameable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5beada...5013a2`](./contracts/avalanche-43114/0x5beada21a6b9cb229117b3ea2c0d1594785013a2/) | SettersGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xbbc90e...43fe84`](./contracts/avalanche-43114/0xbbc90e685c4a66ebbdc71a3a1437d3111e43fe84/) | SettersGuardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x57265a...ac1490`](./contracts/avalanche-43114/0x57265a3d7db8f4a4a155eadf6c7326926cac1490/) | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xd8cc2a...309862`](./contracts/sei-1329/0xd8cc2a51556da84b5db309e86f30ff98b5309862/) | VaultsV2Feed | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=15

Fork inheritance lineage and inherited audits are included when available.
