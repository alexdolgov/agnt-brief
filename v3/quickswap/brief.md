# Agentic Audit Brief: Quickswap

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Quickswap (`quickswap`)
- Website: [https://quickswap.exchange](https://quickswap.exchange)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum, manta-pacific, polygon
- Contract surface: 88 unique implementations (88 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $279,583,547.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Quickswap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across base, ethereum, manta-pacific, polygon. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x5c69be...c5aa6f`, chain 1)
- UnnamedContract (`0x7a250d...f2488d`, chain 1)
- UniswapV2Router01 (`0xf164fc...97b92a`, chain 1)
- WETH9 (`0xc02aaa...756cc2`, chain 1)

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 82 discovered implementations excluded (7 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Deployed-live implementations: 4 of 88 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 88
- Raw deployments: 88
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

### ⚠️ Verified + Unaudited (84)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xc8e48f...73265a` | ⚠️ Unaudited |
| AlgebraCommunityVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0ca6d5...3af1f0` | ⚠️ Unaudited |
| AlgebraCustomPoolEntryPoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb9ce76...e4226e` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0987a3...d51141` | ⚠️ Unaudited |
| AlgebraFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x134c1d...2d9904` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x423750...bd122a` | ⚠️ Unaudited |
| AlgebraLimitFarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9923f4...d8a1f8` | ⚠️ Unaudited |
| AlgebraPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2d98e2...97cb92` | ⚠️ Unaudited |
| AlgebraTokenStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x32cff6...6855bb` | ⚠️ Unaudited |
| AlgebraUpgradeablePlugin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x73a3e7...54ef2c` | ⚠️ Unaudited |
| AlgebraUpgradeablePluginFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x14cf27...c81430` | ⚠️ Unaudited |
| AlgebraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x205c64...07a23e` | ⚠️ Unaudited |
| AlgebraVaultFactoryStub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x35622b...1fc7c5` | ⚠️ Unaudited |
| AlmPluginImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8893ec...6d108d` | ⚠️ Unaudited |
| Api3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x91b665...833bf1` | ⚠️ Unaudited |
| BasePluginV1Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd37126...42cc04` | ⚠️ Unaudited |
| BatchSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x73903f...a06e30` | ⚠️ Unaudited |
| cBridgeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x342086...85e7ba` | ⚠️ Unaudited |
| ConverterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0ccff3...21b8ae` | ⚠️ Unaudited |
| DadFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c110...db072d` | ⚠️ Unaudited |
| Dai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b1754...271d0f` | ⚠️ Unaudited |
| DaiFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07674...69ebbb` | ⚠️ Unaudited |
| DragonLair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x958d20...d723a1` | ⚠️ Unaudited |
| DSChief | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2a84...057152` | ⚠️ Unaudited |
| DSChiefFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7ca0...8f1483` | ⚠️ Unaudited |
| DSToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x068083...cc5523` | ⚠️ Unaudited |
| DynamicFeePluginImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x19883c...6a7776` | ⚠️ Unaudited |
| Executor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x5b1f50...7290f4` | ⚠️ Unaudited |
| FarmingCenter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x24a089...926e21` | ⚠️ Unaudited |
| FarmingProxyPluginImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe3c4a8...178341` | ⚠️ Unaudited |
| FundingTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x11e365...449c7b` | ⚠️ Unaudited |
| GemFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431e93...845692` | ⚠️ Unaudited |
| GemPit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69076e...83c275` | ⚠️ Unaudited |
| InstantProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1cbb98...a30e9c` | ⚠️ Unaudited |
| MainContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5316d1...baeea6` | ⚠️ Unaudited |
| ManagerContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x388c63...f2c3ac` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc2fc5e...f83c0b` | ⚠️ Unaudited |
| MevxPluginImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcaa39d...a16bd9` | ⚠️ Unaudited |
| MomFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141a20...3669ea` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7219c5...dd3e8f` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x095eb7...763c16` | ⚠️ Unaudited |
| OrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x2264d1...ecf634` | ⚠️ Unaudited |
| Permit2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | manta-pacific | n/a | `0x612113...da5d5f` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xc5616f...cef38e` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0xa235ed...6ca009` | ⚠️ Unaudited |
| Quick | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x831753...33dc13` | ⚠️ Unaudited |
| QuickConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x38e8d7...5239ea` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x300582...4ad96b` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x23e058...d87fb5` | ⚠️ Unaudited |
| ReferralReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x08bc8e...dbdcca` | ⚠️ Unaudited |
| ReferralStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x7e0123...e93ee5` | ⚠️ Unaudited |
| RubicBridgeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbb2174...93c27f` | ⚠️ Unaudited |
| RubicRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x070df4...38a6c3` | ⚠️ Unaudited |
| RubicSymbiosisProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5559a6...345bad` | ⚠️ Unaudited |
| RubicToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e2599...bd9091` | ⚠️ Unaudited |
| SecurityPluginImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0eaa59...fb686d` | ⚠️ Unaudited |
| SecurityRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1158d1...8d68a3` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02a2d8...537e1c` | ⚠️ Unaudited |
| Store | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x443cf1...2ed4b8` | ⚠️ Unaudited |
| SwapContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d9214...525915` | ⚠️ Unaudited |
| SwapContractV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x51fec1...cac47e` | ⚠️ Unaudited |
| SwapMain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8fe5f1...676887` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6c9bb...c6cb04` | ⚠️ Unaudited |
| TapFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521c42...51f14f` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x28adcf...348290` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x87bcd3...56fe54` | ⚠️ Unaudited |
| TokenSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x333068...98bf5a` | ⚠️ Unaudited |
| TopFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eda20...733ed4` | ⚠️ Unaudited |
| TradingValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x1fe9fb...3ab2c8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x418d0f...6bc74e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x7fd2bc...2d1a94` | ⚠️ Unaudited |
| TubFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3b670...d1b987` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | manta-pacific | n/a | `0x1fd671...dfeb48` | ⚠️ Unaudited |
| UniswapV2Factory | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x575737...d3ab32` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa478c2...33eb11` | ⚠️ Unaudited |
| UniswapV2Router01 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391270 | `0xf164fc...97b92a` | ⚠️ Unaudited |
| UniswapV2Router02 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0x4a012a...633bb5` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x157b99...ab1a63` | ⚠️ Unaudited |
| VamToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1512d2...9cfbc8` | ⚠️ Unaudited |
| VolatilityOraclePluginImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaa6c08...18264e` | ⚠️ Unaudited |
| VoxFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414b1d...2499bf` | ⚠️ Unaudited |
| WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x353f89...c4bf52` | ⚠️ Unaudited |
| WETH9 | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-391267 | `0xc02aaa...756cc2` | ⚠️ Unaudited |
| WMATIC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d500b...df1270` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x000000...000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391261 | `0x5c69be...c5aa6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391263 | `0x7a250d...f2488d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-391268 | `0xc77841...0cd5ab` | ❓ Unverified |

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
| native | 74 |
| upstream | 6 |
| standard_library | 4 |
| needs_review | 4 |

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
