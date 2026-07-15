# Agentic Audit Brief: SoSoValue

## Export Authority

- Production state: **published scope**
- Raw selected rows: 18 across 3 audit(s)
- Eligible audit results: 3 (3 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: SoSoValue (`sosovalue`)
- Website: [https://sosovalue.com/](https://sosovalue.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 7 unique implementations (7 raw deployments)
- Coverage basis: 7/7 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $82,730,032.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SoSoValue. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across base. Structural roles: 11 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: unclassified (11)
- Contract kinds: contract (10), abstract (1)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AssetFeeManager (`0x996c93...d546ba`, chain 8453)
- AssetIssuer (`0xdc74d8...a1ad1d`, chain 8453)
- Swap (`0x640cb7...8bb5e0`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 11 (7 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 7/7 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Deployed-live implementations: 7 of 7 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 7/7
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 100.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 7 | 100.0% | 2024-12 |
| unknown | Tier 2 | 7 | 100.0% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssetFactory | unknown | project_anchor | own_supporting | 1 | base | unit-256304 | `0xb04eb6...c50b0d` | ✅ Audited |
| AssetFeeManager | unknown | project_anchor | own_supporting | 0 | base | unit-256299 | `0x996c93...d546ba` | ✅ Audited |
| AssetIssuer | unknown | project_anchor | own_supporting | 0 | base | unit-256300 | `0xdc74d8...a1ad1d` | ✅ Audited |
| AssetLocking | unknown | project_anchor | own_supporting | 1 | base | unit-256303 | `0x935a4b...839383` | ✅ Audited |
| StakeFactory | unknown | project_anchor | own_supporting | 1 | base | unit-256301 | `0x585834...4e35c1` | ✅ Audited |
| Swap | unknown | project_anchor | own_supporting | 0 | base | unit-256298 | `0x640cb7...8bb5e0` | ✅ Audited |
| USSI | unknown | project_anchor | own_supporting | 1 | base | unit-256302 | `0x3a46ed...d2ed18` | ✅ Audited |

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
| [blocksec_sosovaluelabs_ssi_v1.0-signed.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_sosovaluelabs_ssi_v1.0-signed.pdf) | unknown | Audit | 2024-12 | aging | Direct | n/a | matched | 7 | 4 | 0 | 4 | n/a |
| [SSI Protocol - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SSI%20Protocol%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-07 | stale | Direct | n/a | matched | 4 | 1 | 0 | 3 | n/a |
| [SSI Protocol Phase2 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SSI%20Protocol%20Phase2%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-12 | aging | Direct | n/a | matched | 7 | 4 | 0 | 2 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13865] blocksec_sosovaluelabs_ssi_v1.0-signed.pdf — matched: No reason recorded
- [13866] SSI Protocol - SlowMist Audit Report.pdf — matched: No reason recorded
- [13867] SSI Protocol Phase2 - SlowMist Audit Report.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| blocksec_sosovaluelabs_ssi_v1.0-signed.pdf | AssetController | unmatched — not counted | — | — | no |
| blocksec_sosovaluelabs_ssi_v1.0-signed.pdf | AssetFactory | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xb04eb6...c50b0d` — deployed 2024-12-18 13:21:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_sosovaluelabs_ssi_v1.0-signed.pdf | AssetFeeManager | own contract | AssetFeeManager (selected) `0x996c93...d546ba` — deployed 2024-12-18 13:21:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_sosovaluelabs_ssi_v1.0-signed.pdf | AssetIssuer | own contract | AssetIssuer (selected) `0xdc74d8...a1ad1d` — deployed 2024-12-18 13:21:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_sosovaluelabs_ssi_v1.0-signed.pdf | AssetLocking | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x935a4b...839383` — deployed 2024-12-18 13:21:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_sosovaluelabs_ssi_v1.0-signed.pdf | AssetRebalancer | unmatched — not counted | — | — | no |
| blocksec_sosovaluelabs_ssi_v1.0-signed.pdf | AssetToken | unmatched — not counted | — | — | no |
| blocksec_sosovaluelabs_ssi_v1.0-signed.pdf | StakeFactory | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x585834...4e35c1` — deployed 2024-12-18 13:21:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_sosovaluelabs_ssi_v1.0-signed.pdf | StakeToken | unmatched — not counted | — | — | no |
| blocksec_sosovaluelabs_ssi_v1.0-signed.pdf | Swap | own contract | Swap (selected) `0x640cb7...8bb5e0` — deployed 2024-12-18 13:21:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_sosovaluelabs_ssi_v1.0-signed.pdf | USSI | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x3a46ed...d2ed18` — deployed 2024-12-18 13:21:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SSI Protocol - SlowMist Audit Report.pdf | AssetController | unmatched — not counted | — | — | no |
| SSI Protocol - SlowMist Audit Report.pdf | AssetFactory | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xb04eb6...c50b0d` — deployed 2024-12-18 13:21:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SSI Protocol - SlowMist Audit Report.pdf | AssetFeeManager | own contract | AssetFeeManager (selected) `0x996c93...d546ba` — deployed 2024-12-18 13:21:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SSI Protocol - SlowMist Audit Report.pdf | AssetIssuer | own contract | AssetIssuer (selected) `0xdc74d8...a1ad1d` — deployed 2024-12-18 13:21:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SSI Protocol - SlowMist Audit Report.pdf | AssetRebalancer | unmatched — not counted | — | — | no |
| SSI Protocol - SlowMist Audit Report.pdf | AssetToken | unmatched — not counted | — | — | no |
| SSI Protocol - SlowMist Audit Report.pdf | Swap | own contract | Swap (selected) `0x640cb7...8bb5e0` — deployed 2024-12-18 13:21:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SSI Protocol Phase2 - SlowMist Audit Report.pdf | AssetFactory | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xb04eb6...c50b0d` — deployed 2024-12-18 13:21:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SSI Protocol Phase2 - SlowMist Audit Report.pdf | AssetFeeManager | own contract | AssetFeeManager (selected) `0x996c93...d546ba` — deployed 2024-12-18 13:21:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SSI Protocol Phase2 - SlowMist Audit Report.pdf | AssetIssuer | own contract | AssetIssuer (selected) `0xdc74d8...a1ad1d` — deployed 2024-12-18 13:21:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SSI Protocol Phase2 - SlowMist Audit Report.pdf | AssetLocking | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x935a4b...839383` — deployed 2024-12-18 13:21:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SSI Protocol Phase2 - SlowMist Audit Report.pdf | AssetRebalancer | unmatched — not counted | — | — | no |
| SSI Protocol Phase2 - SlowMist Audit Report.pdf | StakeFactory | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x585834...4e35c1` — deployed 2024-12-18 13:21:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SSI Protocol Phase2 - SlowMist Audit Report.pdf | StakeToken | unmatched — not counted | — | — | no |
| SSI Protocol Phase2 - SlowMist Audit Report.pdf | Swap | own contract | Swap (selected) `0x640cb7...8bb5e0` — deployed 2024-12-18 13:21:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SSI Protocol Phase2 - SlowMist Audit Report.pdf | USSI | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x3a46ed...d2ed18` — deployed 2024-12-18 13:21:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 18 own (9 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 9 unmatched
- Matched-own operational status: 18 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=18

Fork inheritance lineage and inherited audits are included when available.
