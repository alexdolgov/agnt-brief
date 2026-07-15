# Agentic Audit Brief: SheepDex

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: SheepDex (`sheepdex`)
- Website: [https://sheepdex.org/](https://sheepdex.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 16 unique implementations (16 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $372,735.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for SheepDex. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- SPCToken (`0x6a428f...06af90`, chain 56)

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 15 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 1 of 16 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/1
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 16
- Raw deployments: 16
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 100.0% | 2021-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SPCToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-392401 | `0x6a428f...06af90` | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FactoryTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41d534...8f4201` | ⚠️ Unaudited |
| MigrationToken2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x102dde...0947f9` | ⚠️ Unaudited |
| NFTPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x199ddb...b1ca8b` | ⚠️ Unaudited |
| Operatable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e0dbd...3eceaa` | ⚠️ Unaudited |
| PositionReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x542bb4...84b7da` | ⚠️ Unaudited |
| PositionView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0052a...d56cde` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x265d79...f17d51` | ⚠️ Unaudited |
| SpcDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17fa4d...851bed` | ⚠️ Unaudited |
| SPCTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a3a8d...a989ff` | ⚠️ Unaudited |
| SpeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x571521...a3cbdf` | ⚠️ Unaudited |
| SwapDirector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82c0c5...0941e5` | ⚠️ Unaudited |
| SwapMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58469a...1ee019` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48886f...dad319` | ⚠️ Unaudited |
| TestCall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0235d8...5e7ea6` | ⚠️ Unaudited |
| vSpcToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d52d5...950c3f` | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-SheepDEX-v1.0.pdf (also discovered via alternate URL)](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SheepDEX-v1.0.pdf) | PeckShield | Audit | 2021-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [skynet.certik.com/projects/sheepdex](https://skynet.certik.com/projects/sheepdex) | CertiK | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21439] PeckShield-Audit-Report-SheepDEX-v1.0.pdf — matched: Audit report explicitly lists contracts in scope: SwapMining, PositionReward, TokenReward, SPCTimeLock, SPCToken, SwapRouter. RewardPool is explicitly excluded. Audit date is November 4, 2021 from cover page.
- [21441] skynet.certik.com/projects/sheepdex — no match: Extracted from Audited Files section; date from 'Last Audit was delivered on 1/5/2022' and 'Revised on 1/5/2022'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-SheepDEX-v1.0.pdf | SwapMining | unmatched — not counted | — | Listed in scope description and findings (PVE-001, PVE-007) | no |
| PeckShield-Audit-Report-SheepDEX-v1.0.pdf | PositionReward | unmatched — not counted | — | Listed in scope description and findings (PVE-001, PVE-004, PVE-005, PVE-007) | no |
| PeckShield-Audit-Report-SheepDEX-v1.0.pdf | TokenReward | unmatched — not counted | — | Listed in scope description and findings (PVE-001, PVE-006, PVE-007) | no |
| PeckShield-Audit-Report-SheepDEX-v1.0.pdf | SPCTimeLock | unmatched — not counted | — | Listed in findings (PVE-002, PVE-007) | no |
| PeckShield-Audit-Report-SheepDEX-v1.0.pdf | SPCToken | own contract | SPCToken (selected) `0x6a428f...06af90` — deployed 2021-12-23 11:36:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-SheepDEX-v1.0.pdf | SwapRouter | unmatched — not counted | — | Listed in findings (PVE-007) | no |
| skynet.certik.com/projects/sheepdex | DelegateERC20 | unmatched — not counted | — | listed in Audited Files section | no |
| skynet.certik.com/projects/sheepdex | SpcDAO | unmatched — not counted | — | listed in Audited Files section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 7 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=2

Zero-match audit list:

- [21441] skynet.certik.com/projects/sheepdex

Fork inheritance lineage and inherited audits are included when available.
