# Agentic Audit Brief: Reservoir Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 4 audit(s)
- Eligible audit results: 7 (4 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Reservoir Protocol (`reservoir-protocol`)
- Website: [https://app.reservoir.xyz](https://app.reservoir.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, bsc, ethereum, hyperliquid
- Contract surface: 27 unique implementations (29 raw deployments)
- Coverage basis: 2/10 confirmed own live verified implementations (20.0%); conservative 20.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $46,514,844.62
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Reservoir Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 21 contract row(s) across base, berachain, bsc, ethereum, hyperliquid, plasma. Structural roles: 12 core, 9 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 21
- Structural roles: core (12), supporting (9)
- Contract kinds: contract (21)
- Detected standards: accesscontrol (13), erc165 (13), erc20 (7), ownable (7), pausable (3), erc20permit (1), erc4626 (1)
- Frameworks: openzeppelin (21), layerzero (7), chainlink (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x31eae6...b04a61`, chain 1)
- AssetAdapter (`0xc5dea6...4a73c4`, chain 1)
- DamOft (`0xf9ca3f...ababf8`, chain 56)
- MorphoUnderlyingAdapter (`0x841db2...0cfcbc`, chain 1)
- MorphoUnderlyingAdapter (`0x99a95a...632b10`, chain 1)
- MorphoUnderlyingAdapter (`0xb595ba...8870a2`, chain 1)
- RusdOft (`0x866d66...f35e78`, chain 999)
- RusdOftAdapter (`0xf0e9f6...f4b4da`, chain 1)
- SrusdOftAdapter (`0x316cd3...f64514`, chain 1)
- WsrusdOft (`0x62344b...6900b1`, chain 8453)
- WsrusdOftAdapter (`0xbb431a...91258a`, chain 1)

## Contract Surface Quality

- Indexed contracts: 21; live-surface contracts included: 21 (10 live, 11 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/32 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/10 (20.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 14 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 11 of 27 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/10
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 27
- Raw deployments: 29
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 1 | 10.0% | 2024-05 |
| unknown | Tier 2 | 1 | 10.0% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssetAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-252929 | `0xc5dea6...4a73c4` | ✅ Audited |
| DamOft | unknown | project_anchor | own_supporting | 0 | bsc | unit-252933 | `0xf9ca3f...ababf8` | ✅ Audited |

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CreditEnforcer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252906 | `0x04716d...d07720` | ⚠️ Unaudited |
| DAM | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252909 | `0x0fedba...e5a43b` | ⚠️ Unaudited |
| MorphoUnderlyingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-252923 | `0x841db2...0cfcbc` | ⚠️ Unaudited |
| MorphoUnderlyingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-252926 | `0x99a95a...632b10` | ⚠️ Unaudited |
| MorphoUnderlyingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-252927 | `0xb595ba...8870a2` | ⚠️ Unaudited |
| PegStabilityModule | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252914 | `0x480901...96d75d` | ⚠️ Unaudited |
| PSM | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252922 | `0x813b08...74232e` | ⚠️ Unaudited |
| PSM | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252931 | `0xeae91b...a549b9` | ⚠️ Unaudited |
| RusdMintBridge | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252920 | `0x6360f4...3154b3` | ⚠️ Unaudited |
| RusdOft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x09d421...8f2b34`; base `0x09d421...8f2b34` | ⚠️ Unaudited |
| RusdOft | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-252937 | `0x866d66...f35e78` | ⚠️ Unaudited |
| RusdOftAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-252932 | `0xf0e9f6...f4b4da` | ⚠️ Unaudited |
| Savingcoin | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252921 | `0x738d11...e23a31` | ⚠️ Unaudited |
| Savingcoin | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252930 | `0xd3fd63...be3094` | ⚠️ Unaudited |
| SavingModule | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252918 | `0x547561...e947d7` | ⚠️ Unaudited |
| SrusdOftAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-252912 | `0x316cd3...f64514` | ⚠️ Unaudited |
| Stablecoin | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252907 | `0x09d421...8f2b34` | ⚠️ Unaudited |
| StakingWithUnbonding | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252915 | `0x4be8be...2f5876` | ⚠️ Unaudited |
| WsrusdOft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: bsc `0x480901...96d75d`; hyperliquid `0x04716d...d07720` | ⚠️ Unaudited |
| WsrusdOft | unknown | project_anchor | own_supporting | 0 | base | unit-252935 | `0x62344b...6900b1` | ⚠️ Unaudited |
| WsrusdOftAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-252928 | `0xbb431a...91258a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252910 | `0x12c69d...771c30` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252913 | `0x31eae6...b04a61` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252916 | `0x4e6840...6bc4d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252917 | `0x5130fb...d70b40` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://www.halborn.com/audits/fortunafi/reservoir-updated) | Halborn | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [docs.google.com/viewerng/viewer](https://docs.google.com/viewerng/viewer?url=https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%252FuV2CWL0AZicnZxx3SgUP%252Fuploads%252FDMjHMORByqrQnWTCL5Rs%252FFortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf?alt%3Dmedia%26token%3Dbb69023c-f54b-45c7-a44b-5e151002777e) | Halborn | Audit | 2024-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 9 | high |
| [Rebalancer.pdf](https://3705872066-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuV2CWL0AZicnZxx3SgUP%2Fuploads%2F3I0OR2H1J7tydJOHsXKk%2FRebalancer.pdf) | unknown | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuV2CWL0AZicnZxx3SgUP%2Fuploads%2FDMjHMORByqrQnWTCL5Rs%2FFortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf?alt=media) | Halborn | Audit | 2024-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 9 | high |
| [drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view](https://drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view?usp=drive_link) | unknown | Audit | 2024-09 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [spaces/uV2CWL0AZicnZxx3SgUP/uploads/LNmg84HNDNlNKagf9jLo/Reservoir Protocol - lz-bridge _ SSC.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuV2CWL0AZicnZxx3SgUP%2Fuploads%2FLNmg84HNDNlNKagf9jLo%2FReservoir%20Protocol%20-%20lz-bridge%20_%20SSC.pdf?alt=media) | unknown | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuV2CWL0AZicnZxx3SgUP%2Fuploads%2FM3Ws9qAexzuISpwSTgFS%2FReservoir%20Protocol%20-%20srusd%20%2B%20Rebalance%20_%20SSC.pdf?alt=media) | unknown | Audit | 2025-04 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18059] DL audit link — no match: The provided text is a website navigation/marketing page, not an audit report. No contracts, scope, or audit date are present.
- [18060] docs.google.com/viewerng/viewer — matched: Scope section explicitly lists 10 contracts with file paths. Audit date is the end of the engagement period (May 31, 2024).
- [18061] Rebalancer.pdf — no match: Only one contract in scope: Rebalance (src/Rebalance.sol). Audit date from engagement date: August 6th, 2025.
- [18062] spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — matched: Scope section explicitly lists 10 contracts with file paths. Audit date is end of engagement period (May 31, 2024).
- [18063] drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view — matched: Scope section lists four Solidity files. Audit date is the end date of engagement: September 26, 2024.
- [18064] spaces/uV2CWL0AZicnZxx3SgUP/uploads/LNmg84HNDNlNKagf9jLo/Reservoir Protocol - lz-bridge _ SSC.pdf — no match: Only one contract name found in findings; scope section not explicitly provided.
- [18065] spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf — matched: Four contracts in scope: Migration, Savingcoin, Rebalance, Dam. Audit date is end of engagement (April 2, 2025).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| docs.google.com/viewerng/viewer | AssetAdapter | own contract | AssetAdapter (selected) `0xc5dea6...4a73c4` — deployed 2025-11-19 19:04:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| docs.google.com/viewerng/viewer | TermCalculator | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | AccountManager | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | CreditEnforcer | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | PegStabilityModule | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | SavingModule | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | Savingcoin | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | Stablecoin | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | Term | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | TermIssuer | unmatched — not counted | — | listed in scope | no |
| Rebalancer.pdf | Rebalance | unmatched — not counted | — | listed in scope section: Items in scope: src/Rebalance.sol | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | AssetAdapter | own contract | AssetAdapter (selected) `0xc5dea6...4a73c4` — deployed 2025-11-19 19:04:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | TermCalculator | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | AccountManager | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | CreditEnforcer | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | PegStabilityModule | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | SavingModule | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Savingcoin | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Stablecoin | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Term | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | TermIssuer | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view | VaultSharesOracleV2 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view | MorphoRUSDAdapter | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view | LiquidTerm | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view | DAM | own contract | DamOft (selected) `0xf9ca3f...ababf8` — deployed 2025-08-06 22:07:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/LNmg84HNDNlNKagf9jLo/Reservoir Protocol - lz-bridge _ SSC.pdf | rusdmintbridge | unmatched — not counted | — | mentioned in finding title 'Lack of msg.value validation in rusdmintbridge' | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf | Migration | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf | Savingcoin | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf | Rebalance | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf | Dam | own contract | DamOft (selected) `0xf9ca3f...ababf8` — deployed 2025-08-06 22:07:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x841db2...0cfcbc` | MorphoUnderlyingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x99a95a...632b10` | MorphoUnderlyingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb595ba...8870a2` | MorphoUnderlyingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x866d66...f35e78` | RusdOft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf0e9f6...f4b4da` | RusdOftAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x316cd3...f64514` | SrusdOftAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x62344b...6900b1` | WsrusdOft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbb431a...91258a` | WsrusdOftAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 26 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, low=2
- Match method counts: unique_name=4

Zero-match audit list:

- [18059] DL audit link
- [18061] Rebalancer.pdf
- [18064] spaces/uV2CWL0AZicnZxx3SgUP/uploads/LNmg84HNDNlNKagf9jLo/Reservoir Protocol - lz-bridge _ SSC.pdf

Fork inheritance lineage and inherited audits are included when available.
