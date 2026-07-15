# Agentic Audit Brief: KyberSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 5 audit(s)
- Eligible audit results: 16 (5 matched; 11 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: KyberSwap (`kyberswap`)
- Website: [https://kyberswap.com](https://kyberswap.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, berachain, bsc, ethereum, fantom, hyperliquid, linea, monad, optimism, plasma, polygon, polygon-zkevm, scroll, sonic, unichain, zksync-era
- Contract surface: 145 unique implementations (145 raw deployments)
- Coverage basis: 2/38 confirmed own live verified implementations (5.3%); conservative 5.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $7,951,935.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for KyberSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 40 contract row(s) across arbitrum, avalanche, base, berachain, bsc, ethereum, fantom, hyperliquid, linea, monad, optimism, plasma, polygon, polygon-zkevm, scroll, sonic, unichain, zksync-era. Structural roles: 27 core, 13 supporting. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 40
- Structural roles: core (27), supporting (13)
- Contract kinds: contract (40)
- Detected standards: ownable (14), erc20 (7), pausable (7), erc165 (5), accesscontrol (3), erc20permit (3), erc1967proxy (2)
- Frameworks: openzeppelin (31), openzeppelin-upgradeable (2), chainlink (1), permit2 (1), solmate (1)
- Upgradeable-pattern rows: 4

## Fork Analysis

1 of 140 contracts are derived from known codebases. 139 contracts have no detected origin.

### Forked Contracts

**AnyswapV6ERC20** (`0x451823...583263`, chain 10)
Origin: hinkal (`0x4e720d...6f4642`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0e590b...b60bda`, chain 1)
- UnnamedContract (`0x2f577a...5f655d`, chain 1)
- UnnamedContract (`0xdefa4e...e97202`, chain 1)
- UnnamedContract (`0xe5e8e8...62e4ce`, chain 1)
- UnnamedContract (`0x0e97c8...429e05`, chain 10)
- UnnamedContract (`0x227b0c...02e936`, chain 10)
- UnnamedContract (`0x2f577a...5f655d`, chain 10)
- UnnamedContract (`0x37334c...7a5b94`, chain 10)
- UnnamedContract (`0x6131b5...6337b5`, chain 10)
- UnnamedContract (`0x638d93...0ccabb`, chain 10)
- UnnamedContract (`0x91c9d4...e36f5b`, chain 10)
- UnnamedContract (`0xa16f32...d2863e`, chain 10)
- UnnamedContract (`0xb448ec...0781df`, chain 10)
- UnnamedContract (`0xcab2fa...6b4f6c`, chain 10)
- UnnamedContract (`0x0e97c8...429e05`, chain 56)
- UnnamedContract (`0x227b0c...02e936`, chain 56)
- UnnamedContract (`0x2f577a...5f655d`, chain 56)
- UnnamedContract (`0x37334c...7a5b94`, chain 56)
- UnnamedContract (`0x444085...75c0c4`, chain 56)
- UnnamedContract (`0x6131b5...6337b5`, chain 56)
- UnnamedContract (`0x638d93...0ccabb`, chain 56)
- UnnamedContract (`0x91c9d4...e36f5b`, chain 56)
- UnnamedContract (`0x9ed9af...00f6b9`, chain 56)
- UnnamedContract (`0xa16f32...d2863e`, chain 56)
- UnnamedContract (`0xcab2fa...6b4f6c`, chain 56)
- UnnamedContract (`0xeae300...286f9c`, chain 56)
- UnnamedContract (`0x2f577a...5f655d`, chain 130)
- UnnamedContract (`0x37334c...7a5b94`, chain 130)
- UnnamedContract (`0x6131b5...6337b5`, chain 130)
- UnnamedContract (`0x9ed9af...00f6b9`, chain 130)
- UnnamedContract (`0xcab2fa...6b4f6c`, chain 130)
- UnnamedContract (`0xeae300...286f9c`, chain 130)
- UnnamedContract (`0x0e97c8...429e05`, chain 137)
- UnnamedContract (`0x227b0c...02e936`, chain 137)
- UnnamedContract (`0x2f577a...5f655d`, chain 137)
- UnnamedContract (`0x37334c...7a5b94`, chain 137)
- UnnamedContract (`0x6131b5...6337b5`, chain 137)
- UnnamedContract (`0x638d93...0ccabb`, chain 137)
- UnnamedContract (`0x91c9d4...e36f5b`, chain 137)
- UnnamedContract (`0xa16f32...d2863e`, chain 137)
- UnnamedContract (`0xcab2fa...6b4f6c`, chain 137)
- UnnamedContract (`0x444552...9f80c4`, chain 143)
- UnnamedContract (`0x9ed9af...00f6b9`, chain 143)
- UnnamedContract (`0xeae300...286f9c`, chain 143)
- UnnamedContract (`0x0e97c8...429e05`, chain 146)
- UnnamedContract (`0x2f577a...5f655d`, chain 146)
- UnnamedContract (`0x37334c...7a5b94`, chain 146)
- UnnamedContract (`0x6131b5...6337b5`, chain 146)
- UnnamedContract (`0xa16f32...d2863e`, chain 146)
- UnnamedContract (`0xcab2fa...6b4f6c`, chain 146)
- UnnamedContract (`0x91c9d4...e36f5b`, chain 250)
- UnnamedContract (`0x6ee46c...3283e6`, chain 324)
- UnnamedContract (`0x2f577a...5f655d`, chain 999)
- UnnamedContract (`0x37334c...7a5b94`, chain 999)
- UnnamedContract (`0x6131b5...6337b5`, chain 999)
- UnnamedContract (`0xcab2fa...6b4f6c`, chain 999)
- UnnamedContract (`0x0e97c8...429e05`, chain 8453)
- UnnamedContract (`0x2f577a...5f655d`, chain 8453)
- UnnamedContract (`0x37334c...7a5b94`, chain 8453)
- UnnamedContract (`0x444085...75c0c4`, chain 8453)
- UnnamedContract (`0x6131b5...6337b5`, chain 8453)
- UnnamedContract (`0x635dff...1d7841`, chain 8453)
- UnnamedContract (`0x638d93...0ccabb`, chain 8453)
- UnnamedContract (`0x72473d...bb1851`, chain 8453)
- UnnamedContract (`0x9ed9af...00f6b9`, chain 8453)
- UnnamedContract (`0xa16f32...d2863e`, chain 8453)
- UnnamedContract (`0xaee04d...e09974`, chain 8453)
- UnnamedContract (`0xcab2fa...6b4f6c`, chain 8453)
- UnnamedContract (`0xeae300...286f9c`, chain 8453)
- UnnamedContract (`0xf67476...c50eec`, chain 8453)
- UnnamedContract (`0x2f577a...5f655d`, chain 9745)
- UnnamedContract (`0x37334c...7a5b94`, chain 9745)
- UnnamedContract (`0x6131b5...6337b5`, chain 9745)
- UnnamedContract (`0xcab2fa...6b4f6c`, chain 9745)
- UnnamedContract (`0x0e97c8...429e05`, chain 42161)
- UnnamedContract (`0x227b0c...02e936`, chain 42161)
- UnnamedContract (`0x2f577a...5f655d`, chain 42161)
- UnnamedContract (`0x37334c...7a5b94`, chain 42161)
- UnnamedContract (`0x444085...75c0c4`, chain 42161)
- UnnamedContract (`0x6131b5...6337b5`, chain 42161)
- UnnamedContract (`0x638d93...0ccabb`, chain 42161)
- UnnamedContract (`0x91c9d4...e36f5b`, chain 42161)
- UnnamedContract (`0x9ed9af...00f6b9`, chain 42161)
- UnnamedContract (`0xa16f32...d2863e`, chain 42161)
- UnnamedContract (`0xcab2fa...6b4f6c`, chain 42161)
- UnnamedContract (`0xeae300...286f9c`, chain 42161)
- UnnamedContract (`0x0e97c8...429e05`, chain 59144)
- UnnamedContract (`0x2f577a...5f655d`, chain 59144)
- UnnamedContract (`0x37334c...7a5b94`, chain 59144)
- UnnamedContract (`0x6131b5...6337b5`, chain 59144)
- UnnamedContract (`0xa16f32...d2863e`, chain 59144)
- UnnamedContract (`0xb448ec...0781df`, chain 59144)
- UnnamedContract (`0xcab2fa...6b4f6c`, chain 59144)
- UnnamedContract (`0x0e97c8...429e05`, chain 80094)
- UnnamedContract (`0x2f577a...5f655d`, chain 80094)
- UnnamedContract (`0x37334c...7a5b94`, chain 80094)
- UnnamedContract (`0x6131b5...6337b5`, chain 80094)
- UnnamedContract (`0x638d93...0ccabb`, chain 80094)
- UnnamedContract (`0xa16f32...d2863e`, chain 80094)
- UnnamedContract (`0xcab2fa...6b4f6c`, chain 80094)
- AnyswapV5ERC20 (`0x39fc9e...f50f5f`, chain 43114)
- AnyswapV6ERC20 (`0x316772...aaff12`, chain 42161)
- BeaconProxy (`0x3b2f62...c3b1d6`, chain 59144)
- BurnableMintableCappedERC20 (`0x46371c...bc707a`, chain 137)
- BurnableMintableCappedERC20 (`0xb448ec...0781df`, chain 42161)
- ClonableBeaconProxy (`0xe4dddf...dc01cb`, chain 42161)
- DefaultExecutor (`0x41f5d7...50b3b5`, chain 1)
- DefaultExecutor (`0x6758a6...e9afd0`, chain 1)
- DSLOProtocol (`0xcab2fa...6b4f6c`, chain 1)
- EpochVotingPowerStrategy (`0xfbd735...209f8b`, chain 1)
- KatanaFeeHandler (`0x9fb131...8401ca`, chain 1)
- KSDistributor (`0xeae300...286f9c`, chain 1)
- KSRemoveLiquidityPancakeV4CLHook (`0xf67476...c50eec`, chain 56)
- KSRemoveLiquidityUniswapV3Hook (`0x72473d...bb1851`, chain 56)
- KSRemoveLiquidityUniswapV4Hook (`0x635dff...1d7841`, chain 56)
- KSSmartIntentRouter (`0xaee04d...e09974`, chain 56)
- KSZapRouterPosition (`0x0e97c8...429e05`, chain 1)
- KSZapRouterPositionPermit (`0x638d93...0ccabb`, chain 1)
- KSZapValidatorV2Part1 (`0xa16f32...d2863e`, chain 1)
- KyberGovernance (`0x7ec8fc...d8a7fe`, chain 1)
- KyberStaking (`0xeadb96...72b3bd`, chain 1)
- L2StandardERC20 (`0xa00e3a...753819`, chain 10)
- LimitOrderProtocol (`0x227b0c...02e936`, chain 1)
- MetaAggregationRouterV2 (`0x6131b5...6337b5`, chain 1)
- MultiSigWalletWithDailyLimit (`0x3eb01b...96f650`, chain 1)
- MultiSigWalletWithDailyLimit (`0x91c9d4...e36f5b`, chain 1)
- MultiSigWalletWithDailyLimit (`0x91c9d4...e36f5b`, chain 43114)
- OptimismMintableERC20 (`0x28fe69...9d57b1`, chain 8453)
- PancakeSwapInfinityKEMHook (`0x44428c...5fdfd2`, chain 56)
- RewardPool (`0xd2d0a0...daa2e2`, chain 1)
- RewardsDistributor (`0x5ec0dc...c0d3b2`, chain 1)
- ScrollStandardERC20 (`0x608ef9...f99c84`, chain 534352)
- UChildERC20Proxy (`0x1c954e...91948c`, chain 137)
- UniswapV4KEMHook (`0x444085...75c0c4`, chain 1)
- UniswapV4KEMHook (`0x444139...f880c4`, chain 130)
- UnnamedContract (`0x1e1085...917c3f`, chain 250)
- UnnamedContract (`0x6a80a4...d579ba`, chain 1101)
- WethUnwrapper (`0x37334c...7a5b94`, chain 1)
- WhitelistedCollector (`0x9ed9af...00f6b9`, chain 1)

## Contract Surface Quality

- Indexed contracts: 40; live-surface contracts included: 40 (38 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 140/157 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/38 (5.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 140 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 3 discovered implementations excluded (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Deployed-live implementations: 140 of 145 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/38
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 102
- Unique implementations: 145
- Raw deployments: 145
- Audits discovered: 16 (16 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 4 fresh, 2 aging, 4 stale, 6 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 2.6% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hexens | Tier 2 | 1 | 2.6% | 2025-12 |
| Omniscia | Tier 2 | 1 | 2.6% | 2025-06 |
| Spearbit | Tier 1 | 1 | 2.6% | 2025-10 |
| unknown | Tier 2 | 1 | 2.6% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| KSSmartIntentRouter | adapter | project_anchor | own_supporting | 0 | bsc | unit-244693 | `0xaee04d...e09974` | ✅ Audited |
| PancakeSwapInfinityKEMHook | unknown | project_anchor | own_supporting | 0 | bsc | unit-244685 | `0x44428c...5fdfd2` | ✅ Audited |

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnyswapV5ERC20 | token | project_anchor | own_supporting | 0 | avalanche | unit-244676 | `0x39fc9e...f50f5f` | ⚠️ Unaudited |
| AnyswapV6ERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-244623 | `0x451823...583263` | ⚠️ Unaudited |
| AnyswapV6ERC20 | token | project_anchor | own_supporting | 0 | arbitrum | unit-244664 | `0x316772...aaff12` | ⚠️ Unaudited |
| BEP20TokenImplementation | token | external_dependency_or_infra | third_party_dependency (excluded) | 1 | bsc | unit-244736 | `0xfe56d5...1c308b` | ⚠️ Unaudited |
| BridgedToken | operational_periphery | project_anchor | own_supporting | 1 | linea | unit-244737 | `0x3b2f62...c3b1d6` | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | token | project_anchor | own_supporting | 0 | polygon | unit-244643 | `0x46371c...bc707a` | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | token | project_anchor | own_supporting | 0 | arbitrum | unit-244673 | `0xb448ec...0781df` | ⚠️ Unaudited |
| DefaultExecutor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244590 | `0x41f5d7...50b3b5` | ⚠️ Unaudited |
| DefaultExecutor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244595 | `0x6758a6...e9afd0` | ⚠️ Unaudited |
| DSLOProtocol | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244608 | `0xcab2fa...6b4f6c` | ⚠️ Unaudited |
| EpochVotingPowerStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-244617 | `0xfbd735...209f8b` | ⚠️ Unaudited |
| KatanaFeeHandler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244604 | `0x9fb131...8401ca` | ⚠️ Unaudited |
| KSDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-244615 | `0xeae300...286f9c` | ⚠️ Unaudited |
| KSRemoveLiquidityPancakeV4CLHook | unknown | project_anchor | own_supporting | 0 | bsc | unit-244696 | `0xf67476...c50eec` | ⚠️ Unaudited |
| KSRemoveLiquidityUniswapV3Hook | unknown | project_anchor | own_supporting | 0 | bsc | unit-244689 | `0x72473d...bb1851` | ⚠️ Unaudited |
| KSRemoveLiquidityUniswapV4Hook | unknown | project_anchor | own_supporting | 0 | bsc | unit-244687 | `0x635dff...1d7841` | ⚠️ Unaudited |
| KSZapRouterPosition | adapter | project_anchor | own_supporting | 0 | ethereum | unit-244581 | `0x0e97c8...429e05` | ⚠️ Unaudited |
| KSZapRouterPositionPermit | adapter | project_anchor | own_supporting | 0 | ethereum | unit-244594 | `0x638d93...0ccabb` | ⚠️ Unaudited |
| KSZapValidatorV2Part1 | adapter | project_anchor | own_supporting | 0 | ethereum | unit-244605 | `0xa16f32...d2863e` | ⚠️ Unaudited |
| KyberGovernance | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244601 | `0x7ec8fc...d8a7fe` | ⚠️ Unaudited |
| KyberNetworkCrystal | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-244610 | `0xdd974d...6bd200` | ⚠️ Unaudited |
| KyberStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244614 | `0xeadb96...72b3bd` | ⚠️ Unaudited |
| L2StandardERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-244627 | `0xa00e3a...753819` | ⚠️ Unaudited |
| LimitOrderProtocol | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244584 | `0x227b0c...02e936` | ⚠️ Unaudited |
| MetaAggregationRouterV2 | adapter | project_anchor | own_supporting | 0 | ethereum | unit-244593 | `0x6131b5...6337b5` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | governance | project_anchor | own_supporting | 0 | ethereum | unit-244589 | `0x3eb01b...96f650` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | governance | project_anchor | own_supporting | 0 | ethereum | unit-244602 | `0x91c9d4...e36f5b` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | governance | project_anchor | own_supporting | 0 | avalanche | unit-244677 | `0x91c9d4...e36f5b` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | base | unit-244712 | `0x28fe69...9d57b1` | ⚠️ Unaudited |
| RewardPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-244609 | `0xd2d0a0...daa2e2` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-244592 | `0x5ec0dc...c0d3b2` | ⚠️ Unaudited |
| ScrollStandardERC20 | token | project_anchor | own_supporting | 0 | scroll | unit-244678 | `0x608ef9...f99c84` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-244735 | `0xe4dddf...dc01cb` | ⚠️ Unaudited |
| UChildERC20 | token | project_anchor | own_supporting | 1 | polygon | unit-244734 | `0x1c954e...91948c` | ⚠️ Unaudited |
| UniswapV4KEMHook | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244591 | `0x444085...75c0c4` | ⚠️ Unaudited |
| UniswapV4KEMHook | unknown | project_anchor | own_supporting | 0 | unichain | unit-244634 | `0x444139...f880c4` | ⚠️ Unaudited |
| WethUnwrapper | token | project_anchor | own_supporting | 0 | ethereum | unit-244587 | `0x37334c...7a5b94` | ⚠️ Unaudited |
| WhitelistedCollector | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244603 | `0x9ed9af...00f6b9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (105)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244580 | `0x0e590b...b60bda` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244586 | `0x2f577a...5f655d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x444552...9f80c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244611 | `0xdefa4e...e97202` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244613 | `0xe5e8e8...62e4ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244618 | `0x0e97c8...429e05` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244619 | `0x227b0c...02e936` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244621 | `0x2f577a...5f655d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244622 | `0x37334c...7a5b94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244624 | `0x6131b5...6337b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244625 | `0x638d93...0ccabb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244626 | `0x91c9d4...e36f5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244628 | `0xa16f32...d2863e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244629 | `0xb448ec...0781df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244630 | `0xcab2fa...6b4f6c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244679 | `0x0e97c8...429e05` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244681 | `0x227b0c...02e936` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244682 | `0x2f577a...5f655d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244683 | `0x37334c...7a5b94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244684 | `0x444085...75c0c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244686 | `0x6131b5...6337b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244688 | `0x638d93...0ccabb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244690 | `0x91c9d4...e36f5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244691 | `0x9ed9af...00f6b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244692 | `0xa16f32...d2863e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244694 | `0xcab2fa...6b4f6c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244695 | `0xeae300...286f9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-244632 | `0x2f577a...5f655d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-244633 | `0x37334c...7a5b94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-244635 | `0x6131b5...6337b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-244636 | `0x9ed9af...00f6b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-244637 | `0xcab2fa...6b4f6c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-244638 | `0xeae300...286f9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244639 | `0x0e97c8...429e05` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244640 | `0x227b0c...02e936` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244641 | `0x2f577a...5f655d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244642 | `0x37334c...7a5b94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244644 | `0x6131b5...6337b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244645 | `0x638d93...0ccabb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244646 | `0x91c9d4...e36f5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244647 | `0xa16f32...d2863e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244648 | `0xcab2fa...6b4f6c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-244649 | `0x444552...9f80c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-244650 | `0x9ed9af...00f6b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-244651 | `0xeae300...286f9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-244652 | `0x0e97c8...429e05` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-244653 | `0x2f577a...5f655d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-244654 | `0x37334c...7a5b94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-244655 | `0x6131b5...6337b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-244656 | `0xa16f32...d2863e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-244657 | `0xcab2fa...6b4f6c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-244658 | `0x1e1085...917c3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-244659 | `0x91c9d4...e36f5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-244660 | `0x6ee46c...3283e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-244730 | `0x2f577a...5f655d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-244731 | `0x37334c...7a5b94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-244732 | `0x6131b5...6337b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-244733 | `0xcab2fa...6b4f6c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-244631 | `0x6a80a4...d579ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244711 | `0x0e97c8...429e05` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244713 | `0x2f577a...5f655d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244714 | `0x37334c...7a5b94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244715 | `0x444085...75c0c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244716 | `0x6131b5...6337b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244717 | `0x635dff...1d7841` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244718 | `0x638d93...0ccabb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244719 | `0x72473d...bb1851` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244720 | `0x9ed9af...00f6b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244721 | `0xa16f32...d2863e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244722 | `0xaee04d...e09974` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244723 | `0xcab2fa...6b4f6c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244724 | `0xeae300...286f9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244725 | `0xf67476...c50eec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-244726 | `0x2f577a...5f655d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-244727 | `0x37334c...7a5b94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-244728 | `0x6131b5...6337b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-244729 | `0xcab2fa...6b4f6c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244661 | `0x0e97c8...429e05` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244662 | `0x227b0c...02e936` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244663 | `0x2f577a...5f655d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244665 | `0x37334c...7a5b94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244666 | `0x444085...75c0c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244668 | `0x6131b5...6337b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244669 | `0x638d93...0ccabb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244670 | `0x91c9d4...e36f5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244671 | `0x9ed9af...00f6b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244672 | `0xa16f32...d2863e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244674 | `0xcab2fa...6b4f6c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244675 | `0xeae300...286f9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f577a...5f655d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6131b5...6337b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-244697 | `0x0e97c8...429e05` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-244698 | `0x2f577a...5f655d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-244699 | `0x37334c...7a5b94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-244700 | `0x6131b5...6337b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-244701 | `0xa16f32...d2863e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-244702 | `0xb448ec...0781df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-244703 | `0xcab2fa...6b4f6c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244704 | `0x0e97c8...429e05` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244705 | `0x2f577a...5f655d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244706 | `0x37334c...7a5b94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244707 | `0x6131b5...6337b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244708 | `0x638d93...0ccabb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244709 | `0xa16f32...d2863e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244710 | `0xcab2fa...6b4f6c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [SmartDecAudit.pdf](https://github.com/KyberNetwork/smart-contracts/blob/master/audits/APRAudit/SmartDecAudit.pdf) | unknown | Audit | 2019-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [KyberNetwork BlockchainLabs Audit Report.pdf](https://github.com/KyberNetwork/smart-contracts/blob/master/audits/kyberV1Audit2/KyberNetwork%20BlockchainLabs%20Audit%20Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [ChainSecurity_KyberNetwork_Public.pdf](https://github.com/KyberNetwork/smart-contracts/blob/master/audits/kyberV2Audit/ChainSecurity_KyberNetwork_Public.pdf) | ChainSecurity | Audit | 2018-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 23 | n/a |
| [ChainSecurity_Kyberv3.pdf](https://github.com/KyberNetwork/smart-contracts/blob/master/audits/kyberV3Audit/ChainSecurity_Kyberv3.pdf) | ChainSecurity | Audit | 2019-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [Kyber-Hook-Uniswap-Foundation-Spearbit-Security-Review-October-2025.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/Kyber-Hook-Uniswap-Foundation-Spearbit-Security-Review-October-2025.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [kyberswap-dec-25(Final).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/kyberswap-dec-25(Final).pdf) | unknown | Audit | 2026-01 | fresh | Direct | n/a | matched | 1 | 0 | 0 | 4 | n/a |
| [www.chainsecurity.com/security-audit/kyberswap-classic](https://www.chainsecurity.com/security-audit/kyberswap-classic) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [ChainSecurity_KyberNetwork_KyberSwapClassic_Audit.pdf](https://reports.chainsecurity.com/KyberNetwork/ChainSecurity_KyberNetwork_KyberSwapClassic_Audit.pdf) | ChainSecurity | Audit | 2021-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [06_24_2025_KyberNetwork_Omniscia_SecurityReview_UniswapV4Hooks.pdf](https://github.com/KyberNetwork/kyber-exclusive-amm-sc/blob/main/audits/06_24_2025_KyberNetwork_Omniscia_SecurityReview_UniswapV4Hooks.pdf) | Omniscia | Audit | 2025-06 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [hacken.io/audits/kyber-network](https://hacken.io/audits/kyber-network) | Hacken | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [omniscia.io/reports/kyber-network-uniswap-v4-hooks-68163cf266222800187026b8](https://omniscia.io/reports/kyber-network-uniswap-v4-hooks-68163cf266222800187026b8) | Omniscia | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [cantina.xyz/portfolio/eb59f23b-ef3c-4b3c-9d28-3455d5337d3f](https://cantina.xyz/portfolio/eb59f23b-ef3c-4b3c-9d28-3455d5337d3f) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 2 | medium |
| [hexens.io/audit-reports/kyber-network-smart-intent-protocol-dec-2025](https://hexens.io/audit-reports/kyber-network-smart-intent-protocol-dec-2025) | Hexens | Audit | 2025-12 | fresh | Direct | n/a | matched | 1 | 0 | 0 | 4 | n/a |
| [www.chainsecurity.com/security-audit/kyberswap-elastic](https://www.chainsecurity.com/security-audit/kyberswap-elastic) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [www.chainsecurity.com/security-audit/kyberswap-elastic-legacy](https://www.chainsecurity.com/security-audit/kyberswap-elastic-legacy) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [audits.sherlock.xyz/contests/103](https://audits.sherlock.xyz/contests/103) | Sherlock | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [10239] SmartDecAudit.pdf — no match: No reason recorded
- [10242] KyberNetwork BlockchainLabs Audit Report.pdf — no match: No reason recorded
- [10245] ChainSecurity_KyberNetwork_Public.pdf — no match: No reason recorded
- [10246] ChainSecurity_Kyberv3.pdf — no match: No reason recorded
- [10252] Kyber-Hook-Uniswap-Foundation-Spearbit-Security-Review-October-2025.pdf — matched: Extracted contract names from findings context and executive summary. Audit date from cover page.
- [10253] kyberswap-dec-25(Final).pdf — matched: No reason recorded
- [14763] www.chainsecurity.com/security-audit/kyberswap-classic — no match: The report text does not list specific contract names, file paths, or a scope section. It only describes the system as a suite of contracts implementing a Dynamic Market Maker (DMM) based on UniswapV2.
- [14764] ChainSecurity_KyberNetwork_KyberSwapClassic_Audit.pdf — no match: No reason recorded
- [14765] 06_24_2025_KyberNetwork_Omniscia_SecurityReview_UniswapV4Hooks.pdf — matched: Extracted 5 contracts from the scope table and file paths. Audit date is June 24, 2025 from the report header.
- [14767] hacken.io/audits/kyber-network — no match: The provided text is a project description page for Kyber Network on Hacken's website, not an audit report. It mentions that the platform has been audited but does not list specific contracts in scope or an audit date.
- [14768] omniscia.io/reports/kyber-network-uniswap-v4-hooks-68163cf266222800187026b8 — no match: The report does not list specific contract file names or addresses. The scope is described as the 'Kyber Network Uniswap V4 Hook' implementation. The audit date is taken from the latest revision date (June 24th 2025) in the revision table.
- [14769] cantina.xyz/portfolio/eb59f23b-ef3c-4b3c-9d28-3455d5337d3f — matched: No explicit scope section found; contracts inferred from findings. Date from engagement period end.
- [14770] hexens.io/audit-reports/kyber-network-smart-intent-protocol-dec-2025 — matched: No reason recorded
- [14771] www.chainsecurity.com/security-audit/kyberswap-elastic — no match: The provided text is a summary of an audit report for KyberSwap Elastic, but it does not contain a scope section listing specific contracts, source files, or modules. The text mentions 'codebase at last version commit in Scope' but does not enumerate the contracts. No contract names or file paths are explicitly provided.
- [14772] www.chainsecurity.com/security-audit/kyberswap-elastic-legacy — no match: The report text does not list individual contract names or files; only the system name 'KyberSwap Elastic Legacy' is mentioned as the audited target. No date found.
- [14773] audits.sherlock.xyz/contests/103 — no match: The provided text is a fragment of a contest announcement, not a full audit report. No contract names, file paths, or audit date are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| SmartDecAudit.pdf | LiquidityConversionRates | unmatched — not counted | — | — | no |
| SmartDecAudit.pdf | LiquidityFormula | unmatched — not counted | — | — | no |
| KyberNetwork BlockchainLabs Audit Report.pdf | ConversionRates | unmatched — not counted | — | — | no |
| KyberNetwork BlockchainLabs Audit Report.pdf | ExpectedRate | unmatched — not counted | — | — | no |
| KyberNetwork BlockchainLabs Audit Report.pdf | FeeBurner | unmatched — not counted | — | — | no |
| KyberNetwork BlockchainLabs Audit Report.pdf | KyberNetwork | unmatched — not counted | — | — | no |
| KyberNetwork BlockchainLabs Audit Report.pdf | KyberReserve | unmatched — not counted | — | — | no |
| KyberNetwork BlockchainLabs Audit Report.pdf | VolumeImbalanceRecorder | unmatched — not counted | — | — | no |
| KyberNetwork BlockchainLabs Audit Report.pdf | WhiteList | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_Public.pdf | ConversionRates | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_Public.pdf | ConversionRatesInterface | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_Public.pdf | ERC20Interface | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_Public.pdf | ExpectedRate | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_Public.pdf | ExpectedRateInterface | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_Public.pdf | FeeBurner | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_Public.pdf | FeeBurnerInterface | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_Public.pdf | KyberNetwork | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_Public.pdf | KyberNetworkInterface | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_Public.pdf | KyberNetworkProxy | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_Public.pdf | KyberNetworkProxyInterface | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_Public.pdf | KyberReserve | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_Public.pdf | KyberReserveInterface | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_Public.pdf | PermissionGroups | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_Public.pdf | SanityRates | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_Public.pdf | SanityRatesInterface | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_Public.pdf | SimpleNetworkInterface | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_Public.pdf | Utils | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_Public.pdf | Utils2 | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_Public.pdf | VolumeImbalanceRecorder | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_Public.pdf | WhiteList | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_Public.pdf | WhiteListInterface | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_Public.pdf | Withdrawable | unmatched — not counted | — | — | no |
| ChainSecurity_Kyberv3.pdf | ExpectedRate | unmatched — not counted | — | — | no |
| ChainSecurity_Kyberv3.pdf | ExpectedRateInterface | unmatched — not counted | — | — | no |
| ChainSecurity_Kyberv3.pdf | FeeBurner | unmatched — not counted | — | — | no |
| ChainSecurity_Kyberv3.pdf | FeeBurnerInterface | unmatched — not counted | — | — | no |
| ChainSecurity_Kyberv3.pdf | KyberNetwork | unmatched — not counted | — | — | no |
| ChainSecurity_Kyberv3.pdf | KyberNetworkInterface | unmatched — not counted | — | — | no |
| ChainSecurity_Kyberv3.pdf | KyberNetworkProxy | unmatched — not counted | — | — | no |
| ChainSecurity_Kyberv3.pdf | KyberNetworkProxyInterface | unmatched — not counted | — | — | no |
| ChainSecurity_Kyberv3.pdf | KyberReserve | unmatched — not counted | — | — | no |
| ChainSecurity_Kyberv3.pdf | KyberReserveInterface | unmatched — not counted | — | — | no |
| ChainSecurity_Kyberv3.pdf | OrderIdManager | unmatched — not counted | — | — | no |
| ChainSecurity_Kyberv3.pdf | OrderList | unmatched — not counted | — | — | no |
| ChainSecurity_Kyberv3.pdf | OrderListFactory | unmatched — not counted | — | — | no |
| ChainSecurity_Kyberv3.pdf | OrderListFactoryInterface | unmatched — not counted | — | — | no |
| ChainSecurity_Kyberv3.pdf | OrderListInterface | unmatched — not counted | — | — | no |
| ChainSecurity_Kyberv3.pdf | OrderbookReserve | unmatched — not counted | — | — | no |
| ChainSecurity_Kyberv3.pdf | OrderbookReserveInterface | unmatched — not counted | — | — | no |
| ChainSecurity_Kyberv3.pdf | PermissionGroups | unmatched — not counted | — | — | no |
| ChainSecurity_Kyberv3.pdf | PermissionlessOrderbookReserveLister | unmatched — not counted | — | — | no |
| ChainSecurity_Kyberv3.pdf | Utils | unmatched — not counted | — | — | no |
| ChainSecurity_Kyberv3.pdf | Utils2 | unmatched — not counted | — | — | no |
| ChainSecurity_Kyberv3.pdf | Withdrawable | unmatched — not counted | — | — | no |
| Kyber-Hook-Uniswap-Foundation-Spearbit-Security-Review-October-2025.pdf | PancakeSwapInfinityKEMHook | own contract | PancakeSwapInfinityKEMHook (selected) `0x44428c...5fdfd2` — deployed 2025-05-14 14:30:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Kyber-Hook-Uniswap-Foundation-Spearbit-Security-Review-October-2025.pdf | UniswapV4KEMHook | ambiguous — not counted | UniswapV4KEMHook (alternative) `0x444139...f880c4` — deployed 2025-05-14 14:41:48+03 — liveness: live (current_address_book_code)<br>0x444552… (alternative) `0x444552...9f80c4` — liveness: live (current_address_book_code)<br>UniswapV4KEMHook (alternative) `0x444085...75c0c4` — deployed 2025-05-14 14:36:35+03 — liveness: live (current_address_book_code)<br>0x444085… (alternative) `0x444085...75c0c4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Kyber-Hook-Uniswap-Foundation-Spearbit-Security-Review-October-2025.pdf | BaseKEMHook | unmatched — not counted | — | Listed in findings context | no |
| Kyber-Hook-Uniswap-Foundation-Spearbit-Security-Review-October-2025.pdf | Rescuable | unmatched — not counted | — | Listed in findings context | no |
| kyberswap-dec-25(Final).pdf | BaseConditionalHook | unmatched — not counted | — | — | no |
| kyberswap-dec-25(Final).pdf | BaseTickBasedRemoveLiquidityHook | unmatched — not counted | — | — | no |
| kyberswap-dec-25(Final).pdf | ERC20Data | unmatched — not counted | — | — | no |
| kyberswap-dec-25(Final).pdf | KSSmartIntentRouter | own contract | KSSmartIntentRouter (selected) `0xaee04d...e09974` — deployed 2026-02-09 12:32:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| kyberswap-dec-25(Final).pdf | KSSmartIntentRouterAccounting | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_KyberSwapClassic_Audit.pdf | DMMFactory | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_KyberSwapClassic_Audit.pdf | DMMLibrary | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_KyberSwapClassic_Audit.pdf | DMMPool | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_KyberSwapClassic_Audit.pdf | DMMRouter | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_KyberSwapClassic_Audit.pdf | DaoRegistry | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_KyberSwapClassic_Audit.pdf | ERC20Permit | unmatched — not counted | — | — | no |
| ChainSecurity_KyberNetwork_KyberSwapClassic_Audit.pdf | VolumeTrendRecorder | unmatched — not counted | — | — | no |
| 06_24_2025_KyberNetwork_Omniscia_SecurityReview_UniswapV4Hooks.pdf | BaseKEMHook | unmatched — not counted | — | listed in scope table | no |
| 06_24_2025_KyberNetwork_Omniscia_SecurityReview_UniswapV4Hooks.pdf | HookDataDecoder | unmatched — not counted | — | listed in scope table | no |
| 06_24_2025_KyberNetwork_Omniscia_SecurityReview_UniswapV4Hooks.pdf | Rescuable | unmatched — not counted | — | listed in scope table | no |
| 06_24_2025_KyberNetwork_Omniscia_SecurityReview_UniswapV4Hooks.pdf | UniswapV4KEMHook | ambiguous — not counted | UniswapV4KEMHook (alternative) `0x444139...f880c4` — deployed 2025-05-14 14:41:48+03 — liveness: live (current_address_book_code)<br>0x444552… (alternative) `0x444552...9f80c4` — liveness: live (current_address_book_code)<br>UniswapV4KEMHook (alternative) `0x444085...75c0c4` — deployed 2025-05-14 14:36:35+03 — liveness: live (current_address_book_code)<br>0x444085… (alternative) `0x444085...75c0c4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 06_24_2025_KyberNetwork_Omniscia_SecurityReview_UniswapV4Hooks.pdf | PancakeSwapInfinityKEMHook | own contract | PancakeSwapInfinityKEMHook (selected) `0x44428c...5fdfd2` — deployed 2025-05-14 14:30:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| omniscia.io/reports/kyber-network-uniswap-v4-hooks-68163cf266222800187026b8 | Kyber Network Uniswap V4 Hook | unmatched — not counted | — | The audit scope is described as 'their novel Uniswap V4 Hook' and 'The Uniswap V4 hook implementation' throughout the report. | no |
| cantina.xyz/portfolio/eb59f23b-ef3c-4b3c-9d28-3455d5337d3f | UniswapV4KEMHook | ambiguous — not counted | UniswapV4KEMHook (alternative) `0x444139...f880c4` — deployed 2025-05-14 14:41:48+03 — liveness: live (current_address_book_code)<br>0x444552… (alternative) `0x444552...9f80c4` — liveness: live (current_address_book_code)<br>UniswapV4KEMHook (alternative) `0x444085...75c0c4` — deployed 2025-05-14 14:36:35+03 — liveness: live (current_address_book_code)<br>0x444085… (alternative) `0x444085...75c0c4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina.xyz/portfolio/eb59f23b-ef3c-4b3c-9d28-3455d5337d3f | PancakeSwapInfinityKEMHook | own contract | PancakeSwapInfinityKEMHook (selected) `0x44428c...5fdfd2` — deployed 2025-05-14 14:30:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/eb59f23b-ef3c-4b3c-9d28-3455d5337d3f | BaseKEMHook | unmatched — not counted | — | mentioned in findings as audited contract | no |
| hexens.io/audit-reports/kyber-network-smart-intent-protocol-dec-2025 | BaseConditionalHook | unmatched — not counted | — | — | no |
| hexens.io/audit-reports/kyber-network-smart-intent-protocol-dec-2025 | BaseTickBasedRemoveLiquidityHook | unmatched — not counted | — | — | no |
| hexens.io/audit-reports/kyber-network-smart-intent-protocol-dec-2025 | ERC20Data | unmatched — not counted | — | — | no |
| hexens.io/audit-reports/kyber-network-smart-intent-protocol-dec-2025 | KSSmartIntentRouter | own contract | KSSmartIntentRouter (selected) `0xaee04d...e09974` — deployed 2026-02-09 12:32:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hexens.io/audit-reports/kyber-network-smart-intent-protocol-dec-2025 | KSSmartIntentRouterAccounting | unmatched — not counted | — | — | no |
| www.chainsecurity.com/security-audit/kyberswap-elastic-legacy | KyberSwap Elastic Legacy | unmatched — not counted | — | mentioned as the system audited in the report overview | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | `0x3b2f62...c3b1d6` | BridgedToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x46371c...bc707a` | BurnableMintableCappedERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb448ec...0781df` | BurnableMintableCappedERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x41f5d7...50b3b5` | DefaultExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6758a6...e9afd0` | DefaultExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcab2fa...6b4f6c` | DSLOProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfbd735...209f8b` | EpochVotingPowerStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9fb131...8401ca` | KatanaFeeHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeae300...286f9c` | KSDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf67476...c50eec` | KSRemoveLiquidityPancakeV4CLHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x72473d...bb1851` | KSRemoveLiquidityUniswapV3Hook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x635dff...1d7841` | KSRemoveLiquidityUniswapV4Hook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0e97c8...429e05` | KSZapRouterPosition | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x638d93...0ccabb` | KSZapRouterPositionPermit | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa16f32...d2863e` | KSZapValidatorV2Part1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7ec8fc...d8a7fe` | KyberGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeadb96...72b3bd` | KyberStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xa00e3a...753819` | L2StandardERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x227b0c...02e936` | LimitOrderProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6131b5...6337b5` | MetaAggregationRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3eb01b...96f650` | MultiSigWalletWithDailyLimit | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x91c9d4...e36f5b` | MultiSigWalletWithDailyLimit | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x91c9d4...e36f5b` | MultiSigWalletWithDailyLimit | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x28fe69...9d57b1` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd2d0a0...daa2e2` | RewardPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5ec0dc...c0d3b2` | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe4dddf...dc01cb` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x1c954e...91948c` | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x37334c...7a5b94` | WethUnwrapper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9ed9af...00f6b9` | WhitelistedCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 34 |
| upstream | 6 |
| standard_library | 0 |
| needs_review | 105 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 77 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=5, medium=2
- Match method counts: unique_name=5

Zero-match audit list:

- [10239] SmartDecAudit.pdf
- [10242] KyberNetwork BlockchainLabs Audit Report.pdf
- [10245] ChainSecurity_KyberNetwork_Public.pdf
- [10246] ChainSecurity_Kyberv3.pdf
- [14763] www.chainsecurity.com/security-audit/kyberswap-classic
- [14764] ChainSecurity_KyberNetwork_KyberSwapClassic_Audit.pdf
- [14767] hacken.io/audits/kyber-network
- [14768] omniscia.io/reports/kyber-network-uniswap-v4-hooks-68163cf266222800187026b8
- [14771] www.chainsecurity.com/security-audit/kyberswap-elastic
- [14772] www.chainsecurity.com/security-audit/kyberswap-elastic-legacy
- [14773] audits.sherlock.xyz/contests/103

Fork inheritance lineage and inherited audits are included when available.
