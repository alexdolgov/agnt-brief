# Agentic Audit Brief: MDEX

## Export Authority

- Production state: **published scope**
- Raw selected rows: 9 across 3 audit(s)
- Eligible audit results: 3 (3 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: MDEX (`mdex`)
- Website: [https://mdex.com/](https://mdex.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, heco
- Contract surface: 25 unique implementations (35 raw deployments)
- Coverage basis: 3/4 confirmed own live verified implementations (75.0%); conservative 75.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,241,591.63
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for MDEX. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across bsc, heco. Structural roles: 4 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (4)
- Contract kinds: contract (4)
- Detected standards: ownable (4), erc20 (1)
- Frameworks: openzeppelin (4)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BSCPool (`0xc48fe252aa631017df253578b1405ea399728a50`, chain 56)
- MdxToken (`0x9c65ab58d8d978db963e63f2bfb7121627e3a739`, chain 56)
- Repurchase (`0x1308af6853b449d7604c7544cb2170248527110f`, chain 56)
- SwapMining (`0x782395303692abed877d2737aa7982345eb44c11`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/4 (75.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 12 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 9 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 4 of 25 unique; 21 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/8
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 25
- Raw deployments: 35
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 75.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 3 | 37.5% | 2021-04 |
| Fairyproof | Tier 2 | 3 | 37.5% | 2021-04 |
| SlowMist | Tier 1 | 3 | 37.5% | 2021-03 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MdxToken | token | project_anchor | own_supporting | 0 | bsc | unit-388998 | `0x9c65ab58d8d978db963e63f2bfb7121627e3a739` | ✅ Audited |
| Repurchase | unknown | project_anchor | own_supporting | 0 | bsc | unit-388996 | `0x1308af6853b449d7604c7544cb2170248527110f` | ✅ Audited |
| SwapMining | unknown | project_anchor | own_supporting | 0 | bsc | unit-388997 | `0x782395303692abed877d2737aa7982345eb44c11` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BlackHole | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f3dee41f6f216d1e78670b7e53002ba0c4cd3d1` | ⚠️ Unaudited |
| BSCPool | core_logic | project_anchor | own_supporting | 0 | bsc | unit-388999 | `0xc48fe252aa631017df253578b1405ea399728a50` | ⚠️ Unaudited |
| MdexFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3cd1c46068daea5ebb0d3f55f6915b10648062b8` | ⚠️ Unaudited |
| MdexRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x0384e9ad329396c3a6a401243ca71633b2bc4333`; bsc `0x518a6e9fb2832ada41415775e5c45de6efcf1a3c`; bsc `0x62c1a0d92b09d0912f7bb9c96c5ecdc7f2b87059`; bsc `0x7dae51bd3e3376b8c7c4900e9107f12be3af1ba8` | ⚠️ Unaudited |
| repurchase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: bsc `0x187cc392e12a9427a5d7719dc7372f69f068b2bd`; bsc `0x6265334dff2d2e8d950de9d8dbb2ea881560bb22`; bsc `0x84e087d4be5928c219b9dea8e087b8b737036f44`; bsc `0x98b54b1405329cbc1cbe0f1e386b1abe6a387f59`; bsc `0xbef2db33f018be9247c726106b0ea2fce25a61ec`; bsc `0xc151cb380dcb3266383edb3f0b001b871dc11251`; bsc `0xd6a50d5384c90567f47955c133f07500e421b3a6`; bsc `0xf082f6f8180207b6252d9930312c825e9c56453e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9458f7d8e2dc56fbcc71628aa3811d44bfabef8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba6f7d77eaeeed5ed9f6cb385022702a8f3392d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd21cd7dd5aa12561a608821cb1de7b2f5570f5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6cd5963be717dc1afa5100c7e29be8ac4158047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa2eeb85dd47ff9497b340cc2c5474453821214f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-388984 | `0x25d2e80cb6b86881fd7e07dd263fb79f4abe033c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-388985 | `0x465d246233ba20e7cfc95743b5d073be8a7746b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-388986 | `0x46900c0c18ace98baab81561b9906dc93287910c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-388987 | `0x5fef5cc8ae1e42c5299aae05a2effa1634ba5e77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-388988 | `0x7373c42502874c88954bdd6d50b53061f018422e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-388989 | `0x9197d717a4f45b672acacab4cc0c6e09222f8695` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-388990 | `0xa3fd9758323c8a86292b55702f631c81283c9b79` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-388991 | `0xa6fe654241140469d1757a5bb8ee844325059569` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-388992 | `0xb0b670fc1f7724119963018db0bfa86adb22d941` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-388993 | `0xed7d5f38c79115ca12fe6c0041abb22f0a06c300` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-388994 | `0xf9852c6588b70ad3c26dae47120f174527e03a25` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-388995 | `0xfb03e11d93632d97a8981158a632dd5986f5e909` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [slowmist_bsc.pdf](https://mdex.com/slowmist_bsc.pdf) | SlowMist | Audit | 2021-03 | stale | Direct | n/a | matched | 3 | 0 | 0 | 26 | n/a |
| [fairyproof_bsc.pdf](https://mdex.com/fairyproof_bsc.pdf) | Fairyproof | Audit | 2021-04 | stale | Direct | n/a | matched | 3 | 0 | 0 | 7 | n/a |
| [certik_bsc.pdf](https://mdex.com/certik_bsc.pdf) | CertiK | Audit | 2021-04 | stale | Direct | n/a | matched | 3 | 0 | 0 | 15 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3097] slowmist_bsc.pdf — matched: No reason recorded
- [3098] fairyproof_bsc.pdf — matched: No reason recorded
- [3099] certik_bsc.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| slowmist_bsc.pdf | Airdrop | unmatched — not counted | — | — | no |
| slowmist_bsc.pdf | AirdropMDX | unmatched — not counted | — | — | no |
| slowmist_bsc.pdf | BlackHole | unmatched — not counted | — | — | no |
| slowmist_bsc.pdf | CoinChef | unmatched — not counted | — | — | no |
| slowmist_bsc.pdf | DelegateERC20 | unmatched — not counted | — | — | no |
| slowmist_bsc.pdf | Factory | unmatched — not counted | — | — | no |
| slowmist_bsc.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| slowmist_bsc.pdf | HecoPool | unmatched — not counted | — | — | no |
| slowmist_bsc.pdf | IERC20 | unmatched — not counted | — | — | no |
| slowmist_bsc.pdf | IMdexFactory | unmatched — not counted | — | — | no |
| slowmist_bsc.pdf | IMdexPair | unmatched — not counted | — | — | no |
| slowmist_bsc.pdf | IMdx | unmatched — not counted | — | — | no |
| slowmist_bsc.pdf | MdexERC20 | unmatched — not counted | — | — | no |
| slowmist_bsc.pdf | MdexFactory | unmatched — not counted | — | — | no |
| slowmist_bsc.pdf | MdexOracleLibrary | unmatched — not counted | — | — | no |
| slowmist_bsc.pdf | MdexPair | unmatched — not counted | — | — | no |
| slowmist_bsc.pdf | MdexRouter | unmatched — not counted | — | — | no |
| slowmist_bsc.pdf | MdxToken | own contract | MdxToken (selected) `0x9c65ab58d8d978db963e63f2bfb7121627e3a739` — deployed 2021-04-07 22:06:54+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| slowmist_bsc.pdf | MdxTokenHeco | unmatched — not counted | — | — | no |
| slowmist_bsc.pdf | Migrations | unmatched — not counted | — | — | no |
| slowmist_bsc.pdf | Oracle | unmatched — not counted | — | — | no |
| slowmist_bsc.pdf | Repurchase | own contract | Repurchase (selected) `0x1308af6853b449d7604c7544cb2170248527110f` — deployed 2021-04-21 17:15:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| slowmist_bsc.pdf | Router | unmatched — not counted | — | — | no |
| slowmist_bsc.pdf | SafeMath | unmatched — not counted | — | — | no |
| slowmist_bsc.pdf | SwapMining | own contract | SwapMining (selected) `0x782395303692abed877d2737aa7982345eb44c11` — deployed 2021-04-07 22:15:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| slowmist_bsc.pdf | TeamTimeLock | unmatched — not counted | — | — | no |
| slowmist_bsc.pdf | Timelock | unmatched — not counted | — | — | no |
| slowmist_bsc.pdf | TransferHelper | unmatched — not counted | — | — | no |
| slowmist_bsc.pdf | UQ112x112 | unmatched — not counted | — | — | no |
| fairyproof_bsc.pdf | blockHole | unmatched — not counted | — | — | no |
| fairyproof_bsc.pdf | boardRoom | unmatched — not counted | — | — | no |
| fairyproof_bsc.pdf | boardRoomMDX | unmatched — not counted | — | — | no |
| fairyproof_bsc.pdf | factory | unmatched — not counted | — | — | no |
| fairyproof_bsc.pdf | mdxToken | own contract | MdxToken (selected) `0x9c65ab58d8d978db963e63f2bfb7121627e3a739` — deployed 2021-04-07 22:06:54+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| fairyproof_bsc.pdf | oracle | unmatched — not counted | — | — | no |
| fairyproof_bsc.pdf | pool | unmatched — not counted | — | — | no |
| fairyproof_bsc.pdf | repurchase | own contract | Repurchase (selected) `0x1308af6853b449d7604c7544cb2170248527110f` — deployed 2021-04-21 17:15:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| fairyproof_bsc.pdf | router | unmatched — not counted | — | — | no |
| fairyproof_bsc.pdf | swapMining | own contract | SwapMining (selected) `0x782395303692abed877d2737aa7982345eb44c11` — deployed 2021-04-07 22:15:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| certik_bsc.pdf | Airdrop | unmatched — not counted | — | — | no |
| certik_bsc.pdf | AirdropMDX | unmatched — not counted | — | — | no |
| certik_bsc.pdf | BlackHole | unmatched — not counted | — | — | no |
| certik_bsc.pdf | CoinChef | unmatched — not counted | — | — | no |
| certik_bsc.pdf | Factory | unmatched — not counted | — | — | no |
| certik_bsc.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| certik_bsc.pdf | HecoPool | unmatched — not counted | — | — | no |
| certik_bsc.pdf | MdexERC20 | unmatched — not counted | — | — | no |
| certik_bsc.pdf | MdexFactory | unmatched — not counted | — | — | no |
| certik_bsc.pdf | MdexPair | unmatched — not counted | — | — | no |
| certik_bsc.pdf | MdxToken | own contract | MdxToken (selected) `0x9c65ab58d8d978db963e63f2bfb7121627e3a739` — deployed 2021-04-07 22:06:54+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| certik_bsc.pdf | MdxTokenHeco | unmatched — not counted | — | — | no |
| certik_bsc.pdf | Oracle | unmatched — not counted | — | — | no |
| certik_bsc.pdf | Repurchase | own contract | Repurchase (selected) `0x1308af6853b449d7604c7544cb2170248527110f` — deployed 2021-04-21 17:15:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| certik_bsc.pdf | Router | unmatched — not counted | — | — | no |
| certik_bsc.pdf | SwapMining | own contract | SwapMining (selected) `0x782395303692abed877d2737aa7982345eb44c11` — deployed 2021-04-07 22:15:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| certik_bsc.pdf | TeamTimeLock | unmatched — not counted | — | — | no |
| certik_bsc.pdf | Timelock | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0xc48fe252aa631017df253578b1405ea399728a50` | BSCPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 9 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 48 unmatched
- Matched-own operational status: 9 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=9

Fork inheritance lineage and inherited audits are included when available.
