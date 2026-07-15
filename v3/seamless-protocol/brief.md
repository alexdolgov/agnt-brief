# Agentic Audit Brief: Seamless Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 11 across 3 audit(s)
- Eligible audit results: 5 (3 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Seamless Protocol (`seamless-protocol`)
- Website: [https://www.seamlessprotocol.com](https://www.seamlessprotocol.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum
- Contract surface: 194 unique implementations (327 raw deployments)
- Coverage basis: 5/45 confirmed own live verified implementations (11.1%); conservative 11.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $15,656,122.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Seamless Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 61 contract row(s) across base, ethereum. Structural roles: 30 unclassified, 18 supporting, 13 core. 27 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 61
- Structural roles: unclassified (30), supporting (18), core (13)
- Contract kinds: contract (56), abstract (5)
- Detected standards: erc20 (5), erc20permit (5), ownable (5), erc1967proxy (4), erc165 (3), erc4626 (3), multicall (3), ownable2step (3), accesscontrol (2)
- Frameworks: openzeppelin-upgradeable (25), openzeppelin (3), aave (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 27

## Fork Analysis

0 of 55 contracts are derived from known codebases. 55 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x42fc03...d081af`, chain 1)
- UnnamedContract (`0x5e6b01...c30110`, chain 1)
- UnnamedContract (`0x604d37...0b97a3`, chain 1)
- UnnamedContract (`0x642681...c0fc3d`, chain 1)
- UnnamedContract (`0x821ded...615bd7`, chain 1)
- UnnamedContract (`0x98c4e4...3ed1bf`, chain 1)
- UnnamedContract (`0xc73ce5...b3033f`, chain 1)
- UnnamedContract (`0xf7356e...d6a69f`, chain 1)
- UnnamedContract (`0x585cc1...f65c51`, chain 8453)
- UnnamedContract (`0xa2fcee...1dbb8c`, chain 8453)
- UnnamedContract (`0xdd3341...e68e61`, chain 8453)
- BeaconProxyFactory (`0x603da7...ff0a82`, chain 1)
- BeaconProxyFactory (`0xe0b2e4...1abe57`, chain 8453)
- ERC20TransferStrategy (`0xd90eac...be55bb`, chain 8453)
- EscrowSeam (`0x78423b...09fbb1`, chain 8453)
- FeeKeeper (`0x21033e...b8d65b`, chain 8453)
- GnosisSafeProxy (`0xa1b5f2...955a22`, chain 8453)
- InitializableAdminUpgradeabilityProxy (`0x2c6dc2...2adb93`, chain 8453)
- InitializableAdminUpgradeabilityProxy (`0x982f3a...af1089`, chain 8453)
- LeverageManager (`0x9d04f6...64220e`, chain 1)
- LeverageManager (`0xeb0221...bb2b7c`, chain 8453)
- LeverageManager (`0xfe9101...2e1856`, chain 8453)
- LeverageRouter (`0xb0764d...6e6dba`, chain 1)
- LeverageRouter (`0x00c669...a11a5c`, chain 8453)
- LeverageRouter (`0xdba92f...9a887c`, chain 8453)
- LeverageToken (`0xfe9101...2e1856`, chain 1)
- LeverageToken (`0x057a2a...537673`, chain 8453)
- LeverageToken (`0x603da7...ff0a82`, chain 8453)
- MetaMorphoV1_1 (`0x27d8c7...c65c18`, chain 8453)
- MetaMorphoV1_1 (`0x5a47c8...22f3c7`, chain 8453)
- MetaMorphoV1_1 (`0x616a4e...273738`, chain 8453)
- MorphoLendingAdapter (`0x00c669...a11a5c`, chain 1)
- MorphoLendingAdapter (`0xb224f5...129817`, chain 1)
- MorphoLendingAdapter (`0xcb1eff...3aee58`, chain 1)
- MorphoLendingAdapter (`0xe33eaf...9bd809`, chain 1)
- MorphoLendingAdapter (`0xe9a32a...298f1f`, chain 1)
- MorphoLendingAdapter (`0x9558b3...ab253f`, chain 8453)
- MorphoLendingAdapterFactory (`0xce05fb...7ded71`, chain 1)
- MulticallExecutor (`0x16d02e...fd22e1`, chain 1)
- MulticallExecutor (`0x9d04f6...64220e`, chain 8453)
- PricingAdapter (`0x44cceb...76c88f`, chain 1)
- PricingAdapter (`0xce05fb...7ded71`, chain 8453)
- RewardsController (`0x3dc440...35409d`, chain 8453)
- Seam (`0x57b4b7...aefd3f`, chain 8453)
- SeamAirdrop (`0xb7a653...5c702b`, chain 8453)
- SeamEmissionManager (`0x03eeed...dd9cfa`, chain 8453)
- SeamEmissionManager (`0x1fdfc3...e38f9c`, chain 8453)
- SeamGovernorV2 (`0xc3a36d...a9baef`, chain 8453)
- SeamL1 (`0x6b66cc...e726ba`, chain 1)
- SeamTimelockController (`0x13f5b4...b35e6f`, chain 8453)
- SeamTimelockController (`0xbe170d...ff790d`, chain 8453)
- StakedToken (`0xc45f94...8773de`, chain 8453)
- SwapAdapter (`0xfdf71e...e38942`, chain 8453)
- VeloraAdapter (`0xc4e581...7db6ba`, chain 1)
- VeloraAdapter (`0x5c37eb...b3e351`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 61; live-surface rows included: 61 (61 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 56/60 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/45 (11.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 56 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 138 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 83
- Confirmed-live implementations: 56 of 194 unique; 138 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 5/174
- Verified + Unaudited implementations: 169
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 194
- Raw deployments: 327
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 4 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 11.1% (Sherlock, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 5 | 2.9% | 2025-05 |
| Spearbit | Tier 1 | 5 | 2.9% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LeverageRouter | adapter | project_anchor | own_supporting | 0 | base | unit-392475 | `0xdba92f...9a887c` | ✅ Audited |
| LeverageToken | unknown | project_anchor | own_supporting | 1 | base | unit-392487 | 2 deployments: base `0x603da7...ff0a82`; base `0xe0b2e4...1abe57` | ✅ Audited |
| MorphoLendingAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-392469 | `0x9558b3...ab253f` | ✅ Audited |
| MorphoLendingAdapterFactory | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392454 | `0xce05fb...7ded71` | ✅ Audited |
| SwapAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-392478 | `0xfdf71e...e38942` | ✅ Audited |

### ⚠️ Verified + Unaudited (169)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveEcosystemReserveV2 | unknown | project_anchor | own_supporting | 1 | base | unit-392492 | `0x982f3a...af1089` | ⚠️ Unaudited |
| AaveOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfdd4e8...753b01` | ⚠️ Unaudited |
| ACLManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x003c2a...e3d0b5`; base `0x38f5c0...dfc184` | ⚠️ Unaudited |
| AerodromeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6cfc78...b1dcb2` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x27076a...27a8db` | ⚠️ Unaudited |
| BorrowLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xa40949...43d6fb`; base `0xac0b0d...f3f70a` | ⚠️ Unaudited |
| BridgeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x1d9eca...d44551`; base `0x76402a...c42f18` | ⚠️ Unaudited |
| CalldataLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2182b9...fe8d2e` | ⚠️ Unaudited |
| CapsPlusRiskSteward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x789aae...bad568` | ⚠️ Unaudited |
| CLSynchronicityPriceAdapterPegToBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x5c8552...bc76a4`; base `0xd81521...2caa76` | ⚠️ Unaudited |
| ConfiguratorLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5d6fcd...f17895` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 12 deployments: base `0x0d147d...ded911`; base `0x0ffc58...db9210`; base `0x34684b...921d4a`; base `0x35ba11...38c6a2`; base `0x4c1345...f1af5a`; base `0x57a803...7f536d`; base `0x876777...2618cf`; base `0x9610d3...32ae33`; base `0xa193ed...4cc226`; base `0xab74b1...fd2db4`; base `0xaf3bae...3acf2f`; base `0xced653...b963bd` | ⚠️ Unaudited |
| DelegationAwareAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x34697a...f654a6` | ⚠️ Unaudited |
| DeployLoopStrategyETHoverUSDCGuardianPayload | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x391a36...bc0afa` | ⚠️ Unaudited |
| DeployLoopStrategyUSDCoverETHGuardianPayload | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe77232...89aca8` | ⚠️ Unaudited |
| DeployUniversalAerodromeAdapterGuardianPayload | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e269a...b07eea` | ⚠️ Unaudited |
| EmissionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6e081f...141d14` | ⚠️ Unaudited |
| EModeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x5d8df7...d49bad`; base `0x683271...5ab529` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0661df...e4950d`; base `0x07dfe9...6c4926` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4311dc...189134`; base `0xa6d3fc...450f98` | ⚠️ Unaudited |
| ERC20BalanceSplitterTwoPayee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x4878a2...d5909b`; base `0xf07059...8add30`; base `0xfbc092...d8b205` | ⚠️ Unaudited |
| ERC20TransferStrategy | unknown | project_anchor | own_supporting | 0 | base | unit-392458 | `0x003d47...e89753` | ⚠️ Unaudited |
| ERC20TransferStrategy | unknown | project_anchor | own_supporting | 0 | base | unit-392474 | `0xd90eac...be55bb` | ⚠️ Unaudited |
| EscrowSeam | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2c1f4b...9a69c1` | ⚠️ Unaudited |
| EscrowSeam | unknown | project_anchor | own_supporting | 1 | base | unit-392488 | 2 deployments: base `0x78423b...09fbb1`; base `0x998e44...10d5e5` | ⚠️ Unaudited |
| EscrowSeamTransferStrategy | unknown | project_anchor | own_supporting | 0 | base | unit-392461 | `0x2181be...dd89ac` | ⚠️ Unaudited |
| EsSEAMAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xbedb9b...8fdde7`; base `0xf345e9...37de4d` | ⚠️ Unaudited |
| FeeKeeper | unknown | project_anchor | own_supporting | 1 | base | unit-392484 | 2 deployments: base `0x003ee5...21f2f2`; base `0x21033e...b8d65b` | ⚠️ Unaudited |
| FlashLoanLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xcebbf1...877972`; base `0xf9853a...0644ff` | ⚠️ Unaudited |
| Geyser | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | base | n/a | 6 deployments: base `0x0324c7...6c1df7`; base `0x52efbb...160564`; base `0x5d1afc...ec65f1`; base `0x6c6515...10aeb8`; base `0x9f5af0...0fa915`; base `0xac42ef...c7b3ec` | ⚠️ Unaudited |
| GeyserRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd5815f...da89d8` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | base | unit-392494 | `0xa1b5f2...955a22` | ⚠️ Unaudited |
| ILMRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x36291d...f859b3` | ⚠️ Unaudited |
| L2Encoder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcecef4...3cd7cf` | ⚠️ Unaudited |
| L2Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x918e3d...174323` | ⚠️ Unaudited |
| LeverageManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392479 | 2 deployments: ethereum `0x5c37eb...b3e351`; ethereum `0x9d04f6...64220e` | ⚠️ Unaudited |
| LeverageManager | unknown | project_anchor | own_supporting | 1 | base | unit-392495 | 2 deployments: base `0x38ba21...5ec3a8`; base `0xfe9101...2e1856` | ⚠️ Unaudited |
| LeverageManager | unknown | project_anchor | own_supporting | 0 | base | unit-392477 | `0xeb0221...bb2b7c` | ⚠️ Unaudited |
| LeverageRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392449 | `0xb0764d...6e6dba` | ⚠️ Unaudited |
| LeverageRouter | adapter | project_anchor | own_supporting | 0 | base | unit-392459 | `0x00c669...a11a5c` | ⚠️ Unaudited |
| LeverageToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392480 | 2 deployments: ethereum `0x603da7...ff0a82`; ethereum `0xfe9101...2e1856` | ⚠️ Unaudited |
| LeverageToken | unknown | project_anchor | own_supporting | 0 | base | unit-392460 | `0x057a2a...537673` | ⚠️ Unaudited |
| LeverageTokenDeploymentBatcher | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4466d5...0a0352` | ⚠️ Unaudited |
| LiquidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x44659e...cf2dfa`; base `0x524adc...44b837` | ⚠️ Unaudited |
| LoanLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x31da38...a378d6`; base `0x3e61ba...e4acd0`; base `0x7cbb6f...0ca955`; base `0x9bb43b...904c0e` | ⚠️ Unaudited |
| LoopStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0fbc23...1b255e`; base `0x22850a...341571` | ⚠️ Unaudited |
| LoopStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x258730...ea8a4e` | ⚠️ Unaudited |
| LoopStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x2fb1be...ee78f4` | ⚠️ Unaudited |
| LoopStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: base `0x588313...e4eac5`; base `0x9c764c...7cdb67`; base `0xa70c94...8ca97b`; base `0xb94799...f993b7`; base `0xbff0e0...51b2d6`; base `0xc82a72...3cf8ea`; base `0xcefeb9...6fd328` | ⚠️ Unaudited |
| LoopStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x5ed616...c09c8a` | ⚠️ Unaudited |
| LoopStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x68dfad...80291e` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | base | unit-392462 | `0x27d8c7...c65c18` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | base | unit-392465 | `0x5a47c8...22f3c7` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | base | unit-392467 | `0x616a4e...273738` | ⚠️ Unaudited |
| MockAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x602823...976072` | ⚠️ Unaudited |
| MorphoLendingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392436 | `0x00c669...a11a5c` | ⚠️ Unaudited |
| MorphoLendingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392450 | `0xb224f5...129817` | ⚠️ Unaudited |
| MorphoLendingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392453 | `0xcb1eff...3aee58` | ⚠️ Unaudited |
| MorphoLendingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392455 | `0xe33eaf...9bd809` | ⚠️ Unaudited |
| MorphoLendingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392456 | `0xe9a32a...298f1f` | ⚠️ Unaudited |
| MulticallExecutor | periphery | project_anchor | own_supporting | 0 | ethereum | unit-392437 | `0x16d02e...fd22e1` | ⚠️ Unaudited |
| MulticallExecutor | periphery | project_anchor | own_supporting | 0 | base | unit-392470 | `0x9d04f6...64220e` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x16e485...bda6cf` | ⚠️ Unaudited |
| PoolAddressesProvider | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0e02eb...39f3a0` | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x90c505...53ef99` | ⚠️ Unaudited |
| PoolConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbfb739...b086cf` | ⚠️ Unaudited |
| PoolLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xdd59cd...11dd6b`; base `0xe51329...309805` | ⚠️ Unaudited |
| PowerSwitchFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x272b77...073e01` | ⚠️ Unaudited |
| PriceOracleSentinel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x23dc16...a0ee45`; base `0x46f157...ede8bf`; base `0xd228ed...b65571` | ⚠️ Unaudited |
| PricingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392439 | `0x44cceb...76c88f` | ⚠️ Unaudited |
| PricingAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x94e337...b92c4c` | ⚠️ Unaudited |
| PricingAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-392473 | `0xce05fb...7ded71` | ⚠️ Unaudited |
| PullRewardsTransferStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x073d08...5a2634`; base `0xdbe56b...cdc4af`; base `0xf54f6e...955b05` | ⚠️ Unaudited |
| RebalanceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0a4490...d6c127`; ethereum `0x1d0c19...efaec8` | ⚠️ Unaudited |
| RebalanceAdapter | unknown | project_anchor | own_supporting | 1 | base | unit-392493 | 2 deployments: base `0xa530e6...46dd32`; base `0xd923b2...c24912` | ⚠️ Unaudited |
| RebalanceLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x07a4b1...f8a711`; base `0x3f7dd8...ad0223`; base `0xab965e...51ea3e`; base `0xc2cecb...4dfaae` | ⚠️ Unaudited |
| ReservesSetupHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb49db8...a2c91f` | ⚠️ Unaudited |
| RewardPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x56908a...28ff5e` | ⚠️ Unaudited |
| RewardsController | unknown | project_anchor | own_supporting | 1 | base | unit-392485 | 2 deployments: base `0x2c6dc2...2adb93`; base `0x3dc440...35409d` | ⚠️ Unaudited |
| RewardsController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x32688c...ae794d`; base `0x36321e...d1bd89`; base `0x76e720...ca9049`; base `0x8243de...fc2850` | ⚠️ Unaudited |
| RouterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x59a11c...36bdc8` | ⚠️ Unaudited |
| Seam | unknown | project_anchor | own_supporting | 1 | base | unit-392486 | 2 deployments: base `0x1c7a46...88cd85`; base `0x57b4b7...aefd3f` | ⚠️ Unaudited |
| Seam | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x213fb4...513d24`; base `0x5d0ee4...da76ec`; base `0xa900d0...54b8c4`; base `0xbf20ba...3895c1`; base `0xff7c1f...5e7847` | ⚠️ Unaudited |
| SeamAirdrop | unknown | project_anchor | own_supporting | 0 | base | unit-392472 | `0xb7a653...5c702b` | ⚠️ Unaudited |
| SeamEmissionManager | unknown | project_anchor | own_supporting | 1 | base | unit-392481 | 2 deployments: base `0x03eeed...dd9cfa`; base `0x57460d...1b3955` | ⚠️ Unaudited |
| SeamEmissionManager | unknown | project_anchor | own_supporting | 1 | base | unit-392483 | 2 deployments: base `0x1fdfc3...e38f9c`; base `0x785c97...b90778` | ⚠️ Unaudited |
| SeamGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x5acb96...996317`; base `0xc8a0e0...607bfc` | ⚠️ Unaudited |
| SeamGovernorV2 | unknown | project_anchor | own_supporting | 2 | base | unit-392490 (2 proxies) | 3 deployments: base `0x04faa2...e761b6`; base `0x8768c7...0db294`; base `0xc3a36d...a9baef` | ⚠️ Unaudited |
| SeamL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fdf85...417708` | ⚠️ Unaudited |
| SeamL1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392443 | `0x6b66cc...e726ba` | ⚠️ Unaudited |
| SeamTimelockController | unknown | project_anchor | own_supporting | 1 | base | unit-392482 | 2 deployments: base `0x13f5b4...b35e6f`; base `0x639d2d...925fee` | ⚠️ Unaudited |
| SeamTimelockController | unknown | project_anchor | own_supporting | 1 | base | unit-392489 | 2 deployments: base `0xa96448...b16718`; base `0xbe170d...ff790d` | ⚠️ Unaudited |
| SeamTransferStrategy | unknown | project_anchor | own_supporting | 0 | base | unit-392463 | `0x2b1bde...fd154c` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0f471d...107f54`; base `0xb8835b...660492` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0fedae...13dbc2`; base `0x260fc8...ea8147` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x204fe7...b5406a`; base `0xac3121...38ce0f` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x216cc6...80d5b0`; base `0xfbe83d...904f75` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x290067...1f0d72`; base `0x430d6f...ebacb7` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x316c05...fe9d6a`; base `0x5a61a1...ec5713` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x33e372...01c261`; base `0x93b1d6...d838fb` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x348c2e...164408`; base `0x81b50b...6dda5b` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x35aa3c...2efffe`; base `0x932d77...29d19c` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x37e3f6...92d33c`; base `0x7acd19...485903` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x393267...bad29f`; base `0x511f23...1ec7ac` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3b5e0a...42a691`; base `0x7b1293...5d973a` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x435846...f18514`; base `0xdf90ed...4dff9f` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x4b5bb8...2adedb`; base `0x6ae5d8...2a4289`; base `0x93f499...773d49`; base `0xb7c6d0...7a48b5`; base `0xbfbc3b...3f430c` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | base | n/a | 4 deployments: base `0x4e7fad...6332ea`; base `0xa9d2a0...947168`; base `0xb2118b...a07e8b`; base `0xf1c220...01e14c` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x51ddfe...a14e04`; base `0xc5a269...5c8103` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x597ce0...3952b6`; base `0x77d004...16451a` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5f8a82...7b5408`; base `0xcbc784...391d6e` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x61380a...809726`; base `0x91f7d6...35a9c1` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x614703...c9396f`; base `0xe15943...0a0427` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x66345a...c8a5dc`; base `0x91a2fb...846235` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x67e0ea...961ab0`; base `0xd81335...85af2f` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6f4146...e11b0a`; base `0xfc233c...80f2eb` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x734614...735254`; base `0xb4f203...d6859e` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x78718b...0a6993`; base `0xc0e23f...635285` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x7b2159...d10e03`; base `0x96bbed...4f49e9` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8023d7...bd908b`; base `0xf61fbc...bfd675` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x80fad4...4e4f52`; base `0xb44e36...0a1a80` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x96de17...5661bb`; base `0xdc37b7...dfa399` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xb5dd3b...e03808`; base `0xbac77f...e08b8a` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xc4ae2b...122151`; base `0xe423f4...59f972` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xf4c7d3...2d5c32`; base `0xf71f91...71ace1` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x017167...eafa7f`; base `0x09f5ef...bc3954` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x04586b...d011b3`; base `0x9130bb...c5cef3` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x059bcf...1f6072`; base `0x5e2693...be4a19` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x09b53e...b0bfe8`; base `0x9825fb...2a8542` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x10e2ff...266830`; base `0x5685c5...93ac80` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x175c05...5a7333`; base `0x3bda7d...af0dfb` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x195913...c98a85`; base `0x1a70f2...c83b02` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1bbd55...da2235`; base `0x6ab219...b66e17` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1e7f54...523cc6`; base `0x9272ad...d36a78` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x54cd1c...44d586`; base `0x643551...dff2ae` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6e7b0d...0b0ff5`; base `0x988202...7c9e79` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x7cd268...3fa730`; base `0x81ce02...5ddfa7` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x82ccc4...a02637`; base `0xb4963f...5d558a` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x95029e...3f5133`; base `0xe9acd2...e3a55b` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x9ce33c...53dd7e`; base `0x9da10c...8191ba` | ⚠️ Unaudited |
| StableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb4d5e1...1391bf` | ⚠️ Unaudited |
| StakedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0f099f...ac7e46` | ⚠️ Unaudited |
| StakedToken | unknown | project_anchor | own_supporting | 1 | base | unit-392491 | 2 deployments: base `0x73f084...7172a4`; base `0xc45f94...8773de` | ⚠️ Unaudited |
| StataOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c24d7...653163` | ⚠️ Unaudited |
| StaticATokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0a0c2e...715e21` | ⚠️ Unaudited |
| StaticATokenLM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb11d23...4a352a` | ⚠️ Unaudited |
| SupplyLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xcc76e7...56f54b`; base `0xff017d...af4bb8` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x04550e...62c54e` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x08561d...dc479d`; base `0xe314ae...addabc` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x293982...55839e`; base `0xc9be03...9f2fc0` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0e09f5...61fd5c` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4db264...1dd531`; base `0x560771...82c7c6` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xc4d677...183b52`; base `0xe3b0f5...042b5c` | ⚠️ Unaudited |
| TransparentProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x71d90c...cf1b5d` | ⚠️ Unaudited |
| UiIncentiveDataProviderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f5a90...f71ce8` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb7397f...b9bf50` | ⚠️ Unaudited |
| UnbuttonToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9a5d2...4ba2aa` | ⚠️ Unaudited |
| UnbuttonTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x613379...3dc138` | ⚠️ Unaudited |
| UniversalAerodromeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x87f8d1...207468` | ⚠️ Unaudited |
| UniversalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe8bb3f...38af77` | ⚠️ Unaudited |
| V3RateStrategyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc19dd3...c1fed2` | ⚠️ Unaudited |
| VariableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3800da...475977` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x40292d...7cd0b0` | ⚠️ Unaudited |
| VeloraAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392451 | `0xc4e581...7db6ba` | ⚠️ Unaudited |
| VeloraAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-392466 | `0x5c37eb...b3e351` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdb0f02...ed5cf7` | ⚠️ Unaudited |
| WrappedERC20PermissionedDeposit | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x3e8707...da2c5f`; base `0x85082b...d062be`; base `0x9660af...645755`; base `0xc9ae3b...98c9e4` | ⚠️ Unaudited |
| WrappedTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x1508f1...6d2a6d`; base `0x90f890...d5fc44`; base `0xc3e17c...b5f79e` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaeeb38...aa1af3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392438 | `0x42fc03...d081af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392440 | `0x5e6b01...c30110` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392441 | `0x604d37...0b97a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392442 | `0x642681...c0fc3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392444 | `0x821ded...615bd7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392446 | `0x98c4e4...3ed1bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392452 | `0xc73ce5...b3033f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392457 | `0xf7356e...d6a69f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x00f033...494a9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x426f8d...c53d34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x452a35...a663e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5630a0...ad3ab8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392464 | `0x585cc1...f65c51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x70224e...85426b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392471 | `0xa2fcee...1dbb8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac6d0e...e521a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd24142...630d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd8a952...c9d923` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392476 | `0xdd3341...e68e61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xecd2d0...606ea6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b](https://cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b) | Spearbit | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2025.05.19%20-%20Final%20-%20Seamless%20Protocol%20Collaborative%20Audit%20Report.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | matched | 5 | 1 | 0 | 11 | high |
| [Cantina - 1 Oct 2025.pdf](https://github.com/seamless-protocol/leverage-tokens/blob/main/audits/Cantina%20-%201%20Oct%202025.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [Cantina - 8 May 2025.pdf](https://github.com/seamless-protocol/leverage-tokens/blob/main/audits/Cantina%20-%208%20May%202025.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [Sherlock - 8 May 2025.pdf](https://github.com/seamless-protocol/leverage-tokens/blob/main/audits/Sherlock%20-%208%20May%202025.pdf) | Sherlock | Contest | 2025-05 | aging | Direct | contract_name | matched | 5 | 1 | 0 | 11 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3862] cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b — no match: No explicit scope section found; contract names extracted from findings and descriptions. Audit period ends 10 April 2025.
- [3863] 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf — matched: All 16 files listed in the Scope section of the audit report. Audit date is the end date of the audit period (April 29 - May 8, 2025).
- [10384] Cantina - 1 Oct 2025.pdf — no match: No explicit scope section found; contracts extracted from findings context. Audit date from cover page.
- [10385] Cantina - 8 May 2025.pdf — matched: Extracted from Security Review Summary and findings context. Audit date from cover page: May 8, 2025.
- [10386] Sherlock - 8 May 2025.pdf — matched: All 16 files listed in scope section. Audit date range April 29 - May 8, 2025, using end date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b | LeverageManager | ambiguous — not counted | LeverageManager (alternative) `0xeb0221...bb2b7c` — deployed 2025-06-02 22:35:03+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x5c37eb...b3e351` — deployed 2025-09-30 00:06:35+03 — liveness: live (code_present_context)<br>LeverageManager (alternative) `0xfe9101...2e1856` — deployed 2025-10-07 20:18:13+03 — liveness: live (proxy_unit_reachable)<br>LeverageManager (alternative) `0x9d04f6...64220e` — deployed 2025-09-30 00:06:23+03 — liveness: live (proxy_unit_reachable)<br>ERC1967Proxy (proxy) (alternative) `0x38ba21...5ec3a8` — deployed 2025-06-02 22:35:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b | LeverageToken | ambiguous — not counted | LeverageToken (alternative) `0x603da7...ff0a82` — deployed 2025-10-07 20:19:47+03 — liveness: live (current_address_book_code)<br>LeverageToken (alternative) `0x057a2a...537673` — deployed 2025-06-02 22:34:55+03 — liveness: live (current_address_book_code)<br>LeverageToken (alternative) `0xfe9101...2e1856` — deployed 2025-09-30 00:05:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0xe0b2e4...1abe57` — deployed 2025-06-02 22:34:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0x603da7...ff0a82` — deployed 2025-09-30 00:06:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b | MorphoLendingAdapter | ambiguous — not counted | MorphoLendingAdapter (alternative) `0xcb1eff...3aee58` — deployed 2026-01-06 01:14:59+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0xe33eaf...9bd809` — deployed 2025-10-10 17:45:35+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0xb224f5...129817` — deployed 2025-10-10 17:36:47+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0x9558b3...ab253f` — deployed 2025-06-02 23:10:57+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0x00c669...a11a5c` — deployed 2025-09-30 00:06:47+03 — liveness: live (code_present_context)<br>MorphoLendingAdapter (alternative) `0xe9a32a...298f1f` — deployed 2025-12-15 19:03:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b | DataTypes | unmatched — not counted | — | mentioned in gas optimization finding as containing Auction struct | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | BeaconProxyFactory | own proxy deployment | BeaconProxyFactory (proxy) (selected) `0xe0b2e4...1abe57` — deployed 2025-06-02 22:34:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0x603da7...ff0a82` — deployed 2025-09-30 00:06:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-06-02 was 25d from audit; next candidate 145d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | FeeManager | unmatched — not counted | — | listed in scope | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | LeverageManager | ambiguous — not counted | LeverageManager (alternative) `0xeb0221...bb2b7c` — deployed 2025-06-02 22:35:03+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x5c37eb...b3e351` — deployed 2025-09-30 00:06:35+03 — liveness: live (code_present_context)<br>LeverageManager (alternative) `0xfe9101...2e1856` — deployed 2025-10-07 20:18:13+03 — liveness: live (proxy_unit_reachable)<br>LeverageManager (alternative) `0x9d04f6...64220e` — deployed 2025-09-30 00:06:23+03 — liveness: live (proxy_unit_reachable)<br>ERC1967Proxy (proxy) (alternative) `0x38ba21...5ec3a8` — deployed 2025-06-02 22:35:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | LeverageToken | ambiguous — not counted | LeverageToken (alternative) `0x603da7...ff0a82` — deployed 2025-10-07 20:19:47+03 — liveness: live (current_address_book_code)<br>LeverageToken (alternative) `0x057a2a...537673` — deployed 2025-06-02 22:34:55+03 — liveness: live (current_address_book_code)<br>LeverageToken (alternative) `0xfe9101...2e1856` — deployed 2025-09-30 00:05:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0xe0b2e4...1abe57` — deployed 2025-06-02 22:34:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0x603da7...ff0a82` — deployed 2025-09-30 00:06:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | MorphoLendingAdapter | own contract | MorphoLendingAdapter (alternative) `0xcb1eff...3aee58` — deployed 2026-01-06 01:14:59+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0xe33eaf...9bd809` — deployed 2025-10-10 17:45:35+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0xb224f5...129817` — deployed 2025-10-10 17:36:47+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (selected) `0x9558b3...ab253f` — deployed 2025-06-02 23:10:57+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0x00c669...a11a5c` — deployed 2025-09-30 00:06:47+03 — liveness: live (code_present_context)<br>MorphoLendingAdapter (alternative) `0xe9a32a...298f1f` — deployed 2025-12-15 19:03:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-06-02 was 25d from audit; next candidate 145d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | MorphoLendingAdapterFactory | own contract | MorphoLendingAdapterFactory (selected) `0xce05fb...7ded71` — deployed 2025-09-30 00:06:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | EtherFiLeverageRouter | unmatched — not counted | — | listed in scope | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | LeverageRouter | own contract | LeverageRouter (alternative) `0xb0764d...6e6dba` — deployed 2025-09-30 00:25:35+03 — liveness: live (current_address_book_code)<br>LeverageRouter (selected) `0xdba92f...9a887c` — deployed 2025-06-02 23:04:31+03 — liveness: live (current_address_book_code)<br>LeverageRouter (alternative) `0x00c669...a11a5c` — deployed 2025-10-07 20:23:25+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-06-02 was 25d from audit; next candidate 145d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | LeverageRouterBase | unmatched — not counted | — | listed in scope | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | LeverageRouterMintBase | unmatched — not counted | — | listed in scope | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | SwapAdapter | own contract | SwapAdapter (selected) `0xfdf71e...e38942` — deployed 2025-06-02 23:04:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | CollateralRatiosRebalanceAdapter | unmatched — not counted | — | listed in scope | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | DutchAuctionRebalanceAdapter | unmatched — not counted | — | listed in scope | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | PreLiquidationRebalanceAdapter | unmatched — not counted | — | listed in scope | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | RebalanceAdapter | ambiguous — not counted | RebalanceAdapter (alternative) `0xd923b2...c24912` — deployed 2025-06-02 23:10:49+03 — liveness: live (proxy_unit_reachable)<br>ERC1967Proxy (proxy) (alternative) `0xa530e6...46dd32` — deployed 2025-06-02 23:10:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | DataTypes | unmatched — not counted | — | listed in scope | no |
| Cantina - 1 Oct 2025.pdf | LeverageRouter | ambiguous — not counted | LeverageRouter (alternative) `0xb0764d...6e6dba` — deployed 2025-09-30 00:25:35+03 — liveness: live (current_address_book_code)<br>LeverageRouter (alternative) `0xdba92f...9a887c` — deployed 2025-06-02 23:04:31+03 — liveness: live (current_address_book_code)<br>LeverageRouter (alternative) `0x00c669...a11a5c` — deployed 2025-10-07 20:23:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Cantina - 1 Oct 2025.pdf | PricingAdapter | ambiguous — not counted | PricingAdapter (alternative) `0x44cceb...76c88f` — deployed 2025-09-30 00:30:11+03 — liveness: live (current_address_book_code)<br>PricingAdapter (alternative) `0xce05fb...7ded71` — deployed 2025-10-07 20:26:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Cantina - 1 Oct 2025.pdf | FeeManager | unmatched — not counted | — | mentioned in findings 3.2.2, 3.2.3, 3.3.1 | no |
| Cantina - 1 Oct 2025.pdf | LeverageManager | ambiguous — not counted | LeverageManager (alternative) `0xeb0221...bb2b7c` — deployed 2025-06-02 22:35:03+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x5c37eb...b3e351` — deployed 2025-09-30 00:06:35+03 — liveness: live (code_present_context)<br>LeverageManager (alternative) `0xfe9101...2e1856` — deployed 2025-10-07 20:18:13+03 — liveness: live (proxy_unit_reachable)<br>LeverageManager (alternative) `0x9d04f6...64220e` — deployed 2025-09-30 00:06:23+03 — liveness: live (proxy_unit_reachable)<br>ERC1967Proxy (proxy) (alternative) `0x38ba21...5ec3a8` — deployed 2025-06-02 22:35:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Cantina - 8 May 2025.pdf | LeverageManager | ambiguous — not counted | LeverageManager (alternative) `0xeb0221...bb2b7c` — deployed 2025-06-02 22:35:03+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x5c37eb...b3e351` — deployed 2025-09-30 00:06:35+03 — liveness: live (code_present_context)<br>LeverageManager (alternative) `0xfe9101...2e1856` — deployed 2025-10-07 20:18:13+03 — liveness: live (proxy_unit_reachable)<br>LeverageManager (alternative) `0x9d04f6...64220e` — deployed 2025-09-30 00:06:23+03 — liveness: live (proxy_unit_reachable)<br>ERC1967Proxy (proxy) (alternative) `0x38ba21...5ec3a8` — deployed 2025-06-02 22:35:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Cantina - 8 May 2025.pdf | LeverageToken | ambiguous — not counted | LeverageToken (alternative) `0x603da7...ff0a82` — deployed 2025-10-07 20:19:47+03 — liveness: live (current_address_book_code)<br>LeverageToken (alternative) `0x057a2a...537673` — deployed 2025-06-02 22:34:55+03 — liveness: live (current_address_book_code)<br>LeverageToken (alternative) `0xfe9101...2e1856` — deployed 2025-09-30 00:05:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0xe0b2e4...1abe57` — deployed 2025-06-02 22:34:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0x603da7...ff0a82` — deployed 2025-09-30 00:06:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Cantina - 8 May 2025.pdf | DataTypes | unmatched — not counted | — | Listed in scope context and findings | no |
| Cantina - 8 May 2025.pdf | MorphoLendingAdapter | own contract | MorphoLendingAdapter (alternative) `0xcb1eff...3aee58` — deployed 2026-01-06 01:14:59+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0xe33eaf...9bd809` — deployed 2025-10-10 17:45:35+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0xb224f5...129817` — deployed 2025-10-10 17:36:47+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (selected) `0x9558b3...ab253f` — deployed 2025-06-02 23:10:57+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0x00c669...a11a5c` — deployed 2025-09-30 00:06:47+03 — liveness: live (code_present_context)<br>MorphoLendingAdapter (alternative) `0xe9a32a...298f1f` — deployed 2025-12-15 19:03:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-06-02 was 25d from audit; next candidate 145d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - 8 May 2025.pdf | BeaconProxyFactory | own proxy deployment | BeaconProxyFactory (proxy) (selected) `0xe0b2e4...1abe57` — deployed 2025-06-02 22:34:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0x603da7...ff0a82` — deployed 2025-09-30 00:06:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-06-02 was 25d from audit; next candidate 145d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - 8 May 2025.pdf | FeeManager | unmatched — not counted | — | listed in scope | no |
| Sherlock - 8 May 2025.pdf | LeverageManager | ambiguous — not counted | LeverageManager (alternative) `0xeb0221...bb2b7c` — deployed 2025-06-02 22:35:03+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x5c37eb...b3e351` — deployed 2025-09-30 00:06:35+03 — liveness: live (code_present_context)<br>LeverageManager (alternative) `0xfe9101...2e1856` — deployed 2025-10-07 20:18:13+03 — liveness: live (proxy_unit_reachable)<br>LeverageManager (alternative) `0x9d04f6...64220e` — deployed 2025-09-30 00:06:23+03 — liveness: live (proxy_unit_reachable)<br>ERC1967Proxy (proxy) (alternative) `0x38ba21...5ec3a8` — deployed 2025-06-02 22:35:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Sherlock - 8 May 2025.pdf | LeverageToken | ambiguous — not counted | LeverageToken (alternative) `0x603da7...ff0a82` — deployed 2025-10-07 20:19:47+03 — liveness: live (current_address_book_code)<br>LeverageToken (alternative) `0x057a2a...537673` — deployed 2025-06-02 22:34:55+03 — liveness: live (current_address_book_code)<br>LeverageToken (alternative) `0xfe9101...2e1856` — deployed 2025-09-30 00:05:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0xe0b2e4...1abe57` — deployed 2025-06-02 22:34:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0x603da7...ff0a82` — deployed 2025-09-30 00:06:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Sherlock - 8 May 2025.pdf | MorphoLendingAdapter | own contract | MorphoLendingAdapter (alternative) `0xcb1eff...3aee58` — deployed 2026-01-06 01:14:59+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0xe33eaf...9bd809` — deployed 2025-10-10 17:45:35+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0xb224f5...129817` — deployed 2025-10-10 17:36:47+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (selected) `0x9558b3...ab253f` — deployed 2025-06-02 23:10:57+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0x00c669...a11a5c` — deployed 2025-09-30 00:06:47+03 — liveness: live (code_present_context)<br>MorphoLendingAdapter (alternative) `0xe9a32a...298f1f` — deployed 2025-12-15 19:03:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-06-02 was 25d from audit; next candidate 145d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - 8 May 2025.pdf | MorphoLendingAdapterFactory | own contract | MorphoLendingAdapterFactory (selected) `0xce05fb...7ded71` — deployed 2025-09-30 00:06:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - 8 May 2025.pdf | EtherFiLeverageRouter | unmatched — not counted | — | listed in scope | no |
| Sherlock - 8 May 2025.pdf | LeverageRouter | own contract | LeverageRouter (alternative) `0xb0764d...6e6dba` — deployed 2025-09-30 00:25:35+03 — liveness: live (current_address_book_code)<br>LeverageRouter (selected) `0xdba92f...9a887c` — deployed 2025-06-02 23:04:31+03 — liveness: live (current_address_book_code)<br>LeverageRouter (alternative) `0x00c669...a11a5c` — deployed 2025-10-07 20:23:25+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-06-02 was 25d from audit; next candidate 145d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - 8 May 2025.pdf | LeverageRouterBase | unmatched — not counted | — | listed in scope | no |
| Sherlock - 8 May 2025.pdf | LeverageRouterMintBase | unmatched — not counted | — | listed in scope | no |
| Sherlock - 8 May 2025.pdf | SwapAdapter | own contract | SwapAdapter (selected) `0xfdf71e...e38942` — deployed 2025-06-02 23:04:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - 8 May 2025.pdf | CollateralRatiosRebalanceAdapter | unmatched — not counted | — | listed in scope | no |
| Sherlock - 8 May 2025.pdf | DutchAuctionRebalanceAdapter | unmatched — not counted | — | listed in scope | no |
| Sherlock - 8 May 2025.pdf | PreLiquidationRebalanceAdapter | unmatched — not counted | — | listed in scope | no |
| Sherlock - 8 May 2025.pdf | RebalanceAdapter | ambiguous — not counted | RebalanceAdapter (alternative) `0xd923b2...c24912` — deployed 2025-06-02 23:10:49+03 — liveness: live (proxy_unit_reachable)<br>ERC1967Proxy (proxy) (alternative) `0xa530e6...46dd32` — deployed 2025-06-02 23:10:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Sherlock - 8 May 2025.pdf | DataTypes | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x003d47...e89753` | ERC20TransferStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd90eac...be55bb` | ERC20TransferStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x78423b...09fbb1` | EscrowSeam | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2181be...dd89ac` | EscrowSeamTransferStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x003ee5...21f2f2` | FeeKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5c37eb...b3e351` | LeverageManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x38ba21...5ec3a8` | LeverageManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xeb0221...bb2b7c` | LeverageManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb0764d...6e6dba` | LeverageRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x00c669...a11a5c` | LeverageRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x603da7...ff0a82` | LeverageToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x057a2a...537673` | LeverageToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x00c669...a11a5c` | MorphoLendingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb224f5...129817` | MorphoLendingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcb1eff...3aee58` | MorphoLendingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe33eaf...9bd809` | MorphoLendingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe9a32a...298f1f` | MorphoLendingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x16d02e...fd22e1` | MulticallExecutor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9d04f6...64220e` | MulticallExecutor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x44cceb...76c88f` | PricingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xce05fb...7ded71` | PricingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa530e6...46dd32` | RebalanceAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2c6dc2...2adb93` | RewardsController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1c7a46...88cd85` | Seam | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb7a653...5c702b` | SeamAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x03eeed...dd9cfa` | SeamEmissionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1fdfc3...e38f9c` | SeamEmissionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x04faa2...e761b6` | SeamGovernorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6b66cc...e726ba` | SeamL1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x13f5b4...b35e6f` | SeamTimelockController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa96448...b16718` | SeamTimelockController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2b1bde...fd154c` | SeamTransferStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x73f084...7172a4` | StakedToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc4e581...7db6ba` | VeloraAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5c37eb...b3e351` | VeloraAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 165 |
| upstream | 6 |
| standard_library | 1 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 11 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 14 ambiguous, 19 unmatched
- Matched-own operational status: 11 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, medium=2
- Match method counts: temporal_name=7, unique_name=4

Zero-match audit list:

- [3862] cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b
- [10384] Cantina - 1 Oct 2025.pdf

Fork inheritance lineage and inherited audits are included when available.
