# Agentic Audit Brief: EmpMoney

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: EmpMoney (`empmoney`)
- Website: [https://emp.money](https://emp.money)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 18 unique implementations (18 raw deployments)
- Coverage basis: 6/6 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $182,080.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for EmpMoney. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across bsc. Structural roles: 5 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (5), supporting (1)
- Contract kinds: contract (6)
- Detected standards: erc20 (3), ownable (3)
- Frameworks: openzeppelin (6)
- Upgradeable-pattern rows: 0

## Fork Analysis

1 of 18 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

**Emp** (`0x3b248c...dc1d58`, chain 56)
Origin: empmoney (`0x269765...399a10`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1747af...6337d2`, chain 56)
- UnnamedContract (`0x29c55f...59ad92`, chain 56)
- UnnamedContract (`0x50a7ba...63f2d6`, chain 56)
- UnnamedContract (`0x59f521...3bae98`, chain 56)
- UnnamedContract (`0x69ffe1...86a9db`, chain 56)
- UnnamedContract (`0x84821b...22d5e4`, chain 56)
- UnnamedContract (`0xa27c2b...812f97`, chain 56)
- UnnamedContract (`0xa69ac7...3bc5f9`, chain 56)
- UnnamedContract (`0xa9ea52...5b205d`, chain 56)
- UnnamedContract (`0xb530d6...db4e5b`, chain 56)
- UnnamedContract (`0xbf6117...3bf68b`, chain 56)
- UnnamedContract (`0xc1f655...625410`, chain 56)
- Boardroom (`0xe9bace...50942f`, chain 56)
- EBond (`0x7099a1...a5d520`, chain 56)
- EShare (`0xdb20f6...956550`, chain 56)
- EShareRewardPool (`0x97a68a...6235b1`, chain 56)
- Treasury (`0xd3dd99...505bb0`, chain 56)

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 18/18 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/6 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 18 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 18 of 18 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 6/6
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 18
- Raw deployments: 18
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 6 | 100.0% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Boardroom | unknown | project_anchor | own_supporting | 0 | bsc | unit-384223 | `0xe9bace...50942f` | ✅ Audited |
| EBond | unknown | project_anchor | own_supporting | 0 | bsc | unit-384212 | `0x7099a1...a5d520` | ✅ Audited |
| Emp | unknown | project_anchor | own_supporting | 0 | bsc | unit-384208 | `0x3b248c...dc1d58` | ✅ Audited |
| EShare | unknown | project_anchor | own_supporting | 0 | bsc | unit-384222 | `0xdb20f6...956550` | ✅ Audited |
| EShareRewardPool | core_logic | project_anchor | own_supporting | 0 | bsc | unit-384214 | `0x97a68a...6235b1` | ✅ Audited |
| Treasury | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-384221 | `0xd3dd99...505bb0` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384206 | `0x1747af...6337d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384207 | `0x29c55f...59ad92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384209 | `0x50a7ba...63f2d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384210 | `0x59f521...3bae98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384211 | `0x69ffe1...86a9db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384213 | `0x84821b...22d5e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384215 | `0xa27c2b...812f97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384216 | `0xa69ac7...3bc5f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384217 | `0xa9ea52...5b205d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384218 | `0xb530d6...db4e5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384219 | `0xbf6117...3bf68b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384220 | `0xc1f655...625410` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [EMP-Money_final-audit-report.pdf](https://github.com/0xGuard-com/audit-reports/blob/master/emp-money/EMP-Money_final-audit-report.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | matched | 6 | 0 | 0 | 7 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13082] EMP-Money_final-audit-report.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| EMP-Money_final-audit-report.pdf | Boardroom | own contract | Boardroom (selected) `0xe9bace...50942f` — deployed 2022-01-22 02:10:18+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| EMP-Money_final-audit-report.pdf | EBond | own contract | EBond (selected) `0x7099a1...a5d520` — deployed 2022-01-18 00:47:42+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| EMP-Money_final-audit-report.pdf | EShare | own contract | EShare (selected) `0xdb20f6...956550` — deployed 2022-01-18 00:47:03+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| EMP-Money_final-audit-report.pdf | EShareRewardPool | own contract | EShareRewardPool (selected) `0x97a68a...6235b1` — deployed 2022-01-18 00:48:18+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| EMP-Money_final-audit-report.pdf | Emp | own contract | Emp (selected) `0x3b248c...dc1d58` — deployed 2022-01-18 00:46:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| EMP-Money_final-audit-report.pdf | EmpGenesisRewardPool | unmatched — not counted | — | — | no |
| EMP-Money_final-audit-report.pdf | EmpRewardPool | unmatched — not counted | — | — | no |
| EMP-Money_final-audit-report.pdf | Oracle | unmatched — not counted | — | — | no |
| EMP-Money_final-audit-report.pdf | TaxOffice | unmatched — not counted | — | — | no |
| EMP-Money_final-audit-report.pdf | TaxOfficeV2 | unmatched — not counted | — | — | no |
| EMP-Money_final-audit-report.pdf | TaxOracle | unmatched — not counted | — | — | no |
| EMP-Money_final-audit-report.pdf | Treasury | own contract | Treasury (selected) `0xd3dd99...505bb0` — deployed 2022-01-22 02:10:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| EMP-Money_final-audit-report.pdf | Zapper | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 7 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=6

Fork inheritance lineage and inherited audits are included when available.
