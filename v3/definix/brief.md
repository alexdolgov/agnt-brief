# Agentic Audit Brief: Definix

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 6 (2 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Definix (`definix`)
- Website: [https://definix.com/en](https://definix.com/en)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, kaia
- Contract surface: 9 unique implementations (9 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $374,666.58
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Definix. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across bsc, kaia. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: erc20 (2), ownable (2)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xd51c337147c8033a43f3b5ce0023382320c113aa`, chain 8217)
- FinixToken (`0x0f02b1f5af54e04fb6dd6550f009ac2429c4e30d`, chain 56)
- SIXToken (`0x070a9867ea49ce7afc4505817204860e823489fe`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 6 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 3 of 9 unique; 6 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/8
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 12.5% | 2021-03 |
| Techrate | Tier 2 | 1 | 12.5% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FinixToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-383707 | `0x0f02b1f5af54e04fb6dd6550f009ac2429c4e30d` | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Apollo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b4aec66ef4f942da16845d22ce2656d759d0a15` | ⚠️ Unaudited |
| DefinixFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x43ebb0cb9bd53a3ed928dd662095ace1cef92d19` | ⚠️ Unaudited |
| DefinixRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x151030a9fa62fbb202eee50bd4a4057ab9e826ad` | ⚠️ Unaudited |
| FlameKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfaaa404735f33cdab5eae2fddfd375b92399853f` | ⚠️ Unaudited |
| Herodotus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b51e8fdc32ead0b837deb334fcb79e24f3b105a` | ⚠️ Unaudited |
| SIXToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-383706 | `0x070a9867ea49ce7afc4505817204860e823489fe` | ⚠️ Unaudited |
| TimelockController | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x967bef27c509fa0772c10d59f47236a2d304cbfe` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-383708 | `0xd51c337147c8033a43f3b5ce0023382320c113aa` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://skynet.certik.com/projects/sixnetwork) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf](https://github.com/thesixnetwork/definix-audit/blob/main/Certik/REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [REP-Six_Network_Definix_Periphery-22_04_2021.pdf](https://github.com/thesixnetwork/definix-audit/blob/main/Certik/REP-Six_Network_Definix_Periphery-22_04_2021.pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf](https://github.com/thesixnetwork/definix-audit/blob/main/Certik/REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 16 | high |
| [REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf](https://github.com/thesixnetwork/definix-audit/blob/main/Certik/REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [The Six Network-24_04_2021.pdf](https://github.com/thesixnetwork/definix-audit/blob/main/Techrate/The%20Six%20Network-24_04_2021.pdf) | Techrate | Audit | 2021-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19679] DL audit link — no match: The provided text is a CertiK Skynet project insight page, not an audit report. It contains no scope section, no contract names in scope, and no audit date. The only date mentioned is '3/29/2020' as the last audit delivery date, but it is not clear if this is the audit completion date. No contract names are explicitly listed as audited.
- [19680] REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf — no match: All contracts listed in the 'Files In Scope' section and the scope table are extracted. The audit date is March 29th, 2021 from the cover page.
- [19681] REP-Six_Network_Definix_Periphery-22_04_2021.pdf — no match: All contracts listed in the scope table and files in scope section are extracted. The audit date is March 29th, 2021 from the delivery date.
- [19682] REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf — matched: Extracted 17 contracts from scope table and files in scope list. Audit date from delivery date and title.
- [19683] REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf — no match: Extracted contracts from scope table and Files In Scope list. Audit date from cover page.
- [19684] The Six Network-24_04_2021.pdf — matched: Audit report title includes 'April, 2021', so date is end of April 2021.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf | DefinixERC20 | unmatched — not counted | — | listed in scope table and files in scope | no |
| REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf | DefinixFactory | unmatched — not counted | — | listed in scope table and files in scope | no |
| REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf | DefinixPair | unmatched — not counted | — | listed in scope table and files in scope | no |
| REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf | IDefinixCallee | unmatched — not counted | — | listed in scope table and files in scope | no |
| REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf | IDefinixERC20 | unmatched — not counted | — | listed in scope table and files in scope | no |
| REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf | IDefinixFactory | unmatched — not counted | — | listed in scope table and files in scope | no |
| REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf | IDefinixPair | unmatched — not counted | — | listed in scope table and files in scope | no |
| REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf | IERC20 | unmatched — not counted | — | listed in scope table and files in scope | no |
| REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf | Math | unmatched — not counted | — | listed in scope table and files in scope | no |
| REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf | SafeMath | unmatched — not counted | — | listed in scope table and files in scope | no |
| REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf | UQ112x112 | unmatched — not counted | — | listed in scope table and files in scope | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | DefinixMigrator | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | DefinixRouter | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | DefinxRouter01 | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | IDefinixFactory | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | IDefinixMigrator | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | IDefinixPair | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | IDefinixRouter01 | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | IDefinixRouter02 | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | IERC20 | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | IWETH | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | DefinixLibrary | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | SafeMath | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | IUniswapV1Exchange | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_Definix_Periphery-22_04_2021.pdf | IUniswapV1Factory | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | BnbStaking | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | FinixToken | own contract | FinixToken (selected) `0x0f02b1f5af54e04fb6dd6550f009ac2429c4e30d` — deployed 2021-03-26 11:33:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | FlameKeeper | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | Herodotus | unmatched — not counted | — | listed in scope table and findings | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | SousChef | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | Timelock | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | VerifyFinixToken | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | Migrations | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | Multicall | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | PancakeVoteProxy | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | WBNB | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | Context | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | Ownable | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | SafeMath | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | Address | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | BEP20 | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf | IBEP20 | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf | SIXBSCSwapIn | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf | SIXBSCSwapOut | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf | SIXKlaytnSwapIn | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf | SIXKlaytnSwapOut | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf | Context | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf | Ownable | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf | SafeMath | unmatched — not counted | — | listed in scope table | no |
| REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf | IERC20 | unmatched — not counted | — | listed in Files In Scope section | no |
| The Six Network-24_04_2021.pdf | DefinixERC20 | unmatched — not counted | — | listed in scope | no |
| The Six Network-24_04_2021.pdf | DefinixFactory | unmatched — not counted | — | listed in scope | no |
| The Six Network-24_04_2021.pdf | DefinixPair | unmatched — not counted | — | listed in scope | no |
| The Six Network-24_04_2021.pdf | DefinixRouter | unmatched — not counted | — | listed in scope | no |
| The Six Network-24_04_2021.pdf | Herodotus | unmatched — not counted | — | listed in scope | no |
| The Six Network-24_04_2021.pdf | FlameKeeper | unmatched — not counted | — | listed in scope | no |
| The Six Network-24_04_2021.pdf | FinixToken | own contract | FinixToken (selected) `0x0f02b1f5af54e04fb6dd6550f009ac2429c4e30d` — deployed 2021-03-26 11:33:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| The Six Network-24_04_2021.pdf | ApolloLib | unmatched — not counted | — | listed in scope | no |
| The Six Network-24_04_2021.pdf | ApolloFactory | unmatched — not counted | — | listed in scope | no |
| The Six Network-24_04_2021.pdf | Apollo | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x070a9867ea49ce7afc4505817204860e823489fe` | SIXToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 58 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, low=1
- Match method counts: unique_name=2

Zero-match audit list:

- [19679] DL audit link
- [19680] REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf
- [19681] REP-Six_Network_Definix_Periphery-22_04_2021.pdf
- [19683] REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf

Fork inheritance lineage and inherited audits are included when available.
