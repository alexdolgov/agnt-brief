# Agentic Audit Brief: Lynx

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

- Project: Lynx (`lynx`)
- Website: [https://app.lynx.finance/](https://app.lynx.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, mode, optimism, polygon, sei, sonic
- Contract surface: 375 unique implementations (375 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $235,252.33
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Lynx. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, base, bsc, ethereum, mode, optimism, polygon, sei, sonic. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- EngineChip (`0x0e7a7a...2a70fc`, chain 146)

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 374 discovered implementations excluded (0 third-party/infra; 28 standard proxy/library)
- Proxy deployments represented within implementation groups: 47
- Deployed-live implementations: 1 of 375 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 375
- Raw deployments: 375
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

### ⚠️ Verified + Unaudited (375)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccruedRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1f030e...0641a0` | ⚠️ Unaudited |
| ActivePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x326398...cf3b27` | ⚠️ Unaudited |
| AddressesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x8d5b09...687f73` | ⚠️ Unaudited |
| AdminContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x4928c8...db3d14` | ⚠️ Unaudited |
| AerodromeV2Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x0111f3...846d8a` | ⚠️ Unaudited |
| AirdropClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0797c9...f0c260` | ⚠️ Unaudited |
| Airdropper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x521dd8...f5dd1f` | ⚠️ Unaudited |
| AlgebraSwapLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x5ca3fd...20f3c8` | ⚠️ Unaudited |
| AlgebraVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc21af3...e4e5e6` | ⚠️ Unaudited |
| ArcadeMemecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x577fde...64341d` | ⚠️ Unaudited |
| AuctionProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97ab68...ee0fd3` | ⚠️ Unaudited |
| AuthoritiesRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x5d7480...91738e` | ⚠️ Unaudited |
| AutoRedemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06af8d...a6e0b3` | ⚠️ Unaudited |
| AutoRedemptionV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x318fa8...f1cbdb` | ⚠️ Unaudited |
| BaseBridgeHelperModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x362dbd...655b26` | ⚠️ Unaudited |
| BasicLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x168901...6fd311` | ⚠️ Unaudited |
| BnbOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x097c2c...315bc2` | ⚠️ Unaudited |
| BooMirrorWorld | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa95ea1...f5d605` | ⚠️ Unaudited |
| BooOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7a0c53...6cb384` | ⚠️ Unaudited |
| BorrowerOperations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b4258...850637` | ⚠️ Unaudited |
| BrewBooV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x79710d...c8b179` | ⚠️ Unaudited |
| BribeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6855d5...e3304f` | ⚠️ Unaudited |
| BribeRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x161a72...b7f8a7` | ⚠️ Unaudited |
| BridgedBaseWOETHProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xd87243...bbf839` | ⚠️ Unaudited |
| BridgedWOETHStrategyProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x80c864...acf835` | ⚠️ Unaudited |
| CCTPHookWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6d04c7...f79670` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x0bf353...8e6c75` | ⚠️ Unaudited |
| CErc20Immutable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x066c98...d2848d` | ⚠️ Unaudited |
| CErc20PluginDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x0effea...224126` | ⚠️ Unaudited |
| CErc20PluginRewardsDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x798ee0...5884d1` | ⚠️ Unaudited |
| CErc20RewardsDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x286703...786244` | ⚠️ Unaudited |
| CErc20Upgradable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05ebda...0a29ad` | ⚠️ Unaudited |
| CerosRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ba023...44e8ca` | ⚠️ Unaudited |
| CeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x200004...e42fc8` | ⚠️ Unaudited |
| CeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x054536...f8b015` | ⚠️ Unaudited |
| Claim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1026e6...6fd17f` | ⚠️ Unaudited |
| ClaimBribesSafeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x26179a...28e759` | ⚠️ Unaudited |
| ClaimFeesMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0fe846...4a2f83` | ⚠️ Unaudited |
| ClaimPrivate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb49615...03792a` | ⚠️ Unaudited |
| CollateralSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xc10fd8...27ebeb` | ⚠️ Unaudited |
| CollSurplusPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc818f8...0af15c` | ⚠️ Unaudited |
| CombinedDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7fe031...2c9bf5` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0bc22a...044984` | ⚠️ Unaudited |
| ComptrollerFirstExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x639322...35f3a0` | ⚠️ Unaudited |
| ComptrollerPrudentiaCapsExt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x0a183b...87bee4` | ⚠️ Unaudited |
| ContractPermissionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1125ae...7ffc6d` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x23c717...6ac713` | ⚠️ Unaudited |
| CrossChainRemoteStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5f81a5...e7a92d` | ⚠️ Unaudited |
| CTokenFirstExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x13b727...81fa14` | ⚠️ Unaudited |
| DefaultPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x24ae02...8b09e7` | ⚠️ Unaudited |
| Directory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe57e0...e56866` | ⚠️ Unaudited |
| DirectStakingBaseHandlerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdb282a...b4c1e3` | ⚠️ Unaudited |
| DirectStakingHandlerL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x851de5...37904b` | ⚠️ Unaudited |
| Dog | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x077cf8...e43724` | ⚠️ Unaudited |
| DragonswapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x71f6b4...bca03d` | ⚠️ Unaudited |
| DragonswapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xa4cf2f...5712f2` | ⚠️ Unaudited |
| DragonswapStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x0d579d...89a896` | ⚠️ Unaudited |
| DragonswapStakerBoosted | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x69d40c...c708df` | ⚠️ Unaudited |
| DragonswapStakerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x349752...1d4e2d` | ⚠️ Unaudited |
| DummyERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe0143c...f78eb9` | ⚠️ Unaudited |
| EmergencyShutdown | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac6295...a61b2d` | ⚠️ Unaudited |
| EngineChip | unknown | project_anchor | own_supporting | 0 | sonic | unit-245802 | `0x0e7a7a...2a70fc` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x184700...bc34ca` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xc49b73...c631d0` | ⚠️ Unaudited |
| ERC20Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadd353...4dafe4` | ⚠️ Unaudited |
| ERC20WarpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbf5899...24f4ea` | ⚠️ Unaudited |
| EUROsArbitrumL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x643b34...f940e9` | ⚠️ Unaudited |
| ExternalRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2b1d11...ae2597` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x157030...170ad0` | ⚠️ Unaudited |
| Farming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe2aec5...88e538` | ⚠️ Unaudited |
| FarmLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5657ab...03809b` | ⚠️ Unaudited |
| FarmZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa3db21...3c6cd3` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d2c4a...cb2a09` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x9a0af9...6fceec` | ⚠️ Unaudited |
| FeeSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2bb0bd...748e0b` | ⚠️ Unaudited |
| FixedNativePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x1d7669...cbc28a` | ⚠️ Unaudited |
| FixedPriceAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x118e30...27d3a0` | ⚠️ Unaudited |
| Fly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1b3bbc...37333a` | ⚠️ Unaudited |
| Fundraising | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5b8978...f81e5f` | ⚠️ Unaudited |
| GasPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d8bb5...214b6d` | ⚠️ Unaudited |
| GaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x330b0a...1a5094` | ⚠️ Unaudited |
| GaugeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x04259a...08987a` | ⚠️ Unaudited |
| GemJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x121a62...ac3997` | ⚠️ Unaudited |
| GlobalPauser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x5d4983...a50e3f` | ⚠️ Unaudited |
| GovernanceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xabbf70...c07eed` | ⚠️ Unaudited |
| GovernanceTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b94ca...c13360` | ⚠️ Unaudited |
| gravETH_L2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17abbb...f2203b` | ⚠️ Unaudited |
| GravitaDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x894134...cb9487` | ⚠️ Unaudited |
| Hay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c9ec4...b34ad5` | ⚠️ Unaudited |
| HayJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26efd4...d2f1d8` | ⚠️ Unaudited |
| hBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ade62...4144bb` | ⚠️ Unaudited |
| HelioProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x106cda...77f6a6` | ⚠️ Unaudited |
| HelioRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ed005...fe09cc` | ⚠️ Unaudited |
| IncentiveVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce7bc1...f2b0fc` | ⚠️ Unaudited |
| Interaction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d4b95...dbf9bc` | ⚠️ Unaudited |
| IonicFlywheel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x4e2dfa...be517e` | ⚠️ Unaudited |
| IonicFlywheelBorrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x476326...025996` | ⚠️ Unaudited |
| IonicFlywheelBorrowBooster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xd2ea2d...a29b14` | ⚠️ Unaudited |
| IonicFlywheelDynamicRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x02f606...20d11f` | ⚠️ Unaudited |
| IonicFlywheelLensRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x01ab48...a5e449` | ⚠️ Unaudited |
| IonicToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xd07cd8...272164` | ⚠️ Unaudited |
| IonicUniV3Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x0472de...740a9d` | ⚠️ Unaudited |
| Jug | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2655e7...6db7af` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x21a455...217817` | ⚠️ Unaudited |
| JumpRateModelV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c0348...f5d50a` | ⚠️ Unaudited |
| LBFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x39d966...d6ee43` | ⚠️ Unaudited |
| LBHooksExtraRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0a82b2...d89e26` | ⚠️ Unaudited |
| LBHooksLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x087495...70e1a1` | ⚠️ Unaudited |
| LBHooksManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4962db...27f7ac` | ⚠️ Unaudited |
| LBHooksMCRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x78ceff...203388` | ⚠️ Unaudited |
| LBHooksSimpleRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x068812...531cb6` | ⚠️ Unaudited |
| LBPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xce7f2a...d416e4` | ⚠️ Unaudited |
| LBQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5277be...c6cc49` | ⚠️ Unaudited |
| LBRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x596eeb...ffb881` | ⚠️ Unaudited |
| LeveredPositionFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x9b506a...40cd45` | ⚠️ Unaudited |
| LeveredPositionFactoryFirstExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x4e20eb...737fea` | ⚠️ Unaudited |
| LeveredPositionFactorySecondExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x14bb1c...e6d000` | ⚠️ Unaudited |
| LeveredPositionsLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xd9a567...0f3a28` | ⚠️ Unaudited |
| LinearDecrease | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x271d20...10dd28` | ⚠️ Unaudited |
| LiquidationAutomation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b218f...51c746` | ⚠️ Unaudited |
| LiquidationPoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a823e...d29910` | ⚠️ Unaudited |
| LiquidatorsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xae2647...42cd6a` | ⚠️ Unaudited |
| LiquidatorsRegistryExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x3fa4bc...93d621` | ⚠️ Unaudited |
| LiquidatorsRegistrySecondExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x139bd5...d03900` | ⚠️ Unaudited |
| LiquidityGenerator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x17063a...a00ed7` | ⚠️ Unaudited |
| LiquidityHelperContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4f95b0...774b20` | ⚠️ Unaudited |
| Lizard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x463913...8d3b0e` | ⚠️ Unaudited |
| LizardETHStg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x425c29...15ad17` | ⚠️ Unaudited |
| LizardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x734d84...407074` | ⚠️ Unaudited |
| LizardMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d24e9...05ec3c` | ⚠️ Unaudited |
| LizardRouter01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf26515...94b3d0` | ⚠️ Unaudited |
| LizardSink | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b194a...d9075f` | ⚠️ Unaudited |
| LizardStrategyETHStgV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x20a8db...786c44` | ⚠️ Unaudited |
| LizardStrategyETHStgV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc29f9...adf624` | ⚠️ Unaudited |
| LizardStrategyUsdcStgV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x758d04...97e143` | ⚠️ Unaudited |
| LizardStrategyUsdcStgV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75524e...6bed23` | ⚠️ Unaudited |
| LizardStrategyUsdtStgV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe119c6...67807b` | ⚠️ Unaudited |
| LizardStrategyUsdtStgV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc37a6d...3dcae5` | ⚠️ Unaudited |
| LizardTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2c1c69...e6dd25` | ⚠️ Unaudited |
| LizardUsdcChronos | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48e435...74b15f` | ⚠️ Unaudited |
| LizardUsdcStg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x54355c...a65db5` | ⚠️ Unaudited |
| LizardUsdtStg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f456a...303db9` | ⚠️ Unaudited |
| LizardVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x98a1de...3f99cc` | ⚠️ Unaudited |
| LooplessFlywheelBooster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x1d89e5...ce47b4` | ⚠️ Unaudited |
| LUDWIG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe6cc4d...1764b5` | ⚠️ Unaudited |
| LudwigTosser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x002b9e...623237` | ⚠️ Unaudited |
| MagpieProtocolSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x52bebb...4ad9d3` | ⚠️ Unaudited |
| MagpieRouterCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbdb12d...b16856` | ⚠️ Unaudited |
| MagpieRouterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xba7bac...07b104` | ⚠️ Unaudited |
| MagpieRouterV3_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc32585...5e65a9` | ⚠️ Unaudited |
| MasterChefRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x501c47...fdefd8` | ⚠️ Unaudited |
| MasterPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x4e7676...e3c9ae` | ⚠️ Unaudited |
| Math | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91f095...826fda` | ⚠️ Unaudited |
| MerkleAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6b38c5...a71df9` | ⚠️ Unaudited |
| MerkleTree | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x36daa5...6f6419` | ⚠️ Unaudited |
| MerkleTreeSWPxNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x665bd4...dd8e5f` | ⚠️ Unaudited |
| Metro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x71e995...1f7321` | ⚠️ Unaudited |
| MetroFairLaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1f18af...9b6609` | ⚠️ Unaudited |
| MetroGem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8a3b1c...f350db` | ⚠️ Unaudited |
| MetroGem2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1ae89c...e37a5e` | ⚠️ Unaudited |
| MetroStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb7b785...8ceb8b` | ⚠️ Unaudited |
| MetroStaking2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x197e72...f3b254` | ⚠️ Unaudited |
| MinterUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4fe93c...f80589` | ⚠️ Unaudited |
| MixedPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ad3c5...845cd6` | ⚠️ Unaudited |
| MixedPriceOracleWithLST | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x075507...dc62a9` | ⚠️ Unaudited |
| MixedPriceOracleWithWstETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58d8e6...e48e37` | ⚠️ Unaudited |
| MixedPriceOracleWithWstETHv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x155ae3...96a030` | ⚠️ Unaudited |
| ModeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x74b847...b8c6b4` | ⚠️ Unaudited |
| ModeOKXCampaign | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x3bb530...028b3a` | ⚠️ Unaudited |
| ModeOKXNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x4ef75d...d194de` | ⚠️ Unaudited |
| MonolithicVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x51f029...f12ee0` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa5ae26...046856` | ⚠️ Unaudited |
| NFTMetadataGenerator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c7027...012c54` | ⚠️ Unaudited |
| NFTUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5f2ae...3ac039` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x839216...db3b55` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7d0776...53d32d` | ⚠️ Unaudited |
| OETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10b342...439989` | ⚠️ Unaudited |
| OETHBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c62a3...b82be9` | ⚠️ Unaudited |
| OETHBaseDripperProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x02f2c6...d7f8d6` | ⚠️ Unaudited |
| OETHBaseHarvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa50fd5...5ffad8` | ⚠️ Unaudited |
| OETHBaseHarvesterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x0cbeac...54c22e` | ⚠️ Unaudited |
| OETHBaseOracleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbc80da...97c75b` | ⚠️ Unaudited |
| OETHBaseVaultAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd50f7d...70d1a7` | ⚠️ Unaudited |
| OETHBaseVaultCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4a759f...6caaab` | ⚠️ Unaudited |
| OETHBaseVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x98a0cb...38cc93` | ⚠️ Unaudited |
| OETHBaseZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b56c0...4d2bc1` | ⚠️ Unaudited |
| OETHbHydrexAMOProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6bebe...08d9c3` | ⚠️ Unaudited |
| OETHbHydrexAMOStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc5d369...4f38e0` | ⚠️ Unaudited |
| OETHDripper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0030c7...e6b16a` | ⚠️ Unaudited |
| OETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe9f783...92fd66` | ⚠️ Unaudited |
| OETHVaultValueChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d98cf...7bcf6a` | ⚠️ Unaudited |
| OFTChipAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x028815...37068f` | ⚠️ Unaudited |
| OptimizedVaultsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x2ddf3d...aed83c` | ⚠️ Unaudited |
| OracleRewardVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x19d815...49a387` | ⚠️ Unaudited |
| OSonic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x170526...5857c6` | ⚠️ Unaudited |
| OSonicDripperProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb570a2...3182ba` | ⚠️ Unaudited |
| OSonicOracleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe68e0c...c4e88b` | ⚠️ Unaudited |
| OSonicVaultAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1a44f4...9ec59f` | ⚠️ Unaudited |
| OSonicVaultCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x087a3e...8dcbd9` | ⚠️ Unaudited |
| OSonicVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x062225...13f3d2` | ⚠️ Unaudited |
| OSonicVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xa3c0ec...180186` | ⚠️ Unaudited |
| OSonicZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8bb678...7d07ac` | ⚠️ Unaudited |
| OUSDVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa96fd1...3820f9` | ⚠️ Unaudited |
| OwnedDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2ba860...99ffc5` | ⚠️ Unaudited |
| PairV2Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x43cec2...52a86e` | ⚠️ Unaudited |
| PancakeProxyForDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a4304...28bf8e` | ⚠️ Unaudited |
| PancakeStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06ed12...e40123` | ⚠️ Unaudited |
| PermissionedRebaseModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf63398...9d4a37` | ⚠️ Unaudited |
| PermissionsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8751ea...4ed487` | ⚠️ Unaudited |
| Permit2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x981ef1...162723` | ⚠️ Unaudited |
| PoolBoostCentralRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x246594...24b3b3` | ⚠️ Unaudited |
| PoolBoostCentralRegistryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7c5cb7...4ca4a7` | ⚠️ Unaudited |
| PoolBoosterFactorySwapxDouble | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x27281c...5f7689` | ⚠️ Unaudited |
| PoolDirectory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x20808c...ea1d2d` | ⚠️ Unaudited |
| PoolLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x431c87...7ed480` | ⚠️ Unaudited |
| PoolLensSecondary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x7ea7bb...0d4154` | ⚠️ Unaudited |
| PoolLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x22ae6b...7694f7` | ⚠️ Unaudited |
| PriceCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbda964...e86175` | ⚠️ Unaudited |
| PriceFeedL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x532e0c...f81b75` | ⚠️ Unaudited |
| PriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x22c7e5...1c0fea` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x017ee6...75dbe2` | ⚠️ Unaudited |
| ProxyAdmin2Step | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x35de16...73cfee` | ⚠️ Unaudited |
| PrudentiaInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x3fa7f3...0275e1` | ⚠️ Unaudited |
| PublicSaleTokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x2f0a2b...1b72dc` | ⚠️ Unaudited |
| PythAggregatorAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x31b803...742ab0` | ⚠️ Unaudited |
| PythPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x13fd27...441794` | ⚠️ Unaudited |
| PythPriceOracleDmBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xac986b...4b342e` | ⚠️ Unaudited |
| QiStablecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa3fa99...6997f1` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x593856...d1aa68` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3f2026...388234` | ⚠️ Unaudited |
| RateLimitMidpointCommonLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9713a9...743577` | ⚠️ Unaudited |
| RedstoneAdapterPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x63a153...3e1e0a` | ⚠️ Unaudited |
| RedstoneAdapterPriceOracleWeETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x9c0819...03de78` | ⚠️ Unaudited |
| RedstoneAdapterPriceOracleWrsETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xe3643f...8979e8` | ⚠️ Unaudited |
| ReferralDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x85b08f...884422` | ⚠️ Unaudited |
| ReserveManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb112e4...bfb110` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x354a65...4fcb8f` | ⚠️ Unaudited |
| RewarderFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6122dc...8bdaf4` | ⚠️ Unaudited |
| RewardGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x212ed9...f4735b` | ⚠️ Unaudited |
| RewardGatewayTST | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a29c7...25f11b` | ⚠️ Unaudited |
| RewardHolder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19c348...884050` | ⚠️ Unaudited |
| RewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5da3ea...c3f5c2` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1c236d...4c94d3` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x95a7e4...a49fa3` | ⚠️ Unaudited |
| RouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbfe77a...282c18` | ⚠️ Unaudited |
| Royalties | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x522dc8...1a9cd3` | ⚠️ Unaudited |
| RZR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb44444...cbd1f5` | ⚠️ Unaudited |
| SCALES | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6af84...e3d16f` | ⚠️ Unaudited |
| ScalesDevFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2fbfce...00d31a` | ⚠️ Unaudited |
| ScalesStakingAndMiningFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b7eb9...5d07c5` | ⚠️ Unaudited |
| ScalesTreasuryFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x364064...87ae16` | ⚠️ Unaudited |
| SfrxEth2EthPriceAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03d9a5...6d35f3` | ⚠️ Unaudited |
| Sigma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x1f6c2e...257b5a` | ⚠️ Unaudited |
| Silver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x005851...edebc1` | ⚠️ Unaudited |
| SilverBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf38251...d144ba` | ⚠️ Unaudited |
| SilverDcaApprover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6f631f...c9fb07` | ⚠️ Unaudited |
| SilverFees | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xec08f8...01e1f4` | ⚠️ Unaudited |
| SilverFeesGiveaway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4cfbb2...7177a7` | ⚠️ Unaudited |
| SilverFlareProgram | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x15db03...ccf33b` | ⚠️ Unaudited |
| SilverLswManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0e5edd...57720f` | ⚠️ Unaudited |
| SilverLswTaskManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x055ab7...59165b` | ⚠️ Unaudited |
| SilverMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2397d6...b0692a` | ⚠️ Unaudited |
| SilverStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0527f8...722753` | ⚠️ Unaudited |
| SilverStakeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x01f332...129a50` | ⚠️ Unaudited |
| SilverSwapDCA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2050f8...93fad8` | ⚠️ Unaudited |
| SilverVoteLSW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x16272d...0ee820` | ⚠️ Unaudited |
| SimplePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xcd4d7c...d3ba5c` | ⚠️ Unaudited |
| SLLendTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x46325b...b939eb` | ⚠️ Unaudited |
| SmartVaultDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x53509e...57cc25` | ⚠️ Unaudited |
| SmartVaultDeployerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f24a6...6cfc4d` | ⚠️ Unaudited |
| SmartVaultDeployerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa48793...188278` | ⚠️ Unaudited |
| SmartVaultDeployerV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02e7c4...579b6e` | ⚠️ Unaudited |
| SmartVaultIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e2364...3f3042` | ⚠️ Unaudited |
| SmartVaultManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d420f...d9cfb5` | ⚠️ Unaudited |
| SmartVaultManagerNewNFTGenerator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa854ab...ac8ec4` | ⚠️ Unaudited |
| SmartVaultManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a8d1b...f63052` | ⚠️ Unaudited |
| SmartVaultManagerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d8c3f...ba5454` | ⚠️ Unaudited |
| SmartVaultManagerV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6669bc...0d633d` | ⚠️ Unaudited |
| SmartVaultManagerV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x855808...2b344f` | ⚠️ Unaudited |
| SmartVaultManagerV52 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7c1acd...be543d` | ⚠️ Unaudited |
| SmartVaultManagerV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x496ab4...5322fb` | ⚠️ Unaudited |
| SmartVaultYieldManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x172df1...dd7ae9` | ⚠️ Unaudited |
| Sonne | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1db246...2245f0` | ⚠️ Unaudited |
| SonneTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5b22bd...e163b0` | ⚠️ Unaudited |
| SourceChainRegistryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x188c47...f79170` | ⚠️ Unaudited |
| SpookyLaunchpad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb52c0e...850c31` | ⚠️ Unaudited |
| Spotter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49896d...d9fe47` | ⚠️ Unaudited |
| StabilityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x0a3137...b7bdfa` | ⚠️ Unaudited |
| STABLE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x666966...e73451` | ⚠️ Unaudited |
| StakedDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x08153c...f5e0b1` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b3fc1...a24d6c` | ⚠️ Unaudited |
| StakingTST | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a41e9...72a57e` | ⚠️ Unaudited |
| StandardArbERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xf5a27e...f7fd2e` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x181713...c85e80` | ⚠️ Unaudited |
| SuperchainIronclad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x7b4779...3dfc6c` | ⚠️ Unaudited |
| SwapLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d598b...1c6df4` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0c2bc0...abdd87` | ⚠️ Unaudited |
| SwapxTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3648af...e76a76` | ⚠️ Unaudited |
| SWPx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x90c442...d8ebdf` | ⚠️ Unaudited |
| SWPxNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x619057...754ba0` | ⚠️ Unaudited |
| SWPxNFTFeeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4053ec...c07de0` | ⚠️ Unaudited |
| TestToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0f4006...3c1766` | ⚠️ Unaudited |
| TestVRF | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1c1a74...984904` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x71d0f7...ac1bac` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09dfdf...cd3d7b` | ⚠️ Unaudited |
| TimelockAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5aa59f...8d7dc6` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c8f85...cfe9cf` | ⚠️ Unaudited |
| TimelockMain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1e6ca6...ee2a0f` | ⚠️ Unaudited |
| TokenManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x33c5a8...3a32a0` | ⚠️ Unaudited |
| TokenTEST | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x682ad6...095241` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x93e635...9409d9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0782b6...dc41e5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0a1fd1...59717e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2078a1...cb9fa7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x25b214...9eee5e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2dcfb0...4c0292` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x4b30fc...2ed6f6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x574f1a...3f2bf4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x5a2ccc...314b7c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x64d94e...ec6aaa` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xa835f8...67ed0b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xd5193c...8e2cd1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xe8bac3...c8e3cd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x0326bc...69b120` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x05c1be...7f5663` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x082c47...7f4069` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x1fb164...85b6b3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x2ec58a...31c4ff` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x329d9c...83e397` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x40247b...d5bf3f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x50ead8...875458` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x55e342...2e1532` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x86fa3c...1345c0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0xa194e7...a43846` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0xc1ae27...c407f2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x6c49e1...93940f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x04ffa5...c1cfb0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x1e59c4...443d17` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xa2296e...dafeeb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy2Step | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x03a989...891fda` | ⚠️ Unaudited |
| TransparentUpgradeableProxy2Step | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x0444a9...c955ed` | ⚠️ Unaudited |
| TransparentUpgradeableProxy2Step | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x116507...837d6f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy2Step | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x1a5ded...6e03da` | ⚠️ Unaudited |
| uniBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x94c7f8...cce2b3` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7d6969...8d6778` | ⚠️ Unaudited |
| UniversalRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x55d10e...4ebef8` | ⚠️ Unaudited |
| USDFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x249c48...3c0916` | ⚠️ Unaudited |
| USDsArbitrumL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd6b580...bbf1dd` | ⚠️ Unaudited |
| USDsSupplyLimit | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x2ea0be...04622d` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x865c43...ab92fa` | ⚠️ Unaudited |
| Vat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12c688...5708a6` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x08cb45...46775d` | ⚠️ Unaudited |
| VaultValueChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x06f172...3d2c40` | ⚠️ Unaudited |
| Ve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29d362...e293e4` | ⚠️ Unaudited |
| VeArtProxyUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8ee87f...31b275` | ⚠️ Unaudited |
| VeDist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbfa51d...539b86` | ⚠️ Unaudited |
| VelodromePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x9bb6ef...fce2a9` | ⚠️ Unaudited |
| VelodromeV2Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xa1abf9...fb33ec` | ⚠️ Unaudited |
| VeLogo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf699ed...8ff064` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7912f3...e01b3b` | ⚠️ Unaudited |
| VesselManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5bd5b4...5c92ee` | ⚠️ Unaudited |
| VesselManagerOperations | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x15f744...1eefe4` | ⚠️ Unaudited |
| VesterCliff | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb4bf17...517971` | ⚠️ Unaudited |
| VesterSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8e1036...37ad10` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3dc1dd...2ca12e` | ⚠️ Unaudited |
| WOETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9745a0...52d478` | ⚠️ Unaudited |
| WOETHBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2e1826...583408` | ⚠️ Unaudited |
| WOSonic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1ccb48...6c5805` | ⚠️ Unaudited |
| WOSonicProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x52a10d...de8342` | ⚠️ Unaudited |
| WSSEI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xe30fed...95e8c7` | ⚠️ Unaudited |
| WstEth2UsdPriceAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8bbf5c...ca3e44` | ⚠️ Unaudited |
| xERC20Hyperlane | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xb81ab9...5319eb` | ⚠️ Unaudited |
| XFly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5cced4...fb84de` | ⚠️ Unaudited |
| xPOKT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0384e7...8c8105` | ⚠️ Unaudited |
| XSCALES | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa433ad...dd037c` | ⚠️ Unaudited |

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
| sonic | `0x0e7a7a...2a70fc` | EngineChip | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 339 |
| upstream | 3 |
| standard_library | 33 |
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
