# Agentic Audit Brief: Ideamarket

## Export Authority

- Production state: **published scope**
- Raw selected rows: 15 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Ideamarket (`ideamarket`)
- Website: [https://ideamarket.io](https://ideamarket.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 61 unique implementations (61 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $163,209.65
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Ideamarket in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 22 contracts are derived from known codebases. 22 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x046cd6...f10c00`, chain 1)
- UnnamedContract (`0x0f83a9...cc77d3`, chain 1)
- UnnamedContract (`0x1fe1bb...cee3c3`, chain 1)
- UnnamedContract (`0x2a09cd...90e2c1`, chain 1)
- UnnamedContract (`0x4bc733...805dbc`, chain 1)
- UnnamedContract (`0x4c6eba...5052df`, chain 1)
- UnnamedContract (`0x58d63a...44553d`, chain 1)
- UnnamedContract (`0x5e2a18...d87c65`, chain 1)
- UnnamedContract (`0x6315d2...661be1`, chain 1)
- UnnamedContract (`0x6b7a41...347dab`, chain 1)
- UnnamedContract (`0x744b2e...947f6d`, chain 1)
- UnnamedContract (`0x8b5f5f...9ddb3a`, chain 1)
- UnnamedContract (`0x8cd552...2ce99e`, chain 1)
- UnnamedContract (`0x902ed1...c3d2b4`, chain 1)
- UnnamedContract (`0x906b3b...50a8c5`, chain 1)
- UnnamedContract (`0x93e6ed...c7851a`, chain 1)
- UnnamedContract (`0x993c88...e0b50d`, chain 1)
- UnnamedContract (`0x9f79fe...7c0c9c`, chain 1)
- UnnamedContract (`0xb41bd4...c1f814`, chain 1)
- UnnamedContract (`0xbe7e6a...ad29a4`, chain 1)
- UnnamedContract (`0xbe9c5d...341294`, chain 1)
- UnnamedContract (`0xe4f2a4...bbcd65`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 22/22 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 22 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 39 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 22 of 61 unique; 39 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/18
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 43
- Unique implementations: 61
- Raw deployments: 61
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 11 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BridgeAVM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04c451...535de6` | ⚠️ Unaudited |
| ChangeTimelockOwnerSpell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e2a18...d87c65` | ⚠️ Unaudited |
| DelegateableTokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x16a950...16e299` | ⚠️ Unaudited |
| DSPause | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1770b0...3de351` | ⚠️ Unaudited |
| IdeaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa84fae...72325c` | ⚠️ Unaudited |
| IdeaTokenExchangeAVM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x15ae05...60dd81` | ⚠️ Unaudited |
| IdeaTokenExchangeStateTransferAVM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6ea77f...74cb16` | ⚠️ Unaudited |
| IdeaTokenFactoryAVM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43e7bc...5c11e3` | ⚠️ Unaudited |
| IdeaTokenFactoryStateTransferAVM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa40030...bcccba` | ⚠️ Unaudited |
| IdeaTokenVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd2a283...83ffe9` | ⚠️ Unaudited |
| IMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb41bd4...c1f814` | ⚠️ Unaudited |
| IMOStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x902ed1...c3d2b4` | ⚠️ Unaudited |
| InterestManagerStateTransferAVM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x4e908f...df284e` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa5e8bd...78f8bd` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xc98a20...aafe9c` | ⚠️ Unaudited |
| ShowtimeNameVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c6cd7...1d27f3` | ⚠️ Unaudited |
| SubstackNameVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x333949...651688` | ⚠️ Unaudited |
| TwitterHandleNameVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc63d47...7ad46e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (43)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387345 | `0x046cd6...f10c00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387347 | `0x0f83a9...cc77d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387349 | `0x1fe1bb...cee3c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387351 | `0x2a09cd...90e2c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387353 | `0x4bc733...805dbc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387355 | `0x4c6eba...5052df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387357 | `0x58d63a...44553d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387358 | `0x5e2a18...d87c65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387359 | `0x6315d2...661be1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387360 | `0x6b7a41...347dab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387361 | `0x744b2e...947f6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387362 | `0x8b5f5f...9ddb3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387363 | `0x8cd552...2ce99e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387364 | `0x902ed1...c3d2b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387365 | `0x906b3b...50a8c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387366 | `0x93e6ed...c7851a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387367 | `0x993c88...e0b50d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387368 | `0x9f79fe...7c0c9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387369 | `0xb41bd4...c1f814` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387370 | `0xbe7e6a...ad29a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387371 | `0xbe9c5d...341294` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387372 | `0xe4f2a4...bbcd65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02d490...ade7b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0bc59e...d2ee86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c57dd...8ad309` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x24d352...9c21b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x347e6c...e36ab5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39440e...d42ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3a744e...bc0ba2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x46bcc1...c0f06d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4e4051...dd67da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5902af...48749b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x594a6c...294636` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x62515b...e9320a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7cac2a...ca2d08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x90bd13...a2ec4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xac7f03...05afaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb77ea8...a19962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb8504b...f605c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcd148c...4a61e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe3320d...fcb7c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf89aa8...5462fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe3cde...8a2a56` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Quantstamp - Ideamarket Report.pdf](https://1973863284-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MO3FS4hHpv7FRVGrwnt%2F-MTDFUB1mL3y4qqOa-Ym%2F-MTETLvkdCinbSzIPBpp%2FQuantstamp%20-%20Ideamarket%20Report.pdf) | Quantstamp | Audit | 2021-02 | stale | Direct | contract_name | matched | 11 | 0 | 0 | 30 | high |
| [Ideamarket Audit Response.pdf](https://1973863284-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MO3FS4hHpv7FRVGrwnt%2F-MTFGQ_xSOz18b5uigqR%2F-MTFGXSz06pKolsBEXdl%2FIdeamarket%20Audit%20Response.pdf) | Ideamarket | Audit | 2021-01 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20561] Quantstamp - Ideamarket Report.pdf — matched: Extracted contract names from file paths in findings and file signatures. Audit date from cover page: February 9th 2021.
- [20562] Ideamarket Audit Response.pdf — matched: No explicit scope section; contracts inferred from findings and responses. Date from title line.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Quantstamp - Ideamarket Report.pdf | MultiAction | own contract | 0xb41bd4… (selected) `0xb41bd4...c1f814` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp - Ideamarket Report.pdf | InterestManagerCompound | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | Ownable | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | IdeaTokenFactory | own contract | 0x4bc733… (selected) `0x4bc733...805dbc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp - Ideamarket Report.pdf | IdeaTokenExchange | own contract | 0xbe7e6a… (selected) `0xbe7e6a...ad29a4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp - Ideamarket Report.pdf | IdeaTokenVault | own contract | 0xe4f2a4… (selected) `0xe4f2a4...bbcd65` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp - Ideamarket Report.pdf | MinimalProxy | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | DSPause | own contract | 0x4c6eba… (selected) `0x4c6eba...5052df` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp - Ideamarket Report.pdf | IdeaToken | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | ProxyAdmin | own contract | 0xbe9c5d… (selected) `0xbe9c5d...341294` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp - Ideamarket Report.pdf | ERC20 | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | DSPauseProxy | own contract | 0x2a09cd… (selected) `0x2a09cd...90e2c1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp - Ideamarket Report.pdf | IDSPause | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | DomainNoSubdomainNameVerifier | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | MirrorNameVerifier | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | SubstackNameVerifier | own contract | 0x8b5f5f… (selected) `0x8b5f5f...9ddb3a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp - Ideamarket Report.pdf | TwitterHandleNameVerifier | own contract | 0x902ed1… (selected) `0x902ed1...c3d2b4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp - Ideamarket Report.pdf | IIdeaTokenNameVerifier | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | AddMarketSpell | own contract | 0x58d63a… (selected) `0x58d63a...44553d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp - Ideamarket Report.pdf | ChangeLogicSpell | own contract | 0x9f79fe… (selected) `0x9f79fe...7c0c9c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp - Ideamarket Report.pdf | SetPlatformFeeSpell | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | SetPlatformOwnerSpell | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | SetTimelockAdminSpell | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | SetTimelockDelaySpell | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | SetTokenOwnerSpell | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | SetTradingFeeSpell | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | AdminUpgradeabilityProxy | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | Proxy | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | UpgradeabilityProxy | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | Initializable | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | ICToken | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | IComptroller | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | IIdeaToken | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | IIdeaTokenExchange | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | IIdeaTokenFactory | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | IIdeaTokenVault | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | IInterestManager | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | IUniswapV2Factory | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | IUniswapV2Router01 | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | IUniswapV2Router02 | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp - Ideamarket Report.pdf | IWETH | unmatched — not counted | — | listed in scope and findings | no |
| Ideamarket Audit Response.pdf | MultiAction | own contract | 0xb41bd4… (selected) `0xb41bd4...c1f814` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Ideamarket Audit Response.pdf | InterestManagerCompound | unmatched — not counted | — | mentioned in QSP-2 fix and QSP-5 | no |
| Ideamarket Audit Response.pdf | IdeaTokenFactory | own contract | 0x4bc733… (selected) `0x4bc733...805dbc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Ideamarket Audit Response.pdf | IdeaTokenExchange | own contract | 0xbe7e6a… (selected) `0xbe7e6a...ad29a4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Ideamarket Audit Response.pdf | IdeaToken | unmatched — not counted | — | mentioned in QSP-5 | no |
| Ideamarket Audit Response.pdf | ProxyAdmin | own contract | 0xbe9c5d… (selected) `0xbe9c5d...341294` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 43 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 15 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 32 unmatched
- Matched-own operational status: 15 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: unique_name=15

Fork inheritance lineage and inherited audits are included when available.
