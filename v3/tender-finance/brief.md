# Agentic Audit Brief: Tender Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Tender Finance (`tender-finance`)
- Website: [https://www.tenderfi.org/](https://www.tenderfi.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, metis
- Contract surface: 22 unique implementations (22 raw deployments)
- Coverage basis: 0/13 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,113,583.22
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Tender Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 15 contract row(s) across arbitrum, metis. Structural roles: 12 unclassified, 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 15
- Structural roles: unclassified (12), core (3)
- Contract kinds: contract (15)
- Detected standards: erc20 (2)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 14 contracts are derived from known codebases. 14 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x670f22...7c1549`, chain 1088)
- UnnamedContract (`0x798752...e3fc02`, chain 1088)
- UnnamedContract (`0xb01f3d...b91658`, chain 1088)
- UnnamedContract (`0xd18601...b8819d`, chain 1088)
- BonusDistributor (`0x9aaac9...deb182`, chain 42161)
- RewardDistributor (`0x221ad5...ffd10d`, chain 42161)
- RewardDistributor (`0x4230b9...70eba3`, chain 42161)
- RewardRouterV2 (`0xe881db...8c96ad`, chain 42161)
- RewardTracker (`0x0597c6...522932`, chain 42161)
- RewardTracker (`0x6c6f25...69539c`, chain 42161)
- RewardTracker (`0xe5538b...f09e91`, chain 42161)
- TND (`0xc47d97...d2798c`, chain 42161)
- TransparentUpgradeableProxy (`0xbc2ae6...4a42fb`, chain 42161)
- TransparentUpgradeableProxy (`0xc5888f...b2bb0e`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 15 (13 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/22 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/13 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 5 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (5 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Deployed-live implementations: 17 of 22 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/13
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 22
- Raw deployments: 22
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

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BonusDistributor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393871 | `0x9aaac9...deb182` | ⚠️ Unaudited |
| Burner | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393868 | `0x3e0b30...2011f9` | ⚠️ Unaudited |
| EsTND | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393875 | `0xff9bd4...654ab2` | ⚠️ Unaudited |
| InstantVester | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-393877 | `0xbc2ae6...4a42fb` | ⚠️ Unaudited |
| MintableBaseToken | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393866 | `0x0d2ebf...9e3718` | ⚠️ Unaudited |
| RewardDistributor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393867 | `0x221ad5...ffd10d` | ⚠️ Unaudited |
| RewardDistributor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393869 | `0x4230b9...70eba3` | ⚠️ Unaudited |
| RewardRouterV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393874 | `0xe881db...8c96ad` | ⚠️ Unaudited |
| RewardTracker | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393865 | `0x0597c6...522932` | ⚠️ Unaudited |
| RewardTracker | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393870 | `0x6c6f25...69539c` | ⚠️ Unaudited |
| RewardTracker | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393873 | `0xe5538b...f09e91` | ⚠️ Unaudited |
| TND | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393872 | `0xc47d97...d2798c` | ⚠️ Unaudited |
| VesterV2 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-393876 | `0xc5888f...b2bb0e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | metis | unit-393856 | `0x08ee35...bce688` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | metis | unit-393857 | `0x0fb0d2...96db22` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | metis | unit-393858 | `0x183205...1b43f4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | metis | unit-393859 | `0x2a0ddd...739025` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-393860 | `0x670f22...7c1549` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-393861 | `0x798752...e3fc02` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | metis | unit-393862 | `0xa1377d...dd6288` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-393863 | `0xb01f3d...b91658` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-393864 | `0xd18601...b8819d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [odex.vip](http://odex.vip/?sign=6100531bc2e5bf8b94dd7a7b87b53577) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3118] odex.vip — no match: The provided text contains only the word 'Armors' and dashes, which is insufficient to identify any contracts or audit details.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x9aaac9...deb182` | BonusDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3e0b30...2011f9` | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xff9bd4...654ab2` | EsTND | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbc2ae6...4a42fb` | InstantVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0d2ebf...9e3718` | MintableBaseToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x221ad5...ffd10d` | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4230b9...70eba3` | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe881db...8c96ad` | RewardRouterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0597c6...522932` | RewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6c6f25...69539c` | RewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe5538b...f09e91` | RewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc47d97...d2798c` | TND | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc5888f...b2bb0e` | VesterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [3118] odex.vip

Fork inheritance lineage and inherited audits are included when available.
