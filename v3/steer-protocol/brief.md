# Agentic Audit Brief: Steer Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Steer Protocol (`steer-protocol`)
- Website: [https://app.steer.finance](https://app.steer.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: n/a
- Contract surface: 0 unique implementations (0 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $15,600,255.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Steer Protocol in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 3 stale, 1 unknown
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
| [Steer-Protocol-Smart-Contract-Audit-Report-Final-Report.pdf](https://hashlock.com/wp-content/uploads/2025/04/Steer-Protocol-Smart-Contract-Audit-Report-Final-Report.pdf) | Hashlock | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4](https://omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4) | Omniscia | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [omniscia.io/reports/steer-protocol-algebra-integral-position-manager-smart-rewarder-661909e09ce51e0018065566](https://omniscia.io/reports/steer-protocol-algebra-integral-position-manager-smart-rewarder-661909e09ce51e0018065566) | Omniscia | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [omniscia.io/reports/steer-protocol-algebra-strategies-6508231259c40e0014bce243](https://omniscia.io/reports/steer-protocol-algebra-strategies-6508231259c40e0014bce243) | Code4rena | Contest | 2023-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f](https://omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f) | Omniscia | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 24 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11688] Steer-Protocol-Smart-Contract-Audit-Report-Final-Report.pdf — no match: Three contracts explicitly listed in scope table on page 7. Audit date given as 'March, 2025'.
- [11689] omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4 — no match: Extracted contract names from scope section and storage incompatibility discussion. Audit date is the latest revision date (May 29th 2024).
- [11690] omniscia.io/reports/steer-protocol-algebra-integral-position-manager-smart-rewarder-661909e09ce51e0018065566 — no match: Scope section not provided in text; extracted contract names from audit overview and post-audit sections.
- [11691] omniscia.io/reports/steer-protocol-algebra-strategies-6508231259c40e0014bce243 — no match: The report text does not contain a clear scope section listing specific contracts or files. The title mentions 'Algebra Strategies' but no individual contract names are provided.
- [11692] omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f — no match: All contracts listed in the 'Contracts Assessed' table under 'Files in Scope' are extracted. No audit date found in the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Steer-Protocol-Smart-Contract-Audit-Report-Final-Report.pdf | StrykeLPManager | unmatched — not counted | — | listed in scope table | no |
| Steer-Protocol-Smart-Contract-Audit-Report-Final-Report.pdf | StrykeLPManagerV2 | unmatched — not counted | — | listed in scope table | no |
| Steer-Protocol-Smart-Contract-Audit-Report-Final-Report.pdf | StrykeSteerLib | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4 | AlgebraMultiPositionLiquidityManager | unmatched — not counted | — | listed in scope and storage incompatibility discussion | no |
| omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4 | QuickSwapMultiPositionLiquidityManager | unmatched — not counted | — | listed in scope and storage incompatibility discussion | no |
| omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4 | QuickSwapSinglePositionLiquidityManager | unmatched — not counted | — | listed in scope and storage incompatibility discussion | no |
| omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4 | MultiPositionLiquidityManager | unmatched — not counted | — | listed in scope and storage incompatibility discussion | no |
| omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4 | StakingSingleRewards | unmatched — not counted | — | mentioned as audited staking implementation | no |
| omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4 | StakingDualRewards | unmatched — not counted | — | mentioned as audited staking implementation | no |
| omniscia.io/reports/steer-protocol-algebra-integral-position-manager-smart-rewarder-661909e09ce51e0018065566 | SmartRewardDistributor | unmatched — not counted | — | mentioned as audited module | no |
| omniscia.io/reports/steer-protocol-algebra-integral-position-manager-smart-rewarder-661909e09ce51e0018065566 | IntegralMultiPositionLiquidityManager | unmatched — not counted | — | mentioned as audited module | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | Beacon | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | BeaconManager | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | BundleRegistry | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | BaseLiquidityManager | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | DynamicJobs | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | GasVault | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | InterfaceManager | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | InternalGovernance | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | InternalGovernanceTimelock | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | KeeperRegistry | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | MultiPositionLiquidityManager | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | Orchestrator | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | SteerToken | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | StakingRewards | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | SteerPeriphery | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | SteerGovernance | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | StrategyRegistry | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | SteerGovernanceTimelock | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | SinglePositionLiquidityManager | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | TreasuryVester | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | VaultRegistry | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | WhitelistRegistry | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | WhitelistedMultiLiquidityManager | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | WhitelistedSingleLiquidityManager | unmatched — not counted | — | listed in scope table | no |

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
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 35 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [11688] Steer-Protocol-Smart-Contract-Audit-Report-Final-Report.pdf
- [11689] omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4
- [11690] omniscia.io/reports/steer-protocol-algebra-integral-position-manager-smart-rewarder-661909e09ce51e0018065566
- [11691] omniscia.io/reports/steer-protocol-algebra-strategies-6508231259c40e0014bce243
- [11692] omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f

Fork inheritance lineage and inherited audits are included when available.
