# Agentic Audit Brief: DefiPlaza

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 4 (1 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: DefiPlaza (`defiplaza`)
- Website: [https://defiplaza.net/](https://defiplaza.net/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $105,356.18
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for DefiPlaza. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum. Structural roles: 1 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), unclassified (1)
- Contract kinds: contract (2)
- Detected standards: erc20 (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- DFPgov (`0x2f5743...1b8e6d`, chain 1)

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 2 of 2 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 50.0% | 2021-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DeFiPlaza | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383705 | `0xe68c1d...514110` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DFPgov | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383704 | `0x2f5743...1b8e6d` | ⚠️ Unaudited |

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
| [DeFi Plaza Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/main/DeFi%20Plaza%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2021-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [StablePlaza Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/main/StablePlaza%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [DefiPlaza Radix Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/b886ee548241bc8066843ab110287058ff33ba4f/DefiPlaza%20Radix%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [251125_radixplaza_mathematical-verification.pdf](https://github.com/OmegaSyndicate/RadixPlaza/blob/e6f9f6bd06bfdc3d1ed40f3ae921104197e43531/docs/251125_radixplaza_mathematical-verification.pdf) | OmegaSyndicate | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13006] DeFi Plaza Security Analysis by Pessimistic.pdf — matched: Scope explicitly lists DeFiPlaza.sol and DFPgovernance.sol. Audit date from publication date.
- [13007] StablePlaza Security Analysis by Pessimistic.pdf — no match: Only one contract name (StablePlaza) is explicitly mentioned as the audited contract. No file paths or other contract names are provided.
- [13008] DefiPlaza Radix Security Analysis by Pessimistic.pdf — no match: Scope explicitly listed four source files: src/pair.rs, src/helpers.rs, src/curves.rs, src/dex.rs. Audit date from cover page and final page.
- [13009] 251125_radixplaza_mathematical-verification.pdf — no match: Extracted contract names from the core implementation files listed in the methodology section and the addendum. The audit date is from the document header.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DeFi Plaza Security Analysis by Pessimistic.pdf | DeFiPlaza | own contract | DeFiPlaza (selected) `0xe68c1d...514110` — deployed 2021-10-03 16:55:06+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DeFi Plaza Security Analysis by Pessimistic.pdf | DFPgovernance | unmatched — not counted | — | listed in scope | no |
| StablePlaza Security Analysis by Pessimistic.pdf | StablePlaza | unmatched — not counted | — | mentioned throughout the report as the main contract | no |
| DefiPlaza Radix Security Analysis by Pessimistic.pdf | pair | unmatched — not counted | — | listed in scope | no |
| DefiPlaza Radix Security Analysis by Pessimistic.pdf | helpers | unmatched — not counted | — | listed in scope | no |
| DefiPlaza Radix Security Analysis by Pessimistic.pdf | curves | unmatched — not counted | — | listed in scope | no |
| DefiPlaza Radix Security Analysis by Pessimistic.pdf | dex | unmatched — not counted | — | listed in scope | no |
| 251125_radixplaza_mathematical-verification.pdf | pair | unmatched — not counted | — | listed in scope as core implementation file | no |
| 251125_radixplaza_mathematical-verification.pdf | curves | unmatched — not counted | — | listed in scope as core implementation file | no |
| 251125_radixplaza_mathematical-verification.pdf | types | unmatched — not counted | — | listed in scope as core implementation file | no |
| 251125_radixplaza_mathematical-verification.pdf | stablepair | unmatched — not counted | — | mentioned in addendum as part of StableCALM implementation | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x2f5743...1b8e6d` | DFPgov | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 10 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, medium=1
- Match method counts: unique_name=1

Zero-match audit list:

- [13007] StablePlaza Security Analysis by Pessimistic.pdf
- [13008] DefiPlaza Radix Security Analysis by Pessimistic.pdf
- [13009] 251125_radixplaza_mathematical-verification.pdf

Fork inheritance lineage and inherited audits are included when available.
