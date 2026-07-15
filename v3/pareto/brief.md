# Agentic Audit Brief: Pareto

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 20 (0 matched; 20 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Pareto (`pareto`)
- Website: [https://pareto.credit/](https://pareto.credit/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, optimism, polygon, polygon-zkevm
- Contract surface: 204 unique implementations (204 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $202,329,760.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Pareto. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across arbitrum, ethereum, optimism, polygon. Structural roles: 4 supporting, 3 core, 1 infra. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: supporting (4), core (3), infra (1)
- Contract kinds: contract (8)
- Detected standards: erc1967proxy (2), accesscontrol (1), erc165 (1), erc20 (1)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 32 contracts are derived from known codebases. 32 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x06975b...97496f`, chain 1)
- UnnamedContract (`0x0b4f69...1c8a3e`, chain 1)
- UnnamedContract (`0x14b8e9...3246e0`, chain 1)
- UnnamedContract (`0x17e9ab...aeeef3`, chain 1)
- UnnamedContract (`0x271c61...0edf16`, chain 1)
- UnnamedContract (`0x3fc026...1882ce`, chain 1)
- UnnamedContract (`0x433d5b...79be4d`, chain 1)
- UnnamedContract (`0x4462ed...2dd165`, chain 1)
- UnnamedContract (`0x45054c...0f85be`, chain 1)
- UnnamedContract (`0x5cc24f...f495dc`, chain 1)
- UnnamedContract (`0x5ecf8b...e36797`, chain 1)
- UnnamedContract (`0x97ccc1...e54c88`, chain 1)
- UnnamedContract (`0x9cf358...970ec3`, chain 1)
- UnnamedContract (`0xa0b869...06eb48`, chain 1)
- UnnamedContract (`0xa30be7...9f86fc`, chain 1)
- UnnamedContract (`0xae7913...681234`, chain 1)
- UnnamedContract (`0xbc6cff...c1c14d`, chain 1)
- UnnamedContract (`0xc26a6f...84f99c`, chain 1)
- UnnamedContract (`0xc35d07...0850de`, chain 1)
- UnnamedContract (`0xc49b4e...1b724c`, chain 1)
- UnnamedContract (`0xda86e1...575a44`, chain 1)
- UnnamedContract (`0xe8ea8b...0d677b`, chain 1)
- UnnamedContract (`0xec6a70...491a8b`, chain 1)
- UnnamedContract (`0xf6223c...e3c2d5`, chain 1)
- UnnamedContract (`0xfb3bd0...5b3814`, chain 1)
- UnnamedContract (`0xa3a374...0e0c4c`, chain 10)
- UnnamedContract (`0xb98864...477057`, chain 42161)
- UnnamedContract (`0xf40d48...8ecf90`, chain 42161)
- GnosisSafe (`0xbaecba...82bb9f`, chain 1)
- GnosisSafeProxy (`0xfdbb4d...26fbd0`, chain 10)
- GnosisSafeProxy (`0x61a944...1d5cf6`, chain 137)
- Timelock (`0x45f4fb...e31ee4`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 8; live-surface rows included: 8 (4 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 32/50 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 32 own, 18 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 154 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 29 standard proxy/library)
- Proxy deployments represented within implementation groups: 41
- Confirmed-live implementations: 32 of 204 unique; 172 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/162
- Verified + Unaudited implementations: 162
- Verified by bytecode match: 0
- Unverified implementations: 42
- Unique implementations: 204
- Raw deployments: 204
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 6 fresh, 8 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (162)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x08db22...ca23d8` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x154f02...81dc89` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x1ee647...0c89a1` | ⚠️ Unaudited |
| ArbitrumExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba4eee...133a7e` | ⚠️ Unaudited |
| CelsiusxStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0e90cf...7af8b3` | ⚠️ Unaudited |
| ChildChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x195fe6...5dfa0b` | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafeea1...171ce8` | ⚠️ Unaudited |
| ChildERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0c68c...c77c77` | ⚠️ Unaudited |
| ChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b9020...6eb88f` | ⚠️ Unaudited |
| ChildERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6ebeac...a93aab` | ⚠️ Unaudited |
| ChildMintableERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4888f...25b653` | ⚠️ Unaudited |
| ConvexStrategyPlainPool3Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03563d...d854d9` | ⚠️ Unaudited |
| DelegateStakingRewardsIDLE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747e81...7ff388` | ⚠️ Unaudited |
| EarlyRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1f71e...5d88fc` | ⚠️ Unaudited |
| EthenaCooldownRequest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0c4a2...e098d1` | ⚠️ Unaudited |
| EulerStakingPYTStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf9347...098ffb` | ⚠️ Unaudited |
| FalconXAAAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48fc1a...f57724` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde2...77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | optimism | unit-251136 | `0x0b2c63...97ff85` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa...0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088247...57fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a...3778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a...4cbdcf` | ⚠️ Unaudited |
| FxChild | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x839725...afa28a` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-251135 | `0xbaecba...82bb9f` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 0 | optimism | unit-251123 | `0xfdbb4d...26fbd0` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 1 | polygon | unit-251137 | `0x61a944...1d5cf6` | ⚠️ Unaudited |
| GovernableFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x107a36...31b925` | ⚠️ Unaudited |
| GovernorAccessControl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf02faf...1ed5e5` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2256b2...2fe31b` | ⚠️ Unaudited |
| HypernativeBatchPauser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1b0f49...19bf76` | ⚠️ Unaudited |
| Idle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x875773...c5d39e` | ⚠️ Unaudited |
| IdleAave | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc3bb...ef54f3` | ⚠️ Unaudited |
| IdleAaveV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c5a5d...50a70c` | ⚠️ Unaudited |
| IdleBatchedMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dbf03...805c69` | ⚠️ Unaudited |
| IdleCDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ea9ae...9bb716` | ⚠️ Unaudited |
| IdleCDOEpochDepositQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6976e7...a724dc` | ⚠️ Unaudited |
| IdleCDOEpochQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x07ee2f...8fdf31` | ⚠️ Unaudited |
| IdleCDOEpochVariantArbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x0e90cf...7af8b3` | ⚠️ Unaudited |
| IdleCDOEpochVariantOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x0581f1...424a7e` | ⚠️ Unaudited |
| IdleCDOEpochVariantPolygon | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x5c9aca...d85a83` | ⚠️ Unaudited |
| IdleCDOEpochVariantPrefunded | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73fb8d...3a0f6a` | ⚠️ Unaudited |
| IdleCDOFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c9916...c9a631` | ⚠️ Unaudited |
| IdleCDOInstadappLiteVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d0f8a...a73b27` | ⚠️ Unaudited |
| IdleCDOOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6b8a1e...d2b689` | ⚠️ Unaudited |
| IdleCDOPoLidoVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56050f...5759a1` | ⚠️ Unaudited |
| IdleCDOPolygon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x710426...d076c9` | ⚠️ Unaudited |
| IdleCDORegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84fdee...d94d8e` | ⚠️ Unaudited |
| IdleCDOTranche | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-251118 | `0x24e16f...49331a` | ⚠️ Unaudited |
| IdleCDOTruefiCreditVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x236113...79f108` | ⚠️ Unaudited |
| IdleCDOUsualVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41b55b...9a7e8b` | ⚠️ Unaudited |
| IdleCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55583f...2c1edd` | ⚠️ Unaudited |
| IdleCompoundETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a7aca...5605ca` | ⚠️ Unaudited |
| IdleCompoundV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c39da...8ccc66` | ⚠️ Unaudited |
| IdleCreditVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dcb01...b52a7e` | ⚠️ Unaudited |
| IdleCreditVaultImpliedPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1745c0...500663` | ⚠️ Unaudited |
| IdleCreditVaultWriteOffEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c89df...ca3254` | ⚠️ Unaudited |
| IdleDepositForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x43bd6a...e6a761` | ⚠️ Unaudited |
| IdleDSR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x587fe6...0c608a` | ⚠️ Unaudited |
| IdleEulerStakingStrategyPSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x956f65...cf5784` | ⚠️ Unaudited |
| IdleEulerStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x388655...ea45e0` | ⚠️ Unaudited |
| IdleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d4e70...b3ffd0` | ⚠️ Unaudited |
| IdleFulcrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x727d9c...be825e` | ⚠️ Unaudited |
| IdleFulcrumV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02072a...cbe2e1` | ⚠️ Unaudited |
| IdleFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x878805...4acc4f` | ⚠️ Unaudited |
| IdleMcdBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ab2a7...137211` | ⚠️ Unaudited |
| IdleMStableStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b8c3e...083619` | ⚠️ Unaudited |
| IdlePoLidoStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4916ee...a12569` | ⚠️ Unaudited |
| IdlePriceCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaefb13...225358` | ⚠️ Unaudited |
| IdlePYT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3af13...45553d` | ⚠️ Unaudited |
| IdlePYTClear | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0fdcdc...809df1` | ⚠️ Unaudited |
| IdlePYTClearJunior | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff31c6...d19d18` | ⚠️ Unaudited |
| IdlePYTClearPSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fa860...0264d8` | ⚠️ Unaudited |
| IdleRebalancer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x781616...b753f4` | ⚠️ Unaudited |
| IdleRebalancerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec4707...75fc87` | ⚠️ Unaudited |
| IdleRebalancerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21fcd8...bc9582` | ⚠️ Unaudited |
| IdleRebalancerV3_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be5a5...86a84a` | ⚠️ Unaudited |
| IdleRebalancerV3SUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b98a5...e0a506` | ⚠️ Unaudited |
| IdleRebalancerV3USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x240345...80deb1` | ⚠️ Unaudited |
| IdleRibbonPSMStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x051ba9...9b0933` | ⚠️ Unaudited |
| IdleStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10cecc...0ac2b9` | ⚠️ Unaudited |
| IdleTokenFungible | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d41f8...e906ca` | ⚠️ Unaudited |
| IdleTokenFungibleOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1b0f49...19bf76` | ⚠️ Unaudited |
| IdleTokenGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2854a2...9d6b8e` | ⚠️ Unaudited |
| IdleTokenHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b7400...ed00ed` | ⚠️ Unaudited |
| IdleTokenHelperMatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x17e0d3...5e9485` | ⚠️ Unaudited |
| IdleTokenV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12b98c...3e3ca6` | ⚠️ Unaudited |
| IdleTokenV3_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fec85...40931a` | ⚠️ Unaudited |
| IdleTokenV3SUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51c776...83eef1` | ⚠️ Unaudited |
| IdleTokenV3USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x427406...1d862b` | ⚠️ Unaudited |
| IdleTokenWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x544897...ae18e1` | ⚠️ Unaudited |
| IdleTrancheAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70728f...d41e6d` | ⚠️ Unaudited |
| IdleUsdcOtcSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x863a08...33e765` | ⚠️ Unaudited |
| IdleViewHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2adf7c...5dadec` | ⚠️ Unaudited |
| KeyringIdleWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x168dc5...412e2b` | ⚠️ Unaudited |
| LockedIDLE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02682c...4a4f48` | ⚠️ Unaudited |
| MasterChefTokenizerPolygon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ac74f...1a2b72` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11...674335` | ⚠️ Unaudited |
| MaticWETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ceb23...b9f619` | ⚠️ Unaudited |
| MerkleClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x693695...d26485` | ⚠️ Unaudited |
| MetamorphoPYTStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96dd27...448152` | ⚠️ Unaudited |
| MetaMorphoSnippets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x603cb5...cfddca` | ⚠️ Unaudited |
| MinimalInitializableProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xad27d1...5a693d` | ⚠️ Unaudited |
| MorphoAavePYTStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9db5a6...03049e` | ⚠️ Unaudited |
| MorphoAaveV2SupplyVaultStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cb45d...a9dfac` | ⚠️ Unaudited |
| MultiSigWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a9196...1e2718` | ⚠️ Unaudited |
| ParetoDollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0f3e8d...3a0d73` | ⚠️ Unaudited |
| ParetoDollarQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07ace8...a4c3fd` | ⚠️ Unaudited |
| ParetoDollarStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0b5f6e...84c894` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x972a64...5ef181` | ⚠️ Unaudited |
| PriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5a8f0...95e8c5` | ⚠️ Unaudited |
| PriceOracleV2Matic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x27f06d...fd27f0` | ⚠️ Unaudited |
| PriceOracleV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2335e0...6d5fa0` | ⚠️ Unaudited |
| ProgrammableBorrower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01d079...6d069b` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0138a8...8b725e` | ⚠️ Unaudited |
| Reservoir | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x031f71...1e42c6` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d8b5b...4169d3` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x466cfd...55d6c1` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | polygon | unit-251124 | `0x45f4fb...e31ee4` | ⚠️ Unaudited |
| TokenGeyserPolygon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x254097...ee0862` | ⚠️ Unaudited |
| TranchesChainlinkOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0da050...42fb94` | ⚠️ Unaudited |
| TrancheWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79f05f...e6f048` | ⚠️ Unaudited |
| TrancheWrapperWSTETHBalancer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bf9ea...bf723a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x00d390...482c8b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0186e3...78a73b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x019879...7a4cdc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x01b8a7...1e175c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0962fb...42e6b6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0ad21c...65fa32` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0cac67...da089a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0fe4fc...e71b04` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x16f6be...08083b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1d659f...62dcc8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1eb1b4...25344c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1f5a97...313c8e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x25e733...518893` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x271ce5...9920f0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x29c794...387510` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x29d094...f24b21` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x351683...f77865` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x35df8a...5ac1c8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3687c0...ded5a0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x37de1d...870dc5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3bcba0...d122cb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4473bc...dc382d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x62b17c...8b58fb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9e0c5e...a9b52f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xbc4896...d02eb9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x236113...79f108` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x104177...b28ad0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | arbitrum | unit-251139 | `0xfd086b...9fcbb9` | ⚠️ Unaudited |
| TruefiCreditLineStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d4e70...b3ffd0` | ⚠️ Unaudited |
| UChildDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x490e37...7999a7` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0735a6...6f0e12` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02daef...057966` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x2791bc...a84174` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-251138 | `0xc2132d...b58e8f` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x275da8...cdb0be` | ⚠️ Unaudited |
| Vester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x302465...a2344c` | ⚠️ Unaudited |
| VesterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf875f...089972` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c3310...9c4320` | ⚠️ Unaudited |
| yxToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d81b0...2685ce` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (42)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251090 | `0x06975b...97496f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251091 | `0x0b4f69...1c8a3e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251092 | `0x14b8e9...3246e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251093 | `0x17e9ab...aeeef3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251094 | `0x271c61...0edf16` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251095 | `0x3fc026...1882ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251096 | `0x433d5b...79be4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251097 | `0x4462ed...2dd165` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251098 | `0x45054c...0f85be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251099 | `0x5cc24f...f495dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251100 | `0x5ecf8b...e36797` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-251101 | `0x6dbdee...c0e9e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251102 | `0x97ccc1...e54c88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251103 | `0x9cf358...970ec3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251104 | `0xa0b869...06eb48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251105 | `0xa30be7...9f86fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251106 | `0xae7913...681234` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251107 | `0xbc6cff...c1c14d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251108 | `0xc26a6f...84f99c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251109 | `0xc35d07...0850de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251110 | `0xc49b4e...1b724c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251111 | `0xda86e1...575a44` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-251112 | `0xe7e13f...d12cbf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251113 | `0xe8ea8b...0d677b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-251114 | `0xeba435...9dbdf7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251115 | `0xec6a70...491a8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251116 | `0xf6223c...e3c2d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251117 | `0xfb3bd0...5b3814` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-251119 | `0x2bcf12...942b31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-251120 | `0x463465...4ec3dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-251121 | `0xa3a374...0e0c4c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-251122 | `0xd2c0d8...11989b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-251125 | `0x4ddb30...f6df35` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-251126 | `0xae65d6...66aed7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-251127 | `0xeab324...6d60ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-251128 | `0xf9e2ae...1d4e52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-251129 | `0x133f1c...5144a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-251130 | `0x391939...44245d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-251131 | `0x5b1150...a6d06e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-251132 | `0x97f476...f1c9fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251133 | `0xb98864...477057` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251134 | `0xf40d48...8ecf90` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Link](https://drive.google.com/file/d/1bu-K45CsMWeIST676uEyIgTSAOImDtXe/view?usp=sharing) | Hans Friese | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Link](https://drive.google.com/file/d/1aIGWfo1-WXTgE3DfLfZYyJ6NNs8-esNT/view?usp=sharing) | Hans Friese | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Link](https://drive.google.com/file/d/1rTfKCkQbhVEk6qgYsluuHD2acXRxA4e1/view?usp=sharing) | Hans Friese | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Link](https://drive.google.com/file/d/1nr5kvwheKoYBDWe4M5DotKcapHWoqFSh/view?usp=sharing) | Hans Friese | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Link](https://drive.google.com/file/d/1OC3TEhRQNeHrVSdRTbrOteSrafNYXoHq/view?usp=sharing) | Hans Friese | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Link](https://drive.google.com/file/d/12q-79KRkB9r2zPjyztFRYVBo1ynb-FFn/view?usp=sharing) | Hans Friese | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Link](https://skynet.certik.com/projects/idle-finance) | CertiK | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Link](https://diligence.security/audits/2021/06/idle-finance) | Consensys Diligence | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Link](https://certificate.quantstamp.com/full/idle-finance.pdf) | Quantstamp | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [Link](https://certificate.quantstamp.com/full/idle-governance.pdf) | Quantstamp | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Link](https://drive.google.com/file/d/1tkpk3Rl-O5JWPN0jT2717DtFUnpksRlB/view?usp=sharing) | Sherlock (0x52) | Contest | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [Link](https://drive.google.com/file/d/1K8K84VQrejNZnRzvjuIFMPHMw2ReWoQH/view?usp=sharing) | Sherlock (0x52) | Contest | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [Link](https://drive.google.com/file/d/1UwmUQX-9VwK-2FIkKOu_62k4Lm-gC1K-/view?usp=drive_link) | Sherlock (0x52) | Contest | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Link](https://drive.google.com/file/d/1B5VFcZMcf8KVbBkslmfutIzHmraOkdUX/view) | Sherlock (0x52) | Contest | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Link](https://drive.google.com/file/d/1V1LP5WR01QxHN8M51OXG6N7vrG9b2d0Y/view) | Sherlock (0x52) | Contest | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Link](https://drive.google.com/file/d/1n8RNsqN7hXcQHwtmksKHYhW8zXVfiDB5/view?usp=sharing) | Sherlock (0x52) | Contest | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Link](https://drive.google.com/file/d/1P8QsDc118cJmp5cCOneefM5NN7xhx5Io/view?usp=sharing) | Sherlock | Contest | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Link](https://drive.google.com/file/d/15UH3nytMdm_BYSX2XHd77-uZlTXsOLV1/view?usp=sharing) | X77 | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Link](https://drive.google.com/file/d/1dBlNpGjnhcryl0s-muvuQGORVz-TzBCM/view?usp=sharing) | Sherlock (0x52) | Contest | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Link](https://drive.google.com/file/d/1ONqxBgT1GvdYoA-QBAQ7OGlBDicQ4xcI/view?usp=sharing) | Sherlock (0x52) | Contest | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17952] Link — no match: Scope section explicitly lists 2 contracts: IdleCDOEpochQueue.sol and IdleCreditVault.sol. Audit date is November 7, 2024 from the header.
- [17953] Link — no match: Only one contract in scope: IdleCDOEpochDepositQueue.sol
- [17954] Link — no match: Scope section explicitly lists two contracts: IdleCDOEpochVariant.sol and IdleCreditVault.sol. Audit date is October 8, 2024 from the title.
- [17955] Link — no match: Scope section explicitly lists two contracts: IdleCDOEpochVariant.sol and IdleCreditVault.sol. Audit date is August 6, 2024 from the header.
- [17956] Link — no match: Scope section explicitly lists two contracts: IdleCDO.sol and IdleCDOInstadappLiteVariant.sol. Audit date found in header of report.
- [17957] Link — no match: Scope explicitly lists 2 files: IdleCDO.sol and IdleCDOInstadappLiteVariant.sol. Audit date from cover page: 'September 2, 2023'.
- [17958] Link — no match: Extracted from 'Audited Files/SHA256' section listing two Solidity files. Audit date from 'Last Audit was delivered on 3/17/2022'.
- [17959] Link — no match: Scope table in Appendix 1 lists 9 files. Audit date inferred from 'June & July 2021' (end of July).
- [17960] Link — no match: Extracted contract names from scope descriptions, findings, test results, and coverage tables. The audit date is from the cover page: 'April 26th 2021'.
- [17961] Link — no match: Scope explicitly lists PriceOracle.sol, Idle.sol, and IdleController.sol as audited files.
- [17962] Link — no match: All 12 contracts listed in the Scope section of the audit report.
- [17963] Link — no match: All 12 contracts listed in the Scope section of the audit report.
- [17964] Link — no match: Extracted 6 contract names from the scope section file list. Audit date from 'Date Audited: March11-March12,2026' -> end date March 12, 2026.
- [17965] Link — no match: Scope section lists three files; contract names extracted from filenames. Audit date is February 21-22, 2026, using end date.
- [17966] Link — no match: Scope section explicitly lists 6 files with contract names extracted from filenames. Audit date is January 20, 2026 (end date of range).
- [17967] Link — no match: All contracts listed in the Scope section of the audit report.
- [17968] Link — no match: Scope section explicitly lists 8 files with full paths. Audit date range April 24-28, 2025, end date used.
- [17969] Link — no match: Scope section explicitly lists 7 contracts with file paths. Audit date is 21.04.2025 from cover page and timeline.
- [17970] Link — no match: Scope section lists 5 contracts in USP repository. Contract names extracted from file paths and findings context.
- [17971] Link — no match: Scope section explicitly lists 7 files. Audit date from 'Date Audited: December 13 - December 21, 2024'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Link | IdleCDOEpochQueue | unmatched — not counted | — | listed in scope section | no |
| Link | IdleCreditVault | unmatched — not counted | — | listed in scope section | no |
| Link | IdleCDOEpochDepositQueue | unmatched — not counted | — | listed in scope section | no |
| Link | IdleCDOEpochVariant | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVault | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochVariant | unmatched — not counted | — | listed in scope section | no |
| Link | IdleCreditVault | unmatched — not counted | — | listed in scope section | no |
| Link | IdleCDO | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOInstadappLiteVariant | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDO | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOInstadappLiteVariant | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDO | unmatched — not counted | — | Audited Files/SHA256 section lists IdleCDO.sol | no |
| Link | IdleCDOTrancheRewardsStorage | unmatched — not counted | — | Audited Files/SHA256 section lists IdleCDOTrancheRewardsStorage.sol | no |
| Link | GuardedLaunchUpgradable | unmatched — not counted | — | listed in scope table in Appendix 1 | no |
| Link | IdleCDO | unmatched — not counted | — | listed in scope table in Appendix 1 | no |
| Link | IdleCDOStorage | unmatched — not counted | — | listed in scope table in Appendix 1 | no |
| Link | IdleCDOTranche | unmatched — not counted | — | listed in scope table in Appendix 1 | no |
| Link | IdleCDOTrancheRewards | unmatched — not counted | — | listed in scope table in Appendix 1 | no |
| Link | IdleCDOTrancheRewardsStorage | unmatched — not counted | — | listed in scope table in Appendix 1 | no |
| Link | IIdleCDOStrategy | unmatched — not counted | — | listed in scope table in Appendix 1 | no |
| Link | IERC20Detailed | unmatched — not counted | — | listed in scope table in Appendix 1 | no |
| Link | IIdleCDOTrancheRewards | unmatched — not counted | — | listed in scope table in Appendix 1 | no |
| Link | IdleTokenV3_1 | unmatched — not counted | — | listed in scope and findings | no |
| Link | IdleRebalancerV3_1 | unmatched — not counted | — | listed in scope and findings | no |
| Link | IdleTokenGovernance | unmatched — not counted | — | listed in scope and findings | no |
| Link | IdleTokenHelper | unmatched — not counted | — | listed in scope and findings | no |
| Link | IdleCompound | unmatched — not counted | — | findings mention file | no |
| Link | IdleFulcrum | unmatched — not counted | — | findings mention file | no |
| Link | IdleRebalancer | unmatched — not counted | — | findings mention file | no |
| Link | IdleTokenV3 | unmatched — not counted | — | findings mention file | no |
| Link | IdleRebalancerV3 | unmatched — not counted | — | findings mention file | no |
| Link | IdleFactory | unmatched — not counted | — | findings mention file | no |
| Link | IdleMcdBridge | unmatched — not counted | — | findings mention file | no |
| Link | IdleAave | unmatched — not counted | — | findings mention file | no |
| Link | GST2Consumer | unmatched — not counted | — | findings mention file | no |
| Link | IdleDSR | unmatched — not counted | — | findings mention file | no |
| Link | IdleDyDx | unmatched — not counted | — | findings mention file | no |
| Link | IdleCompoundV2 | unmatched — not counted | — | findings mention file | no |
| Link | IdleFulcrumV2 | unmatched — not counted | — | findings mention file | no |
| Link | IdleAaveV2 | unmatched — not counted | — | test results mention | no |
| Link | IdleCompoundETH | unmatched — not counted | — | test results mention | no |
| Link | IdleFulcrumDisabled | unmatched — not counted | — | test results mention | no |
| Link | yxToken | unmatched — not counted | — | findings mention file | no |
| Link | IdleBatchConverter | unmatched — not counted | — | coverage table | no |
| Link | IdleViewHelper | unmatched — not counted | — | coverage table | no |
| Link | MinimalInitializableProxyFactory | unmatched — not counted | — | coverage table | no |
| Link | GST2ConsumerV2 | unmatched — not counted | — | coverage table | no |
| Link | PriceOracle.sol | unmatched — not counted | — | listed in scope | no |
| Link | Idle.sol | unmatched — not counted | — | listed in scope | no |
| Link | IdleController.sol | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOCreditVault | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochQueue | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochVariantPrefunded | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochVariant | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOStorage | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVaultFactory | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVaultImpliedPrice | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVaultManagerOrchestrator | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVaultWriteOffEscrow | unmatched — not counted | — | listed in scope | no |
| Link | IProgrammableBorrower | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVault | unmatched — not counted | — | listed in scope | no |
| Link | ProgrammableBorrower | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOCreditVault | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochQueue | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochVariantPrefunded | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochVariant | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOStorage | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVaultFactory | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVaultImpliedPrice | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVaultManagerOrchestrator | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVaultWriteOffEscrow | unmatched — not counted | — | listed in scope | no |
| Link | IProgrammableBorrower | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVault | unmatched — not counted | — | listed in scope | no |
| Link | ProgrammableBorrower | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochQueue | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochVariantPrefunded | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochVariant | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDO | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVaultWriteOffEscrow | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVault | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochQueue | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochVariant | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVault | unmatched — not counted | — | listed in scope | no |
| Link | GuardedLaunchUpgradable | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochVariant | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDO | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOStorage | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOTranche | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVault | unmatched — not counted | — | listed in scope | no |
| Link | GuardedLaunchUpgradable | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochVariant | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDO | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOStorage | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOTranche | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVaultWriteOffEscrow | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVault | unmatched — not counted | — | listed in scope | no |
| Link | Constants | unmatched — not counted | — | listed in scope | no |
| Link | EmergencyUtils | unmatched — not counted | — | listed in scope | no |
| Link | ParetoDollar | unmatched — not counted | — | listed in scope | no |
| Link | ParetoDollarQueue | unmatched — not counted | — | listed in scope | no |
| Link | ParetoDollarStaking | unmatched — not counted | — | listed in scope | no |
| Link | IParetoDollar | unmatched — not counted | — | listed in scope | no |
| Link | IParetoDollarQueue | unmatched — not counted | — | listed in scope | no |
| Link | IParetoDollarStaking | unmatched — not counted | — | listed in scope | no |
| Link | Constants | unmatched — not counted | — | listed in scope table | no |
| Link | EmergencyUtils | unmatched — not counted | — | listed in scope table | no |
| Link | ParetoDollar | unmatched — not counted | — | listed in scope table | no |
| Link | ParetoDollarQueue | unmatched — not counted | — | listed in scope table | no |
| Link | ParetoDollarStaking | unmatched — not counted | — | listed in scope table | no |
| Link | IParetoDollar | unmatched — not counted | — | listed in scope table | no |
| Link | IParetoDollarQueue | unmatched — not counted | — | listed in scope table | no |
| Link | ParetoDollarQueue | unmatched — not counted | — | listed in scope | no |
| Link | ParetoDollarStaking | unmatched — not counted | — | listed in scope | no |
| Link | EmergencyUtils | unmatched — not counted | — | listed in scope | no |
| Link | ParetoDollar | unmatched — not counted | — | listed in scope | no |
| Link | Deploy | unmatched — not counted | — | mentioned in findings | no |
| Link | GuardedLaunchUpgradable | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDO | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochQueue | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochVariant | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOStorage | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOTranche | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVault | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0x45f4fb...e31ee4` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 121 |
| upstream | 6 |
| standard_library | 35 |
| needs_review | 42 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 20
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 123 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=20
- Match method counts: n/a

Zero-match audit list:

- [17952] Link
- [17953] Link
- [17954] Link
- [17955] Link
- [17956] Link
- [17957] Link
- [17958] Link
- [17959] Link
- [17960] Link
- [17961] Link
- [17962] Link
- [17963] Link
- [17964] Link
- [17965] Link
- [17966] Link
- [17967] Link
- [17968] Link
- [17969] Link
- [17970] Link
- [17971] Link

Fork inheritance lineage and inherited audits are included when available.
