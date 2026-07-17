# Agentic Audit Brief: BitU Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: BitU Protocol (`bitu-protocol`)
- Website: [https://www.bitu.io](https://www.bitu.io)
- Lifecycle: active (Tier 0, 44.1% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 5 unique implementations (5 raw deployments)
- Coverage basis: 3/3 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $19,547,798.50
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for BitU Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across bsc. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: accesscontrol (2), erc165 (2), erc20 (2), erc20permit (2), erc4626 (1), ownable (1), ownable2step (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BITU (`0x654a32542a84bea7d2c2c1a1ed1aaaf26888e6bd`, chain 56)
- BitUMinting (`0xa581b5b3d007dab450943749e29a677a0d116f18`, chain 56)
- BitUStaking (`0x61183a27ab5fdacc4d46f5af9eb9e6a93afd76d4`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/3 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 3 of 5 unique; 2 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/5
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 100.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 3 | 60.0% | 2024-04 |
| unknown | Tier 2 | 3 | 60.0% | 2024-05 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BITU | unknown | project_anchor | own_supporting | 0 | bsc | unit-380627 | `0x654a32542a84bea7d2c2c1a1ed1aaaf26888e6bd` | ✅ Audited |
| BitUMinting | unknown | project_anchor | own_supporting | 0 | bsc | unit-380628 | `0xa581b5b3d007dab450943749e29a677a0d116f18` | ✅ Audited |
| BitUStaking | unknown | project_anchor | own_supporting | 0 | bsc | unit-380626 | `0x61183a27ab5fdacc4d46f5af9eb9e6a93afd76d4` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BEP20LINK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd` | ⚠️ Unaudited |
| BEP20USDT | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x55d398326f99059ff775485246999027b3197955` | ⚠️ Unaudited |

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
| [spaces/j4FiwL05RDG9vbiK6wKb/uploads/5zJ9iSaosjkSWbY1Alkz/SlowMist Audit Report - BitU527.pdf](https://216194945-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fj4FiwL05RDG9vbiK6wKb%2Fuploads%2F5zJ9iSaosjkSWbY1Alkz%2FSlowMist%20Audit%20Report%20-%20BitU527.pdf) | SlowMist | Audit | 2024-04 | stale | Direct | n/a | matched | 3 | 0 | 0 | 5 | n/a |
| [spaces/j4FiwL05RDG9vbiK6wKb/uploads/x0qHqp82jMYKIQkLrwRp/BitU_audit_report_2024-05-27.pdf](https://216194945-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fj4FiwL05RDG9vbiK6wKb%2Fuploads%2Fx0qHqp82jMYKIQkLrwRp%2FBitU_audit_report_2024-05-27.pdf) | unknown | Audit | 2024-05 | stale | Direct | n/a | matched | 3 | 0 | 0 | 3 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11487] spaces/j4FiwL05RDG9vbiK6wKb/uploads/5zJ9iSaosjkSWbY1Alkz/SlowMist Audit Report - BitU527.pdf — matched: No reason recorded
- [11488] spaces/j4FiwL05RDG9vbiK6wKb/uploads/x0qHqp82jMYKIQkLrwRp/BitU_audit_report_2024-05-27.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/j4FiwL05RDG9vbiK6wKb/uploads/5zJ9iSaosjkSWbY1Alkz/SlowMist Audit Report - BitU527.pdf | BITU | own contract | BITU (selected) `0x654a32542a84bea7d2c2c1a1ed1aaaf26888e6bd` — deployed 2024-05-25 09:36:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/j4FiwL05RDG9vbiK6wKb/uploads/5zJ9iSaosjkSWbY1Alkz/SlowMist Audit Report - BitU527.pdf | BITUVault | unmatched — not counted | — | — | no |
| spaces/j4FiwL05RDG9vbiK6wKb/uploads/5zJ9iSaosjkSWbY1Alkz/SlowMist Audit Report - BitU527.pdf | BitUMinting | own contract | BitUMinting (selected) `0xa581b5b3d007dab450943749e29a677a0d116f18` — deployed 2024-05-25 10:00:44+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/j4FiwL05RDG9vbiK6wKb/uploads/5zJ9iSaosjkSWbY1Alkz/SlowMist Audit Report - BitU527.pdf | BitUStaking | own contract | BitUStaking (selected) `0x61183a27ab5fdacc4d46f5af9eb9e6a93afd76d4` — deployed 2024-05-25 10:04:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/j4FiwL05RDG9vbiK6wKb/uploads/5zJ9iSaosjkSWbY1Alkz/SlowMist Audit Report - BitU527.pdf | IBITU | unmatched — not counted | — | — | no |
| spaces/j4FiwL05RDG9vbiK6wKb/uploads/5zJ9iSaosjkSWbY1Alkz/SlowMist Audit Report - BitU527.pdf | IStakedBITUCooldown | unmatched — not counted | — | — | no |
| spaces/j4FiwL05RDG9vbiK6wKb/uploads/5zJ9iSaosjkSWbY1Alkz/SlowMist Audit Report - BitU527.pdf | SingleAdminAccessControl | unmatched — not counted | — | — | no |
| spaces/j4FiwL05RDG9vbiK6wKb/uploads/5zJ9iSaosjkSWbY1Alkz/SlowMist Audit Report - BitU527.pdf | StakedBITU | unmatched — not counted | — | — | no |
| spaces/j4FiwL05RDG9vbiK6wKb/uploads/x0qHqp82jMYKIQkLrwRp/BitU_audit_report_2024-05-27.pdf | BITU.sol | own contract | BITU (selected) `0x654a32542a84bea7d2c2c1a1ed1aaaf26888e6bd` — deployed 2024-05-25 09:36:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/j4FiwL05RDG9vbiK6wKb/uploads/x0qHqp82jMYKIQkLrwRp/BitU_audit_report_2024-05-27.pdf | BITUVault.sol | unmatched — not counted | — | — | no |
| spaces/j4FiwL05RDG9vbiK6wKb/uploads/x0qHqp82jMYKIQkLrwRp/BitU_audit_report_2024-05-27.pdf | BitUMinting.sol | own contract | BitUMinting (selected) `0xa581b5b3d007dab450943749e29a677a0d116f18` — deployed 2024-05-25 10:00:44+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/j4FiwL05RDG9vbiK6wKb/uploads/x0qHqp82jMYKIQkLrwRp/BitU_audit_report_2024-05-27.pdf | BitUStaking.sol | own contract | BitUStaking (selected) `0x61183a27ab5fdacc4d46f5af9eb9e6a93afd76d4` — deployed 2024-05-25 10:04:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/j4FiwL05RDG9vbiK6wKb/uploads/x0qHqp82jMYKIQkLrwRp/BitU_audit_report_2024-05-27.pdf | SingleAdminAccessControl.sol | unmatched — not counted | — | — | no |
| spaces/j4FiwL05RDG9vbiK6wKb/uploads/x0qHqp82jMYKIQkLrwRp/BitU_audit_report_2024-05-27.pdf | StakedBITU.sol | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 8 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=6

Fork inheritance lineage and inherited audits are included when available.
