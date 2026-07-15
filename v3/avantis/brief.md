# Agentic Audit Brief: Avantis

## Export Authority

- Production state: **published scope**
- Raw selected rows: 10 across 5 audit(s)
- Eligible audit results: 5 (5 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: DECLINING - TVL dropped 54.4% over 90 days

## Project Overview

- Project: Avantis (`avantis`)
- Website: [https://www.avantisfi.com](https://www.avantisfi.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 4 unique implementations (4 raw deployments)
- Coverage basis: 2/3 confirmed own live verified implementations (66.7%); conservative 66.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $31,297,482.40
- On-chain TVL (included contracts): $90,427,212.63
- TVL by chain: Base $90,427,212.63

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Avantis. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across base. Structural roles: 2 supporting, 1 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: supporting (2), core (1)
- Contract kinds: contract (2), abstract (1)
- Detected standards: erc1967proxy (2), erc165 (1), erc20 (1), ownable (1), ownable2step (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Token (`0x696f94...5df4f1`, chain 8453)
- TransparentUpgradeableProxy (`0x449144...e11d4e`, chain 8453)
- TransparentUpgradeableProxy (`0x8a311d...f7422d`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/3 (66.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Deployed-live implementations: 3 of 4 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/3
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $90,427,212.63
- Latest audit: 2024-09 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $90,427,212.63 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 66.7% | 2023-12 |
| Zellic | Tier 2 | 2 | 66.7% | 2024-09 |
| Zokyo | Tier 2 | 2 | 66.7% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Trading | unknown | project_anchor | own_supporting | 1 | base | unit-379852 | `0x449144...e11d4e` | ✅ Audited |
| TradingStorage | unknown | project_anchor | own_supporting | 1 | base | unit-379851 | `0x8a311d...f7422d` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Token | token | project_anchor | own_supporting | 0 | base | unit-379846 | `0x696f94...5df4f1` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base | unit-379847 | `0x833589...a02913` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Avantis_-_Zellic_Audit_Report_1.pdf](https://github.com/Avantis-Labs/audits/blob/master/Avantis_-_Zellic_Audit_Report_1.pdf) | Zellic | Audit | 2023-12 | stale | Direct | n/a | matched | 2 | 2 | 0 | 9 | n/a |
| [Avantis_-_Zellic_Audit_Report_2.pdf](https://github.com/Avantis-Labs/audits/blob/master/Avantis_-_Zellic_Audit_Report_2.pdf) | Zellic | Audit | 2024-09 | aging | Direct | n/a | matched | 2 | 2 | 0 | 7 | n/a |
| [Avantis_-_Zokyo_Audit_Report_1.pdf](https://github.com/Avantis-Labs/audits/blob/master/Avantis_-_Zokyo_Audit_Report_1.pdf) | Zokyo | Audit | 2023-12 | stale | Direct | n/a | matched | 2 | 2 | 0 | 9 | n/a |
| [spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf](https://586275454-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F76vAZHPcNKY10NzuKsC4%2Fuploads%2FQugrQyVYa7gCMa8FUQdy%2FAvantis_-_Zellic_Audit_Report.pdf) | Zellic | Audit | 2023-12 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 9 | high |
| [spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf](https://586275454-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F76vAZHPcNKY10NzuKsC4%2Fuploads%2Fap10BwpWhzNMappneMgr%2FAvantis%20audit%20report.pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3864] Avantis_-_Zellic_Audit_Report_1.pdf — matched: No reason recorded
- [3865] Avantis_-_Zellic_Audit_Report_2.pdf — matched: No reason recorded
- [3866] Avantis_-_Zokyo_Audit_Report_1.pdf — matched: No reason recorded
- [15577] spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf — matched: Scope section lists 11 contracts: Execute, PairInfos, PairStorage, PriceAggregator, Referral, Trading, TradingCallbacks, TradingStorage, Tranche, VaultManager, VeTranche. Audit date is December 1, 2023 from cover page.
- [15578] spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf — matched: Scope explicitly lists 11 contracts in the 'Auditing Strategy and Techniques Applied' section.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Avantis_-_Zellic_Audit_Report_1.pdf | Execute | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_1.pdf | PairInfos | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_1.pdf | PairStorage | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_1.pdf | PriceAggregator | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_1.pdf | Referral | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_1.pdf | Trading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x449144...e11d4e` — deployed 2025-02-11 12:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Avantis_-_Zellic_Audit_Report_1.pdf | TradingCallbacks | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_1.pdf | TradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x8a311d...f7422d` — deployed 2024-01-27 10:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Avantis_-_Zellic_Audit_Report_1.pdf | Tranche | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_1.pdf | VaultManager | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_1.pdf | VeTranche | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_2.pdf | PairInfos | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_2.pdf | PairStorage | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_2.pdf | PriceAggregator | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_2.pdf | Referral | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_2.pdf | Trading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x449144...e11d4e` — deployed 2025-02-11 12:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Avantis_-_Zellic_Audit_Report_2.pdf | TradingCallbacks | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_2.pdf | TradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x8a311d...f7422d` — deployed 2024-01-27 10:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Avantis_-_Zellic_Audit_Report_2.pdf | Tranche | unmatched — not counted | — | — | no |
| Avantis_-_Zellic_Audit_Report_2.pdf | VaultManager | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | Execute.sol | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | PairInfos.sol | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | PairStorage.sol | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | PriceAggregator.sol | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | Referral.sol | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | Trading.sol | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x449144...e11d4e` — deployed 2025-02-11 12:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Avantis_-_Zokyo_Audit_Report_1.pdf | TradingCallbacks.sol | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | TradingStorage.sol | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x8a311d...f7422d` — deployed 2024-01-27 10:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Avantis_-_Zokyo_Audit_Report_1.pdf | Tranche.sol | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | VaultManager.sol | unmatched — not counted | — | — | no |
| Avantis_-_Zokyo_Audit_Report_1.pdf | VeTranche.sol | unmatched — not counted | — | — | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | Execute | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | PairInfos | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | PairStorage | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | PriceAggregator | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | Referral | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | Trading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x449144...e11d4e` — deployed 2025-02-11 12:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | TradingCallbacks | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | TradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x8a311d...f7422d` — deployed 2024-01-27 10:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | Tranche | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | VaultManager | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/QugrQyVYa7gCMa8FUQdy/Avantis_-_Zellic_Audit_Report.pdf | VeTranche | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | Execute | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | PairInfos | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | PairStorage | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | PriceAggregator | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | Referral | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | Trading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x449144...e11d4e` — deployed 2025-02-11 12:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | TradingCallbacks | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | TradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x8a311d...f7422d` — deployed 2024-01-27 10:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | Tranche | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | VaultManager | unmatched — not counted | — | listed in scope | no |
| spaces/76vAZHPcNKY10NzuKsC4/uploads/ap10BwpWhzNMappneMgr/Avantis audit report.pdf | VeTranche | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x696f94...5df4f1` | Token | token | $90,427,212.63 | Verified native implementation with $90,427,212.63 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 10 own (10 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 43 unmatched
- Matched-own operational status: 10 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=10

Fork inheritance lineage and inherited audits are included when available.
