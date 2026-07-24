# Agentic Audit Brief: KyberSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 5 audit(s)
- Eligible audit results: 16 (5 matched; 11 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: KyberSwap (`kyberswap`)
- Website: [https://kyberswap.com](https://kyberswap.com)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, aurora, avalanche, base, berachain, bsc, cronos, ethereum, fantom, hyperliquid, linea, monad, optimism, plasma, polygon, polygon-zkevm, scroll, sonic, unichain, zksync-era
- Contract surface: 1000 unique implementations (1116 raw deployments)
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

**AnyswapV6ERC20** (`0x4518231a8fdf6ac553b9bbd51bbb86825b583263`, chain 10)
Origin: hinkal (`0x4e720d...6f4642`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0e590bb5f02a0c38888bffb45dee050b8fb60bda`, chain 1)
- UnnamedContract (`0x2f577a41bec1be1152aeea12e73b7391d15f655d`, chain 1)
- UnnamedContract (`0xdefa4e8a7bcba345f687a2f1456f5edd9ce97202`, chain 1)
- UnnamedContract (`0xe5e8e834086f1a964f9a089eb6ae11796862e4ce`, chain 1)
- UnnamedContract (`0x0e97c887b61ccd952a53578b04763e7134429e05`, chain 10)
- UnnamedContract (`0x227b0c196ea8db17a665ea6824d972a64202e936`, chain 10)
- UnnamedContract (`0x2f577a41bec1be1152aeea12e73b7391d15f655d`, chain 10)
- UnnamedContract (`0x37334cd06dfecd2e9b3937a6da17853d637a5b94`, chain 10)
- UnnamedContract (`0x6131b5fae19ea4f9d964eac0408e4408b66337b5`, chain 10)
- UnnamedContract (`0x638d935eecd1646991a8b2ce9c2a2b7b840ccabb`, chain 10)
- UnnamedContract (`0x91c9d4373b077ef8082f468c7c97f2c499e36f5b`, chain 10)
- UnnamedContract (`0xa16f32442209c6b978431818aa535bcc9ad2863e`, chain 10)
- UnnamedContract (`0xb448ec505c924944ca8b2c55ef05c299ee0781df`, chain 10)
- UnnamedContract (`0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c`, chain 10)
- UnnamedContract (`0x0e97c887b61ccd952a53578b04763e7134429e05`, chain 56)
- UnnamedContract (`0x227b0c196ea8db17a665ea6824d972a64202e936`, chain 56)
- UnnamedContract (`0x2f577a41bec1be1152aeea12e73b7391d15f655d`, chain 56)
- UnnamedContract (`0x37334cd06dfecd2e9b3937a6da17853d637a5b94`, chain 56)
- UnnamedContract (`0x4440854b2d02c57a0dc5c58b7a884562d875c0c4`, chain 56)
- UnnamedContract (`0x6131b5fae19ea4f9d964eac0408e4408b66337b5`, chain 56)
- UnnamedContract (`0x638d935eecd1646991a8b2ce9c2a2b7b840ccabb`, chain 56)
- UnnamedContract (`0x91c9d4373b077ef8082f468c7c97f2c499e36f5b`, chain 56)
- UnnamedContract (`0x9ed9afb6b4cafbdfb2d833b0e70845997300f6b9`, chain 56)
- UnnamedContract (`0xa16f32442209c6b978431818aa535bcc9ad2863e`, chain 56)
- UnnamedContract (`0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c`, chain 56)
- UnnamedContract (`0xeae300ac9409b2072697ca1d5fd137f8bb286f9c`, chain 56)
- UnnamedContract (`0x2f577a41bec1be1152aeea12e73b7391d15f655d`, chain 130)
- UnnamedContract (`0x37334cd06dfecd2e9b3937a6da17853d637a5b94`, chain 130)
- UnnamedContract (`0x6131b5fae19ea4f9d964eac0408e4408b66337b5`, chain 130)
- UnnamedContract (`0x9ed9afb6b4cafbdfb2d833b0e70845997300f6b9`, chain 130)
- UnnamedContract (`0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c`, chain 130)
- UnnamedContract (`0xeae300ac9409b2072697ca1d5fd137f8bb286f9c`, chain 130)
- UnnamedContract (`0x0e97c887b61ccd952a53578b04763e7134429e05`, chain 137)
- UnnamedContract (`0x227b0c196ea8db17a665ea6824d972a64202e936`, chain 137)
- UnnamedContract (`0x2f577a41bec1be1152aeea12e73b7391d15f655d`, chain 137)
- UnnamedContract (`0x37334cd06dfecd2e9b3937a6da17853d637a5b94`, chain 137)
- UnnamedContract (`0x6131b5fae19ea4f9d964eac0408e4408b66337b5`, chain 137)
- UnnamedContract (`0x638d935eecd1646991a8b2ce9c2a2b7b840ccabb`, chain 137)
- UnnamedContract (`0x91c9d4373b077ef8082f468c7c97f2c499e36f5b`, chain 137)
- UnnamedContract (`0xa16f32442209c6b978431818aa535bcc9ad2863e`, chain 137)
- UnnamedContract (`0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c`, chain 137)
- UnnamedContract (`0x4445520306c9c70952bdfec28f3989f53d9f80c4`, chain 143)
- UnnamedContract (`0x9ed9afb6b4cafbdfb2d833b0e70845997300f6b9`, chain 143)
- UnnamedContract (`0xeae300ac9409b2072697ca1d5fd137f8bb286f9c`, chain 143)
- UnnamedContract (`0x0e97c887b61ccd952a53578b04763e7134429e05`, chain 146)
- UnnamedContract (`0x2f577a41bec1be1152aeea12e73b7391d15f655d`, chain 146)
- UnnamedContract (`0x37334cd06dfecd2e9b3937a6da17853d637a5b94`, chain 146)
- UnnamedContract (`0x6131b5fae19ea4f9d964eac0408e4408b66337b5`, chain 146)
- UnnamedContract (`0xa16f32442209c6b978431818aa535bcc9ad2863e`, chain 146)
- UnnamedContract (`0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c`, chain 146)
- UnnamedContract (`0x91c9d4373b077ef8082f468c7c97f2c499e36f5b`, chain 250)
- UnnamedContract (`0x6ee46cb7cd2f15ee1ec9534cf29a5b51c83283e6`, chain 324)
- UnnamedContract (`0x2f577a41bec1be1152aeea12e73b7391d15f655d`, chain 999)
- UnnamedContract (`0x37334cd06dfecd2e9b3937a6da17853d637a5b94`, chain 999)
- UnnamedContract (`0x6131b5fae19ea4f9d964eac0408e4408b66337b5`, chain 999)
- UnnamedContract (`0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c`, chain 999)
- UnnamedContract (`0x0e97c887b61ccd952a53578b04763e7134429e05`, chain 8453)
- UnnamedContract (`0x2f577a41bec1be1152aeea12e73b7391d15f655d`, chain 8453)
- UnnamedContract (`0x37334cd06dfecd2e9b3937a6da17853d637a5b94`, chain 8453)
- UnnamedContract (`0x4440854b2d02c57a0dc5c58b7a884562d875c0c4`, chain 8453)
- UnnamedContract (`0x6131b5fae19ea4f9d964eac0408e4408b66337b5`, chain 8453)
- UnnamedContract (`0x635dffee858a9f941d058401b393fcfab41d7841`, chain 8453)
- UnnamedContract (`0x638d935eecd1646991a8b2ce9c2a2b7b840ccabb`, chain 8453)
- UnnamedContract (`0x72473de0b52d079ca21709ea67085757c3bb1851`, chain 8453)
- UnnamedContract (`0x9ed9afb6b4cafbdfb2d833b0e70845997300f6b9`, chain 8453)
- UnnamedContract (`0xa16f32442209c6b978431818aa535bcc9ad2863e`, chain 8453)
- UnnamedContract (`0xaee04d31696d14bce773db6d1acec3398ee09974`, chain 8453)
- UnnamedContract (`0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c`, chain 8453)
- UnnamedContract (`0xeae300ac9409b2072697ca1d5fd137f8bb286f9c`, chain 8453)
- UnnamedContract (`0xf67476e5d3fa43e0470f8f1d3c43bf202dc50eec`, chain 8453)
- UnnamedContract (`0x2f577a41bec1be1152aeea12e73b7391d15f655d`, chain 9745)
- UnnamedContract (`0x37334cd06dfecd2e9b3937a6da17853d637a5b94`, chain 9745)
- UnnamedContract (`0x6131b5fae19ea4f9d964eac0408e4408b66337b5`, chain 9745)
- UnnamedContract (`0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c`, chain 9745)
- UnnamedContract (`0x0e97c887b61ccd952a53578b04763e7134429e05`, chain 42161)
- UnnamedContract (`0x227b0c196ea8db17a665ea6824d972a64202e936`, chain 42161)
- UnnamedContract (`0x2f577a41bec1be1152aeea12e73b7391d15f655d`, chain 42161)
- UnnamedContract (`0x37334cd06dfecd2e9b3937a6da17853d637a5b94`, chain 42161)
- UnnamedContract (`0x4440854b2d02c57a0dc5c58b7a884562d875c0c4`, chain 42161)
- UnnamedContract (`0x6131b5fae19ea4f9d964eac0408e4408b66337b5`, chain 42161)
- UnnamedContract (`0x638d935eecd1646991a8b2ce9c2a2b7b840ccabb`, chain 42161)
- UnnamedContract (`0x91c9d4373b077ef8082f468c7c97f2c499e36f5b`, chain 42161)
- UnnamedContract (`0x9ed9afb6b4cafbdfb2d833b0e70845997300f6b9`, chain 42161)
- UnnamedContract (`0xa16f32442209c6b978431818aa535bcc9ad2863e`, chain 42161)
- UnnamedContract (`0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c`, chain 42161)
- UnnamedContract (`0xeae300ac9409b2072697ca1d5fd137f8bb286f9c`, chain 42161)
- UnnamedContract (`0x0e97c887b61ccd952a53578b04763e7134429e05`, chain 59144)
- UnnamedContract (`0x2f577a41bec1be1152aeea12e73b7391d15f655d`, chain 59144)
- UnnamedContract (`0x37334cd06dfecd2e9b3937a6da17853d637a5b94`, chain 59144)
- UnnamedContract (`0x6131b5fae19ea4f9d964eac0408e4408b66337b5`, chain 59144)
- UnnamedContract (`0xa16f32442209c6b978431818aa535bcc9ad2863e`, chain 59144)
- UnnamedContract (`0xb448ec505c924944ca8b2c55ef05c299ee0781df`, chain 59144)
- UnnamedContract (`0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c`, chain 59144)
- UnnamedContract (`0x0e97c887b61ccd952a53578b04763e7134429e05`, chain 80094)
- UnnamedContract (`0x2f577a41bec1be1152aeea12e73b7391d15f655d`, chain 80094)
- UnnamedContract (`0x37334cd06dfecd2e9b3937a6da17853d637a5b94`, chain 80094)
- UnnamedContract (`0x6131b5fae19ea4f9d964eac0408e4408b66337b5`, chain 80094)
- UnnamedContract (`0x638d935eecd1646991a8b2ce9c2a2b7b840ccabb`, chain 80094)
- UnnamedContract (`0xa16f32442209c6b978431818aa535bcc9ad2863e`, chain 80094)
- UnnamedContract (`0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c`, chain 80094)
- AnyswapV5ERC20 (`0x39fc9e94caeacb435842fadedecb783589f50f5f`, chain 43114)
- AnyswapV6ERC20 (`0x316772cfec9a3e976fde42c3ba21f5a13aaaff12`, chain 42161)
- BeaconProxy (`0x3b2f62d42db19b30588648bf1c184865d4c3b1d6`, chain 59144)
- BurnableMintableCappedERC20 (`0x46371c90fcce4d7367a61cb43ea7922406bc707a`, chain 137)
- BurnableMintableCappedERC20 (`0xb448ec505c924944ca8b2c55ef05c299ee0781df`, chain 42161)
- ClonableBeaconProxy (`0xe4dddfe67e7164b0fe14e218d80dc4c08edc01cb`, chain 42161)
- DefaultExecutor (`0x41f5d722e6471c338392884088bd03340f50b3b5`, chain 1)
- DefaultExecutor (`0x6758a66cd25fef7767a44895041678fc4ae9afd0`, chain 1)
- DSLOProtocol (`0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c`, chain 1)
- EpochVotingPowerStrategy (`0xfbd73581af42b26295cf4b88b74a5af71f209f8b`, chain 1)
- KatanaFeeHandler (`0x9fb131efbac23b735d7764ab12f9e52cc68401ca`, chain 1)
- KSDistributor (`0xeae300ac9409b2072697ca1d5fd137f8bb286f9c`, chain 1)
- KSRemoveLiquidityPancakeV4CLHook (`0xf67476e5d3fa43e0470f8f1d3c43bf202dc50eec`, chain 56)
- KSRemoveLiquidityUniswapV3Hook (`0x72473de0b52d079ca21709ea67085757c3bb1851`, chain 56)
- KSRemoveLiquidityUniswapV4Hook (`0x635dffee858a9f941d058401b393fcfab41d7841`, chain 56)
- KSSmartIntentRouter (`0xaee04d31696d14bce773db6d1acec3398ee09974`, chain 56)
- KSZapRouterPosition (`0x0e97c887b61ccd952a53578b04763e7134429e05`, chain 1)
- KSZapRouterPositionPermit (`0x638d935eecd1646991a8b2ce9c2a2b7b840ccabb`, chain 1)
- KSZapValidatorV2Part1 (`0xa16f32442209c6b978431818aa535bcc9ad2863e`, chain 1)
- KyberGovernance (`0x7ec8fcc26be7e9e85b57e73083e5fe0550d8a7fe`, chain 1)
- KyberStaking (`0xeadb96f1623176144eba2b24e35325220972b3bd`, chain 1)
- L2StandardERC20 (`0xa00e3a3511aac35ca78530c85007afcd31753819`, chain 10)
- LimitOrderProtocol (`0x227b0c196ea8db17a665ea6824d972a64202e936`, chain 1)
- MetaAggregationRouterV2 (`0x6131b5fae19ea4f9d964eac0408e4408b66337b5`, chain 1)
- MultiSigWalletWithDailyLimit (`0x3eb01b3391ea15ce752d01cf3d3f09dec596f650`, chain 1)
- MultiSigWalletWithDailyLimit (`0x91c9d4373b077ef8082f468c7c97f2c499e36f5b`, chain 1)
- MultiSigWalletWithDailyLimit (`0x91c9d4373b077ef8082f468c7c97f2c499e36f5b`, chain 43114)
- OptimismMintableERC20 (`0x28fe69ff6864c1c218878bdca01482d36b9d57b1`, chain 8453)
- PancakeSwapInfinityKEMHook (`0x44428c6ce391915d51f963c0dd395cd0f95fdfd2`, chain 56)
- RewardPool (`0xd2d0a0557e5b78e29542d440ec968f9253daa2e2`, chain 1)
- RewardsDistributor (`0x5ec0dcf4f6f55f28550c70b854082993fdc0d3b2`, chain 1)
- ScrollStandardERC20 (`0x608ef9a3bffe206b86c3108218003b3cfbf99c84`, chain 534352)
- UChildERC20Proxy (`0x1c954e8fe737f99f68fa1ccda3e51ebdb291948c`, chain 137)
- UniswapV4KEMHook (`0x4440854b2d02c57a0dc5c58b7a884562d875c0c4`, chain 1)
- UniswapV4KEMHook (`0x444139d6b32c1ad0b00f24a616072f74b2f880c4`, chain 130)
- UnnamedContract (`0x1e1085efaa63edfe74aad7c05a28eae4ef917c3f`, chain 250)
- UnnamedContract (`0x6a80a465409ce8d36c513129c0feea61bed579ba`, chain 1101)
- WethUnwrapper (`0x37334cd06dfecd2e9b3937a6da17853d637a5b94`, chain 1)
- WhitelistedCollector (`0x9ed9afb6b4cafbdfb2d833b0e70845997300f6b9`, chain 1)

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
- Outside the address book: 858 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 140 of 1000 unique; 860 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/132
- Verified + Unaudited implementations: 130
- Verified by bytecode match: 0
- Unverified implementations: 868
- Unique implementations: 1000
- Raw deployments: 1116
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
| KSSmartIntentRouter | adapter | project_anchor | own_supporting | 0 | bsc | unit-244693 | `0xaee04d31696d14bce773db6d1acec3398ee09974` | ✅ Audited |
| PancakeSwapInfinityKEMHook | unknown | project_anchor | own_supporting | 0 | bsc | unit-244685 | `0x44428c6ce391915d51f963c0dd395cd0f95fdfd2` | ✅ Audited |

### ⚠️ Verified + Unaudited (130)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x3c002edfe9b02bfab3381adcb0150e87f536a5a7`; ethereum `0x492dc35294c1586cea58748908d10aa1b5e2fbd0`; ethereum `0x525e1f2ee7f83818fe33173df28114e950e2dccd`; ethereum `0x64e988ae0735c948d1269f87981c619ed5cf72e3`; ethereum `0x8f9685a3283c85c61d34fedc5dec8ad4d52e4b05`; ethereum `0x971d89834a0e2d80d7f6eb344330553ea14e2a95`; ethereum `0x97f3ad6a1f38bf1ed670ff1b4e598e8a18fe0652`; ethereum `0xac488e685b0ae1d5e5d0aa3dec767240bfaa4746`; ethereum `0xbb108aa128d5d6e428c29dbc0b348787c438f92b`; ethereum `0xd59a8d6ae866fd8424fa1e61e98e7e31fd5905d5`; ethereum `0xe06b12ae553b23f60f2460d177f74399d6fcd62a`; ethereum `0xf33120758e35b10170f6f514be4c079d42d7af9f` | ⚠️ Unaudited |
| AddressValidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x41de7cd753990f8e146c7e13790a6f942b49bb6e`; ethereum `0x42af5f733e8ece22063fd516a5f1b246d6923ec0`; ethereum `0xbd0e699fe087acc63d1f04753168c92d81a94bcc`; ethereum `0xc57ef7aaaea37c3031ce1b9b11a77e273e6a60b1`; ethereum `0xcf04d39b9705fdf1dfbee2dbe6c04ac0718ea9da`; ethereum `0xdf5985e2e95028d413ec6fd63dec44d9a4573b50`; ethereum `0xedfcf7230a44af1e20947f20dc63619c90c23520` | ⚠️ Unaudited |
| AggregationRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf1a1b60f2d438842916c0adc43748768353ec25` | ⚠️ Unaudited |
| AllowanceSheet | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x811c5f8dfbdd70c245e66e4cd181040b2630424a` | ⚠️ Unaudited |
| AntiSnipAttackPositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2b1c7b41f6a8f2b2bc45c3233a5d5fb3cd6dc9a8` | ⚠️ Unaudited |
| AntiSnipAttackPositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2b1c7b41f6a8f2b2bc45c3233a5d5fb3cd6dc9a8` | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | project_anchor | own_supporting | 0 | avalanche | unit-244676 | `0x39fc9e94caeacb435842fadedecb783589f50f5f` | ⚠️ Unaudited |
| AnyswapV6ERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-244623 | `0x4518231a8fdf6ac553b9bbd51bbb86825b583263` | ⚠️ Unaudited |
| AnyswapV6ERC20 | token | project_anchor | own_supporting | 0 | arbitrum | unit-244664 | `0x316772cfec9a3e976fde42c3ba21f5a13aaaff12` | ⚠️ Unaudited |
| BalanceSheet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dea55ba04a37fddd05e1fd979c30aa0e634e837` | ⚠️ Unaudited |
| BCdpManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x22d3fbe3afd0ffe8db1306eb857a2a8b21f051ae`; ethereum `0x3320f0a2f18a5177dd53a46c59ad8145d9f7e147`; ethereum `0x3f30c2381cd8b917dd96eb2f1a4f96d91324bbed` | ⚠️ Unaudited |
| BCdpScore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46dfdffe7592eb565e702c4f8fc631065b2344cf` | ⚠️ Unaudited |
| BEP20TokenImplementation | token | external_dependency_or_infra | third_party_dependency (excluded) | 1 | bsc | unit-244736 | `0xfe56d5892bdffc7bf58f2e84be1b2c32d21c308b` | ⚠️ Unaudited |
| BlackFriday | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20f7cf5900d0e82ab0f7fe2b6a87c3355035a7e6` | ⚠️ Unaudited |
| BProxyActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x351626387b5bb5408f97f8fd6b2ec415efc9e6a1`; ethereum `0x4bcad4920be1ca53f27656db49d31b23f9725ab0` | ⚠️ Unaudited |
| BridgedToken | operational_periphery | project_anchor | own_supporting | 1 | linea | unit-244737 | `0x3b2f62d42db19b30588648bf1c184865d4c3b1d6` | ⚠️ Unaudited |
| BTVL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60312e01a2acd1dac68838c949c1d20c609b20cf` | ⚠️ Unaudited |
| BudConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2325aa20deaa9770a978f1dc7c073589ffc79dc3`; ethereum `0x47f935ac93b785294d9a24503aa633112ecb2553`; ethereum `0x78a049d2fde5eff789555a11e9e8a2c60b0cac6d` | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | token | project_anchor | own_supporting | 0 | polygon | unit-244643 | `0x46371c90fcce4d7367a61cb43ea7922406bc707a` | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | token | project_anchor | own_supporting | 0 | arbitrum | unit-244673 | `0xb448ec505c924944ca8b2c55ef05c299ee0781df` | ⚠️ Unaudited |
| ChainLogConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb043ffb54442e9fbdd720e666fb7292b654a31b` | ⚠️ Unaudited |
| ConversionRateEnhancedSteps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35ed7969327334d8eef6ac16a61af2769b02f8eb` | ⚠️ Unaudited |
| ConversionRates | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x798abda6cc246d0edba912092a2a3dbd3d11191b` | ⚠️ Unaudited |
| Dai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b175474e89094c44da98b954eedeac495271d0f` | ⚠️ Unaudited |
| DefaultExecutor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244590 | `0x41f5d722e6471c338392884088bd03340f50b3b5` | ⚠️ Unaudited |
| DefaultExecutor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244595 | `0x6758a66cd25fef7767a44895041678fc4ae9afd0` | ⚠️ Unaudited |
| DMMFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x833e4083b7ae46cea85695c4f7ed25cdad8886de` | ⚠️ Unaudited |
| DMMRouter02 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1c87257f5e8609940bc751a07bb085bb7f8cdbe6`; bsc `0x78df70615ffc8066cc0887917f2cd72092c86409`; polygon `0x546c79662e028b661dfb4767664d0273184e4dd1`; avalanche `0x8efa5a9ad6d594cf76830267077b78ce0bc5a5f8` | ⚠️ Unaudited |
| DSLOProtocol | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244608 | `0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c` | ⚠️ Unaudited |
| DutchReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x3d45755ee30dd38ff5d3cc01e8ae6bea0bae3958`; ethereum `0x6253025e2d4c2e89915844ef9854eb7498f497db`; ethereum `0x7c6fc9d2cfa523f517a7958ceac9ff835286ae50`; ethereum `0x918308caf3239d4fdc846aca3a670076545d1b37`; ethereum `0xa45f9b0f82e4e08506eafa8081515b67f546ca1d`; ethereum `0xa58c6d029f0ee738c653ea6cca5417ce5532ea1a`; ethereum `0xb173dd805ededf5d833cfe832eab2a609ad2431e` | ⚠️ Unaudited |
| EpochVotingPowerStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-244617 | `0xfbd73581af42b26295cf4b88b74a5af71f209f8b` | ⚠️ Unaudited |
| ExpectedRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x543f2592b1c478837b5ee2013ed26c7fe04a8c7e`; ethereum `0xf40c50a36a709c55b76d4056964a11685676f2e4` | ⚠️ Unaudited |
| Experiment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e80b3cd3ebe427dcafa230fc6064eac10062472` | ⚠️ Unaudited |
| Exponent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x29c24aad19750753289e414053546f54dff08332`; ethereum `0x5156434ab527b4f1903512b90035eb928be44a8d`; ethereum `0x89f58d968175e2f7460dd88f32b4562606e4d54b`; ethereum `0xf79a20bfaff3b0d57d390db24f918f427370997c` | ⚠️ Unaudited |
| Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5f1dddbf348ac2fbe22a163e30f99f9ece3dd50a`; ethereum `0xc7a590291e07b9fe9e64b86c58fd8fc764308c4a` | ⚠️ Unaudited |
| FeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4e89bc8484b2c454f2f7b25b612b648c45e14a8e`; ethereum `0xed4f53268bfdff39b36e8786247ba3a02cf34b04` | ⚠️ Unaudited |
| FeeBurnerResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb79323ada11af9d7869d0d5563e561bd609c669` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| FireBirdFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59a16ece7143459801c3b3f24dc8a0cdfb956571` | ⚠️ Unaudited |
| FireBirdFormula | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9249f4d7e84b206d010bc90211a11fda57785b4` | ⚠️ Unaudited |
| FixedSupplyToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3d3b4858cbc9fcb61abdac44da82c5c3306f61d1`; ethereum `0x6132dbb79f570326485f3ac77628227ab8fbb381`; ethereum `0x71168ca1d778128dff21d799ba931d9dfd48f8a2` | ⚠️ Unaudited |
| GetDecimals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7bfd2c0b917c1154aa3af1e85e1632f038950fd5`; ethereum `0xb4acba572fd7e69955dabb1ba4bfff89931fb0b6`; ethereum `0xfa1ba4ee3163b97f78307516d77ce28daac99d2d` | ⚠️ Unaudited |
| GovernanceExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7b57a69be7e326129a1f671be9cd03f69d2301ad`; ethereum `0x81c4b9b35ec847151af8c81856e434b6a8c4ac68` | ⚠️ Unaudited |
| Jar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3c36ccf03dab88c1b1ac1eb9c3fb5db0b6763cff`; ethereum `0xbde0bac85116148d7cf515c949f3cd1bf6a2e6c1`; ethereum `0xdb89a7750472b1c2d5668385ef62e15898c1d50f` | ⚠️ Unaudited |
| JarConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2cd6eaf23f73bc4f359b69711fb34728c599c34c`; ethereum `0xf10bb2ca172249c715e4f9ee7776b2c8c31aaa69` | ⚠️ Unaudited |
| KatanaFeeHandler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244604 | `0x9fb131efbac23b735d7764ab12f9e52cc68401ca` | ⚠️ Unaudited |
| KSDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-244615 | `0xeae300ac9409b2072697ca1d5fd137f8bb286f9c` | ⚠️ Unaudited |
| KSElasticLMHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x35be3f4fd8239a35a7f120756d4d69e5c5e10870`; ethereum `0x6afeb9edd6cf44fa8e89b1eee28284e6dd7705c8` | ⚠️ Unaudited |
| KSElasticLMV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3d6afe2fb73ffed2e3dd00c501a174554e147a43`; ethereum `0xa70a1ad0f91c52c79e177c5a18a7c9e1c4360e0e`; ethereum `0xf2bcdf38baa52f6b0c1db5b025dfff01ae1d6dbd` | ⚠️ Unaudited |
| KSRemoveLiquidityPancakeV4CLHook | unknown | project_anchor | own_supporting | 0 | bsc | unit-244696 | `0xf67476e5d3fa43e0470f8f1d3c43bf202dc50eec` | ⚠️ Unaudited |
| KSRemoveLiquidityUniswapV3Hook | unknown | project_anchor | own_supporting | 0 | bsc | unit-244689 | `0x72473de0b52d079ca21709ea67085757c3bb1851` | ⚠️ Unaudited |
| KSRemoveLiquidityUniswapV4Hook | unknown | project_anchor | own_supporting | 0 | bsc | unit-244687 | `0x635dffee858a9f941d058401b393fcfab41d7841` | ⚠️ Unaudited |
| KSZapRouterPosition | adapter | project_anchor | own_supporting | 0 | ethereum | unit-244581 | `0x0e97c887b61ccd952a53578b04763e7134429e05` | ⚠️ Unaudited |
| KSZapRouterPositionPermit | adapter | project_anchor | own_supporting | 0 | ethereum | unit-244594 | `0x638d935eecd1646991a8b2ce9c2a2b7b840ccabb` | ⚠️ Unaudited |
| KSZapValidator | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x942412fe06290651ed1438b0cf454339cb4f1f26` | ⚠️ Unaudited |
| KSZapValidatorV2Part1 | adapter | project_anchor | own_supporting | 0 | ethereum | unit-244605 | `0xa16f32442209c6b978431818aa535bcc9ad2863e` | ⚠️ Unaudited |
| KyberBancorReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb020636f8e30cb8c35a863412503cfd5e3d6d6ce`; ethereum `0xba92981e049a79de1b79c2396d48063e02f47239` | ⚠️ Unaudited |
| KyberDao | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x39e507f4f7c3e85ed799fdbdf04e42104a8f6b9a`; ethereum `0x49bdd8854481005bba4acebabf6e06cd5f6312e9` | ⚠️ Unaudited |
| KyberFeeHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xa943b542d1d5683d3454bd0d7ee86c48f36ecfd5`; ethereum `0xd3d2b5643e506c6d9b7099e9116d7aaa941114fe`; ethereum `0xec30037c9a8a6a3f42734c30dfa0a208af71b40c` | ⚠️ Unaudited |
| KyberGovernance | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244601 | `0x7ec8fcc26be7e9e85b57e73083e5fe0550d8a7fe` | ⚠️ Unaudited |
| KyberHistory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x26a9ecbeca589aa575a9806f0555df0382940ba3`; ethereum `0x27686499dc0b248641f50774272667726b094e6d`; ethereum `0x9b53d7bb657f5f14a7f73c2d2b90cc084cae1fe4`; ethereum `0xab5dfd0d7aef71942172f593f080180132ed2715`; ethereum `0xb222bc4e4ffcb39e392c93af9b480019b59f4cc2`; ethereum `0xe233855f0dde2045f3cf204e581869f8e377423c`; ethereum `0xe938445b6a3e8c97c86f0a8777254172480b7ffe`; ethereum `0xf2bcfcf8892c7279b2743e2fef1893ac622eb38a` | ⚠️ Unaudited |
| KyberMatchingEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9cf739155941a3a7964e711543a8bc902613ff17`; ethereum `0xa1c0fa73c39cfbcc11ec9eb1afc665aba9996e2c` | ⚠️ Unaudited |
| KyberNetwork | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x7c66550c9c730b6fdd4c03bc2e73c5462c5f7acc`; ethereum `0x91a502c678605fbce581eae053319747482276b9`; ethereum `0x964f35fae36d75b1e72770e244f6595b68508cf5`; ethereum `0x9cb7bb6d4795a281860b9bfb7b1441361cc9a794` | ⚠️ Unaudited |
| KyberNetworkCrystal | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-244610 | `0xdd974d5c2e2928dea5f71b9825b8b646686bd200` | ⚠️ Unaudited |
| KyberNetworkProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x818e6fecd516ecc3849daf6845e3ec868087b755`; ethereum `0x9aab3f75489902f3a48495025729a0af77d4b11e`; ethereum `0xc153eead19e0dbbdb3462dcc2b703cc6d738a37c` | ⚠️ Unaudited |
| KyberReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x63825c174ab367968ec60f061753d3bbd36a0d8f`; ethereum `0x91be8fa21dc21cff073e07bae365669e154d6ee1`; ethereum `0xcf76b605484cd4bd46237c05b7de98d538ff44ae` | ⚠️ Unaudited |
| KyberStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244614 | `0xeadb96f1623176144eba2b24e35325220972b3bd` | ⚠️ Unaudited |
| KyberStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecf0bdb7b3f349abfd68c3563678124c5e8aaea3` | ⚠️ Unaudited |
| KyberStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb18d90be9add2a6c9f2c3943b264c3dc86e30cf5`; ethereum `0xc8fb12402cb16970f3c5f4b48ff68eb9d1289301` | ⚠️ Unaudited |
| KyberSwapElasticLM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7d5ba536ab244aaa1ea42ab88428847f25e3e676`; ethereum `0xb85ebe2e4ea27526f817ff33fb55fb240057c03f` | ⚠️ Unaudited |
| L2StandardERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-244627 | `0xa00e3a3511aac35ca78530c85007afcd31753819` | ⚠️ Unaudited |
| LimitOrderProtocol | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244584 | `0x227b0c196ea8db17a665ea6824d972a64202e936` | ⚠️ Unaudited |
| LiquidatorBalanceInfo | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0c02c4edc6b27fbec7ec57e2eac4e3445655ebe` | ⚠️ Unaudited |
| LiquidatorInfo | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5fd74c9eb05a11c148297d83febd8b4862a1064d`; ethereum `0x720a2bdae0bd4dfc3cc5bd0bc1148d42685ad9fd`; ethereum `0xbe02c549625c397f1c6da95a97168572ea8ce884` | ⚠️ Unaudited |
| LiquidityConversionRates | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x40d085f077dd248d7f3c534947d59eb9c4601763`; ethereum `0x97d7126b6ff7c4d95601912f4cdf790a3cd1edab` | ⚠️ Unaudited |
| LiquidityMigrator | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa650f16f41ca35bf21594eef706290d26b12ff2e` | ⚠️ Unaudited |
| LiquidityMigrator2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a65e062ce8290007301296f3c6ae446af7bdeec` | ⚠️ Unaudited |
| MetaAggregationRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2b938f00a8a32a1295983711f007ffae33d035cf`; ethereum `0x617dee16b86534a5d792a4d7a62fb491b544111e` | ⚠️ Unaudited |
| MetaAggregationRouterV2 | adapter | project_anchor | own_supporting | 0 | ethereum | unit-244593 | `0x6131b5fae19ea4f9d964eac0408e4408b66337b5` | ⚠️ Unaudited |
| Migrate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9eacb93cb65f8ad428e270690653b156e1bd0a49`; ethereum `0xa30b9677a14ed10eceb6ba87af73a27f51a17c89`; ethereum `0xf4062d5244aa3a1e664532337c276ea9dc7ed0ca` | ⚠️ Unaudited |
| Multicall | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: bsc `0xcf591ce5574258ac4550d96c545e4f3fd49a74ec`; polygon `0x878dfe971d44e9122048308301f540910bbd934c` | ⚠️ Unaudited |
| Multicall2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ba1e12693dc8f9c48aad8770482f4739beed696` | ⚠️ Unaudited |
| MultipleEpochRewardsClaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x301c790e31663112fdd7267b711353b470421e62`; ethereum `0xfa68d9f61326223c7651fbd2011221ff561098fa` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | governance | project_anchor | own_supporting | 0 | ethereum | unit-244589 | `0x3eb01b3391ea15ce752d01cf3d3f09dec596f650` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x4dbbbfb0e68be9d8f5a377a4654604a62e851e80`; ethereum `0x76c594e7057f9ec2c19452265eb1dd90ae8274ba`; ethereum `0x7ba651de9b7186f6f9665cf5cc0f19e491db3538`; ethereum `0xb7d931f1205350903e40228557aa7e5a09b7862c`; ethereum `0xd69d7a1031e6e63a162414f9a77278757690c30e`; ethereum `0xe6a7338cba0a1070adfb22c07115299605454713`; avalanche `0xd69d7a1031e6e63a162414f9a77278757690c30e` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | governance | project_anchor | own_supporting | 0 | ethereum | unit-244602 | `0x91c9d4373b077ef8082f468c7c97f2c499e36f5b` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | governance | project_anchor | own_supporting | 0 | avalanche | unit-244677 | `0x91c9d4373b077ef8082f468c7c97f2c499e36f5b` | ⚠️ Unaudited |
| NamableAddressList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x844de59c9a8d428283923fb752002fafe2aa694a`; ethereum `0x9f59b4f7d3bd00caa85e61c57761768291155084`; ethereum `0xf2ec422d6eeb805eff207b1e358947cbd73b129d`; ethereum `0xf5de41317a8fde99108e2fa2d26822bebad1427e` | ⚠️ Unaudited |
| NoSwappingLiquidationStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8694103ed4927d389f63213619708e550e9631d7` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | base | unit-244712 | `0x28fe69ff6864c1c218878bdca01482d36b9d57b1` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3add75647681d3ba7a4ecfabf75d393936186a2c`; ethereum `0x84ff9784aca79629db8a80527ecbc53af34faf23`; ethereum `0x912d1953d0da41bd82de5c5b68a5ac1b94362d4c`; ethereum `0xba791e7313a3a0ba6fe3a0335f5102b2f60aa47f` | ⚠️ Unaudited |
| PoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x000000000004444c5dc75cb358380d2e3de08a90`; unichain `0x1f98400000000000000000000000000000000004`; base `0x498581ff718922c3f8e6a244956af099b2652b2b`; arbitrum `0x360e68faccca8ca495c1b759fd9eee466db9fb32` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x500180a94cb854e98770872af4e4bb1dd67af559` | ⚠️ Unaudited |
| ProxyERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57ab1ec28d129707052df4df418d58a2d46d5f51` | ⚠️ Unaudited |
| PToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5228a22e72ccc52d415ecfd199f99d0665e7733b` | ⚠️ Unaudited |
| PTToDaiConversionRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3b755a375921c248250b03e0afffee779c8b9f75`; ethereum `0x7c3f1c43ed55847f6ca8dd660c85ff0c10be8c17` | ⚠️ Unaudited |
| QuoterV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d47fd5a29904dae0ef51b1c450c9750f15d7856` | ⚠️ Unaudited |
| RewardPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-244609 | `0xd2d0a0557e5b78e29542d440ec968f9253daa2e2` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-244592 | `0x5ec0dcf4f6f55f28550c70b854082993fdc0d3b2` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc1e7dfe73e1598e3910ef4c7845b68a9ab6f4c83`; ethereum `0xf9c2b5746c946ef883ab2660bbbb1f10a5bdeab4` | ⚠️ Unaudited |
| SafeChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2686ad73b7e09269672a2c3368883b4f271e4bc5` | ⚠️ Unaudited |
| ScrollStandardERC20 | token | project_anchor | own_supporting | 0 | scroll | unit-244678 | `0x608ef9a3bffe206b86c3108218003b3cfbf99c84` | ⚠️ Unaudited |
| SetStepFunctionWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c63a12717ad0b87984ecbb3c97fff0e8edb7b66` | ⚠️ Unaudited |
| SimpleCall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0b538f6aed436643c0b885924ae7a5fea6f5ad4` | ⚠️ Unaudited |
| StablyFiatToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4bdb11dc0a2bec88d24a3aa1e6bb17201112ebe` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-244735 | `0xe4dddfe67e7164b0fe14e218d80dc4c08edc01cb` | ⚠️ Unaudited |
| TarynToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bb301e545a3e948b20ea9a0f02d3948af6fe6db` | ⚠️ Unaudited |
| TetherToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ⚠️ Unaudited |
| TicksFeesReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x8fd8cb948965d9305999d767a02bf79833eadbb3`; ethereum `0xd7ab1699280980e756c446769b4c0f04550f88c9`; ethereum `0xdc4382353a007fcefadf0609920c256173f7d210` | ⚠️ Unaudited |
| TimeLockedController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x9978d2d229a69b3aef93420d132ab22b44e3578f`; ethereum `0x9bcf577ef4fad5a7bef7f636cd80373cac91fbb8`; ethereum `0xb8e63ef835b54fcd60282271212c75a32adb615c`; ethereum `0xcf9a1a3a30d859ab8964e6db596a8d2edd449c0b`; ethereum `0xd9a2fce62e8a6d45b20b906aa2fb2de3f607c88a`; ethereum `0xe8ae472e4e8d769a7697ecd20c878098fccb8c96` | ⚠️ Unaudited |
| TrueUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x2424cb26cee4943fa58d05c392273f34b6980960`; ethereum `0x8dd5fbce2f6a956c3022ba3663759011dd51e73e`; ethereum `0x97daf1d9de5c97e41e5ca36eb08db187f7e8459b`; ethereum `0xb7b48940e0dc3c520a80c75b84dc77553666d5ae`; ethereum `0xc0669bf85e7ad94258dd4c7aa55c800b7bf701c7`; ethereum `0xc9fffd34cd7f376b51e2698ecc9a0b48dd09d3d3`; ethereum `0xde5de899b79417a170172a7d1b120af4ff4896bd`; ethereum `0xecc131ebb9db7aae68b8056d137ebf6299a05e48` | ⚠️ Unaudited |
| UChildERC20 | token | project_anchor | own_supporting | 1 | polygon | unit-244734 | `0x1c954e8fe737f99f68fa1ccda3e51ebdb291948c` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf49c43ae0faf37217bdcb00df478cf793edd6687` | ⚠️ Unaudited |
| UniswapV4KEMHook | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244591 | `0x4440854b2d02c57a0dc5c58b7a884562d875c0c4` | ⚠️ Unaudited |
| UniswapV4KEMHook | unknown | project_anchor | own_supporting | 0 | unichain | unit-244634 | `0x444139d6b32c1ad0b00f24a616072f74b2f880c4` | ⚠️ Unaudited |
| UserInfo | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x468960199c8045dedcf6aeb33e28dc57346ad3ff`; ethereum `0x791678c01f00c989c7bc32081ba79196751ddfb1` | ⚠️ Unaudited |
| Utils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6fc61357f00b7735e5a75156522def9cfb20ee02`; ethereum `0xaec7fa67e32f9ac53ce0684f508510324c018dcc` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49c4f9bc14884f6210f28342ced592a633801a8b` | ⚠️ Unaudited |
| WAVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7` | ⚠️ Unaudited |
| WBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c` | ⚠️ Unaudited |
| WBTC | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ⚠️ Unaudited |
| WETH9 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ⚠️ Unaudited |
| WethUnwrapper | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27a15e7a67fb812a8bd3b4969397fb2de7318a8d` | ⚠️ Unaudited |
| WethUnwrapper | token | project_anchor | own_supporting | 0 | ethereum | unit-244587 | `0x37334cd06dfecd2e9b3937a6da17853d637a5b94` | ⚠️ Unaudited |
| WhiteList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e106a75d369d09a9ea1dcc16da844792aa669a3` | ⚠️ Unaudited |
| WhitelistedCollector | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244603 | `0x9ed9afb6b4cafbdfb2d833b0e70845997300f6b9` | ⚠️ Unaudited |
| WMATIC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270` | ⚠️ Unaudited |
| WrapConversionRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb6857da49a5544a37c5c350a40c3c9cc8e9aed1` | ⚠️ Unaudited |
| Wrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8f1a369ee7916491e43e412b0dcc7717e2fcb608`; ethereum `0xb6a1c0a18f82ff497d10ea1d1ac3804417e382b2` | ⚠️ Unaudited |
| ZapIn | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61a6cb01c70db83b74db3c02bbfda9f025ba4870` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (868)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00555513acf282b42882420e5e5ba87b44d8fa6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0226cf96ea07d1c8c7992224402fd9a05059f91a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x041adc20336caa2d0560e6106ac26b51fb68f011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x049beffdb026d6d1d64cfc8fe29bd12142967b09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x072fe0337723197db430b11310b336ee12b72331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07aaba55213bfe46ec3e7df61e7c3081154c48a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0866eda11828385c2e2135c4db0e0d535f866434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x093a03af7745829a22d2c4d0aae074de853b1c79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x094c875704c14783049ddf8136e298b3a099c446` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09677d0175dec51e2215426cddd055a71bf4228d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09908cfe36e3941cbfa0c2b6fac623f523dff9fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ad1af0c5d0bebb17fe7039c8feb949bba62fbf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ae823c44b3485918b359329f9f77925c1478082` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc32a86f259f62b0893824055fba679fbc8df1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c5acea6a74dce0af9fcd9e43ce505a08cb6a8ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d125c15d54ca1f8a813c74a81aee34ebb508c1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0da3e21c3a6b48ff696d45c73b62c54b3e0b1171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e42720470e05747ce79e64889734bf98a17185c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e4413d68ed11b800a1a0af89b090191af001820` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244580 | `0x0e590bb5f02a0c38888bffb45dee050b8fb60bda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f552571e679c1698ec48b13b0316bb87d9be456` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1004c58415b7ffbc02ed08b7f7cd980bfdf1ead1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10f1194c3858c864de23d18af0bada35144ce691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1141c1d9dbee4382d00be87137d3d630e4055016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11b4aff6410ec62c5f50eb47c45cc5d6298832b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12530f9448a8c40d58c34fd62fa3d74991a9cba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12807818b584a3fa65d38b6c25b13983fe888d6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x132af8c63c2df58fcf3db95c6374feef40dd3582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1389484b1e49f6c3033f41c9b376a23d5daa8ba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x165c68077ac06c83800d19200e6e2b08d02de75d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16daaa2d0a34dfe023060af108e58fc2152f774e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18008a3d4de136e090d0a71cb1de601fc8246225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x180555d4d45e67520adc7c0c51b512c7a50877f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1982131c7d6959ff7768ee39c023ad002d8c9759` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bfce8a46e0e26652fff4da26c8511c946a292a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c758af0688502e49140230f6b0ebd376d429be5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d5702c6d7eb30e42a8c94b8db7ea2e8444a37fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7649ed35d7d16247cca81f43cef93146dbfebb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f3b218869e2ce02671d64298a19589341cc90d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f84c27253c7de5f5a55c922d0d399d17ca307b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f893e6d4f6b0c4fb55858912ca3333363c51271` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f97df8d9df85e7b5469f385dfe2c940bfc793dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fc3607fa67b58deddb0faf7a116f417a20c551c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ff27a38c2df7d1669c793d6df7354e0e697dc0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2664bf3b37357f26807f24c6b09a7b42d1d3266e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2722e91b94b9f62e8a6212b933da78070e102022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x276e31882ad6c784858cde5770b21ee09d79b744` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29515ba47eb60629865c82893370043aa25e844d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2951d60add14ddc5816d2d943f1febdda47d13c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29e7d0c82f885b0412cdc8d431e805e26c80c3c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a8e79058331eede334c21cae915852f8c25d4ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ab0ee99025203fefc8c3b3dc78b6709b8b678cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2abe8750e4a65584d7452316356128c936273e0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244586 | `0x2f577a41bec1be1152aeea12e73b7391d15f655d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f93314be2aec33b9ff037c56bfd52632748af55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fd5e52bfd71d4cadbf7811b46fde3d5f476eaf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x309219a257e0d214e756a47a92847a67f12076d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32d4e0d4b254e6b35d35ee34f6fdcffc1f569f78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34e6df46a42a42174d8cf5cc02e4cf21ed318085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35e19ed9c203b4cd84b94a6771a58f61ee752dfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3671e4768c6d589ce0b8c3a90376c23d2a562f50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36b7ec39889cc0292a6ed8314b637ab50ee70047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3732fb6e7656f92069d0922c9ff8f34eb67575b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37a6b17b14e52cf68bbb71631beb8fc74ed85f96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x386b28dda71d2895a4704a7a260eba552e9c74f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38cb5f51fd1e092ca9e81d4ee8f09b4794b19282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aac1195a1edd7f185a95d42bc0948a4bef9dbee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b36eb0a3ab42fe4a78e1a71773cc70291009f36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c4176f37f4c285dd18e769605935f39a0d0c2c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c476a92554ffa21547296122b086ba8954014a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3dc912bbefd05459e8264c47655195c919e19f6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640574aa764763291ed733672d3a105107ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41684b361557e9282e0373ca51260d9331e518c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x422e125ce3c197ff4ae98893ebaa56672cc87b4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4445520306c9c70952bdfec28f3989f53d9f80c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45705b540d8150f2b16c6ec9fca3f138ac4aaae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46c6160b1fe935bc3e722ff5dc26c0a726cf4a4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49cf2aefee9557220a86adda86259b9cc7895a0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49df8a5c87f00a0569fdd6f8c6b4b3734824f8ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bef1703a8e73ffed63fa94b22b78209c1d96282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e2bda1904eeefbaa1152439acdd4d2fe6e00874` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fe5b965e3bd76eff36280471030ef9b0e6e2c1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50950d232731c7f1ecb4b5a121e03f7a46adfbb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x520648ccb35b67554b0d66a24b1b110d0c96a38b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5301b677678e0408872cc7eb3fb8406dc669b374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x533e6d1ffa2b96cf9c157475c76c38d1b13bc584` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5370d78091b00dc9d32f205a3d08449b85207224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x555b6ee8fab3dfdbcca9121721c435fd4c7a1fd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55e8bef09624d60793181a125e07f040b4bcacbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5649b4dd00780e99bab7abb4a3d581ea1aeb23d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5661452c7e39bb5f79e11db46e4f024a594bce20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5705a798f6b0434432d9cc983af2641761ceeb2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x572be7807225c6d01f9c277a74406852d43ccb49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58f1d0f9bff9d695010c92fb93d100cef5113f3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d76400ee194b5d2f0cf4d6baca9a637288ca7d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fd93e641f9a2c91cddbd6906eb5203cdc56d3a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61333e53f734c33f9b947f638711dbf137db94cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63be4069a6f842881718c2de4924b6b354f954d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63cd1301d8ee992277751a5214f14228f337acdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63df0f99581672bc9f0e189ebd8a0d3ff5f97cf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64f0d2edcdd1b76b016f9855bf7bcd1932003ec1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x650630e8dfaa78e1748d707d9171026bba79abd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x654be45bab14863783eb8213e3373010252fb817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x669eccc38618cd6d19250f72bf82fad6780d5cd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66cd4faf172fc24ed323b5efc925b1cce880d7d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68382fb4daa4370592462642b1d597175c257437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6944ec6ecdd2d375f94dfc63f848ea36b2b3a32b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ace9322bd1c5b6cf6ba04eae267e6cfe7b766e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ad29d0c2a9b4e7ab4eb2869ef36b997e9c98865` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b3bc1369c168fd897d053b0f70a48e8ebfc879b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b538b4c0b5024b0c234e11ebd528b6895313357` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c04fd8e5fd0e845dcd2f0b00d678b4c8221ca7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d444c2ab904296a1da82ef29307e56d0ada8322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e4141d33021b52c91c28608403db4a0ffb50ec6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f81ebeb32dc62496d52d8f6bd09dcbfba70c40f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76d5e01392788daf16816e092dc5ff3f0304bf9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7891576cf2dd67f242912883e06b2b852936aa25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78e565f813405a5eb362f6f29c0b9042a264cb67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b7f5f0cb077c05f93ed3a4471363e654d66833f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c0659fdd43df13ef9eec59ce73f84a8d529271d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fc52e3433b0d97894737ccee4bf49765e21cbfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x824a7b54881dbd336030a50861a9780ee98b6d26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83d4908c1b4f9ca423bee264163bc1d50f251c31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x865fb7358663f2eaeb07233518d14247d405b555` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87bdc1beb03c051e8342452b1f4e99bbd813e333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x886f64bda01bb6695d9c74e03703fdf514e37667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88e73857d305fabc3487180ba0d423948e2d9289` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89958f21706473b292fb09a26b5d195a9f90b903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8abd8c92f1901cf204590c16b5ef690a35b3741e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f91fdab2a49cc2a223467be516d82da0903bb9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x921f9dd03edb48027592a6cd930e89e1a2a91b1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9247d4c95c9783fc1934c5f3c141cdda53c79c61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x933a682ace1f86edb0e4ceb51a39100213a3b74a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93636330286dce8ffca3e5e5de9aa4bb6590ef96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98565fcad2080c5c19c3136fa367ce371cd40bd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99517689969bc7c863e7b566143701082835a549` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a8d5f02b6cc5ff28dc2164092f79cb8f832806c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d0f55dfedd0464ee857a06cee8463e549148fc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0d27aac297fe41a0b7fd4de50001fab74467290` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa24d4dbcd8b33726f6555c102b8587a3424c69cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa48b244fd82a51a36143d8a1fc8cc225cba6aa5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5ea8251475cd3cd7efc47dabd866cbc8ba7bf15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8efaa4d10be6211a0a5db4ccc9f22bd28ca60b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa99e4c2d12b475bf39c4b05e4e7a53b09c9f58f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab8040549b651f1c5d4a77e37c0de11c6ad98ff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabe2c87683cbb593f506eca206e9f601037a2dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaccf1ce0aa5bc0ce1441e974fb727468c1bac97f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadcd3341064839e83f0e487b3b66724a033f16e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xade4714610bbdf7361d1aad3bcd74d151432eab2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadf47102e38076c74c901f1414b92ab9b1b34a6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae83bd42449f9f03c24090a7d837d0aaf9667009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf8c2bb13944d233274ece85c1721722b168493e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb05c1852af5e9d9e0dc241af849236f1c3ae1f26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb09d1a2f8558e7a000e0da340acdf224f541c246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1ac649b819cfa2d579a4792d95a47a871aca12c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb20a278de0f0ebf7794a8c212c0f3bca67768722` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5dc3987d6effdfbe62011e14a418dfd7625d616` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7242d604ff182667810e7cb0dfe761cef489a28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb78234569e4ad97a06ac8253e4cf76862b3940a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8b13be765ea03367050af8c86e21cc301da1ec9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8e6c88521fdfb2799bd4a3024c7f0dcd94ab2db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb90faf58d127aff17baf923869939d8fd5083a19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb952d838d8bfba34a4e1b693196e2f4411a05695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9802cf6d46daedc011deede41108312d1a8c88e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba38833516c10ad08598eb5d40a3a84c2cd24227` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba4d70543f574c55d2e680336ccaabecae6c2a6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba7a286a5256bf1a370491a9ec7a42e2350d7d3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbad70cc3f904960ad544b87d1be6d3dbaa357dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc19397b420c0e1feee63685b34d1cdbd791bcc93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc311efd718ae7d76503acc362dd91511020b82c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc360ef513645f7a98ada563b8c802d4a40af6f2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5ec1e72bf654315ebc2244647f33c57fda11b3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6c0bdbe34cbcda6afce0fd135dce4e9dfb8c1fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc778417e063141139fce010982780140aa0cd5ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaa00aaf6fbc769d627d825b4faedc3aad880597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaa53174e2452f87548e1e8228136ffd4d812b6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb6e444688a0dd40ebf632279574ad8e5414f94f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcde3eb49d53d932c605efbc1bc425c6affa5eac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf226991e49d56c296d5c2c881911fbcc6bd5433` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf673fb7e52d3ad267340cc6c1f3f62cdddd5ad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd12bcdfb9a39be79da3bdf02557efdcd5ca59e77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1b47490209ccb7a806e8a45d9479490c040abf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd46d5ebccda2e96d8868eb58eec4bc977e3c39e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5a4979265d229c5342a2121ea6dbc14bec7bcb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7d59b9129ea1b58ff627cea6e2341a95487c883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8ac7f696ae99cd7b689726cf03c5711dd8dcdb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda474537ce9b687b78b236452a05631f09b6eb6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaa210258d04a841b3d54eb29f31bac83e0d4458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdebcb4e2e6b76bfc36996b5646babe71a505019b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244611 | `0xdefa4e8a7bcba345f687a2f1456f5edd9ce97202` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdffb0ee5f0b11d6d2f9003319c8a10b76370d55c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe20f29b4f169ceae9cbc96de54cd2392593179e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe222fbe074a436145b255442d919e4e3a6c6a480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3ac3fd66eb31caf4ee0831b262d837c479ffce5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4afb0630dbfdaac35ae238e3d92b7622ba38f46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244613 | `0xe5e8e834086f1a964f9a089eb6ae11796862e4ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe64f4e61aebde39979cbd2779d02ba1cd75f416e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe83b89cfe62d9dfb3e44c029383452775c33120c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8826e2029c75f59aa94f331f3903eb7b9311c20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9be00229d765f0920626f19aa00a6e7f0406187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefa53a6e6193956ee0d5f3f6880b55af3e1314e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf06c81c38a2f1128dc801f057f63f168129d2e79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0a3c59e5a791547c8fa830be97231c6eac5967b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf121b4cc2eaecb8ed77e29729c3203eb0e79fc3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf13549b96fe1b9d7159248945f95127914f784fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf16d451fc4ac0ec48a55245d8c694c26721657ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf25f71614327d8e481069ec10856f13153df7c78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf28fca8805052efca72035f90ac432cb7143fa55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf294ad0e17e66cd82c6a0c7708cf909db6c136fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3da9ab9026538fe306ef0ae520e30d93c63e653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4c7dd026c4733fea2211484d8f93d2b6fc25fc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4cc448f66f94f7bced0455224af5a181e723960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5cc449dca953a6de02678c6756cf2e4103cdda5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb8918fa6beeb1206726bf62e0f3efec55f47f6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc089830cc794731e9e35cfb123ffc2a18a49200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x041adc20336caa2d0560e6106ac26b51fb68f011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0d125c15d54ca1f8a813c74a81aee34ebb508c1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244618 | `0x0e97c887b61ccd952a53578b04763e7134429e05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0f552571e679c1698ec48b13b0316bb87d9be456` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x10c5c3ded74650e94fe3c7311b3657058423e3ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x10f1194c3858c864de23d18af0bada35144ce691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1389484b1e49f6c3033f41c9b376a23d5daa8ba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x160c5af6e2e614211684bd1599f4356fb374da96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x165c68077ac06c83800d19200e6e2b08d02de75d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x19b68902a83861b0561463831a37a8e2b15562a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1c758af0688502e49140230f6b0ebd376d429be5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1d5702c6d7eb30e42a8c94b8db7ea2e8444a37fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244619 | `0x227b0c196ea8db17a665ea6824d972a64202e936` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2664bf3b37357f26807f24c6b09a7b42d1d3266e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2abe8750e4a65584d7452316356128c936273e0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2dfc83f33a4c72dd263d65166a9d0916a4a2911a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244621 | `0x2f577a41bec1be1152aeea12e73b7391d15f655d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x30471962a12fc68662e1b5aa5f9cb5378a55d811` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x32d4e0d4b254e6b35d35ee34f6fdcffc1f569f78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3732fb6e7656f92069d0922c9ff8f34eb67575b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244622 | `0x37334cd06dfecd2e9b3937a6da17853d637a5b94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x38cb5f51fd1e092ca9e81d4ee8f09b4794b19282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4a2c1430e62e2dee29bf915151e29c3b035b5d30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5301b677678e0408872cc7eb3fb8406dc669b374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5649b4dd00780e99bab7abb4a3d581ea1aeb23d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x572be7807225c6d01f9c277a74406852d43ccb49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5f1dddbf348ac2fbe22a163e30f99f9ece3dd50a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244624 | `0x6131b5fae19ea4f9d964eac0408e4408b66337b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244625 | `0x638d935eecd1646991a8b2ce9c2a2b7b840ccabb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x63be4069a6f842881718c2de4924b6b354f954d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x669eccc38618cd6d19250f72bf82fad6780d5cd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x69c9fbc9ff6e3fa65e4cf64c7a3c2742049a47ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6d4dc2ff228772c4ca13bd8d2825b5babd943416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x76c594e7057f9ec2c19452265eb1dd90ae8274ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x81096267a2dd64dd020744b2c8b5432a5918f5ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x824a7b54881dbd336030a50861a9780ee98b6d26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x854aa3c26835546b883dfbd1aec9ab8b1d4b4763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x89958f21706473b292fb09a26b5d195a9f90b903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8abd8c92f1901cf204590c16b5ef690a35b3741e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244626 | `0x91c9d4373b077ef8082f468c7c97f2c499e36f5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x942412fe06290651ed1438b0cf454339cb4f1f26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9476aa4f9bf915fe2512fd7235182d56c0d9ce90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x986cbc971885ea22e2ca665e13714b3e32fe98e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9a8d5f02b6cc5ff28dc2164092f79cb8f832806c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9cff657d0a679bd17e072ff084c2bc9304ae5b0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9d0f55dfedd0464ee857a06cee8463e549148fc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa0d27aac297fe41a0b7fd4de50001fab74467290` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244628 | `0xa16f32442209c6b978431818aa535bcc9ad2863e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa25a42fe2a72d1f87b03b5041369aaeea0beb958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa33146b5dab361c1231822ef3e8c04e95b8029d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xabe2c87683cbb593f506eca206e9f601037a2dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xae83bd42449f9f03c24090a7d837d0aaf9667009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb2a2648dc6962016501eedbb47c32a50ab777b7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244629 | `0xb448ec505c924944ca8b2c55ef05c299ee0781df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb9802cf6d46daedc011deede41108312d1a8c88e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xba7a286a5256bf1a370491a9ec7a42e2350d7d3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbad70cc3f904960ad544b87d1be6d3dbaa357dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbf254df22e21b38942eb7231dc2fa9fc2aefc4b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc0dc32e424026547b15f1b4cd142f3106b0f3395` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc19397b420c0e1feee63685b34d1cdbd791bcc93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc1e7dfe73e1598e3910ef4c7845b68a9ab6f4c83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc311efd718ae7d76503acc362dd91511020b82c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcaa00aaf6fbc769d627d825b4faedc3aad880597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcaa53174e2452f87548e1e8228136ffd4d812b6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244630 | `0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcde3eb49d53d932c605efbc1bc425c6affa5eac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd1b47490209ccb7a806e8a45d9479490c040abf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd54b4c3ac15bd6084fb9fe6a6fabd0d9df071e04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd69d7a1031e6e63a162414f9a77278757690c30e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd7ab1699280980e756c446769b4c0f04550f88c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xda474537ce9b687b78b236452a05631f09b6eb6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdaa210258d04a841b3d54eb29f31bac83e0d4458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdc4382353a007fcefadf0609920c256173f7d210` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdd37e84326214cf6207dcba403d63d572b724e76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdebcb4e2e6b76bfc36996b5646babe71a505019b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe3ac3fd66eb31caf4ee0831b262d837c479ffce5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe3c78d1d79cf1b326f376eb54f208cd2711685a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xede4fe862900b2937d8568f821efd7033bac3dc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xee28ab7f8b2ca1ce8a5064d6c3204b372c50f945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf13549b96fe1b9d7159248945f95127914f784fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf5cc449dca953a6de02678c6756cf2e4103cdda5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfb8918fa6beeb1206726bf62e0f3efec55f47f6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x041adc20336caa2d0560e6106ac26b51fb68f011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0df7cca5c4e0d02f1e755b3442e7356d8399d600` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244679 | `0x0e97c887b61ccd952a53578b04763e7134429e05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f552571e679c1698ec48b13b0316bb87d9be456` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10908c875d865c66f271f5d3949848971c9595c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11d640b768b9a4f3eca4068bdc41f212d5703eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1389484b1e49f6c3033f41c9b376a23d5daa8ba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x160c5af6e2e614211684bd1599f4356fb374da96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d5702c6d7eb30e42a8c94b8db7ea2e8444a37fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244681 | `0x227b0c196ea8db17a665ea6824d972a64202e936` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2664bf3b37357f26807f24c6b09a7b42d1d3266e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2dfc83f33a4c72dd263d65166a9d0916a4a2911a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244682 | `0x2f577a41bec1be1152aeea12e73b7391d15f655d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x302e2f14d95e44ae0baf02c1013caee92f852d13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x326e06cdeb2f649b107e32d087287846070f4290` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3732fb6e7656f92069d0922c9ff8f34eb67575b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244683 | `0x37334cd06dfecd2e9b3937a6da17853d637a5b94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3dc912bbefd05459e8264c47655195c919e19f6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244684 | `0x4440854b2d02c57a0dc5c58b7a884562d875c0c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a2c1430e62e2dee29bf915151e29c3b035b5d30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fd97c9a5f602afc68d09265cbaafa666b11e5ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5370d78091b00dc9d32f205a3d08449b85207224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x572be7807225c6d01f9c277a74406852d43ccb49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244686 | `0x6131b5fae19ea4f9d964eac0408e4408b66337b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x614edb40ea794501d466149dfb354405e7f1a0c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244688 | `0x638d935eecd1646991a8b2ce9c2a2b7b840ccabb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x65ae0290c82b61f75e661a1f6986b41687d9dddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x65bb3767742a320783d049d57ce804b881726b71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69c9fbc9ff6e3fa65e4cf64c7a3c2742049a47ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f81ebeb32dc62496d52d8f6bd09dcbfba70c40f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70fa515cb4e48754e59caec207adfa134b57599a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x75b8618ba79b8029d63bff7c21f59f2c7c5f10df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76c594e7057f9ec2c19452265eb1dd90ae8274ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81096267a2dd64dd020744b2c8b5432a5918f5ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x854aa3c26835546b883dfbd1aec9ab8b1d4b4763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x878dfe971d44e9122048308301f540910bbd934c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87bdc1beb03c051e8342452b1f4e99bbd813e333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89958f21706473b292fb09a26b5d195a9f90b903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8efa5a9ad6d594cf76830267077b78ce0bc5a5f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244690 | `0x91c9d4373b077ef8082f468c7c97f2c499e36f5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93636330286dce8ffca3e5e5de9aa4bb6590ef96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x942412fe06290651ed1438b0cf454339cb4f1f26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9476aa4f9bf915fe2512fd7235182d56c0d9ce90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x986cbc971885ea22e2ca665e13714b3e32fe98e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a8d5f02b6cc5ff28dc2164092f79cb8f832806c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9cff657d0a679bd17e072ff084c2bc9304ae5b0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d0f55dfedd0464ee857a06cee8463e549148fc7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244691 | `0x9ed9afb6b4cafbdfb2d833b0e70845997300f6b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0d27aac297fe41a0b7fd4de50001fab74467290` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244692 | `0xa16f32442209c6b978431818aa535bcc9ad2863e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa25a42fe2a72d1f87b03b5041369aaeea0beb958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa33146b5dab361c1231822ef3e8c04e95b8029d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabe2c87683cbb593f506eca206e9f601037a2dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae83bd42449f9f03c24090a7d837d0aaf9667009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaeb652630f06ef186cab27ebaa982320cb663448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xafff41751147197b137e921c9f6eebd7beef9a53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb17e75031a5e89dee4f597399cedd53d2e78e6ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2a2648dc6962016501eedbb47c32a50ab777b7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb78234569e4ad97a06ac8253e4cf76862b3940a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbad70cc3f904960ad544b87d1be6d3dbaa357dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0dc32e424026547b15f1b4cd142f3106b0f3395` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc19397b420c0e1feee63685b34d1cdbd791bcc93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcaa00aaf6fbc769d627d825b4faedc3aad880597` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244694 | `0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcde3eb49d53d932c605efbc1bc425c6affa5eac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1b47490209ccb7a806e8a45d9479490c040abf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd29af14a28d83b677f0cd4e285f5bb6bdf25c451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd69d7a1031e6e63a162414f9a77278757690c30e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdaa210258d04a841b3d54eb29f31bac83e0d4458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd37e84326214cf6207dcba403d63d572b724e76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd63fe2b3f18d62f8cea26617cbb70349a49bdd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe22484e7d6b4e346cdbd7617dd16dc260f079386` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4f44368bb717f2c0de9da72b7b88b8ffbeba87f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244695 | `0xeae300ac9409b2072697ca1d5fd137f8bb286f9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5cc449dca953a6de02678c6756cf2e4103cdda5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x11b4aff6410ec62c5f50eb47c45cc5d6298832b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-244632 | `0x2f577a41bec1be1152aeea12e73b7391d15f655d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-244633 | `0x37334cd06dfecd2e9b3937a6da17853d637a5b94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-244635 | `0x6131b5fae19ea4f9d964eac0408e4408b66337b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x669eccc38618cd6d19250f72bf82fad6780d5cd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x70fa515cb4e48754e59caec207adfa134b57599a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x7bc417547740ab11e05865a94401a01ab88a3526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x89958f21706473b292fb09a26b5d195a9f90b903` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-244636 | `0x9ed9afb6b4cafbdfb2d833b0e70845997300f6b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-244637 | `0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xdaa210258d04a841b3d54eb29f31bac83e0d4458` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-244638 | `0xeae300ac9409b2072697ca1d5fd137f8bb286f9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xf5cc449dca953a6de02678c6756cf2e4103cdda5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x041adc20336caa2d0560e6106ac26b51fb68f011` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244639 | `0x0e97c887b61ccd952a53578b04763e7134429e05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0f552571e679c1698ec48b13b0316bb87d9be456` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x10908c875d865c66f271f5d3949848971c9595c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x10f1194c3858c864de23d18af0bada35144ce691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1389484b1e49f6c3033f41c9b376a23d5daa8ba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x160c5af6e2e614211684bd1599f4356fb374da96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x19b68902a83861b0561463831a37a8e2b15562a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1d5702c6d7eb30e42a8c94b8db7ea2e8444a37fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244640 | `0x227b0c196ea8db17a665ea6824d972a64202e936` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2dfc83f33a4c72dd263d65166a9d0916a4a2911a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244641 | `0x2f577a41bec1be1152aeea12e73b7391d15f655d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x302e2f14d95e44ae0baf02c1013caee92f852d13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x326e06cdeb2f649b107e32d087287846070f4290` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x32d4e0d4b254e6b35d35ee34f6fdcffc1f569f78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3671e4768c6d589ce0b8c3a90376c23d2a562f50` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244642 | `0x37334cd06dfecd2e9b3937a6da17853d637a5b94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x38cb5f51fd1e092ca9e81d4ee8f09b4794b19282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3c4176f37f4c285dd18e769605935f39a0d0c2c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4a2c1430e62e2dee29bf915151e29c3b035b5d30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x50950d232731c7f1ecb4b5a121e03f7a46adfbb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5301b677678e0408872cc7eb3fb8406dc669b374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5f1fe642060b5b9658c15721ea22e982643c095c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244644 | `0x6131b5fae19ea4f9d964eac0408e4408b66337b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x614edb40ea794501d466149dfb354405e7f1a0c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244645 | `0x638d935eecd1646991a8b2ce9c2a2b7b840ccabb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x63be4069a6f842881718c2de4924b6b354f954d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x654be45bab14863783eb8213e3373010252fb817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x669eccc38618cd6d19250f72bf82fad6780d5cd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6d4dc2ff228772c4ca13bd8d2825b5babd943416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6f81ebeb32dc62496d52d8f6bd09dcbfba70c40f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x76c594e7057f9ec2c19452265eb1dd90ae8274ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x78e565f813405a5eb362f6f29c0b9042a264cb67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7e61c3dd00dc1cfd4f9152b868e3af9b4e89e71d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x88627abe0f69c5b570b8c5e7b6da4aff29578cd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x89958f21706473b292fb09a26b5d195a9f90b903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8efa5a9ad6d594cf76830267077b78ce0bc5a5f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244646 | `0x91c9d4373b077ef8082f468c7c97f2c499e36f5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x93636330286dce8ffca3e5e5de9aa4bb6590ef96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x942412fe06290651ed1438b0cf454339cb4f1f26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9476aa4f9bf915fe2512fd7235182d56c0d9ce90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9d0f55dfedd0464ee857a06cee8463e549148fc7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244647 | `0xa16f32442209c6b978431818aa535bcc9ad2863e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa25a42fe2a72d1f87b03b5041369aaeea0beb958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa75aca121c158be27627d0662feaefb27b539026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xabe2c87683cbb593f506eca206e9f601037a2dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xae83bd42449f9f03c24090a7d837d0aaf9667009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaeb652630f06ef186cab27ebaa982320cb663448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbad70cc3f904960ad544b87d1be6d3dbaa357dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc0dc32e424026547b15f1b4cd142f3106b0f3395` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc19397b420c0e1feee63685b34d1cdbd791bcc93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc311efd718ae7d76503acc362dd91511020b82c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcaa00aaf6fbc769d627d825b4faedc3aad880597` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244648 | `0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcde3eb49d53d932c605efbc1bc425c6affa5eac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd1b47490209ccb7a806e8a45d9479490c040abf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd69d7a1031e6e63a162414f9a77278757690c30e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdaa210258d04a841b3d54eb29f31bac83e0d4458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdd37e84326214cf6207dcba403d63d572b724e76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdebcb4e2e6b76bfc36996b5646babe71a505019b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe4f44368bb717f2c0de9da72b7b88b8ffbeba87f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xede4fe862900b2937d8568f821efd7033bac3dc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xee28ab7f8b2ca1ce8a5064d6c3204b372c50f945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf5cc449dca953a6de02678c6756cf2e4103cdda5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf79b1ea5566ab2120f58ba8174055e9eb8526975` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfb8918fa6beeb1206726bf62e0f3efec55f47f6a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-244649 | `0x4445520306c9c70952bdfec28f3989f53d9f80c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-244650 | `0x9ed9afb6b4cafbdfb2d833b0e70845997300f6b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-244651 | `0xeae300ac9409b2072697ca1d5fd137f8bb286f9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-244652 | `0x0e97c887b61ccd952a53578b04763e7134429e05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x10f1194c3858c864de23d18af0bada35144ce691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x11b4aff6410ec62c5f50eb47c45cc5d6298832b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-244653 | `0x2f577a41bec1be1152aeea12e73b7391d15f655d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x302e2f14d95e44ae0baf02c1013caee92f852d13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x30471962a12fc68662e1b5aa5f9cb5378a55d811` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3732fb6e7656f92069d0922c9ff8f34eb67575b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-244654 | `0x37334cd06dfecd2e9b3937a6da17853d637a5b94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x38cb5f51fd1e092ca9e81d4ee8f09b4794b19282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5301b677678e0408872cc7eb3fb8406dc669b374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5370d78091b00dc9d32f205a3d08449b85207224` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-244655 | `0x6131b5fae19ea4f9d964eac0408e4408b66337b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x669eccc38618cd6d19250f72bf82fad6780d5cd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x70fa515cb4e48754e59caec207adfa134b57599a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7891576cf2dd67f242912883e06b2b852936aa25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7ae68a7e956d4ce3d0e522e141d97c0a20a30fbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x88627abe0f69c5b570b8c5e7b6da4aff29578cd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x89958f21706473b292fb09a26b5d195a9f90b903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x93636330286dce8ffca3e5e5de9aa4bb6590ef96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x942412fe06290651ed1438b0cf454339cb4f1f26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9476aa4f9bf915fe2512fd7235182d56c0d9ce90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa0d27aac297fe41a0b7fd4de50001fab74467290` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-244656 | `0xa16f32442209c6b978431818aa535bcc9ad2863e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa33146b5dab361c1231822ef3e8c04e95b8029d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xabe2c87683cbb593f506eca206e9f601037a2dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xafff41751147197b137e921c9f6eebd7beef9a53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc0dc32e424026547b15f1b4cd142f3106b0f3395` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc5ec1e72bf654315ebc2244647f33c57fda11b3c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-244657 | `0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdaa210258d04a841b3d54eb29f31bac83e0d4458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdd37e84326214cf6207dcba403d63d572b724e76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf5cc449dca953a6de02678c6756cf2e4103cdda5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-244658 | `0x1e1085efaa63edfe74aad7c05a28eae4ef917c3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | 6 deployments: cronos `0x5c7f8a570d578ed84e63fdfa7b1ee72deae1ae23`; cronos `0x63abb9973506189dc3741f61d25d4ed508151e6d`; cronos `0xd9bfe9979e9ca4b2fe84ba5d4cf963bbcb376974`; fantom `0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83`; fantom `0x5d5a5a0a465129848c2549669e12cdc2f8de039a`; fantom `0x78df70615ffc8066cc0887917f2cd72092c86409` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-244659 | `0x91c9d4373b077ef8082f468c7c97f2c499e36f5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x35004774c6163bcee66f815f59975606cc841c54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-244660 | `0x6ee46cb7cd2f15ee1ec9534cf29a5b51c83283e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x937f4f2ff1889b79daa08debfca5c237a07a5208` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-244730 | `0x2f577a41bec1be1152aeea12e73b7391d15f655d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-244731 | `0x37334cd06dfecd2e9b3937a6da17853d637a5b94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-244732 | `0x6131b5fae19ea4f9d964eac0408e4408b66337b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x70fa515cb4e48754e59caec207adfa134b57599a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x89958f21706473b292fb09a26b5d195a9f90b903` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-244733 | `0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd63ac57989e3bbeba199c27f93d7502c393f3c4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xdaa210258d04a841b3d54eb29f31bac83e0d4458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf5cc449dca953a6de02678c6756cf2e4103cdda5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-244631 | `0x6a80a465409ce8d36c513129c0feea61bed579ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x009b1719b1dd129fb23635eaa6e7d2e5a2e087d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x041adc20336caa2d0560e6106ac26b51fb68f011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0553b13c45d4db4ca070039da0d800276ae6e5e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x06781addaabbd0722883617d53b172492ce71a50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0a00eb5cc0f3852a251cd14a5d9ad7bc4603c0c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244711 | `0x0e97c887b61ccd952a53578b04763e7134429e05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0f552571e679c1698ec48b13b0316bb87d9be456` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10f1194c3858c864de23d18af0bada35144ce691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1389484b1e49f6c3033f41c9b376a23d5daa8ba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x19b68902a83861b0561463831a37a8e2b15562a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a0cfdad2d0e3a9db9c9ca35b480c556116da8f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c7fc1b10ce317045a1b6415a40064dc75c77829` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1d5702c6d7eb30e42a8c94b8db7ea2e8444a37fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1dad31beec2a160b54300724855b7e698e0bde3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x228d938348ee6caba853c9bf712e805100fc6844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x28e65c31ea52ace58e3cbdaebcf0122cb001161d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2ab0ee99025203fefc8c3b3dc78b6709b8b678cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244713 | `0x2f577a41bec1be1152aeea12e73b7391d15f655d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2fef436daf773db23778e7ca770424dacd128b22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x326e06cdeb2f649b107e32d087287846070f4290` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x32d4e0d4b254e6b35d35ee34f6fdcffc1f569f78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3411fedf94ac793a161af5ee579bbcb871f04415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3671e4768c6d589ce0b8c3a90376c23d2a562f50` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244714 | `0x37334cd06dfecd2e9b3937a6da17853d637a5b94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x37760dc52c93157299850f1ac25de9a53b470cc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x42a21a848be14a1a7e060656c503a87b19a0a0e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244715 | `0x4440854b2d02c57a0dc5c58b7a884562d875c0c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x49d0d7f63d692975b632540f99e2482c3c924521` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4a2c1430e62e2dee29bf915151e29c3b035b5d30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4f84f51eebe7c4f299bb064b1458214d71cdf3c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4fd97c9a5f602afc68d09265cbaafa666b11e5ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x50461766c6392b1b40138a90c3024c3448990a70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x50950d232731c7f1ecb4b5a121e03f7a46adfbb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5301b677678e0408872cc7eb3fb8406dc669b374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5522a597bf2b3516141e12c1477b84de4f2a1407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x555b6ee8fab3dfdbcca9121721c435fd4c7a1fd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x55c1f5ed421d1fefc845fbbe00b3055fca9ca6ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5d76400ee194b5d2f0cf4d6baca9a637288ca7d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5e954096375b15fa5e95da8de0cf8c6fed7e4320` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244716 | `0x6131b5fae19ea4f9d964eac0408e4408b66337b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244717 | `0x635dffee858a9f941d058401b393fcfab41d7841` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244718 | `0x638d935eecd1646991a8b2ce9c2a2b7b840ccabb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x63df0f99581672bc9f0e189ebd8a0d3ff5f97cf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x65ae0290c82b61f75e661a1f6986b41687d9dddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x65bb3767742a320783d049d57ce804b881726b71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6f81ebeb32dc62496d52d8f6bd09dcbfba70c40f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x70fa515cb4e48754e59caec207adfa134b57599a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7207ee41f5d128adbe85f6abe63ce3887f67b8c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244719 | `0x72473de0b52d079ca21709ea67085757c3bb1851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7ae68a7e956d4ce3d0e522e141d97c0a20a30fbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7bc417547740ab11e05865a94401a01ab88a3526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x823cf93cf089c4759464db6170a02aa4d0f476ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x824a7b54881dbd336030a50861a9780ee98b6d26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x854aa3c26835546b883dfbd1aec9ab8b1d4b4763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x87bdc1beb03c051e8342452b1f4e99bbd813e333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x88627abe0f69c5b570b8c5e7b6da4aff29578cd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8904f7431f601a1a1d4471c0e16ff0863f1b3cb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x89958f21706473b292fb09a26b5d195a9f90b903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ddd4ffffc25245e922532cbd1f426e18e3e189b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x93636330286dce8ffca3e5e5de9aa4bb6590ef96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x942412fe06290651ed1438b0cf454339cb4f1f26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9cff657d0a679bd17e072ff084c2bc9304ae5b0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e47137b2d2440518be364caa8d6597a929681ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244720 | `0x9ed9afb6b4cafbdfb2d833b0e70845997300f6b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa0d27aac297fe41a0b7fd4de50001fab74467290` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244721 | `0xa16f32442209c6b978431818aa535bcc9ad2863e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa39fe18e4fa0270eefcdc0b3b5b84e0b07d996d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa7c3ba780c0e57f085bcc0c0ea4b3f996b994660` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xabe2c87683cbb593f506eca206e9f601037a2dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xae83bd42449f9f03c24090a7d837d0aaf9667009` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244722 | `0xaee04d31696d14bce773db6d1acec3398ee09974` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaf8c2bb13944d233274ece85c1721722b168493e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb02468e7feb228ab5f35e6b607a1d82550430109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb2a2648dc6962016501eedbb47c32a50ab777b7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xba7a286a5256bf1a370491a9ec7a42e2350d7d3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbad70cc3f904960ad544b87d1be6d3dbaa357dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbc3be45cecbd32f854de66e0decc490fb88fa8cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbed05e18a63169467c01e375070bd7c3805a112d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc0dc32e424026547b15f1b4cd142f3106b0f3395` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc490019d9664badd7be8e838511d7dafd71aac57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc5ec1e72bf654315ebc2244647f33c57fda11b3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcaa00aaf6fbc769d627d825b4faedc3aad880597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcaa53174e2452f87548e1e8228136ffd4d812b6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244723 | `0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcde3eb49d53d932c605efbc1bc425c6affa5eac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xce15249ee09819d9f5090c0d266db31d322061aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd1b47490209ccb7a806e8a45d9479490c040abf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd54b4c3ac15bd6084fb9fe6a6fabd0d9df071e04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd846d8b86c52cbb6c64bccc58045640685f05b05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd91aa90e8a0eaab2e78cc2611a4af7f6a17bae61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdaa210258d04a841b3d54eb29f31bac83e0d4458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdd63fe2b3f18d62f8cea26617cbb70349a49bdd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdebcb4e2e6b76bfc36996b5646babe71a505019b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdffb0ee5f0b11d6d2f9003319c8a10b76370d55c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe22484e7d6b4e346cdbd7617dd16dc260f079386` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe9be00229d765f0920626f19aa00a6e7f0406187` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244724 | `0xeae300ac9409b2072697ca1d5fd137f8bb286f9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xede4fe862900b2937d8568f821efd7033bac3dc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xee28ab7f8b2ca1ce8a5064d6c3204b372c50f945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf294ad0e17e66cd82c6a0c7708cf909db6c136fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf5cc449dca953a6de02678c6756cf2e4103cdda5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244725 | `0xf67476e5d3fa43e0470f8f1d3c43bf202dc50eec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfb822a3133dc8b67566976d1f59698e976eeaa22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfe1bd094edbe30a952d15cc24af5a8fc3d791344` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x11b4aff6410ec62c5f50eb47c45cc5d6298832b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-244726 | `0x2f577a41bec1be1152aeea12e73b7391d15f655d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-244727 | `0x37334cd06dfecd2e9b3937a6da17853d637a5b94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-244728 | `0x6131b5fae19ea4f9d964eac0408e4408b66337b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x89958f21706473b292fb09a26b5d195a9f90b903` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-244729 | `0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd63ac57989e3bbeba199c27f93d7502c393f3c4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xdaa210258d04a841b3d54eb29f31bac83e0d4458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xf5cc449dca953a6de02678c6756cf2e4103cdda5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x009b1719b1dd129fb23635eaa6e7d2e5a2e087d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0226cf96ea07d1c8c7992224402fd9a05059f91a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0553b13c45d4db4ca070039da0d800276ae6e5e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06781addaabbd0722883617d53b172492ce71a50` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244661 | `0x0e97c887b61ccd952a53578b04763e7134429e05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10c5c3ded74650e94fe3c7311b3657058423e3ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10f1194c3858c864de23d18af0bada35144ce691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x11d640b768b9a4f3eca4068bdc41f212d5703eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1389484b1e49f6c3033f41c9b376a23d5daa8ba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x160c5af6e2e614211684bd1599f4356fb374da96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a0cfdad2d0e3a9db9c9ca35b480c556116da8f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d5702c6d7eb30e42a8c94b8db7ea2e8444a37fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244662 | `0x227b0c196ea8db17a665ea6824d972a64202e936` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2664bf3b37357f26807f24c6b09a7b42d1d3266e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2968fbd01da6e2fa9720f3c647769460bfe353e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ab0ee99025203fefc8c3b3dc78b6709b8b678cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244663 | `0x2f577a41bec1be1152aeea12e73b7391d15f655d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30471962a12fc68662e1b5aa5f9cb5378a55d811` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x34e6df46a42a42174d8cf5cc02e4cf21ed318085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3671e4768c6d589ce0b8c3a90376c23d2a562f50` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244665 | `0x37334cd06dfecd2e9b3937a6da17853d637a5b94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x37760dc52c93157299850f1ac25de9a53b470cc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c4176f37f4c285dd18e769605935f39a0d0c2c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x42a21a848be14a1a7e060656c503a87b19a0a0e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244666 | `0x4440854b2d02c57a0dc5c58b7a884562d875c0c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x49d0d7f63d692975b632540f99e2482c3c924521` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a2c1430e62e2dee29bf915151e29c3b035b5d30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4bef1703a8e73ffed63fa94b22b78209c1d96282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50950d232731c7f1ecb4b5a121e03f7a46adfbb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5301b677678e0408872cc7eb3fb8406dc669b374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x572be7807225c6d01f9c277a74406852d43ccb49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d76400ee194b5d2f0cf4d6baca9a637288ca7d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244668 | `0x6131b5fae19ea4f9d964eac0408e4408b66337b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244669 | `0x638d935eecd1646991a8b2ce9c2a2b7b840ccabb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63be4069a6f842881718c2de4924b6b354f954d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x65ae0290c82b61f75e661a1f6986b41687d9dddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69c9fbc9ff6e3fa65e4cf64c7a3c2742049a47ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c8c0bacfd2aefc335124945588a171d24c420a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75b8618ba79b8029d63bff7c21f59f2c7c5f10df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x76c594e7057f9ec2c19452265eb1dd90ae8274ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78e565f813405a5eb362f6f29c0b9042a264cb67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ae68a7e956d4ce3d0e522e141d97c0a20a30fbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7e61c3dd00dc1cfd4f9152b868e3af9b4e89e71d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7fc52e3433b0d97894737ccee4bf49765e21cbfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81096267a2dd64dd020744b2c8b5432a5918f5ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x824a7b54881dbd336030a50861a9780ee98b6d26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x854aa3c26835546b883dfbd1aec9ab8b1d4b4763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8579a4e2fe082bcc6465446102f8c15fb333643b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x87bdc1beb03c051e8342452b1f4e99bbd813e333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x88627abe0f69c5b570b8c5e7b6da4aff29578cd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89958f21706473b292fb09a26b5d195a9f90b903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8e34eea28d43f409a09846b582530d7b092be200` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244670 | `0x91c9d4373b077ef8082f468c7c97f2c499e36f5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x93636330286dce8ffca3e5e5de9aa4bb6590ef96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x942412fe06290651ed1438b0cf454339cb4f1f26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9476aa4f9bf915fe2512fd7235182d56c0d9ce90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x962685368c342b7e2614d87ea7ea810e103eb25f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9a8d5f02b6cc5ff28dc2164092f79cb8f832806c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9cff657d0a679bd17e072ff084c2bc9304ae5b0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244671 | `0x9ed9afb6b4cafbdfb2d833b0e70845997300f6b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244672 | `0xa16f32442209c6b978431818aa535bcc9ad2863e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa25a42fe2a72d1f87b03b5041369aaeea0beb958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa665a94de06acabbc4306e97a51df03c86ca37ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa75aca121c158be27627d0662feaefb27b539026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa7c3ba780c0e57f085bcc0c0ea4b3f996b994660` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae83bd42449f9f03c24090a7d837d0aaf9667009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaeb652630f06ef186cab27ebaa982320cb663448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf8c2bb13944d233274ece85c1721722b168493e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xafff41751147197b137e921c9f6eebd7beef9a53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb02468e7feb228ab5f35e6b607a1d82550430109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb2a2648dc6962016501eedbb47c32a50ab777b7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb90faf58d127aff17baf923869939d8fd5083a19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb9802cf6d46daedc011deede41108312d1a8c88e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba4d70543f574c55d2e680336ccaabecae6c2a6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba7a286a5256bf1a370491a9ec7a42e2350d7d3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf254df22e21b38942eb7231dc2fa9fc2aefc4b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc0dc32e424026547b15f1b4cd142f3106b0f3395` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc19397b420c0e1feee63685b34d1cdbd791bcc93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcaa00aaf6fbc769d627d825b4faedc3aad880597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcaa53174e2452f87548e1e8228136ffd4d812b6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244674 | `0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcde3eb49d53d932c605efbc1bc425c6affa5eac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce15249ee09819d9f5090c0d266db31d322061aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd1b47490209ccb7a806e8a45d9479490c040abf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd29af14a28d83b677f0cd4e285f5bb6bdf25c451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd54b4c3ac15bd6084fb9fe6a6fabd0d9df071e04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd69d7a1031e6e63a162414f9a77278757690c30e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdaa210258d04a841b3d54eb29f31bac83e0d4458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd37e84326214cf6207dcba403d63d572b724e76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd4052ce936bc728bddf146869c6363b6bd1ea5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd63fe2b3f18d62f8cea26617cbb70349a49bdd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdffb0ee5f0b11d6d2f9003319c8a10b76370d55c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe0a0a02de467018e7b0cadf49a0047d927c82ada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe22484e7d6b4e346cdbd7617dd16dc260f079386` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe2ebb7ad31e0b01e477bb1ab051846e7caefd283` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe9d2569ffd2587f913213caaa8534744c29c8853` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244675 | `0xeae300ac9409b2072697ca1d5fd137f8bb286f9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xede4fe862900b2937d8568f821efd7033bac3dc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf13549b96fe1b9d7159248945f95127914f784fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf209d2e0f4fb7c84de7c70b0791c07e616432636` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf5cc449dca953a6de02678c6756cf2e4103cdda5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf833f5493eea82a19626e8481a3e4951325e6ecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x041adc20336caa2d0560e6106ac26b51fb68f011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0f552571e679c1698ec48b13b0316bb87d9be456` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10908c875d865c66f271f5d3949848971c9595c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10c5c3ded74650e94fe3c7311b3657058423e3ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1389484b1e49f6c3033f41c9b376a23d5daa8ba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x160c5af6e2e614211684bd1599f4356fb374da96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1d5702c6d7eb30e42a8c94b8db7ea2e8444a37fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2dfc83f33a4c72dd263d65166a9d0916a4a2911a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f577a41bec1be1152aeea12e73b7391d15f655d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x30471962a12fc68662e1b5aa5f9cb5378a55d811` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x32d4e0d4b254e6b35d35ee34f6fdcffc1f569f78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3671e4768c6d589ce0b8c3a90376c23d2a562f50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3732fb6e7656f92069d0922c9ff8f34eb67575b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c4176f37f4c285dd18e769605935f39a0d0c2c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6131b5fae19ea4f9d964eac0408e4408b66337b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x614edb40ea794501d466149dfb354405e7f1a0c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x63be4069a6f842881718c2de4924b6b354f954d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x654be45bab14863783eb8213e3373010252fb817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x669eccc38618cd6d19250f72bf82fad6780d5cd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x69c9fbc9ff6e3fa65e4cf64c7a3c2742049a47ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6d4dc2ff228772c4ca13bd8d2825b5babd943416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6f81ebeb32dc62496d52d8f6bd09dcbfba70c40f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x70fa515cb4e48754e59caec207adfa134b57599a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x76c594e7057f9ec2c19452265eb1dd90ae8274ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7e61c3dd00dc1cfd4f9152b868e3af9b4e89e71d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x878dfe971d44e9122048308301f540910bbd934c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x89958f21706473b292fb09a26b5d195a9f90b903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8ddd4ffffc25245e922532cbd1f426e18e3e189b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a8d5f02b6cc5ff28dc2164092f79cb8f832806c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9cff657d0a679bd17e072ff084c2bc9304ae5b0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9d0f55dfedd0464ee857a06cee8463e549148fc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa0d27aac297fe41a0b7fd4de50001fab74467290` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa25a42fe2a72d1f87b03b5041369aaeea0beb958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa33146b5dab361c1231822ef3e8c04e95b8029d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xabe2c87683cbb593f506eca206e9f601037a2dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xae83bd42449f9f03c24090a7d837d0aaf9667009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xafff41751147197b137e921c9f6eebd7beef9a53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb78234569e4ad97a06ac8253e4cf76862b3940a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb9802cf6d46daedc011deede41108312d1a8c88e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbad70cc3f904960ad544b87d1be6d3dbaa357dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbf254df22e21b38942eb7231dc2fa9fc2aefc4b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc19397b420c0e1feee63685b34d1cdbd791bcc93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc311efd718ae7d76503acc362dd91511020b82c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcaa00aaf6fbc769d627d825b4faedc3aad880597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcde3eb49d53d932c605efbc1bc425c6affa5eac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd1b47490209ccb7a806e8a45d9479490c040abf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdaa210258d04a841b3d54eb29f31bac83e0d4458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdd37e84326214cf6207dcba403d63d572b724e76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe4f44368bb717f2c0de9da72b7b88b8ffbeba87f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf5cc449dca953a6de02678c6756cf2e4103cdda5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfb8918fa6beeb1206726bf62e0f3efec55f47f6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0553b13c45d4db4ca070039da0d800276ae6e5e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0d125c15d54ca1f8a813c74a81aee34ebb508c1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-244697 | `0x0e97c887b61ccd952a53578b04763e7134429e05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0f552571e679c1698ec48b13b0316bb87d9be456` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1389484b1e49f6c3033f41c9b376a23d5daa8ba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x19b68902a83861b0561463831a37a8e2b15562a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1c758af0688502e49140230f6b0ebd376d429be5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1d5702c6d7eb30e42a8c94b8db7ea2e8444a37fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2ab0ee99025203fefc8c3b3dc78b6709b8b678cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2abe8750e4a65584d7452316356128c936273e0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2b1c7b41f6a8f2b2bc45c3233a5d5fb3cd6dc9a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-244698 | `0x2f577a41bec1be1152aeea12e73b7391d15f655d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x302e2f14d95e44ae0baf02c1013caee92f852d13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x30471962a12fc68662e1b5aa5f9cb5378a55d811` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x30ba0a8cae9f35d184c27b85afc2ab237aaf2552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3671e4768c6d589ce0b8c3a90376c23d2a562f50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x36efec4b53d8e26823a9ba3938c4293108bb93bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-244699 | `0x37334cd06dfecd2e9b3937a6da17853d637a5b94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x38cb5f51fd1e092ca9e81d4ee8f09b4794b19282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3c4176f37f4c285dd18e769605935f39a0d0c2c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x44729ad390e37e35a89126fc3e172d325e5d3f38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4e63f7d4cc5982a36d16e667f3a50d7c39994be4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5370d78091b00dc9d32f205a3d08449b85207224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x555b6ee8fab3dfdbcca9121721c435fd4c7a1fd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5649b4dd00780e99bab7abb4a3d581ea1aeb23d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5d76400ee194b5d2f0cf4d6baca9a637288ca7d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5f1dddbf348ac2fbe22a163e30f99f9ece3dd50a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-244700 | `0x6131b5fae19ea4f9d964eac0408e4408b66337b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x65ae0290c82b61f75e661a1f6986b41687d9dddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x65bb3767742a320783d049d57ce804b881726b71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6c8c0bacfd2aefc335124945588a171d24c420a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x70083789f5b905b0c708f82b781124ae9648b4aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7891576cf2dd67f242912883e06b2b852936aa25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7bae6bef8de5eb8af3cbf2c8f926039e0dae6ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7fc52e3433b0d97894737ccee4bf49765e21cbfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x815d02c749b0606ed264633ce41a52ebe82a5738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x824a7b54881dbd336030a50861a9780ee98b6d26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x854aa3c26835546b883dfbd1aec9ab8b1d4b4763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x89958f21706473b292fb09a26b5d195a9f90b903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8abd8c92f1901cf204590c16b5ef690a35b3741e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8ddd4ffffc25245e922532cbd1f426e18e3e189b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x942412fe06290651ed1438b0cf454339cb4f1f26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9a8d5f02b6cc5ff28dc2164092f79cb8f832806c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9cff657d0a679bd17e072ff084c2bc9304ae5b0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-244701 | `0xa16f32442209c6b978431818aa535bcc9ad2863e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa39fe18e4fa0270eefcdc0b3b5b84e0b07d996d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa75aca121c158be27627d0662feaefb27b539026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xaf8c2bb13944d233274ece85c1721722b168493e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xafff41751147197b137e921c9f6eebd7beef9a53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb2a2648dc6962016501eedbb47c32a50ab777b7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-244702 | `0xb448ec505c924944ca8b2c55ef05c299ee0781df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb9802cf6d46daedc011deede41108312d1a8c88e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xbad70cc3f904960ad544b87d1be6d3dbaa357dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc1e7dfe73e1598e3910ef4c7845b68a9ab6f4c83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc2b4642723ed4d1ffb44d0d18b19fdfcbf909690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc4d8b462efe9fb864572d7522d23819e65b3204c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcaa00aaf6fbc769d627d825b4faedc3aad880597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcaa53174e2452f87548e1e8228136ffd4d812b6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-244703 | `0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcde3eb49d53d932c605efbc1bc425c6affa5eac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd1b47490209ccb7a806e8a45d9479490c040abf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd7ab1699280980e756c446769b4c0f04550f88c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xda474537ce9b687b78b236452a05631f09b6eb6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdaa210258d04a841b3d54eb29f31bac83e0d4458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdd37e84326214cf6207dcba403d63d572b724e76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe0d72aaa82d2068003633f85ab0b72a0a7697253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe3ac3fd66eb31caf4ee0831b262d837c479ffce5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe4f44368bb717f2c0de9da72b7b88b8ffbeba87f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe9d2569ffd2587f913213caaa8534744c29c8853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf13549b96fe1b9d7159248945f95127914f784fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf294ad0e17e66cd82c6a0c7708cf909db6c136fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf5cc449dca953a6de02678c6756cf2e4103cdda5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf93deab791b4d297b625abfb1165210a0adbc6c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244704 | `0x0e97c887b61ccd952a53578b04763e7134429e05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0f552571e679c1698ec48b13b0316bb87d9be456` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x10c5c3ded74650e94fe3c7311b3657058423e3ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x11b4aff6410ec62c5f50eb47c45cc5d6298832b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244705 | `0x2f577a41bec1be1152aeea12e73b7391d15f655d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3671e4768c6d589ce0b8c3a90376c23d2a562f50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3732fb6e7656f92069d0922c9ff8f34eb67575b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244706 | `0x37334cd06dfecd2e9b3937a6da17853d637a5b94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x38cb5f51fd1e092ca9e81d4ee8f09b4794b19282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5301b677678e0408872cc7eb3fb8406dc669b374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5370d78091b00dc9d32f205a3d08449b85207224` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244707 | `0x6131b5fae19ea4f9d964eac0408e4408b66337b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244708 | `0x638d935eecd1646991a8b2ce9c2a2b7b840ccabb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x89958f21706473b292fb09a26b5d195a9f90b903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x942412fe06290651ed1438b0cf454339cb4f1f26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244709 | `0xa16f32442209c6b978431818aa535bcc9ad2863e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xafff41751147197b137e921c9f6eebd7beef9a53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244710 | `0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdaa210258d04a841b3d54eb29f31bac83e0d4458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xede4fe862900b2937d8568f821efd7033bac3dc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xee28ab7f8b2ca1ce8a5064d6c3204b372c50f945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf5cc449dca953a6de02678c6756cf2e4103cdda5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x0d125c15d54ca1f8a813c74a81aee34ebb508c1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x165c68077ac06c83800d19200e6e2b08d02de75d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x2b1c7b41f6a8f2b2bc45c3233a5d5fb3cd6dc9a8` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 600
- Live contracts: 4
- Unknown liveness contracts: 596
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: exact address book overlap=4, unverified unclassified=596

Showing first 200 of 600 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2968fbd01da6e2fa9720f3c647769460bfe353e5` | non_address_book | unknown | unknown | unverified | n/a | `0x1044a0bcb042eda0032a6d66c95d973957e5bf8a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf209d2e0f4fb7c84de7c70b0791c07e616432636` | non_address_book | unknown | unknown | unverified | n/a | `0x1044a0bcb042eda0032a6d66c95d973957e5bf8a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1d5702c6d7eb30e42a8c94b8db7ea2e8444a37fd` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x49d0d7f63d692975b632540f99e2482c3c924521` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa665a94de06acabbc4306e97a51df03c86ca37ce` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcaa00aaf6fbc769d627d825b4faedc3aad880597` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcde3eb49d53d932c605efbc1bc425c6affa5eac2` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd1b47490209ccb7a806e8a45d9479490c040abf4` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x942412fe06290651ed1438b0cf454339cb4f1f26` | non_address_book | unknown | unknown | unverified | n/a | `0x668c42ba1ff83ac494f4ff6e6712b21fc704ba07` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x76c594e7057f9ec2c19452265eb1dd90ae8274ba` | non_address_book | unknown | unknown | unverified | n/a | `0x90545076c581552f8125659546e81395fc351a32` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd69d7a1031e6e63a162414f9a77278757690c30e` | non_address_book | unknown | unknown | unverified | n/a | `0x90545076c581552f8125659546e81395fc351a32` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x009b1719b1dd129fb23635eaa6e7d2e5a2e087d8` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0226cf96ea07d1c8c7992224402fd9a05059f91a` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0553b13c45d4db4ca070039da0d800276ae6e5e6` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x06781addaabbd0722883617d53b172492ce71a50` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x10c5c3ded74650e94fe3c7311b3657058423e3ac` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x10f1194c3858c864de23d18af0bada35144ce691` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x11d640b768b9a4f3eca4068bdc41f212d5703eac` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1389484b1e49f6c3033f41c9b376a23d5daa8ba8` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x160c5af6e2e614211684bd1599f4356fb374da96` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1a0cfdad2d0e3a9db9c9ca35b480c556116da8f4` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2664bf3b37357f26807f24c6b09a7b42d1d3266e` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2ab0ee99025203fefc8c3b3dc78b6709b8b678cc` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x30471962a12fc68662e1b5aa5f9cb5378a55d811` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x34e6df46a42a42174d8cf5cc02e4cf21ed318085` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3671e4768c6d589ce0b8c3a90376c23d2a562f50` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x37760dc52c93157299850f1ac25de9a53b470cc1` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3c4176f37f4c285dd18e769605935f39a0d0c2c7` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x42a21a848be14a1a7e060656c503a87b19a0a0e7` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4a2c1430e62e2dee29bf915151e29c3b035b5d30` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4bef1703a8e73ffed63fa94b22b78209c1d96282` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x50950d232731c7f1ecb4b5a121e03f7a46adfbb9` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5301b677678e0408872cc7eb3fb8406dc669b374` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x572be7807225c6d01f9c277a74406852d43ccb49` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5d76400ee194b5d2f0cf4d6baca9a637288ca7d6` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x63be4069a6f842881718c2de4924b6b354f954d8` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x65ae0290c82b61f75e661a1f6986b41687d9dddd` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x69c9fbc9ff6e3fa65e4cf64c7a3c2742049a47ab` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6c8c0bacfd2aefc335124945588a171d24c420a8` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x75b8618ba79b8029d63bff7c21f59f2c7c5f10df` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x78e565f813405a5eb362f6f29c0b9042a264cb67` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7ae68a7e956d4ce3d0e522e141d97c0a20a30fbe` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7e61c3dd00dc1cfd4f9152b868e3af9b4e89e71d` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7fc52e3433b0d97894737ccee4bf49765e21cbfb` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x81096267a2dd64dd020744b2c8b5432a5918f5ed` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x824a7b54881dbd336030a50861a9780ee98b6d26` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x854aa3c26835546b883dfbd1aec9ab8b1d4b4763` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8579a4e2fe082bcc6465446102f8c15fb333643b` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x87bdc1beb03c051e8342452b1f4e99bbd813e333` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x88627abe0f69c5b570b8c5e7b6da4aff29578cd2` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x89958f21706473b292fb09a26b5d195a9f90b903` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8e34eea28d43f409a09846b582530d7b092be200` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x93636330286dce8ffca3e5e5de9aa4bb6590ef96` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9476aa4f9bf915fe2512fd7235182d56c0d9ce90` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x962685368c342b7e2614d87ea7ea810e103eb25f` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9a8d5f02b6cc5ff28dc2164092f79cb8f832806c` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9cff657d0a679bd17e072ff084c2bc9304ae5b0b` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa25a42fe2a72d1f87b03b5041369aaeea0beb958` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa75aca121c158be27627d0662feaefb27b539026` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa7c3ba780c0e57f085bcc0c0ea4b3f996b994660` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xae83bd42449f9f03c24090a7d837d0aaf9667009` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaeb652630f06ef186cab27ebaa982320cb663448` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaf8c2bb13944d233274ece85c1721722b168493e` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xafff41751147197b137e921c9f6eebd7beef9a53` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb02468e7feb228ab5f35e6b607a1d82550430109` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb2a2648dc6962016501eedbb47c32a50ab777b7a` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb90faf58d127aff17baf923869939d8fd5083a19` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb9802cf6d46daedc011deede41108312d1a8c88e` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xba4d70543f574c55d2e680336ccaabecae6c2a6d` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xba7a286a5256bf1a370491a9ec7a42e2350d7d3b` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbf254df22e21b38942eb7231dc2fa9fc2aefc4b0` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc0dc32e424026547b15f1b4cd142f3106b0f3395` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc19397b420c0e1feee63685b34d1cdbd791bcc93` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcaa53174e2452f87548e1e8228136ffd4d812b6d` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xce15249ee09819d9f5090c0d266db31d322061aa` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd29af14a28d83b677f0cd4e285f5bb6bdf25c451` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd54b4c3ac15bd6084fb9fe6a6fabd0d9df071e04` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdaa210258d04a841b3d54eb29f31bac83e0d4458` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdd37e84326214cf6207dcba403d63d572b724e76` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdd4052ce936bc728bddf146869c6363b6bd1ea5a` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdd63fe2b3f18d62f8cea26617cbb70349a49bdd6` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdffb0ee5f0b11d6d2f9003319c8a10b76370d55c` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe0a0a02de467018e7b0cadf49a0047d927c82ada` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe22484e7d6b4e346cdbd7617dd16dc260f079386` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe2ebb7ad31e0b01e477bb1ab051846e7caefd283` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe9d2569ffd2587f913213caaa8534744c29c8853` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xede4fe862900b2937d8568f821efd7033bac3dc0` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf13549b96fe1b9d7159248945f95127914f784fc` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf5cc449dca953a6de02678c6756cf2e4103cdda5` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf833f5493eea82a19626e8481a3e4951325e6ecc` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1d5702c6d7eb30e42a8c94b8db7ea2e8444a37fd` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xcaa00aaf6fbc769d627d825b4faedc3aad880597` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xcde3eb49d53d932c605efbc1bc425c6affa5eac2` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd1b47490209ccb7a806e8a45d9479490c040abf4` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x76c594e7057f9ec2c19452265eb1dd90ae8274ba` | non_address_book | unknown | unknown | unverified | n/a | `0x90545076c581552f8125659546e81395fc351a32` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x10908c875d865c66f271f5d3949848971c9595c9` | non_address_book | unknown | unknown | unverified | n/a | `0xdc70a72abf352a0e3f75d737430eb896ba9bf9ea` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x878dfe971d44e9122048308301f540910bbd934c` | non_address_book | unknown | unknown | unverified | n/a | `0xdc70a72abf352a0e3f75d737430eb896ba9bf9ea` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x041adc20336caa2d0560e6106ac26b51fb68f011` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0f552571e679c1698ec48b13b0316bb87d9be456` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x10c5c3ded74650e94fe3c7311b3657058423e3ac` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1389484b1e49f6c3033f41c9b376a23d5daa8ba8` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x160c5af6e2e614211684bd1599f4356fb374da96` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2dfc83f33a4c72dd263d65166a9d0916a4a2911a` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x30471962a12fc68662e1b5aa5f9cb5378a55d811` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x32d4e0d4b254e6b35d35ee34f6fdcffc1f569f78` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3671e4768c6d589ce0b8c3a90376c23d2a562f50` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3732fb6e7656f92069d0922c9ff8f34eb67575b0` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3c4176f37f4c285dd18e769605935f39a0d0c2c7` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x614edb40ea794501d466149dfb354405e7f1a0c3` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x63be4069a6f842881718c2de4924b6b354f954d8` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x654be45bab14863783eb8213e3373010252fb817` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x669eccc38618cd6d19250f72bf82fad6780d5cd8` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x69c9fbc9ff6e3fa65e4cf64c7a3c2742049a47ab` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6d4dc2ff228772c4ca13bd8d2825b5babd943416` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6f81ebeb32dc62496d52d8f6bd09dcbfba70c40f` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x70fa515cb4e48754e59caec207adfa134b57599a` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7e61c3dd00dc1cfd4f9152b868e3af9b4e89e71d` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x89958f21706473b292fb09a26b5d195a9f90b903` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8ddd4ffffc25245e922532cbd1f426e18e3e189b` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9a8d5f02b6cc5ff28dc2164092f79cb8f832806c` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9cff657d0a679bd17e072ff084c2bc9304ae5b0b` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9d0f55dfedd0464ee857a06cee8463e549148fc7` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa0d27aac297fe41a0b7fd4de50001fab74467290` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa25a42fe2a72d1f87b03b5041369aaeea0beb958` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa33146b5dab361c1231822ef3e8c04e95b8029d5` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xabe2c87683cbb593f506eca206e9f601037a2dec` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xae83bd42449f9f03c24090a7d837d0aaf9667009` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xafff41751147197b137e921c9f6eebd7beef9a53` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb78234569e4ad97a06ac8253e4cf76862b3940a3` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb9802cf6d46daedc011deede41108312d1a8c88e` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xbad70cc3f904960ad544b87d1be6d3dbaa357dde` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xbf254df22e21b38942eb7231dc2fa9fc2aefc4b0` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc19397b420c0e1feee63685b34d1cdbd791bcc93` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc311efd718ae7d76503acc362dd91511020b82c1` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xdaa210258d04a841b3d54eb29f31bac83e0d4458` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xdd37e84326214cf6207dcba403d63d572b724e76` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe4f44368bb717f2c0de9da72b7b88b8ffbeba87f` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf5cc449dca953a6de02678c6756cf2e4103cdda5` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xfb8918fa6beeb1206726bf62e0f3efec55f47f6a` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x1c7fc1b10ce317045a1b6415a40064dc75c77829` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| base | unverified unclassified | UnnamedContract<br>`0x1d5702c6d7eb30e42a8c94b8db7ea2e8444a37fd` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| base | unverified unclassified | UnnamedContract<br>`0x1dad31beec2a160b54300724855b7e698e0bde3d` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| base | unverified unclassified | UnnamedContract<br>`0x49d0d7f63d692975b632540f99e2482c3c924521` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| base | unverified unclassified | UnnamedContract<br>`0x4f84f51eebe7c4f299bb064b1458214d71cdf3c5` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| base | unverified unclassified | UnnamedContract<br>`0x555b6ee8fab3dfdbcca9121721c435fd4c7a1fd1` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| base | unverified unclassified | UnnamedContract<br>`0x7bc417547740ab11e05865a94401a01ab88a3526` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| base | unverified unclassified | UnnamedContract<br>`0x9e47137b2d2440518be364caa8d6597a929681ce` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| base | unverified unclassified | UnnamedContract<br>`0xbed05e18a63169467c01e375070bd7c3805a112d` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| base | unverified unclassified | UnnamedContract<br>`0xcaa00aaf6fbc769d627d825b4faedc3aad880597` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| base | unverified unclassified | UnnamedContract<br>`0xcde3eb49d53d932c605efbc1bc425c6affa5eac2` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| base | unverified unclassified | UnnamedContract<br>`0xd1b47490209ccb7a806e8a45d9479490c040abf4` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| base | unverified unclassified | UnnamedContract<br>`0xd846d8b86c52cbb6c64bccc58045640685f05b05` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| base | unverified unclassified | UnnamedContract<br>`0xf294ad0e17e66cd82c6a0c7708cf909db6c136fc` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| base | unverified unclassified | UnnamedContract<br>`0xfe1bd094edbe30a952d15cc24af5a8fc3d791344` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| base | unverified unclassified | UnnamedContract<br>`0x942412fe06290651ed1438b0cf454339cb4f1f26` | non_address_book | unknown | unknown | unverified | n/a | `0x668c42ba1ff83ac494f4ff6e6712b21fc704ba07` |
| base | unverified unclassified | UnnamedContract<br>`0x009b1719b1dd129fb23635eaa6e7d2e5a2e087d8` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x041adc20336caa2d0560e6106ac26b51fb68f011` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x0553b13c45d4db4ca070039da0d800276ae6e5e6` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x06781addaabbd0722883617d53b172492ce71a50` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x0a00eb5cc0f3852a251cd14a5d9ad7bc4603c0c0` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x0f552571e679c1698ec48b13b0316bb87d9be456` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x10f1194c3858c864de23d18af0bada35144ce691` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x1389484b1e49f6c3033f41c9b376a23d5daa8ba8` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x19b68902a83861b0561463831a37a8e2b15562a1` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x1a0cfdad2d0e3a9db9c9ca35b480c556116da8f4` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x228d938348ee6caba853c9bf712e805100fc6844` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x28e65c31ea52ace58e3cbdaebcf0122cb001161d` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x2ab0ee99025203fefc8c3b3dc78b6709b8b678cc` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x2fef436daf773db23778e7ca770424dacd128b22` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x326e06cdeb2f649b107e32d087287846070f4290` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x32d4e0d4b254e6b35d35ee34f6fdcffc1f569f78` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x3411fedf94ac793a161af5ee579bbcb871f04415` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x3671e4768c6d589ce0b8c3a90376c23d2a562f50` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x37760dc52c93157299850f1ac25de9a53b470cc1` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x42a21a848be14a1a7e060656c503a87b19a0a0e7` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x4a2c1430e62e2dee29bf915151e29c3b035b5d30` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x4fd97c9a5f602afc68d09265cbaafa666b11e5ed` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x50461766c6392b1b40138a90c3024c3448990a70` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x50950d232731c7f1ecb4b5a121e03f7a46adfbb9` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x5301b677678e0408872cc7eb3fb8406dc669b374` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x5522a597bf2b3516141e12c1477b84de4f2a1407` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x55c1f5ed421d1fefc845fbbe00b3055fca9ca6ed` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x5d76400ee194b5d2f0cf4d6baca9a637288ca7d6` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x5e954096375b15fa5e95da8de0cf8c6fed7e4320` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x63df0f99581672bc9f0e189ebd8a0d3ff5f97cf5` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x65ae0290c82b61f75e661a1f6986b41687d9dddd` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x65bb3767742a320783d049d57ce804b881726b71` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x6f81ebeb32dc62496d52d8f6bd09dcbfba70c40f` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x70fa515cb4e48754e59caec207adfa134b57599a` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x7207ee41f5d128adbe85f6abe63ce3887f67b8c9` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x7ae68a7e956d4ce3d0e522e141d97c0a20a30fbe` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x823cf93cf089c4759464db6170a02aa4d0f476ec` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x824a7b54881dbd336030a50861a9780ee98b6d26` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x854aa3c26835546b883dfbd1aec9ab8b1d4b4763` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x87bdc1beb03c051e8342452b1f4e99bbd813e333` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x88627abe0f69c5b570b8c5e7b6da4aff29578cd2` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x8904f7431f601a1a1d4471c0e16ff0863f1b3cb9` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x89958f21706473b292fb09a26b5d195a9f90b903` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x8ddd4ffffc25245e922532cbd1f426e18e3e189b` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |
| base | unverified unclassified | UnnamedContract<br>`0x93636330286dce8ffca3e5e5de9aa4bb6590ef96` | non_address_book | unknown | unknown | unverified | n/a | `0xe46b993c9764d2969a05e3c0cb2e50676ea66b19` |

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
| Kyber-Hook-Uniswap-Foundation-Spearbit-Security-Review-October-2025.pdf | PancakeSwapInfinityKEMHook | own contract | PancakeSwapInfinityKEMHook (selected) `0x44428c6ce391915d51f963c0dd395cd0f95fdfd2` — deployed 2025-05-14 14:30:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Kyber-Hook-Uniswap-Foundation-Spearbit-Security-Review-October-2025.pdf | UniswapV4KEMHook | ambiguous — not counted | UniswapV4KEMHook (alternative) `0x444139d6b32c1ad0b00f24a616072f74b2f880c4` — deployed 2025-05-14 14:41:48+03 — liveness: live (current_address_book_code)<br>0x444552… (alternative) `0x4445520306c9c70952bdfec28f3989f53d9f80c4` — deployed 2025-11-17 15:23:21+03 — liveness: live (current_address_book_code)<br>UniswapV4KEMHook (alternative) `0x4440854b2d02c57a0dc5c58b7a884562d875c0c4` — deployed 2025-05-14 14:36:35+03 — liveness: live (current_address_book_code)<br>0x444085… (alternative) `0x4440854b2d02c57a0dc5c58b7a884562d875c0c4` — deployed 2025-05-14 14:40:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Kyber-Hook-Uniswap-Foundation-Spearbit-Security-Review-October-2025.pdf | BaseKEMHook | unmatched — not counted | — | Listed in findings context | no |
| Kyber-Hook-Uniswap-Foundation-Spearbit-Security-Review-October-2025.pdf | Rescuable | unmatched — not counted | — | Listed in findings context | no |
| kyberswap-dec-25(Final).pdf | BaseConditionalHook | unmatched — not counted | — | — | no |
| kyberswap-dec-25(Final).pdf | BaseTickBasedRemoveLiquidityHook | unmatched — not counted | — | — | no |
| kyberswap-dec-25(Final).pdf | ERC20Data | unmatched — not counted | — | — | no |
| kyberswap-dec-25(Final).pdf | KSSmartIntentRouter | own contract | KSSmartIntentRouter (selected) `0xaee04d31696d14bce773db6d1acec3398ee09974` — deployed 2026-02-09 12:32:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 06_24_2025_KyberNetwork_Omniscia_SecurityReview_UniswapV4Hooks.pdf | UniswapV4KEMHook | ambiguous — not counted | UniswapV4KEMHook (alternative) `0x444139d6b32c1ad0b00f24a616072f74b2f880c4` — deployed 2025-05-14 14:41:48+03 — liveness: live (current_address_book_code)<br>0x444552… (alternative) `0x4445520306c9c70952bdfec28f3989f53d9f80c4` — deployed 2025-11-17 15:23:21+03 — liveness: live (current_address_book_code)<br>UniswapV4KEMHook (alternative) `0x4440854b2d02c57a0dc5c58b7a884562d875c0c4` — deployed 2025-05-14 14:36:35+03 — liveness: live (current_address_book_code)<br>0x444085… (alternative) `0x4440854b2d02c57a0dc5c58b7a884562d875c0c4` — deployed 2025-05-14 14:40:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 06_24_2025_KyberNetwork_Omniscia_SecurityReview_UniswapV4Hooks.pdf | PancakeSwapInfinityKEMHook | own contract | PancakeSwapInfinityKEMHook (selected) `0x44428c6ce391915d51f963c0dd395cd0f95fdfd2` — deployed 2025-05-14 14:30:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| omniscia.io/reports/kyber-network-uniswap-v4-hooks-68163cf266222800187026b8 | Kyber Network Uniswap V4 Hook | unmatched — not counted | — | The audit scope is described as 'their novel Uniswap V4 Hook' and 'The Uniswap V4 hook implementation' throughout the report. | no |
| cantina.xyz/portfolio/eb59f23b-ef3c-4b3c-9d28-3455d5337d3f | UniswapV4KEMHook | ambiguous — not counted | UniswapV4KEMHook (alternative) `0x444139d6b32c1ad0b00f24a616072f74b2f880c4` — deployed 2025-05-14 14:41:48+03 — liveness: live (current_address_book_code)<br>0x444552… (alternative) `0x4445520306c9c70952bdfec28f3989f53d9f80c4` — deployed 2025-11-17 15:23:21+03 — liveness: live (current_address_book_code)<br>UniswapV4KEMHook (alternative) `0x4440854b2d02c57a0dc5c58b7a884562d875c0c4` — deployed 2025-05-14 14:36:35+03 — liveness: live (current_address_book_code)<br>0x444085… (alternative) `0x4440854b2d02c57a0dc5c58b7a884562d875c0c4` — deployed 2025-05-14 14:40:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina.xyz/portfolio/eb59f23b-ef3c-4b3c-9d28-3455d5337d3f | PancakeSwapInfinityKEMHook | own contract | PancakeSwapInfinityKEMHook (selected) `0x44428c6ce391915d51f963c0dd395cd0f95fdfd2` — deployed 2025-05-14 14:30:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/eb59f23b-ef3c-4b3c-9d28-3455d5337d3f | BaseKEMHook | unmatched — not counted | — | mentioned in findings as audited contract | no |
| hexens.io/audit-reports/kyber-network-smart-intent-protocol-dec-2025 | BaseConditionalHook | unmatched — not counted | — | — | no |
| hexens.io/audit-reports/kyber-network-smart-intent-protocol-dec-2025 | BaseTickBasedRemoveLiquidityHook | unmatched — not counted | — | — | no |
| hexens.io/audit-reports/kyber-network-smart-intent-protocol-dec-2025 | ERC20Data | unmatched — not counted | — | — | no |
| hexens.io/audit-reports/kyber-network-smart-intent-protocol-dec-2025 | KSSmartIntentRouter | own contract | KSSmartIntentRouter (selected) `0xaee04d31696d14bce773db6d1acec3398ee09974` — deployed 2026-02-09 12:32:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hexens.io/audit-reports/kyber-network-smart-intent-protocol-dec-2025 | KSSmartIntentRouterAccounting | unmatched — not counted | — | — | no |
| www.chainsecurity.com/security-audit/kyberswap-elastic-legacy | KyberSwap Elastic Legacy | unmatched — not counted | — | mentioned as the system audited in the report overview | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | `0x3b2f62d42db19b30588648bf1c184865d4c3b1d6` | BridgedToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x46371c90fcce4d7367a61cb43ea7922406bc707a` | BurnableMintableCappedERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb448ec505c924944ca8b2c55ef05c299ee0781df` | BurnableMintableCappedERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x41f5d722e6471c338392884088bd03340f50b3b5` | DefaultExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6758a66cd25fef7767a44895041678fc4ae9afd0` | DefaultExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c` | DSLOProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfbd73581af42b26295cf4b88b74a5af71f209f8b` | EpochVotingPowerStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9fb131efbac23b735d7764ab12f9e52cc68401ca` | KatanaFeeHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeae300ac9409b2072697ca1d5fd137f8bb286f9c` | KSDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf67476e5d3fa43e0470f8f1d3c43bf202dc50eec` | KSRemoveLiquidityPancakeV4CLHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x72473de0b52d079ca21709ea67085757c3bb1851` | KSRemoveLiquidityUniswapV3Hook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x635dffee858a9f941d058401b393fcfab41d7841` | KSRemoveLiquidityUniswapV4Hook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0e97c887b61ccd952a53578b04763e7134429e05` | KSZapRouterPosition | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x638d935eecd1646991a8b2ce9c2a2b7b840ccabb` | KSZapRouterPositionPermit | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa16f32442209c6b978431818aa535bcc9ad2863e` | KSZapValidatorV2Part1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7ec8fcc26be7e9e85b57e73083e5fe0550d8a7fe` | KyberGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeadb96f1623176144eba2b24e35325220972b3bd` | KyberStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xa00e3a3511aac35ca78530c85007afcd31753819` | L2StandardERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x227b0c196ea8db17a665ea6824d972a64202e936` | LimitOrderProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6131b5fae19ea4f9d964eac0408e4408b66337b5` | MetaAggregationRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3eb01b3391ea15ce752d01cf3d3f09dec596f650` | MultiSigWalletWithDailyLimit | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x91c9d4373b077ef8082f468c7c97f2c499e36f5b` | MultiSigWalletWithDailyLimit | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x91c9d4373b077ef8082f468c7c97f2c499e36f5b` | MultiSigWalletWithDailyLimit | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x28fe69ff6864c1c218878bdca01482d36b9d57b1` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd2d0a0557e5b78e29542d440ec968f9253daa2e2` | RewardPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5ec0dcf4f6f55f28550c70b854082993fdc0d3b2` | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe4dddfe67e7164b0fe14e218d80dc4c08edc01cb` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x1c954e8fe737f99f68fa1ccda3e51ebdb291948c` | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x37334cd06dfecd2e9b3937a6da17853d637a5b94` | WethUnwrapper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9ed9afb6b4cafbdfb2d833b0e70845997300f6b9` | WhitelistedCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 122 |
| upstream | 7 |
| standard_library | 3 |
| needs_review | 868 |

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
