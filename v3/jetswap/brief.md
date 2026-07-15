# Agentic Audit Brief: JetSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: JetSwap (`jetswap`)
- Website: [https://jetswap.finance/](https://jetswap.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, polygon
- Contract surface: 11 unique implementations (11 raw deployments)
- Coverage basis: 3/8 confirmed own live verified implementations (37.5%); conservative 37.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $309,127.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for JetSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across bsc, polygon. Structural roles: 8 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (8), supporting (1)
- Contract kinds: contract (9)
- Detected standards: ownable (4), erc20 (3), erc20permit (1)
- Frameworks: openzeppelin (8)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Factory (`0x668ad0...cd4ac7`, chain 137)
- JetswapFactory (`0x0eb58e...dfcbd5`, chain 56)
- JetswapRouter (`0xbe65b8...714800`, chain 56)
- MasterChef (`0x63d6ec...b6f9f5`, chain 56)
- MasterChef (`0x4e2239...bf1d85`, chain 137)
- Multicall (`0xf64882...4ee3dd`, chain 137)
- pWINGS (`0x845e76...09ee25`, chain 137)
- Router (`0x5c6ec3...3e5923`, chain 137)
- WingsToken (`0x0487b8...498446`, chain 56)

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/8 (37.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (3 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 9 of 11 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 3/8
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 11
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 37.5% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| JetswapFactory | unknown | project_anchor | own_supporting | 0 | bsc | unit-387738 | `0x0eb58e...dfcbd5` | ✅ Audited |
| JetswapRouter | adapter | project_anchor | own_supporting | 0 | bsc | unit-387741 | `0xbe65b8...714800` | ✅ Audited |
| Multicall | unknown | project_anchor | own_supporting | 0 | polygon | unit-387736 | `0xf64882...4ee3dd` | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Factory | unknown | project_anchor | own_supporting | 0 | polygon | unit-387734 | `0x668ad0...cd4ac7` | ⚠️ Unaudited |
| MasterChef | unknown | project_anchor | own_supporting | 0 | bsc | unit-387739 | `0x63d6ec...b6f9f5` | ⚠️ Unaudited |
| MasterChef | unknown | project_anchor | own_supporting | 0 | polygon | unit-387732 | `0x4e2239...bf1d85` | ⚠️ Unaudited |
| pWINGS | unknown | project_anchor | own_supporting | 0 | polygon | unit-387735 | `0x845e76...09ee25` | ⚠️ Unaudited |
| Router | unknown | project_anchor | own_supporting | 0 | polygon | unit-387733 | `0x5c6ec3...3e5923` | ⚠️ Unaudited |
| WingsToken | token | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-387737 | `0x0487b8...498446` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-387740 | `0xbb4cdb...bc095c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-387731 | `0x0d500b...df1270` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audit-by-etherauthority.pdf](https://jetswap.finance/audit-by-etherauthority.pdf) | unknown | Audit | 2021-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [audit-by-hash0x.pdf](https://jetswap.finance/audit-by-hash0x.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13302] audit-by-etherauthority.pdf — matched: All five contracts listed in the 'Project files' table are explicitly in scope. The audit date is from the cover page: 'Prepared on :23/03/2021'.
- [13303] audit-by-hash0x.pdf — matched: Five contracts explicitly listed in scope table on page 4. Audit date from cover page: 21/04/2021.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| audit-by-etherauthority.pdf | MasterChef | ambiguous — not counted | MasterChef (alternative) `0x4e2239...bf1d85` — liveness: live (current_address_book_code)<br>MasterChef (alternative) `0x63d6ec...b6f9f5` — deployed 2021-05-16 19:28:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| audit-by-etherauthority.pdf | Multicall | own contract | Multicall (selected) `0xf64882...4ee3dd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit-by-etherauthority.pdf | swapV2Factory | unmatched — not counted | — | listed in project files table | no |
| audit-by-etherauthority.pdf | swapV2Router02 | unmatched — not counted | — | listed in project files table | no |
| audit-by-etherauthority.pdf | WingsToken | unmatched — not counted | — | listed in project files table | no |
| audit-by-hash0x.pdf | MasterChef | ambiguous — not counted | MasterChef (alternative) `0x4e2239...bf1d85` — liveness: live (current_address_book_code)<br>MasterChef (alternative) `0x63d6ec...b6f9f5` — deployed 2021-05-16 19:28:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| audit-by-hash0x.pdf | Multicall | own contract | Multicall (selected) `0xf64882...4ee3dd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit-by-hash0x.pdf | JetswapFactory | own contract | JetswapFactory (selected) `0x0eb58e...dfcbd5` — deployed 2021-05-03 07:48:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit-by-hash0x.pdf | JetswapRouter | own contract | JetswapRouter (selected) `0xbe65b8...714800` — deployed 2021-05-03 07:58:52+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit-by-hash0x.pdf | WingsToken | unmatched — not counted | — | listed in scope table with MD5 hash | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x63d6ec...b6f9f5` | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 4 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=4

Fork inheritance lineage and inherited audits are included when available.
