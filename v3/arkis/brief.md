# Agentic Audit Brief: Arkis

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

- Project: Arkis (`arkis`)
- Website: [https://www.arkis.xyz/](https://www.arkis.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: n/a
- Contract surface: 0 unique implementations (0 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $70,510,654.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Arkis in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 1 unknown
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
| [Arkis_Quantstamp_Report.pdf](https://github.com/ArkisXYZ/audits/blob/main/Arkis_Quantstamp_Report.pdf) | Quantstamp | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | n/a |
| [Arkis_Prime_Brokerage_Final_Report_With_Fix_Review_Final_Edit.pdf](https://github.com/ArkisXYZ/audits/blob/main/Arkis_Prime_Brokerage_Final_Report_With_Fix_Review_Final_Edit.pdf) | unknown | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [cantina.xyz/portfolio/6adef5e1-9694-4649-8fa6-0f5c2d6bc9eb](https://cantina.xyz/portfolio/6adef5e1-9694-4649-8fa6-0f5c2d6bc9eb) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 12 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12694] Arkis_Quantstamp_Report.pdf — no match: No reason recorded
- [12695] Arkis_Prime_Brokerage_Final_Report_With_Fix_Review_Final_Edit.pdf — no match: Extracted contract names from scope section, project targets, and detailed findings. Audit date from cover page and final delivery date.
- [12696] cantina.xyz/portfolio/6adef5e1-9694-4649-8fa6-0f5c2d6bc9eb — no match: No explicit scope section found; contract names extracted from findings and file references in the report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Arkis_Prime_Brokerage_Final_Report_With_Fix_Review_Final_Edit.pdf | AccessControlDS | unmatched — not counted | — | listed in scope and detailed findings | no |
| Arkis_Prime_Brokerage_Final_Report_With_Fix_Review_Final_Edit.pdf | Agreement | unmatched — not counted | — | listed in scope and detailed findings | no |
| Arkis_Prime_Brokerage_Final_Report_With_Fix_Review_Final_Edit.pdf | AgreementFactory | unmatched — not counted | — | mentioned in mutation testing and fix review | no |
| Arkis_Prime_Brokerage_Final_Report_With_Fix_Review_Final_Edit.pdf | BeaconDS | unmatched — not counted | — | listed in scope and detailed findings | no |
| Arkis_Prime_Brokerage_Final_Report_With_Fix_Review_Final_Edit.pdf | CommandSafeExecutor | unmatched — not counted | — | listed in scope and detailed findings | no |
| Arkis_Prime_Brokerage_Final_Report_With_Fix_Review_Final_Edit.pdf | Dispatcher | unmatched — not counted | — | listed in scope and detailed findings | no |
| Arkis_Prime_Brokerage_Final_Report_With_Fix_Review_Final_Edit.pdf | ERC20Evaluator | unmatched — not counted | — | mentioned in mutation testing | no |
| Arkis_Prime_Brokerage_Final_Report_With_Fix_Review_Final_Edit.pdf | ImmutableBeaconProxy | unmatched — not counted | — | mentioned in coverage limitations | no |
| Arkis_Prime_Brokerage_Final_Report_With_Fix_Review_Final_Edit.pdf | JitCompiler | unmatched — not counted | — | mentioned in coverage limitations and detailed findings | no |
| Arkis_Prime_Brokerage_Final_Report_With_Fix_Review_Final_Edit.pdf | MarginAccountFactory | unmatched — not counted | — | mentioned in detailed findings | no |
| Arkis_Prime_Brokerage_Final_Report_With_Fix_Review_Final_Edit.pdf | PendleValidatorMisc | unmatched — not counted | — | listed in scope and detailed findings | no |
| Arkis_Prime_Brokerage_Final_Report_With_Fix_Review_Final_Edit.pdf | PendleValidatorSwapPT | unmatched — not counted | — | listed in scope and detailed findings | no |
| Arkis_Prime_Brokerage_Final_Report_With_Fix_Review_Final_Edit.pdf | ThresholdsVerifier | unmatched — not counted | — | listed in scope and detailed findings | no |
| Arkis_Prime_Brokerage_Final_Report_With_Fix_Review_Final_Edit.pdf | WhitelistingController | unmatched — not counted | — | listed in scope and detailed findings | no |
| cantina.xyz/portfolio/6adef5e1-9694-4649-8fa6-0f5c2d6bc9eb | AgreementStaking | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/6adef5e1-9694-4649-8fa6-0f5c2d6bc9eb | Agreement | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/6adef5e1-9694-4649-8fa6-0f5c2d6bc9eb | Compiler | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/6adef5e1-9694-4649-8fa6-0f5c2d6bc9eb | CurveFiEvaluator | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/6adef5e1-9694-4649-8fa6-0f5c2d6bc9eb | OneInchV6ValidatorGeneric | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/6adef5e1-9694-4649-8fa6-0f5c2d6bc9eb | OneInchV6ValidatorClipper | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/6adef5e1-9694-4649-8fa6-0f5c2d6bc9eb | Pauser | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/6adef5e1-9694-4649-8fa6-0f5c2d6bc9eb | PendleValidatorMisc | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/6adef5e1-9694-4649-8fa6-0f5c2d6bc9eb | BeaconUpgradeable | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/6adef5e1-9694-4649-8fa6-0f5c2d6bc9eb | CurveFiValidatorSwapRouter4 | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/6adef5e1-9694-4649-8fa6-0f5c2d6bc9eb | ThresholdsVerifier | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/6adef5e1-9694-4649-8fa6-0f5c2d6bc9eb | CurveFiExchange | unmatched — not counted | — | mentioned in findings | no |

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
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 26 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [12694] Arkis_Quantstamp_Report.pdf
- [12695] Arkis_Prime_Brokerage_Final_Report_With_Fix_Review_Final_Edit.pdf
- [12696] cantina.xyz/portfolio/6adef5e1-9694-4649-8fa6-0f5c2d6bc9eb

Fork inheritance lineage and inherited audits are included when available.
