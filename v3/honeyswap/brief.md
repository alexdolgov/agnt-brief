# Agentic Audit Brief: Honeyswap

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

- Project: Honeyswap (`honeyswap`)
- Website: [https://honeyswap.org/](https://honeyswap.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: gnosis, polygon, polygon-mumbai
- Contract surface: 45 unique implementations (45 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $601,861.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Honeyswap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across gnosis, polygon, polygon-mumbai. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 23 contracts are derived from known codebases. 23 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0b21081c6f8b1990f53fc76279cc41ba22d7afe2`, chain 100)
- UnnamedContract (`0x0e25b918c9fb2fea5d42011d1f4b9f8c61b453e7`, chain 100)
- UnnamedContract (`0x4ba7362f9189572cbb1216819a45aba0d0b2d1cb`, chain 100)
- UnnamedContract (`0x59a15718992a42082ab2306bc6cbd662958a178c`, chain 100)
- UnnamedContract (`0x6f38d112b13eda1e3abafc61e296be2e27f15071`, chain 100)
- UnnamedContract (`0x7714eb44754cb9db6d65b61f3352df12600dc593`, chain 100)
- UnnamedContract (`0x8ccbeab14b5ac4a431fffc39f4bec4089020a155`, chain 100)
- UnnamedContract (`0xbc4fb635636b81e60a4e356c4dceb53cac507d03`, chain 100)
- UnnamedContract (`0xc08fbc829a879470c15916aad14e85905e6ab901`, chain 100)
- UnnamedContract (`0xe71331aef803baec606423b105e4d1c85f012c00`, chain 100)
- UnnamedContract (`0xeb24f7001437188baf2d5ef0b0fcfadad4564517`, chain 100)
- UnnamedContract (`0xed062e26c8f41a9088d060156edc7fc6c17d5825`, chain 100)
- UnnamedContract (`0xfbd0b2726070a9d6aff6d7216c9e9340eae68b2a`, chain 100)
- UnnamedContract (`0x1109052d0155657520ca1869ae25a0a5ad51d24e`, chain 137)
- UnnamedContract (`0x2ae82037c7c9e6af4d24bb0781f6477f29cb160d`, chain 137)
- UnnamedContract (`0x44e4fcfed14e1285c9e0f6eae77d5fdd0f196f85`, chain 137)
- UnnamedContract (`0x517b5c25ee5f972857bd4fd5bffbbd23b1c9bcb7`, chain 137)
- UnnamedContract (`0x8c9968a2b16bc1cd0ead74f5eef25e899e795501`, chain 137)
- UnnamedContract (`0xbc9d027eb4b1d9622f217de10f07dc74b7c81eeb`, chain 137)
- UnnamedContract (`0xc5f12618bc930aab89bfc53b9d20288dfaaf3166`, chain 137)
- UnnamedContract (`0xeac1dc5ccf09e2b816f9544878cd513728fa6af7`, chain 137)
- UnnamedContract (`0xec7904e20b69f60966d6c6b9dc534355614dd922`, chain 137)
- UnnamedContract (`0xf0c8376065fadfacb706cafbaac96b321069c015`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (0 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/46 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 23 own, 22 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 23 of 45 unique; 22 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 44
- Unique implementations: 45
- Raw deployments: 45
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MiniMeToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | gnosis | unit-241878 | `0x71850b7e9ee3f13ab46d67167341e4bdc905eef9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (44)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241873 | `0x0b21081c6f8b1990f53fc76279cc41ba22d7afe2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241874 | `0x0e25b918c9fb2fea5d42011d1f4b9f8c61b453e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241875 | `0x4ba7362f9189572cbb1216819a45aba0d0b2d1cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241876 | `0x59a15718992a42082ab2306bc6cbd662958a178c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241877 | `0x6f38d112b13eda1e3abafc61e296be2e27f15071` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241879 | `0x7714eb44754cb9db6d65b61f3352df12600dc593` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241880 | `0x8ccbeab14b5ac4a431fffc39f4bec4089020a155` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241881 | `0xbc4fb635636b81e60a4e356c4dceb53cac507d03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241882 | `0xc08fbc829a879470c15916aad14e85905e6ab901` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241883 | `0xe71331aef803baec606423b105e4d1c85f012c00` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | gnosis | unit-241884 | `0xe91d153e0b41518a2ce8dd3d7944fa863463a97d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241885 | `0xeb24f7001437188baf2d5ef0b0fcfadad4564517` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241886 | `0xed062e26c8f41a9088d060156edc7fc6c17d5825` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241887 | `0xfbd0b2726070a9d6aff6d7216c9e9340eae68b2a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-241888 | `0x1109052d0155657520ca1869ae25a0a5ad51d24e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-241889 | `0x2ae82037c7c9e6af4d24bb0781f6477f29cb160d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-241890 | `0x44e4fcfed14e1285c9e0f6eae77d5fdd0f196f85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-241892 | `0x517b5c25ee5f972857bd4fd5bffbbd23b1c9bcb7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-241893 | `0x8c9968a2b16bc1cd0ead74f5eef25e899e795501` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-241894 | `0xbc9d027eb4b1d9622f217de10f07dc74b7c81eeb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-241895 | `0xc5f12618bc930aab89bfc53b9d20288dfaaf3166` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-241896 | `0xeac1dc5ccf09e2b816f9544878cd513728fa6af7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-241897 | `0xec7904e20b69f60966d6c6b9dc534355614dd922` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-241898 | `0xf0c8376065fadfacb706cafbaac96b321069c015` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241899 | `0x0643cd09cbe6c2a405eff4d165acd9206804623a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241900 | `0x1b35f10413859d25cf63d27336ef0434acf113fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241901 | `0x41b0039fcc760b8899b3d11e954a7a7b5dfc9e4c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241902 | `0x53f03714e7d2bbf6498d9cb2b26854daa2ecc7a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241903 | `0x5b0f8d8f47e3fdf7ee1c337abca19dbba98524e6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241904 | `0x6645516fed458f900b5c89a095e0a6d099c6d529` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241905 | `0x6a10a3012bfb0a59b01aa9d1972b167103b04e22` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241906 | `0x6c66ec1437dadc26070b731cce0086f9aef41b4a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241907 | `0x7817a805598822985310b859c9e507a535b0c9d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241908 | `0x92f0155e2354461e8ad278dfa37ad7da03fe9051` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241909 | `0x99dfa87ea183e0e21f977255f768ae453ffeba64` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241910 | `0x9d51fd641e420692e981ddf4345b1917ee16e880` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241911 | `0xb1576a9be5ec445368740161174f3dd1034ff8be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241912 | `0xb7e098cb86b120363a935730970a3758861ba458` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241913 | `0xc271f2382ec150de7536168f10c988766eb0815b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241914 | `0xd1cf4cf213ff1dec94b4879356ab481b47369dfd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241915 | `0xd233d46ddeceef8cc8679f281ee5892f94c2945c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241916 | `0xe5ff665bd031bc044f47ba5611f5450d69b733f4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241917 | `0xe97999f411333e3b712104aa04fc06b149bd12ea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241918 | `0xf0e29cc532c198bdd09bf0c4e37c47dd68b32200` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audits & Security](https://wiki.1hive.org/projects/honeyswap/audits-and-security.md) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20513] Audits & Security — no match: Extracted three contracts explicitly listed in the 'Relevant contracts' section of the internal audit.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audits & Security | ReferralRewarder | unmatched — not counted | — | listed in relevant contracts section | no |
| Audits & Security | HSFToken | unmatched — not counted | — | listed in relevant contracts section | no |
| Audits & Security | HoneyFarm | unmatched — not counted | — | listed in relevant contracts section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 44 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20513] Audits & Security

Fork inheritance lineage and inherited audits are included when available.
