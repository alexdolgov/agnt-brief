# Agentic Audit Brief: CACHE.Gold

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: CACHE.Gold (`cache.gold`)
- Website: [https://cache.gold/](https://cache.gold/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 11 unique implementations (14 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $515,628.99
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for CACHE.Gold. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- CacheGold (`0xf5238462e7235c7b62811567e63dd17d12c2eaa0`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 10 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 11 unique; 10 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/4
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 11
- Raw deployments: 14
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 25.0% | 2019-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CacheGold | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381528 | `0xf5238462e7235c7b62811567e63dd17d12c2eaa0` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GramChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8382adf670cb280f2f318bc2446be3860758aef4`; ethereum `0xddfe951a49acd7f013d85cc169293384cd7b9de4` | ⚠️ Unaudited |
| LockedGoldOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b7820e62778c7317403d892f6501dd816f82730` | ⚠️ Unaudited |
| MultiSigWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3ab9c31148789570f51180a3ef7107e16c4b234c`; ethereum `0x6522b05fe48d274f14559e0391be3675e6a1ac91`; ethereum `0x7ea9b52e9f8673f3e22b4eec2c4c7a7e2d1b6636` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x101e2212f5860e813983329b20200bdc6e3acc20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1158e64ba535a269e265c89475541ca46e3f549b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d7956bba51b7d88e56f0a6b1f6badba65aed20c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a2b32f6b3ddc9edd7c654ba97d453d7631723da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b73d8cd4cc8f43833c321feb72a84829f977466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b9be8d577a3ebf1ea985f35a49165ffc011842b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6d6f1ee5b4c39e75b9ea3e6f16672b193a5d77f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 13
- Live contracts: 0
- Unknown liveness contracts: 13
- Source-verified contracts: 6
- Currently scope-matched contracts retained as-is: 0
- Classification counts: source verified unclassified=6, unverified unclassified=7

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| source verified unclassified | GramChain<br>`0x8382adf670cb280f2f318bc2446be3860758aef4` | non_address_book | unknown | unknown | verified | n/a | `0x10583948905d768880ba6c5a17847556da49305a` |
| source verified unclassified | GramChain<br>`0xddfe951a49acd7f013d85cc169293384cd7b9de4` | non_address_book | unknown | unknown | verified | n/a | `0x10583948905d768880ba6c5a17847556da49305a` |
| source verified unclassified | LockedGoldOracle<br>`0x5b7820e62778c7317403d892f6501dd816f82730` | non_address_book | unknown | unknown | verified | n/a | `0x10583948905d768880ba6c5a17847556da49305a` |
| source verified unclassified | MultiSigWallet<br>`0x3ab9c31148789570f51180a3ef7107e16c4b234c` | non_address_book | unknown | unknown | verified | n/a | `0x10583948905d768880ba6c5a17847556da49305a` |
| source verified unclassified | MultiSigWallet<br>`0x6522b05fe48d274f14559e0391be3675e6a1ac91` | non_address_book | unknown | unknown | verified | n/a | `0x10583948905d768880ba6c5a17847556da49305a` |
| source verified unclassified | MultiSigWallet<br>`0x7ea9b52e9f8673f3e22b4eec2c4c7a7e2d1b6636` | non_address_book | unknown | unknown | verified | n/a | `0x10583948905d768880ba6c5a17847556da49305a` |
| unverified unclassified | UnnamedContract<br>`0x101e2212f5860e813983329b20200bdc6e3acc20` | non_address_book | unknown | unknown | unverified | n/a | `0x10583948905d768880ba6c5a17847556da49305a` |
| unverified unclassified | UnnamedContract<br>`0x1158e64ba535a269e265c89475541ca46e3f549b` | non_address_book | unknown | unknown | unverified | n/a | `0x10583948905d768880ba6c5a17847556da49305a` |
| unverified unclassified | UnnamedContract<br>`0x3d7956bba51b7d88e56f0a6b1f6badba65aed20c` | non_address_book | unknown | unknown | unverified | n/a | `0x10583948905d768880ba6c5a17847556da49305a` |
| unverified unclassified | UnnamedContract<br>`0x4a2b32f6b3ddc9edd7c654ba97d453d7631723da` | non_address_book | unknown | unknown | unverified | n/a | `0x10583948905d768880ba6c5a17847556da49305a` |
| unverified unclassified | UnnamedContract<br>`0x4b73d8cd4cc8f43833c321feb72a84829f977466` | non_address_book | unknown | unknown | unverified | n/a | `0x10583948905d768880ba6c5a17847556da49305a` |
| unverified unclassified | UnnamedContract<br>`0x8b9be8d577a3ebf1ea985f35a49165ffc011842b` | non_address_book | unknown | unknown | unverified | n/a | `0x10583948905d768880ba6c5a17847556da49305a` |
| unverified unclassified | UnnamedContract<br>`0xa6d6f1ee5b4c39e75b9ea3e6f16672b193a5d77f` | non_address_book | unknown | unknown | unverified | n/a | `0x10583948905d768880ba6c5a17847556da49305a` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [CACHE_Gold_Audit_Zerotrust.pdf](https://github.com/cache-token/docs/blob/master/CACHE_Gold_Audit_Zerotrust.pdf) | unknown | Audit | 2019-09 | stale | Direct | n/a | matched | 1 | 0 | 0 | 1 | n/a |
| [CACHE_Gold_CGT_Audit_Polygon_CertiK.pdf](https://github.com/cache-token/docs/blob/master/CACHE_Gold_CGT_Audit_Polygon_CertiK.pdf) | CertiK | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12878] CACHE_Gold_Audit_Zerotrust.pdf — matched: No reason recorded
- [12879] CACHE_Gold_CGT_Audit_Polygon_CertiK.pdf — no match: Audit scope table lists three files: FxERC20ChildTunnel.sol, FxERC20RootTunnel.sol, and CacheGoldChild.sol. The audit date is explicitly given as 'Jul 29th, 2022' in the header and delivery date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| CACHE_Gold_Audit_Zerotrust.pdf | CacheGold | own contract | CacheGold (selected) `0xf5238462e7235c7b62811567e63dd17d12c2eaa0` — deployed 2020-02-17 14:03:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CACHE_Gold_Audit_Zerotrust.pdf | LockedGoldOracle | unmatched — not counted | — | — | no |
| CACHE_Gold_CGT_Audit_Polygon_CertiK.pdf | FxERC20ChildTunnel | unmatched — not counted | — | listed in Audit Scope table | no |
| CACHE_Gold_CGT_Audit_Polygon_CertiK.pdf | FxERC20RootTunnel | unmatched — not counted | — | listed in Audit Scope table | no |
| CACHE_Gold_CGT_Audit_Polygon_CertiK.pdf | CacheGoldChild | unmatched — not counted | — | listed in Audit Scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=1

Zero-match audit list:

- [12879] CACHE_Gold_CGT_Audit_Polygon_CertiK.pdf

Fork inheritance lineage and inherited audits are included when available.
