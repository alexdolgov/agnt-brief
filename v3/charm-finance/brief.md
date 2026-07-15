# Agentic Audit Brief: Charm Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 6 (1 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Charm Finance (`charm-finance`)
- Website: [https://www.charm.fi/](https://www.charm.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, berachain, blast, boba, ethereum, linea, optimism, polygon, scroll
- Contract surface: 26 unique implementations (55 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,272,199.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Charm Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, base, berachain, boba, ethereum, polygon. Structural roles: 2 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: supporting (2)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: openzeppelin-upgradeable (2), uniswap-v3 (2), openzeppelin (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AlphaProVaultFactory (`0x5b7b8b...9b2afa`, chain 1)
- AlphaProVaultFactory (`0x189bd7...6ed137`, chain 80094)
- UnnamedContract (`0xfaf1af...6d8a07`, chain 288)

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
- Outside the address book: 23 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 3 of 26 unique; 23 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/19
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 26
- Raw deployments: 55
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/charm/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 50.0% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 1 | 5.3% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlphaProVaultFactory | registry | project_anchor | own_supporting | 0 | berachain | unit-231848 | `0x189bd7...6ed137` | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlphaProPeriphery | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 2 deployments: berachain `0xe2ac68...331a66`; berachain `0xf1b21f...39a7ee` | ⚠️ Unaudited |
| AlphaProVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 6 deployments: ethereum `0xfaf1af...6d8a07`; polygon `0xfaf1af...6d8a07`; base `0xfaf1af...6d8a07`; arbitrum `0xfaf1af...6d8a07`; berachain `0x0a4b7a...e9baea`; berachain `0xf0f42c...05df61` | ⚠️ Unaudited |
| AlphaProVaultFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-231846 | `0x5b7b8b...9b2afa` | ⚠️ Unaudited |
| AlphaProVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x5b7b8b...9b2afa`; base `0x5b7b8b...9b2afa`; arbitrum `0x5b7b8b...9b2afa`; berachain `0x78f25a...b4ad15` | ⚠️ Unaudited |
| AlphaStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40c367...b03526` | ⚠️ Unaudited |
| AlphaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x55535c...d0d21a`; ethereum `0x9bf7b4...164322`; ethereum `0xbd7c6d...4e8a66`; ethereum `0xe72f3e...2c6c11` | ⚠️ Unaudited |
| CubePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x23f6a2...bc1b67`; ethereum `0xd9bb96...38e8ff`; ethereum `0xe86e8f...430204` | ⚠️ Unaudited |
| CubePoolMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x01cc4a...fffe04`; ethereum `0x1b1686...e6aba7` | ⚠️ Unaudited |
| CubeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63ac15...11a49e` | ⚠️ Unaudited |
| ManagerStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8c5fa5...c962ed` | ⚠️ Unaudited |
| OptionFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x443ec3...822e86`; ethereum `0x849eb9...0377d5`; ethereum `0xcdfe16...742f2b` | ⚠️ Unaudited |
| OptionMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x063555...db3895`; ethereum `0x31d07b...f738ac`; ethereum `0xf3e900...410d80` | ⚠️ Unaudited |
| OptionRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x029b6e...533755`; ethereum `0x258ebe...ff33c7`; ethereum `0x574467...dad1cd`; ethereum `0x70de9a...113034` | ⚠️ Unaudited |
| OptionToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x17b4c8...4b9357`; ethereum `0x22e425...4ddecf`; ethereum `0x51be15...d809a0` | ⚠️ Unaudited |
| OptionViews | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3cb5d4...e4e815`; ethereum `0x4c4d29...afd64f` | ⚠️ Unaudited |
| PassiveRebalanceVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb52f32...4cef52` | ⚠️ Unaudited |
| PassiveStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1cea47...ccd836`; ethereum `0x4e0302...c5d5ed`; ethereum `0x5503bb...79a6fd`; ethereum `0x8209df...c5dcd9`; ethereum `0xa6803e...e0c1c3` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb591f...73aff4` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbed8a8...fe1319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4b456...1067cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbed8a8...fe1319` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | boba | unit-231847 | `0xfaf1af...6d8a07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbed8a8...fe1319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbed8a8...fe1319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xfcc5d3...780d3b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [immunefi.com/bug-bounty/charm/information](https://immunefi.com/bug-bounty/charm/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [spaces/ncWpbfiN022KvH5AGrQq/uploads/IM3bniGpiEo24osqeSJ5/report-cantinacode-charm-0604.pdf](https://3306594273-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FncWpbfiN022KvH5AGrQq%2Fuploads%2FIM3bniGpiEo24osqeSJ5%2Freport-cantinacode-charm-0604.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | n/a | matched | 1 | 0 | 0 | 1 | n/a |
| [spaces/ncWpbfiN022KvH5AGrQq/uploads/cDHlWmzrwu3w7pAxW6dG/PeckShield-Audit-Report-Charm-v1.0.pdf](https://3306594273-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FncWpbfiN022KvH5AGrQq%2Fuploads%2FcDHlWmzrwu3w7pAxW6dG%2FPeckShield-Audit-Report-Charm-v1.0.pdf) | PeckShield | Audit | 2023-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [spaces/ncWpbfiN022KvH5AGrQq/uploads/Lx7bFYx6tcfSpsdqT3jV/PeckShield-Audit-Report-Charm-AlphaPro-v1.0.pdf](https://3306594273-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FncWpbfiN022KvH5AGrQq%2Fuploads%2FLx7bFYx6tcfSpsdqT3jV%2FPeckShield-Audit-Report-Charm-AlphaPro-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [spaces/ncWpbfiN022KvH5AGrQq/uploads/cblzw4RcfNUsNN1dnlPG/REP-Charm Finance Alpha Vaults-2021-06-30.pdf](https://3306594273-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FncWpbfiN022KvH5AGrQq%2Fuploads%2Fcblzw4RcfNUsNN1dnlPG%2FREP-Charm%20Finance%20Alpha%20Vaults-2021-06-30.pdf) | Code4rena | Contest | 2021-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Audit Report - Charm Finance [27.10.2020].pdf](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20Charm%20Finance%20%5B27.10.2020%5D.pdf) | unknown | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1790] immunefi.com/bug-bounty/charm/information — no match: The document is a bug bounty program page, not an audit report. It mentions 'core contracts of Alpha Vaults version 2' but does not list specific contract names or file paths.
- [1791] spaces/ncWpbfiN022KvH5AGrQq/uploads/IM3bniGpiEo24osqeSJ5/report-cantinacode-charm-0604.pdf — matched: No reason recorded
- [1792] spaces/ncWpbfiN022KvH5AGrQq/uploads/cDHlWmzrwu3w7pAxW6dG/PeckShield-Audit-Report-Charm-v1.0.pdf — no match: No reason recorded
- [1793] spaces/ncWpbfiN022KvH5AGrQq/uploads/Lx7bFYx6tcfSpsdqT3jV/PeckShield-Audit-Report-Charm-AlphaPro-v1.0.pdf — no match: Contracts explicitly named as targets in findings: AlphaProVault and AlphaProVaultFactory. Repository URL provided but no explicit file listing; contract names inferred from findings.
- [1794] spaces/ncWpbfiN022KvH5AGrQq/uploads/cblzw4RcfNUsNN1dnlPG/REP-Charm Finance Alpha Vaults-2021-06-30.pdf — no match: No reason recorded
- [2881] Audit Report - Charm Finance [27.10.2020].pdf — no match: All contracts listed in the 'Audited Files' section are included. Libraries and rewards contracts are also in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/ncWpbfiN022KvH5AGrQq/uploads/IM3bniGpiEo24osqeSJ5/report-cantinacode-charm-0604.pdf | AlphaProVault | unmatched — not counted | — | — | no |
| spaces/ncWpbfiN022KvH5AGrQq/uploads/IM3bniGpiEo24osqeSJ5/report-cantinacode-charm-0604.pdf | AlphaProVaultFactory | own contract | AlphaProVaultFactory (alternative) `0x5b7b8b...9b2afa` — deployed 2023-07-07 13:59:59+03 — liveness: live (current_address_book_code)<br>AlphaProVaultFactory (selected) `0x189bd7...6ed137` — deployed 2025-06-26 19:04:40+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-06-26 was 25d from audit; next candidate 695d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ncWpbfiN022KvH5AGrQq/uploads/cDHlWmzrwu3w7pAxW6dG/PeckShield-Audit-Report-Charm-v1.0.pdf | AlphaProVault | unmatched — not counted | — | — | no |
| spaces/ncWpbfiN022KvH5AGrQq/uploads/Lx7bFYx6tcfSpsdqT3jV/PeckShield-Audit-Report-Charm-AlphaPro-v1.0.pdf | AlphaProVault | unmatched — not counted | — | Target in finding PVE-001 and PVE-003 | no |
| spaces/ncWpbfiN022KvH5AGrQq/uploads/Lx7bFYx6tcfSpsdqT3jV/PeckShield-Audit-Report-Charm-AlphaPro-v1.0.pdf | AlphaProVaultFactory | ambiguous — not counted | AlphaProVaultFactory (alternative) `0x5b7b8b...9b2afa` — deployed 2023-07-07 13:59:59+03 — liveness: live (current_address_book_code)<br>AlphaProVaultFactory (alternative) `0x189bd7...6ed137` — deployed 2025-06-26 19:04:40+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ncWpbfiN022KvH5AGrQq/uploads/cblzw4RcfNUsNN1dnlPG/REP-Charm Finance Alpha Vaults-2021-06-30.pdf | AlphaStrategy | unmatched — not counted | — | — | no |
| spaces/ncWpbfiN022KvH5AGrQq/uploads/cblzw4RcfNUsNN1dnlPG/REP-Charm Finance Alpha Vaults-2021-06-30.pdf | AlphaVault | unmatched — not counted | — | — | no |
| Audit Report - Charm Finance [27.10.2020].pdf | CharmToken | unmatched — not counted | — | listed in scope | no |
| Audit Report - Charm Finance [27.10.2020].pdf | OptionsMarketMaker | unmatched — not counted | — | listed in scope | no |
| Audit Report - Charm Finance [27.10.2020].pdf | OptionsToken | unmatched — not counted | — | listed in scope | no |
| Audit Report - Charm Finance [27.10.2020].pdf | UniswapOracle | unmatched — not counted | — | listed in scope | no |
| Audit Report - Charm Finance [27.10.2020].pdf | ABDKMath64x64 | unmatched — not counted | — | listed in scope | no |
| Audit Report - Charm Finance [27.10.2020].pdf | UniERC20 | unmatched — not counted | — | listed in scope | no |
| Audit Report - Charm Finance [27.10.2020].pdf | SeedRewards | unmatched — not counted | — | listed in scope | no |
| Audit Report - Charm Finance [27.10.2020].pdf | StakingRewards | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x5b7b8b...9b2afa` | AlphaProVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 13 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1
- Match method counts: temporal_name=1

Zero-match audit list:

- [1792] spaces/ncWpbfiN022KvH5AGrQq/uploads/cDHlWmzrwu3w7pAxW6dG/PeckShield-Audit-Report-Charm-v1.0.pdf
- [1793] spaces/ncWpbfiN022KvH5AGrQq/uploads/Lx7bFYx6tcfSpsdqT3jV/PeckShield-Audit-Report-Charm-AlphaPro-v1.0.pdf
- [1794] spaces/ncWpbfiN022KvH5AGrQq/uploads/cblzw4RcfNUsNN1dnlPG/REP-Charm Finance Alpha Vaults-2021-06-30.pdf
- [2881] Audit Report - Charm Finance [27.10.2020].pdf

Fork inheritance lineage and inherited audits are included when available.
