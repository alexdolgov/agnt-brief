# Agentic Audit Brief: Yamato Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Yamato Protocol (`yamato-protocol`)
- Website: [https://app.yamato.fi/#/](https://app.yamato.fi/#/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 4 unique implementations (4 raw deployments)
- Coverage basis: 3/4 confirmed own live verified implementations (75.0%); conservative 75.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,058,179.34
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Yamato Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across ethereum. Structural roles: 3 core, 1 infra, 1 unclassified. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (3), infra (1), unclassified (1)
- Contract kinds: contract (5)
- Detected standards: erc20 (2), erc20permit (2), erc1967proxy (1)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- CJPY (`0x1cfa56...298372`, chain 1)
- ERC1967Proxy (`0x02fe72...84f257`, chain 1)
- veYMT (`0x9e3ce7...b66a0c`, chain 1)
- YMT (`0x0f4fc7...4c9c09`, chain 1)

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (4 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/4 (75.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 4 of 4 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 3/4
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BlockApex | Tier 2 | 3 | 75.0% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| veYMT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262585 | `0x9e3ce7...b66a0c` | ✅ Audited |
| YamatoV4 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262587 | `0x02fe72...84f257` | ✅ Audited |
| YMT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262582 | `0x0f4fc7...4c9c09` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CJPY | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262583 | `0x1cfa56...298372` | ⚠️ Unaudited |

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
| [Yamato Protocol Final Audit.pdf](https://github.com/BlockApex/Audit-Reports/blob/master/Yamato%20Protocol%20Final%20Audit.pdf) | BlockApex | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [Yamato Protocol Final Audit (Extended).pdf](https://github.com/BlockApex/Audit-Reports/blob/master/Yamato%20Protocol%20Final%20Audit%20(Extended).pdf) | BlockApex | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Yamato Protocol V2 - Final Audit.pdf](https://github.com/BlockApex/Audit-Reports/blob/master/Yamato%20Protocol%20V2%20-%20Final%20Audit.pdf) | BlockApex | Audit | 2024-08 | aging | Direct | n/a | matched | 3 | 1 | 0 | 11 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3069] Yamato Protocol Final Audit.pdf — no match: Extracted contract names from findings and informatory sections; audit date from 'Final Audit Completed: Sep 5th, 2022'.
- [3070] Yamato Protocol Final Audit (Extended).pdf — no match: Main contract PriceFeedV3 and interfaces IPriceFeedV3, IPriceFeedFlexV3, IPriorityRegistryFlexV6, IPriorityRegistryV6 are in scope. Audit date from 'Final Audit (Fixed): July 24th, 2023'.
- [3071] Yamato Protocol V2 - Final Audit.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Yamato Protocol Final Audit.pdf | Currency | unmatched — not counted | — | Critical-risk issue 1 | no |
| Yamato Protocol Final Audit.pdf | UUPSBase | unmatched — not counted | — | High-risk issue 2 | no |
| Yamato Protocol Final Audit.pdf | PoolV2 | unmatched — not counted | — | Medium-risk issue 3 | no |
| Yamato Protocol Final Audit.pdf | YamatoDepositorV2 | unmatched — not counted | — | Medium-risk issues 4 and 5 | no |
| Yamato Protocol Final Audit.pdf | PledgeLib | unmatched — not counted | — | Low-risk issue 6 | no |
| Yamato Protocol Final Audit.pdf | YamatoWithdrawerV2 | unmatched — not counted | — | Low-risk issues 7 and 12 | no |
| Yamato Protocol Final Audit.pdf | YamatoRedeemerV4 | unmatched — not counted | — | Low-risk issues 8 and 9 | no |
| Yamato Protocol Final Audit.pdf | Ownable | unmatched — not counted | — | Low-risk issue 11 | no |
| Yamato Protocol Final Audit.pdf | YamatoStore | unmatched — not counted | — | Low-risk issue 11 and informatory | no |
| Yamato Protocol Final Audit.pdf | YamatoBase | unmatched — not counted | — | Informatory: Mark Variable Visibility Explicitly | no |
| Yamato Protocol Final Audit.pdf | YamatoV3 | unmatched — not counted | — | Informatory: Mark Variable Visibility Explicitly | no |
| Yamato Protocol Final Audit.pdf | PriorityRegistryV6 | unmatched — not counted | — | Informatory: Mark Variable Visibility Explicitly | no |
| Yamato Protocol Final Audit.pdf | PriceFeedV2 | unmatched — not counted | — | Informatory: Mark Variable Visibility Explicitly | no |
| Yamato Protocol Final Audit.pdf | CurrencyOSV2 | unmatched — not counted | — | Informatory: Mark Function Visibility Explicitly | no |
| Yamato Protocol Final Audit.pdf | YamatorRepayerV2 | unmatched — not counted | — | Informatory: In YamatorRepayerV2.sol | no |
| Yamato Protocol Final Audit (Extended).pdf | PriceFeedV3 | unmatched — not counted | — | listed in scope and findings | no |
| Yamato Protocol Final Audit (Extended).pdf | IPriceFeedV3 | unmatched — not counted | — | listed in scope and findings | no |
| Yamato Protocol Final Audit (Extended).pdf | IPriceFeedFlexV3 | unmatched — not counted | — | mentioned in system architecture | no |
| Yamato Protocol Final Audit (Extended).pdf | IPriorityRegistryFlexV6 | unmatched — not counted | — | mentioned in system architecture | no |
| Yamato Protocol Final Audit (Extended).pdf | IPriorityRegistryV6 | unmatched — not counted | — | mentioned in system architecture | no |
| Yamato Protocol V2 - Final Audit.pdf | CurrencyOSV3 | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | FeePoolV2 | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | ScoreRegistry | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | ScoreWeightController | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | YMT | own contract | YMT (selected) `0x0f4fc7...4c9c09` — deployed 2025-05-26 14:42:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yamato Protocol V2 - Final Audit.pdf | YamatoBorrowerV2 | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | YamatoDepositorV3 | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | YamatoRedeemerV5 | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | YamatoRepayerV3 | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | YamatoSweeperV3 | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | YamatoV4 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x02fe72...84f257` — deployed 2023-07-27 04:06:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yamato Protocol V2 - Final Audit.pdf | YamatoWithdrawerV3 | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | YmtMinter | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | veYMT | own contract | veYMT (selected) `0x9e3ce7...b66a0c` — deployed 2025-05-26 14:43:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x1cfa56...298372` | CJPY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 31 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=3

Zero-match audit list:

- [3069] Yamato Protocol Final Audit.pdf
- [3070] Yamato Protocol Final Audit (Extended).pdf

Fork inheritance lineage and inherited audits are included when available.
