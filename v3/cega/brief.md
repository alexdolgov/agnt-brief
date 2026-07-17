# Agentic Audit Brief: Cega

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Cega (`cega`)
- Website: [https://www.cega.fi/](https://www.cega.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 13 unique implementations (13 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $750,963.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Cega. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 1; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 6 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 7 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 13
- Raw deployments: 13
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CegaState | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231663 | `0x0730aa138062d8cc54510aa939b533ba7c30f26b` | ⚠️ Unaudited |
| CegaViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31c73c07dbd8d026684950b17dd6131ea9baf2c4` | ⚠️ Unaudited |
| DCSCalculations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e1e35af84b87c66dbbaa3c56f692d9003e730c5` | ⚠️ Unaudited |
| DCSProduct | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x042021d59731d3ffa908c7c4211177137ba362ea` | ⚠️ Unaudited |
| FCNProduct | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x042021d59731d3ffa908c7c4211177137ba362ea` | ⚠️ Unaudited |
| FCNProductViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51d8ddcf0d300f773d7ded11eb6087b75fb1a55b` | ⚠️ Unaudited |
| LOVProduct | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0299a5b8d523ebccf5501177c35c0958774fdb38` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x063aa85325c243d0092e9ecfbeae7b4f5cccc5c2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x1ddf7c4c98a78b492bb4a2881358f183d94c9806` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa8ab795731fbbfdd1fbc57ca11e6f722e7783642` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x25b7a20b8e9b0676e596edf4329d38459c3f9a87` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x475c4af369b28997b25bd756ef92797ad3f69593` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x670cdb9c939278e005bc36bcf962fe2015d50317` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1a0nYzQ41kZMFDxDDDOJua3V2UTK8v2jX/view](https://drive.google.com/file/d/1a0nYzQ41kZMFDxDDDOJua3V2UTK8v2jX/view) | OtterSec | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [drive.google.com/file/d/1qcNiP-5vQpqUqo4WzlNT6gsjzKSd8IqZ/view](https://drive.google.com/file/d/1qcNiP-5vQpqUqo4WzlNT6gsjzKSd8IqZ/view) | Zellic | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [reports.zellic.io/publications/cega](https://reports.zellic.io/publications/cega) | Zellic | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [drive.google.com/file/d/1RbEJmROcl-5j6wwA-cYbSekGJQ4Jmmba/view](https://drive.google.com/file/d/1RbEJmROcl-5j6wwA-cYbSekGJQ4Jmmba/view) | OtterSec | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21335] drive.google.com/file/d/1a0nYzQ41kZMFDxDDDOJua3V2UTK8v2jX/view — no match: Scope section describes two components: product (FCNProduct) and vault (FCNVault). Calculations.sol is referenced in findings. Audit date is March 11, 2023 (final confirmation of patches).
- [21336] drive.google.com/file/d/1qcNiP-5vQpqUqo4WzlNT6gsjzKSd8IqZ/view — no match: Scope section explicitly lists four contracts: FCNProduct, Oracle, FCNVault, CegaState. Audit date is March 15, 2023 from the cover page.
- [21337] reports.zellic.io/publications/cega — no match: Extracted contract names from the scope listing in the report header. Date found as 'March 9, 2023'.
- [21338] drive.google.com/file/d/1RbEJmROcl-5j6wwA-cYbSekGJQ4Jmmba/view — no match: The audit report scope section describes a single program 'cega-vault' with a repository URL. No individual contract names are listed; the program is the only item in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1a0nYzQ41kZMFDxDDDOJua3V2UTK8v2jX/view | FCNProduct | unmatched — not counted | — | Listed in scope description and findings | no |
| drive.google.com/file/d/1a0nYzQ41kZMFDxDDDOJua3V2UTK8v2jX/view | FCNVault | unmatched — not counted | — | Listed in scope description and findings | no |
| drive.google.com/file/d/1a0nYzQ41kZMFDxDDDOJua3V2UTK8v2jX/view | Calculations | unmatched — not counted | — | Listed in findings | no |
| drive.google.com/file/d/1qcNiP-5vQpqUqo4WzlNT6gsjzKSd8IqZ/view | FCNProduct | unmatched — not counted | — | listed in scope section 2.3 | no |
| drive.google.com/file/d/1qcNiP-5vQpqUqo4WzlNT6gsjzKSd8IqZ/view | Oracle | unmatched — not counted | — | listed in scope section 2.3 | no |
| drive.google.com/file/d/1qcNiP-5vQpqUqo4WzlNT6gsjzKSd8IqZ/view | FCNVault | unmatched — not counted | — | listed in scope section 2.3 | no |
| drive.google.com/file/d/1qcNiP-5vQpqUqo4WzlNT6gsjzKSd8IqZ/view | CegaState | unmatched — not counted | — | listed in scope section 2.3 | no |
| reports.zellic.io/publications/cega | CegaState.sol | unmatched — not counted | — | listed in scope | no |
| reports.zellic.io/publications/cega | FCNProduct.sol | unmatched — not counted | — | listed in scope | no |
| reports.zellic.io/publications/cega | Oracle.sol | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1RbEJmROcl-5j6wwA-cYbSekGJQ4Jmmba/view | cega-vault | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 11 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: n/a

Zero-match audit list:

- [21335] drive.google.com/file/d/1a0nYzQ41kZMFDxDDDOJua3V2UTK8v2jX/view
- [21336] drive.google.com/file/d/1qcNiP-5vQpqUqo4WzlNT6gsjzKSd8IqZ/view
- [21337] reports.zellic.io/publications/cega
- [21338] drive.google.com/file/d/1RbEJmROcl-5j6wwA-cYbSekGJQ4Jmmba/view

Fork inheritance lineage and inherited audits are included when available.
