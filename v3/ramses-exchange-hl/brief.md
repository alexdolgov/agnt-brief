# Agentic Audit Brief: Ramses CL V2

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

- Project: Ramses CL V2 (`ramses-exchange-hl`)
- Website: [https://ramses.xyz](https://ramses.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: hyperliquid
- Contract surface: 28 unique implementations (28 raw deployments)
- Coverage basis: 0/22 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Ramses CL V2 in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 23 contracts are derived from known codebases. 23 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xe17988013e15d29b655634da0056ba27ba4d3e27`, chain 999)
- FeeCollector (`0xa22fc9950be328d8a32a8c1e2c92eac4e6bada00`, chain 999)
- GnosisSafeProxy (`0x20d630cf1f5628285bfb91dfac8c89eb9087be1a`, chain 999)
- Minter (`0x252acc15430a26748ced7376b317e74e250fcf00`, chain 999)
- MixedRouteQuoterV1 (`0x771b960165f9f3d79c2380c4cfc75b91e70d480f`, chain 999)
- NonfungibleTokenPositionDescriptor (`0x615875e9141301edef36d17542ccdbb9b7512fe7`, chain 999)
- ProxyAdmin (`0x428c031ffc2cda747ad66e8bb8384988d60bd93b`, chain 999)
- Quoter (`0x5126e63dd031301accdf1a5137ea5caeb1125d52`, chain 999)
- QuoterV2 (`0x403bf94fe505ca0f0b1563c350b57dcec8303ecd`, chain 999)
- R33 (`0x5555c2542836e7a6c8d3e133d5aa9773b65d5555`, chain 999)
- Ramses (`0x555570a286f15ebdfe42b66ede2f724aa1ab5555`, chain 999)
- RamsesV3Factory (`0x07e60782535752be279929e2dffdd136db2e6b45`, chain 999)
- RamsesV3PoolDeployer (`0x301d2e3c7db5904b3971cf9c36195e37c5a14873`, chain 999)
- RamsesV3PositionManager (`0xb3f77c5134d643483253d22e0ca24627ae42ed51`, chain 999)
- SwapRouter (`0x76d91074b46ff76e04fe59a90526a40009943fd2`, chain 999)
- TickLens (`0x3f96af2e8184838355249b8580cbfdaafa16ba5a`, chain 999)
- TimelockController (`0xeafd832ebb6a793a60e2b748392b3766ef62fa59`, chain 999)
- TransparentUpgradeableProxy (`0x6631a487d59893831b331653225e0bfebf6ea1ec`, chain 999)
- TransparentUpgradeableProxy (`0x9aab8c415af5936b09c595b09b1ff15cbadcd843`, chain 999)
- UniswapInterfaceMulticall (`0xd933929febce5494677ec22b7e7faca956311d37`, chain 999)
- UniversalRouter (`0xc43b33b5df826a48dae764817647824ed4f476a7`, chain 999)
- VoteModule (`0x6736102621f7c0dbb0e2989e3ad7a8793e71930b`, chain 999)
- XRam (`0xae6d5fce541216bda471d311425b5412d9f1deb9`, chain 999)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/28 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/22 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 23 own, 5 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 23 of 28 unique; 5 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/22
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 28
- Raw deployments: 28
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
| AccessHub | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-391341 | `0x6631a487d59893831b331653225e0bfebf6ea1ec` | ⚠️ Unaudited |
| FeeCollector | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-391333 | `0xa22fc9950be328d8a32a8c1e2c92eac4e6bada00` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-391319 | `0x20d630cf1f5628285bfb91dfac8c89eb9087be1a` | ⚠️ Unaudited |
| Minter | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-391320 | `0x252acc15430a26748ced7376b317e74e250fcf00` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-391331 | `0x771b960165f9f3d79c2380c4cfc75b91e70d480f` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-391328 | `0x615875e9141301edef36d17542ccdbb9b7512fe7` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-391324 | `0x428c031ffc2cda747ad66e8bb8384988d60bd93b` | ⚠️ Unaudited |
| Quoter | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-391325 | `0x5126e63dd031301accdf1a5137ea5caeb1125d52` | ⚠️ Unaudited |
| QuoterV2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-391323 | `0x403bf94fe505ca0f0b1563c350b57dcec8303ecd` | ⚠️ Unaudited |
| R33 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-391327 | `0x5555c2542836e7a6c8d3e133d5aa9773b65d5555` | ⚠️ Unaudited |
| Ramses | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-391326 | `0x555570a286f15ebdfe42b66ede2f724aa1ab5555` | ⚠️ Unaudited |
| RamsesV3Factory | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-391317 | `0x07e60782535752be279929e2dffdd136db2e6b45` | ⚠️ Unaudited |
| RamsesV3PoolDeployer | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-391321 | `0x301d2e3c7db5904b3971cf9c36195e37c5a14873` | ⚠️ Unaudited |
| RamsesV3PositionManager | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-391344 | `0xb3f77c5134d643483253d22e0ca24627ae42ed51` | ⚠️ Unaudited |
| SwapRouter | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-391330 | `0x76d91074b46ff76e04fe59a90526a40009943fd2` | ⚠️ Unaudited |
| TickLens | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-391322 | `0x3f96af2e8184838355249b8580cbfdaafa16ba5a` | ⚠️ Unaudited |
| TimelockController | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-391340 | `0xeafd832ebb6a793a60e2b748392b3766ef62fa59` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-391337 | `0xd933929febce5494677ec22b7e7faca956311d37` | ⚠️ Unaudited |
| UniversalRouter | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-391335 | `0xc43b33b5df826a48dae764817647824ed4f476a7` | ⚠️ Unaudited |
| VoteModule | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-391329 | `0x6736102621f7c0dbb0e2989e3ad7a8793e71930b` | ⚠️ Unaudited |
| Voter | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-391343 | `0x9aab8c415af5936b09c595b09b1ff15cbadcd843` | ⚠️ Unaudited |
| XRam | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-391334 | `0xae6d5fce541216bda471d311425b5412d9f1deb9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GaugeV3 | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-391342 | `0xe17988013e15d29b655634da0056ba27ba4d3e27` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | hyperliquid | unit-391318 | `0x1ad1dc4430bd55fbd19f151f6f3cdb4bb473fa16` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | hyperliquid | unit-391332 | `0xa0bdd8142568d478d69c0d601d46bfdda04a7c4a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | hyperliquid | unit-391336 | `0xd0a07e160511c40ccd5340e94660e9c9c01b0d27` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | hyperliquid | unit-391338 | `0xdcc44285fbc236457a5cd91c2f77ad8421b0d8ed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | hyperliquid | unit-391339 | `0xe7e05591362a74d3746f828941ec833e102a6e90` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 28 |

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
