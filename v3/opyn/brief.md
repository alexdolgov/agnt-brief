# Agentic Audit Brief: Opyn

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 4 audit(s)
- Eligible audit results: 4 (4 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Opyn (`opyn`)
- Website: [https://www.opyn.co](https://www.opyn.co)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, ethereum, polygon
- Contract surface: 68 unique implementations (68 raw deployments)
- Coverage basis: 2/9 confirmed own live verified implementations (22.2%); conservative 22.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,501,501.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Opyn. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 12 contract row(s) across arbitrum, avalanche, ethereum, polygon. Structural roles: 10 unclassified, 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 12
- Structural roles: unclassified (10), core (2)
- Contract kinds: contract (12)
- Detected standards: none
- Frameworks: openzeppelin (2), foundry (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 49 contracts are derived from known codebases. 49 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0890e8...dd4378`, chain 1)
- UnnamedContract (`0x11ac0c...086a04`, chain 1)
- UnnamedContract (`0x1e31f2...15cbe4`, chain 1)
- UnnamedContract (`0x27a8ee...a02c40`, chain 1)
- UnnamedContract (`0x2d483f...c06f8c`, chain 1)
- UnnamedContract (`0x30b305...341fc6`, chain 1)
- UnnamedContract (`0x32485c...84cfef`, chain 1)
- UnnamedContract (`0x3923ae...954bfb`, chain 1)
- UnnamedContract (`0x3b4304...9e9e84`, chain 1)
- UnnamedContract (`0x3c0638...86189b`, chain 1)
- UnnamedContract (`0x45fdc9...cfa95a`, chain 1)
- UnnamedContract (`0x466195...8813bf`, chain 1)
- UnnamedContract (`0x4ccc23...58dc72`, chain 1)
- UnnamedContract (`0x593480...56c6ef`, chain 1)
- UnnamedContract (`0x733171...4ee66a`, chain 1)
- UnnamedContract (`0x7c0679...4bdf8e`, chain 1)
- UnnamedContract (`0x7c9179...12146d`, chain 1)
- UnnamedContract (`0x8f7dd6...4f70ac`, chain 1)
- UnnamedContract (`0x908fa5...21918c`, chain 1)
- UnnamedContract (`0xa0647d...e43efd`, chain 1)
- UnnamedContract (`0xa5ea18...0a6779`, chain 1)
- UnnamedContract (`0xab8724...5c1e6b`, chain 1)
- UnnamedContract (`0x1f8977...3c743e`, chain 137)
- UnnamedContract (`0x30ae5d...afa56d`, chain 137)
- UnnamedContract (`0x4b119a...97eef6`, chain 137)
- UnnamedContract (`0x5c16b2...45c057`, chain 137)
- UnnamedContract (`0x7a1d9a...c00fd0`, chain 137)
- UnnamedContract (`0x7a23c7...b0b203`, chain 137)
- UnnamedContract (`0x9e435a...71d012`, chain 137)
- UnnamedContract (`0xa87ecd...a6bbfe`, chain 137)
- UnnamedContract (`0xb03036...18f658`, chain 137)
- UnnamedContract (`0xc7a02e...9b8fa3`, chain 137)
- UnnamedContract (`0xc88bd7...7eba93`, chain 137)
- UnnamedContract (`0xedd70e...b1397c`, chain 137)
- UnnamedContract (`0x4d3a52...5c654d`, chain 42161)
- UnnamedContract (`0x52b933...3cd40a`, chain 42161)
- UnnamedContract (`0x63d8d2...aeb051`, chain 42161)
- UnnamedContract (`0x7a1e6f...5357c5`, chain 42161)
- UnnamedContract (`0x913320...a85053`, chain 42161)
- UnnamedContract (`0x9a3323...7bf7c0`, chain 42161)
- UnnamedContract (`0xb8f0ac...01b458`, chain 42161)
- UnnamedContract (`0xc9f007...2100a9`, chain 42161)
- UnnamedContract (`0xcfbaaf...b67f4a`, chain 42161)
- UnnamedContract (`0xee30f9...9756fc`, chain 42161)
- UnnamedContract (`0x17300f...34b11b`, chain 43114)
- UnnamedContract (`0x5eb678...ca2c45`, chain 43114)
- UnnamedContract (`0x9e3b94...997064`, chain 43114)
- UnnamedContract (`0xc8698b...e29873`, chain 43114)
- StakedaoPricer (`0xaf751e...7b35d3`, chain 1)

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 12 (10 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 58/68 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/9 (22.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 57 own, 11 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (11 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 58 of 68 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/9
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 48
- Unique implementations: 68
- Raw deployments: 68
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 22.2% (OpenZeppelin, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 2 | 22.2% | 2021-05 |
| Akira | Tier 2 | 1 | 11.1% | 2021-08 |
| OpenZeppelin | Tier 1 | 1 | 11.1% | 2020-11 |
| PeckShield | Tier 2 | 1 | 11.1% | 2021-02 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Controller | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250473 | `0xeadf3d...7aa23d` | ✅ Audited |
| MarginCalculator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250434 | `0xfaa67e...8e13f4` | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressBook | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250469 | `0xbca124...110510` | ⚠️ Unaudited |
| MarginPool | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250471 | `0xccf662...4fdb9d` | ⚠️ Unaudited |
| Oracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-250423 | `0x789cd7...e08833` | ⚠️ Unaudited |
| Oracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | unit-250462 | `0x108abf...0f0b10` | ⚠️ Unaudited |
| Otoken | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250466 | `0x459a8b...224677` | ⚠️ Unaudited |
| OtokenFactory | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250465 | `0x25bc1c...9f66a5` | ⚠️ Unaudited |
| SAvaxPricer | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | unit-250461 | `0x0a59f3...c216c9` | ⚠️ Unaudited |
| StakedaoPricer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250419 | `0x4c6568...513401` | ⚠️ Unaudited |
| StakedaoPricer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250432 | `0xaf751e...7b35d3` | ⚠️ Unaudited |
| Whitelist | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250472 | `0xe9963a...6087c9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (56)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250406 | `0x0890e8...dd4378` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250407 | `0x11ac0c...086a04` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250408 | `0x1e31f2...15cbe4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-250409 | `0x2260fa...c2c599` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250410 | `0x27a8ee...a02c40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250411 | `0x2d483f...c06f8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250412 | `0x30b305...341fc6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250413 | `0x32485c...84cfef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250414 | `0x3923ae...954bfb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250415 | `0x3b4304...9e9e84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250416 | `0x3c0638...86189b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250417 | `0x45fdc9...cfa95a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250418 | `0x466195...8813bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250420 | `0x4ccc23...58dc72` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250421 | `0x593480...56c6ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250422 | `0x733171...4ee66a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250424 | `0x7c0679...4bdf8e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250425 | `0x7c9179...12146d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250426 | `0x8f7dd6...4f70ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250427 | `0x908fa5...21918c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250428 | `0xa0647d...e43efd` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-250429 | `0xa0b869...06eb48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250430 | `0xa5ea18...0a6779` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250431 | `0xab8724...5c1e6b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-250433 | `0xc02aaa...756cc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250435 | `0x1f8977...3c743e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250436 | `0x30ae5d...afa56d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-250437 | `0x3d561c...2e8e91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250438 | `0x4b119a...97eef6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250439 | `0x5c16b2...45c057` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250440 | `0x7a1d9a...c00fd0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250441 | `0x7a23c7...b0b203` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250442 | `0x9e435a...71d012` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250443 | `0xa87ecd...a6bbfe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250444 | `0xb03036...18f658` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250445 | `0xc7a02e...9b8fa3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250446 | `0xc88bd7...7eba93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250447 | `0xedd70e...b1397c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-250448 | `0x2f2a25...fc5b0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-250449 | `0x4d3a52...5c654d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-250450 | `0x52b933...3cd40a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-250451 | `0x63d8d2...aeb051` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-250452 | `0x7a1e6f...5357c5` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-250453 | `0x82af49...3fbab1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-250454 | `0x913320...a85053` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-250455 | `0x9a3323...7bf7c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-250456 | `0xb8f0ac...01b458` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-250457 | `0xc9f007...2100a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-250458 | `0xcfbaaf...b67f4a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-250459 | `0xee30f9...9756fc` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-250460 | `0xff970a...db5cc8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250463 | `0x17300f...34b11b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | unit-250464 | `0x1e5e27...30f34e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250467 | `0x5eb678...ca2c45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250468 | `0x9e3b94...997064` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250470 | `0xc8698b...e29873` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [[**Akira Audit Report - Aug 2021**]()](https://github.com/akiratechhq/review-opyn-gamma-2021-08) | Akira | Audit | 2021-08 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 5 | high |
| [**Trail of Bits Audit Report - May 2021**](https://github.com/trailofbits/publications/blob/master/reviews/Opyn-Gamma-Protocol.pdf) | Trail of Bits | Audit | 2021-05 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 8 | high |
| [**Peckshield Audit Report - Feb 2021**](https://github.com/peckshield/publications/blob/master/audit_reports/peckshield-audit-report-Opyn-v1.0.pdf) | PeckShield | Audit | 2021-02 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [[**OpenZeppelin Audit Report - Nov 2020**]()](https://www.openzeppelin.com/news/opyn-gamma-protocol-audit) | OpenZeppelin | Audit | 2020-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 28 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17869] [**Akira Audit Report - Aug 2021**]() — matched: Scope section explicitly lists core/AddressBook.sol, core/Controller.sol, core/MarginCalculator.sol, core/MarginPool.sol, core/Otoken.sol, external/callees/PermitCallee.sol, libs/MarginVault.sol. Date is August 2021, interpreted as end of month.
- [17870] **Trail of Bits Audit Report - May 2021** — matched: Extracted contracts from findings targets and coverage sections. Audit date from cover page.
- [17871] **Peckshield Audit Report - Feb 2021** — matched: Extracted contract names from findings targets and file paths. Audit date from cover page and latest audit report date.
- [17872] [**OpenZeppelin Audit Report - Nov 2020**]() — matched: All contracts listed in the scope section of the audit report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| [**Akira Audit Report - Aug 2021**]() | AddressBook | ambiguous — not counted | 0x1e31f2… (alternative) `0x1e31f2...15cbe4` — liveness: live (current_address_book_code)<br>AddressBook (alternative) `0xbca124...110510` — deployed 2021-11-24 00:45:12+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [**Akira Audit Report - Aug 2021**]() | Controller | own contract | Controller (selected) `0xeadf3d...7aa23d` — deployed 2021-11-24 00:47:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [**Akira Audit Report - Aug 2021**]() | MarginCalculator | ambiguous — not counted | 0xc8698b… (alternative) `0xc8698b...e29873` — deployed 2021-12-17 16:09:49+03 — liveness: live (current_address_book_code)<br>MarginCalculator (alternative) `0xfaa67e...8e13f4` — deployed 2021-06-29 12:12:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [**Akira Audit Report - Aug 2021**]() | MarginPool | ambiguous — not counted | 0x593480… (alternative) `0x593480...56c6ef` — liveness: live (current_address_book_code)<br>MarginPool (alternative) `0xccf662...4fdb9d` — deployed 2021-11-24 00:46:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [**Akira Audit Report - Aug 2021**]() | Otoken | ambiguous — not counted | Otoken (alternative) `0x459a8b...224677` — deployed 2021-11-24 00:45:37+03 — liveness: live (current_address_book_code)<br>0x7c9179… (alternative) `0x7c9179...12146d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [**Akira Audit Report - Aug 2021**]() | PermitCallee | own contract | 0xc7a02e… (selected) `0xc7a02e...9b8fa3` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [**Akira Audit Report - Aug 2021**]() | MarginVault | unmatched — not counted | — | listed in scope | no |
| **Trail of Bits Audit Report - May 2021** | TradeCallee | unmatched — not counted | — | Target in finding TOB-OPYN-002 | no |
| **Trail of Bits Audit Report - May 2021** | Controller | own contract | Controller (selected) `0xeadf3d...7aa23d` — deployed 2021-11-24 00:47:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| **Trail of Bits Audit Report - May 2021** | MarginCalculator | own contract | 0xc8698b… (alternative) `0xc8698b...e29873` — deployed 2021-12-17 16:09:49+03 — liveness: live (current_address_book_code)<br>MarginCalculator (selected) `0xfaa67e...8e13f4` — deployed 2021-06-29 12:12:03+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-06-29 was 32d from audit; next candidate 203d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| **Trail of Bits Audit Report - May 2021** | MarginPool | ambiguous — not counted | 0x593480… (alternative) `0x593480...56c6ef` — liveness: live (current_address_book_code)<br>MarginPool (alternative) `0xccf662...4fdb9d` — deployed 2021-11-24 00:46:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **Trail of Bits Audit Report - May 2021** | Oracle | unmatched — not counted | — | Target in finding TOB-OPYN-010 | no |
| **Trail of Bits Audit Report - May 2021** | MarginVault | unmatched — not counted | — | Target in finding TOB-OPYN-008 | no |
| **Trail of Bits Audit Report - May 2021** | FixedPointInt256 | unmatched — not counted | — | Target in finding TOB-OPYN-012 | no |
| **Trail of Bits Audit Report - May 2021** | SignedConverter | unmatched — not counted | — | Target in finding TOB-OPYN-012 | no |
| **Trail of Bits Audit Report - May 2021** | YearnPricer | unmatched — not counted | — | Target in findings TOB-OPYN-016, TOB-OPYN-017 | no |
| **Trail of Bits Audit Report - May 2021** | Actions | unmatched — not counted | — | Referenced in Controller.sol as Actions.CallArgs | no |
| **Peckshield Audit Report - Feb 2021** | MarginPool | ambiguous — not counted | 0x593480… (alternative) `0x593480...56c6ef` — liveness: live (current_address_book_code)<br>MarginPool (alternative) `0xccf662...4fdb9d` — deployed 2021-11-24 00:46:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **Peckshield Audit Report - Feb 2021** | Controller | own contract | Controller (selected) `0xeadf3d...7aa23d` — deployed 2021-11-24 00:47:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| **Peckshield Audit Report - Feb 2021** | MarginCalculator | ambiguous — not counted | 0xc8698b… (alternative) `0xc8698b...e29873` — deployed 2021-12-17 16:09:49+03 — liveness: live (current_address_book_code)<br>MarginCalculator (alternative) `0xfaa67e...8e13f4` — deployed 2021-06-29 12:12:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **Peckshield Audit Report - Feb 2021** | Otoken | ambiguous — not counted | Otoken (alternative) `0x459a8b...224677` — deployed 2021-11-24 00:45:37+03 — liveness: live (current_address_book_code)<br>0x7c9179… (alternative) `0x7c9179...12146d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **Peckshield Audit Report - Feb 2021** | PayableProxyController | unmatched — not counted | — | Target in findings PVE-006, PVE-007 | no |
| **Peckshield Audit Report - Feb 2021** | MPHIssuanceModel01 | unmatched — not counted | — | Target in finding PVE-005 (mentioned as target) | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | AddressBook | ambiguous — not counted | 0x1e31f2… (alternative) `0x1e31f2...15cbe4` — liveness: live (current_address_book_code)<br>AddressBook (alternative) `0xbca124...110510` — deployed 2021-11-24 00:45:12+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | Controller | own contract | Controller (selected) `0xeadf3d...7aa23d` — deployed 2021-11-24 00:47:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [**OpenZeppelin Audit Report - Nov 2020**]() | MarginCalculator | ambiguous — not counted | 0xc8698b… (alternative) `0xc8698b...e29873` — deployed 2021-12-17 16:09:49+03 — liveness: live (current_address_book_code)<br>MarginCalculator (alternative) `0xfaa67e...8e13f4` — deployed 2021-06-29 12:12:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | MarginPool | ambiguous — not counted | 0x593480… (alternative) `0x593480...56c6ef` — liveness: live (current_address_book_code)<br>MarginPool (alternative) `0xccf662...4fdb9d` — deployed 2021-11-24 00:46:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | Oracle | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | Otoken | ambiguous — not counted | Otoken (alternative) `0x459a8b...224677` — deployed 2021-11-24 00:45:37+03 — liveness: live (current_address_book_code)<br>0x7c9179… (alternative) `0x7c9179...12146d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | OtokenFactory | ambiguous — not counted | OtokenFactory (alternative) `0x25bc1c...9f66a5` — deployed 2021-11-24 00:45:21+03 — liveness: live (current_address_book_code)<br>0x7c0679… (alternative) `0x7c0679...4bdf8e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | OtokenSpawner | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | Whitelist | ambiguous — not counted | 0xa5ea18… (alternative) `0xa5ea18...0a6779` — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0xe9963a...6087c9` — deployed 2021-11-24 00:46:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | PayableProxyController | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | AddressBookInterface | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | AggregatorInterface | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | CalleeInterface | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | CTokenInterface | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | ERC20Interface | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | MarginCalculatorInterface | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | MarginPoolInterface | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | OpynPricerInterface | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | OracleInterface | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | OtokenInterface | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | WhitelistInterface | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | Actions | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | FixedPointInt256 | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | MarginVault | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | SignedConverter | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | Spawn | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | CompoundPricer | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | ChainlinkPricer | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | USDCPricer | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | `0xbca124...110510` | AddressBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xccf662...4fdb9d` | MarginPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x459a8b...224677` | Otoken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x25bc1c...9f66a5` | OtokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4c6568...513401` | StakedaoPricer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaf751e...7b35d3` | StakedaoPricer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xe9963a...6087c9` | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 56 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 14 ambiguous, 32 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: temporal_name=1, unique_name=5

Fork inheritance lineage and inherited audits are included when available.
