# Agentic Audit Brief: Mangrove

## Project Overview

- Project: Mangrove (`mangrove`)
- Website: [https://www.mangrove.exchange](https://www.mangrove.exchange)
- Lifecycle: active (Tier 0, 47.5% below peak)
- Generated: 2026-06-19T06:14:28.747Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: arbitrum, base, blast, sei
- Contract surface: 26 unique implementations (46 raw deployments)
- DeFi Llama TVL: $4,258,566.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Mangrove is an EVM-based order-book DEX and adaptive liquidity protocol that lets liquidity providers post programmable offers, restake otherwise idle liquidity, and run market-making or vault-based strategies across supported deployments.

### Architecture

The Mangrove core DEX provides the base order book, while Vaults and Strategies use it to manage liquidity and automate market making. Ghostbook extends order sharing across chains, and Oracles supply price data to vaults and strategies for asset valuation.

## Contract Surface Quality

- Indexed contracts: 149; live-surface contracts included: 46 (45 live, 1 unknown).
- Excluded by liveness: 103 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: aave-v2
- Unverified dependencies: 13/30.

## Audit Coverage Summary

- Verified implementations audited: 6/21 (28.6%)
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 26
- Raw deployments: 46
- Audits discovered: 8
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Staleness: 0 fresh, 1 aging, 7 stale, 0 unknown
- Tier 1 coverage: 23.8% (ChainSecurity, Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 4 | 19.0% | 2023-11 |
| Code4rena | Tier 1 | 4 | 19.0% | 2024-02 |
| unknown | Tier 2 | 1 | 4.8% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| KandelSeeder | unknown | base | n/a | [`0x808bc0...6a089a`](./contracts/base-8453/0x808bc04030bc558c99e6844e877bb22d166a089a/) | ✅ Audited |
| Mangrove | proxy | sei | unit-36291 | [`0xd9834d...b14bcd`](./contracts/sei-1329/0xd9834d7caa2acf81c40e7aac645cf9a57cb14bcd/) | ✅ Audited |
| Mangrove | unknown | arbitrum | n/a | 2 deployments: base `0x226135...725faa`; arbitrum [`0x109d9c...f93f61`](./contracts/arbitrum-42161/0x109d9cdfa4ac534354873ef634ef63c235f93f61/) | ✅ Audited |
| MangroveOrder | unknown | arbitrum | n/a | 4 deployments: sei `0x5ba076...75928b`; base `0xa3c363...2adf36`; arbitrum [`0x50793d...d2ffcc`](./contracts/arbitrum-42161/0x50793d97a0c905ea51c1c93f37fc73abe6d2ffcc/); blast `0x83251e...32d80e` | ✅ Audited |
| MangroveVaultFactory | registry | sei | n/a | [`0xd6cc0b...ba369e`](./contracts/sei-1329/0xd6cc0b43261a73209ccc135207b8ba98d2ba369e/) | ✅ Audited |
| SmartRouter | adapter | base | n/a | [`0x1424d7...7fbe32`](./contracts/base-8453/0x1424d7428dc11623100df1a3d06088c2d87fbe32/) | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BalancerV2Swapper | adapter | sei | n/a | [`0x369022...685dd0`](./contracts/sei-1329/0x369022670f2c623ee6894ae4053ef54c2c685dd0/) | ⚠️ Unaudited |
| ERC4626VaultV2Deployer | core_logic | sei | n/a | [`0x6d5e02...c6b69a`](./contracts/sei-1329/0x6d5e02a56631bb0b846e0bbd521df4b3d7c6b69a/) | ⚠️ Unaudited |
| MangroveCleanerV2 | unknown | base | n/a | [`0xb922a4...b75eae`](./contracts/base-8453/0xb922a4560bedcd22450574453e178e8a12b75eae/) | ⚠️ Unaudited |
| MangroveGhostBook | unknown | sei | n/a | 3 deployments: sei [`0x127a5a...81e8b6`](./contracts/sei-1329/0x127a5a5e086dce304875e392c8170b04bc81e8b6/); base `0x15f02f...bd549f`; arbitrum `0x46708d...dfafea` | ⚠️ Unaudited |
| MangroveVaultV2Factory | registry | sei | n/a | 4 deployments: sei [`0x44536a...b287b1`](./contracts/sei-1329/0x44536a066e9c736f2d90b2999275cffd26b287b1/); sei `0x78793b...a7328c`; sei `0xbce560...2f314a`; sei `0xfe7d44...2296e3` | ⚠️ Unaudited |
| MgvPriceOracle | operational_periphery | sei | n/a | 2 deployments: sei [`0x10f9e2...bc6e2f`](./contracts/sei-1329/0x10f9e248e1515847ab120ce2daf2e7e7bdbc6e2f/); arbitrum `0xb81d09...4fd38c` | ⚠️ Unaudited |
| MgvReader | unknown | sei | n/a | [`0xfeafb3...87499e`](./contracts/sei-1329/0xfeafb31ac7f09892b50c4d6da06a1e48d487499e/) | ⚠️ Unaudited |
| MgvRewardsDistributor | operational_periphery | sei | n/a | [`0xdb6a3a...0dbb10`](./contracts/sei-1329/0xdb6a3a20743f5878732ef73623a51033c80dbb10/) | ⚠️ Unaudited |
| MintHelperV1 | periphery | sei | n/a | [`0x1ae538...5e0716`](./contracts/sei-1329/0x1ae53888ce926ca468c9574dd2cb885b005e0716/) | ⚠️ Unaudited |
| MockTokenFactory | registry | base | n/a | [`0x789a28...603151`](./contracts/base-8453/0x789a28a6fcc5682365e5144e05c04d4af4603151/) | ⚠️ Unaudited |
| OracleLib | operational_periphery | sei | n/a | 2 deployments: sei [`0x555557...00acfd`](./contracts/sei-1329/0x5555571f9cbec32d6a8dcb5042b73cddd000acfd/); sei `0xb9d022...cc5b1d` | ⚠️ Unaudited |
| TakaraKandelSeeder | unknown | sei | n/a | 7 deployments: sei [`0x2f0c90...def08d`](./contracts/sei-1329/0x2f0c903973501859b9ebba0c6c6afffb07def08d/); sei `0x76aa9e...027eaf`; sei `0xa04bc2...8378ee`; sei `0xaccc07...4ce055`; sei `0xb9028a...6aecc4`; sei `0xdcc3d2...96af2c`; sei `0xf150ab...5e3f60` | ⚠️ Unaudited |
| TakaraRouterProxyDeployer | adapter | sei | n/a | 3 deployments: sei [`0x1feae2...94cfbf`](./contracts/sei-1329/0x1feae24e399cdee3ad009570b6c1418b5494cfbf/); sei `0x7964be...c8663b`; sei `0xf63535...ce6c5b` | ⚠️ Unaudited |
| VaultsV2Feed | core_logic | sei | n/a | 2 deployments: sei [`0x85e438...c9724c`](./contracts/sei-1329/0x85e438c92773ad8501ec465da4f64bfb53c9724c/); sei `0xbb4b6b...4b7f10` | ⚠️ Unaudited |
| VaultV2Deployer | core_logic | sei | n/a | [`0x4476bd...3d7c60`](./contracts/sei-1329/0x4476bdf5d97b2ba9604b3cf2104c0860823d7c60/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | sei | n/a | `0x4ca024...134ff7` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x60251d...20da98` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x928387...2d0c31` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xd5843e...a30047` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xf87e18...a7f4f7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf](https://github.com/mangrovedao/audits/blob/main/core/v1/ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf) | ChainSecurity | Audit | 2023-11 | stale | Direct | contract_name | 3 | high |
| [ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf](https://github.com/mangrovedao/audits/blob/main/strats/v0/ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf) | ChainSecurity | Audit | 2023-04 | stale | Direct | contract_name | 1 | high |
| [ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf](https://github.com/mangrovedao/audits/blob/main/strats/v0/ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf) | ChainSecurity | Audit | 2023-03 | stale | Direct | contract_name | 4 | high |
| [ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf](https://github.com/mangrovedao/audits/blob/main/strats/v1/ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf) | ChainSecurity | Audit | 2023-11 | stale | Direct | contract_name | 5 | high |
| [NM0208_FINAL_MANGROVE-684a6582cd4f3a18a25feeed05fb5482.pdf](https://github.com/mangrovedao/audits/blob/main/strats/v1/NM0208_FINAL_MANGROVE-684a6582cd4f3a18a25feeed05fb5482.pdf) | Nethermind | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [NM_0339_Mangrove_Vault_FINAL.pdf](https://github.com/mangrovedao/audits/blob/main/vaults/NM_0339_Mangrove_Vault_FINAL.pdf) | unknown | Audit | 2024-10 | aging | Direct | contract_name | 1 | high |
| [ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf](https://github.com/mangrovedao/audits/blob/main/core/v0/ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf) | Code4rena | Contest | 2023-03 | stale | Direct | contract_name | 3 | high |
| [2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf](https://github.com/mangrovedao/audits/blob/main/strats/v1/2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf) | Code4rena | Contest | 2024-02 | stale | Direct | contract_name | 5 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sei | [`0x6d5e02...c6b69a`](./contracts/sei-1329/0x6d5e02a56631bb0b846e0bbd521df4b3d7c6b69a/) | ERC4626VaultV2Deployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb922a4...b75eae`](./contracts/base-8453/0xb922a4560bedcd22450574453e178e8a12b75eae/) | MangroveCleanerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x127a5a...81e8b6`](./contracts/sei-1329/0x127a5a5e086dce304875e392c8170b04bc81e8b6/) | MangroveGhostBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x44536a...b287b1`](./contracts/sei-1329/0x44536a066e9c736f2d90b2999275cffd26b287b1/) | MangroveVaultV2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x10f9e2...bc6e2f`](./contracts/sei-1329/0x10f9e248e1515847ab120ce2daf2e7e7bdbc6e2f/) | MgvPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xfeafb3...87499e`](./contracts/sei-1329/0xfeafb31ac7f09892b50c4d6da06a1e48d487499e/) | MgvReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xdb6a3a...0dbb10`](./contracts/sei-1329/0xdb6a3a20743f5878732ef73623a51033c80dbb10/) | MgvRewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x1ae538...5e0716`](./contracts/sei-1329/0x1ae53888ce926ca468c9574dd2cb885b005e0716/) | MintHelperV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x789a28...603151`](./contracts/base-8453/0x789a28a6fcc5682365e5144e05c04d4af4603151/) | MockTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x555557...00acfd`](./contracts/sei-1329/0x5555571f9cbec32d6a8dcb5042b73cddd000acfd/) | OracleLib | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x2f0c90...def08d`](./contracts/sei-1329/0x2f0c903973501859b9ebba0c6c6afffb07def08d/) | TakaraKandelSeeder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x1feae2...94cfbf`](./contracts/sei-1329/0x1feae24e399cdee3ad009570b6c1418b5494cfbf/) | TakaraRouterProxyDeployer | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x85e438...c9724c`](./contracts/sei-1329/0x85e438c92773ad8501ec465da4f64bfb53c9724c/) | VaultsV2Feed | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x4476bd...3d7c60`](./contracts/sei-1329/0x4476bdf5d97b2ba9604b3cf2104c0860823d7c60/) | VaultV2Deployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=7
- Match method counts: extraction_exact=74

Zero-match audit list:

- [2637] NM0208_FINAL_MANGROVE-684a6582cd4f3a18a25feeed05fb5482.pdf

Fork inheritance lineage and inherited audits are included when available.
