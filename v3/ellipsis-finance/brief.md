# Agentic Audit Brief: Ellipsis Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Ellipsis Finance (`ellipsis-finance`)
- Website: [https://ellipsis.finance/](https://ellipsis.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 5 unique implementations (5 raw deployments)
- Coverage basis: 2/5 confirmed own live verified implementations (40.0%); conservative 40.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,070,786.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ellipsis Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across bsc. Structural roles: 4 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (4), supporting (1)
- Contract kinds: contract (5)
- Detected standards: ownable (2), erc20 (1)
- Frameworks: openzeppelin (5)
- Upgradeable-pattern rows: 0

## Fork Analysis

2 of 5 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

**IncentiveVoting** (`0x4695e5...9bb06a`, chain 56)
Origin: dot-dot-finance (`0x4695e5...9bb06a`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenLocker** (`0x22a93f...a49aae`, chain 56)
Origin: dot-dot-finance (`0x22a93f...a49aae`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- EllipsisLpStaking (`0x5b74c9...8dfdbe`, chain 56)
- EllipsisToken2 (`0xaf4105...ce9d71`, chain 56)
- FeeDistributor (`0x3670c1...17ee1b`, chain 56)

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/5 (40.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/5
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 40.0% | 2022-03 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EllipsisToken2 | token | project_anchor | own_supporting | 0 | bsc | unit-384177 | `0xaf4105...ce9d71` | ✅ Audited |
| IncentiveVoting | unknown | project_anchor | own_supporting | 0 | bsc | unit-384175 | `0x4695e5...9bb06a` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EllipsisLpStaking | unknown | project_anchor | own_supporting | 0 | bsc | unit-384176 | `0x5b74c9...8dfdbe` | ⚠️ Unaudited |
| FeeDistributor | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-384174 | `0x3670c1...17ee1b` | ⚠️ Unaudited |
| TokenLocker | token | project_anchor | own_supporting | 0 | bsc | unit-384173 | `0x22a93f...a49aae` | ⚠️ Unaudited |

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
| [010421_Hacken_Ellipsis_SC_Audit_Report.pdf](https://github.com/ellipsis-finance/ellipsis-audits/blob/master/010421_Hacken_Ellipsis_SC_Audit_Report.pdf) | Hacken | Audit | 2021-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [PeckShield-Audit-Report-EllipsisV2Staking-v1.0.pdf](https://github.com/ellipsis-finance/ellipsis-audits/blob/master/PeckShield-Audit-Report-EllipsisV2Staking-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | n/a | matched | 2 | 0 | 0 | 1 | n/a |
| [www.curve.finance/audits](https://www.curve.finance/audits) | Curve Finance | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3131] 010421_Hacken_Ellipsis_SC_Audit_Report.pdf — no match: No reason recorded
- [3132] PeckShield-Audit-Report-EllipsisV2Staking-v1.0.pdf — matched: No reason recorded
- [11900] www.curve.finance/audits — no match: Only the name 'Curve' appears in the title; no scope section or file paths found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 010421_Hacken_Ellipsis_SC_Audit_Report.pdf | EpsStaker | unmatched — not counted | — | — | no |
| 010421_Hacken_Ellipsis_SC_Audit_Report.pdf | FeeConverter | unmatched — not counted | — | — | no |
| 010421_Hacken_Ellipsis_SC_Audit_Report.pdf | LpTokenStaker | unmatched — not counted | — | — | no |
| 010421_Hacken_Ellipsis_SC_Audit_Report.pdf | MerkleDistributor | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-EllipsisV2Staking-v1.0.pdf | EllipsisToken2 | own contract | EllipsisToken2 (selected) `0xaf4105...ce9d71` — deployed 2022-03-30 22:43:24+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-EllipsisV2Staking-v1.0.pdf | IncentiveVoting | own contract | IncentiveVoting (selected) `0x4695e5...9bb06a` — deployed 2022-04-12 03:20:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-EllipsisV2Staking-v1.0.pdf | LPStaking | unmatched — not counted | — | — | no |
| www.curve.finance/audits | Curve | unmatched — not counted | — | title | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x5b74c9...8dfdbe` | EllipsisLpStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3670c1...17ee1b` | FeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x22a93f...a49aae` | TokenLocker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: unique_name=2

Zero-match audit list:

- [3131] 010421_Hacken_Ellipsis_SC_Audit_Report.pdf
- [11900] www.curve.finance/audits

Fork inheritance lineage and inherited audits are included when available.
