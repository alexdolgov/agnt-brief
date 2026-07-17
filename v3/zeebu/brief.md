# Agentic Audit Brief: Zeebu

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Zeebu (`zeebu`)
- Website: [https://www.zeebu.com/](https://www.zeebu.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, bsc, ethereum
- Contract surface: 5 unique implementations (7 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $4,272,577.26
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Zeebu in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2c8c89c442436cc6c0a77943e09c8daf49da3161`, chain 1)
- UnnamedContract (`0x2c8c89c442436cc6c0a77943e09c8daf49da3161`, chain 56)
- UnnamedContract (`0x2c8c89c442436cc6c0a77943e09c8daf49da3161`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 3 of 5 unique; 2 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 5
- Raw deployments: 7
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
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
| Voting Escrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0x8e76cdf3b14c540ab54afa7f8492ac1d16ecfb35`; base `0x45dd22ace398002b34cb37b363b2f02c7dd47842`; base `0xcf08d1ec5d8e566d95299399307f75f98d6aea03` | ⚠️ Unaudited |
| WeightedPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc3889f9764d68bdf2e16f237206746344172a147` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397841 | `0x2c8c89c442436cc6c0a77943e09c8daf49da3161` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397843 | `0x2c8c89c442436cc6c0a77943e09c8daf49da3161` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-397845 | `0x2c8c89c442436cc6c0a77943e09c8daf49da3161` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [OZ Final Report.pdf](https://github.com/TechnologyZeebu/Zeebu-Protocol-Audit-V1.0/blob/main/OZ%20Final%20Report.pdf) | OpenZeppelin | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [TOB final report.pdf](https://github.com/TechnologyZeebu/Zeebu-Protocol-Audit-V1.0/blob/main/TOB%20final%20report.pdf) | Trail of Bits | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Zeebu_Certora_report v2.pdf](https://github.com/TechnologyZeebu/Zeebu-Protocol-Audit-V1.0/blob/main/Zeebu_Certora_report%20v2.pdf) | Certora | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2440] OZ Final Report.pdf — no match: Scope section explicitly lists files in two repositories. Contract names extracted from file paths.
- [2441] TOB final report.pdf — no match: Extracted contract names from project targets and findings. Audit date from cover page.
- [2442] Zeebu_Certora_report v2.pdf — no match: Scope section lists 5 contracts: Launchpad.vy, Lens.sol, RewardDistributor.sol, ZeebuToken.sol, VotingEscrow.vy. Audit date from cover page: 'Feb 2025' -> last day of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| OZ Final Report.pdf | rate | unmatched — not counted | — | listed in scope | no |
| OZ Final Report.pdf | ReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| OZ Final Report.pdf | referral | unmatched — not counted | — | listed in scope | no |
| OZ Final Report.pdf | UserWaitList | unmatched — not counted | — | listed in scope | no |
| OZ Final Report.pdf | Launchpad | unmatched — not counted | — | listed in scope | no |
| OZ Final Report.pdf | Lens | unmatched — not counted | — | listed in scope | no |
| OZ Final Report.pdf | RewardDistributor | unmatched — not counted | — | listed in scope | no |
| OZ Final Report.pdf | VotingEscrow | unmatched — not counted | — | listed in scope | no |
| TOB final report.pdf | VotingEscrow | unmatched — not counted | — | mentioned as a contract in the Zeebu-contracts-testnet repo, forked from Curve/Balancer | no |
| TOB final report.pdf | Launchpad | unmatched — not counted | — | mentioned as a contract that is mocked in tests | no |
| TOB final report.pdf | SmartWalletWhitelist | unmatched — not counted | — | mentioned in fix review for TOB-ZEEB-2 | no |
| TOB final report.pdf | UserWaitList | unmatched — not counted | — | mentioned as a contract in the Waitlist-testnet repo, and in findings TOB-ZEEB-13 | no |
| Zeebu_Certora_report v2.pdf | Launchpad | unmatched — not counted | — | listed in scope | no |
| Zeebu_Certora_report v2.pdf | Lens | unmatched — not counted | — | listed in scope | no |
| Zeebu_Certora_report v2.pdf | RewardDistributor | unmatched — not counted | — | listed in scope | no |
| Zeebu_Certora_report v2.pdf | ZeebuToken | unmatched — not counted | — | listed in scope | no |
| Zeebu_Certora_report v2.pdf | VotingEscrow | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 17 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [2440] OZ Final Report.pdf
- [2441] TOB final report.pdf
- [2442] Zeebu_Certora_report v2.pdf

Fork inheritance lineage and inherited audits are included when available.
