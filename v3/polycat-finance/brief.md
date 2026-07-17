# Agentic Audit Brief: Polycat Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Polycat Finance (`polycat-finance`)
- Website: [https://polycat.finance/](https://polycat.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: polygon
- Contract surface: 14 unique implementations (14 raw deployments)
- Coverage basis: 2/8 confirmed own live verified implementations (25.0%); conservative 25.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $289,487.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Polycat Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 10 contract row(s) across polygon. Structural roles: 9 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 10
- Structural roles: core (9), supporting (1)
- Contract kinds: contract (10)
- Detected standards: ownable (7), erc20 (2)
- Frameworks: openzeppelin (10)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x477ce834ae6b7ab003cce4bc4d8697763ff456fa`, chain 137)
- UnnamedContract (`0x4ce9ae2f5983e19aebf5b8bae4460f2b9ece811a`, chain 137)
- UnnamedContract (`0x94930a328162957ff1dd48900af67b5439336cbd`, chain 137)
- UnnamedContract (`0xbc5b59ea1b6f8da8258615ee38d40e999ec5d74f`, chain 137)
- UnnamedContract (`0xc2e5cbfdab2421094a36f9126810a54d725a56fe`, chain 137)
- UnnamedContract (`0xe0e44d4e7e61f2f4f990f5f4e2408d2187315c94`, chain 137)
- Timelock (`0xf5a824b077cc0aaf50cf83a9e82714b89b684925`, chain 137)
- VaultChef (`0xbda1f897e851c7ef22cd490d2cf2dace4645a904`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 10; live-surface rows included: 10 (8 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/8 (25.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 3 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 8 of 14 unique; 6 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/13
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 14
- Raw deployments: 14
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 2 | 15.4% | 2021-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | polygon | unit-391132 | `0x477ce834ae6b7ab003cce4bc4d8697763ff456fa` | ✅ Audited |
| UnnamedContract | periphery | project_anchor | own_supporting | 0 | polygon | unit-391135 | `0x94930a328162957ff1dd48900af67b5439336cbd` | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FishToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-391131 | `0x3a3df212b7aa91aa0402b9035b098891d276572b` | ⚠️ Unaudited |
| LiquidityLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9cf8d7c64e29045e3c6bf8e86874398dc6a7b11d` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x18590c1fa38a7e7357d40a6c2bbc910340dde46c` | ⚠️ Unaudited |
| Referral | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-391136 | `0xb67ad6c2fe7dd6ba346706b833ccf4234256266d` | ⚠️ Unaudited |
| StrategyFish | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x520c340d6c9d7efc7cf4806b6cf0ab9859c62df5` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | polygon | unit-391141 | `0xf5a824b077cc0aaf50cf83a9e82714b89b684925` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | polygon | unit-391133 | `0x4ce9ae2f5983e19aebf5b8bae4460f2b9ece811a` | ⚠️ Unaudited |
| UnnamedContract | token | project_anchor | own_supporting | 0 | polygon | unit-391137 | `0xbc5b59ea1b6f8da8258615ee38d40e999ec5d74f` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | polygon | unit-391139 | `0xc2e5cbfdab2421094a36f9126810a54d725a56fe` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | polygon | unit-391140 | `0xe0e44d4e7e61f2f4f990f5f4e2408d2187315c94` | ⚠️ Unaudited |
| VaultChef | unknown | project_anchor | own_supporting | 0 | polygon | unit-391138 | `0xbda1f897e851c7ef22cd490d2cf2dace4645a904` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-391134 | `0x8cfd1b9b7478e7b0422916b72d1db6a9d513d734` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [paladinsec.co/projects/polycat-finance](https://paladinsec.co/projects/polycat-finance) | Paladin | Audit | 2021-08 | stale | Direct | address | matched | 2 | 0 | 0 | 6 | high |
| [skynet.certik.com/projects/polycatfinance](https://skynet.certik.com/projects/polycatfinance) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20944] paladinsec.co/projects/polycat-finance — matched: Two audit sections: Polycat Paw (MasterChef, PawToken, RewardLocker) completed 07 Aug 2021; Polycat AMM (CatRouter, CatPair, CatFactory, CatERC20, CatLibrary) completed 09 Aug 2021. Audit date taken as the later completion date.
- [20945] skynet.certik.com/projects/polycatfinance — no match: The provided text is a CertiK Skynet project insight page, not an audit report. It contains no scope section, no contract names in scope, and no audit date. The only contract address mentioned (0x3a3df212b7aa91aa0402b9035b098891d276572b) is a token contract, but it is not listed as being in scope of an audit.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| paladinsec.co/projects/polycat-finance | MasterChef | unmatched — not counted | — | listed in scope | no |
| paladinsec.co/projects/polycat-finance | PawToken | unmatched — not counted | — | listed in scope | no |
| paladinsec.co/projects/polycat-finance | RewardLocker | unmatched — not counted | — | listed in scope | no |
| paladinsec.co/projects/polycat-finance | CatRouter | own contract | 0x94930a… (selected) `0x94930a328162957ff1dd48900af67b5439336cbd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/polycat-finance | CatPair | unmatched — not counted | — | listed in scope | no |
| paladinsec.co/projects/polycat-finance | CatFactory | own contract | 0x477ce8… (selected) `0x477ce834ae6b7ab003cce4bc4d8697763ff456fa` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/polycat-finance | CatERC20 | unmatched — not counted | — | listed in scope | no |
| paladinsec.co/projects/polycat-finance | CatLibrary | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0xf5a824b077cc0aaf50cf83a9e82714b89b684925` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xbda1f897e851c7ef22cd490d2cf2dace4645a904` | VaultChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: address=2

Zero-match audit list:

- [20945] skynet.certik.com/projects/polycatfinance

Fork inheritance lineage and inherited audits are included when available.
