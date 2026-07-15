# Agentic Audit Brief: Ellipsis Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Ellipsis Finance (`ellipsis-finance`)
- Website: [https://ellipsis.finance/](https://ellipsis.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 28 unique implementations (141 raw deployments)
- Coverage basis: 2/5 confirmed own live verified implementations (40.0%); conservative 40.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,070,786.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ellipsis Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across bsc. Structural roles: 4 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (4), supporting (1)
- Contract kinds: contract (5)
- Detected standards: ownable (2), erc20 (1)
- Frameworks: openzeppelin (5)
- Upgradeable-pattern rows: 0

## Fork Analysis

2 of 5 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

**IncentiveVoting** (`0x4695e5...9bb06a`, chain 56)
Origin: dot-dot-finance (`0x4695e5...9bb06a`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenLocker** (`0x22a93f...a49aae`, chain 56)
Origin: dot-dot-finance (`0x22a93f...a49aae`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- EllipsisLpStaking (`0x5b74c9...8dfdbe`, chain 56)
- EllipsisToken2 (`0xaf4105...ce9d71`, chain 56)
- FeeDistributor (`0x3670c1...17ee1b`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/5 (40.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 23 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 5 of 28 unique; 23 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/23
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 28
- Raw deployments: 141
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 8.7% | 2022-03 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EllipsisToken2 | token | project_anchor | own_supporting | 0 | bsc | unit-384177 | `0xaf4105...ce9d71` | ✅ Audited |
| IncentiveVoting | unknown | project_anchor | own_supporting | 0 | bsc | unit-384175 | `0x4695e5...9bb06a` | ✅ Audited |

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CryptoFeeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1bd9d9...88ec56` | ⚠️ Unaudited |
| CryptoSwapRewardsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19301e...6b9f99` | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6e290...741cd4` | ⚠️ Unaudited |
| EllipsisLpStaking | unknown | project_anchor | own_supporting | 0 | bsc | unit-384176 | `0x5b74c9...8dfdbe` | ⚠️ Unaudited |
| FeeClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x2412be...8c5160`; bsc `0x9ab99d...a2356c`; bsc `0xde40f0...4d6e3d` | ⚠️ Unaudited |
| FeeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x604348...0dd3f6` | ⚠️ Unaudited |
| FeeDistributor | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-384174 | `0x3670c1...17ee1b` | ⚠️ Unaudited |
| FixedRewardsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x6a7354...6f6b99`; bsc `0x89db37...d77eb4`; bsc `0xe284c1...c9df8c` | ⚠️ Unaudited |
| LegacyPoolFeeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc24855...8dd191` | ⚠️ Unaudited |
| LpTokenStaker | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcce949...4cf61b` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x60a8ad...7bca18`; bsc `0xa7bd1f...52b9ff` | ⚠️ Unaudited |
| MetapoolFeeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x46e019...d5379e`; bsc `0xdd6df5...a27b66` | ⚠️ Unaudited |
| MultiFeeDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4076cc...a6bb5c` | ⚠️ Unaudited |
| PancakeFeeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xbe97f9...2ca542`; bsc `0xd7571f...627a4f` | ⚠️ Unaudited |
| PancakeStableSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x169f65...1787ef`; bsc `0xc2f5b9...bf43fe` | ⚠️ Unaudited |
| PancakeStableSwapTwoPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x852594...f0e4fc` | ⚠️ Unaudited |
| RewardsToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 20 deployments: bsc `0x052e56...7eccbe`; bsc `0x143d70...1ded79`; bsc `0x151f16...72beba`; bsc `0x18796c...8e033a`; bsc `0x2a435e...be5640`; bsc `0x2bad28...096b7d`; bsc `0x373410...52dace`; bsc `0x4c2915...9a10b2`; bsc `0x4d3e88...482f5d`; bsc `0x578104...117b3a`; bsc `0x679dbb...4ffa24`; bsc `0x833915...8d0d27`; bsc `0x9f99b2...f1f5ac`; bsc `0xa2520f...17eaf8`; bsc `0xbc5b58...8edc2d`; bsc `0xbcf37d...c72793`; bsc `0xcd5b31...529aea`; bsc `0xd86bf2...3244e2`; bsc `0xe69b03...0173ad`; bsc `0xf1e7f8...882c48` | ⚠️ Unaudited |
| TokenLocker | token | project_anchor | own_supporting | 0 | bsc | unit-384173 | `0x22a93f...a49aae` | ⚠️ Unaudited |
| ValasMetapoolRewardsToken | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x8087a9...a792ac`; bsc `0xf6be0f...4c250d` | ⚠️ Unaudited |
| ValasRewardsToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x5b5bd8...0ebbb5`; bsc `0xdc7f3e...f7b0e1`; bsc `0xe1c7c4...56e4a9` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 84 deployments: bsc `0x00d09e...191c8c`; bsc `0x07d9e2...fc03c4`; bsc `0x081c55...c7071d`; bsc `0x0bc3a8...557e56`; bsc `0x119ccf...b8c9e4`; bsc `0x147597...ddb5fd`; bsc `0x1583e5...4e5727`; bsc `0x160cae...5d4e76`; bsc `0x19ec9e...0a806d`; bsc `0x1c7816...1df1e6`; bsc `0x1e9768...43226c`; bsc `0x245e8b...cfabf5`; bsc `0x2477fb...b00bf9`; bsc `0x266bb3...7c3e63`; bsc `0x269782...20bbcb`; bsc `0x2d0a93...ca474c`; bsc `0x2f8e25...9b41be`; bsc `0x313bbb...8ce28c`; bsc `0x31d236...bf852b`; bsc `0x32db02...2a83cd`; bsc `0x38b345...fb0af0`; bsc `0x394678...5a3ccb`; bsc `0x3d2f8f...a5a8f7`; bsc `0x3e1531...a41009`; bsc `0x41871a...54a5c4`; bsc `0x4763e5...f1eecb`; bsc `0x541383...75d989`; bsc `0x556ea0...104b63`; bsc `0x5a9606...7fd988`; bsc `0x605676...b30154`; bsc `0x60e4ed...249088`; bsc `0x707e83...91e7c0`; bsc `0x7203d1...55cfd0`; bsc `0x72b7c1...30ed01`; bsc `0x780de1...dcfb72`; bsc `0x7b834a...db6296`; bsc `0x7db771...9c5e66`; bsc `0x843353...10932b`; bsc `0x85fdc3...274fa5`; bsc `0x8866c9...1ed306`; bsc `0x8b24a3...4d9a29`; bsc `0x8d7408...8d1e52`; bsc `0x8f2d0c...1824ba`; bsc `0x90c375...6122a5`; bsc `0x958c8b...cf3d96`; bsc `0x972df0...541fff`; bsc `0x9e80f1...7da648`; bsc `0xa0fdc7...a4916d`; bsc `0xa43a1f...c2fea5`; bsc `0xa5d748...c8d871`; bsc `0xa6f532...bb3397`; bsc `0xa71ecd...6e7541`; bsc `0xa7f552...0c6d9f`; bsc `0xa94090...e108f6`; bsc `0xab3821...c164a7`; bsc `0xab4990...64b6cd`; bsc `0xaf4de8...aaf452`; bsc `0xb4c0a7...ada122`; bsc `0xb83832...e1b442`; bsc `0xba7faa...d27a49`; bsc `0xba8c7f...60c727`; bsc `0xc0cd22...f607eb`; bsc `0xc21450...e186c9`; bsc `0xc377e2...52c874`; bsc `0xc6a752...771a49`; bsc `0xc86d71...0981ed`; bsc `0xd11f79...9f90f6`; bsc `0xd78f34...15775b`; bsc `0xdb900f...1fe0f3`; bsc `0xdd4da4...3fae88`; bsc `0xdd9227...5f6e25`; bsc `0xe32eb7...6860dc`; bsc `0xe6537a...0bacad`; bsc `0xe9c648...af45d4`; bsc `0xea0cbe...7d3e2f`; bsc `0xea55a3...d33211`; bsc `0xedbb3f...c8ffdc`; bsc `0xf17814...41015f`; bsc `0xf65bed...4a5870`; bsc `0xf707df...d280f1`; bsc `0xf9ac2e...49eb3f`; bsc `0xfa715e...20fbf2`; bsc `0xfd4afe...d766da`; bsc `0xfd62a9...9f8325` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1037f8...086925` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a2d34...a7dda9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98cfa2...5ba049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca9090...d383e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8552e...475d9f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [010421_Hacken_Ellipsis_SC_Audit_Report.pdf](https://github.com/ellipsis-finance/ellipsis-audits/blob/master/010421_Hacken_Ellipsis_SC_Audit_Report.pdf) | Hacken | Audit | 2021-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [PeckShield-Audit-Report-EllipsisV2Staking-v1.0.pdf](https://github.com/ellipsis-finance/ellipsis-audits/blob/master/PeckShield-Audit-Report-EllipsisV2Staking-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | n/a | matched | 2 | 0 | 0 | 1 | n/a |
| [www.curve.finance/audits](https://www.curve.finance/audits) | Curve Finance | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3131] 010421_Hacken_Ellipsis_SC_Audit_Report.pdf — no match: No reason recorded
- [3132] PeckShield-Audit-Report-EllipsisV2Staking-v1.0.pdf — matched: No reason recorded
- [11900] www.curve.finance/audits — no match: Only the name 'Curve' appears in the title; no scope section or file paths found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 010421_Hacken_Ellipsis_SC_Audit_Report.pdf | EpsStaker | unmatched — not counted | — | — | no |
| 010421_Hacken_Ellipsis_SC_Audit_Report.pdf | FeeConverter | unmatched — not counted | — | — | no |
| 010421_Hacken_Ellipsis_SC_Audit_Report.pdf | LpTokenStaker | unmatched — not counted | — | — | no |
| 010421_Hacken_Ellipsis_SC_Audit_Report.pdf | MerkleDistributor | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-EllipsisV2Staking-v1.0.pdf | EllipsisToken2 | own contract | EllipsisToken2 (selected) `0xaf4105...ce9d71` — deployed 2022-03-30 22:43:24+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-EllipsisV2Staking-v1.0.pdf | IncentiveVoting | own contract | IncentiveVoting (selected) `0x4695e5...9bb06a` — deployed 2022-04-12 03:20:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-EllipsisV2Staking-v1.0.pdf | LPStaking | unmatched — not counted | — | — | no |
| www.curve.finance/audits | Curve | unmatched — not counted | — | title | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x5b74c9...8dfdbe` | EllipsisLpStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3670c1...17ee1b` | FeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x22a93f...a49aae` | TokenLocker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: unique_name=2

Zero-match audit list:

- [3131] 010421_Hacken_Ellipsis_SC_Audit_Report.pdf
- [11900] www.curve.finance/audits

Fork inheritance lineage and inherited audits are included when available.
