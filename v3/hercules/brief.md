# Agentic Audit Brief: Hercules

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Hercules (`hercules`)
- Website: [https://app.hercules.exchange](https://app.hercules.exchange)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: metis
- Contract surface: 22 unique implementations (22 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $196,762.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Hercules. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across metis. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

1 of 1 contracts are derived from known codebases. 0 contracts have no detected origin.

### Forked Contracts

**AlgebraPool** (`0x6eeac9...185d94`, chain 1088)
Origin: swapbased (`0x3ce99e...eae8c9`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- None

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 21 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 22 unique; 21 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/22
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 22
- Raw deployments: 22
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlgebraPool | unknown | project_anchor | own_supporting | 0 | metis | unit-387247 | `0x6eeac9...185d94` | ⚠️ Unaudited |
| AlgebraStaticQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa07430...df84ab` | ⚠️ Unaudited |
| CamelotMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x438718...b8ba3d` | ⚠️ Unaudited |
| CamelotRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x14679d...ef027c` | ⚠️ Unaudited |
| CamelotYakRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf9a6d8...5975d2` | ⚠️ Unaudited |
| ConvertablePUMPKIN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9395dd...43c06f` | ⚠️ Unaudited |
| DividendsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x20b81a...07bd7c` | ⚠️ Unaudited |
| FairAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x07e94a...117f56` | ⚠️ Unaudited |
| GammaUniProxyHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd882a7...5241a8` | ⚠️ Unaudited |
| GrailTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x7db501...1dadff` | ⚠️ Unaudited |
| Launchpad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x320356...5970db` | ⚠️ Unaudited |
| LimitOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x578bb6...7f22c2` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x243182...2cb45a` | ⚠️ Unaudited |
| NFTPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1e9ed0...09786d` | ⚠️ Unaudited |
| NFTRewardClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2c8853...669c3f` | ⚠️ Unaudited |
| NitroPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x929cf4...b78989` | ⚠️ Unaudited |
| PositionHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa76416...98b92f` | ⚠️ Unaudited |
| SteerProxyHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6d28bb...94eb6f` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1e6519...35edf0` | ⚠️ Unaudited |
| XGrailToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xce6504...347d0c` | ⚠️ Unaudited |
| xMetisToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xca042e...db4996` | ⚠️ Unaudited |
| YieldBooster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa4defa...f7b121` | ⚠️ Unaudited |

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

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| metis | `0x6eeac9...185d94` | AlgebraPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
