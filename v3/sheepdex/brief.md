# Agentic Audit Brief: SheepDex

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: SheepDex (`sheepdex`)
- Website: [https://sheepdex.org/](https://sheepdex.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
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

- SPCToken (`0x6a428ff9bfec2c8f676b8c905d49146c6106af90`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 15 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 16 unique; 15 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/16
- Verified + Unaudited implementations: 15
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
| PeckShield | Tier 2 | 1 | 6.3% | 2021-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SPCToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-392401 | `0x6a428ff9bfec2c8f676b8c905d49146c6106af90` | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FactoryTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41d534cc6c03a05b539e0fefca5b31846b8f4201` | ⚠️ Unaudited |
| MigrationToken2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x102ddeb4cfa109b88cc7794e3299da49fe0947f9` | ⚠️ Unaudited |
| NFTPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x199ddb7b7b85f57832fdc081604405a0f3b1ca8b` | ⚠️ Unaudited |
| Operatable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e0dbd3bd77559db7b7b6c8a4da5411a6d3eceaa` | ⚠️ Unaudited |
| PositionReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x542bb4c30059dec4a9dff9533e901ef6cd84b7da` | ⚠️ Unaudited |
| PositionView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0052afdcf83e66ffcde46b96ebd56163ed56cde` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x265d79926f406b97887bb3edc59db66e07f17d51` | ⚠️ Unaudited |
| SpcDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17fa4d6c9e34d4a5c9e331b7925bd49980851bed` | ⚠️ Unaudited |
| SPCTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a3a8df6bf63a505fada1bca5710e20325a989ff` | ⚠️ Unaudited |
| SpeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x571521f8c16f3c4ed5f2490f19187ba7a5a3cbdf` | ⚠️ Unaudited |
| SwapDirector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82c0c5c2722d511205d1a290490ebaf9940941e5` | ⚠️ Unaudited |
| SwapMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58469aee3436a000698d0a8e648f5d14f31ee019` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48886f3cfa0c7bca0672bbfa4bee5d6d63dad319` | ⚠️ Unaudited |
| TestCall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0235d8b9f6e5c4f85ed93ba6a09512ad9a5e7ea6` | ⚠️ Unaudited |
| vSpcToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d52d502a1526ecd49744610f9461b4c69950c3f` | ⚠️ Unaudited |

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
| PeckShield-Audit-Report-SheepDEX-v1.0.pdf | SPCToken | own contract | SPCToken (selected) `0x6a428ff9bfec2c8f676b8c905d49146c6106af90` — deployed 2021-12-23 11:36:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
