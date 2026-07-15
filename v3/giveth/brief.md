# Agentic Audit Brief: Giveth

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

- Project: Giveth (`giveth`)
- Website: [https://giveth.io](https://giveth.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, gnosis, optimism, polygon-zkevm
- Contract surface: 34 unique implementations (36 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $117,788.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Giveth. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum, gnosis, optimism, polygon-zkevm. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: erc20 (1)
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 31 contracts are derived from known codebases. 31 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2a3dd3...ca2ede`, chain 1)
- UnnamedContract (`0x2b0ee1...977f51`, chain 1)
- UnnamedContract (`0x87de99...b61f4d`, chain 1)
- UnnamedContract (`0x88ad09...655671`, chain 1)
- UnnamedContract (`0x99c9fc...884be1`, chain 1)
- UnnamedContract (`0xc763b6...67c4e1`, chain 1)
- UnnamedContract (`0xd10bac...8e1626`, chain 1)
- UnnamedContract (`0xf924ff...14e74f`, chain 1)
- UnnamedContract (`0x0018c6...bebd9b`, chain 10)
- UnnamedContract (`0x165e6d...4bd276`, chain 10)
- UnnamedContract (`0x420000...000042`, chain 10)
- UnnamedContract (`0x528cdc...412b98`, chain 10)
- UnnamedContract (`0x8fc7c1...45eb78`, chain 10)
- UnnamedContract (`0xd10bac...8e1626`, chain 10)
- UnnamedContract (`0xe3ac7b...bf3bd1`, chain 10)
- UnnamedContract (`0xf924ff...14e74f`, chain 10)
- UnnamedContract (`0x0018c6...bebd9b`, chain 100)
- UnnamedContract (`0x85dc9b...e41eae`, chain 100)
- UnnamedContract (`0xbf9452...b27414`, chain 100)
- UnnamedContract (`0xc0dbdc...4bb1e1`, chain 100)
- UnnamedContract (`0xd10bac...8e1626`, chain 100)
- UnnamedContract (`0xe70494...36708d`, chain 100)
- UnnamedContract (`0xe96adb...31630e`, chain 100)
- UnnamedContract (`0xf4ef9a...b09588`, chain 100)
- UnnamedContract (`0xf924ff...14e74f`, chain 100)
- UnnamedContract (`0x4fb9b1...3a0d54`, chain 1101)
- UnnamedContract (`0x50f99d...cb3473`, chain 1101)
- UnnamedContract (`0xa1769a...acc21a`, chain 1101)
- UnnamedContract (`0xddafb9...e46ec2`, chain 1101)
- GIV (`0x900db9...230da0`, chain 1)
- TokenProxy (`0x4f4f9b...d59e75`, chain 100)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 31/35 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 31 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 31 of 34 unique; 3 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 31
- Unique implementations: 34
- Raw deployments: 36
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GIV | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386813 | `0x900db9...230da0` | ⚠️ Unaudited |
| PermittableToken | token | project_anchor | own_supporting | 1 | gnosis | unit-386841 | `0x4f4f9b...d59e75` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: ethereum `0xbeba16...461eeb`; gnosis `0x08ea9f...2ae10e`; gnosis `0xb7189a...d5fa57` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (31)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386808 | `0x2a3dd3...ca2ede` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386809 | `0x2b0ee1...977f51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386811 | `0x87de99...b61f4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386812 | `0x88ad09...655671` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386814 | `0x99c9fc...884be1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386815 | `0xc763b6...67c4e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386816 | `0xd10bac...8e1626` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386817 | `0xf924ff...14e74f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386818 | `0x0018c6...bebd9b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386819 | `0x165e6d...4bd276` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-386820 | `0x1d6812...9daa8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386821 | `0x420000...000042` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386822 | `0x528cdc...412b98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386823 | `0x8fc7c1...45eb78` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-386824 | `0x969e1d...397772` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386825 | `0xd10bac...8e1626` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386826 | `0xe3ac7b...bf3bd1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386827 | `0xf924ff...14e74f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-386828 | `0x0018c6...bebd9b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-386829 | `0x85dc9b...e41eae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-386830 | `0xbf9452...b27414` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-386831 | `0xc0dbdc...4bb1e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-386832 | `0xd10bac...8e1626` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-386833 | `0xe70494...36708d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-386834 | `0xe96adb...31630e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-386835 | `0xf4ef9a...b09588` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-386836 | `0xf924ff...14e74f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-386837 | `0x4fb9b1...3a0d54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-386838 | `0x50f99d...cb3473` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-386839 | `0xa1769a...acc21a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-386840 | `0xddafb9...e46ec2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Giveth GIVeconomy Contracts Code Review.pdf](https://github.com/lastperson/code-reviews/blob/main/Giveth%20GIVeconomy%20Contracts%20Code%20Review.pdf) | unknown | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13183] Giveth GIVeconomy Contracts Code Review.pdf — no match: Report states 10 contracts in scope under Distributors, TokenDistro, and Tokens folders, but only 5 are explicitly named in the review. The other 5 are not identified.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Giveth GIVeconomy Contracts Code Review.pdf | GardenUnipoolTokenDistributor | unmatched — not counted | — | mentioned in line-by-line review | no |
| Giveth GIVeconomy Contracts Code Review.pdf | UnipoolTokenDistributor | unmatched — not counted | — | mentioned in line-by-line review | no |
| Giveth GIVeconomy Contracts Code Review.pdf | TokenDistro | unmatched — not counted | — | mentioned in line-by-line review | no |
| Giveth GIVeconomy Contracts Code Review.pdf | BridgeToken | unmatched — not counted | — | mentioned in line-by-line review | no |
| Giveth GIVeconomy Contracts Code Review.pdf | TokenERC677 | unmatched — not counted | — | mentioned in line-by-line review | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x900db9...230da0` | GIV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x4f4f9b...d59e75` | PermittableToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 5 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [13183] Giveth GIVeconomy Contracts Code Review.pdf

Fork inheritance lineage and inherited audits are included when available.
