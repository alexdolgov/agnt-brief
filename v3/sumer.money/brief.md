# Agentic Audit Brief: Sumer.money

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Sumer.money (`sumer.money`)
- Website: [https://sumer.money](https://sumer.money)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: n/a
- Contract surface: 0 unique implementations (0 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,338,910.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Sumer.money in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 0
- Raw deployments: 0
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

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
| [SumerAuditReportAnciliav1.3.pdf](https://github.com/meterio/sumer-contracts/blob/main/audits/Ancilia/SumerAuditReportAnciliav1.3.pdf) | Ancilia | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [SumerAuditReportAnciliav1.6.pdf](https://github.com/meterio/sumer-contracts/blob/main/audits/Ancilia/SumerAuditReportAnciliav1.6.pdf) | Ancilia | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [SumerMoneyAuditCertik.pdf](https://github.com/meterio/sumer-contracts/blob/main/audits/Certik/SumerMoneyAuditCertik.pdf) | yAudit | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 54 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2950] SumerAuditReportAnciliav1.3.pdf — no match: Scope section states focus on CToken, Comptroller, and interest models. Additional contracts (WhitePaperInterestRateModel, Timelock, CEther, RedemptionManager) are mentioned in findings as audited targets.
- [2951] SumerAuditReportAnciliav1.6.pdf — no match: Extracted contract names from findings and scope description. Audit date from version history v1.6 date 08/29/2024.
- [16503] SumerMoneyAuditCertik.pdf — no match: Extracted 55 contract names from the audit scope table. The audit date is derived from 'Nov 30th, 2023' on the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| SumerAuditReportAnciliav1.3.pdf | CToken | unmatched — not counted | — | mentioned in findings and scope | no |
| SumerAuditReportAnciliav1.3.pdf | Comptroller | unmatched — not counted | — | mentioned in findings and scope | no |
| SumerAuditReportAnciliav1.3.pdf | WhitePaperInterestRateModel | unmatched — not counted | — | mentioned in findings | no |
| SumerAuditReportAnciliav1.3.pdf | Timelock | unmatched — not counted | — | mentioned in findings | no |
| SumerAuditReportAnciliav1.3.pdf | CEther | unmatched — not counted | — | mentioned in findings | no |
| SumerAuditReportAnciliav1.3.pdf | RedemptionManager | unmatched — not counted | — | mentioned in findings | no |
| SumerAuditReportAnciliav1.6.pdf | CToken | unmatched — not counted | — | mentioned in findings Sumer-A-01, Sumer-A-03, Sumer-A-15, Sumer-A-27 | no |
| SumerAuditReportAnciliav1.6.pdf | Comptroller | unmatched — not counted | — | mentioned in findings Sumer-A-04, Sumer-A-02, Sumer-A-05, Sumer-A-06, Sumer-A-21, Sumer-A-22, Sumer-A-24, Sumer-A-25, Sumer-A-26 | no |
| SumerAuditReportAnciliav1.6.pdf | Timelock | unmatched — not counted | — | mentioned in findings Sumer-A-15, Sumer-A-16, Sumer-A-10, Sumer-A-11, Sumer-A-13 | no |
| SumerAuditReportAnciliav1.6.pdf | ResilientOracle | unmatched — not counted | — | mentioned in finding Sumer-A-17 | no |
| SumerAuditReportAnciliav1.6.pdf | AccountLiquidity | unmatched — not counted | — | mentioned in finding Sumer-A-19 | no |
| SumerAuditReportAnciliav1.6.pdf | WhitePaperInterestRateModel | unmatched — not counted | — | mentioned in finding Sumer-A-12 | no |
| SumerAuditReportAnciliav1.6.pdf | CEther | unmatched — not counted | — | mentioned in finding Sumer-A-07 | no |
| SumerAuditReportAnciliav1.6.pdf | RedemptionManager | unmatched — not counted | — | mentioned in finding Sumer-A-14 | no |
| SumerAuditReportAnciliav1.6.pdf | PendleOracle | unmatched — not counted | — | mentioned in finding Sumer-A-18 | no |
| SumerMoneyAuditCertik.pdf | Comp | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | DAIInterestRateModelV4 | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | CToken | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | CErc20Delegate | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | BaseJumpRateModelV3 | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | FeedPriceOracle | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | UnderWriterAdmin | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | suErc20Delegate | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | suTokenInterestModel | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | Comptroller | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | ExponentialNoError | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | GovernorBravoDelegate | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | GovernorAlpha | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | GovernorBravoInterfaces | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | PriceOracle | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | JumpRateModel | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | ComptrollerInterface | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | InterestRateModel | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | WhitePaperInterestRateModel | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | LegacyInterestRateModel | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | CErc20 | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | suErc20 | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | Unitroller | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | UnderwriterProxy | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | Timelock | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | CErc20Delegator | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | suErc20Delegator | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | UnderwriterStorage | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | CompoundLens | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | CarefulMath | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | CErc20Immutable | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | Reservoir | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | CDaiDelegate | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | ComptrollerG5 | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | ComptrollerG7 | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | GovernorBravoDelegator | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | ComptrollerStorage | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | ComptrollerG2 | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | SimplePriceOracle | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | CEther | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | JumpRateModelV3 | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | suErc20Immutable | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | ComptrollerG8 | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | ComptrollerG4 | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | CTokenInterfaces | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | ErrorReporter | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | ComptrollerG6 | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | LegacyJumpRateModelV3 | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | ComptrollerG3 | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | EIP20Interface | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | EIP20NonStandardInterface | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | Maximillion | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | Exponential | unmatched — not counted | — | listed in audit scope table | no |
| SumerMoneyAuditCertik.pdf | SafeMath | unmatched — not counted | — | listed in audit scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 69 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [2950] SumerAuditReportAnciliav1.3.pdf
- [2951] SumerAuditReportAnciliav1.6.pdf
- [16503] SumerMoneyAuditCertik.pdf

Fork inheritance lineage and inherited audits are included when available.
