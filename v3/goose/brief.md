# Agentic Audit Brief: Goose

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Goose (`goose`)
- Website: [https://goose-docs.ai/](https://goose-docs.ai/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc, ethereum, opbnb
- Contract surface: 16 unique implementations (18 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $12,794,956.85
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Goose in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1ee38d535d541c55c9dae27b12edf090c608e6fb`, chain 56)
- UnnamedContract (`0x2ef488de034567e9b8d312928fd52812a242ab3a`, chain 56)
- UnnamedContract (`0xe70e9185f5ea7ba3c5d63705784d8563017f2e57`, chain 56)
- UnnamedContract (`0xf952fc3ca7325cc27d15885d37117676d25bfda6`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 12 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 4 of 16 unique; 12 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 16
- Raw deployments: 18
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | 2 deployments: opbnb `0x38bb3b7e89baf7b538b48e19e2bab72b9f7c75b4`; arbitrum `0x7da1ea975cfa94c230fe527b9d36a62a77448ef3` | ⚠️ Unaudited |
| LRTVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x234c013dccb6af642fcb7060a91c9c71504f6299` | ⚠️ Unaudited |
| Safe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x509b38c5f884067e2128c4fc89d1489813d695e0` | ⚠️ Unaudited |
| USDVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: ethereum `0xe8a01d8dac4af19ec7a22cf87f3d141ce6e7e9fb`; arbitrum `0x0874f961178879cdbde3500544c49f864f232899` | ⚠️ Unaudited |
| VaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa988bfe90492d701069702321e319628c9ae6e3f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-387046 | `0x1ee38d535d541c55c9dae27b12edf090c608e6fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-387047 | `0x2ef488de034567e9b8d312928fd52812a242ab3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-387048 | `0xe70e9185f5ea7ba3c5d63705784d8563017f2e57` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-387049 | `0xf952fc3ca7325cc27d15885d37117676d25bfda6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x2618d3ab61ae9c7f8082e37c7e6aa14cf1a5230d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x7da1ea975cfa94c230fe527b9d36a62a77448ef3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x857ab0b4f236f7dd7e5ac5f96c0bbebf230c2d3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xa988bfe90492d701069702321e319628c9ae6e3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xbaa11f119d3209a506ffb5911f1812bfca97a6bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xc5db819a2473961857f24c2bedf508def28563b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xe4bf4e9be7004f081583952f34ed51efa66ec8d3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [assets/-MT5Nug3dG0o_JI3n0I1/-MWf8Zs18Nw7znkqTiVb/-MWf8krbtSdOclfHHMVi/Goose_SC_Audit_Report.pdf](https://2939915961-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MT5Nug3dG0o_JI3n0I1%2F-MWf8Zs18Nw7znkqTiVb%2F-MWf8krbtSdOclfHHMVi%2FGoose_SC_Audit_Report.pdf) | unknown | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20719] assets/-MT5Nug3dG0o_JI3n0I1/-MWf8Zs18Nw7znkqTiVb/-MWf8krbtSdOclfHHMVi/Goose_SC_Audit_Report.pdf — no match: Scope section explicitly lists 9 contracts with file paths. Audit date is March 24, 2021 from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| assets/-MT5Nug3dG0o_JI3n0I1/-MWf8Zs18Nw7znkqTiVb/-MWf8krbtSdOclfHHMVi/Goose_SC_Audit_Report.pdf | FeeProcessorFactory | unmatched — not counted | — | listed in scope | no |
| assets/-MT5Nug3dG0o_JI3n0I1/-MWf8Zs18Nw7znkqTiVb/-MWf8krbtSdOclfHHMVi/Goose_SC_Audit_Report.pdf | HouseFactory | unmatched — not counted | — | listed in scope | no |
| assets/-MT5Nug3dG0o_JI3n0I1/-MWf8Zs18Nw7znkqTiVb/-MWf8krbtSdOclfHHMVi/Goose_SC_Audit_Report.pdf | IncubatorChefFactory | unmatched — not counted | — | listed in scope | no |
| assets/-MT5Nug3dG0o_JI3n0I1/-MWf8Zs18Nw7znkqTiVb/-MWf8krbtSdOclfHHMVi/Goose_SC_Audit_Report.pdf | TokenFactory | unmatched — not counted | — | listed in scope | no |
| assets/-MT5Nug3dG0o_JI3n0I1/-MWf8Zs18Nw7znkqTiVb/-MWf8krbtSdOclfHHMVi/Goose_SC_Audit_Report.pdf | FeeProcessor | unmatched — not counted | — | listed in scope | no |
| assets/-MT5Nug3dG0o_JI3n0I1/-MWf8Zs18Nw7znkqTiVb/-MWf8krbtSdOclfHHMVi/Goose_SC_Audit_Report.pdf | HouseChef | unmatched — not counted | — | listed in scope | no |
| assets/-MT5Nug3dG0o_JI3n0I1/-MWf8Zs18Nw7znkqTiVb/-MWf8krbtSdOclfHHMVi/Goose_SC_Audit_Report.pdf | IncubatorChef | unmatched — not counted | — | listed in scope | no |
| assets/-MT5Nug3dG0o_JI3n0I1/-MWf8Zs18Nw7znkqTiVb/-MWf8krbtSdOclfHHMVi/Goose_SC_Audit_Report.pdf | LayerFactory | unmatched — not counted | — | listed in scope | no |
| assets/-MT5Nug3dG0o_JI3n0I1/-MWf8Zs18Nw7znkqTiVb/-MWf8krbtSdOclfHHMVi/Goose_SC_Audit_Report.pdf | GooseToken | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 9 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20719] assets/-MT5Nug3dG0o_JI3n0I1/-MWf8Zs18Nw7znkqTiVb/-MWf8krbtSdOclfHHMVi/Goose_SC_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
