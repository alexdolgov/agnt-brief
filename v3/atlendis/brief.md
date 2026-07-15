# Agentic Audit Brief: Atlendis

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: DECLINING - TVL dropped 4.1% over 90 days

## Project Overview

- Project: Atlendis (`atlendis`)
- Website: [https://www.atlendis.io/](https://www.atlendis.io/)
- Lifecycle: declining (Tier 0, 99.1% below peak)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: polygon
- Contract surface: 17 unique implementations (17 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $10,992,516.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Atlendis. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across polygon. Structural roles: 11 unclassified, 3 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: unclassified (11), core (3)
- Contract kinds: contract (14)
- Detected standards: ownable (2)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x115f10...200e6d`, chain 137)
- UnnamedContract (`0x170876...34d163`, chain 137)
- UnnamedContract (`0x1cd1cd...e7fd0f`, chain 137)
- UnnamedContract (`0x40bec9...833ea3`, chain 137)
- UnnamedContract (`0x541ee1...5d04bf`, chain 137)
- UnnamedContract (`0x9d15d9...4c62df`, chain 137)
- UnnamedContract (`0xa91a5b...37a1c5`, chain 137)

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 14 (1 live, 13 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 10 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Deployed-live implementations: 7 of 17 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 17
- Raw deployments: 17
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AtlendisLockdrop | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-379758 | `0x4d5fa3...deab3b` | ⚠️ Unaudited |
| AtlendisLockdrop | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-379760 | `0x74597f...b418aa` | ⚠️ Unaudited |
| AtlendisLockdrop | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-379764 | `0xbe7e43...37e84e` | ⚠️ Unaudited |
| AtlendisLockdrop | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-379765 | `0xc172b7...21b47b` | ⚠️ Unaudited |
| BorrowerPools | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-379762 | `0xa5a520...85d2b3` | ⚠️ Unaudited |
| BorrowerPools | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-379768 | `0xbc13e1...f10b1f` | ⚠️ Unaudited |
| PositionDescriptor | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-379767 | `0x88bb21...9e3361` | ⚠️ Unaudited |
| PositionManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-379756 | `0x314083...868286` | ⚠️ Unaudited |
| PositionManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-379769 | `0x55e4e7...bd73e9` | ⚠️ Unaudited |
| PositionManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-379766 | `0xcfa8f8...a71d23` | ⚠️ Unaudited |
| UnnamedContract | proxy | project_anchor | own_supporting | 0 | polygon | unit-379757 | `0x40bec9...833ea3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-379753 | `0x115f10...200e6d` | ❓ Unverified |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | polygon | unit-379754 | `0x170876...34d163` | ❓ Unverified |
| UnnamedContract | registry | project_anchor | own_supporting | 0 | polygon | unit-379755 | `0x1cd1cd...e7fd0f` | ❓ Unverified |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | polygon | unit-379759 | `0x541ee1...5d04bf` | ❓ Unverified |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | polygon | unit-379761 | `0x9d15d9...4c62df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-379763 | `0xa91a5b...37a1c5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Atlendis-v1.0.pdf](https://github.com/Atlendis/protocol-v1/blob/master/audits/PeckShield-Audit-Report-Atlendis-v1.0.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [atlendis-audit-report.pdf](https://github.com/Atlendis/protocol-v1/blob/master/audits/atlendis-audit-report.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [7048] PeckShield-Audit-Report-Atlendis-v1.0.pdf — no match: Contracts extracted from findings targets and library references. No file paths provided.
- [7049] atlendis-audit-report.pdf — no match: Scope section explicitly lists core contracts and interfaces. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Atlendis-v1.0.pdf | BorrowerPools | unmatched — not counted | — | Target in findings PVE-001, PVE-002, PVE-006 | no |
| PeckShield-Audit-Report-Atlendis-v1.0.pdf | PoolsController | unmatched — not counted | — | Target in findings PVE-003, PVE-004, PVE-005 | no |
| PeckShield-Audit-Report-Atlendis-v1.0.pdf | PoolLogic | unmatched — not counted | — | Library mentioned in finding PVE-006 | no |
| atlendis-audit-report.pdf | BorrowerPools | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | PoolsSettingsManager | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | Position | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | PoolLogic | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | Rounding | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | Types | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | WadRayMath | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | IBorrowerManagement | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | IBorrowerPools | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | IPlatformManagement | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | IPoolsParametersManagement | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | IPosition | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 16 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [7048] PeckShield-Audit-Report-Atlendis-v1.0.pdf
- [7049] atlendis-audit-report.pdf

Fork inheritance lineage and inherited audits are included when available.
