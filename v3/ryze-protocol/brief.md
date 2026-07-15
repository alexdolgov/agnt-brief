# Agentic Audit Brief: Ryze Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Ryze Protocol (`ryze-protocol`)
- Website: [https://www.ryze.pro/](https://www.ryze.pro/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: n/a
- Contract surface: 0 unique implementations (0 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $361,768.33
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Ryze Protocol in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 0 unknown
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
| [Ryze_Go_Final_Audit_Report.pdf](https://github.com/Credshields/audit-reports/blob/master/Ryze_Go_Final_Audit_Report.pdf) | unknown | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Ryze_Solidity_Final_Audit_Report.pdf](https://github.com/Credshields/audit-reports/blob/master/Ryze_Solidity_Final_Audit_Report.pdf) | Credshields | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13798] Ryze_Go_Final_Audit_Report.pdf — no match: The audit report covers three Go services: Execution Relayer, External Liquidity Feeder Bot, and Signed Price Server. No Solidity contracts are in scope; the report mentions SSPCore.sol only as an integration point. The audit date is March 18, 2026, from the report title.
- [13799] Ryze_Solidity_Final_Audit_Report.pdf — no match: Extracted contract names from findings and scope section. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Ryze_Go_Final_Audit_Report.pdf | Execution Relayer | unmatched — not counted | — | listed in scope table | no |
| Ryze_Go_Final_Audit_Report.pdf | External Liquidity Feeder Bot | unmatched — not counted | — | listed in scope table | no |
| Ryze_Go_Final_Audit_Report.pdf | Signed Price Server | unmatched — not counted | — | listed in scope table | no |
| Ryze_Solidity_Final_Audit_Report.pdf | SSPCore | unmatched — not counted | — | mentioned in findings H001, M004, M014, M016 | no |
| Ryze_Solidity_Final_Audit_Report.pdf | TradeSlicingProtection | unmatched — not counted | — | mentioned in findings H001, H002, M005, M012, M013, M014 | no |
| Ryze_Solidity_Final_Audit_Report.pdf | WeightedPool | unmatched — not counted | — | mentioned in findings H003, M004, M011, M015 | no |
| Ryze_Solidity_Final_Audit_Report.pdf | WeightedPoolFactory | unmatched — not counted | — | mentioned in finding M016 | no |
| Ryze_Solidity_Final_Audit_Report.pdf | MultiHopRouter | unmatched — not counted | — | mentioned in findings M001, M002, M003, M005, M007, M009, M010, L001 | no |
| Ryze_Solidity_Final_Audit_Report.pdf | RyzeRouter | unmatched — not counted | — | mentioned in findings M002, M006 | no |
| Ryze_Solidity_Final_Audit_Report.pdf | WeightBreakingRewardConfig | unmatched — not counted | — | mentioned in finding M008 | no |
| Ryze_Solidity_Final_Audit_Report.pdf | LPGaugeVault | unmatched — not counted | — | mentioned in findings H006, M021, M022, M023 | no |
| Ryze_Solidity_Final_Audit_Report.pdf | MerkleDistributor | unmatched — not counted | — | mentioned in finding M019 | no |
| Ryze_Solidity_Final_Audit_Report.pdf | RevenueDistributor | unmatched — not counted | — | mentioned in finding M020 | no |
| Ryze_Solidity_Final_Audit_Report.pdf | GaugesManager | unmatched — not counted | — | mentioned in findings M024, M025 | no |
| Ryze_Solidity_Final_Audit_Report.pdf | OutGivenInMath | unmatched — not counted | — | mentioned in findings H002, M004, M014, M017 | no |
| Ryze_Solidity_Final_Audit_Report.pdf | InGivenOutMath | unmatched — not counted | — | mentioned in findings H002, M004, M014, M017, M026 | no |
| Ryze_Solidity_Final_Audit_Report.pdf | SingleJoinMath | unmatched — not counted | — | mentioned in finding H004 | no |
| Ryze_Solidity_Final_Audit_Report.pdf | WeightedPoolMath | unmatched — not counted | — | mentioned in findings H005, M011 | no |
| Ryze_Solidity_Final_Audit_Report.pdf | SwapOperations | unmatched — not counted | — | mentioned in findings M003, M018 | no |

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
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 19 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [13798] Ryze_Go_Final_Audit_Report.pdf
- [13799] Ryze_Solidity_Final_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
