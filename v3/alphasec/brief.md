# Agentic Audit Brief: AlphaSec

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: AlphaSec (`alphasec`)
- Website: [https://app.alphasec.trade](https://app.alphasec.trade)
- Lifecycle: active (Tier 0, 16.6% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: kaia
- Contract surface: 1 unique implementations (1 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $456,379.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for AlphaSec in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
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

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kaia | n/a | `0x483a9ed25747711f38778a69d4d99b7e5365e506` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf](https://docs.alphasec.trade/assets/files/251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf) | CertiK | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 52 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12652] 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf — no match: Extracted contract names from the appendix listing all in-scope files and from finding locations. The audit date is the final report publication date: 12/20/2025.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | ArbTokenIssuer | unmatched — not counted | — | listed in scope appendix and finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | L2GatewayToken | unmatched — not counted | — | listed in scope appendix | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | Order | unmatched — not counted | — | listed in scope appendix and finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | StopOrder | unmatched — not counted | — | listed in scope appendix and finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | TPSLOrder | unmatched — not counted | — | listed in scope appendix and finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | Trade | unmatched — not counted | — | listed in scope appendix and finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | Session | unmatched — not counted | — | listed in scope appendix and finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | StateAccount | unmatched — not counted | — | finding location | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | Account | unmatched — not counted | — | listed in scope appendix and finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | Balances | unmatched — not counted | — | listed in scope appendix and finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | OrderBook | unmatched — not counted | — | listed in scope appendix and finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | BuyQueue | unmatched — not counted | — | listed in scope appendix and finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | SellQueue | unmatched — not counted | — | listed in scope appendix and finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | PriceTimePriority | unmatched — not counted | — | listed in scope appendix and finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | SymbolEngine | unmatched — not counted | — | listed in scope appendix and finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | Dispatcher | unmatched — not counted | — | listed in scope appendix and finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | BalanceManager | unmatched — not counted | — | listed in scope appendix and finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | ConditionalManager | unmatched — not counted | — | listed in scope appendix and finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | PersistenceManager | unmatched — not counted | — | listed in scope appendix and finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | SnapshotManager | unmatched — not counted | — | listed in scope appendix | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | DeltaWriter | unmatched — not counted | — | listed in scope appendix and finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | RecoveryEngine | unmatched — not counted | — | mentioned in overview | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | WALManager | unmatched — not counted | — | listed in scope appendix and finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | OCOController | unmatched — not counted | — | listed in scope appendix and finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | TriggerManager | unmatched — not counted | — | listed in scope appendix and finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | ActivationRule | unmatched — not counted | — | listed in scope appendix | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | LockingStage | unmatched — not counted | — | listed in scope appendix and finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | MatchingStage | unmatched — not counted | — | listed in scope appendix and finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | QueueUpdateStage | unmatched — not counted | — | listed in scope appendix and finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | SettlementStage | unmatched — not counted | — | listed in scope appendix and finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | ValidationStage | unmatched — not counted | — | listed in scope appendix | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | ConditionalStage | unmatched — not counted | — | listed in scope appendix | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | EventGenerationStage | unmatched — not counted | — | listed in scope appendix | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | ManagementPipeline | unmatched — not counted | — | listed in scope appendix | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | TradingPipeline | unmatched — not counted | — | listed in scope appendix | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | Pipeline | unmatched — not counted | — | listed in scope appendix | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | Builder | unmatched — not counted | — | listed in scope appendix | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | Context | unmatched — not counted | — | listed in scope appendix | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | IntegrationExample | unmatched — not counted | — | listed in scope appendix | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | ScaledMath | unmatched — not counted | — | listed in scope appendix | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | Serialization | unmatched — not counted | — | listed in scope appendix | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | Recovery | unmatched — not counted | — | listed in scope appendix | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | Metrics | unmatched — not counted | — | listed in scope appendix | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | System | unmatched — not counted | — | listed in scope appendix | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | ValueTransferContext | unmatched — not counted | — | finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | TokenTransferContext | unmatched — not counted | — | finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | OrderContext | unmatched — not counted | — | finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | CancelContext | unmatched — not counted | — | finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | CancelAllContext | unmatched — not counted | — | finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | ModifyContext | unmatched — not counted | — | finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | StopOrderContext | unmatched — not counted | — | finding locations | no |
| 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf | SessionContext | unmatched — not counted | — | mentioned in overview | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 52 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [12652] 251220_AlphaSec_CertiK_Audit_Report-588a526784dc5258f1ef915083342775.pdf

Fork inheritance lineage and inherited audits are included when available.
