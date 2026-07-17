# Agentic Audit Brief: Veda

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 61 (0 matched; 61 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Veda (`veda`)
- Website: [https://veda.tech](https://veda.tech)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, berachain, bsc, ethereum, ink, optimism, plasma, scroll, sonic
- Contract surface: 29 unique implementations (29 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $1,032,820,200.73
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Veda in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x5232bc0f5999f8da604c42e1748a13a170f94a1b`, chain 9745)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/27 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 27 discovered implementations shown in the inventory but excluded from coverage (3 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 1 of 29 unique; 28 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 29
- Raw deployments: 29
- Audits discovered: 60 (60 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 14 fresh, 33 aging, 13 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountantWithRateProviders | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05a1552c5e18f5a0bb9571b5f2d6a4765ebda32b` | ⚠️ Unaudited |
| ArcticArchitectureLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5232bc0f5999f8da604c42e1748a13a170f94a1b` | ⚠️ Unaudited |
| AtomicQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd45884b592e316eb816199615a95c182f75dea07` | ⚠️ Unaudited |
| AtomicSolverV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b744e93bbf5caf38df34f3ba14a40024d1a2d7a` | ⚠️ Unaudited |
| AuraERC4626Adaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f3f8cab8d3888281033faf7a6c0b74de62bb162` | ⚠️ Unaudited |
| BoringVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08c6f91e2b681faf5e17227f2a44c307b3c1364c` | ⚠️ Unaudited |
| CellarWithOracleWithBalancerFlashLoansWithMultiAssetDepositWithNativeSupport | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xea1a6307d9b18f8d1cbf1c3dd6aad8416c06a221` | ⚠️ Unaudited |
| eEthExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ec6e3b0933cc90fdb274267dff1a57db9740d5b` | ⚠️ Unaudited |
| ERC20Adaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a5b17e0ad1e0f37061fcc7f90512c367981331d` | ⚠️ Unaudited |
| ERC4626Adaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1761a7c7799cb429eb5bf2db16d88534da681e2` | ⚠️ Unaudited |
| ERC4626SharePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d3eb50ed4540135a78facd70063bccc988014b0` | ⚠️ Unaudited |
| FeesAndReserves | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a22951e3b5133844e37959cc75fce9b3502ec74` | ⚠️ Unaudited |
| FeesAndReservesAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d84ec98c476b159f3e107709f224d5bbbb358da` | ⚠️ Unaudited |
| IncentiveDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0164d48b308c42ae028e3379b2fb620e70f8780` | ⚠️ Unaudited |
| LayerZeroTeller | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x31a5a9f60dc3d62fa5168352caf0ee05aa18f5b8` | ⚠️ Unaudited |
| ManagerWithMerkleVerification | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x048a5002e57166a78dd060b3b36ded2f404d0a17` | ⚠️ Unaudited |
| OneInchAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f7de90fb222d37225dd8929672e427699c58d43` | ⚠️ Unaudited |
| PriceRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x693799805b502264f9365440b93c113d86a4fff5` | ⚠️ Unaudited |
| ProtocolFeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfb286d16f9cd8c5cf4d5180501c190519e42524` | ⚠️ Unaudited |
| RedstoneEthPriceFeedExtension | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xdb4b778085ed412518cb64207259a746f363ae84` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37912f4c0f0d916890ebd755bf6d1f0a0e059bbd` | ⚠️ Unaudited |
| RolesAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a4abbee0a07f358c7706c78fd7cc2702fc67d73` | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ea43384f1a98765257bc6cb26c7131debdeb9b3` | ⚠️ Unaudited |
| TimelockController | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x55148d7e3983a54c9f9d1e0c2c2039e2d513924c` | ⚠️ Unaudited |
| weEthExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78e59309ba2779a5d3522e965fe9be2790fd7535` | ⚠️ Unaudited |
| WstEthExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5a3cb224b799b982706008a1081073fe0c46d35` | ⚠️ Unaudited |
| ZeroXAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x497bbe7d974b45e2e28cfbbdedf9e67646eecfc2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | plasma | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-395597 | `0x5232bc0f5999f8da604c42e1748a13a170f94a1b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/Se7en-Seas/boring-vault/blob/main/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 38 | high |
| [0xmacro-boring-vault-arctic-1.pdf](https://github.com/Se7en-Seas/boring-vault/blob/main/audit/0xmacro-boring-vault-arctic-1.pdf) | 0xMacro | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [spearbit-boring-vault-arctic-0.pdf (also discovered via alternate URL)](https://github.com/Se7en-Seas/boring-vault/blob/main/audit/spearbit-boring-vault-arctic-0.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [DL audit link](https://0xmacro.com/library/audits/sevenSeas-1.html) | 0xMacro | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [DL audit link](https://0xmacro.com/library/audits/sevenSeas-2.html) | 0xMacro | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [DL audit link](https://0xmacro.com/library/audits/sevenSeas-3.html) | 0xMacro | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [0xmacro-sevenSeas-10.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-10.pdf) | 0xMacro | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [0xmacro-sevenSeas-13.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-13.pdf) | 0xMacro | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [0xmacro-sevenSeas-14.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-14.pdf) | 0xMacro | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [0xmacro-sevenSeas-15.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-15.pdf) | 0xMacro | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [0xmacro-sevenSeas-16.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-16.pdf) | 0xMacro | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [0xmacro-sevenSeas-17.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-17.pdf) | 0xMacro | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [0xmacro-sevenSeas-18.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-18.pdf) | 0xMacro | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [0xmacro-sevenSeas-19.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-19.pdf) | 0xMacro | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [0xmacro-sevenSeas-21.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-21.pdf) | 0xMacro | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [0xmacro-sevenSeas-22.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-22.pdf) | 0xMacro | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [0xmacro-sevenSeas-23.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-23.pdf) | 0xMacro | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [0xmacro-sevenSeas-24.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-24.pdf) | 0xMacro | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [0xmacro-sevenSeas-25.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-25.pdf) | 0xMacro | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [0xmacro-sevenSeas-26.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-26.pdf) | 0xMacro | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [0xmacro-sevenSeas-27.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-27.pdf) | 0xMacro | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [0xmacro-sevenSeas-28.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-28.pdf) | 0xMacro | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [0xmacro-sevenSeas-30.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-30.pdf) | 0xMacro | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [0xmacro-sevenSeas-31.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-31.pdf) | 0xMacro | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [0xmacro-sevenSeas-32.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-32.pdf) | 0xMacro | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [0xmacro-sevenSeas-33.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-33.pdf) | 0xMacro | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [0xmacro-sevenSeas-34.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-34.pdf) | 0xMacro | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [0xmacro-sevenSeas-35.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-35.pdf) | 0xMacro | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [0xmacro-sevenSeas-36.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-36.pdf) | 0xMacro | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [0xmacro-sevenSeas-37.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-37.pdf) | 0xMacro | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [0xmacro-sevenSeas-38.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-38.pdf) | 0xMacro | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [0xmacro-sevenSeas-39.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-39.pdf) | 0xMacro | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [0xmacro-sevenSeas-40.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-40.pdf) | 0xMacro | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [0xmacro-sevenSeas-41.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-41.pdf) | 0xMacro | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [0xmacro-sevenSeas-44.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-44.pdf) | 0xMacro | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [0xmacro-sevenSeas-45.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-45.pdf) | 0xMacro | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [0xmacro-sevenSeas-46.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-46.pdf) | 0xMacro | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [0xmacro-sevenSeas-47.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-47.pdf) | 0xMacro | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [0xmacro-sevenSeas-51.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-51.pdf) | 0xMacro | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [0xmacro-sevenSeas-52.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-52.pdf) | 0xMacro | Audit | 2025-07 | aging | Direct | address | no match | 0 | 0 | 0 | 7 | high |
| [0xmacro-sevenSeas-53.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-53.pdf) | 0xMacro | Audit | 2025-07 | aging | Direct | address | no match | 0 | 0 | 0 | 4 | high |
| [0xmacro-sevenSeas-55.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-55.pdf) | 0xMacro | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [0xmacro-sevenSeas-6.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-6.pdf) | 0xMacro | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [0xmacro-sevenSeas-60.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-60.pdf) | 0xMacro | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [0xmacro-sevenSeas-62.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-62.pdf) | 0xMacro | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [0xmacro-sevenSeas-63.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-63.pdf) | 0xMacro | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [0xmacro-sevenSeas-64.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-64.pdf) | 0xMacro | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [0xmacro-sevenSeas-66.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-66.pdf) | 0xMacro | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [0xmacro-sevenSeas-7.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-7.pdf) | 0xMacro | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [0xmacro-sevenSeas-8.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-8.pdf) | 0xMacro | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [0xmacro-sevenSeas-9.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-9.pdf) | 0xMacro | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [0xmacro-veda-83.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-veda-83.pdf) | 0xMacro | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [0xmacro-veda-84.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-veda-84.pdf) | 0xMacro | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [0xmacro-veda-85.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-veda-85.pdf) | 0xMacro | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [0xmacro-veda-90.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-veda-90.pdf) | 0xMacro | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [certora-boring-vault-0.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/certora-boring-vault-0.pdf) | certora | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [certora-boring-vault-1.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/certora-boring-vault-1.pdf) | certora | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [certora-boring-vault-2.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/certora-boring-vault-2.pdf) | certora | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [certora-boring-vault-3.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/certora-boring-vault-3.pdf) | certora | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [sigma-prime-boring-vault-0.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/sigma-prime-boring-vault-0.pdf) | sigma-prime | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18536] 0xmacro-boring-vault-arctic-0.pdf — no match: All contracts listed in the 'Source Code' section of the audit report are included. The audit date is from the cover page: 'March 20, 2024'.
- [18537] 0xmacro-boring-vault-arctic-1.pdf — no match: All contracts listed in the 'Source Code' section with SHA256 hashes are in scope. The audit date is from the cover page: 'April 22, 2024'.
- [18538] spearbit-boring-vault-arctic-0.pdf — no match: The audit report does not have a dedicated scope section or table; however, the contracts are explicitly mentioned in the findings as being part of the audited codebase. The date is from the cover page: 'April 19, 2024'.
- [18539] DL audit link — no match: All contracts listed in the 'Source Code' section of the audit report are in scope.
- [18540] DL audit link — no match: Two contracts in scope: PendleAdaptor.sol and PendleExtension.sol. Audit date from title page.
- [18541] DL audit link — no match: Only one contract in scope: weETHExtension.sol. Audit date from title page.
- [18559] 0xmacro-sevenSeas-10.pdf — no match: All contracts listed in the 'Source Code' section of the audit report are in scope.
- [18560] 0xmacro-sevenSeas-13.pdf — no match: Three contracts explicitly listed in scope table. Audit date from title page.
- [18561] 0xmacro-sevenSeas-14.pdf — no match: Extracted 4 contracts from the scope table in the audit report. Audit date from cover page.
- [18562] 0xmacro-sevenSeas-15.pdf — no match: Three contracts explicitly listed in scope tables for PRs 61, 62, and 70. Audit date from title: 'Aug 15, 2024'.
- [18563] 0xmacro-sevenSeas-16.pdf — no match: Extracted 13 contract names from scope tables and issue details. Audit date from cover page.
- [18564] 0xmacro-sevenSeas-17.pdf — no match: Two contracts in scope from PR 136, no issues found.
- [18565] 0xmacro-sevenSeas-18.pdf — no match: Extracted 14 contract names from the 'Source Code' section of the audit report. The audit date is from the cover page: 'Oct 16, 2024'.
- [18566] 0xmacro-sevenSeas-19.pdf — no match: All contracts listed in the Source Code section with file paths and SHA256 hashes are considered in scope.
- [18567] 0xmacro-sevenSeas-21.pdf — no match: Two contracts explicitly listed in Source Code section with file paths and hashes.
- [18568] 0xmacro-sevenSeas-22.pdf — no match: Two contracts explicitly listed in scope table with file paths and SHA256 hashes. Audit date from title line.
- [18569] 0xmacro-sevenSeas-23.pdf — no match: Two contracts in scope: LombardBtcMinterDecoderAndSanitizer and AaveV3DecoderAndSanitizer. Audit date from title and header.
- [18570] 0xmacro-sevenSeas-24.pdf — no match: Extracted 7 contracts from the Source Code section with file paths and SHA256 hashes. Audit date from cover page.
- [18571] 0xmacro-sevenSeas-25.pdf — no match: Only one contract in scope: BoringSolver from the boring-vault repository, PR 172 change.
- [18572] 0xmacro-sevenSeas-26.pdf — no match: Extracted 13 contract names from the Source Code section tables. Audit date from cover page: Jan 17, 2025.
- [18573] 0xmacro-sevenSeas-27.pdf — no match: Extracted 9 contracts from the Source Code section tables. Audit date from title and header.
- [18574] 0xmacro-sevenSeas-28.pdf — no match: All contracts listed in Source Code section are in scope. Audit date from title: Feb 11, 2025.
- [18575] 0xmacro-sevenSeas-30.pdf — no match: Two contracts in scope: UniswapV3SwapRouter02DecoderAndSanitizer and LBTCBridgeDecoderAndSanitizer. Audit date from title line.
- [18576] 0xmacro-sevenSeas-31.pdf — no match: Four decoder contracts explicitly listed in scope with file paths and SHA256 hashes. Audit date found in header: 'Feb 26, 2025'.
- [18577] 0xmacro-sevenSeas-32.pdf — no match: Two contracts in scope: ConvexFXDecoderAndSanitizer and LevelDecoderAndSanitizer. Audit date from title page.
- [18578] 0xmacro-sevenSeas-33.pdf — no match: Only one contract in scope: OdosDecoderAndSanitizer. Audit date from cover page.
- [18579] 0xmacro-sevenSeas-34.pdf — no match: Only one contract in scope: AmbientDecoderAndSanitizer. Audit date from title page.
- [18580] 0xmacro-sevenSeas-35.pdf — no match: All six contracts are explicitly listed in the Source Code section with file paths and SHA256 hashes. The audit date is clearly stated as March 25, 2025 on the cover page.
- [18581] 0xmacro-sevenSeas-36.pdf — no match: Only one contract in scope: TellerWithMultiAssetSupport.sol
- [18582] 0xmacro-sevenSeas-37.pdf — no match: Only one contract in scope: BoringChefDecoderAndSanitizer. Audit date from title line.
- [18583] 0xmacro-sevenSeas-38.pdf — no match: All contracts explicitly listed in Source Code section of the audit report.
- [18584] 0xmacro-sevenSeas-39.pdf — no match: All four contracts are explicitly listed in the Source Code section with file paths and SHA256 hashes.
- [18585] 0xmacro-sevenSeas-40.pdf — no match: Only one contract in scope: KingClaimingDecoderAndSanitizer
- [18586] 0xmacro-sevenSeas-41.pdf — no match: All five contracts listed in the 'Source Code' section of the audit report are in scope.
- [18587] 0xmacro-sevenSeas-44.pdf — no match: All five contracts are explicitly listed in the 'Source Code' section with file paths and SHA256 hashes. The audit date is clearly stated as May 28, 2025 on the cover page.
- [18588] 0xmacro-sevenSeas-45.pdf — no match: Only one contract in scope: TellerWithMultiAssetSupport.sol
- [18589] 0xmacro-sevenSeas-46.pdf — no match: Three contracts explicitly listed in scope table with file paths and SHA256 hashes.
- [18590] 0xmacro-sevenSeas-47.pdf — no match: Two contracts in scope: LevelDecoderAndSanitizer and CCTPDecoderAndSanitizer. Also includes DecoderCustomTypes interface but it's an interface, not a contract; excluded per instructions.
- [18591] 0xmacro-sevenSeas-51.pdf — no match: Only one contract in scope: AgglayerDecoderAndSanitizer. Audit date from title page.
- [18592] 0xmacro-sevenSeas-52.pdf — no match: All contracts listed in the 'Source Code' section with addresses. Audit date from title and introduction.
- [18593] 0xmacro-sevenSeas-53.pdf — no match: Extracted contracts from Source Code section. Also included TacCrossChainLayerDecoderAndSanitizer from file path. Implementation address noted but not a separate contract name.
- [18594] 0xmacro-sevenSeas-55.pdf — no match: Only one contract in scope: KinetiqDecoderAndSanitizer. Audit date from title and header.
- [18595] 0xmacro-sevenSeas-6.pdf — no match: All four contracts listed in the 'Source Code' section with file paths and SHA256 hashes are in scope.
- [18596] 0xmacro-sevenSeas-60.pdf — no match: Only one contract in scope: EtherFiDecoderAndSanitizer. Audit date from title page.
- [18597] 0xmacro-sevenSeas-62.pdf — no match: Only one contract in scope: MerklDecoderAndSanitizer. Audit date from title and header.
- [18598] 0xmacro-sevenSeas-63.pdf — no match: Two contracts in scope: EthenaMintingDecoderAndSanitizer and DecoderCustomTypes. Audit date from title page.
- [18599] 0xmacro-sevenSeas-64.pdf — no match: Two contracts explicitly listed in Source Code section. Audit date from title page.
- [18600] 0xmacro-sevenSeas-66.pdf — no match: Two contracts explicitly listed in Source Code section with file paths and SHA256 hashes. Audit date from title page.
- [18601] 0xmacro-sevenSeas-7.pdf — no match: All contracts listed in the Source Code table are in scope. Audit date from title: May 14, 2024.
- [18602] 0xmacro-sevenSeas-8.pdf — no match: Extracted 5 contracts from the scope table in the audit report. Audit date is June 4, 2024 from the title.
- [18603] 0xmacro-sevenSeas-9.pdf — no match: Only one contract explicitly listed in scope. Other contracts mentioned (PositionManager, AccountantWithRateProviders, etc.) are referenced in findings but not listed as audited targets.
- [18604] 0xmacro-veda-83.pdf — no match: Two contracts explicitly listed in scope table with file paths and SHA256 hashes.
- [18605] 0xmacro-veda-84.pdf — no match: Two contracts in scope from boring-vault repository, audit date from cover page.
- [18606] 0xmacro-veda-85.pdf — no match: Two contracts explicitly listed in scope table with file paths and SHA256 hashes.
- [18607] 0xmacro-veda-90.pdf — no match: Audit report clearly lists 5 contracts in scope under 'Source Code' section with file paths and SHA256 hashes. Date found in title and introduction.
- [18608] certora-boring-vault-0.pdf — no match: Extracted 14 contract names from the scope section listing file paths. Audit date inferred from report title 'November 2025' and project overview mentioning audit period ending September 14, 2025, with formal verification until October 24, 2025; report date is November 2025, so last day of month used.
- [18609] certora-boring-vault-1.pdf — no match: Extracted 4 contracts from scope section and file paths. Audit date from work period end date (January 5, 2026).
- [18610] certora-boring-vault-2.pdf — no match: All 12 contracts listed in the Project Scope section were extracted. Audit date derived from the work period end date (April 21st, 2026).
- [18611] certora-boring-vault-3.pdf — no match: Extracted 5 contracts from scope section and file paths. Audit date is the end date of the engagement (February 4, 2026).
- [18612] sigma-prime-boring-vault-0.pdf — no match: Scope section lists 14 contracts/files. Audit date is December 2025, mapped to last day of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 0xmacro-boring-vault-arctic-0.pdf | AtomicQueue | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AtomicSolver | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IAtomicSolver | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BoringVault | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BaseDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | EtherFiLiquidDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | LidoLiquidDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AaveV3DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AuraDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BalancerV2DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | ConvexDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | CurveDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | ERC4626DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | EtherFiDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | GearboxDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | LidoDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | MorphoBlueDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | NativeWrapperDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | OneInchDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | PendleRouterDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | UniswapV3DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AccountantWithRateProviders | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | ManagerWithMerkleVerification | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BoringVaultV0Lens | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AggregationRouterV5 | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BalancerVault | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BeforeTransferHook | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | DecoderCustomTypes | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | EtherFiLiquid1 | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IRateProvider | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IStaking | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IUniswapV3Router | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | PriceRouter | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | RawDataDecoderAndSanitizerInterfaces | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | DexAggregatorUManager | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | DexSwapperUManager | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | CellarMigrationAdaptor | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | ITBPositionDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | AaveDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | BoringDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | ITBContractDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | Ownable2StepDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | WithdrawableDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | ConvexDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | CurveAndConvexDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | CurveNoConfigDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | GearboxDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| spearbit-boring-vault-arctic-0.pdf | UniswapV3DecoderAndSanitizer | unmatched — not counted | — | mentioned in finding 3.1.1 context | no |
| spearbit-boring-vault-arctic-0.pdf | DexAggregatorUManager | unmatched — not counted | — | mentioned in finding 3.1.2 context | no |
| spearbit-boring-vault-arctic-0.pdf | DexSwapperUManager | unmatched — not counted | — | mentioned in finding 3.1.2 context | no |
| spearbit-boring-vault-arctic-0.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | mentioned in finding 3.1.4 context | no |
| spearbit-boring-vault-arctic-0.pdf | BoringVault | unmatched — not counted | — | mentioned in finding 3.1.7 context | no |
| spearbit-boring-vault-arctic-0.pdf | ManagerWithMerkleVerification | unmatched — not counted | — | mentioned in finding 3.2.2 context | no |
| spearbit-boring-vault-arctic-0.pdf | AccountantWithRateProviders | unmatched — not counted | — | mentioned in finding 3.2.4 context | no |
| spearbit-boring-vault-arctic-0.pdf | CurveDecoderAndSanitizer | unmatched — not counted | — | mentioned in finding 3.2.5 context | no |
| spearbit-boring-vault-arctic-0.pdf | MorphoBlueDecoderAndSanitizer | unmatched — not counted | — | mentioned in finding 3.2.1 context | no |
| spearbit-boring-vault-arctic-0.pdf | BalancerV2DecoderAndSanitizer | unmatched — not counted | — | mentioned in finding 3.3.8 context | no |
| DL audit link | Deployer | unmatched — not counted | — | listed in scope table | no |
| DL audit link | Cellar | unmatched — not counted | — | listed in scope table | no |
| DL audit link | CellarWithMultiAssetDeposit | unmatched — not counted | — | listed in scope table | no |
| DL audit link | CellarWithOracle | unmatched — not counted | — | listed in scope table | no |
| DL audit link | CellarWithShareLockPeriod | unmatched — not counted | — | listed in scope table | no |
| DL audit link | CellarWithOracleWithAaveFlashLoansWithMultiAssetDeposit | unmatched — not counted | — | listed in scope table | no |
| DL audit link | CellarWithOracleWithBalancerFlashLoansWithMultiAssetDeposit | unmatched — not counted | — | listed in scope table | no |
| DL audit link | FeesAndReserves | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ProtocolFeeCollector | unmatched — not counted | — | listed in scope table | no |
| DL audit link | BaseAdaptor | unmatched — not counted | — | listed in scope table | no |
| DL audit link | PendleAdaptor | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| DL audit link | PendleExtension | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| DL audit link | weETHExtension | unmatched — not counted | — | listed in scope section with SHA256 hash | no |
| 0xmacro-sevenSeas-10.pdf | BridgingDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-10.pdf | EtherFiLiquidEthDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-10.pdf | PancakeSwapV3FullDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-10.pdf | CCIPDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-10.pdf | ITBPositionDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-10.pdf | KarakDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-10.pdf | PancakeSwapV3DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-10.pdf | PendleRouterDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-10.pdf | ArbitrumNativeBridgeDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-10.pdf | CrossChainTellerWithGenericBridge | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-10.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-10.pdf | DecoderCustomTypes | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-13.pdf | CamelotDecoderAndSanitizer | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| 0xmacro-sevenSeas-13.pdf | MerklDecoderAndSanitizer | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| 0xmacro-sevenSeas-13.pdf | CompoundV3DecoderAndSanitizer | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| 0xmacro-sevenSeas-14.pdf | AtomicQueue | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-14.pdf | AtomicSolverV4 | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-14.pdf | AerodromeDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-14.pdf | VelodromeDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-15.pdf | EtherFiLiquidEthDecoderAndSanitizer | unmatched — not counted | — | listed in scope table for PR 61 | no |
| 0xmacro-sevenSeas-15.pdf | TellerDecoderAndSanitizer | unmatched — not counted | — | listed in scope table for PR 61 | no |
| 0xmacro-sevenSeas-15.pdf | PendleRouterDecoderAndSanitizer | unmatched — not counted | — | listed in scope tables for PR 62 and PR 70 | no |
| 0xmacro-sevenSeas-16.pdf | KarakDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-16.pdf | PendleRouterDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-16.pdf | PumpStakingDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-16.pdf | PumpBtcDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-16.pdf | SymbioticVaultDecoderAndSanitizerFull | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-16.pdf | BoringDrone | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-16.pdf | DroneLib | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-16.pdf | BaseDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-16.pdf | BridgingDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-16.pdf | LineaBridgeDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-16.pdf | MantleStandardBridgeDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-16.pdf | ScrollBridgeDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-16.pdf | BoringPuppet | unmatched — not counted | — | mentioned in issue H-1 as a contract in scope | no |
| 0xmacro-sevenSeas-17.pdf | OnlyTreehouseDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-17.pdf | TreehouseDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-18.pdf | UsualMoneyDecoderAndSanitizer | unmatched — not counted | — | listed in scope with SHA256 | no |
| 0xmacro-sevenSeas-18.pdf | EtherFiLiquidUsdDecoderAndSanitizer | unmatched — not counted | — | listed in scope with SHA256 | no |
| 0xmacro-sevenSeas-18.pdf | SatlayerStakingDecoderAndSanitizer | unmatched — not counted | — | listed in scope with SHA256 | no |
| 0xmacro-sevenSeas-18.pdf | PointFarmingDecoderAndSanitizer | unmatched — not counted | — | listed in scope with SHA256 (appears twice) | no |
| 0xmacro-sevenSeas-18.pdf | CornStakingDecoderAndSanitizer | unmatched — not counted | — | listed in scope with SHA256 | no |
| 0xmacro-sevenSeas-18.pdf | FraxDecoderAndSanitizer | unmatched — not counted | — | listed in scope with SHA256 | no |
| 0xmacro-sevenSeas-18.pdf | StakingDecoderAndSanitizer | unmatched — not counted | — | listed in scope with SHA256 | no |
| 0xmacro-sevenSeas-18.pdf | LidoStandardBridgeDecoderAndSanitizer | unmatched — not counted | — | listed in scope with SHA256 | no |
| 0xmacro-sevenSeas-18.pdf | BridgingDecoderAndSanitizer | unmatched — not counted | — | listed in scope with SHA256 | no |
| 0xmacro-sevenSeas-18.pdf | EigenLayerLSTStakingDecoderAndSanitizer | unmatched — not counted | — | listed in scope with SHA256 | no |
| 0xmacro-sevenSeas-18.pdf | BoringOnChainQueue | unmatched — not counted | — | listed in scope with SHA256 | no |
| 0xmacro-sevenSeas-18.pdf | BoringOnChainQueueWithTracking | unmatched — not counted | — | listed in scope with SHA256 | no |
| 0xmacro-sevenSeas-18.pdf | BoringSolver | unmatched — not counted | — | listed in scope with SHA256 | no |
| 0xmacro-sevenSeas-18.pdf | IBoringSolver | unmatched — not counted | — | listed in scope with SHA256 | no |
| 0xmacro-sevenSeas-19.pdf | HyperlaneDecoderAndSanitizer | unmatched — not counted | — | listed in scope with SHA256 | no |
| 0xmacro-sevenSeas-19.pdf | LayerZeroTeller | unmatched — not counted | — | listed in scope with SHA256 | no |
| 0xmacro-sevenSeas-19.pdf | CrossChainTellerWithGenericBridge | unmatched — not counted | — | listed in scope with SHA256 | no |
| 0xmacro-sevenSeas-19.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope with SHA256 | no |
| 0xmacro-sevenSeas-19.pdf | BaseDecoderAndSanitizer | unmatched — not counted | — | listed in scope with SHA256 | no |
| 0xmacro-sevenSeas-19.pdf | AccountantWithFixedRate | unmatched — not counted | — | listed in scope with SHA256 | no |
| 0xmacro-sevenSeas-19.pdf | AccountantWithRateProviders | unmatched — not counted | — | listed in scope with SHA256 | no |
| 0xmacro-sevenSeas-19.pdf | ManagerWithMerkleVerification | unmatched — not counted | — | listed in scope with SHA256 | no |
| 0xmacro-sevenSeas-21.pdf | WeEthDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section with SHA256 hash | no |
| 0xmacro-sevenSeas-21.pdf | WeEthFullDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section with SHA256 hash | no |
| 0xmacro-sevenSeas-22.pdf | AeraVaultFullDecoderAndSanitizer | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| 0xmacro-sevenSeas-22.pdf | AuraDecoderAndSanitizer | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| 0xmacro-sevenSeas-23.pdf | LombardBtcMinterDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-23.pdf | AaveV3DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-24.pdf | BTCNFullMinterDecoderAndSanitizer | unmatched — not counted | — | listed in scope table with SHA256 | no |
| 0xmacro-sevenSeas-24.pdf | BTCNMinterDecoderAndSanitizer | unmatched — not counted | — | listed in scope table with SHA256 | no |
| 0xmacro-sevenSeas-24.pdf | LombardBtcMinterDecoderAndSanitizer | unmatched — not counted | — | listed in scope table with SHA256 | no |
| 0xmacro-sevenSeas-24.pdf | SonicDepositDecoderAndSanitizer | unmatched — not counted | — | listed in scope table with SHA256 | no |
| 0xmacro-sevenSeas-24.pdf | SonicFullDepositDecoderAndSanitizer | unmatched — not counted | — | listed in scope table with SHA256 | no |
| 0xmacro-sevenSeas-24.pdf | FluidDexDecoderAndSanitizer | unmatched — not counted | — | listed in scope table with SHA256 | no |
| 0xmacro-sevenSeas-24.pdf | FluidDexFullDecoderAndSanitizer | unmatched — not counted | — | listed in scope table with SHA256 | no |
| 0xmacro-sevenSeas-25.pdf | BoringSolver | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| 0xmacro-sevenSeas-26.pdf | UsualMoneyDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-26.pdf | SkyMoneyDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-26.pdf | RoycoDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-26.pdf | SonicGatewayDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-26.pdf | EulerEVKDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-26.pdf | EulerEVKFullDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-26.pdf | SonicFullDepositDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-26.pdf | SonicDepositDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-26.pdf | BaseDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-26.pdf | UniswapV3DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-26.pdf | CamelotDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-26.pdf | PancakeSwapV3DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-26.pdf | VelodromeDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-27.pdf | SymbioticVaultDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-27.pdf | BoringOnChainQueue | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-27.pdf | BoringOnChainQueueWithTracking | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-27.pdf | MorphoRewardsDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-27.pdf | MorphoRewardsMerkleClaimerDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-27.pdf | MorphoRewardsWrapperDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-27.pdf | TellerDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-27.pdf | WithdrawQueueDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-27.pdf | SiloDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-28.pdf | UniswapV2DecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section | no |
| 0xmacro-sevenSeas-28.pdf | RoycoDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section | no |
| 0xmacro-sevenSeas-28.pdf | DolomiteDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section | no |
| 0xmacro-sevenSeas-28.pdf | KodiakIslandDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section | no |
| 0xmacro-sevenSeas-28.pdf | HoneyDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section | no |
| 0xmacro-sevenSeas-28.pdf | InfraredDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section | no |
| 0xmacro-sevenSeas-28.pdf | BeraETHDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section | no |
| 0xmacro-sevenSeas-28.pdf | GoldiVaultDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section | no |
| 0xmacro-sevenSeas-30.pdf | UniswapV3SwapRouter02DecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section | no |
| 0xmacro-sevenSeas-30.pdf | LBTCBridgeDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section | no |
| 0xmacro-sevenSeas-31.pdf | SpectraDecoderAndSanitizer | unmatched — not counted | — | listed in scope with SHA256 hash | no |
| 0xmacro-sevenSeas-31.pdf | ResolvDecoderAndSanitizer | unmatched — not counted | — | listed in scope with SHA256 hash | no |
| 0xmacro-sevenSeas-31.pdf | UniswapV4DecoderAndSanitizer | unmatched — not counted | — | listed in scope with SHA256 hash | no |
| 0xmacro-sevenSeas-31.pdf | EulerEVKDecoderAndSanitizer | unmatched — not counted | — | listed in scope with SHA256 hash | no |
| 0xmacro-sevenSeas-32.pdf | ConvexFXDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-32.pdf | LevelDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-33.pdf | OdosDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section | no |
| 0xmacro-sevenSeas-34.pdf | AmbientDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-35.pdf | OdosDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section with SHA256 hash | no |
| 0xmacro-sevenSeas-35.pdf | ElixirClaimingDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section with SHA256 hash | no |
| 0xmacro-sevenSeas-35.pdf | SyrupDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section with SHA256 hash | no |
| 0xmacro-sevenSeas-35.pdf | BalancerV3DecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section with SHA256 hash | no |
| 0xmacro-sevenSeas-35.pdf | Permit2DecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section with SHA256 hash | no |
| 0xmacro-sevenSeas-35.pdf | RoycoDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section with SHA256 hash | no |
| 0xmacro-sevenSeas-36.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-37.pdf | BoringChefDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-38.pdf | TellerDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section | no |
| 0xmacro-sevenSeas-38.pdf | BGTRewardVaultDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section | no |
| 0xmacro-sevenSeas-38.pdf | OogaBoogaDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section | no |
| 0xmacro-sevenSeas-38.pdf | DeriveDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section | no |
| 0xmacro-sevenSeas-38.pdf | BoringSolver | unmatched — not counted | — | listed in Source Code section | no |
| 0xmacro-sevenSeas-38.pdf | EigenLayerLSTStakingDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section | no |
| 0xmacro-sevenSeas-39.pdf | OFTDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section with SHA256 hash | no |
| 0xmacro-sevenSeas-39.pdf | DeriveWithdrawDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section with SHA256 hash | no |
| 0xmacro-sevenSeas-39.pdf | FluidRewardsClaimingDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section with SHA256 hash | no |
| 0xmacro-sevenSeas-39.pdf | TellerDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section with SHA256 hash | no |
| 0xmacro-sevenSeas-40.pdf | KingClaimingDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-41.pdf | DvStETHDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-41.pdf | GenericRateProviderWithDecimalScaling | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-41.pdf | TellerDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-41.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-41.pdf | BeraborrowDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-44.pdf | CompoundV2DecoderAndSanitizer | unmatched — not counted | — | listed in scope table with SHA256 | no |
| 0xmacro-sevenSeas-44.pdf | BoringSolver | unmatched — not counted | — | listed in scope table with SHA256 | no |
| 0xmacro-sevenSeas-44.pdf | rFLRDecoderAndSanitizer | unmatched — not counted | — | listed in scope table with SHA256 | no |
| 0xmacro-sevenSeas-44.pdf | AgglayerDecoderAndSanitizer | unmatched — not counted | — | listed in scope table with SHA256 | no |
| 0xmacro-sevenSeas-44.pdf | BeraborrowDecoderAndSanitizer | unmatched — not counted | — | listed in scope table with SHA256 | no |
| 0xmacro-sevenSeas-45.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-46.pdf | BeraborrowDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-46.pdf | OnlyAtomicQueueDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-46.pdf | AtomicQueueDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-47.pdf | LevelDecoderAndSanitizer | unmatched — not counted | — | listed in scope with SHA256 hash | no |
| 0xmacro-sevenSeas-47.pdf | CCTPDecoderAndSanitizer | unmatched — not counted | — | listed in scope with SHA256 hash | no |
| 0xmacro-sevenSeas-51.pdf | AgglayerDecoderAndSanitizer | unmatched — not counted | — | listed in scope section with SHA256 hash | no |
| 0xmacro-sevenSeas-52.pdf | PauserRegistry | unmatched — not counted | — | listed in scope with address | no |
| 0xmacro-sevenSeas-52.pdf | StakingManager | unmatched — not counted | — | listed in scope with address | no |
| 0xmacro-sevenSeas-52.pdf | KHYPE | unmatched — not counted | — | listed in scope with address | no |
| 0xmacro-sevenSeas-52.pdf | ValidatorManager | unmatched — not counted | — | listed in scope with address | no |
| 0xmacro-sevenSeas-52.pdf | StakingAccountant | unmatched — not counted | — | listed in scope with address | no |
| 0xmacro-sevenSeas-52.pdf | OracleManager | unmatched — not counted | — | listed in scope with address | no |
| 0xmacro-sevenSeas-52.pdf | DefaultOracle | unmatched — not counted | — | listed in scope with address | no |
| 0xmacro-sevenSeas-53.pdf | CrossChainLayer | unmatched — not counted | — | Listed in Source Code section as a contract in scope. | no |
| 0xmacro-sevenSeas-53.pdf | TacCrossChainLayerDecoderAndSanitizer | unmatched — not counted | — | Listed in Source Code section with SHA256 hash. | no |
| 0xmacro-sevenSeas-53.pdf | tac_usdt_treasury | unmatched — not counted | — | Listed in Source Code section as a contract in scope. | no |
| 0xmacro-sevenSeas-53.pdf | eth_usdt_treasury | unmatched — not counted | — | Listed in Source Code section as a contract in scope. | no |
| 0xmacro-sevenSeas-55.pdf | KinetiqDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section | no |
| 0xmacro-sevenSeas-6.pdf | SwellSimpleStakingDecoderAndSanitizer | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| 0xmacro-sevenSeas-6.pdf | ZircuitSimpleStakingDecoderAndSanitizer | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| 0xmacro-sevenSeas-6.pdf | GenericRateProvider | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| 0xmacro-sevenSeas-6.pdf | EigenLayerLSTStakingDecoderAndSanitizer | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| 0xmacro-sevenSeas-60.pdf | EtherFiDecoderAndSanitizer | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| 0xmacro-sevenSeas-62.pdf | MerklDecoderAndSanitizer | unmatched — not counted | — | listed in scope | no |
| 0xmacro-sevenSeas-63.pdf | EthenaMintingDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-63.pdf | DecoderCustomTypes | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-64.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in Source Code section with SHA256 hash | no |
| 0xmacro-sevenSeas-64.pdf | CrossChainTellerWithGenericBridge | unmatched — not counted | — | listed in Source Code section with SHA256 hash | no |
| 0xmacro-sevenSeas-66.pdf | DvStETHDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section with SHA256 hash | no |
| 0xmacro-sevenSeas-66.pdf | FluidDexDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code section with SHA256 hash | no |
| 0xmacro-sevenSeas-7.pdf | BoringVault | unmatched — not counted | — | listed in Source Code table | no |
| 0xmacro-sevenSeas-7.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in Source Code table | no |
| 0xmacro-sevenSeas-7.pdf | EthenaWithdrawDecoderAndSanitizer | unmatched — not counted | — | listed in Source Code table | no |
| 0xmacro-sevenSeas-7.pdf | CellarMigrationAdaptor | unmatched — not counted | — | listed in Source Code table | no |
| 0xmacro-sevenSeas-7.pdf | CellarMigrationAdaptor2 | unmatched — not counted | — | listed in Source Code table | no |
| 0xmacro-sevenSeas-7.pdf | CellarMigratorWithSharePriceParity | unmatched — not counted | — | listed in Source Code table | no |
| 0xmacro-sevenSeas-7.pdf | ParitySharePriceOracle | unmatched — not counted | — | listed in Source Code table | no |
| 0xmacro-sevenSeas-8.pdf | AccountantWithRateProviders | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-8.pdf | DelayedWithdraw | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-8.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-8.pdf | TellerWithRemediation | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-8.pdf | EigenLayerDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-sevenSeas-9.pdf | ReserveDecoderAndSanitizer | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| 0xmacro-veda-83.pdf | HyperLendDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-veda-83.pdf | DecoderCustomTypes | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-veda-84.pdf | MorphoMarketBufferHelper | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-veda-84.pdf | ERC4626BufferHelper | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-veda-85.pdf | MPortalDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-veda-85.pdf | BridgingDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-veda-90.pdf | UniswapV3DecoderAndSanitizer | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| 0xmacro-veda-90.pdf | UniswapV3SwapRouter02DecoderAndSanitizer | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| 0xmacro-veda-90.pdf | UniswapV4DecoderAndSanitizer | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| 0xmacro-veda-90.pdf | MorphoBlueDecoderAndSanitizer | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| 0xmacro-veda-90.pdf | CCTPDecoderAndSanitizer | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| certora-boring-vault-0.pdf | BoringVault | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-0.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-0.pdf | TellerWithBuffer | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-0.pdf | TellerWithYieldStreaming | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-0.pdf | AaveV3BufferHelper | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-0.pdf | AccountantWithRateProvider | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-0.pdf | AccountantWithYieldStreaming | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-0.pdf | MessageLib | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-0.pdf | PairwiseRateLimiter | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-0.pdf | CrossChainTellerWithGenericBridge | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-0.pdf | LayerZeroTeller | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-0.pdf | LayerZeroTellerWithRateLimiting | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-0.pdf | GenericRateProvider | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-0.pdf | GenericRateProviderWithDecimalScaling | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-1.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-1.pdf | TellerWithYieldStreaming | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-1.pdf | AccountantWithRateProvider | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-1.pdf | AccountantWithYieldStreaming | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-2.pdf | TellerDecoderAndSanitizer | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-2.pdf | BoringOnChainQueue | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-2.pdf | ChainlinkCCIPTeller | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-2.pdf | LayerZeroTeller | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-2.pdf | LayerZeroTellerLib | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-2.pdf | CrossChainTellerLib | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-2.pdf | CrossChainTellerWithGenericBridge | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-2.pdf | AccountantWithYieldStreaming | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-2.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-2.pdf | TellerWithMultiAssetSupportLib | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-2.pdf | TellerWithYieldStreaming | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-2.pdf | IncentivePool | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-3.pdf | BoringVault | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-3.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-3.pdf | TellerWithYieldStreaming | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-3.pdf | AccountantWithRateProvider | unmatched — not counted | — | listed in scope | no |
| certora-boring-vault-3.pdf | AccountantWithYieldStreaming | unmatched — not counted | — | listed in scope | no |
| sigma-prime-boring-vault-0.pdf | BoringVault | unmatched — not counted | — | listed in scope | no |
| sigma-prime-boring-vault-0.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope | no |
| sigma-prime-boring-vault-0.pdf | TellerWithBuffer | unmatched — not counted | — | listed in scope | no |
| sigma-prime-boring-vault-0.pdf | AccountantWithRateProviders | unmatched — not counted | — | listed in scope | no |
| sigma-prime-boring-vault-0.pdf | AccountantWithYieldStreaming | unmatched — not counted | — | listed in scope | no |
| sigma-prime-boring-vault-0.pdf | GenericRateProvider | unmatched — not counted | — | listed in scope | no |
| sigma-prime-boring-vault-0.pdf | GenericRateProviderWithDecimalScaling | unmatched — not counted | — | listed in scope | no |
| sigma-prime-boring-vault-0.pdf | CrossChainTellerWithGenericBridge | unmatched — not counted | — | listed in scope | no |
| sigma-prime-boring-vault-0.pdf | MessageLib | unmatched — not counted | — | listed in scope | no |
| sigma-prime-boring-vault-0.pdf | PairwiseRateLimiter | unmatched — not counted | — | listed in scope | no |
| sigma-prime-boring-vault-0.pdf | LayerZeroTeller | unmatched — not counted | — | listed in scope | no |
| sigma-prime-boring-vault-0.pdf | LayerZeroTellerWithRateLimiting | unmatched — not counted | — | listed in scope | no |
| sigma-prime-boring-vault-0.pdf | TellerWithYieldStreaming | unmatched — not counted | — | listed in scope | no |
| sigma-prime-boring-vault-0.pdf | OAppAuth | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 60
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 317 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=60
- Match method counts: n/a

Zero-match audit list:

- [18536] 0xmacro-boring-vault-arctic-0.pdf
- [18537] 0xmacro-boring-vault-arctic-1.pdf
- [18538] spearbit-boring-vault-arctic-0.pdf
- [18539] DL audit link
- [18540] DL audit link
- [18541] DL audit link
- [18559] 0xmacro-sevenSeas-10.pdf
- [18560] 0xmacro-sevenSeas-13.pdf
- [18561] 0xmacro-sevenSeas-14.pdf
- [18562] 0xmacro-sevenSeas-15.pdf
- [18563] 0xmacro-sevenSeas-16.pdf
- [18564] 0xmacro-sevenSeas-17.pdf
- [18565] 0xmacro-sevenSeas-18.pdf
- [18566] 0xmacro-sevenSeas-19.pdf
- [18567] 0xmacro-sevenSeas-21.pdf
- [18568] 0xmacro-sevenSeas-22.pdf
- [18569] 0xmacro-sevenSeas-23.pdf
- [18570] 0xmacro-sevenSeas-24.pdf
- [18571] 0xmacro-sevenSeas-25.pdf
- [18572] 0xmacro-sevenSeas-26.pdf
- [18573] 0xmacro-sevenSeas-27.pdf
- [18574] 0xmacro-sevenSeas-28.pdf
- [18575] 0xmacro-sevenSeas-30.pdf
- [18576] 0xmacro-sevenSeas-31.pdf
- [18577] 0xmacro-sevenSeas-32.pdf
- [18578] 0xmacro-sevenSeas-33.pdf
- [18579] 0xmacro-sevenSeas-34.pdf
- [18580] 0xmacro-sevenSeas-35.pdf
- [18581] 0xmacro-sevenSeas-36.pdf
- [18582] 0xmacro-sevenSeas-37.pdf
- [18583] 0xmacro-sevenSeas-38.pdf
- [18584] 0xmacro-sevenSeas-39.pdf
- [18585] 0xmacro-sevenSeas-40.pdf
- [18586] 0xmacro-sevenSeas-41.pdf
- [18587] 0xmacro-sevenSeas-44.pdf
- [18588] 0xmacro-sevenSeas-45.pdf
- [18589] 0xmacro-sevenSeas-46.pdf
- [18590] 0xmacro-sevenSeas-47.pdf
- [18591] 0xmacro-sevenSeas-51.pdf
- [18592] 0xmacro-sevenSeas-52.pdf
- [18593] 0xmacro-sevenSeas-53.pdf
- [18594] 0xmacro-sevenSeas-55.pdf
- [18595] 0xmacro-sevenSeas-6.pdf
- [18596] 0xmacro-sevenSeas-60.pdf
- [18597] 0xmacro-sevenSeas-62.pdf
- [18598] 0xmacro-sevenSeas-63.pdf
- [18599] 0xmacro-sevenSeas-64.pdf
- [18600] 0xmacro-sevenSeas-66.pdf
- [18601] 0xmacro-sevenSeas-7.pdf
- [18602] 0xmacro-sevenSeas-8.pdf
- [18603] 0xmacro-sevenSeas-9.pdf
- [18604] 0xmacro-veda-83.pdf
- [18605] 0xmacro-veda-84.pdf
- [18606] 0xmacro-veda-85.pdf
- [18607] 0xmacro-veda-90.pdf
- [18608] certora-boring-vault-0.pdf
- [18609] certora-boring-vault-1.pdf
- [18610] certora-boring-vault-2.pdf
- [18611] certora-boring-vault-3.pdf
- [18612] sigma-prime-boring-vault-0.pdf

Fork inheritance lineage and inherited audits are included when available.
