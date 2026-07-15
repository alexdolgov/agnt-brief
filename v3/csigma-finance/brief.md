# Agentic Audit Brief: cSigma Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: cSigma Finance (`csigma-finance`)
- Website: [https://csigma.finance](https://csigma.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $12,657,681.42
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for cSigma Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum. Structural roles: 2 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: unclassified (2)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (1 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 1 of 1 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/1
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| QuillAudits | Tier 2 | 1 | 100.0% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Sigma | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234584 | `0x53162e...72c8db` | ✅ Audited |

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
| [cSigma Edge Audit Report - QuillAudits.pdf](https://github.com/csigma-labs/audit-reports/blob/main/cSigma%20Edge%20Audit%20Report%20-%20QuillAudits.pdf) | QuillAudits | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 9 | n/a |
| [cSigma Institutional Audit Report - Immunebytes.pdf](https://github.com/csigma-labs/audit-reports/blob/main/cSigma%20Institutional%20Audit%20Report%20-%20Immunebytes.pdf) | Immunebytes | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 16 | n/a |
| [cSigma Token Audit Report - QuillAudits.pdf](https://github.com/csigma-labs/audit-reports/blob/main/cSigma%20Token%20Audit%20Report%20-%20QuillAudits.pdf) | QuillAudits | Audit | 2024-11 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 0 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2028] cSigma Edge Audit Report - QuillAudits.pdf — no match: No reason recorded
- [2029] cSigma Institutional Audit Report - Immunebytes.pdf — no match: No reason recorded
- [2030] cSigma Token Audit Report - QuillAudits.pdf — matched: Only one contract (Sigma) is in scope. Audit date inferred from 'November, 2024' on cover and 'First Review 14th November 2024' - using end of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| cSigma Edge Audit Report - QuillAudits.pdf | CsigmaV2FundManager | unmatched — not counted | — | — | no |
| cSigma Edge Audit Report - QuillAudits.pdf | CsigmaV2Pool | unmatched — not counted | — | — | no |
| cSigma Edge Audit Report - QuillAudits.pdf | CsigmaV2StakingPool | unmatched — not counted | — | — | no |
| cSigma Edge Audit Report - QuillAudits.pdf | CsigmaV2StakingPoolExtension | unmatched — not counted | — | — | no |
| cSigma Edge Audit Report - QuillAudits.pdf | Factory | unmatched — not counted | — | — | no |
| cSigma Edge Audit Report - QuillAudits.pdf | Fund manager | unmatched — not counted | — | — | no |
| cSigma Edge Audit Report - QuillAudits.pdf | Pool | unmatched — not counted | — | — | no |
| cSigma Edge Audit Report - QuillAudits.pdf | Staking pool | unmatched — not counted | — | — | no |
| cSigma Edge Audit Report - QuillAudits.pdf | Staking pool extension | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | AccessControlFacet | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | AccessControlLib | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | CreditPoolFacet | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | DiamondCutFacet | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | DiamondLoupeFacet | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | DistributeExtension | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | DistributeState | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | LenderFacet | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | MetadataFacet | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | OwnershipFacet | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | PaymentFacet | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | PoolManagerFacet | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | PoolManagerLib | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | StableCoinExtension | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | VaultFacet | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | VaultLib | unmatched — not counted | — | — | no |
| cSigma Token Audit Report - QuillAudits.pdf | Sigma | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x53162e...72c8db` — deployed 2024-07-04 15:11:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 25 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=1

Zero-match audit list:

- [2028] cSigma Edge Audit Report - QuillAudits.pdf
- [2029] cSigma Institutional Audit Report - Immunebytes.pdf

Fork inheritance lineage and inherited audits are included when available.
