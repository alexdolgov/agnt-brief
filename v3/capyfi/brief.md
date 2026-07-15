# Agentic Audit Brief: Capyfi

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

- Project: Capyfi (`capyfi`)
- Website: [https://capyfi.com/](https://capyfi.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum
- Contract surface: 40 unique implementations (40 raw deployments)
- Coverage basis: 0/36 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $21,391,891.62
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Capyfi in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 36 contracts are derived from known codebases. 36 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- CErc20Delegator (`0x0568f6...3f3b50`, chain 1)
- CErc20Delegator (`0x0f864a...67362b`, chain 1)
- CErc20Delegator (`0x93d9dd...0987c8`, chain 1)
- CErc20Delegator (`0xc3ad34...f09c8f`, chain 1)
- CErc20Delegator (`0xda5928...e12cd6`, chain 1)
- CErc20Delegator (`0xf61159...344c32`, chain 1)
- CErc20Delegator (`0xf80eee...658d7b`, chain 1)
- CErc20Delegator (`0x0d8105...54b642`, chain 8453)
- CErc20Delegator (`0x304cc2...884d23`, chain 8453)
- CErc20Delegator (`0x5adb71...9f26c7`, chain 8453)
- CErc20Delegator (`0x601222...361fc8`, chain 8453)
- CEther (`0x37de57...4645c9`, chain 1)
- CEther (`0x654a90...0a548e`, chain 8453)
- ChainlinkPriceOracle (`0xfba271...ff424a`, chain 1)
- CompoundLens (`0x3ec15d...289ef8`, chain 1)
- CompoundLens (`0x0568f6...3f3b50`, chain 8453)
- ERC1967Proxy (`0x0dc4f9...29d90d`, chain 1)
- ERC1967Proxy (`0x0df3a8...f7f51b`, chain 1)
- ERC1967Proxy (`0x6cbe98...a4b30c`, chain 1)
- ERC1967Proxy (`0xb40dc9...dbec54`, chain 1)
- ERC1967Proxy (`0xd76f5f...4390e0`, chain 1)
- ERC1967Proxy (`0x0dc4f9...29d90d`, chain 8453)
- ERC1967Proxy (`0xd76f5f...4390e0`, chain 8453)
- FiatTokenProxy (`0xa0b869...06eb48`, chain 1)
- FiatTokenProxy (`0x833589...a02913`, chain 8453)
- FiatTokenProxy (`0xcbb7c0...ed33bf`, chain 8453)
- JumpRateModelV2 (`0x03c1cf...7aca31`, chain 1)
- Maximillion (`0xf43cff...3e0549`, chain 1)
- Maximillion (`0xfb6396...404788`, chain 8453)
- Multicall3 (`0xca11bd...76ca11`, chain 1)
- RewardsDistributor (`0xd09931...8ce04d`, chain 1)
- TetherToken (`0xdac17f...831ec7`, chain 1)
- TransparentUpgradeableProxy (`0xed025a...266468`, chain 1)
- Unitroller (`0x0b9af1...702afa`, chain 1)
- Unitroller (`0x00dc49...1f867e`, chain 8453)
- WBTC (`0x2260fa...c2c599`, chain 1)

## Contract Surface Quality

- Indexed contracts: 0; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 36/52 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/36 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 36 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 24
- Deployed-live implementations: 36 of 40 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/36
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 40
- Raw deployments: 40
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

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381657 | `0x0568f6...3f3b50` | ⚠️ Unaudited |
| CErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381662 | `0x0f864a...67362b` | ⚠️ Unaudited |
| CErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381656 | `0x93d9dd...0987c8` | ⚠️ Unaudited |
| CErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381651 | `0xc3ad34...f09c8f` | ⚠️ Unaudited |
| CErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381650 | `0xda5928...e12cd6` | ⚠️ Unaudited |
| CErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381654 | `0xf61159...344c32` | ⚠️ Unaudited |
| CErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381661 | `0xf80eee...658d7b` | ⚠️ Unaudited |
| CErc20Delegate | unknown | project_anchor | own_supporting | 1 | base | unit-381666 | `0x0d8105...54b642` | ⚠️ Unaudited |
| CErc20Delegate | unknown | project_anchor | own_supporting | 1 | base | unit-381665 | `0x304cc2...884d23` | ⚠️ Unaudited |
| CErc20Delegate | unknown | project_anchor | own_supporting | 1 | base | unit-381669 | `0x5adb71...9f26c7` | ⚠️ Unaudited |
| CErc20Delegate | unknown | project_anchor | own_supporting | 1 | base | unit-381668 | `0x601222...361fc8` | ⚠️ Unaudited |
| CEther | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381627 | `0x37de57...4645c9` | ⚠️ Unaudited |
| CEther | unknown | project_anchor | own_supporting | 0 | base | unit-381647 | `0x654a90...0a548e` | ⚠️ Unaudited |
| ChainlinkPriceOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381644 | `0xfba271...ff424a` | ⚠️ Unaudited |
| CompoundLens | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381629 | `0x3ec15d...289ef8` | ⚠️ Unaudited |
| CompoundLens | unknown | project_anchor | own_supporting | 0 | base | unit-381646 | `0x0568f6...3f3b50` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381649 | `0x0b9af1...702afa` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 1 | base | unit-381671 | `0x00dc49...1f867e` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | project_anchor | own_supporting | 1 | base | unit-381667 | `0xcbb7c0...ed33bf` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381653 | `0xa0b869...06eb48` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | project_anchor | own_supporting | 1 | base | unit-381664 | `0x833589...a02913` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381613 | `0x03c1cf...7aca31` | ⚠️ Unaudited |
| LaCoin | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381660 | `0x0df3a8...f7f51b` | ⚠️ Unaudited |
| LatamStable | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381658 | `0x0dc4f9...29d90d` | ⚠️ Unaudited |
| LatamStable | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381663 | `0xd76f5f...4390e0` | ⚠️ Unaudited |
| LatamStable | unknown | project_anchor | own_supporting | 1 | base | unit-381670 | `0x0dc4f9...29d90d` | ⚠️ Unaudited |
| LatamStable | unknown | project_anchor | own_supporting | 1 | base | unit-381672 | `0xd76f5f...4390e0` | ⚠️ Unaudited |
| Maximillion | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381643 | `0xf43cff...3e0549` | ⚠️ Unaudited |
| Maximillion | unknown | project_anchor | own_supporting | 0 | base | unit-381648 | `0xfb6396...404788` | ⚠️ Unaudited |
| Multicall3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381638 | `0xca11bd...76ca11` | ⚠️ Unaudited |
| OffchainBtcVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381652 | `0x6cbe98...a4b30c` | ⚠️ Unaudited |
| RewardsDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381640 | `0xd09931...8ce04d` | ⚠️ Unaudited |
| RipioCoin | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381659 | `0xed025a...266468` | ⚠️ Unaudited |
| StBTC | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381655 | `0xb40dc9...dbec54` | ⚠️ Unaudited |
| TetherToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381641 | `0xdac17f...831ec7` | ⚠️ Unaudited |
| WBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381621 | `0x2260fa...c2c599` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-381625 | `0x331e42...0877b2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x000000...000000` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-381645 | `0x03c1cf...7aca31` | ❓ Unverified |

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
| needs_review | 40 |

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
