# Agentic Audit Brief: GoldFinger

## Export Authority

- Production state: **published scope**
- Raw selected rows: 20 across 8 audit(s)
- Eligible audit results: 9 (8 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: GoldFinger (`goldfinger`)
- Website: [https://goldfinger.finance/en](https://goldfinger.finance/en)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 8 unique implementations (8 raw deployments)
- Coverage basis: 7/7 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $23,884,814.65
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for GoldFinger. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across bsc. Structural roles: 5 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: core (5), supporting (3)
- Contract kinds: contract (8)
- Detected standards: ownable (8), pausable (8), erc20 (3), erc20permit (3)
- Frameworks: openzeppelin (8)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ARTToken (`0x0b3f46...c67424`, chain 56)
- ARTToken (`0xb8a1ed...feaae1`, chain 56)
- ARTVault (`0x79d28c...aff6ef`, chain 56)
- GFDistributor (`0x92558b...154079`, chain 56)
- GFPriceOracle (`0x2c1bd6...03b4f4`, chain 56)
- GFRegistry (`0xd1ab3b...f17a9a`, chain 56)
- GFStaking (`0x93639c...867e1e`, chain 56)
- GFToken (`0x6db461...c004e0`, chain 56)

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 7/7 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 8 of 8 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 7/7
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 9 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SolidProof | Tier 2 | 7 | 100.0% | 2025-11 |
| unknown | Tier 2 | 1 | 14.3% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ARTToken | token | project_anchor | own_supporting | 0 | bsc | unit-266825 | `0x0b3f46...c67424` | ✅ Audited |
| ARTVault | unknown | project_anchor | own_supporting | 0 | bsc | unit-266828 | `0x79d28c...aff6ef` | ✅ Audited |
| GFDistributor | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-266829 | `0x92558b...154079` | ✅ Audited |
| GFPriceOracle | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-266826 | `0x2c1bd6...03b4f4` | ✅ Audited |
| GFRegistry | registry | project_anchor | own_supporting | 0 | bsc | unit-266832 | `0xd1ab3b...f17a9a` | ✅ Audited |
| GFStaking | unknown | project_anchor | own_supporting | 0 | bsc | unit-266830 | `0x93639c...867e1e` | ✅ Audited |
| GFToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-266827 | `0x6db461...c004e0` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ARTToken | token | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc | unit-266831 | `0xb8a1ed...feaae1` | ⚠️ Unaudited |

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
| [goldfinger-zerodrift-report.pdf](https://github.com/GoldFingerRWA/token-contracts/blob/main/docs/goldfinger-zerodrift-report.pdf) | unknown | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [app.solidproof.io/projects/goldfinger](https://app.solidproof.io/projects/goldfinger?audit=b14fbb55-1679-47fd-92de-2b5780e48cac) | SolidProof | Audit | 2025-11 | fresh | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [app.solidproof.io/projects/goldfinger](https://app.solidproof.io/projects/goldfinger?audit=56927176-71cc-496e-8b59-e46b4dcdbdc9) | SolidProof | Audit | 2025-11 | fresh | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [app.solidproof.io/projects/goldfinger](https://app.solidproof.io/projects/goldfinger?audit=812d8642-0312-4d0c-a5de-f7d13e850273) | SolidProof | Audit | 2025-11 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [app.solidproof.io/projects/goldfinger](https://app.solidproof.io/projects/goldfinger?audit=bcdbd3a6-0ca2-4d05-9183-601437701a8d) | SolidProof | Audit | 2025-11 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [app.solidproof.io/projects/goldfinger](https://app.solidproof.io/projects/goldfinger?audit=a5a2744f-aeb6-4ed4-abf3-85ae5c160b43) | SolidProof | Audit | 2025-11 | fresh | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [app.solidproof.io/projects/goldfinger](https://app.solidproof.io/projects/goldfinger?audit=00cd8637-f69d-4a1d-b6dd-8a7a34315d1c) | SolidProof | Audit | 2025-11 | fresh | Direct | n/a | matched | 7 | 0 | 0 | 0 | n/a |
| [app.solidproof.io/projects/goldfinger](https://app.solidproof.io/projects/goldfinger?audit=e2da520d-75a2-4461-b5c0-53fb5858ff8d) | SolidProof | Audit | 2025-11 | fresh | Direct | n/a | matched | 7 | 0 | 0 | 0 | n/a |
| [app.solidproof.io/projects/goldfinger](https://app.solidproof.io/projects/goldfinger) | unknown | Audit | 2025-11 | fresh | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [9641] goldfinger-zerodrift-report.pdf — no match: Only one contract, CheckIn, is in scope. Audit date is January 2026, interpreted as last day of month.
- [11786] app.solidproof.io/projects/goldfinger — matched: No reason recorded
- [11787] app.solidproof.io/projects/goldfinger — matched: No reason recorded
- [11788] app.solidproof.io/projects/goldfinger — matched: Only GFToken.sol is explicitly listed in scope. Other contracts (GFDistributor, GFStaking, etc.) are mentioned in a dropdown but not audited.
- [11789] app.solidproof.io/projects/goldfinger — matched: Only ARTVault.sol is explicitly listed in scope. Other contracts (GFDistributor, GFStaking, GFToken, etc.) are mentioned in a dropdown but not audited; the report states 'we only audited the mentioned contract for the GoldFinger team'.
- [11790] app.solidproof.io/projects/goldfinger — matched: No reason recorded
- [11791] app.solidproof.io/projects/goldfinger — matched: No reason recorded
- [11792] app.solidproof.io/projects/goldfinger — matched: No reason recorded
- [14537] app.solidproof.io/projects/goldfinger — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| goldfinger-zerodrift-report.pdf | CheckIn | unmatched — not counted | — | listed in scope | no |
| app.solidproof.io/projects/goldfinger | GFDistributor | own contract | GFDistributor (selected) `0x92558b...154079` — deployed 2026-03-04 09:54:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | GFStaking | own contract | GFStaking (selected) `0x93639c...867e1e` — deployed 2026-03-05 10:49:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | GFToken | own contract | GFToken (selected) `0x6db461...c004e0` — deployed 2025-11-22 06:28:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | ARTVault | own contract | ARTVault (selected) `0x79d28c...aff6ef` — deployed 2025-11-22 06:32:30+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | ARTToken | own contract | ARTToken (selected) `0x0b3f46...c67424` — deployed 2025-11-03 06:56:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | ARTToken | own contract | ARTToken (selected) `0x0b3f46...c67424` — deployed 2025-11-03 06:56:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | ARTVault | own contract | ARTVault (selected) `0x79d28c...aff6ef` — deployed 2025-11-22 06:32:30+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | GFDistributor | own contract | GFDistributor (selected) `0x92558b...154079` — deployed 2026-03-04 09:54:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | GFPriceOracle | own contract | GFPriceOracle (selected) `0x2c1bd6...03b4f4` — deployed 2025-11-03 07:27:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | GFRegistry | own contract | GFRegistry (selected) `0xd1ab3b...f17a9a` — deployed 2025-11-03 07:30:34+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | GFStaking | own contract | GFStaking (selected) `0x93639c...867e1e` — deployed 2026-03-05 10:49:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | GFToken | own contract | GFToken (selected) `0x6db461...c004e0` — deployed 2025-11-22 06:28:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | ARTToken | own contract | ARTToken (selected) `0x0b3f46...c67424` — deployed 2025-11-03 06:56:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | ARTVault | own contract | ARTVault (selected) `0x79d28c...aff6ef` — deployed 2025-11-22 06:32:30+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | GFDistributor | own contract | GFDistributor (selected) `0x92558b...154079` — deployed 2026-03-04 09:54:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | GFPriceOracle | own contract | GFPriceOracle (selected) `0x2c1bd6...03b4f4` — deployed 2025-11-03 07:27:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | GFRegistry | own contract | GFRegistry (selected) `0xd1ab3b...f17a9a` — deployed 2025-11-03 07:30:34+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | GFStaking | own contract | GFStaking (selected) `0x93639c...867e1e` — deployed 2026-03-05 10:49:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | GFToken | own contract | GFToken (selected) `0x6db461...c004e0` — deployed 2025-11-22 06:28:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | GFDistributor | own contract | GFDistributor (selected) `0x92558b...154079` — deployed 2026-03-04 09:54:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 20 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 20 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: unique_name=20

Zero-match audit list:

- [9641] goldfinger-zerodrift-report.pdf

Fork inheritance lineage and inherited audits are included when available.
