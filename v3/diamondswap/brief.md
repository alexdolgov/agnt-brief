# Agentic Audit Brief: Diamondswap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Diamondswap (`diamondswap`)
- Website: [https://diamondswap.com/exchange](https://diamondswap.com/exchange)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, base, bsc, ethereum, odyssey
- Contract surface: 23 unique implementations (23 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $132,537.88
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Diamondswap in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x7d57c45dc107497c5c5c0f544a84691d2b06bc83`, chain 153153)
- UnnamedContract (`0xeadbf63e6fed15b8b648177518b094fc142a00a8`, chain 153153)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 21 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 23 unique; 21 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/21
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 23
- Raw deployments: 23
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AirDropper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfda4f231efae3c88a9121970e1b408c5b862dbdc` | ⚠️ Unaudited |
| BasicAuth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7a39d26641ed8c8061e8f58a73eff348345a5b2b` | ⚠️ Unaudited |
| CTOFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfa8d16a2285613da39001b6f168e9e83135f3a34` | ⚠️ Unaudited |
| CTOInit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x36cadce52bbe76840a57aec4731444832026054a` | ⚠️ Unaudited |
| DefaultDiamondProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x19ccc8e9796d278820c259f287c2ff5c42fc1b2f` | ⚠️ Unaudited |
| DiamondSwapV2FactoryFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9108ba9ff5570c31eb69fa039381e49dd036c150` | ⚠️ Unaudited |
| DiamondSwapV2FactoryInit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7e73154252484d67bad9966a44a32b45d9bc5c6b` | ⚠️ Unaudited |
| DiamondSwapV2RouterFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6b48dbc21193d725bcea11a4ff9e2f8d7f0dbe67` | ⚠️ Unaudited |
| DiamondSwapV2RouterInit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7c3762fdaa608254f98a0071347ee471a504f14e` | ⚠️ Unaudited |
| DiamondSwapV3Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x80778a7b9d0e391bf45b9c7a76ee3cc9b4bc4637` | ⚠️ Unaudited |
| DYORFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa629d7e42f3041df983bf8011cc1d9b3229b156c` | ⚠️ Unaudited |
| DYORInit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb4428e82af311d8211a47f06b36f6cd433b02522` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x66ab3d6a0fcec856a4d6ab709fe422d0c9332cc9` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x07e0fd7588e9f1022f1bdbccfe16793792908e6c` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0x8b97db61c78b051d817e0cd226ecbfb1e4242a21` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1e58120d59c3f18b8b456348eee4f712a4f5d308` | ⚠️ Unaudited |
| StakingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x94cd5ba94c50fc5ed7ac889650dadff85110cc20` | ⚠️ Unaudited |
| StakingInit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x792299d4e4473eb033051d71644a089d52f1f309` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x94e656ddd2ec7f47154e10765ff5e664592bb4d3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0xa4cbf1e40d8aaa011a667ae2082dde6b944e24bc` | ⚠️ Unaudited |
| VaultFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x530090b2ec1bbeb2fde9e47284af50e725353650` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | odyssey | unit-384062 | `0x7d57c45dc107497c5c5c0f544a84691d2b06bc83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | odyssey | unit-384063 | `0xeadbf63e6fed15b8b648177518b094fc142a00a8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DiamondSwap_Security_Audit_Report.pdf (also discovered via alternate URL)](https://shellboxes.com/audit/reports/DiamondSwap_Security_Audit_Report.pdf) | ShellBoxes | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [Manual audit seed](https://shellboxes.com/cases/diamondswap) | unknown | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21382] DiamondSwap_Security_Audit_Report.pdf — no match: Scope files listed in Section 7 (ScopeFiles) for both audit and re-audit. Audit date from cover page: Nov 12th, 2022 - Nov 29th, 2022, using end date.
- [24046] Manual audit seed — no match: The report does not list specific contract files or names; only 'DiamondSwap' is mentioned as the system. The audit date range is Nov 12-29, 2022, so the end date is used.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DiamondSwap_Security_Audit_Report.pdf | DiamondSwap | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | manyToMany | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | ownedPool | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | ownedPoolContract | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | publicPool | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | publicPoolContract | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | DiamondEvents | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | DiamondSearch | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | DiamondStructs | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | UpdateDiamondStruct | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | IDiamondContract | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | IDiamondEvents | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | IDiamondSwap | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | IOracle | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | IOwnedPoolContract | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | IPublicPoolContract | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | DiamondSwap | unmatched — not counted | — | mentioned as the main contract in the audit report | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 17 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [21382] DiamondSwap_Security_Audit_Report.pdf
- [24046] Manual audit seed

Fork inheritance lineage and inherited audits are included when available.
