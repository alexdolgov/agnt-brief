# Agentic Audit Brief: Bitway Earn

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Bitway Earn (`bitway-earn`)
- Website: [https://bitway.com/](https://bitway.com/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 8 unique implementations (30 raw deployments)
- Coverage basis: 2/3 confirmed own live verified implementations (66.7%); conservative 66.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $60,611,305.83
- On-chain TVL (included contracts): $178,372.20
- TVL by chain: Bsc $178,372.20

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

**Vault** (`0x5c4a6903732532eeb3ae0803e062d8ae25d52bd1`, chain 56)
Origin: bitway (`0x5c4a6903732532eeb3ae0803e062d8ae25d52bd1`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Vault** (`0xb82e32062c773c7748776c06fdb11b92edae3b63`, chain 56)
Origin: bitway (`0x5c4a6903732532eeb3ae0803e062d8ae25d52bd1`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- LPToken (`0x4effb6bce5cad64d7162c7f7f15f557221b106d5`, chain 56)
- LPToken (`0x73af543d809c8d3414e5b92b3aa2c25b182ba3a1`, chain 56)
- LPToken (`0x8042c9aefa44dd481172aa1e470c671d353ef00a`, chain 56)
- LPToken (`0x82356c921422a2202e0f96dfccc352598ca8ef71`, chain 56)
- LPToken (`0xaa3d2534b4b87a2859e28c223f18265244ffffb7`, chain 56)
- LPToken (`0xccafb706225331aedfec75b5347d462b98ed2fd2`, chain 56)
- WithdrawVault (`0x2b8464ffb2b77de64cfefdeb00ad925576f157cb`, chain 56)
- WithdrawVault (`0xfc8e6b1ab1a4c37724f8bc797730afa8d01d04ef`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 10; live-surface rows included: 10 (10 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/10 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/3 (66.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 5 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 3 of 8 unique; 5 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/7
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 8
- Raw deployments: 30
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
| unknown | Tier 2 | 2 | 28.6% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Vault | core_logic | project_anchor | own_supporting | 0 | bsc | n/a | 4 deployments: bsc `0x1f068133a960ecf58f938164e0fd5364cb538188`; bsc `0x3db84fc40202551e31ec4e4176da5e3a96fffee1`; bsc `0x5c4a6903732532eeb3ae0803e062d8ae25d52bd1`; bsc `0xb82e32062c773c7748776c06fdb11b92edae3b63` | ✅ Audited |
| WithdrawVault | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-400431 | 4 deployments: bsc `0x2b8464ffb2b77de64cfefdeb00ad925576f157cb`; bsc `0xb466f03ab39ed55c19f20fcd1abc8d9fc7c07f9b`; bsc `0xeff69f19c640c62ffa5338055956db173621f09d`; bsc `0xfc8e6b1ab1a4c37724f8bc797730afa8d01d04ef` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BitwayOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76d77531258b4dddfa4087e97a6c89bc0f0f1e50` | ⚠️ Unaudited |
| BitwayToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x32e060f88398d16b086e5040566cb1897d3270e0`; bsc `0x3a63de3572c69a1307ff08394f3ee7702c16d25d`; bsc `0x444045b0ee1ee319a660a5e3d604ca0ffa35acaa` | ⚠️ Unaudited |
| BitwayTokenLock | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x4e1743201775794e313dd621dfe89c61eec81b73`; bsc `0xca571526267fafad9b8478a454a4e839e0879832`; bsc `0xd15f4712e743ab7e468973dbdfcacd2945da1b4c`; bsc `0xfa0f1a7bf2b5f8ae783b7c3d8b9f1350d5665c90` | ⚠️ Unaudited |
| LPToken | token | project_anchor | own_core | 0 | bsc | n/a | 12 deployments: bsc `0x2a0109ac682794b78a9715568abac9d60665dbee`; bsc `0x4effb6bce5cad64d7162c7f7f15f557221b106d5`; bsc `0x66f2c4963202188fcead910f1cbe55d1dec5370e`; bsc `0x73af543d809c8d3414e5b92b3aa2c25b182ba3a1`; bsc `0x8042c9aefa44dd481172aa1e470c671d353ef00a`; bsc `0x82356c921422a2202e0f96dfccc352598ca8ef71`; bsc `0x8a928c16cf14d851bbd0d9df5a3ec278d1713386`; bsc `0xaa3d2534b4b87a2859e28c223f18265244ffffb7`; bsc `0xb5c3617d4f077851cc6c7fae558d32e9782307f9`; bsc `0xccafb706225331aedfec75b5347d462b98ed2fd2`; bsc `0xd8a24644dddc470fc48088e4ac96e846af08d813`; bsc `0xeebfe7ba7906b9fbf4eee56a0ac2560cb568229b` | ⚠️ Unaudited |
| StablecoinV2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xce24439f2d9c6a2289f741120fe202248b666666` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcfd67dd3244ca9f691fc0ab7c397aaa7fe7c3415` | ❓ Unverified |

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
| spaces/iSGHwFKn3P0OZY7c7ITh/uploads/fD8mPTvBi8WxzPI8e7EV/Blocksec_Bitway_Earn_Audit_Report.pdf | Vault | own contract | Vault (alternative) `0xb82e32062c773c7748776c06fdb11b92edae3b63` — deployed 2026-01-03 11:36:41+03 — liveness: live (code_present_context)<br>Vault (selected) `0x5c4a6903732532eeb3ae0803e062d8ae25d52bd1` — deployed 2025-10-18 16:41:59+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-10-18 was 9d from audit; next candidate 68d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/iSGHwFKn3P0OZY7c7ITh/uploads/fD8mPTvBi8WxzPI8e7EV/Blocksec_Bitway_Earn_Audit_Report.pdf | WithdrawVault | own contract | WithdrawVault (alternative) `0xfc8e6b1ab1a4c37724f8bc797730afa8d01d04ef` — deployed 2026-01-03 11:31:01+03 — liveness: live (current_address_book_code)<br>WithdrawVault (selected) `0x2b8464ffb2b77de64cfefdeb00ad925576f157cb` — deployed 2025-10-18 16:38:43+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-18 was 9d from audit; next candidate 68d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/iSGHwFKn3P0OZY7c7ITh/uploads/fD8mPTvBi8WxzPI8e7EV/Blocksec_Bitway_Earn_Audit_Report.pdf | LPToken | ambiguous — not counted | LPToken (alternative) `0x4effb6bce5cad64d7162c7f7f15f557221b106d5` — deployed 2026-01-24 06:33:20+03 — liveness: live (current_address_book_code)<br>LPToken (alternative) `0x82356c921422a2202e0f96dfccc352598ca8ef71` — deployed 2026-04-23 06:05:20+03 — liveness: live (current_address_book_code)<br>LPToken (alternative) `0x73af543d809c8d3414e5b92b3aa2c25b182ba3a1` — deployed 2026-01-03 11:17:21+03 — liveness: live (current_address_book_code)<br>LPToken (alternative) `0xaa3d2534b4b87a2859e28c223f18265244ffffb7` — deployed 2026-03-17 12:23:57+03 — liveness: live (current_address_book_code)<br>LPToken (alternative) `0x8042c9aefa44dd481172aa1e470c671d353ef00a` — deployed 2025-10-18 16:34:53+03 — liveness: live (current_address_book_code)<br>LPToken (alternative) `0xccafb706225331aedfec75b5347d462b98ed2fd2` — deployed 2025-10-18 16:34:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/iSGHwFKn3P0OZY7c7ITh/uploads/fD8mPTvBi8WxzPI8e7EV/Blocksec_Bitway_Earn_Audit_Report.pdf | Utils | unmatched — not counted | — | mentioned in findings | no |
| spaces/iSGHwFKn3P0OZY7c7ITh/uploads/op9YWYBDnxCa0YeBdf8t/Salus_BitwayEarn_Audit_Report.pdf | Vault | own contract | Vault (alternative) `0xb82e32062c773c7748776c06fdb11b92edae3b63` — deployed 2026-01-03 11:36:41+03 — liveness: live (code_present_context)<br>Vault (selected) `0x5c4a6903732532eeb3ae0803e062d8ae25d52bd1` — deployed 2025-10-18 16:41:59+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-10-18 was 2d from audit; next candidate 75d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/iSGHwFKn3P0OZY7c7ITh/uploads/op9YWYBDnxCa0YeBdf8t/Salus_BitwayEarn_Audit_Report.pdf | WithdrawVault | own contract | WithdrawVault (alternative) `0xfc8e6b1ab1a4c37724f8bc797730afa8d01d04ef` — deployed 2026-01-03 11:31:01+03 — liveness: live (current_address_book_code)<br>WithdrawVault (selected) `0x2b8464ffb2b77de64cfefdeb00ad925576f157cb` — deployed 2025-10-18 16:38:43+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-18 was 2d from audit; next candidate 75d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/iSGHwFKn3P0OZY7c7ITh/uploads/op9YWYBDnxCa0YeBdf8t/Salus_BitwayEarn_Audit_Report.pdf | LPToken | ambiguous — not counted | LPToken (alternative) `0x4effb6bce5cad64d7162c7f7f15f557221b106d5` — deployed 2026-01-24 06:33:20+03 — liveness: live (current_address_book_code)<br>LPToken (alternative) `0x82356c921422a2202e0f96dfccc352598ca8ef71` — deployed 2026-04-23 06:05:20+03 — liveness: live (current_address_book_code)<br>LPToken (alternative) `0x73af543d809c8d3414e5b92b3aa2c25b182ba3a1` — deployed 2026-01-03 11:17:21+03 — liveness: live (current_address_book_code)<br>LPToken (alternative) `0xaa3d2534b4b87a2859e28c223f18265244ffffb7` — deployed 2026-03-17 12:23:57+03 — liveness: live (current_address_book_code)<br>LPToken (alternative) `0x8042c9aefa44dd481172aa1e470c671d353ef00a` — deployed 2025-10-18 16:34:53+03 — liveness: live (current_address_book_code)<br>LPToken (alternative) `0xccafb706225331aedfec75b5347d462b98ed2fd2` — deployed 2025-10-18 16:34:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/iSGHwFKn3P0OZY7c7ITh/uploads/op9YWYBDnxCa0YeBdf8t/Salus_BitwayEarn_Audit_Report.pdf | utils | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| spaces/iSGHwFKn3P0OZY7c7ITh/uploads/CHW9zrkYycSoPABMSaSk/Salus_Bitway_Token_Audit_Report.pdf | BitwayToken | unmatched — not counted | — | listed in scope and findings target | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x2a0109ac682794b78a9715568abac9d60665dbee` | LPToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

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
