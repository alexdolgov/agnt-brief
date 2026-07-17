# Agentic Audit Brief: RocketSwap Base

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: RocketSwap Base (`rocketswap-base`)
- Website: [https://app.rocketswap.cc/exchange/swap](https://app.rocketswap.cc/exchange/swap)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 14 unique implementations (14 raw deployments)
- Coverage basis: 3/6 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $357,127.62
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for RocketSwap Base. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across base, bsc. Structural roles: 6 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (6)
- Contract kinds: contract (6)
- Detected standards: ownable (4), erc20 (1)
- Frameworks: openzeppelin (6)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- RcktLocker (`0x234ccb5c64fdb3958c47e8efbe122b2d54633a96`, chain 8453)
- RcktMasterChef (`0x304063953727b53048500dfd877a17d1c4f6eaff`, chain 8453)
- RcktVault (`0x2ec62d08277ffc42eb5af71c7595c1a9f9458a3c`, chain 8453)
- RocketSwapToken (`0x6653dd4b92a0e5bf8ae570a98906d9d6fd2eec09`, chain 8453)
- UniswapV2Factory (`0x1b8128c3a1b7d20053d10763ff02466ca7ff99fc`, chain 8453)
- UniswapV2Router02 (`0x4cf76043b3f97ba06917cbd90f9e3a2aac1b306e`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/6 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 8 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 6 of 14 unique; 8 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/8
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 14
- Raw deployments: 14
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SolidProof | Tier 2 | 3 | 37.5% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RocketSwapToken | unknown | project_anchor | own_supporting | 0 | base | unit-253167 | `0x6653dd4b92a0e5bf8ae570a98906d9d6fd2eec09` | ✅ Audited |
| UniswapV2Factory | unknown | project_anchor | own_supporting | 0 | base | unit-253162 | `0x1b8128c3a1b7d20053d10763ff02466ca7ff99fc` | ✅ Audited |
| UniswapV2Router02 | unknown | project_anchor | own_supporting | 0 | base | unit-253166 | `0x4cf76043b3f97ba06917cbd90f9e3a2aac1b306e` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x85dde545bbb76a4ed954c9525426cb2a283abc0e` | ⚠️ Unaudited |
| Multicall3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x74f477c907730eedea4274f5ed26b5ad7f98e099` | ⚠️ Unaudited |
| RcktLocker | unknown | project_anchor | own_supporting | 0 | base | unit-253163 | `0x234ccb5c64fdb3958c47e8efbe122b2d54633a96` | ⚠️ Unaudited |
| RcktMasterChef | unknown | project_anchor | own_supporting | 0 | base | unit-253165 | `0x304063953727b53048500dfd877a17d1c4f6eaff` | ⚠️ Unaudited |
| RcktVault | unknown | project_anchor | own_supporting | 0 | base | unit-253164 | `0x2ec62d08277ffc42eb5af71c7595c1a9f9458a3c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0ca8118737a356b62c6d6fad6f5ca87ba8a3ebc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2de412bc1c4134b6c6fd869f1bb3f6d4be0300e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7e1206e8ca5fcacc0f9a3edd640c66fd780050b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xba4b5fd0326e5bd0eaed9369a52f8ef1bf8f5d73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe35beec0ac33eefbcfaf16e8088897153c69fcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc83ef35eb044b57850cf28eff40067719f136770` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [SmartContract_Audit_Solidproof_RocketSwap.pdf](https://github.com/solidproof/projects/blob/main/2023/RocketSwap/SmartContract_Audit_Solidproof_RocketSwap.pdf) | SolidProof | Audit | 2023-08 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 0 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21438] SmartContract_Audit_Solidproof_RocketSwap.pdf — matched: Audit report for RocketSwap on Base Mainnet. Scope includes three contracts: RocketSwapToken, UniswapV2Router02, and UniswapV2Factory. Audit date is August 8, 2023.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| SmartContract_Audit_Solidproof_RocketSwap.pdf | RocketSwapToken | own contract | RocketSwapToken (selected) `0x6653dd4b92a0e5bf8ae570a98906d9d6fd2eec09` — deployed 2023-07-25 06:21:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SmartContract_Audit_Solidproof_RocketSwap.pdf | UniswapV2Router02 | own contract | UniswapV2Router02 (selected) `0x4cf76043b3f97ba06917cbd90f9e3a2aac1b306e` — deployed 2023-07-25 06:13:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SmartContract_Audit_Solidproof_RocketSwap.pdf | UniswapV2Factory | own contract | UniswapV2Factory (selected) `0x1b8128c3a1b7d20053d10763ff02466ca7ff99fc` — deployed 2023-07-25 06:03:53+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x234ccb5c64fdb3958c47e8efbe122b2d54633a96` | RcktLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x304063953727b53048500dfd877a17d1c4f6eaff` | RcktMasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2ec62d08277ffc42eb5af71c7595c1a9f9458a3c` | RcktVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=3

Fork inheritance lineage and inherited audits are included when available.
