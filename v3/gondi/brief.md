# Agentic Audit Brief: Gondi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 9 audit(s)
- Eligible audit results: 13 (9 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Gondi (`gondi`)
- Website: [https://www.gondi.xyz](https://www.gondi.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, hyperliquid
- Contract surface: 30 unique implementations (30 raw deployments)
- Coverage basis: 8/28 confirmed own live verified implementations (28.6%); conservative 28.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $709,331.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Gondi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 28 contract row(s) across ethereum, hyperliquid. Structural roles: 12 core, 11 supporting, 5 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 28
- Structural roles: core (12), supporting (11), unclassified (5)
- Contract kinds: contract (28)
- Detected standards: multicall (6), erc165 (3), erc721 (3), pausable (2), erc20permit (1)
- Frameworks: solmate (21), openzeppelin (14), permit2 (4), foundry (1), solady (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 29 contracts are derived from known codebases. 29 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xca5a49...7595bd`, chain 1)
- UnnamedContract (`0x754548...220048`, chain 999)
- AddressManager (`0x4150de...344927`, chain 1)
- AddressManager (`0x52ac42...0d7398`, chain 1)
- AddressManager (`0xf0e9ec...6e43af`, chain 1)
- AddressMethodManager (`0x4ecc15...3f8f09`, chain 1)
- AuctionLoanLiquidator (`0x97d346...2ca47d`, chain 1)
- AuctionWithBuyoutLoanLiquidator (`0x2995ae...f440f0`, chain 1)
- AuctionWithBuyoutLoanLiquidator (`0xb166ec...f4c6ad`, chain 999)
- MultiAddressValidator (`0x7d60c8...cbb40e`, chain 999)
- MultiSourceLoan (`0x478f6f...ccae16`, chain 1)
- MultiSourceLoan (`0xf41b38...c08a56`, chain 1)
- MultiSourceLoan (`0xf65b99...a7d9a8`, chain 1)
- MultiSourceLoan (`0x6ad675...927fd9`, chain 999)
- OldERC721Wrapper (`0xb14b31...46e0b9`, chain 1)
- OldERC721Wrapper (`0xc0ec4e...fc5497`, chain 1)
- PositionMigrator (`0xdcd85f...32f5b8`, chain 1)
- PurchaseBundler (`0x3b59bf...ecdf5f`, chain 1)
- PurchaseBundler (`0xcea7ee...2d260a`, chain 1)
- PurchaseBundler (`0xf46a58...506feb`, chain 1)
- PurchaseBundler (`0xfaaff6...264157`, chain 999)
- RangeValidator (`0x18905f...75573b`, chain 1)
- RangeValidator (`0x265a38...d1fb00`, chain 1)
- RangeValidator (`0xac9cd5...43a8b6`, chain 1)
- SampleCollection (`0xfaaff6...264157`, chain 1)
- SampleToken (`0x7d60c8...cbb40e`, chain 1)
- UniswapV3TwapQuoter (`0xcad3b0...1af68a`, chain 1)
- UserVault (`0x14a6dc...81976d`, chain 1)
- UserVault (`0x823de2...7e4bfe`, chain 1)

## Contract Surface Quality

- Indexed contracts: 28; live-surface contracts included: 28 (28 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 30/33 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 8/28 (28.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 30 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 30 of 30 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 8/28
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 30
- Raw deployments: 30
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 3 fresh, 1 aging, 7 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: 3.6% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| 0xFoobar or 0xQuit | Tier 2 | 3 | 10.7% | 2023-11 |
| Quantstamp | Tier 2 | 3 | 10.7% | 2023-10 |
| unknown | Tier 2 | 2 | 7.1% | 2025-08 |
| CertiK | Tier 2 | 1 | 3.6% | 2023-07 |
| Code4Arena | Tier 2 | 1 | 3.6% | 2025-01 |
| Trail of Bits | Tier 1 | 1 | 3.6% | 2023-07 |
| Zenith | Tier 2 | 1 | 3.6% | 2026-02 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AuctionLoanLiquidator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386888 | `0x237e44...e17091` | ✅ Audited |
| AuctionLoanLiquidator | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-386912 | `0x97d346...2ca47d` | ✅ Audited |
| MultiAddressValidator | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386942 | `0x7d60c8...cbb40e` | ✅ Audited |
| MultiSourceLoan | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386898 | `0x478f6f...ccae16` | ✅ Audited |
| MultiSourceLoan | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386930 | `0xf41b38...c08a56` | ✅ Audited |
| PositionMigrator | periphery | project_anchor | own_supporting | 0 | ethereum | unit-386926 | `0xdcd85f...32f5b8` | ✅ Audited |
| PurchaseBundler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386895 | `0x3b59bf...ecdf5f` | ✅ Audited |
| UserVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-386884 | `0x14a6dc...81976d` | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-386897 | `0x4150de...344927` | ⚠️ Unaudited |
| AddressManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-386902 | `0x52ac42...0d7398` | ⚠️ Unaudited |
| AddressManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-386928 | `0xf0e9ec...6e43af` | ⚠️ Unaudited |
| AddressMethodManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-386900 | `0x4ecc15...3f8f09` | ⚠️ Unaudited |
| AuctionWithBuyoutLoanLiquidator | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-386893 | `0x2995ae...f440f0` | ⚠️ Unaudited |
| AuctionWithBuyoutLoanLiquidator | operational_periphery | project_anchor | own_supporting | 0 | hyperliquid | unit-386944 | `0xb166ec...f4c6ad` | ⚠️ Unaudited |
| MultiSourceLoan | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386934 | `0xf65b99...a7d9a8` | ⚠️ Unaudited |
| MultiSourceLoan | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386938 | `0x6ad675...927fd9` | ⚠️ Unaudited |
| OldERC721Wrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386916 | `0xb14b31...46e0b9` | ⚠️ Unaudited |
| OldERC721Wrapper | token | project_anchor | own_supporting | 0 | ethereum | unit-386919 | `0xc0ec4e...fc5497` | ⚠️ Unaudited |
| PurchaseBundler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386925 | `0xcea7ee...2d260a` | ⚠️ Unaudited |
| PurchaseBundler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386932 | `0xf46a58...506feb` | ⚠️ Unaudited |
| PurchaseBundler | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386946 | `0xfaaff6...264157` | ⚠️ Unaudited |
| RangeValidator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386886 | `0x18905f...75573b` | ⚠️ Unaudited |
| RangeValidator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386891 | `0x265a38...d1fb00` | ⚠️ Unaudited |
| RangeValidator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386914 | `0xac9cd5...43a8b6` | ⚠️ Unaudited |
| SampleCollection | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386936 | `0xfaaff6...264157` | ⚠️ Unaudited |
| SampleToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386908 | `0x7d60c8...cbb40e` | ⚠️ Unaudited |
| UniswapV3TwapQuoter | periphery | project_anchor | own_supporting | 0 | ethereum | unit-386923 | `0xcad3b0...1af68a` | ⚠️ Unaudited |
| UserVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-386910 | `0x823de2...7e4bfe` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386921 | `0xca5a49...7595bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386940 | `0x754548...220048` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/W2WSJrV6PSLWo4p8vIGq/uploads/aRsUvzn1bAxcW38gJGOA/Gondi - Zenith Audit Report (5).pdf](https://2893171050-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FW2WSJrV6PSLWo4p8vIGq%2Fuploads%2FaRsUvzn1bAxcW38gJGOA%2FGondi%20-%20Zenith%20Audit%20Report%20(5).pdf) | Zenith | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Gondi - Zenith Audit Report.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/zenith-security/reports/985c60dd51497dfd8540cdc16bf243265ba154b5/reports/Gondi%20-%20Zenith%20Audit%20Report.pdf) | unknown | Audit | 2025-08 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 2 | high |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1ouZw7PhmvG7Gqlc6SkEcYDYazFs9D9PP/view?usp=sharing) | Zenith | Audit | 2025-11 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1w_o5mZkJL0AItg1MbWzx8tevgONm_Yte/view) | Halborn | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1hBwUm9uYzdwqJTr6rKXyToG7DCyNAA7c/view?usp=sharing) | Halborn | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 24 | high |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1si2u_INncwLINa_XEjWGctLMyIUqJXD5/view?usp=sharing) | Halborn | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 3 | low |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1-l-c2peae3hUnOeuZ62js-xgiXKbtvod/view?usp=sharing) | Quantstamp | Audit | 2023-10 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 6 | high |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1JQ2HZzfR-y2mDfy29idBmAPUDCYH6nh9/view?usp=sharing) | 0xFoobar or 0xQuit | Audit | 2023-11 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1CtB99Qz2pJosEDZ5Bui4QGqKBJxoUut0/view?usp=sharing) | 0xFoobar or 0xQuit | Audit | 2023-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | low |
| [{% embed url="<>" %}](https://drive.google.com/file/d/140tc97VA_-YdPmJ1aH606fzVtOIMy7a_/view?usp=sharing) | Code4Arena | Audit | 2025-01 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [{% embed url="<>" %}](https://www.gondi.xyz/audits/v1-trail-of-bits-audit.pdf) | Trail of Bits | Audit | 2023-07 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [{% embed url="<>" %}](https://www.gondi.xyz/audits/v1-certik-audit.pdf) | CertiK | Audit | 2023-07 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3094] spaces/W2WSJrV6PSLWo4p8vIGq/uploads/aRsUvzn1bAxcW38gJGOA/Gondi - Zenith Audit Report (5).pdf — no match: Extracted contracts from scope table and findings. Audit date from report published date.
- [3095] Gondi - Zenith Audit Report.pdf — matched: Extracted contracts from scope table and findings. Audit dates: start Aug 25, end Aug 27, report published Sep 1, 2025. Using end date.
- [27083] {% embed url="<>" %} — matched: Only one contract (PositionMigrator) is explicitly in scope. The scope section mentions 'florida-contracts' repository and 'Changes in PR-492', but only PositionMigrator.sol is referenced in findings.
- [27084] {% embed url="<>" %} — no match: Extracted 25 contract names from the scope section of the audit report. Audit date is the end date of the engagement (May 3rd, 2024).
- [27085] {% embed url="<>" %} — no match: Extracted 24 contract names from the scope section. Audit date from 'Issuedate 5/10/2024'.
- [27086] {% embed url="<>" %} — no match: No explicit scope section; contracts inferred from findings. No date found.
- [27087] {% embed url="<>" %} — matched: Extracted contracts from scope section and file signatures. Excluded test files and validators as per scope exclusion.
- [27088] {% embed url="<>" %} — matched: Extracted contract names from findings sections; scope section mentions commit hash and repository but no explicit contract list; audit date from title.
- [27089] {% embed url="<>" %} — matched: Only one contract name explicitly mentioned; no scope section or file paths provided.
- [27090] {% embed url="<>" %} — matched: Scope section lists repository and commit hash but not individual files. Contract names extracted from findings targets.
- [27091] {% embed url="<>" %} — matched: Contracts explicitly mentioned in Project Coverage section as targets of review.
- [27092] {% embed url="<>" %} — matched: Audit scope table lists 5 files: BaseLoan.sol (two versions), MultiSourceLoan.sol (two versions), SingleSourceLoan.sol. Additional contracts (Vault, AuctionLoanLiquidator, interfaces) are referenced in findings but not in the scope table; they are included as they are part of the codebase under audit.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/W2WSJrV6PSLWo4p8vIGq/uploads/aRsUvzn1bAxcW38gJGOA/Gondi - Zenith Audit Report (5).pdf | PurchaseBundler | ambiguous — not counted | PurchaseBundler (alternative) `0xfaaff6...264157` — deployed 2025-10-07 16:38:00+03 — liveness: live (current_address_book_code)<br>PurchaseBundler (alternative) `0xf46a58...506feb` — deployed 2026-05-19 18:20:59+03 — liveness: live (current_address_book_code)<br>PurchaseBundler (alternative) `0x3b59bf...ecdf5f` — deployed 2025-03-03 03:11:59+03 — liveness: live (current_address_book_code)<br>PurchaseBundler (alternative) `0xcea7ee...2d260a` — deployed 2026-05-20 19:37:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/W2WSJrV6PSLWo4p8vIGq/uploads/aRsUvzn1bAxcW38gJGOA/Gondi - Zenith Audit Report (5).pdf | Quoter | unmatched — not counted | — | listed in scope and findings | no |
| spaces/W2WSJrV6PSLWo4p8vIGq/uploads/aRsUvzn1bAxcW38gJGOA/Gondi - Zenith Audit Report (5).pdf | MultiSourceLoan | ambiguous — not counted | MultiSourceLoan (alternative) `0x6ad675...927fd9` — deployed 2025-10-06 15:27:00+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0xf65b99...a7d9a8` — deployed 2024-09-02 17:43:11+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0x478f6f...ccae16` — deployed 2023-11-12 16:21:47+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0xf41b38...c08a56` — deployed 2025-09-15 21:18:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/W2WSJrV6PSLWo4p8vIGq/uploads/aRsUvzn1bAxcW38gJGOA/Gondi - Zenith Audit Report (5).pdf | TradeMarketplace | unmatched — not counted | — | referenced in findings as target | no |
| Gondi - Zenith Audit Report.pdf | MultiSourceLoan | own contract | MultiSourceLoan (alternative) `0x6ad675...927fd9` — deployed 2025-10-06 15:27:00+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0xf65b99...a7d9a8` — deployed 2024-09-02 17:43:11+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0x478f6f...ccae16` — deployed 2023-11-12 16:21:47+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (selected) `0xf41b38...c08a56` — deployed 2025-09-15 21:18:59+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-09-15 was 19d from audit; next candidate 40d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Gondi - Zenith Audit Report.pdf | IMultiSourceLoan | unmatched — not counted | — | Referenced in finding M-1 as target file. | no |
| Gondi - Zenith Audit Report.pdf | Hash | unmatched — not counted | — | Referenced in finding M-1 as target file. | no |
| Gondi - Zenith Audit Report.pdf | MultiAddressValidator | own contract | SampleToken (alternative) `0x7d60c8...cbb40e` — deployed 2023-07-11 02:16:35+03 — liveness: live (current_address_book_code)<br>MultiAddressValidator (selected) `0x7d60c8...cbb40e` — deployed 2025-10-07 16:40:00+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-07 was 41d from audit; next candidate 778d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| {% embed url="<>" %} | PositionMigrator | own contract | PositionMigrator (selected) `0xdcd85f...32f5b8` — deployed 2025-11-11 19:42:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| {% embed url="<>" %} | CallbackHandler | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | PurchaseBundler | ambiguous — not counted | PurchaseBundler (alternative) `0xfaaff6...264157` — deployed 2025-10-07 16:38:00+03 — liveness: live (current_address_book_code)<br>PurchaseBundler (alternative) `0xf46a58...506feb` — deployed 2026-05-19 18:20:59+03 — liveness: live (current_address_book_code)<br>PurchaseBundler (alternative) `0x3b59bf...ecdf5f` — deployed 2025-03-03 03:11:59+03 — liveness: live (current_address_book_code)<br>PurchaseBundler (alternative) `0xcea7ee...2d260a` — deployed 2026-05-20 19:37:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| {% embed url="<>" %} | BaseLoan | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | BaseLoanHelpers | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | LoanManager | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | LoanManagerRegistry | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | MultiSourceLoan | ambiguous — not counted | MultiSourceLoan (alternative) `0x6ad675...927fd9` — deployed 2025-10-06 15:27:00+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0xf65b99...a7d9a8` — deployed 2024-09-02 17:43:11+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0x478f6f...ccae16` — deployed 2023-11-12 16:21:47+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0xf41b38...c08a56` — deployed 2025-09-15 21:18:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| {% embed url="<>" %} | WithLoanManagers | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | BytesLib | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | Hash | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | Interest | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | TwoStepOwned | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | ValidatorHelpers | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | WithProtocolFee | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | NftBitVectorValidator | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | NftPackedListValidator | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | RangeValidator | ambiguous — not counted | RangeValidator (alternative) `0x18905f...75573b` — deployed 2023-07-11 01:25:47+03 — liveness: live (current_address_book_code)<br>RangeValidator (alternative) `0x265a38...d1fb00` — deployed 2023-11-13 22:44:59+03 — liveness: live (current_address_book_code)<br>RangeValidator (alternative) `0xac9cd5...43a8b6` — deployed 2024-09-02 19:23:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| {% embed url="<>" %} | AddressManager | ambiguous — not counted | AddressManager (alternative) `0x52ac42...0d7398` — deployed 2023-07-10 23:02:35+03 — liveness: live (current_address_book_code)<br>AddressManager (alternative) `0xf0e9ec...6e43af` — deployed 2026-05-19 18:19:35+03 — liveness: live (current_address_book_code)<br>AddressManager (alternative) `0x4150de...344927` — deployed 2023-07-10 22:28:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| {% embed url="<>" %} | AuctionLoanLiquidator | ambiguous — not counted | AuctionLoanLiquidator (alternative) `0x237e44...e17091` — deployed 2023-07-10 23:03:11+03 — liveness: live (current_address_book_code)<br>AuctionLoanLiquidator (alternative) `0x97d346...2ca47d` — deployed 2023-11-11 22:11:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| {% embed url="<>" %} | AuctionWithBuyoutLoanLiquidator | ambiguous — not counted | AuctionWithBuyoutLoanLiquidator (alternative) `0xb166ec...f4c6ad` — deployed 2025-10-02 18:51:45+03 — liveness: live (current_address_book_code)<br>AuctionWithBuyoutLoanLiquidator (alternative) `0x2995ae...f440f0` — deployed 2024-09-02 17:42:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| {% embed url="<>" %} | InputChecker | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | LiquidationDistributor | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | LiquidationHandler | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | Multicall | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | UserVault | ambiguous — not counted | UserVault (alternative) `0x14a6dc...81976d` — deployed 2023-11-13 16:21:11+03 — liveness: live (current_address_book_code)<br>UserVault (alternative) `0x823de2...7e4bfe` — deployed 2024-11-01 18:41:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| {% embed url="<>" %} | AddressManager | ambiguous — not counted | AddressManager (alternative) `0x52ac42...0d7398` — deployed 2023-07-10 23:02:35+03 — liveness: live (current_address_book_code)<br>AddressManager (alternative) `0xf0e9ec...6e43af` — deployed 2026-05-19 18:19:35+03 — liveness: live (current_address_book_code)<br>AddressManager (alternative) `0x4150de...344927` — deployed 2023-07-10 22:28:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| {% embed url="<>" %} | AuctionLoanLiquidator | ambiguous — not counted | AuctionLoanLiquidator (alternative) `0x237e44...e17091` — deployed 2023-07-10 23:03:11+03 — liveness: live (current_address_book_code)<br>AuctionLoanLiquidator (alternative) `0x97d346...2ca47d` — deployed 2023-11-11 22:11:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| {% embed url="<>" %} | AuctionWithBuyoutLoanLiquidator | ambiguous — not counted | AuctionWithBuyoutLoanLiquidator (alternative) `0xb166ec...f4c6ad` — deployed 2025-10-02 18:51:45+03 — liveness: live (current_address_book_code)<br>AuctionWithBuyoutLoanLiquidator (alternative) `0x2995ae...f440f0` — deployed 2024-09-02 17:42:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| {% embed url="<>" %} | InputChecker | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | LiquidationDistributor | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | LiquidationHandler | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | Multicall | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | UserVault | ambiguous — not counted | UserVault (alternative) `0x14a6dc...81976d` — deployed 2023-11-13 16:21:11+03 — liveness: live (current_address_book_code)<br>UserVault (alternative) `0x823de2...7e4bfe` — deployed 2024-11-01 18:41:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| {% embed url="<>" %} | CallbackHandler | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | PurchaseBundler | ambiguous — not counted | PurchaseBundler (alternative) `0xfaaff6...264157` — deployed 2025-10-07 16:38:00+03 — liveness: live (current_address_book_code)<br>PurchaseBundler (alternative) `0xf46a58...506feb` — deployed 2026-05-19 18:20:59+03 — liveness: live (current_address_book_code)<br>PurchaseBundler (alternative) `0x3b59bf...ecdf5f` — deployed 2025-03-03 03:11:59+03 — liveness: live (current_address_book_code)<br>PurchaseBundler (alternative) `0xcea7ee...2d260a` — deployed 2026-05-20 19:37:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| {% embed url="<>" %} | BaseLoan | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | BaseLoanHelpers | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | LoanManager | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | LoanManagerRegistry | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | MultiSourceLoan | ambiguous — not counted | MultiSourceLoan (alternative) `0x6ad675...927fd9` — deployed 2025-10-06 15:27:00+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0xf65b99...a7d9a8` — deployed 2024-09-02 17:43:11+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0x478f6f...ccae16` — deployed 2023-11-12 16:21:47+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0xf41b38...c08a56` — deployed 2025-09-15 21:18:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| {% embed url="<>" %} | WithLoanManager | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | Hash | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | Interest | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | TwoStepOwned | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | ValidatorHelpers | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | WithProtocolFee | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | NftBitVectorValidator | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | NftPackedListValidator | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | RangeValidator | ambiguous — not counted | RangeValidator (alternative) `0x18905f...75573b` — deployed 2023-07-11 01:25:47+03 — liveness: live (current_address_book_code)<br>RangeValidator (alternative) `0x265a38...d1fb00` — deployed 2023-11-13 22:44:59+03 — liveness: live (current_address_book_code)<br>RangeValidator (alternative) `0xac9cd5...43a8b6` — deployed 2024-09-02 19:23:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| {% embed url="<>" %} | MultiSourceLoan | ambiguous — not counted | MultiSourceLoan (alternative) `0x6ad675...927fd9` — deployed 2025-10-06 15:27:00+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0xf65b99...a7d9a8` — deployed 2024-09-02 17:43:11+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0x478f6f...ccae16` — deployed 2023-11-12 16:21:47+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0xf41b38...c08a56` — deployed 2025-09-15 21:18:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| {% embed url="<>" %} | OraclePoolOfferHandler | unmatched — not counted | — | mentioned in findings | no |
| {% embed url="<>" %} | Pool | unmatched — not counted | — | mentioned in findings | no |
| {% embed url="<>" %} | AddressManager | ambiguous — not counted | AddressManager (alternative) `0x52ac42...0d7398` — deployed 2023-07-10 23:02:35+03 — liveness: live (current_address_book_code)<br>AddressManager (alternative) `0xf0e9ec...6e43af` — deployed 2026-05-19 18:19:35+03 — liveness: live (current_address_book_code)<br>AddressManager (alternative) `0x4150de...344927` — deployed 2023-07-10 22:28:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| {% embed url="<>" %} | UserVault | own contract | UserVault (selected) `0x14a6dc...81976d` — deployed 2023-11-13 16:21:11+03 — liveness: live (current_address_book_code)<br>UserVault (alternative) `0x823de2...7e4bfe` — deployed 2024-11-01 18:41:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-11-13 was 24d from audit; next candidate 378d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| {% embed url="<>" %} | AuctionLoanLiquidator | own contract | AuctionLoanLiquidator (alternative) `0x237e44...e17091` — deployed 2023-07-10 23:03:11+03 — liveness: live (current_address_book_code)<br>AuctionLoanLiquidator (selected) `0x97d346...2ca47d` — deployed 2023-11-11 22:11:35+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-11-11 was 22d from audit; next candidate 102d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| {% embed url="<>" %} | Hash | unmatched — not counted | — | listed in file signatures | no |
| {% embed url="<>" %} | Interest | unmatched — not counted | — | listed in file signatures | no |
| {% embed url="<>" %} | Leverage | unmatched — not counted | — | listed in scope and file signatures | no |
| {% embed url="<>" %} | MultiSourceLoan | own contract | MultiSourceLoan (alternative) `0x6ad675...927fd9` — deployed 2025-10-06 15:27:00+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0xf65b99...a7d9a8` — deployed 2024-09-02 17:43:11+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (selected) `0x478f6f...ccae16` — deployed 2023-11-12 16:21:47+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0xf41b38...c08a56` — deployed 2025-09-15 21:18:59+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-11-12 was 23d from audit; next candidate 318d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| {% embed url="<>" %} | BaseLoan | unmatched — not counted | — | listed in scope and file signatures | no |
| {% embed url="<>" %} | WithCallbacks | unmatched — not counted | — | listed in file signatures | no |
| {% embed url="<>" %} | UserVault | own contract | UserVault (selected) `0x14a6dc...81976d` — deployed 2023-11-13 16:21:11+03 — liveness: live (current_address_book_code)<br>UserVault (alternative) `0x823de2...7e4bfe` — deployed 2024-11-01 18:41:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-11-13 was 10d from audit; next candidate 364d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| {% embed url="<>" %} | IWrappedPunk | unmatched — not counted | — | listed in findings | no |
| {% embed url="<>" %} | Leverage | unmatched — not counted | — | listed in findings | no |
| {% embed url="<>" %} | MultiSourceLoan | own contract | MultiSourceLoan (alternative) `0x6ad675...927fd9` — deployed 2025-10-06 15:27:00+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0xf65b99...a7d9a8` — deployed 2024-09-02 17:43:11+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (selected) `0x478f6f...ccae16` — deployed 2023-11-12 16:21:47+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0xf41b38...c08a56` — deployed 2025-09-15 21:18:59+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-11-12 was 9d from audit; next candidate 304d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| {% embed url="<>" %} | Interest | unmatched — not counted | — | listed in findings | no |
| {% embed url="<>" %} | AddressManager | ambiguous — not counted | AddressManager (alternative) `0x52ac42...0d7398` — deployed 2023-07-10 23:02:35+03 — liveness: live (current_address_book_code)<br>AddressManager (alternative) `0xf0e9ec...6e43af` — deployed 2026-05-19 18:19:35+03 — liveness: live (current_address_book_code)<br>AddressManager (alternative) `0x4150de...344927` — deployed 2023-07-10 22:28:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| {% embed url="<>" %} | AuctionLoanLiquidator | own contract | AuctionLoanLiquidator (alternative) `0x237e44...e17091` — deployed 2023-07-10 23:03:11+03 — liveness: live (current_address_book_code)<br>AuctionLoanLiquidator (selected) `0x97d346...2ca47d` — deployed 2023-11-11 22:11:35+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-11-11 was 14d from audit; next candidate 110d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| {% embed url="<>" %} | PurchaseBundler | own contract | PurchaseBundler (alternative) `0xfaaff6...264157` — deployed 2025-10-07 16:38:00+03 — liveness: live (current_address_book_code)<br>PurchaseBundler (alternative) `0xf46a58...506feb` — deployed 2026-05-19 18:20:59+03 — liveness: live (current_address_book_code)<br>PurchaseBundler (selected) `0x3b59bf...ecdf5f` — deployed 2025-03-03 03:11:59+03 — liveness: live (current_address_book_code)<br>PurchaseBundler (alternative) `0xcea7ee...2d260a` — deployed 2026-05-20 19:37:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-03-03 was 41d from audit; next candidate 259d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| {% embed url="<>" %} | TradeMarketplace | unmatched — not counted | — | Target in findings M-4, I-4 | no |
| {% embed url="<>" %} | Hash | unmatched — not counted | — | Target in finding L-3 | no |
| {% embed url="<>" %} | MultiSourceLoan | ambiguous — not counted | MultiSourceLoan (alternative) `0x6ad675...927fd9` — deployed 2025-10-06 15:27:00+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0xf65b99...a7d9a8` — deployed 2024-09-02 17:43:11+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0x478f6f...ccae16` — deployed 2023-11-12 16:21:47+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0xf41b38...c08a56` — deployed 2025-09-15 21:18:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| {% embed url="<>" %} | MultiSourceLoan | ambiguous — not counted | MultiSourceLoan (alternative) `0x6ad675...927fd9` — deployed 2025-10-06 15:27:00+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0xf65b99...a7d9a8` — deployed 2024-09-02 17:43:11+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0x478f6f...ccae16` — deployed 2023-11-12 16:21:47+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0xf41b38...c08a56` — deployed 2025-09-15 21:18:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| {% embed url="<>" %} | AuctionLoanLiquidator | own contract | AuctionLoanLiquidator (selected) `0x237e44...e17091` — deployed 2023-07-10 23:03:11+03 — liveness: live (current_address_book_code)<br>AuctionLoanLiquidator (alternative) `0x97d346...2ca47d` — deployed 2023-11-11 22:11:35+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-07-10 was 18d from audit; next candidate 106d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| {% embed url="<>" %} | BaseLoan | unmatched — not counted | — | listed in Project Coverage | no |
| {% embed url="<>" %} | Vault | unmatched — not counted | — | mentioned as deprecated but part of scope | no |
| {% embed url="<>" %} | SingleSourceLoan | unmatched — not counted | — | mentioned as deprecated but part of scope | no |
| {% embed url="<>" %} | BaseLoan | unmatched — not counted | — | listed in audit scope table | no |
| {% embed url="<>" %} | MultiSourceLoan | ambiguous — not counted | MultiSourceLoan (alternative) `0x6ad675...927fd9` — deployed 2025-10-06 15:27:00+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0xf65b99...a7d9a8` — deployed 2024-09-02 17:43:11+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0x478f6f...ccae16` — deployed 2023-11-12 16:21:47+03 — liveness: live (current_address_book_code)<br>MultiSourceLoan (alternative) `0xf41b38...c08a56` — deployed 2025-09-15 21:18:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| {% embed url="<>" %} | SingleSourceLoan | unmatched — not counted | — | listed in audit scope table | no |
| {% embed url="<>" %} | Vault | unmatched — not counted | — | mentioned in findings (LIB-01) | no |
| {% embed url="<>" %} | AuctionLoanLiquidator | own contract | AuctionLoanLiquidator (selected) `0x237e44...e17091` — deployed 2023-07-10 23:03:11+03 — liveness: live (current_address_book_code)<br>AuctionLoanLiquidator (alternative) `0x97d346...2ca47d` — deployed 2023-11-11 22:11:35+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-07-10 was 17d from audit; next candidate 107d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| {% embed url="<>" %} | IBaseLoan | unmatched — not counted | — | mentioned in findings (LON-01, SRC-01) | no |
| {% embed url="<>" %} | IMultiSourceLoan | unmatched — not counted | — | mentioned in findings (LON-01) | no |
| {% embed url="<>" %} | ISingleSourceLoan | unmatched — not counted | — | mentioned in findings (LON-01) | no |
| {% embed url="<>" %} | LoanManager | unmatched — not counted | — | mentioned in findings (BLB-02, SSL-01) | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x4150de...344927` | AddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x52ac42...0d7398` | AddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf0e9ec...6e43af` | AddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4ecc15...3f8f09` | AddressMethodManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2995ae...f440f0` | AuctionWithBuyoutLoanLiquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xb166ec...f4c6ad` | AuctionWithBuyoutLoanLiquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf65b99...a7d9a8` | MultiSourceLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x6ad675...927fd9` | MultiSourceLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb14b31...46e0b9` | OldERC721Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc0ec4e...fc5497` | OldERC721Wrapper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcea7ee...2d260a` | PurchaseBundler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf46a58...506feb` | PurchaseBundler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xfaaff6...264157` | PurchaseBundler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x18905f...75573b` | RangeValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x265a38...d1fb00` | RangeValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xac9cd5...43a8b6` | RangeValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfaaff6...264157` | SampleCollection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7d60c8...cbb40e` | SampleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x823de2...7e4bfe` | UserVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 12 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 22 ambiguous, 61 unmatched
- Matched-own operational status: 12 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=10, low=2
- Match method counts: temporal_name=12, unique_name=1

Zero-match audit list:

- [3094] spaces/W2WSJrV6PSLWo4p8vIGq/uploads/aRsUvzn1bAxcW38gJGOA/Gondi - Zenith Audit Report (5).pdf
- [27084] {% embed url="<>" %}
- [27085] {% embed url="<>" %}
- [27086] {% embed url="<>" %}

Fork inheritance lineage and inherited audits are included when available.
