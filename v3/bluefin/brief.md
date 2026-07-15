# Agentic Audit Brief: Bluefin

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Bluefin (`bluefin`)
- Website: [https://bluefin.io](https://bluefin.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum
- Contract surface: 2 unique implementations (2 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $26,028,155.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Bluefin in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-127231 | `0x2b4b5e...00fc53` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-127232 | `0x01a4ac...6090f6` | ⚠️ Unaudited |

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
| [Code Audits](https://learn.bluefin.io/bluefin/more/security/code-audits.md) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [Spot Audits](https://learn.bluefin.io/bluefin/more/security/spot-audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [full report](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-dTrade-v1.0.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [full report](https://github.com/HalbornSecurity/PublicReports/blob/master/Web%20Pentest/dTrade_Frontend_Pentest_Executive_Summary_Report_Halborn_v1_1.pdf) | Halborn | Audit | 2021-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19579] Code Audits — no match: The document lists multiple audits but does not provide a single audit date. Contract names extracted from PeckShield audit scope description. No file paths or addresses provided.
- [19580] Spot Audits — no match: The provided text is a documentation index page with a link to an audit report file, but the actual audit report content is not included. No contract names or scope information can be extracted.
- [19581] full report — no match: Extracted from report introduction and findings. The report states 'The dTrade contracts for audit include four main components: dTrade Exchange Token (DET), Insurance Mining, Vesting, and Governance.' Additionally, findings reference TokenVesting and InsuranceFund contracts.
- [19582] full report — no match: The audit scope lists frontend web applications (FQDNs and repositories) but no smart contracts. The report is a penetration test of frontend apps, not smart contracts.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Code Audits | Governance | unmatched — not counted | — | PeckShield audited Bluefin's V1 repository, which includes Governance, Insurance Fund, Token Vesting, and Timelock smart contracts. | no |
| Code Audits | Insurance Fund | unmatched — not counted | — | PeckShield audited Bluefin's V1 repository, which includes Governance, Insurance Fund, Token Vesting, and Timelock smart contracts. | no |
| Code Audits | Token Vesting | unmatched — not counted | — | PeckShield audited Bluefin's V1 repository, which includes Governance, Insurance Fund, Token Vesting, and Timelock smart contracts. | no |
| Code Audits | Timelock | unmatched — not counted | — | PeckShield audited Bluefin's V1 repository, which includes Governance, Insurance Fund, Token Vesting, and Timelock smart contracts. | no |
| full report | DET | unmatched — not counted | — | mentioned as dTrade Exchange Token (DET) | no |
| full report | InsuranceMining | unmatched — not counted | — | mentioned as Insurance Mining component | no |
| full report | Vesting | unmatched — not counted | — | mentioned as Vesting component | no |
| full report | Governance | unmatched — not counted | — | mentioned as Governance component and in findings | no |
| full report | TokenVesting | unmatched — not counted | — | mentioned in findings PVE-001 and PVE-002 | no |
| full report | InsuranceFund | unmatched — not counted | — | mentioned in findings PVE-001 and PVE-002 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 10 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=2, medium=1
- Match method counts: n/a

Zero-match audit list:

- [19579] Code Audits
- [19580] Spot Audits
- [19581] full report
- [19582] full report

Fork inheritance lineage and inherited audits are included when available.
