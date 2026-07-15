# Agentic Audit Brief: KyberSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 5 audit(s)
- Eligible audit results: 16 (5 matched; 11 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: KyberSwap (`kyberswap`)
- Website: [https://kyberswap.com](https://kyberswap.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, aurora, avalanche, base, berachain, bsc, cronos, ethereum, fantom, hyperliquid, linea, monad, optimism, plasma, polygon, polygon-zkevm, scroll, sonic, unichain, zksync-era
- Contract surface: 497 unique implementations (613 raw deployments)
- Coverage basis: 2/38 confirmed own live verified implementations (5.3%); conservative 5.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $7,951,935.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for KyberSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 40 contract row(s) across arbitrum, aurora, avalanche, base, berachain, bsc, cronos, ethereum, fantom, hyperliquid, linea, monad, optimism, plasma, polygon, polygon-zkevm, scroll, sonic, unichain, zksync-era. Structural roles: 27 core, 13 supporting. 4 row(s) use upgradeable patterns.

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

- Logic-topography rows: 40; live-surface rows included: 40 (38 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 140/157 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/38 (5.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 140 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 355 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 140 of 497 unique; 357 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/132
- Verified + Unaudited implementations: 130
- Verified by bytecode match: 0
- Unverified implementations: 365
- Unique implementations: 497
- Raw deployments: 613
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
| Hexens | Tier 2 | 1 | 0.8% | 2025-12 |
| Omniscia | Tier 2 | 1 | 0.8% | 2025-06 |
| Spearbit | Tier 1 | 1 | 0.8% | 2025-10 |
| unknown | Tier 2 | 1 | 0.8% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| KSSmartIntentRouter | adapter | project_anchor | own_supporting | 0 | bsc | unit-244693 | `0xaee04d...e09974` | ✅ Audited |
| PancakeSwapInfinityKEMHook | unknown | project_anchor | own_supporting | 0 | bsc | unit-244685 | `0x44428c...5fdfd2` | ✅ Audited |

### ⚠️ Verified + Unaudited (130)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x3c002e...36a5a7`; ethereum `0x492dc3...e2fbd0`; ethereum `0x525e1f...e2dccd`; ethereum `0x64e988...cf72e3`; ethereum `0x8f9685...2e4b05`; ethereum `0x971d89...4e2a95`; ethereum `0x97f3ad...fe0652`; ethereum `0xac488e...aa4746`; ethereum `0xbb108a...38f92b`; ethereum `0xd59a8d...5905d5`; ethereum `0xe06b12...fcd62a`; ethereum `0xf33120...d7af9f` | ⚠️ Unaudited |
| AddressValidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x41de7c...49bb6e`; ethereum `0x42af5f...923ec0`; ethereum `0xbd0e69...a94bcc`; ethereum `0xc57ef7...6a60b1`; ethereum `0xcf04d3...8ea9da`; ethereum `0xdf5985...573b50`; ethereum `0xedfcf7...c23520` | ⚠️ Unaudited |
| AggregationRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf1a1b...53ec25` | ⚠️ Unaudited |
| AllowanceSheet | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x811c5f...30424a` | ⚠️ Unaudited |
| AntiSnipAttackPositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2b1c7b...6dc9a8` | ⚠️ Unaudited |
| AntiSnipAttackPositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2b1c7b...6dc9a8` | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | project_anchor | own_supporting | 0 | avalanche | unit-244676 | `0x39fc9e...f50f5f` | ⚠️ Unaudited |
| AnyswapV6ERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-244623 | `0x451823...583263` | ⚠️ Unaudited |
| AnyswapV6ERC20 | token | project_anchor | own_supporting | 0 | arbitrum | unit-244664 | `0x316772...aaff12` | ⚠️ Unaudited |
| BalanceSheet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dea55...34e837` | ⚠️ Unaudited |
| BCdpManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x22d3fb...f051ae`; ethereum `0x3320f0...f7e147`; ethereum `0x3f30c2...24bbed` | ⚠️ Unaudited |
| BCdpScore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46dfdf...2344cf` | ⚠️ Unaudited |
| BEP20TokenImplementation | token | external_dependency_or_infra | third_party_dependency (excluded) | 1 | bsc | unit-244736 | `0xfe56d5...1c308b` | ⚠️ Unaudited |
| BlackFriday | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20f7cf...35a7e6` | ⚠️ Unaudited |
| BProxyActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x351626...c9e6a1`; ethereum `0x4bcad4...725ab0` | ⚠️ Unaudited |
| BridgedToken | operational_periphery | project_anchor | own_supporting | 1 | linea | unit-244737 | `0x3b2f62...c3b1d6` | ⚠️ Unaudited |
| BTVL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60312e...9b20cf` | ⚠️ Unaudited |
| BudConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2325aa...c79dc3`; ethereum `0x47f935...cb2553`; ethereum `0x78a049...0cac6d` | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | token | project_anchor | own_supporting | 0 | polygon | unit-244643 | `0x46371c...bc707a` | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | token | project_anchor | own_supporting | 0 | arbitrum | unit-244673 | `0xb448ec...0781df` | ⚠️ Unaudited |
| ChainLogConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb043f...54a31b` | ⚠️ Unaudited |
| ConversionRateEnhancedSteps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35ed79...02f8eb` | ⚠️ Unaudited |
| ConversionRates | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x798abd...11191b` | ⚠️ Unaudited |
| Dai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b1754...271d0f` | ⚠️ Unaudited |
| DefaultExecutor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244590 | `0x41f5d7...50b3b5` | ⚠️ Unaudited |
| DefaultExecutor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244595 | `0x6758a6...e9afd0` | ⚠️ Unaudited |
| DMMFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x833e40...8886de` | ⚠️ Unaudited |
| DMMRouter02 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1c8725...8cdbe6`; bsc `0x78df70...c86409`; polygon `0x546c79...4e4dd1`; avalanche `0x8efa5a...c5a5f8` | ⚠️ Unaudited |
| DSLOProtocol | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244608 | `0xcab2fa...6b4f6c` | ⚠️ Unaudited |
| DutchReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x3d4575...ae3958`; ethereum `0x625302...f497db`; ethereum `0x7c6fc9...86ae50`; ethereum `0x918308...5d1b37`; ethereum `0xa45f9b...46ca1d`; ethereum `0xa58c6d...32ea1a`; ethereum `0xb173dd...d2431e` | ⚠️ Unaudited |
| EpochVotingPowerStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-244617 | `0xfbd735...209f8b` | ⚠️ Unaudited |
| ExpectedRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x543f25...4a8c7e`; ethereum `0xf40c50...76f2e4` | ⚠️ Unaudited |
| Experiment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e80b3...062472` | ⚠️ Unaudited |
| Exponent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x29c24a...f08332`; ethereum `0x515643...e44a8d`; ethereum `0x89f58d...e4d54b`; ethereum `0xf79a20...70997c` | ⚠️ Unaudited |
| Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5f1ddd...3dd50a`; ethereum `0xc7a590...308c4a` | ⚠️ Unaudited |
| FeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4e89bc...e14a8e`; ethereum `0xed4f53...f34b04` | ⚠️ Unaudited |
| FeeBurnerResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb7932...09c669` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b869...06eb48` | ⚠️ Unaudited |
| FireBirdFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59a16e...956571` | ⚠️ Unaudited |
| FireBirdFormula | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9249f...7785b4` | ⚠️ Unaudited |
| FixedSupplyToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3d3b48...6f61d1`; ethereum `0x6132db...fbb381`; ethereum `0x71168c...48f8a2` | ⚠️ Unaudited |
| GetDecimals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7bfd2c...950fd5`; ethereum `0xb4acba...1fb0b6`; ethereum `0xfa1ba4...c99d2d` | ⚠️ Unaudited |
| GovernanceExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7b57a6...2301ad`; ethereum `0x81c4b9...c4ac68` | ⚠️ Unaudited |
| Jar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3c36cc...763cff`; ethereum `0xbde0ba...a2e6c1`; ethereum `0xdb89a7...c1d50f` | ⚠️ Unaudited |
| JarConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2cd6ea...99c34c`; ethereum `0xf10bb2...1aaa69` | ⚠️ Unaudited |
| KatanaFeeHandler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244604 | `0x9fb131...8401ca` | ⚠️ Unaudited |
| KSDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-244615 | `0xeae300...286f9c` | ⚠️ Unaudited |
| KSElasticLMHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x35be3f...e10870`; ethereum `0x6afeb9...7705c8` | ⚠️ Unaudited |
| KSElasticLMV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3d6afe...147a43`; ethereum `0xa70a1a...360e0e`; ethereum `0xf2bcdf...1d6dbd` | ⚠️ Unaudited |
| KSRemoveLiquidityPancakeV4CLHook | unknown | project_anchor | own_supporting | 0 | bsc | unit-244696 | `0xf67476...c50eec` | ⚠️ Unaudited |
| KSRemoveLiquidityUniswapV3Hook | unknown | project_anchor | own_supporting | 0 | bsc | unit-244689 | `0x72473d...bb1851` | ⚠️ Unaudited |
| KSRemoveLiquidityUniswapV4Hook | unknown | project_anchor | own_supporting | 0 | bsc | unit-244687 | `0x635dff...1d7841` | ⚠️ Unaudited |
| KSZapRouterPosition | adapter | project_anchor | own_supporting | 0 | ethereum | unit-244581 | `0x0e97c8...429e05` | ⚠️ Unaudited |
| KSZapRouterPositionPermit | adapter | project_anchor | own_supporting | 0 | ethereum | unit-244594 | `0x638d93...0ccabb` | ⚠️ Unaudited |
| KSZapValidator | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x942412...4f1f26` | ⚠️ Unaudited |
| KSZapValidatorV2Part1 | adapter | project_anchor | own_supporting | 0 | ethereum | unit-244605 | `0xa16f32...d2863e` | ⚠️ Unaudited |
| KyberBancorReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb02063...d6d6ce`; ethereum `0xba9298...f47239` | ⚠️ Unaudited |
| KyberDao | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x39e507...8f6b9a`; ethereum `0x49bdd8...6312e9` | ⚠️ Unaudited |
| KyberFeeHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xa943b5...6ecfd5`; ethereum `0xd3d2b5...1114fe`; ethereum `0xec3003...71b40c` | ⚠️ Unaudited |
| KyberGovernance | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244601 | `0x7ec8fc...d8a7fe` | ⚠️ Unaudited |
| KyberHistory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x26a9ec...940ba3`; ethereum `0x276864...094e6d`; ethereum `0x9b53d7...ae1fe4`; ethereum `0xab5dfd...ed2715`; ethereum `0xb222bc...9f4cc2`; ethereum `0xe23385...77423c`; ethereum `0xe93844...0b7ffe`; ethereum `0xf2bcfc...2eb38a` | ⚠️ Unaudited |
| KyberMatchingEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9cf739...13ff17`; ethereum `0xa1c0fa...996e2c` | ⚠️ Unaudited |
| KyberNetwork | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x7c6655...5f7acc`; ethereum `0x91a502...2276b9`; ethereum `0x964f35...508cf5`; ethereum `0x9cb7bb...c9a794` | ⚠️ Unaudited |
| KyberNetworkCrystal | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-244610 | `0xdd974d...6bd200` | ⚠️ Unaudited |
| KyberNetworkProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x818e6f...87b755`; ethereum `0x9aab3f...d4b11e`; ethereum `0xc153ee...38a37c` | ⚠️ Unaudited |
| KyberReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x63825c...6a0d8f`; ethereum `0x91be8f...4d6ee1`; ethereum `0xcf76b6...ff44ae` | ⚠️ Unaudited |
| KyberStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244614 | `0xeadb96...72b3bd` | ⚠️ Unaudited |
| KyberStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecf0bd...8aaea3` | ⚠️ Unaudited |
| KyberStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb18d90...e30cf5`; ethereum `0xc8fb12...289301` | ⚠️ Unaudited |
| KyberSwapElasticLM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7d5ba5...e3e676`; ethereum `0xb85ebe...57c03f` | ⚠️ Unaudited |
| L2StandardERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-244627 | `0xa00e3a...753819` | ⚠️ Unaudited |
| LimitOrderProtocol | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244584 | `0x227b0c...02e936` | ⚠️ Unaudited |
| LiquidatorBalanceInfo | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0c02c...655ebe` | ⚠️ Unaudited |
| LiquidatorInfo | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5fd74c...a1064d`; ethereum `0x720a2b...5ad9fd`; ethereum `0xbe02c5...8ce884` | ⚠️ Unaudited |
| LiquidityConversionRates | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x40d085...601763`; ethereum `0x97d712...d1edab` | ⚠️ Unaudited |
| LiquidityMigrator | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa650f1...12ff2e` | ⚠️ Unaudited |
| LiquidityMigrator2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a65e0...7bdeec` | ⚠️ Unaudited |
| MetaAggregationRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2b938f...d035cf`; ethereum `0x617dee...44111e` | ⚠️ Unaudited |
| MetaAggregationRouterV2 | adapter | project_anchor | own_supporting | 0 | ethereum | unit-244593 | `0x6131b5...6337b5` | ⚠️ Unaudited |
| Migrate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9eacb9...bd0a49`; ethereum `0xa30b96...a17c89`; ethereum `0xf4062d...7ed0ca` | ⚠️ Unaudited |
| Multicall | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: bsc `0xcf591c...9a74ec`; polygon `0x878dfe...bd934c` | ⚠️ Unaudited |
| Multicall2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ba1e1...eed696` | ⚠️ Unaudited |
| MultipleEpochRewardsClaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x301c79...421e62`; ethereum `0xfa68d9...1098fa` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | governance | project_anchor | own_supporting | 0 | ethereum | unit-244589 | `0x3eb01b...96f650` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x4dbbbf...851e80`; ethereum `0x76c594...8274ba`; ethereum `0x7ba651...db3538`; ethereum `0xb7d931...b7862c`; ethereum `0xd69d7a...90c30e`; ethereum `0xe6a733...454713`; avalanche `0xd69d7a...90c30e` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | governance | project_anchor | own_supporting | 0 | ethereum | unit-244602 | `0x91c9d4...e36f5b` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | governance | project_anchor | own_supporting | 0 | avalanche | unit-244677 | `0x91c9d4...e36f5b` | ⚠️ Unaudited |
| NamableAddressList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x844de5...aa694a`; ethereum `0x9f59b4...155084`; ethereum `0xf2ec42...3b129d`; ethereum `0xf5de41...d1427e` | ⚠️ Unaudited |
| NoSwappingLiquidationStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x869410...9631d7` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | base | unit-244712 | `0x28fe69...9d57b1` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3add75...186a2c`; ethereum `0x84ff97...4faf23`; ethereum `0x912d19...362d4c`; ethereum `0xba791e...0aa47f` | ⚠️ Unaudited |
| PoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x000000...e08a90`; unichain `0x1f9840...000004`; base `0x498581...652b2b`; arbitrum `0x360e68...b9fb32` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x500180...7af559` | ⚠️ Unaudited |
| ProxyERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57ab1e...6d5f51` | ⚠️ Unaudited |
| PToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5228a2...e7733b` | ⚠️ Unaudited |
| PTToDaiConversionRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3b755a...8b9f75`; ethereum `0x7c3f1c...be8c17` | ⚠️ Unaudited |
| QuoterV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d47fd...5d7856` | ⚠️ Unaudited |
| RewardPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-244609 | `0xd2d0a0...daa2e2` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-244592 | `0x5ec0dc...c0d3b2` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc1e7df...6f4c83`; ethereum `0xf9c2b5...bdeab4` | ⚠️ Unaudited |
| SafeChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2686ad...1e4bc5` | ⚠️ Unaudited |
| ScrollStandardERC20 | token | project_anchor | own_supporting | 0 | scroll | unit-244678 | `0x608ef9...f99c84` | ⚠️ Unaudited |
| SetStepFunctionWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c63a1...db7b66` | ⚠️ Unaudited |
| SimpleCall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0b538...6f5ad4` | ⚠️ Unaudited |
| StablyFiatToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4bdb1...112ebe` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-244735 | `0xe4dddf...dc01cb` | ⚠️ Unaudited |
| TarynToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bb301...6fe6db` | ⚠️ Unaudited |
| TetherToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdac17f...831ec7` | ⚠️ Unaudited |
| TicksFeesReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x8fd8cb...eadbb3`; ethereum `0xd7ab16...0f88c9`; ethereum `0xdc4382...f7d210` | ⚠️ Unaudited |
| TimeLockedController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x9978d2...e3578f`; ethereum `0x9bcf57...91fbb8`; ethereum `0xb8e63e...db615c`; ethereum `0xcf9a1a...449c0b`; ethereum `0xd9a2fc...07c88a`; ethereum `0xe8ae47...cb8c96` | ⚠️ Unaudited |
| TrueUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x2424cb...980960`; ethereum `0x8dd5fb...51e73e`; ethereum `0x97daf1...e8459b`; ethereum `0xb7b489...66d5ae`; ethereum `0xc0669b...f701c7`; ethereum `0xc9fffd...09d3d3`; ethereum `0xde5de8...4896bd`; ethereum `0xecc131...a05e48` | ⚠️ Unaudited |
| UChildERC20 | token | project_anchor | own_supporting | 1 | polygon | unit-244734 | `0x1c954e...91948c` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf49c43...dd6687` | ⚠️ Unaudited |
| UniswapV4KEMHook | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244591 | `0x444085...75c0c4` | ⚠️ Unaudited |
| UniswapV4KEMHook | unknown | project_anchor | own_supporting | 0 | unichain | unit-244634 | `0x444139...f880c4` | ⚠️ Unaudited |
| UserInfo | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x468960...6ad3ff`; ethereum `0x791678...1ddfb1` | ⚠️ Unaudited |
| Utils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6fc613...20ee02`; ethereum `0xaec7fa...018dcc` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49c4f9...801a8b` | ⚠️ Unaudited |
| WAVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb31f66...fd66c7` | ⚠️ Unaudited |
| WBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb4cdb...bc095c` | ⚠️ Unaudited |
| WBTC | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2260fa...c2c599` | ⚠️ Unaudited |
| WETH9 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02aaa...756cc2` | ⚠️ Unaudited |
| WethUnwrapper | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27a15e...318a8d` | ⚠️ Unaudited |
| WethUnwrapper | token | project_anchor | own_supporting | 0 | ethereum | unit-244587 | `0x37334c...7a5b94` | ⚠️ Unaudited |
| WhiteList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e106a...a669a3` | ⚠️ Unaudited |
| WhitelistedCollector | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244603 | `0x9ed9af...00f6b9` | ⚠️ Unaudited |
| WMATIC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d500b...df1270` | ⚠️ Unaudited |
| WrapConversionRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb6857...e9aed1` | ⚠️ Unaudited |
| Wrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8f1a36...fcb608`; ethereum `0xb6a1c0...e382b2` | ⚠️ Unaudited |
| ZapIn | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61a6cb...ba4870` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (365)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x005555...d8fa6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0226cf...59f91a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x041adc...68f011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x049bef...967b09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x072fe0...b72331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07aaba...4c48a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0866ed...866434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x093a03...3b1c79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x094c87...99c446` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09677d...f4228d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09908c...dff9fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ad1af...62fbf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ae823...478082` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc32a...c8df1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c5ace...b6a8ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d125c...508c1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0da3e2...0b1171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e4272...17185c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e4413...001820` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244580 | `0x0e590b...b60bda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f5525...9be456` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1004c5...f1ead1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10f119...4ce691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1141c1...055016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11b4af...8832b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12530f...a9cba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x128078...888d6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x132af8...dd3582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x138948...aa8ba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x165c68...2de75d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16daaa...2f774e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18008a...246225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x180555...0877f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x198213...8c9759` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bfce8...a292a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c758a...429be5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d5702...4a37fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7649...dbfebb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f3b21...cc90d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f84c2...a307b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f893e...c51271` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f97df...c793dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fc360...0c551c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ff27a...97dc0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2664bf...d3266e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2722e9...102022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x276e31...79b744` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29515b...5e844d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2951d6...7d13c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29e7d0...80c3c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a8e79...25d4ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ab0ee...b678cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2abe87...273e0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244586 | `0x2f577a...5f655d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f9331...48af55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fd5e5...76eaf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x309219...2076d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32d4e0...569f78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34e6df...318085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35e19e...752dfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3671e4...562f50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36b7ec...e70047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3732fb...7575b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37a6b1...d85f96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x386b28...9c74f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38cb5f...b19282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aac11...f9dbee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b36eb...009f36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c4176...d0c2c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c476a...4014a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3dc912...e19f6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41684b...e518c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x422e12...c87b4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x444552...9f80c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45705b...4aaae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46c616...cf4a4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49cf2a...895a0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49df8a...24f8ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bef17...d96282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e2bda...e00874` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fe5b9...6e2c1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50950d...adfbb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x520648...96a38b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5301b6...69b374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x533e6d...3bc584` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5370d7...207224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x555b6e...7a1fd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55e8be...bcacbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5649b4...eb23d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566145...4bce20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5705a7...ceeb2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x572be7...3ccb49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58f1d0...113f3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d7640...8ca7d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fd93e...56d3a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61333e...db94cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63be40...f954d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63cd13...37acdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63df0f...f97cf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64f0d2...003ec1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x650630...79abd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x654be4...2fb817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x669ecc...0d5cd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66cd4f...80d7d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68382f...257437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6944ec...b3a32b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ace93...b766e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ad29d...c98865` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b3bc1...fc879b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b538b...313357` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c04fd...21ca7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d444c...da8322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e4141...b50ec6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f81eb...70c40f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76d5e0...04bf9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x789157...36aa25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78e565...64cb67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b7f5f...66833f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c0659...29271d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fc52e...21cbfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x824a7b...8b6d26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83d490...251c31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x865fb7...05b555` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87bdc1...13e333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x886f64...e37667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88e738...2d9289` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89958f...90b903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8abd8c...b3741e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f91fd...03bb9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x921f9d...a91b1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9247d4...c79c61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x933a68...a3b74a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x936363...90ef96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98565f...d40bd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x995176...35a549` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a8d5f...32806c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d0f55...148fc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0d27a...467290` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa24d4d...4c69cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa48b24...a6aa5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5ea82...a7bf15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8efaa...ca60b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa99e4c...9f58f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab8040...d98ff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabe2c8...7a2dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaccf1c...bac97f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadcd33...3f16e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xade471...32eab2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadf471...b34a6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae83bd...667009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf8c2b...68493e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb05c18...ae1f26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb09d1a...41c246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1ac64...aca12c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb20a27...768722` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5dc39...25d616` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7242d...489a28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb78234...3940a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8b13b...da1ec9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8e6c8...4ab2db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb90faf...083a19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb952d8...a05695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9802c...a8c88e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba3883...d24227` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba4d70...6c2a6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba7a28...0d7d3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbad70c...357dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc19397...1bcc93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc311ef...0b82c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc360ef...af6f2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5ec1e...a11b3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6c0bd...b8c1fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc77841...0cd5ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaa00a...880597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaa531...812b6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb6e44...14f94f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcde3eb...a5eac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf2269...bd5433` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf673f...dd5ad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd12bcd...a59e77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1b474...40abf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd46d5e...3c39e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5a497...c7bcb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7d59b...87c883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8ac7f...8dcdb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda4745...b6eb6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaa210...0d4458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdebcb4...05019b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244611 | `0xdefa4e...e97202` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdffb0e...70d55c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe20f29...3179e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe222fb...c6a480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3ac3f...9ffce5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4afb0...a38f46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244613 | `0xe5e8e8...62e4ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe64f4e...5f416e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe83b89...33120c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8826e...311c20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9be00...406187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefa53a...1314e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf06c81...9d2e79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0a3c5...c5967b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf121b4...79fc3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf13549...f784fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf16d45...1657ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf25f71...df7c78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf28fca...43fa55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf294ad...c136fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3da9a...63e653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4c7dd...c25fc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4cc44...723960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5cc44...3cdda5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb8918...f47f6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc0898...a49200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0d125c...508c1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244618 | `0x0e97c8...429e05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x165c68...2de75d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1c758a...429be5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244619 | `0x227b0c...02e936` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2abe87...273e0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244621 | `0x2f577a...5f655d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244622 | `0x37334c...7a5b94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5649b4...eb23d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5f1ddd...3dd50a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244624 | `0x6131b5...6337b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244625 | `0x638d93...0ccabb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8abd8c...b3741e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244626 | `0x91c9d4...e36f5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244628 | `0xa16f32...d2863e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244629 | `0xb448ec...0781df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc1e7df...6f4c83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244630 | `0xcab2fa...6b4f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd7ab16...0f88c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xda4745...b6eb6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdc4382...f7d210` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe3ac3f...9ffce5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe3c78d...1685a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244679 | `0x0e97c8...429e05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10908c...9595c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244681 | `0x227b0c...02e936` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244682 | `0x2f577a...5f655d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244683 | `0x37334c...7a5b94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244684 | `0x444085...75c0c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244686 | `0x6131b5...6337b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244688 | `0x638d93...0ccabb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x878dfe...bd934c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8efa5a...c5a5f8` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x10908c...9595c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244640 | `0x227b0c...02e936` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244641 | `0x2f577a...5f655d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244642 | `0x37334c...7a5b94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5f1fe6...3c095c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244644 | `0x6131b5...6337b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244645 | `0x638d93...0ccabb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8efa5a...c5a5f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244646 | `0x91c9d4...e36f5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244647 | `0xa16f32...d2863e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244648 | `0xcab2fa...6b4f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf79b1e...526975` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | 6 deployments: cronos `0x5c7f8a...e1ae23`; cronos `0x63abb9...151e6d`; cronos `0xd9bfe9...376974`; fantom `0x21be37...1a4c83`; fantom `0x5d5a5a...de039a`; fantom `0x78df70...c86409` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-244659 | `0x91c9d4...e36f5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x350047...841c54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-244660 | `0x6ee46c...3283e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x937f4f...7a5208` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10908c...9595c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f577a...5f655d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6131b5...6337b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x76c594...8274ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x878dfe...bd934c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0d125c...508c1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-244697 | `0x0e97c8...429e05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1c758a...429be5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2abe87...273e0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2b1c7b...6dc9a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-244698 | `0x2f577a...5f655d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x30ba0a...af2552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x36efec...bb93bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-244699 | `0x37334c...7a5b94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x44729a...5d3f38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4e63f7...994be4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5649b4...eb23d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5f1ddd...3dd50a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-244700 | `0x6131b5...6337b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x700837...48b4aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7bae6b...ae6ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x815d02...2a5738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8abd8c...b3741e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-244701 | `0xa16f32...d2863e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-244702 | `0xb448ec...0781df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc1e7df...6f4c83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc2b464...909690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc4d8b4...b3204c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-244703 | `0xcab2fa...6b4f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd7ab16...0f88c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xda4745...b6eb6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe0d72a...697253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe3ac3f...9ffce5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf93dea...dbc6c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244704 | `0x0e97c8...429e05` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244705 | `0x2f577a...5f655d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244706 | `0x37334c...7a5b94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244707 | `0x6131b5...6337b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244708 | `0x638d93...0ccabb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244709 | `0xa16f32...d2863e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244710 | `0xcab2fa...6b4f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x0d125c...508c1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x165c68...2de75d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x2b1c7b...6dc9a8` | ❓ Unverified |

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
| native | 122 |
| upstream | 7 |
| standard_library | 3 |
| needs_review | 365 |

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
