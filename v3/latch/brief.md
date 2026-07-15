# Agentic Audit Brief: Latch

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

- Project: Latch (`latch`)
- Website: [https://savings.latch.io/](https://savings.latch.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,552,461.96
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Latch. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across ethereum. Structural roles: 2 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (2), supporting (1)
- Contract kinds: contract (3)
- Detected standards: ownable (2), ownable2step (2), pausable (2)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- GnosisSafeProxy (`0x774388...4562e7`, chain 1)
- StakingPool (`0x29403b...119b95`, chain 1)
- StakingPool (`0x899f88...d3245b`, chain 1)

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 3 of 5 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-244518 | `0x774388...4562e7` | ⚠️ Unaudited |
| StakingPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-244516 | `0x29403b...119b95` | ⚠️ Unaudited |
| StakingPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-244517 | `0x899f88...d3245b` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc314b8...748bad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4af68...97f58d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Latch - SmartSavings - SlowMist Audit Report.pdf](https://1701983824-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FIGuGSFluXTKk154QgK0V%2Fuploads%2FlaOJpIXpYQKR4iYk70Ud%2FLatch%20-%20SmartSavings%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [Latch - StakingPool - SlowMist Audit Report.pdf](https://1701983824-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FIGuGSFluXTKk154QgK0V%2Fuploads%2FIoFGYLwRiZjAvu3cazuS%2FLatch%20-%20StakingPool%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [24109] Latch - SmartSavings - SlowMist Audit Report.pdf — no match: Extracted contracts from scope description and findings. Audit date from audit result table: 2024.08.20 - 2024.09.03, using end date.
- [24110] Latch - StakingPool - SlowMist Audit Report.pdf — no match: Audit scope explicitly stated as ./contracts/stakingPool/*.sol. Contracts listed in 4.1 Contracts Description and 4.2 Visibility Description. Audit date from 5 Audit Result: 2024.12.09 - 2024.12.13, using end date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Latch - SmartSavings - SlowMist Audit Report.pdf | DepositPool | unmatched — not counted | — | listed in scope and findings | no |
| Latch - SmartSavings - SlowMist Audit Report.pdf | LSDSwap | unmatched — not counted | — | listed in scope and findings | no |
| Latch - SmartSavings - SlowMist Audit Report.pdf | LSDSwapWithCamelotswap | unmatched — not counted | — | listed in scope and findings | no |
| Latch - SmartSavings - SlowMist Audit Report.pdf | LSDSwapWithPancakeswap | unmatched — not counted | — | listed in scope and findings | no |
| Latch - SmartSavings - SlowMist Audit Report.pdf | LSDSwapWithUniswap | unmatched — not counted | — | listed in scope and findings | no |
| Latch - SmartSavings - SlowMist Audit Report.pdf | SmartSavings | unmatched — not counted | — | listed in scope and findings | no |
| Latch - SmartSavings - SlowMist Audit Report.pdf | AirdropEtherHook | unmatched — not counted | — | listed in scope and findings (contract name AirdropEtherHook used in findings) | no |
| Latch - SmartSavings - SlowMist Audit Report.pdf | StargateHelper | unmatched — not counted | — | listed in scope and findings | no |
| Latch - SmartSavings - SlowMist Audit Report.pdf | NavUpdater | unmatched — not counted | — | listed in scope and findings | no |
| Latch - SmartSavings - SlowMist Audit Report.pdf | VaultNav | unmatched — not counted | — | listed in scope and findings | no |
| Latch - SmartSavings - SlowMist Audit Report.pdf | WithdrawRequest | unmatched — not counted | — | listed in scope and findings | no |
| Latch - SmartSavings - SlowMist Audit Report.pdf | WithdrawPool | unmatched — not counted | — | listed in scope and findings | no |
| Latch - SmartSavings - SlowMist Audit Report.pdf | LSDToken | unmatched — not counted | — | listed in scope | no |
| Latch - SmartSavings - SlowMist Audit Report.pdf | message-lib | unmatched — not counted | — | listed in scope | no |
| Latch - SmartSavings - SlowMist Audit Report.pdf | AfterDepositHook | unmatched — not counted | — | listed in scope and findings | no |
| Latch - StakingPool - SlowMist Audit Report.pdf | StakingPool | ambiguous — not counted | StakingPool (alternative) `0x29403b...119b95` — deployed 2024-12-19 11:01:47+03 — liveness: live (current_address_book_code)<br>StakingPool (alternative) `0x899f88...d3245b` — deployed 2024-12-19 11:01:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Latch - StakingPool - SlowMist Audit Report.pdf | StakingExecutorEETH | unmatched — not counted | — | listed in scope and described in contracts description | no |
| Latch - StakingPool - SlowMist Audit Report.pdf | StakingExecutorSUSDE | unmatched — not counted | — | listed in scope and described in contracts description | no |
| Latch - StakingPool - SlowMist Audit Report.pdf | SUSDEWithdrawer | unmatched — not counted | — | listed in scope and described in contracts description | no |
| Latch - StakingPool - SlowMist Audit Report.pdf | RedemptionFulfiller | unmatched — not counted | — | listed in scope and described in contracts description | no |
| Latch - StakingPool - SlowMist Audit Report.pdf | StakingPoolChild | unmatched — not counted | — | listed in scope and described in contracts description | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x29403b...119b95` | StakingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x899f88...d3245b` | StakingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 20 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [24109] Latch - SmartSavings - SlowMist Audit Report.pdf
- [24110] Latch - StakingPool - SlowMist Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
