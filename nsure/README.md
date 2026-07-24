# Agentic Audit Brief: Nsure

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Nsure (`nsure`)
- Website: [https://nsure.network/](https://nsure.network/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 11 unique implementations (11 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $160,116.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Nsure. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Nsure (`0x20945ca1df56d237fd40036d47e866c7dccd2114`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 10 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 11 unique; 10 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 11
- Raw deployments: 11
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Buy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x702aff99b08e8891fc70811174701fb7407b4477` | ⚠️ Unaudited |
| CapitalConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6b658ce4b1cdb4e7d8f97dffb549b8688cafb84` | ⚠️ Unaudited |
| CapitalStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb98ed9800fcd2982d26cf0e4a6b53c96bbeff6a6` | ⚠️ Unaudited |
| ClaimPurchaseMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x200db99fe5c0f39688853d4c4d8651648d995b26` | ⚠️ Unaudited |
| Nsure | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389899 | `0x20945ca1df56d237fd40036d47e866c7dccd2114` | ⚠️ Unaudited |
| Product | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06e76c5c53775681f0626600d6266901a03141a8` | ⚠️ Unaudited |
| Surplus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80e711b29e46d430ff1553eb2ada670e2a25593c` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd0d28539aed12477dcba1575eb40fca53969440` | ⚠️ Unaudited |
| Underwriting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a66f065303299d78693f122c800ab3debe9c966` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x454fd408abb7c3b36b4cf098fe86c9ed388fc477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92c94707fdc3fe9fcb0278c310911a0371752a20` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 2
- Live contracts: 0
- Unknown liveness contracts: 2
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=2

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x454fd408abb7c3b36b4cf098fe86c9ed388fc477` | non_address_book | unknown | unknown | unverified | n/a | `0x7023a32108539a024ca17afab0f5b90f8770bccd` |
| unverified unclassified | UnnamedContract<br>`0x92c94707fdc3fe9fcb0278c310911a0371752a20` | non_address_book | unknown | unknown | unverified | n/a | `0x7023a32108539a024ca17afab0f5b90f8770bccd` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [CertiK-Final-Report-For-Nsure.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/nsure-tech/core-contracts/master/Audit%20Reports/CertiK-Final-Report-For-Nsure.pdf) | CertiK | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [Nsure Network-Smart-Contract-Audit-Report.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/nsure-tech/core-contracts/master/Audit%20Reports/Nsure%20Network-Smart-Contract-Audit-Report.pdf) | Beijing ChainsGuard Technology (ChainsGuard / 北京链安) | Audit | 2021-03 | stale | Direct | address | no match | 0 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21412] CertiK-Final-Report-For-Nsure.pdf — no match: All contracts listed in the 'File in Scope' table were extracted. The audit date is the delivery date: Feb. 22th, 2021.
- [21413] Nsure Network-Smart-Contract-Audit-Report.pdf — no match: All contracts listed in the Audit Object table with addresses and file names.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| CertiK-Final-Report-For-Nsure.pdf | Buy | unmatched — not counted | — | listed in scope table | no |
| CertiK-Final-Report-For-Nsure.pdf | CapitalConverter | unmatched — not counted | — | listed in scope table | no |
| CertiK-Final-Report-For-Nsure.pdf | CapitalStake | unmatched — not counted | — | listed in scope table | no |
| CertiK-Final-Report-For-Nsure.pdf | ClaimPurchaseMint | unmatched — not counted | — | listed in scope table | no |
| CertiK-Final-Report-For-Nsure.pdf | LockFunds | unmatched — not counted | — | listed in scope table | no |
| CertiK-Final-Report-For-Nsure.pdf | Product | unmatched — not counted | — | listed in scope table | no |
| CertiK-Final-Report-For-Nsure.pdf | Surplus | unmatched — not counted | — | listed in scope table | no |
| CertiK-Final-Report-For-Nsure.pdf | Treasury | unmatched — not counted | — | listed in scope table | no |
| CertiK-Final-Report-For-Nsure.pdf | ICover | unmatched — not counted | — | listed in scope table | no |
| CertiK-Final-Report-For-Nsure.pdf | IMerkleDistributor | unmatched — not counted | — | listed in scope table | no |
| CertiK-Final-Report-For-Nsure.pdf | INsure | unmatched — not counted | — | listed in scope table | no |
| CertiK-Final-Report-For-Nsure.pdf | IWETH | unmatched — not counted | — | listed in scope table | no |
| Nsure Network-Smart-Contract-Audit-Report.pdf | CapitalConvert | unmatched — not counted | — | listed in scope table | no |
| Nsure Network-Smart-Contract-Audit-Report.pdf | CapitalStake | unmatched — not counted | — | listed in scope table | no |
| Nsure Network-Smart-Contract-Audit-Report.pdf | product | unmatched — not counted | — | listed in scope table | no |
| Nsure Network-Smart-Contract-Audit-Report.pdf | surplus | unmatched — not counted | — | listed in scope table | no |
| Nsure Network-Smart-Contract-Audit-Report.pdf | underwriter | unmatched — not counted | — | listed in scope table | no |
| Nsure Network-Smart-Contract-Audit-Report.pdf | treasury | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x20945ca1df56d237fd40036d47e866c7dccd2114` | Nsure | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 18 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [21412] CertiK-Final-Report-For-Nsure.pdf
- [21413] Nsure Network-Smart-Contract-Audit-Report.pdf

Fork inheritance lineage and inherited audits are included when available.
