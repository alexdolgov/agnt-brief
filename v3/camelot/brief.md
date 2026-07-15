# Agentic Audit Brief: Camelot

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Camelot (`camelot`)
- Website: [https://camelot.exchange/](https://camelot.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum
- Contract surface: 30 unique implementations (31 raw deployments)
- Coverage basis: 4/19 confirmed own live verified implementations (21.1%); conservative 21.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $22,479,494.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Camelot. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 27 contract row(s) across arbitrum, sepolia. Structural roles: 14 supporting, 10 core, 3 unclassified. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 27
- Structural roles: supporting (14), core (10), unclassified (3)
- Contract kinds: contract (27)
- Detected standards: ownable (9), erc165 (7), accesscontrol (5), multicall (4), erc20 (3), erc721 (2), erc1967proxy (1), ownable2step (1)
- Frameworks: openzeppelin (21)
- Upgradeable-pattern rows: 2

## Fork Analysis

1 of 23 contracts are derived from known codebases. 22 contracts have no detected origin.

### Forked Contracts

**AlgebraFactory** (`0xbefc4b...7a2f37`, chain 42161)
Origin: supernova (`0x01f99c...3ade8c`)
Containment: 100.0% - 24 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1f9841...61f984`, chain 42161)
- UnnamedContract (`0x222f13...687a71`, chain 42161)
- AlgebraAdapter (`0x148688...c893a0`, chain 42161)
- AlgebraFactory (`0x1a3c9b...1fd35b`, chain 42161)
- AlgebraV2Adapter (`0x64c086...2947f3`, chain 42161)
- CamelotAdapter (`0xabc401...688dab`, chain 42161)
- CamelotMaster (`0x55401a...fc21f4`, chain 42161)
- CamelotRouter (`0xc873fe...b2448d`, chain 42161)
- CamelotYakRouter (`0x99d4e8...ddec5e`, chain 42161)
- DividendsV2 (`0x5422aa...ebd3bb`, chain 42161)
- GrailTokenV2 (`0x3d9907...0982d8`, chain 42161)
- Launchpad (`0x594fb2...c118a5`, chain 42161)
- NonfungiblePositionManager (`0x00c7f3...4dcd15`, chain 42161)
- NonfungiblePositionManager (`0xa602e7...dce9d8`, chain 42161)
- PositionHelper (`0xe45801...1b8175`, chain 42161)
- Quoter (`0x0fc730...4fa76e`, chain 42161)
- Quoter (`0xfe24b2...688f7b`, chain 42161)
- SwapRouter (`0x1f721e...339e18`, chain 42161)
- SwapRouter (`0x4ee153...675f53`, chain 42161)
- TransparentUpgradeableProxy (`0x82af49...3fbab1`, chain 42161)
- XGrailToken (`0x3caae2...3f496b`, chain 42161)
- YieldBooster (`0xd27c37...c0b1b1`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 27; live-surface contracts included: 27 (21 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 22/41 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/19 (21.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 21 own, 9 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Deployed-live implementations: 22 of 30 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 4/19
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 30
- Raw deployments: 31
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 4 | 21.1% | 2022-11 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CamelotRouter | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-231507 | 2 deployments: arbitrum `0xc873fe...b2448d`; arbitrum `0xe45801...1b8175` | ✅ Audited |
| GrailTokenV2 | token | project_anchor | own_supporting | 0 | arbitrum | unit-231484 | `0x3d9907...0982d8` | ✅ Audited |
| XGrailToken | token | project_anchor | own_supporting | 0 | arbitrum | unit-231483 | `0x3caae2...3f496b` | ✅ Audited |
| YieldBooster | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231500 | `0xd27c37...c0b1b1` | ✅ Audited |

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| aeWETH | token | project_anchor | own_supporting | 1 | arbitrum | unit-231506 | `0x82af49...3fbab1` | ⚠️ Unaudited |
| AlgebraAdapter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-231479 | `0x148688...c893a0` | ⚠️ Unaudited |
| AlgebraFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-231480 | `0x1a3c9b...1fd35b` | ⚠️ Unaudited |
| AlgebraFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-231498 | `0xbefc4b...7a2f37` | ⚠️ Unaudited |
| AlgebraV2Adapter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-231490 | `0x64c086...2947f3` | ⚠️ Unaudited |
| CamelotAdapter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-231497 | `0xabc401...688dab` | ⚠️ Unaudited |
| CamelotFactory | registry | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-231492 | `0x6eccab...43a652` | ⚠️ Unaudited |
| CamelotMaster | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-231487 | `0x55401a...fc21f4` | ⚠️ Unaudited |
| CamelotYakRouter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-231495 | `0x99d4e8...ddec5e` | ⚠️ Unaudited |
| DividendsV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231486 | `0x5422aa...ebd3bb` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | arbitrum | unit-231505 | `0xaf88d0...8e5831` | ⚠️ Unaudited |
| Launchpad | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231488 | `0x594fb2...c118a5` | ⚠️ Unaudited |
| NFTPoolFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-231491 | `0x6db1ef...1dbf6d` | ⚠️ Unaudited |
| NitroPoolFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-231501 | `0xe0a6b3...c24569` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | arbitrum | unit-231503 | `0x00c7f3...4dcd15` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-231496 | `0xa602e7...dce9d8` | ⚠️ Unaudited |
| Quoter | periphery | project_anchor | own_supporting | 0 | arbitrum | unit-231478 | `0x0fc730...4fa76e` | ⚠️ Unaudited |
| Quoter | periphery | project_anchor | own_supporting | 0 | arbitrum | unit-231502 | `0xfe24b2...688f7b` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 1 | arbitrum | unit-231504 | `0x1f721e...339e18` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-231485 | `0x4ee153...675f53` | ⚠️ Unaudited |
| VestingWallet | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-231494 | `0x8b4ee9...0cb155` | ⚠️ Unaudited |
| VestingWallet2 | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-231493 | `0x770066...df0f45` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231481 | `0x1f9841...61f984` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231482 | `0x222f13...687a71` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-231489 | `0x60a186...79e68b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-231499 | `0xc216fc...7624b8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [paladinsec.co/projects/camelot](https://paladinsec.co/projects/camelot) | Paladin | Audit | 2022-11 | stale | Direct | n/a | matched | 4 | 0 | 0 | 13 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1826] paladinsec.co/projects/camelot — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| paladinsec.co/projects/camelot | CamelotFactory | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | CamelotMaster | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | CamelotPair | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | CamelotRouter | own contract | PositionHelper (proxy) (alternative) `0xe45801...1b8175` — deployed 2022-11-19 17:46:33+03 — liveness: live (current_address_book_code)<br>CamelotRouter (selected) `0xc873fe...b2448d` — deployed 2022-11-04 01:24:28+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-11-04 was 3d from audit; next candidate 18d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/camelot | GrailTokenV2 | own contract | GrailTokenV2 (selected) `0x3d9907...0982d8` — deployed 2022-11-19 17:06:57+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/camelot | Math | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | NFTPool | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | NFTPoolFactory | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | NitroPool | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | NitroPoolFactory | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | Presale | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | SafeMath | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | UQ112x112 | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | UniswapV2ERC20 | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | UniswapV2Library | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | XGrailToken | own contract | XGrailToken (selected) `0x3caae2...3f496b` — deployed 2022-11-19 17:14:44+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/camelot | YieldBooster | own contract | YieldBooster (selected) `0xd27c37...c0b1b1` — deployed 2022-11-19 17:29:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x82af49...3fbab1` | aeWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x148688...c893a0` | AlgebraAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1a3c9b...1fd35b` | AlgebraFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbefc4b...7a2f37` | AlgebraFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x64c086...2947f3` | AlgebraV2Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xabc401...688dab` | CamelotAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x99d4e8...ddec5e` | CamelotYakRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5422aa...ebd3bb` | DividendsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x594fb2...c118a5` | Launchpad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x00c7f3...4dcd15` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa602e7...dce9d8` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0fc730...4fa76e` | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xfe24b2...688f7b` | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1f721e...339e18` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4ee153...675f53` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 13 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: temporal_name=1, unique_name=3

Fork inheritance lineage and inherited audits are included when available.
