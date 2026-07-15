# Agentic Audit Brief: Superform

## Export Authority

- Production state: **published scope**
- Raw selected rows: 18 across 5 audit(s)
- Eligible audit results: 14 (5 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Superform (`superform`)
- Website: [https://app.superform.xyz](https://app.superform.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, blast, bsc, ethereum, fantom, hyperliquid, linea, optimism, polygon
- Contract surface: 192 unique implementations (274 raw deployments)
- Coverage basis: 7/9 confirmed own live verified implementations (77.8%); conservative 77.8% with 0 needs-review implementation(s)
- DeFi Llama TVL: $22,050,136.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Superform. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across arbitrum, base, ethereum, fantom, hyperliquid. Structural roles: 5 core, 3 supporting, 1 unclassified. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (5), supporting (3), unclassified (1)
- Contract kinds: contract (9)
- Detected standards: erc20 (3), erc165 (2), ownable (2), accesscontrol (1), erc20permit (1), erc4626 (1), ownable2step (1)
- Frameworks: uniswap-v2 (7), openzeppelin-upgradeable (2), boringcrypto (1), chainlink (1), foundry (1), openzeppelin (1), solady (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ECDSAPPSOracle (`0x366d88...f694f2`, chain 1)
- SuperBank (`0x6fcc6a...cb5d15`, chain 1)
- SuperGovernor (`0xb5396e...0e74d4`, chain 1)
- SuperOracle (`0x894312...5aa070`, chain 1)
- SuperVault (`0x2c71f7...94f417`, chain 8453)
- SuperVaultAggregator (`0x10ac0b...2d4698`, chain 1)
- Up (`0x1d926b...80bf33`, chain 1)
- UpOFT (`0x642ffc...9654fe`, chain 999)
- UpOFT (`0x5b2193...f8c86b`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 7/9 (77.8%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 183 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 4 standard proxy/library)
- Proxy deployments represented within implementation groups: 34
- Confirmed-live implementations: 9 of 192 unique; 183 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 7/137
- Verified + Unaudited implementations: 130
- Verified by bytecode match: 0
- Unverified implementations: 55
- Unique implementations: 192
- Raw deployments: 274
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 5 fresh, 4 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 55.6% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| 0xMacro | Tier 2 | 7 | 5.1% | 2025-11 |
| GetRecon | Tier 2 | 5 | 3.6% | 2025-11 |
| Spearbit | Tier 1 | 5 | 3.6% | 2025-08 |
| sujithsomraaj | Tier 2 | 1 | 0.7% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ECDSAPPSOracle | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-257356 | `0x366d88...f694f2` | ✅ Audited |
| SuperBank | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257357 | `0x6fcc6a...cb5d15` | ✅ Audited |
| SuperGovernor | governance | project_anchor | own_supporting | 0 | ethereum | unit-257359 | `0xb5396e...0e74d4` | ✅ Audited |
| SuperOracle | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-257358 | `0x894312...5aa070` | ✅ Audited |
| SuperVault | core_logic | project_anchor | own_supporting | 0 | base | unit-257360 | `0x2c71f7...94f417` | ✅ Audited |
| SuperVaultAggregator | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-257354 | `0x10ac0b...2d4698` | ✅ Audited |
| Up | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257355 | `0x1d926b...80bf33` | ✅ Audited |

### ⚠️ Verified + Unaudited (130)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AcrossSendFundsAndExecuteOnDstHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39962b...04d16a` | ⚠️ Unaudited |
| AcrossV3Adapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dc34c...0f0fd7` | ⚠️ Unaudited |
| AdminProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x935c01...164552`; arbitrum `0xcc09f5...65ecc9` | ⚠️ Unaudited |
| ApproveAndAcrossSendFundsAndExecuteOnDstHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72422a...e0f3f2` | ⚠️ Unaudited |
| ApproveAndDeposit4626VaultHook | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf37535...1e6a86` | ⚠️ Unaudited |
| ApproveAndDeposit5115VaultHook | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44c7a4...593988` | ⚠️ Unaudited |
| ApproveAndRequestDeposit7540VaultHook | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x840b2b...73b43f` | ⚠️ Unaudited |
| ApproveAndSwapKyberSwapHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc9d10...12d37d` | ⚠️ Unaudited |
| ApproveAndSwapOdosV2Hook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x067696...7d9671` | ⚠️ Unaudited |
| ApproveERC20Hook | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b7899...f6d306` | ⚠️ Unaudited |
| BatchTransferFromHook | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x816d5d...ebb00a` | ⚠️ Unaudited |
| BatchTransferHook | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x852c6e...74c93a` | ⚠️ Unaudited |
| CancelDepositRequest7540Hook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bba42...4e921a` | ⚠️ Unaudited |
| CancelRedeemRequest7540Hook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x542601...f0c2c0` | ⚠️ Unaudited |
| CircleGatewayAddDelegateHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7ae12...1fe2cc` | ⚠️ Unaudited |
| CircleGatewayMinterHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x659b72...104824` | ⚠️ Unaudited |
| CircleGatewayRemoveDelegateHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00fbc4...a0e2cd` | ⚠️ Unaudited |
| CircleGatewayWalletHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6383d0...356db5` | ⚠️ Unaudited |
| ClaimCancelDepositRequest7540Hook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf958a...285858` | ⚠️ Unaudited |
| ClaimCancelRedeemRequest7540Hook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0668f9...99d594` | ⚠️ Unaudited |
| CloneFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x99fdfc...17f460` | ⚠️ Unaudited |
| CloneRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x57c041...19fc73` | ⚠️ Unaudited |
| DebridgeAdapter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5be003...5a36d8` | ⚠️ Unaudited |
| DeBridgeCancelOrderHook | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5dbbb...b482c9` | ⚠️ Unaudited |
| DeBridgeSendOrderAndExecuteOnDstHook | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x162225...8f1795` | ⚠️ Unaudited |
| DeploymentController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x87ebac...56936e` | ⚠️ Unaudited |
| Deposit4626VaultHook | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa06703...b0698e` | ⚠️ Unaudited |
| Deposit5115VaultHook | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32209a...205851` | ⚠️ Unaudited |
| Deposit7540VaultHook | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ab1b1...c1dc84` | ⚠️ Unaudited |
| ERC4626YieldSourceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd12a40...1d9fb8` | ⚠️ Unaudited |
| ERC5115YieldSourceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec64fe...c6dd5c` | ⚠️ Unaudited |
| ERC7540YieldSourceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8963d6...612005` | ⚠️ Unaudited |
| esVKAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6cb30b...03b3f8` | ⚠️ Unaudited |
| EthenaCooldownSharesHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bd769...b18aef` | ⚠️ Unaudited |
| EthenaUnstakeHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaebeec...7e7796` | ⚠️ Unaudited |
| FirelightYieldSourceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x211e04...39dfe7` | ⚠️ Unaudited |
| FlatFeeLedger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab56d0...ad683e` | ⚠️ Unaudited |
| GenericVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x5769f1...b45ffd`; arbitrum `0xd6dfe8...8cd828` | ⚠️ Unaudited |
| GlmFeeCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xb0b612...cbb29d`; arbitrum `0xeb404c...370e22` | ⚠️ Unaudited |
| GlmManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x3e2d82...a59df9`; arbitrum `0xdfe351...4b8db2` | ⚠️ Unaudited |
| GlmManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x8e9657...c01be1`; arbitrum `0x90b0a1...f43cef` | ⚠️ Unaudited |
| GlmManagerCallback | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x233547...73b264`; arbitrum `0x36b5fb...c09da0` | ⚠️ Unaudited |
| GlmManagerCallback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x55b40e...2a1e33`; arbitrum `0x56d88e...182f76`; arbitrum `0x602b1b...baf829`; arbitrum `0x6eb066...8e0796`; arbitrum `0x8e0219...954d85`; arbitrum `0xb78fea...d09fd4`; arbitrum `0xddde50...bbcd95` | ⚠️ Unaudited |
| GlmPriceReader | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xc7bdf2...de71fb`; arbitrum `0xe4d0c7...73d67a` | ⚠️ Unaudited |
| GlmRebalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x1b634f...9a8bab`; arbitrum `0x204c00...3e62c1`; arbitrum `0x479a46...3a2149` | ⚠️ Unaudited |
| GlmRebalance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x6ed6c5...627c51`; arbitrum `0x90d425...5047ae` | ⚠️ Unaudited |
| GlmRebalanceCallback | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x237328...eddda8`; arbitrum `0xaf71ff...997ad2` | ⚠️ Unaudited |
| GlmRebalanceCallback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x246409...4dbf14`; arbitrum `0x6529a5...e434f3`; arbitrum `0x7033be...63fd1e`; arbitrum `0x8d80f0...87732e`; arbitrum `0xa87568...f299f9` | ⚠️ Unaudited |
| GlmRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0652c2...651365`; arbitrum `0xd318de...156c47` | ⚠️ Unaudited |
| GlmRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x8d64c3...cef49b`; arbitrum `0x942d34...090305` | ⚠️ Unaudited |
| GlmVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x0308cb...6eada2`; arbitrum `0xadbf04...7fe2fb`; arbitrum `0xc319c8...f0581b`; arbitrum `0xe561e7...99d4be` | ⚠️ Unaudited |
| GlmVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x4a2e51...5fe661`; arbitrum `0xb455f2...b3fbb5` | ⚠️ Unaudited |
| MarkRootAsUsedHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe61774...71b5e2` | ⚠️ Unaudited |
| MerklClaimRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c12d4...b228df` | ⚠️ Unaudited |
| MultiRewardEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x23dbbe...ae5fcd` | ⚠️ Unaudited |
| MultiStrategyVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xcede40...138b93`; arbitrum `0xe1543d...8f20f8` | ⚠️ Unaudited |
| NexusAccountFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4153db...20c050` | ⚠️ Unaudited |
| NexusBootstrap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ebeb4...4bc9be` | ⚠️ Unaudited |
| OfframpTokensHook | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbbd9a...0bea73` | ⚠️ Unaudited |
| PendlePTAmortizedOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd64089...47eb62` | ⚠️ Unaudited |
| PendlePTAmortizedOracleV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2185b4...282a04` | ⚠️ Unaudited |
| PendlePTYieldSourceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98d40e...4799a6` | ⚠️ Unaudited |
| PendleRouterRedeemHook | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaae2db...daff2f` | ⚠️ Unaudited |
| PendleRouterSwapHook | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02a0a9...d305cd` | ⚠️ Unaudited |
| PendleUnifiedHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x433f9a...eba9ad` | ⚠️ Unaudited |
| PermissionRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb67c4c...90a8d9` | ⚠️ Unaudited |
| PiggyBBQ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe7c75a...da336d` | ⚠️ Unaudited |
| PiggyDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x3076a0...4ca873`; base `0x9bbfe5...5bcb1a`; base `0xa0b940...ce1afc` | ⚠️ Unaudited |
| PrimeCashProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 9 | ethereum | n/a | 9 deployments: ethereum `0x265329...57948f`; ethereum `0x39a1f8...f5cc95`; ethereum `0x4a9e28...dee9b8`; ethereum `0x4ebfc1...d305a6`; ethereum `0x54fa13...959974`; ethereum `0x7ef4d0...bf3dec`; ethereum `0x83706a...25d29d`; ethereum `0xaeeafb...2de762`; ethereum `0xfbadc4...6788d1` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x053abe...9da624`; arbitrum `0x906f16...9c9f43`; arbitrum `0xcddb0a...e787a9`; arbitrum `0xeec16e...518e34` | ⚠️ Unaudited |
| RecordPurchasePendlePTAmortizedOracleHook | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x771d4f...a03fa3` | ⚠️ Unaudited |
| RecordPurchasePendlePTAmortizedOracleHookV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0e61e...784431` | ⚠️ Unaudited |
| RecordRedemptionPendlePTAmortizedOracleHook | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb68a34...e326fc` | ⚠️ Unaudited |
| RecordRedemptionPendlePTAmortizedOracleHookV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a4f70...c89634` | ⚠️ Unaudited |
| Redeem4626VaultHook | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c3edf...af5a69` | ⚠️ Unaudited |
| Redeem5115VaultHook | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ab1fd...44e6f5` | ⚠️ Unaudited |
| Redeem7540VaultHook | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe165fb...bba79d` | ⚠️ Unaudited |
| RequestDeposit7540VaultHook | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe7738...b60097` | ⚠️ Unaudited |
| RequestRedeem7540VaultHook | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c21c1...216797` | ⚠️ Unaudited |
| RumVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b4f9b...6ae8bb` | ⚠️ Unaudited |
| SakeVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0xaf9217...4e5e35`; arbitrum `0xbe052e...874020`; arbitrum `0xead021...9570ec` | ⚠️ Unaudited |
| SetOperator7540Hook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86f9dc...8636a8` | ⚠️ Unaudited |
| SetSlippageHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6551d0...e4364e` | ⚠️ Unaudited |
| SpectraPTYieldSourceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30ecd1...1e3260` | ⚠️ Unaudited |
| StakingVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x25172c...dc2219`; arbitrum `0x504f82...3cb109`; arbitrum `0x58a270...670f6a`; arbitrum `0x62ac43...0a9cb4`; arbitrum `0x823033...eae7a8`; arbitrum `0xdd0d13...a6d23a` | ⚠️ Unaudited |
| StakingYieldSourceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a685c...57394c` | ⚠️ Unaudited |
| StringPoRAddressList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b2091...5a3219` | ⚠️ Unaudited |
| SuperDestinationExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ac58e...7817ef` | ⚠️ Unaudited |
| SuperDestinationValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadeff5...fd0098` | ⚠️ Unaudited |
| SuperExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cc8ed...1f6281` | ⚠️ Unaudited |
| SuperFrens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x4fdf7e...c1dfee`; base `0x55bf2f...093822`; base `0x5a3c67...a402b3`; base `0x733176...053135`; base `0x9c451e...c58c7a`; base `0xb5fec2...a4741d` | ⚠️ Unaudited |
| SuperLedger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04916b...cb1be6` | ⚠️ Unaudited |
| SuperLedgerConfiguration | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e2d71...165e69` | ⚠️ Unaudited |
| SuperNativePaymaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2288c4...a7a532` | ⚠️ Unaudited |
| SuperSenderCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc6fb9...7c1799` | ⚠️ Unaudited |
| SuperSponsorshipPaymaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c71eb...1366aa` | ⚠️ Unaudited |
| SuperValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb46b47...5f9f8e` | ⚠️ Unaudited |
| SuperVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x0b538d...101fc2`; base `0x3392f0...6f742c`; base `0x369b2d...6023e3`; base `0x7f6886...da6450`; base `0xd8ba05...7fd291` | ⚠️ Unaudited |
| SuperVaultYieldSourceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeebb42...df149a` | ⚠️ Unaudited |
| SuperYieldSourceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98f068...29f52d` | ⚠️ Unaudited |
| Swap1InchHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1303d5...d2425c` | ⚠️ Unaudited |
| SwapKyberSwapHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x828d8a...204df9` | ⚠️ Unaudited |
| TemplateRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ea65a...47d68c` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0xef1015...4e4389`; ethereum `0xf7de3c...17822a` | ⚠️ Unaudited |
| TokenizedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 2 deployments: base `0xbd34db...0bcdf1`; base `0xe9f2a5...b2d65b` | ⚠️ Unaudited |
| TransferERC20Hook | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6031c3...a67ca4` | ⚠️ Unaudited |
| TransferHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d54e1...9164e9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x056b76...dcb285`; arbitrum `0xe68e60...2a5d6e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x421c25...f76a1d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x4fcb03...5b1192`; arbitrum `0xa9f899...3ac341` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x806e85...492475` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x919898...c9cf27` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xc53a53...7e5b6f` | ⚠️ Unaudited |
| UpOFT | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-257362 | `0x642ffc...9654fe` | ⚠️ Unaudited |
| UpOFT | unknown | project_anchor | own_supporting | 0 | base | unit-257361 | `0x5b2193...f8c86b` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0xc9ed56...3c284c`; arbitrum `0xd11a31...dabf72`; arbitrum `0xd3a179...d538a4` | ⚠️ Unaudited |
| VaultController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf40749...ca9393` | ⚠️ Unaudited |
| VaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb205e9...a7a6cc` | ⚠️ Unaudited |
| VaultRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48943f...1f777b` | ⚠️ Unaudited |
| VKAPublicSale | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x6aa23c...4e44d5`; arbitrum `0xa6a575...704181`; arbitrum `0xca600f...db7138`; arbitrum `0xe969f3...99cd58` | ⚠️ Unaudited |
| VKAVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x28a9af...00fa35`; arbitrum `0x5cd984...68d037`; arbitrum `0x74dfbc...6d8a24`; arbitrum `0x9a7300...ae976f`; arbitrum `0xcc3b78...e54cde`; arbitrum `0xd11ea6...59d1c4` | ⚠️ Unaudited |
| VKAWhitelistedSale | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x1be85f...369df0`; arbitrum `0x1ea2ae...fae711`; arbitrum `0x6985c0...cdd24f`; arbitrum `0x87aac0...da58f5` | ⚠️ Unaudited |
| VodkaV2GMXHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x5c6a40...100ea1`; arbitrum `0x6ff982...4a78ce`; arbitrum `0xa52a42...a6ba1f`; arbitrum `0xdd4a1a...cd84aa` | ⚠️ Unaudited |
| VodkaVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x317532...d32260`; arbitrum `0x7f15d2...e2e475`; arbitrum `0xa8fcd3...14ac23`; arbitrum `0xb3d9da...3de99e`; arbitrum `0xc72cd5...614c75` | ⚠️ Unaudited |
| Water | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x9045ae...13b48c` | ⚠️ Unaudited |
| Water | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xdb197b...c50b87`; arbitrum `0xe136dc...1651af` | ⚠️ Unaudited |
| WaterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44afbd...87909b` | ⚠️ Unaudited |
| WaterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x499637...3727eb` | ⚠️ Unaudited |
| WaterV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5ea253...959385` | ⚠️ Unaudited |
| YoYieldSourceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x125d43...d626d4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (55)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0709c6...72ab79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1101ee...691e2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e80aa...d52b22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65f289...8e5e01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x860ec9...7daaf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a3a66...a5290e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3aa31...5f5b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8d51a...88d1dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf77f9...39053d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf09106...7495be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf78c9a...c5c4a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfda77d...c9b5e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | `0xbc8504...bbb62a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x220372...6aa1f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7fa521...25f108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x94ca88...b60b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaa4725...526aca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfc5f47...fb8ef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfd059e...8e942b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b6420...0922f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0fcfe2...851f89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1bd690...7e472a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1db17a...26cb9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x240224...24afe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x243331...78db9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f87db...1e5c4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3602c7...5e20be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3988e5...86040c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x448906...df6b4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x468020...996844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4870f4...4245aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4aef25...4fb96d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b2c17...d18c18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b946b...bfc809` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69c529...2a6a41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f6603...ac04d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x712ccb...456e91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78e359...499099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7e0bd7...072412` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7eb6bb...df5508` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x87719a...96f08f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8ac3b6...24482b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x932249...cbe824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x953a11...c3c1f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9cdc06...76e258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xac588f...8e3ea2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb3c6f...232c9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd252b...e43a85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcbc9c2...6ca03e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1bfbd...93be55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4364d...bb1783` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xef771d...e1f82f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeff109...078739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf27745...34a2ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfd44f3...020696` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025.08.22-orion.pdf](https://github.com/superform-xyz/v2-core/blob/dev/audits/2025.08.22-orion.pdf) | Orion Security | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 24 | n/a |
| [2025.11.30-octane-security.pdf](https://github.com/superform-xyz/v2-periphery/blob/dev/audits/2025.11.30-octane-security.pdf) | Octane Security | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025.11.27-0xMacro.pdf](https://github.com/superform-xyz/v2-periphery/blob/dev/audits/2025.11.27-0xMacro.pdf) | 0xMacro | Audit | 2025-11 | fresh | Direct | n/a | matched | 7 | 0 | 0 | 17 | n/a |
| [2023-09-gerard-persoon.pdf](https://github.com/superform-xyz/superform-core/blob/main/security-review/2023-09-gerard-persoon.pdf) | Gerard Persoon | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 33 | high |
| [2023-09-hans-friese.pdf](https://github.com/superform-xyz/superform-core/blob/main/security-review/2023-09-hans-friese.pdf) | Hans Friese | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [2023-12-cantina-competition.md](https://github.com/superform-xyz/superform-core/blob/main/security-review/2023-12-cantina-competition.md) | Spearbit | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | medium |
| [report-cantinacode-superform.pdf](https://github.com/superform-xyz/superform-core/blob/main/security-review/report-cantinacode-superform.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [report-competition-superform.pdf](https://github.com/superform-xyz/superform-core/blob/main/security-review/report-competition-superform.pdf) | Unknown (competition) | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | medium |
| [2025.03.24-sujithsomraaj.pdf](https://github.com/superform-xyz/v2-core/blob/dev/audits/2025.03.24-sujithsomraaj.pdf) | sujithsomraaj | Audit | 2025-03 | aging | Direct | n/a | matched | 1 | 0 | 0 | 28 | n/a |
| [2025.04.19-cantinacode.pdf](https://github.com/superform-xyz/v2-core/blob/dev/audits/2025.04.19-cantinacode.pdf) | Spearbit | Audit | 2025-04 | aging | Direct | n/a | matched | 1 | 0 | 0 | 31 | n/a |
| [2025.05.05-nodesecurity.pdf](https://github.com/superform-xyz/v2-core/blob/dev/audits/2025.05.05-nodesecurity.pdf) | nodesecurity | Audit | 2025-05 | aging | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [2025.06.02-cantina-competition.pdf](https://github.com/superform-xyz/v2-core/blob/dev/audits/2025.06.02-cantina-competition.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | n/a | no match | 0 | 0 | 0 | 43 | n/a |
| [2025.06.30-cantinacode.pdf](https://github.com/superform-xyz/v2-periphery/blob/dev/audits/2025.06.30-cantinacode.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | n/a | matched | 4 | 0 | 0 | 10 | n/a |
| [2025.11.07-GetRecon.pdf](https://github.com/superform-xyz/v2-periphery/blob/dev/audits/2025.11.07-GetRecon.pdf) | GetRecon | Audit | 2025-11 | fresh | Direct | n/a | matched | 5 | 0 | 0 | 6 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3981] 2025.08.22-orion.pdf — no match: No reason recorded
- [3986] 2025.11.30-octane-security.pdf — no match: The report title states 'Security Analysis of Superform: v2-periphery (main)' and the only contract explicitly mentioned in findings is SuperVaultStrategy. No other contracts are listed in scope.
- [3987] 2025.11.27-0xMacro.pdf — matched: No reason recorded
- [14877] 2023-09-gerard-persoon.pdf — no match: Extracted contract names from the scope section and findings. The scope section lists repositories but not individual files; however, the findings reference specific .sol files which are assumed to be in scope. The audit date is explicitly stated as 'Date: 2023-11-03' at the top of the report.
- [14878] 2023-09-hans-friese.pdf — no match: Scope section states 'Everything in the src folder except vendor is in scope.' All contracts mentioned in findings are within src folder. Audit date is September 2, 2023 from cover page.
- [14879] 2023-12-cantina-competition.md — no match: No explicit scope section found; contract names extracted from findings context and file paths mentioned in the report.
- [14880] report-cantinacode-superform.pdf — no match: Only one contract (SuperFrens) is explicitly referenced in findings. No explicit scope section listing all contracts; the report mentions review of 'superrewards-contracts' but only SuperFrens.sol is cited.
- [14881] report-competition-superform.pdf — no match: Extracted contract names from findings context; no explicit scope section found. Date from cover page.
- [14882] 2025.03.24-sujithsomraaj.pdf — matched: No reason recorded
- [14883] 2025.04.19-cantinacode.pdf — matched: No reason recorded
- [14884] 2025.05.05-nodesecurity.pdf — no match: No reason recorded
- [14885] 2025.06.02-cantina-competition.pdf — no match: No reason recorded
- [14887] 2025.06.30-cantinacode.pdf — matched: No reason recorded
- [14888] 2025.11.07-GetRecon.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025.08.22-orion.pdf | ApproveAndSwapOdosV2Hook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | BaseHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | BaseLedger | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | BatchTransferFromHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | ChainAgnosticSafeSignatureValidation | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | CircleGatewayAddDelegateHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | CircleGatewayMinterHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | CircleGatewayRemoveDelegateHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | Constants | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | DeBridgeSendOrderAndExecuteOnDstHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | DebridgeAdapter | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | DeployV2Base | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | DeployV2Core | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | HookDataUpdater | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | MarkRootAsUsedHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | MerklClaimRewardHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | SuperDestinationExecutor | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | SuperDestinationValidator | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | SuperExecutor | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | SuperNativePaymaster | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | SuperValidator | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | SuperYieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | Swap1InchHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | SwapOdosV2Hook | unmatched — not counted | — | — | no |
| 2025.11.30-octane-security.pdf | SuperVaultStrategy | unmatched — not counted | — | listed in scope and findings reference file src/SuperVault/SuperVaultStrategy.sol | no |
| 2025.11.27-0xMacro.pdf | AssetMetadataLib | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | Bank | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ECDSAPPSOracle | own contract | ECDSAPPSOracle (selected) `0x366d88...f694f2` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.27-0xMacro.pdf | IECDSAPPSOracle | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | IHookExecutionData | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ISuperBank | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ISuperGovernor | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ISuperOracle | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ISuperOracleL2 | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ISuperVault | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ISuperVaultAggregator | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ISuperVaultEscrow | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ISuperVaultStrategy | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | SuperBank | own contract | SuperBank (selected) `0x6fcc6a...cb5d15` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.27-0xMacro.pdf | SuperGovernor | own contract | SuperGovernor (selected) `0xb5396e...0e74d4` — deployed 2025-12-01 21:45:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.27-0xMacro.pdf | SuperOracle | own contract | SuperOracle (selected) `0x894312...5aa070` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.27-0xMacro.pdf | SuperOracleBase | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | SuperOracleL2 | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | SuperVault | own contract | SuperVault (selected) `0x2c71f7...94f417` — deployed 2026-01-16 12:38:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.27-0xMacro.pdf | SuperVaultAccountingLib | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | SuperVaultAggregator | own contract | SuperVaultAggregator (selected) `0x10ac0b...2d4698` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.27-0xMacro.pdf | SuperVaultEscrow | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | SuperVaultStrategy | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | Up | own contract | Up (selected) `0x1d926b...80bf33` — deployed 2025-06-16 23:06:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-09-gerard-persoon.pdf | CoreStateRegistry | unmatched — not counted | — | Listed in scope and findings reference CoreStateRegistry.sol | no |
| 2023-09-gerard-persoon.pdf | ERC4626FormImplementation | unmatched — not counted | — | Listed in scope and findings reference ERC4626FormImplementation.sol | no |
| 2023-09-gerard-persoon.pdf | LiquidityHandler | unmatched — not counted | — | Listed in scope and findings reference LiquidityHandler.sol | no |
| 2023-09-gerard-persoon.pdf | PaymentHelper | unmatched — not counted | — | Listed in scope and findings reference PaymentHelper.sol | no |
| 2023-09-gerard-persoon.pdf | ERC1155A | unmatched — not counted | — | Listed in scope and findings reference ERC1155A.sol | no |
| 2023-09-gerard-persoon.pdf | SuperRegistry | unmatched — not counted | — | Listed in scope and findings reference SuperRegistry.sol | no |
| 2023-09-gerard-persoon.pdf | LayerzeroImplementation | unmatched — not counted | — | Listed in scope and findings reference LayerzeroImplementation.sol | no |
| 2023-09-gerard-persoon.pdf | TimelockStateRegistry | unmatched — not counted | — | Listed in scope and findings reference TimelockStateRegistry.sol | no |
| 2023-09-gerard-persoon.pdf | DataLib | unmatched — not counted | — | Listed in scope and findings reference DataLib.sol | no |
| 2023-09-gerard-persoon.pdf | WormholeSRImplementation | unmatched — not counted | — | Listed in scope and findings reference WormholeSRImplementation.sol | no |
| 2023-09-gerard-persoon.pdf | BaseStateRegistry | unmatched — not counted | — | Listed in scope and findings reference BaseStateRegistry.sol | no |
| 2023-09-gerard-persoon.pdf | BroadcastRegistry | unmatched — not counted | — | Listed in scope and findings reference BroadcastRegistry.sol | no |
| 2023-09-gerard-persoon.pdf | SuperTransmuter | unmatched — not counted | — | Listed in scope and findings reference SuperTransmuter.sol | no |
| 2023-09-gerard-persoon.pdf | ERC4626KYCDaoForm | unmatched — not counted | — | Listed in scope and findings reference ERC4626KYCDaoForm.sol | no |
| 2023-09-gerard-persoon.pdf | DstSwapper | unmatched — not counted | — | Listed in scope and findings reference DstSwapper.sol | no |
| 2023-09-gerard-persoon.pdf | BaseForm | unmatched — not counted | — | Listed in scope and findings reference BaseForm.sol | no |
| 2023-09-gerard-persoon.pdf | FormBeacon | unmatched — not counted | — | Listed in scope and findings reference FormBeacon.sol | no |
| 2023-09-gerard-persoon.pdf | SuperformFactory | unmatched — not counted | — | Listed in scope and findings reference SuperformFactory.sol | no |
| 2023-09-gerard-persoon.pdf | BaseRouterImplementation | unmatched — not counted | — | Listed in scope and findings reference BaseRouterImplementation.sol | no |
| 2023-09-gerard-persoon.pdf | LiFiTxDataExtractor | unmatched — not counted | — | Listed in scope and findings reference LiFiTxDataExtractor.sol | no |
| 2023-09-gerard-persoon.pdf | LiFiValidator | unmatched — not counted | — | Listed in scope and findings reference LiFiValidator.sol | no |
| 2023-09-gerard-persoon.pdf | StandardizedCallFacet | unmatched — not counted | — | Listed in scope and findings reference StandardizedCallFacet.sol | no |
| 2023-09-gerard-persoon.pdf | SuperRBAC | unmatched — not counted | — | Listed in scope and findings reference SuperRBAC.sol | no |
| 2023-09-gerard-persoon.pdf | PayloadHelper | unmatched — not counted | — | Listed in scope and findings reference PayloadHelper.sol | no |
| 2023-09-gerard-persoon.pdf | Transmuter | unmatched — not counted | — | Listed in scope and findings reference Transmuter.sol | no |
| 2023-09-gerard-persoon.pdf | SuperPositions | unmatched — not counted | — | Listed in scope and findings reference SuperPositions.sol | no |
| 2023-09-gerard-persoon.pdf | IBridgeValidator | unmatched — not counted | — | Listed in scope and findings reference IBridgeValidator.sol | no |
| 2023-09-gerard-persoon.pdf | SuperformRouter | unmatched — not counted | — | Listed in scope and findings reference SuperformRouter.sol | no |
| 2023-09-gerard-persoon.pdf | HyperlaneImplementation | unmatched — not counted | — | Listed in scope and findings reference HyperlaneImplementation.sol | no |
| 2023-09-gerard-persoon.pdf | WormholeARImplementation | unmatched — not counted | — | Listed in scope and findings reference WormholeARImplementation.sol | no |
| 2023-09-gerard-persoon.pdf | PayloadUpdaterLib | unmatched — not counted | — | Listed in scope and findings reference PayloadUpdaterLib.sol | no |
| 2023-09-gerard-persoon.pdf | ERC4626Form | unmatched — not counted | — | Listed in scope and findings reference ERC4626Form.sol | no |
| 2023-09-gerard-persoon.pdf | ERC4626TimelockForm | unmatched — not counted | — | Listed in scope and findings reference ERC4626TimelockForm.sol | no |
| 2023-09-hans-friese.pdf | LayerzeroImplementation | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | BaseForm | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | BaseStateRegistry | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | CelerImplementation | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | HyperlaneImplementation | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | CoreStateRegistry | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | PayMaster | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | PaymentHelper | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | SocketValidator | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | SuperformRouter | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | ERC4626FormImplementation | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | TwoStepsFormStateRegistry | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | SuperRBAC | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | SuperRegistry | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | SuperformFactory | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | MultiTxProcessor | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | LiquidityHandler | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | SuperPositions | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | FormBeacon | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | PayloadUpdaterLib | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | Error | unmatched — not counted | — | mentioned in findings context | no |
| 2023-12-cantina-competition.md | SuperformRouter | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | BaseRouterImplementation | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | CoreStateRegistry | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | ERC4626FormImplementation | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | SuperPositions | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | ERC1155A | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | LayerzeroImplementation | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | LiFiValidator | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | DstSwapper | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | ERC4626KYCDaoForm | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | EmergencyQueue | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | SuperformFactory | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | SuperRegistry | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | SuperRBAC | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | BaseForm | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | BaseStateRegistry | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | SocketValidator | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | ERC4626Form | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | ERC4626TimelockForm | unmatched — not counted | — | mentioned in findings as audited contract | no |
| report-cantinacode-superform.pdf | SuperFrens | unmatched — not counted | — | Context in findings: SuperFrens.sol | no |
| report-competition-superform.pdf | SuperPositions | unmatched — not counted | — | mentioned in finding 3.1.1 | no |
| report-competition-superform.pdf | ERC1155A | unmatched — not counted | — | mentioned in finding 3.1.2 | no |
| report-competition-superform.pdf | BaseRouterImplementation | unmatched — not counted | — | mentioned in finding 3.1.3 | no |
| report-competition-superform.pdf | ERC4626KYCDaoForm | unmatched — not counted | — | mentioned in finding 3.1.4 | no |
| report-competition-superform.pdf | CoreStateRegistry | unmatched — not counted | — | mentioned in finding 3.2.1 | no |
| report-competition-superform.pdf | ERC4626FormImplementation | unmatched — not counted | — | mentioned in finding 3.2.3 | no |
| report-competition-superform.pdf | SuperformRouter | unmatched — not counted | — | mentioned in finding 3.2.8 | no |
| report-competition-superform.pdf | LiFiValidator | unmatched — not counted | — | mentioned in finding 3.2.9 | no |
| report-competition-superform.pdf | DstSwapper | unmatched — not counted | — | mentioned in finding 3.2.10 | no |
| report-competition-superform.pdf | LiquidityHandler | unmatched — not counted | — | mentioned in finding 3.2.13 | no |
| 2025.03.24-sujithsomraaj.pdf | AbstractYieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | AcrossReceiveFundsAndExecuteGateway | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | AcrossSendFundsAndExecuteOnDstHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | BaseClaimRewardHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | BaseHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | BaseLedger | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | BasePaymaster | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | Deposit4626VaultHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | ERC1155Ledger | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | ERC5115YieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | ERC7540YieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | FluidStakeHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | FluidStakeWithPermitHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | FluidUnstakeHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | GearboxStakeHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | GearboxUnstakeHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | ISuperLedger | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | PeripheryRegistry | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | SuperExecutor | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | SuperLedgerConfiguration | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | SuperMerkleValidator | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | SuperNativePaymaster | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | SuperOracle | own contract | SuperOracle (selected) `0x894312...5aa070` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.03.24-sujithsomraaj.pdf | SuperRegistry | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | SuperRegistryImplementer | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | Swap1InchHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | SwapOdosHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | Withdraw4626VaultHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | YearnClaimOneRewardHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | AbstractYieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | AcrossReceiveFundsAndExecuteGateway | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | AcrossSendFundsAndExecuteOnDstHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | AcrossTargetExecutor | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | ApproveAndDeposit4626VaultHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | ApproveAndGearboxStakeHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | ApproveAndRequestDeposit7540VaultHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | ApproveAndSwapOdosHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | ApproveERC20Hook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | BaseClaimRewardHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | BaseHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | BaseLedger | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | Deposit7540VaultHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | ERC5115YieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | FluidClaimRewardHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | FluidUnstakeHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | FluidYieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | GearboxUnstakeHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | GearboxYieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | HookDataDecoder | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | PaymasterGasCalculator | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | StakingYieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | SuperDestinationValidator | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | SuperExecutor | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | SuperLedgerConfiguration | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | SuperMerkleValidator | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | SuperNativePaymaster | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | SuperOracle | own contract | SuperOracle (selected) `0x894312...5aa070` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.04.19-cantinacode.pdf | Swap1InchHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | SwapOdosHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | TransferERC20Hook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | Withdraw7540VaultHook | unmatched — not counted | — | — | no |
| 2025.05.05-nodesecurity.pdf | DebridgeAdapter | unmatched — not counted | — | — | no |
| 2025.05.05-nodesecurity.pdf | SuperDestinationExecutor | unmatched — not counted | — | — | no |
| 2025.05.05-nodesecurity.pdf | SuperDestinationValidator | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | AbstractYieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | AcrossSendFundsAndExecuteOnDstHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ApproveAndDeposit4626VaultHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ApproveAndRedeem4626VaultHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ApproveAndRedeem5115VaultHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ApproveAndSwapOdosHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ApproveAndWithdraw7540VaultHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ApproveERC20Hook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | BaseLedger | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | BatchTransferFromHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ClaimCancelRedeemRequest7540Hook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | DeBridgeSendOrderAndExecuteOnDstHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | Deposit5115VaultHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ERC4626YieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ERC5115YieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | EthenaCooldownSharesHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | EthenaUnstakeHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | FlatFeeLedger | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | FluidClaimRewardHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | GearboxClaimRewardHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | MorphoBorrowHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | MorphoRepayAndWithdrawHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | MorphoRepayHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | PendlePTYieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | PendleRouterSwapHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | Redeem4626VaultHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | Redeem5115VaultHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | RequestDeposit7540VaultHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SpectraExchangeHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperBundler | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperDestinationExecutor | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperDestinationValidator | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperExecutor | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperExecutorBase | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperLedger | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperLedgerConfiguration | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperMerkleValidator | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperNativePaymaster | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperPosition | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperValidatorBase | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | Swap1InchHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SwapOdosHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | YearnClaimOneRewardHook | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | ApproveAndFluidStakeHook | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | ApproveAndGearboxStakeHook | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | BaseHook | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | BundlerRegistry | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | ECDSAPPSOracle | own contract | ECDSAPPSOracle (selected) `0x366d88...f694f2` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.06.30-cantinacode.pdf | RequestDeposit7540VaultHook | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | RequestRedeem7540VaultHook | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | SuperGovernor | own contract | SuperGovernor (selected) `0xb5396e...0e74d4` — deployed 2025-12-01 21:45:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.06.30-cantinacode.pdf | SuperVault | own contract | SuperVault (selected) `0x2c71f7...94f417` — deployed 2026-01-16 12:38:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.06.30-cantinacode.pdf | SuperVaultAggregator | own contract | SuperVaultAggregator (selected) `0x10ac0b...2d4698` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.06.30-cantinacode.pdf | SuperVaultEscrow | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | SuperVaultStrategy | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | Swap1InchHook | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | UpDistributor | unmatched — not counted | — | — | no |
| 2025.11.07-GetRecon.pdf | Bank | unmatched — not counted | — | — | no |
| 2025.11.07-GetRecon.pdf | ECDSAPPSOracle | own contract | ECDSAPPSOracle (selected) `0x366d88...f694f2` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.07-GetRecon.pdf | ERC4626YieldOracle | unmatched — not counted | — | — | no |
| 2025.11.07-GetRecon.pdf | ERC7540YieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.11.07-GetRecon.pdf | MerklClaimRewardHook | unmatched — not counted | — | — | no |
| 2025.11.07-GetRecon.pdf | SuperBank | own contract | SuperBank (selected) `0x6fcc6a...cb5d15` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.07-GetRecon.pdf | SuperGovernor | own contract | SuperGovernor (selected) `0xb5396e...0e74d4` — deployed 2025-12-01 21:45:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.07-GetRecon.pdf | SuperOracleBase | unmatched — not counted | — | — | no |
| 2025.11.07-GetRecon.pdf | SuperVault | own contract | SuperVault (selected) `0x2c71f7...94f417` — deployed 2026-01-16 12:38:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.07-GetRecon.pdf | SuperVaultAggregator | own contract | SuperVaultAggregator (selected) `0x10ac0b...2d4698` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.07-GetRecon.pdf | SuperVaultStrategy | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | `0x642ffc...9654fe` | UpOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5b2193...f8c86b` | UpOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 121 |
| upstream | 8 |
| standard_library | 6 |
| needs_review | 57 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 18 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 247 unmatched
- Matched-own operational status: 18 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, medium=3
- Match method counts: unique_name=18

Zero-match audit list:

- [3981] 2025.08.22-orion.pdf
- [3986] 2025.11.30-octane-security.pdf
- [14877] 2023-09-gerard-persoon.pdf
- [14878] 2023-09-hans-friese.pdf
- [14879] 2023-12-cantina-competition.md
- [14880] report-cantinacode-superform.pdf
- [14881] report-competition-superform.pdf
- [14884] 2025.05.05-nodesecurity.pdf
- [14885] 2025.06.02-cantina-competition.pdf

Fork inheritance lineage and inherited audits are included when available.
