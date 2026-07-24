# Agentic Audit Brief: Legion

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 5 (2 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Legion (`legion`)
- Website: [https://legion.cc](https://legion.cc)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 14 unique implementations (14 raw deployments)
- Coverage basis: 1/4 confirmed own live verified implementations (25.0%); conservative 25.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $935,060.71
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Legion. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across ethereum. Structural roles: 4 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: supporting (4)
- Contract kinds: contract (4)
- Detected standards: ownable (3)
- Frameworks: solady (4), openzeppelin (3), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x076ff291ea6783c17d8ac3459e1fd9da37741add`, chain 1)
- UnnamedContract (`0x3cd9e6a79446d8331101252f6ca8d943ac1777ef`, chain 1)
- UnnamedContract (`0x423781817e3998659ae3a012357e1b958e9aee06`, chain 1)
- UnnamedContract (`0x9b7ed9757e0e97e11427377fed3bb46f92d53ce9`, chain 1)
- LegionAddressRegistry (`0x58ddd0816120cab3e646dd57b9722b016552aed7`, chain 1)
- LegionBouncer (`0x4a7aca57a685c9e893f60a716415e5e588500533`, chain 1)
- LegionPreLiquidSaleV1Factory (`0x6d1a5c2c7f71c3a16a36a247f12ce8aedeb5c4e7`, chain 1)
- LegionVestingFactory (`0x7832d6730aa93f6954ca158e392b21d0a95e9e5f`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/4 (25.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 6 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 8 of 14 unique; 6 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/7
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 14
- Raw deployments: 14
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 4 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 25.0% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 1 | 14.3% | 2024-10 |
| Unknown | Tier 2 | 1 | 14.3% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LegionAddressRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388475 | `0x58ddd0816120cab3e646dd57b9722b016552aed7` | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DiamondHandsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3548a8345a37f58f232f97eb050c937fb660d514` | ⚠️ Unaudited |
| LegionBouncer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388474 | `0x4a7aca57a685c9e893f60a716415e5e588500533` | ⚠️ Unaudited |
| LegionPreLiquidSaleV1Factory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388476 | `0x6d1a5c2c7f71c3a16a36a247f12ce8aedeb5c4e7` | ⚠️ Unaudited |
| LegionPreLiquidSaleV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5acc2f2ac83e4615f85cfc9a5bc903355a3efb24` | ⚠️ Unaudited |
| LegionTokenDistributorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd009f57acece44e6e22ff481f2f325fea8a97f9d` | ⚠️ Unaudited |
| LegionVestingFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388477 | `0x7832d6730aa93f6954ca158e392b21d0a95e9e5f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388471 | `0x076ff291ea6783c17d8ac3459e1fd9da37741add` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09dea9959ab0ff4a002db455fa7b57fb8397ea72` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388472 | `0x3cd9e6a79446d8331101252f6ca8d943ac1777ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388473 | `0x423781817e3998659ae3a012357e1b958e9aee06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388478 | `0x9b7ed9757e0e97e11427377fed3bb46f92d53ce9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0beb0a8c765482c128a2986c063af5c3171ff2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1b3d4bf8ce4b4dcdbd6cea4d3c57395cc049f39` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 3
- Live contracts: 0
- Unknown liveness contracts: 3
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=3

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x09dea9959ab0ff4a002db455fa7b57fb8397ea72` | non_address_book | unknown | unknown | unverified | n/a | `0x35ed4e6ef0665f630d382a6d4e8f619a507e2b58` |
| unverified unclassified | UnnamedContract<br>`0xa0beb0a8c765482c128a2986c063af5c3171ff2f` | non_address_book | unknown | unknown | unverified | n/a | `0x35ed4e6ef0665f630d382a6d4e8f619a507e2b58` |
| unverified unclassified | UnnamedContract<br>`0xb1b3d4bf8ce4b4dcdbd6cea4d3c57395cc049f39` | non_address_book | unknown | unknown | unverified | n/a | `0x35ed4e6ef0665f630d382a6d4e8f619a507e2b58` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Code4rena - Legion EVM Audit.pdf](https://github.com/Legion-Team/legion-protocol-contracts/blob/master/audits/Code4rena%20-%20Legion%20EVM%20Audit.pdf) | Code4rena | Contest | 2024-10 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [Legion - Zenith Audit Report.pdf](https://github.com/Legion-Team/legion-protocol-contracts/blob/master/audits/Legion%20-%20Zenith%20Audit%20Report.pdf) | Zenith | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Legion-security-review_2025-07-28.pdf](https://github.com/Legion-Team/legion-protocol-contracts/blob/master/audits/Legion-security-review_2025-07-28.pdf) | Unknown | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Legion_Report1_Final.pdf](https://github.com/Legion-Team/legion-protocol-contracts/blob/master/audits/Legion_Report1_Final.pdf) | Unknown | Audit | 2024-11 | aging | Direct | address | no match | 0 | 0 | 0 | 5 | high |
| [legion_smart_contracts_-_summary_report_1.1.pdf](https://github.com/Legion-Team/legion-protocol-contracts/blob/master/audits/legion_smart_contracts_-_summary_report_1.1.pdf) | Unknown | Audit | 2024-08 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [24118] Code4rena - Legion EVM Audit.pdf — matched: Scope section mentions source code delivered in private repo; contract names extracted from findings context.
- [24119] Legion - Zenith Audit Report.pdf — no match: Scope explicitly lists two files: LegionPreLiquidSaleV1.sol and LegionPreLiquidSaleV2.sol. LegionSale.sol is referenced in findings but not in scope table; however, it is part of the audited codebase as it is imported/inherited. Audit date is report published date: February 28, 2025.
- [24120] Legion-security-review_2025-07-28.pdf — no match: Scope section explicitly lists 13 contracts. Audit date range July 28 - August 6, 2025; end date used.
- [24121] Legion_Report1_Final.pdf — no match: Extracted 5 contracts from scope table and report body. Audit date from cover page and timeline.
- [24122] legion_smart_contracts_-_summary_report_1.1.pdf — matched: All 8 contracts explicitly listed in the 'Project Targets' section (page 5) and the 'Executive Summary' scope paragraph (page 6). Audit date is August 13, 2024 from the cover page and delivery date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Code4rena - Legion EVM Audit.pdf | LegionFixedPriceSale | unmatched — not counted | — | mentioned in findings context | no |
| Code4rena - Legion EVM Audit.pdf | LegionBaseSale | unmatched — not counted | — | mentioned in findings context | no |
| Code4rena - Legion EVM Audit.pdf | LegionPreLiquidSale | unmatched — not counted | — | mentioned in findings context | no |
| Code4rena - Legion EVM Audit.pdf | LegionSealedBidAuction | unmatched — not counted | — | mentioned in findings context | no |
| Code4rena - Legion EVM Audit.pdf | LegionAddressRegistry | own contract | LegionAddressRegistry (selected) `0x58ddd0816120cab3e646dd57b9722b016552aed7` — deployed 2025-03-10 13:49:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena - Legion EVM Audit.pdf | ILegionFixedPriceSale | unmatched — not counted | — | mentioned in findings context | no |
| Code4rena - Legion EVM Audit.pdf | ECIES | unmatched — not counted | — | mentioned in findings context | no |
| Legion - Zenith Audit Report.pdf | LegionPreLiquidSaleV1 | unmatched — not counted | — | listed in scope table | no |
| Legion - Zenith Audit Report.pdf | LegionPreLiquidSaleV2 | unmatched — not counted | — | listed in scope table | no |
| Legion - Zenith Audit Report.pdf | LegionSale | unmatched — not counted | — | referenced in findings (e.g., M-1, M-2, M-4, L-2) | no |
| Legion-security-review_2025-07-28.pdf | LegionTokenDistributor | unmatched — not counted | — | listed in scope | no |
| Legion-security-review_2025-07-28.pdf | LegionReferrerFeeDistributor | unmatched — not counted | — | listed in scope | no |
| Legion-security-review_2025-07-28.pdf | LegionPositionManager | unmatched — not counted | — | listed in scope | no |
| Legion-security-review_2025-07-28.pdf | LegionCapitalRaise | unmatched — not counted | — | listed in scope | no |
| Legion-security-review_2025-07-28.pdf | LegionAbstractSale | unmatched — not counted | — | listed in scope | no |
| Legion-security-review_2025-07-28.pdf | LegionFixedPriceSale | unmatched — not counted | — | listed in scope | no |
| Legion-security-review_2025-07-28.pdf | LegionPreLiquidApprovedSale | unmatched — not counted | — | listed in scope | no |
| Legion-security-review_2025-07-28.pdf | LegionPreLiquidOpenApplicationSale | unmatched — not counted | — | listed in scope | no |
| Legion-security-review_2025-07-28.pdf | LegionSealedBidAuctionSale | unmatched — not counted | — | listed in scope | no |
| Legion-security-review_2025-07-28.pdf | LegionLinearEpochVesting | unmatched — not counted | — | listed in scope | no |
| Legion-security-review_2025-07-28.pdf | LegionLinearVesting | unmatched — not counted | — | listed in scope | no |
| Legion-security-review_2025-07-28.pdf | LegionVestingManager | unmatched — not counted | — | listed in scope | no |
| Legion-security-review_2025-07-28.pdf | ERC5192 | unmatched — not counted | — | listed in scope | no |
| Legion_Report1_Final.pdf | LegionFixedPriceSale | unmatched — not counted | — | listed in scope table and mentioned as target | no |
| Legion_Report1_Final.pdf | LegionPreLiquidSale | unmatched — not counted | — | listed in scope table and mentioned as target | no |
| Legion_Report1_Final.pdf | LegionSealedBidAuction | unmatched — not counted | — | listed in scope table and mentioned as target | no |
| Legion_Report1_Final.pdf | MockBidToken | unmatched — not counted | — | listed in scope table and mentioned as target | no |
| Legion_Report1_Final.pdf | AskToken | unmatched — not counted | — | listed in scope table and mentioned as target | no |
| legion_smart_contracts_-_summary_report_1.1.pdf | LegionAddressRegistry | own contract | LegionAddressRegistry (selected) `0x58ddd0816120cab3e646dd57b9722b016552aed7` — deployed 2025-03-10 13:49:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| legion_smart_contracts_-_summary_report_1.1.pdf | LegionKYCRegistry | unmatched — not counted | — | Listed in scope section | no |
| legion_smart_contracts_-_summary_report_1.1.pdf | LegionSealedBidAuction | unmatched — not counted | — | Listed in scope section | no |
| legion_smart_contracts_-_summary_report_1.1.pdf | LegionFixedPriceSale | unmatched — not counted | — | Listed in scope section | no |
| legion_smart_contracts_-_summary_report_1.1.pdf | LegionLinearVesting | unmatched — not counted | — | Listed in scope section | no |
| legion_smart_contracts_-_summary_report_1.1.pdf | LegionSealedBidAuctionFactory | unmatched — not counted | — | Listed in scope section | no |
| legion_smart_contracts_-_summary_report_1.1.pdf | LegionFixedPriceSaleFactory | unmatched — not counted | — | Listed in scope section | no |
| legion_smart_contracts_-_summary_report_1.1.pdf | LegionLinearVestingFactory | unmatched — not counted | — | Listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x4a7aca57a685c9e893f60a716415e5e588500533` | LegionBouncer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6d1a5c2c7f71c3a16a36a247f12ce8aedeb5c4e7` | LegionPreLiquidSaleV1Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7832d6730aa93f6954ca158e392b21d0a95e9e5f` | LegionVestingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 34 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: unique_name=2

Zero-match audit list:

- [24119] Legion - Zenith Audit Report.pdf
- [24120] Legion-security-review_2025-07-28.pdf
- [24121] Legion_Report1_Final.pdf

Fork inheritance lineage and inherited audits are included when available.
