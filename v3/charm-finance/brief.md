# Agentic Audit Brief: Charm Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 6 (1 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Charm Finance (`charm-finance`)
- Website: [https://www.charm.fi/](https://www.charm.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: berachain, boba, ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,272,199.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Charm Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across berachain, boba, ethereum. Structural roles: 2 supporting. 2 row(s) use upgradeable patterns.

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

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 3
- Raw deployments: 3
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
| Spearbit | Tier 1 | 1 | 50.0% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlphaProVaultFactory | registry | project_anchor | own_supporting | 0 | berachain | unit-231848 | `0x189bd7...6ed137` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlphaProVaultFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-231846 | `0x5b7b8b...9b2afa` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | boba | unit-231847 | `0xfaf1af...6d8a07` | ❓ Unverified |

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
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

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
