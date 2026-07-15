# Agentic Audit Brief: Bitway Earn

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Bitway Earn (`bitway-earn`)
- Website: [https://bitway.com/](https://bitway.com/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 3 unique implementations (10 raw deployments)
- Coverage basis: 2/3 confirmed own live verified implementations (66.7%); conservative 66.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $60,611,305.83
- On-chain TVL (included contracts): $178,361.50
- TVL by chain: Bsc $178,361.50

## Project Description

This brief describes the observed EVM deployment and audit surface for Bitway Earn. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 10 contract row(s) across bsc. Structural roles: 8 core, 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 10
- Structural roles: core (8), supporting (2)
- Contract kinds: contract (10)
- Detected standards: erc20 (6), accesscontrol (4), erc165 (4), pausable (4)
- Frameworks: openzeppelin (10)
- Upgradeable-pattern rows: 0

## Fork Analysis

2 of 10 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

**Vault** (`0x5c4a69...d52bd1`, chain 56)
Origin: bitway (`0x5c4a69...d52bd1`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Vault** (`0xb82e32...ae3b63`, chain 56)
Origin: bitway (`0x5c4a69...d52bd1`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- LPToken (`0x4effb6...b106d5`, chain 56)
- LPToken (`0x73af54...2ba3a1`, chain 56)
- LPToken (`0x8042c9...3ef00a`, chain 56)
- LPToken (`0x82356c...a8ef71`, chain 56)
- LPToken (`0xaa3d25...ffffb7`, chain 56)
- LPToken (`0xccafb7...ed2fd2`, chain 56)
- WithdrawVault (`0x2b8464...f157cb`, chain 56)
- WithdrawVault (`0xfc8e6b...1d04ef`, chain 56)

## Contract Surface Quality

- Indexed contracts: 10; live-surface contracts included: 10 (10 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/10 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/3 (66.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/3
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 10
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 3 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 66.7% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Vault | core_logic | project_anchor | own_supporting | 0 | bsc | unit-400433 | 2 deployments: bsc `0x5c4a69...d52bd1`; bsc `0xb82e32...ae3b63` | ✅ Audited |
| WithdrawVault | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-400431 | 2 deployments: bsc `0x2b8464...f157cb`; bsc `0xfc8e6b...1d04ef` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LPToken | token | project_anchor | own_supporting | 0 | bsc | unit-400432 | 6 deployments: bsc `0x4effb6...b106d5`; bsc `0x73af54...2ba3a1`; bsc `0x8042c9...3ef00a`; bsc `0x82356c...a8ef71`; bsc `0xaa3d25...ffffb7`; bsc `0xccafb7...ed2fd2` | ⚠️ Unaudited |

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
| [spaces/iSGHwFKn3P0OZY7c7ITh/uploads/fD8mPTvBi8WxzPI8e7EV/Blocksec_Bitway_Earn_Audit_Report.pdf](https://1739587685-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FiSGHwFKn3P0OZY7c7ITh%2Fuploads%2FfD8mPTvBi8WxzPI8e7EV%2FBlocksec_Bitway_Earn_Audit_Report.pdf) | unknown | Audit | 2025-10 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 2 | high |
| [spaces/iSGHwFKn3P0OZY7c7ITh/uploads/op9YWYBDnxCa0YeBdf8t/Salus_BitwayEarn_Audit_Report.pdf](https://1739587685-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FiSGHwFKn3P0OZY7c7ITh%2Fuploads%2Fop9YWYBDnxCa0YeBdf8t%2FSalus_BitwayEarn_Audit_Report.pdf) | unknown | Audit | 2025-10 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 2 | high |
| [spaces/iSGHwFKn3P0OZY7c7ITh/uploads/CHW9zrkYycSoPABMSaSk/Salus_Bitway_Token_Audit_Report.pdf](https://1739587685-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FiSGHwFKn3P0OZY7c7ITh%2Fuploads%2FCHW9zrkYycSoPABMSaSk%2FSalus_Bitway_Token_Audit_Report.pdf) | unknown | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4674] spaces/iSGHwFKn3P0OZY7c7ITh/uploads/fD8mPTvBi8WxzPI8e7EV/Blocksec_Bitway_Earn_Audit_Report.pdf — matched: Scope section explicitly lists 'contracts' directory. Four contracts identified from file paths and findings.
- [4675] spaces/iSGHwFKn3P0OZY7c7ITh/uploads/op9YWYBDnxCa0YeBdf8t/Salus_BitwayEarn_Audit_Report.pdf — matched: All four files listed in Appendix 1 - Files in Scope are in scope. Audit date from 'Dates Oct 20 2025'.
- [4676] spaces/iSGHwFKn3P0OZY7c7ITh/uploads/CHW9zrkYycSoPABMSaSk/Salus_Bitway_Token_Audit_Report.pdf — no match: Only one contract in scope: BitwayToken.sol. Audit date from 'Dates Oct 24 2025' in Project Dashboard.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/iSGHwFKn3P0OZY7c7ITh/uploads/fD8mPTvBi8WxzPI8e7EV/Blocksec_Bitway_Earn_Audit_Report.pdf | Vault | own contract | Vault (alternative) `0xb82e32...ae3b63` — deployed 2026-01-03 11:36:41+03 — liveness: live (code_present_context)<br>Vault (selected) `0x5c4a69...d52bd1` — deployed 2025-10-18 16:41:59+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-10-18 was 9d from audit; next candidate 68d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/iSGHwFKn3P0OZY7c7ITh/uploads/fD8mPTvBi8WxzPI8e7EV/Blocksec_Bitway_Earn_Audit_Report.pdf | WithdrawVault | own contract | WithdrawVault (alternative) `0xfc8e6b...1d04ef` — deployed 2026-01-03 11:31:01+03 — liveness: live (current_address_book_code)<br>WithdrawVault (selected) `0x2b8464...f157cb` — deployed 2025-10-18 16:38:43+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-18 was 9d from audit; next candidate 68d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/iSGHwFKn3P0OZY7c7ITh/uploads/fD8mPTvBi8WxzPI8e7EV/Blocksec_Bitway_Earn_Audit_Report.pdf | LPToken | ambiguous — not counted | LPToken (alternative) `0x4effb6...b106d5` — deployed 2026-01-24 06:33:20+03 — liveness: live (current_address_book_code)<br>LPToken (alternative) `0x82356c...a8ef71` — deployed 2026-04-23 06:05:20+03 — liveness: live (current_address_book_code)<br>LPToken (alternative) `0x73af54...2ba3a1` — deployed 2026-01-03 11:17:21+03 — liveness: live (current_address_book_code)<br>LPToken (alternative) `0xaa3d25...ffffb7` — deployed 2026-03-17 12:23:57+03 — liveness: live (current_address_book_code)<br>LPToken (alternative) `0x8042c9...3ef00a` — deployed 2025-10-18 16:34:53+03 — liveness: live (current_address_book_code)<br>LPToken (alternative) `0xccafb7...ed2fd2` — deployed 2025-10-18 16:34:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/iSGHwFKn3P0OZY7c7ITh/uploads/fD8mPTvBi8WxzPI8e7EV/Blocksec_Bitway_Earn_Audit_Report.pdf | Utils | unmatched — not counted | — | mentioned in findings | no |
| spaces/iSGHwFKn3P0OZY7c7ITh/uploads/op9YWYBDnxCa0YeBdf8t/Salus_BitwayEarn_Audit_Report.pdf | Vault | own contract | Vault (alternative) `0xb82e32...ae3b63` — deployed 2026-01-03 11:36:41+03 — liveness: live (code_present_context)<br>Vault (selected) `0x5c4a69...d52bd1` — deployed 2025-10-18 16:41:59+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-10-18 was 2d from audit; next candidate 75d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/iSGHwFKn3P0OZY7c7ITh/uploads/op9YWYBDnxCa0YeBdf8t/Salus_BitwayEarn_Audit_Report.pdf | WithdrawVault | own contract | WithdrawVault (alternative) `0xfc8e6b...1d04ef` — deployed 2026-01-03 11:31:01+03 — liveness: live (current_address_book_code)<br>WithdrawVault (selected) `0x2b8464...f157cb` — deployed 2025-10-18 16:38:43+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-18 was 2d from audit; next candidate 75d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/iSGHwFKn3P0OZY7c7ITh/uploads/op9YWYBDnxCa0YeBdf8t/Salus_BitwayEarn_Audit_Report.pdf | LPToken | ambiguous — not counted | LPToken (alternative) `0x4effb6...b106d5` — deployed 2026-01-24 06:33:20+03 — liveness: live (current_address_book_code)<br>LPToken (alternative) `0x82356c...a8ef71` — deployed 2026-04-23 06:05:20+03 — liveness: live (current_address_book_code)<br>LPToken (alternative) `0x73af54...2ba3a1` — deployed 2026-01-03 11:17:21+03 — liveness: live (current_address_book_code)<br>LPToken (alternative) `0xaa3d25...ffffb7` — deployed 2026-03-17 12:23:57+03 — liveness: live (current_address_book_code)<br>LPToken (alternative) `0x8042c9...3ef00a` — deployed 2025-10-18 16:34:53+03 — liveness: live (current_address_book_code)<br>LPToken (alternative) `0xccafb7...ed2fd2` — deployed 2025-10-18 16:34:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/iSGHwFKn3P0OZY7c7ITh/uploads/op9YWYBDnxCa0YeBdf8t/Salus_BitwayEarn_Audit_Report.pdf | utils | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| spaces/iSGHwFKn3P0OZY7c7ITh/uploads/CHW9zrkYycSoPABMSaSk/Salus_Bitway_Token_Audit_Report.pdf | BitwayToken | unmatched — not counted | — | listed in scope and findings target | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x4effb6...b106d5` | LPToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 3 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: temporal_name=4

Zero-match audit list:

- [4676] spaces/iSGHwFKn3P0OZY7c7ITh/uploads/CHW9zrkYycSoPABMSaSk/Salus_Bitway_Token_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
