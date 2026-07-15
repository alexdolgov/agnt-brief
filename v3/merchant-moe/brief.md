# Agentic Audit Brief: Merchant Moe

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Merchant Moe (`merchant-moe`)
- Website: [https://merchantmoe.com/](https://merchantmoe.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: mantle
- Contract surface: 20 unique implementations (22 raw deployments)
- Coverage basis: 13/17 confirmed own live verified implementations (76.5%); conservative 76.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $19,069,354.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Merchant Moe. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 19 contract row(s) across mantle. Structural roles: 12 core, 7 supporting. 10 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 19
- Structural roles: core (12), supporting (7)
- Contract kinds: contract (19)
- Detected standards: ownable (12), ownable2step (11), erc20 (2), erc20permit (2), accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (18), openzeppelin-upgradeable (10)
- Upgradeable-pattern rows: 10

## Fork Analysis

1 of 19 contracts are derived from known codebases. 18 contracts have no detected origin.

### Forked Contracts

**LBFactory** (`0xa66306...104054`, chain 5000)
Origin: lynx (`0x39d966...d6ee43`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- JoeStaking (`0x7fb0fc...53d303`, chain 5000)
- JoeStakingRewarder (`0x1d1632...f08dd6`, chain 5000)
- LBRouter (`0x013e13...d21e3a`, chain 5000)
- MasterChef (`0xd4bd5e...523dcc`, chain 5000)
- MasterChefRewarder (`0xcc076c...d2e938`, chain 5000)
- Moe (`0x4515a4...dc00c9`, chain 5000)
- MoeFactory (`0x5bef01...4bedec`, chain 5000)
- MoePair (`0x08477e...69c28b`, chain 5000)
- MoeRouter (`0xeaee7e...e7232a`, chain 5000)
- MoeStaking (`0xe92249...1fa793`, chain 5000)
- OdosRouterV2 (`0xd9f4e8...c26745`, chain 5000)
- RewarderFactory (`0x18d3f4...890025`, chain 5000)
- Router (`0x45a62b...e2c86b`, chain 5000)
- StableMoe (`0x5ab84d...daac02`, chain 5000)
- TransparentUpgradeableProxy2Step (`0xb3938e...07e116`, chain 5000)
- TransparentUpgradeableProxy2Step (`0xb5bd28...cba22d`, chain 5000)
- VeMoe (`0x240616...f14ef1`, chain 5000)
- VeMoeRewarder (`0x151b82...d6aea8`, chain 5000)

## Contract Surface Quality

- Indexed contracts: 19; live-surface contracts included: 19 (19 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 13/17 (76.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 3 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Deployed-live implementations: 17 of 20 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 13/17
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 20
- Raw deployments: 22
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 13 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 13 | 76.5% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| JoeStaking | unknown | project_anchor | own_supporting | 0 | mantle | unit-266943 | `0x7fb0fc...53d303` | ✅ Audited |
| JoeStakingRewarder | unknown | project_anchor | own_supporting | 0 | mantle | unit-266938 | `0x1d1632...f08dd6` | ✅ Audited |
| MasterChef | unknown | project_anchor | own_supporting | 0 | mantle | unit-266946 | `0xd4bd5e...523dcc` | ✅ Audited |
| MasterChefRewarder | unknown | project_anchor | own_supporting | 0 | mantle | unit-266945 | `0xcc076c...d2e938` | ✅ Audited |
| Moe | unknown | project_anchor | own_supporting | 0 | mantle | unit-266940 | `0x4515a4...dc00c9` | ✅ Audited |
| MoeFactory | unknown | project_anchor | own_supporting | 0 | mantle | unit-266942 | `0x5bef01...4bedec` | ✅ Audited |
| MoePair | unknown | project_anchor | own_supporting | 0 | mantle | unit-266935 | `0x08477e...69c28b` | ✅ Audited |
| MoeRouter | adapter | project_anchor | own_supporting | 0 | mantle | unit-266948 | `0xeaee7e...e7232a` | ✅ Audited |
| MoeStaking | unknown | project_anchor | own_supporting | 1 | mantle | unit-266950 | 2 deployments: mantle `0xb3938e...07e116`; mantle `0xe92249...1fa793` | ✅ Audited |
| RewarderFactory | unknown | project_anchor | own_supporting | 0 | mantle | unit-266937 | `0x18d3f4...890025` | ✅ Audited |
| StableMoe | unknown | project_anchor | own_supporting | 1 | mantle | unit-266949 | 2 deployments: mantle `0x5ab84d...daac02`; mantle `0xb5bd28...cba22d` | ✅ Audited |
| VeMoe | unknown | project_anchor | own_supporting | 0 | mantle | unit-266939 | `0x240616...f14ef1` | ✅ Audited |
| VeMoeRewarder | unknown | project_anchor | own_supporting | 0 | mantle | unit-266936 | `0x151b82...d6aea8` | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LBFactory | registry | project_anchor | own_supporting | 0 | mantle | unit-266944 | `0xa66306...104054` | ⚠️ Unaudited |
| LBRouter | adapter | project_anchor | own_supporting | 0 | mantle | unit-266934 | `0x013e13...d21e3a` | ⚠️ Unaudited |
| OdosRouterV2 | adapter | project_anchor | own_supporting | 0 | mantle | unit-266947 | `0xd9f4e8...c26745` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | mantle | unit-266941 | `0x45a62b...e2c86b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x031839...b89eef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x501b8a...316c85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb9db0d...950515` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [paladinsec.co/projects/merchant-moe](https://paladinsec.co/projects/merchant-moe) | Paladin | Audit | 2023-12 | stale | Direct | address | matched | 13 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3948] paladinsec.co/projects/merchant-moe — matched: Contracts audited listed with addresses; dependencies also included as they are part of the scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| paladinsec.co/projects/merchant-moe | Moe | own contract | Moe (selected) `0x4515a4...dc00c9` — deployed 2023-12-20 04:53:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | MasterChef | own contract | MasterChef (selected) `0xd4bd5e...523dcc` — deployed 2023-12-20 04:53:42+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | MoeStaking | own contract | MoeStaking (selected) `0xe92249...1fa793` — deployed 2023-12-20 04:53:52+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | StableMoe | own contract | StableMoe (selected) `0x5ab84d...daac02` — deployed 2023-12-20 04:54:12+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | VeMoe | own contract | VeMoe (selected) `0x240616...f14ef1` — deployed 2023-12-20 04:54:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | BaseRewarder | unmatched — not counted | — | listed as dependency | no |
| paladinsec.co/projects/merchant-moe | MasterChefRewarder | own contract | MasterChefRewarder (selected) `0xcc076c...d2e938` — deployed 2023-12-20 04:53:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | VeMoeRewarder | own contract | VeMoeRewarder (selected) `0x151b82...d6aea8` — deployed 2023-12-20 04:53:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | MoeFactory | own contract | MoeFactory (selected) `0x5bef01...4bedec` — deployed 2023-12-23 15:39:54+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | MoeERC20 | unmatched — not counted | — | listed as dependency | no |
| paladinsec.co/projects/merchant-moe | MoePair | own contract | MoePair (selected) `0x08477e...69c28b` — deployed 2023-12-23 15:39:54+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | MoeRouter | own contract | MoeRouter (selected) `0xeaee7e...e7232a` — deployed 2023-12-23 15:39:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | MoeLibrary | unmatched — not counted | — | listed as dependency | no |
| paladinsec.co/projects/merchant-moe | Amounts | unmatched — not counted | — | listed as dependency | no |
| paladinsec.co/projects/merchant-moe | Math | unmatched — not counted | — | listed as dependency | no |
| paladinsec.co/projects/merchant-moe | Constants | unmatched — not counted | — | listed as dependency | no |
| paladinsec.co/projects/merchant-moe | Rewarder | unmatched — not counted | — | listed as dependency | no |
| paladinsec.co/projects/merchant-moe | JoeStaking | own contract | JoeStaking (selected) `0x7fb0fc...53d303` — deployed 2023-12-20 04:53:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | JoeStakingRewarder | own contract | JoeStakingRewarder (selected) `0x1d1632...f08dd6` — deployed 2023-12-20 04:53:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | RewarderFactory | own contract | RewarderFactory (selected) `0x18d3f4...890025` — deployed 2023-12-20 04:53:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | VestingContract | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mantle | `0xa66306...104054` | LBFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x013e13...d21e3a` | LBRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xd9f4e8...c26745` | OdosRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x45a62b...e2c86b` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 13 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 8 unmatched
- Matched-own operational status: 13 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: address=13

Fork inheritance lineage and inherited audits are included when available.
