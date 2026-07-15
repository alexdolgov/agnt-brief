# Agentic Audit Brief: BabySwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: DEAD - TVL changed 1.0% over 90 days

## Project Overview

- Project: BabySwap (`babyswap`)
- Website: [https://home.babyswap.finance/](https://home.babyswap.finance/)
- Lifecycle: dead (Tier 0, 99.6% below peak)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 15 unique implementations (15 raw deployments)
- Coverage basis: 1/12 confirmed own live verified implementations (8.3%); conservative 8.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,301,945.33
- On-chain TVL (included contracts): $195,282.35
- TVL by chain: Bsc $195,282.35

## Project Description

This brief describes the observed EVM deployment and audit surface for BabySwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 16 contract row(s) across bsc. Structural roles: 14 core, 2 supporting. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 16
- Structural roles: core (14), supporting (2)
- Contract kinds: contract (16)
- Detected standards: ownable (10), erc165 (4), erc721 (4), erc20 (2), pausable (1)
- Frameworks: openzeppelin (16), foundry (7)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BabyAutoPoolV2 (`0x3b6279...2554b1`, chain 56)
- BabyERC721 (`0x9f0225...fd91a8`, chain 56)
- BabyExchange (`0xe7bef5...ae2d00`, chain 56)
- BabyFactory (`0x86407b...f889da`, chain 56)
- BabyFarmV2 (`0xcb5946...0842bb`, chain 56)
- BabyPoolV2 (`0xad7a58...94ef1c`, chain 56)
- BabySBTs (`0x8c2710...76fa7c`, chain 56)
- BabySmartRouter (`0x8317c4...e2ad32`, chain 56)
- BabyToken (`0x53e562...3d2657`, chain 56)
- BabyWonderland (`0x1fe7f2...1dd68d`, chain 56)
- RewardClaim (`0xf28298...1f856d`, chain 56)
- vBABYToken (`0x051344...e5cb22`, chain 56)

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 16 (13 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/15 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/12 (8.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 13 of 15 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/12
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 15
- Raw deployments: 15
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $195,282.35
- Latest audit: 2022-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $195,282.35 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 8.3% | 2022-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BabyWonderland | unknown | project_anchor | own_supporting | 0 | bsc | unit-380088 | `0x1fe7f2...1dd68d` | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BabyToken | token | project_anchor | third_party_dependency | 0 | bsc | unit-380091 | `0x53e562...3d2657` | ⚠️ Unaudited |
| BabyPoolV2 | core_logic | project_anchor | own_supporting | 0 | bsc | unit-380095 | `0xad7a58...94ef1c` | ⚠️ Unaudited |
| BabyAutoPoolV2 | core_logic | project_anchor | own_supporting | 0 | bsc | unit-380090 | `0x3b6279...2554b1` | ⚠️ Unaudited |
| BabyERC721 | token | project_anchor | own_supporting | 0 | bsc | unit-380094 | `0x9f0225...fd91a8` | ⚠️ Unaudited |
| BabyExchange | unknown | project_anchor | own_supporting | 0 | bsc | unit-380099 | `0xe7bef5...ae2d00` | ⚠️ Unaudited |
| BabyFactory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-380092 | `0x86407b...f889da` | ⚠️ Unaudited |
| BabyFarmV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-380097 | `0xcb5946...0842bb` | ⚠️ Unaudited |
| BabyNormalRouter | unknown | project_anchor | own_supporting | 1 | bsc | unit-380101 | `0x8317c4...e2ad32` | ⚠️ Unaudited |
| BabyRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-380089 | `0x325e34...6b38bd` | ⚠️ Unaudited |
| BabySBTs | unknown | project_anchor | own_supporting | 0 | bsc | unit-380093 | `0x8c2710...76fa7c` | ⚠️ Unaudited |
| LandFragments | unknown | project_anchor | own_supporting | 0 | bsc | unit-380096 | `0xc646d1...59c317` | ⚠️ Unaudited |
| MasterChef | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-380098 | `0xdfaa0e...0ac730` | ⚠️ Unaudited |
| RewardClaim | unknown | project_anchor | own_supporting | 0 | bsc | unit-380100 | `0xf28298...1f856d` | ⚠️ Unaudited |
| vBABYToken | token | project_anchor | own_supporting | 0 | bsc | unit-380087 | `0x051344...e5cb22` | ⚠️ Unaudited |

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
| [skynet.certik.com/projects/babyswap](https://skynet.certik.com/projects/babyswap) | CertiK | Audit | 2022-08 | stale | Direct | n/a | matched | 1 | 0 | 0 | 1 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3102] skynet.certik.com/projects/babyswap — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/babyswap | BabyWonderland | own contract | BabyWonderland (selected) `0x1fe7f2...1dd68d` — deployed 2022-09-07 13:32:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| skynet.certik.com/projects/babyswap | IBabyWonderlandMintable | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x53e562...3d2657` | BabyToken | token | $179,141.49 | Verified native implementation with $179,141.49 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xad7a58...94ef1c` | BabyPoolV2 | core_logic | $16,140.86 | Verified native implementation with $16,140.86 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3b6279...2554b1` | BabyAutoPoolV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x9f0225...fd91a8` | BabyERC721 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe7bef5...ae2d00` | BabyExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xcb5946...0842bb` | BabyFarmV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8317c4...e2ad32` | BabyNormalRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8c2710...76fa7c` | BabySBTs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc646d1...59c317` | LandFragments | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf28298...1f856d` | RewardClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x051344...e5cb22` | vBABYToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=1

Fork inheritance lineage and inherited audits are included when available.
