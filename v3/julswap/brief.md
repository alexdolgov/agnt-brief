# Agentic Audit Brief: JulSwap

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

- Project: JulSwap (`julswap`)
- Website: [https://julswap.com/#/swap](https://julswap.com/#/swap)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, bsc, ethereum, optimism, polygon
- Contract surface: 16 unique implementations (16 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $346,754.70
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for JulSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across avalanche, bsc, ethereum, optimism, polygon. Structural roles: 2 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x95ae3f...56ec95`, chain 10)
- UnnamedContract (`0x65244a...456257`, chain 56)
- UnnamedContract (`0x441f29...979847`, chain 137)
- UnnamedContract (`0x9f5be7...319d5e`, chain 43114)
- BSCswapRouter (`0xbd67d1...c788b2`, chain 56)
- OptimizedTransparentUpgradeableProxy (`0x16a7b3...a8a864`, chain 1)

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 10 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 6 of 16 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 16
- Raw deployments: 16
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 50.0% | 2021-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BSCswapRouter | unknown | project_anchor | own_supporting | 0 | bsc | unit-243516 | `0xbd67d1...c788b2` | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BSCswapPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x57108b...88b0ea` | ⚠️ Unaudited |
| JulProtocolV3_BSC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4edfbd...a08037` | ⚠️ Unaudited |
| JulSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a41f6...6577ea` | ⚠️ Unaudited |
| JulSwapCrossChainNode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x16a7b3...a8a864` | ⚠️ Unaudited |
| MultiCall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e6dd9...d7d83e` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-243517 | `0x16a7b3...a8a864` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5dffc9...95a63c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-243512 | `0x95ae3f...56ec95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16a7b3...a8a864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x441f29...979847` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-243515 | `0x65244a...456257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95ae3f...56ec95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f5be7...319d5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243513 | `0x441f29...979847` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-243514 | `0x9f5be7...319d5e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [10102020_Jul_Protocol_SC_Third_Audit_Report.pdf](https://github.com/JulSwap/audits/blob/main/10102020_Jul_Protocol_SC_Third_Audit_Report.pdf) | unknown | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [15052021_JulPad_SecondReview_SC_Audit_Report.pdf](https://github.com/JulSwap/audits/blob/main/15052021_JulPad_SecondReview_SC_Audit_Report.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [17112020_JulLimitOrder_SC_Audit_Report.pdf](https://github.com/JulSwap/audits/blob/main/17112020_JulLimitOrder_SC_Audit_Report.pdf) | unknown | Audit | 2020-11 | stale | Direct | address | no match | 0 | 0 | 0 | 3 | high |
| [25022021 JULSWAP_SC_Audit_Report.pdf](https://github.com/JulSwap/audits/blob/main/25022021%20JULSWAP_SC_Audit_Report.pdf) | unknown | Audit | 2021-02 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20595] 10102020_Jul_Protocol_SC_Third_Audit_Report.pdf — no match: Scope section lists the repository; AS-IS overview details two contracts: UniswapV2Library.sol and JulProtocol.sol. Audit date is October 10, 2020 (third audit).
- [20596] 15052021_JulPad_SecondReview_SC_Audit_Report.pdf — no match: All contracts listed in the Scope section of the report.
- [20597] 17112020_JulLimitOrder_SC_Audit_Report.pdf — no match: Scope explicitly lists three files: BSCswapHandler.sol, LimitOrderCore.sol, LimitOrders.sol. Audit date is the end date of the timeline (17 NOV 2020).
- [20598] 25022021 JULSWAP_SC_Audit_Report.pdf — matched: Scope section lists four Solidity files: BSCswapBEP20.sol, BSCswapFactory.sol, BSCswapPair.sol, BSCswapRouter.sol. Audit date is February 25, 2021 from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 10102020_Jul_Protocol_SC_Third_Audit_Report.pdf | JulProtocol | unmatched — not counted | — | listed in scope and AS-IS overview | no |
| 10102020_Jul_Protocol_SC_Third_Audit_Report.pdf | UniswapV2Library | unmatched — not counted | — | listed in AS-IS overview as part of scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | JulPadCertifiedPresale | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | JulPadTierLock | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | IBSCswapRouter01 | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | JulSwapPairMock | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | JulPadToken | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | IBSCswapPair | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | JulPadCertifiedPresaleTimer | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | JulSwapRouterMock | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | MockJulb | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | MockWbnb | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | BasisPoints | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | JulPadDeployerPresale | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | JulPadDeployerTimer | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | JulPadDeployerToken | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | IBSCswapBEP20 | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | Migrations | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | IBEP20 | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | IBSCswapFactory | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | IWBNB | unmatched — not counted | — | listed in scope | no |
| 15052021_JulPad_SecondReview_SC_Audit_Report.pdf | IBSCswapCallee | unmatched — not counted | — | listed in scope | no |
| 17112020_JulLimitOrder_SC_Audit_Report.pdf | BSCswapHandler | unmatched — not counted | — | listed in scope files | no |
| 17112020_JulLimitOrder_SC_Audit_Report.pdf | LimitOrderCore | unmatched — not counted | — | listed in scope files and deployed address | no |
| 17112020_JulLimitOrder_SC_Audit_Report.pdf | LimitOrders | unmatched — not counted | — | listed in scope files and deployed address | no |
| 25022021 JULSWAP_SC_Audit_Report.pdf | BSCswapBEP20 | unmatched — not counted | — | listed in scope | no |
| 25022021 JULSWAP_SC_Audit_Report.pdf | BSCswapFactory | unmatched — not counted | — | listed in scope | no |
| 25022021 JULSWAP_SC_Audit_Report.pdf | BSCswapPair | unmatched — not counted | — | listed in scope | no |
| 25022021 JULSWAP_SC_Audit_Report.pdf | BSCswapRouter | own contract | BSCswapRouter (selected) `0xbd67d1...c788b2` — deployed 2020-09-25 12:07:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x16a7b3...a8a864` | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 28 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: unique_name=1

Zero-match audit list:

- [20595] 10102020_Jul_Protocol_SC_Third_Audit_Report.pdf
- [20596] 15052021_JulPad_SecondReview_SC_Audit_Report.pdf
- [20597] 17112020_JulLimitOrder_SC_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
