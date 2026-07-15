# Agentic Audit Brief: Fortunafi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Fortunafi (`fortunafi`)
- Website: [https://fortunafi.com/](https://fortunafi.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, blast, canto, ethereum
- Contract surface: 17 unique implementations (17 raw deployments)
- Coverage basis: 0/16 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $221,821.20
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Fortunafi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 16 contract row(s) across arbitrum, blast, canto, ethereum. Structural roles: 16 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 16
- Structural roles: core (16)
- Contract kinds: contract (16)
- Detected standards: accesscontrol (16), erc165 (16), erc20 (16), ownable (16)
- Frameworks: openzeppelin (16)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BlastPoints (`0x45bafa...20589b`, chain 81457)
- Coinbase Stock fCOIN (`0x2378ac...0f5108`, chain 1)
- Coinbase Stock ifCOIN (`0xa6d0f5...160994`, chain 1)
- Hilbert Version 1 fHV1 (`0xd71412...e393e4`, chain 1)
- Hilbert Version 1 ifHV1 (`0xe7638c...ec50ed`, chain 1)
- Robinhood Stock fHOOD (`0x62c5e5...64f846`, chain 1)
- Robinhood Stock ifHOOD (`0x7fc6b3...26e95e`, chain 1)
- Treasury Bills fBILL (`0x108ec6...2e3f03`, chain 1)
- Treasury Bills fBILL (`0x79ecce...90ec08`, chain 7700)
- Treasury Bills fBILL (`0x79ecce...90ec08`, chain 42161)
- Treasury Bills fBILL (`0x79ecce...90ec08`, chain 81457)
- Treasury Bills ifBILL (`0x4b57e1...f6a2a5`, chain 1)
- Treasury Bills ifBILL (`0x45bafa...20589b`, chain 7700)
- Treasury Bills ifBILL (`0x45bafa...20589b`, chain 42161)
- US Equity Index fSPQQQ (`0x3010e9...836657`, chain 1)
- US Equity Index ifSPQQQ (`0x6d3411...1ea6f4`, chain 1)

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 16 (16 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/16 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 16 of 17 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 17
- Raw deployments: 17
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BlastPoints | unknown | project_anchor | own_supporting | 0 | blast | unit-386706 | `0x45bafa...20589b` | ⚠️ Unaudited |
| Coinbase Stock fCOIN | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386693 | `0x2378ac...0f5108` | ⚠️ Unaudited |
| Coinbase Stock ifCOIN | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386699 | `0xa6d0f5...160994` | ⚠️ Unaudited |
| Hilbert Version 1 fHV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386700 | `0xd71412...e393e4` | ⚠️ Unaudited |
| Hilbert Version 1 ifHV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386701 | `0xe7638c...ec50ed` | ⚠️ Unaudited |
| OffchainFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x010869...e9beb2` | ⚠️ Unaudited |
| Robinhood Stock fHOOD | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386696 | `0x62c5e5...64f846` | ⚠️ Unaudited |
| Robinhood Stock ifHOOD | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386698 | `0x7fc6b3...26e95e` | ⚠️ Unaudited |
| Treasury Bills fBILL | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386692 | `0x108ec6...2e3f03` | ⚠️ Unaudited |
| Treasury Bills fBILL | unknown | project_anchor | own_supporting | 0 | canto | unit-386705 | `0x79ecce...90ec08` | ⚠️ Unaudited |
| Treasury Bills fBILL | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-386703 | `0x79ecce...90ec08` | ⚠️ Unaudited |
| Treasury Bills fBILL | unknown | project_anchor | own_supporting | 0 | blast | unit-386707 | `0x79ecce...90ec08` | ⚠️ Unaudited |
| Treasury Bills ifBILL | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386695 | `0x4b57e1...f6a2a5` | ⚠️ Unaudited |
| Treasury Bills ifBILL | unknown | project_anchor | own_supporting | 0 | canto | unit-386704 | `0x45bafa...20589b` | ⚠️ Unaudited |
| Treasury Bills ifBILL | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-386702 | `0x45bafa...20589b` | ⚠️ Unaudited |
| US Equity Index fSPQQQ | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386694 | `0x3010e9...836657` | ⚠️ Unaudited |
| US Equity Index ifSPQQQ | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386697 | `0x6d3411...1ea6f4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [docs.google.com/viewerng/viewer](https://docs.google.com/viewerng/viewer?url=https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%252FuV2CWL0AZicnZxx3SgUP%252Fuploads%252FDMjHMORByqrQnWTCL5Rs%252FFortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf?alt%3Dmedia%26token%3Dbb69023c-f54b-45c7-a44b-5e151002777e) | Halborn | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Rebalancer.pdf](https://3705872066-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuV2CWL0AZicnZxx3SgUP%2Fuploads%2F3I0OR2H1J7tydJOHsXKk%2FRebalancer.pdf) | unknown | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Audits](https://docs.reservoir.xyz/security-and-compliance/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuV2CWL0AZicnZxx3SgUP%2Fuploads%2FDMjHMORByqrQnWTCL5Rs%2FFortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf?alt=media) | Halborn | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view](https://drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view?usp=drive_link) | unknown | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [spaces/uV2CWL0AZicnZxx3SgUP/uploads/LNmg84HNDNlNKagf9jLo/Reservoir Protocol - lz-bridge _ SSC.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuV2CWL0AZicnZxx3SgUP%2Fuploads%2FLNmg84HNDNlNKagf9jLo%2FReservoir%20Protocol%20-%20lz-bridge%20_%20SSC.pdf?alt=media) | unknown | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuV2CWL0AZicnZxx3SgUP%2Fuploads%2FM3Ws9qAexzuISpwSTgFS%2FReservoir%20Protocol%20-%20srusd%20%2B%20Rebalance%20_%20SSC.pdf?alt=media) | unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20324] docs.google.com/viewerng/viewer — no match: Scope section explicitly lists 10 contracts with file paths. Audit date is end of engagement period (May 31, 2024).
- [20325] Rebalancer.pdf — no match: Only one contract in scope: Rebalance.sol. Audit date is August 6, 2025.
- [20326] Audits — no match: The document is an index page listing audit reports with links, but does not contain the actual audit report content. No contract names or scope details are provided.
- [20327] spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — no match: Scope section explicitly lists 10 contracts with file paths. Audit date is end of engagement period (May 31, 2024).
- [20328] drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view — no match: Scope section lists four Solidity files. Audit engagement dates: 09/20/2024 - 09/26/2024. Report date is end of engagement.
- [20329] spaces/uV2CWL0AZicnZxx3SgUP/uploads/LNmg84HNDNlNKagf9jLo/Reservoir Protocol - lz-bridge _ SSC.pdf — no match: Only one contract name found in findings; no explicit scope section or file paths provided.
- [20330] spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf — no match: Four contracts in scope: Migration, Savingcoin, Rebalance, Dam. Audit date from engagement end date (April 2nd, 2025).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| docs.google.com/viewerng/viewer | AssetAdapter | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | TermCalculator | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | AccountManager | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | CreditEnforcer | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | PegStabilityModule | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | SavingModule | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | Savingcoin | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | Stablecoin | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | Term | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | TermIssuer | unmatched — not counted | — | listed in scope | no |
| Rebalancer.pdf | Rebalance | unmatched — not counted | — | listed in scope section | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | AssetAdapter | unmatched — not counted | — | listed in scope | no |
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
| drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view | DAM | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/LNmg84HNDNlNKagf9jLo/Reservoir Protocol - lz-bridge _ SSC.pdf | rusdmintbridge | unmatched — not counted | — | mentioned in finding 'Lack of msg.value validation in rusdmintbridge' | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf | Migration | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf | Savingcoin | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf | Rebalance | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf | Dam | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 30 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, low=2
- Match method counts: n/a

Zero-match audit list:

- [20324] docs.google.com/viewerng/viewer
- [20325] Rebalancer.pdf
- [20326] Audits
- [20327] spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf
- [20328] drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view
- [20329] spaces/uV2CWL0AZicnZxx3SgUP/uploads/LNmg84HNDNlNKagf9jLo/Reservoir Protocol - lz-bridge _ SSC.pdf
- [20330] spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf

Fork inheritance lineage and inherited audits are included when available.
