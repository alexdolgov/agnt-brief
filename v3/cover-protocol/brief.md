# Agentic Audit Brief: Cover Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 8 across 7 audit(s)
- Eligible audit results: 11 (7 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Cover Protocol (`cover-protocol`)
- Website: [https://github.com/CoverProtocol/cover-docs](https://github.com/CoverProtocol/cover-docs)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 156 unique implementations (156 raw deployments)
- Coverage basis: 4/6 confirmed own live verified implementations (66.7%); conservative 66.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $809,236.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Cover Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across ethereum. Structural roles: 6 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (6)
- Contract kinds: contract (6)
- Detected standards: ownable (6), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (6), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Blacksmith (`0xe0b94a...1caed5`, chain 1)
- CoverDistributor (`0x2166c7...226454`, chain 1)
- CoverFeeReceiver (`0xe06323...bc8b2e`, chain 1)
- CoverForge (`0xa92139...59d5f8`, chain 1)
- Protocol (`0xb6886b...173f6a`, chain 1)
- WETHDistributor (`0x0c134e...f829a0`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/6 (66.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 150 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 6 of 156 unique; 150 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/156
- Verified + Unaudited implementations: 152
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 156
- Raw deployments: 156
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 3 | 1.9% | 2021-02 |
| Arcadia | Tier 2 | 1 | 0.6% | 2020-12 |
| unknown | Tier 2 | 1 | 0.6% | 2020-12 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Blacksmith | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234334 | `0xe0b94a...1caed5` | ✅ Audited |
| CoverFeeReceiver | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234332 | `0xe06323...bc8b2e` | ✅ Audited |
| CoverForge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234328 | `0xa92139...59d5f8` | ✅ Audited |
| Protocol | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234330 | `0xb6886b...173f6a` | ✅ Audited |

### ⚠️ Verified + Unaudited (152)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ed976...ea0aab` | ⚠️ Unaudited |
| AHv2Repayment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141e05...2f629e` | ⚠️ Unaudited |
| APROracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ddc33...919361` | ⚠️ Unaudited |
| APRWithPoolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044dad...47ca14` | ⚠️ Unaudited |
| BlackScholesEstimate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b4fd0...5da3dc` | ⚠️ Unaudited |
| BonusRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3423c8...559f89` | ⚠️ Unaudited |
| ClaimManagement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9946f1...8463b2` | ⚠️ Unaudited |
| CollateralMaximizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x494ba8...1b96c1` | ⚠️ Unaudited |
| CompensationEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda7b94...4b64c3` | ⚠️ Unaudited |
| COMPfarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1532eb...6aa870` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e6556...1dc4c8` | ⚠️ Unaudited |
| ConverterDAItoYCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98158e...8039ca` | ⚠️ Unaudited |
| Cover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1349c5...15d504` | ⚠️ Unaudited |
| CoverDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234326 | `0x2166c7...226454` | ⚠️ Unaudited |
| CoverERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e8b62...6b4eb5` | ⚠️ Unaudited |
| CoverPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83085b...3032e2` | ⚠️ Unaudited |
| CoverPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cb339...304791` | ⚠️ Unaudited |
| CoverRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35e105...bc9540` | ⚠️ Unaudited |
| CRON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e14d0...5d322e` | ⚠️ Unaudited |
| DistributeYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x812ac0...cfa017` | ⚠️ Unaudited |
| DistributionRewardsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b1b08...368d6d` | ⚠️ Unaudited |
| DSSLeverage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x050cd4...92640e` | ⚠️ Unaudited |
| DYDXERC3156 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bdc1f...318693` | ⚠️ Unaudited |
| DynamicSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x035fb9...4b5f60` | ⚠️ Unaudited |
| EminenceCurrency | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ccea6...559ad4` | ⚠️ Unaudited |
| FairLaunchCapitalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a2d0e...c6cc0a` | ⚠️ Unaudited |
| Faketroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6257e3...9fef3f` | ⚠️ Unaudited |
| fKRW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c08b5...f2893a` | ⚠️ Unaudited |
| fUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d7f09...6dc10f` | ⚠️ Unaudited |
| GaugeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x823fd2...61081c` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7212f...0cb735` | ⚠️ Unaudited |
| HegicERCPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7224f2...a1345a` | ⚠️ Unaudited |
| HegicOptions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30a086...e4ae70` | ⚠️ Unaudited |
| HegicOptionsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x061940...082f23` | ⚠️ Unaudited |
| iCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78705d...f4e025` | ⚠️ Unaudited |
| iCollateralVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb10e11...3b0f69` | ⚠️ Unaudited |
| iCollateralVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06a8fe...3ddcc1` | ⚠️ Unaudited |
| iDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c5f9d...ca35a0` | ⚠️ Unaudited |
| iDAIZapSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x260fbb...a867fa` | ⚠️ Unaudited |
| IEarnAPR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cad8a...268eec` | ⚠️ Unaudited |
| IEarnAPRWithPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x029fea...44c9bb` | ⚠️ Unaudited |
| IEarnManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x318135...50edfb` | ⚠️ Unaudited |
| IEarnProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b3680...884bb4` | ⚠️ Unaudited |
| IEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75a4d0...cd25eb` | ⚠️ Unaudited |
| insuredVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa53e9e...2863d9` | ⚠️ Unaudited |
| insurerVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8813d...457bcf` | ⚠️ Unaudited |
| iTrade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14a5ca...104e3e` | ⚠️ Unaudited |
| Keep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30f358...2f57f1` | ⚠️ Unaudited |
| Keep3rHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb41772...af955e` | ⚠️ Unaudited |
| Keep3rJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb68e7d...02d10d` | ⚠️ Unaudited |
| Keep3rV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ceb5c...185a44` | ⚠️ Unaudited |
| Keep3rV1Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1530a2...5a5df9` | ⚠️ Unaudited |
| Keep3rV1JobRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x739689...ab620c` | ⚠️ Unaudited |
| Keep3rV1Library | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaef20...924c93` | ⚠️ Unaudited |
| Keep3rV1Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x733538...70282c` | ⚠️ Unaudited |
| Keep3rV1OracleUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a03b4...f5c080` | ⚠️ Unaudited |
| Keep3rV1Volatility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x173ed6...132dc9` | ⚠️ Unaudited |
| Keep3rV2Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bf162...c8f6c0` | ⚠️ Unaudited |
| Keep3rV2OracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2266be...7880cb` | ⚠️ Unaudited |
| Keep3rV3OracleUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1542ec...ba0f82` | ⚠️ Unaudited |
| LazyHarvest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ea775...c5d0f3` | ⚠️ Unaudited |
| LiquidationOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd82f6d...a3e8ce` | ⚠️ Unaudited |
| LiquidityIncome | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x288324...5a56cd` | ⚠️ Unaudited |
| MetaKeep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93dfa8...0a9372` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcf329...fdfbc6` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x708f45...82fb7b` | ⚠️ Unaudited |
| MultiTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdba82d...11e09d` | ⚠️ Unaudited |
| NexusMutualCover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93a288...de7a28` | ⚠️ Unaudited |
| Normalizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9214a6...f023aa` | ⚠️ Unaudited |
| OptionsV1Library | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48bc6d...76cdd5` | ⚠️ Unaudited |
| OptionsV1Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00fbd1...d86309` | ⚠️ Unaudited |
| OSMedianizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf6308...1ed0f1` | ⚠️ Unaudited |
| PriceProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e94fa...3be471` | ⚠️ Unaudited |
| ProtocolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45d619...0d8d6a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xb69d05...822568` | ⚠️ Unaudited |
| RERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c983b...024c20` | ⚠️ Unaudited |
| RewardsAirdropWithLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0013e1...62ad12` | ⚠️ Unaudited |
| RiskOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x073931...e8fe50` | ⚠️ Unaudited |
| RULER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aeccb...7001f8` | ⚠️ Unaudited |
| RulerAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62c66d...e333d6` | ⚠️ Unaudited |
| RulerCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2446b4...fd5e94` | ⚠️ Unaudited |
| RulerFeeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70f342...b89002` | ⚠️ Unaudited |
| SafetyRedundancy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bdfea...fb3c40` | ⚠️ Unaudited |
| Signer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10d7cb...7081fc` | ⚠️ Unaudited |
| SingleSidedAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82bfdd...bf4b8a` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x173f5f...9f3b27` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5268ba...b120a3` | ⚠️ Unaudited |
| StableAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0670e2...9eb4cd` | ⚠️ Unaudited |
| StableCreditHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x404f9e...ca0acb` | ⚠️ Unaudited |
| StableCreditProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15fe17...26f5f9` | ⚠️ Unaudited |
| StableYieldCredit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11980d...d834e7` | ⚠️ Unaudited |
| StrategyControllerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be5d9...f9e88b` | ⚠️ Unaudited |
| StrategyCreamYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40bd98...549afb` | ⚠️ Unaudited |
| StrategyDForceDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd643cf...d47ede` | ⚠️ Unaudited |
| StrategyDForceUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b354...11ab5c` | ⚠️ Unaudited |
| StrategyDForceUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x787c77...a64bd8` | ⚠️ Unaudited |
| StrategyMKRVaultDAIDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28e5a4...e083a5` | ⚠️ Unaudited |
| StrategyMStableSavings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31641a...69156f` | ⚠️ Unaudited |
| StrategyMStableSavingsTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x442510...e0b81c` | ⚠️ Unaudited |
| StrategyProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16c20c...597c7a` | ⚠️ Unaudited |
| StrategySNXSUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2288c4...4ec989` | ⚠️ Unaudited |
| StrategyVaultTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35cee4...ba817a` | ⚠️ Unaudited |
| StrategyVaultUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25faca...20d8d6` | ⚠️ Unaudited |
| StrategyYffi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe197e...da0b73` | ⚠️ Unaudited |
| StrategyYFIGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x395f93...88797c` | ⚠️ Unaudited |
| StrategyYfii | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2de055...edfa70` | ⚠️ Unaudited |
| SupplyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2eb91...41978f` | ⚠️ Unaudited |
| Synthetic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0485a4...e99b6c` | ⚠️ Unaudited |
| SyntheticRebaseDollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa90d9...38ffdc` | ⚠️ Unaudited |
| SynthetixAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ed4a4...f8c8be` | ⚠️ Unaudited |
| SynthetixExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0691cf...04c2cf` | ⚠️ Unaudited |
| TendiesFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x101dd6...e24a9f` | ⚠️ Unaudited |
| TimeLoanPairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2df934...60da0d` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1994b5...929b81` | ⚠️ Unaudited |
| TimelockGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x026d4b...1dfb61` | ⚠️ Unaudited |
| TreasuryVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93a62d...a0efde` | ⚠️ Unaudited |
| UniOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61da8b...61d136` | ⚠️ Unaudited |
| UpdateBlacksmithPools | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa18bc0...32b7f2` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe98567...8bd531` | ⚠️ Unaudited |
| VestingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f5981...a7f03c` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5553b9...5c5fcc` | ⚠️ Unaudited |
| WETHDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234324 | `0x0c134e...f829a0` | ⚠️ Unaudited |
| WrappedYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x017e71...231981` | ⚠️ Unaudited |
| xRULER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01f7fd...5f17b9` | ⚠️ Unaudited |
| xVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0205ae...e419c5` | ⚠️ Unaudited |
| yAffiliateFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44ff2a...53b367` | ⚠️ Unaudited |
| yBUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04bc0a...bca9ae` | ⚠️ Unaudited |
| yCollateralVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24dd02...e82a5d` | ⚠️ Unaudited |
| yCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x170411...2a221c` | ⚠️ Unaudited |
| ycUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0597ea...bc0f2c` | ⚠️ Unaudited |
| ycUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x631d66...3931a4` | ⚠️ Unaudited |
| yDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16de59...f0bd01` | ⚠️ Unaudited |
| yDAIv2Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56ab71...a6bd33` | ⚠️ Unaudited |
| yDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x610258...a05f83` | ⚠️ Unaudited |
| yDelegatedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2088ba...b73d99` | ⚠️ Unaudited |
| YearnLiquidationKeep3r | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x41303e...343eeb` | ⚠️ Unaudited |
| YetiDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38794e...e3a7e7` | ⚠️ Unaudited |
| YFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc529...6ad93e` | ⚠️ Unaudited |
| yInsure | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x181aea...d98f91` | ⚠️ Unaudited |
| yInsureView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d2738...98340b` | ⚠️ Unaudited |
| ySUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36324b...d41380` | ⚠️ Unaudited |
| yTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d5ad9...54203a` | ⚠️ Unaudited |
| yTokenRebalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19b642...e9cc09` | ⚠️ Unaudited |
| yTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73a052...a8190f` | ⚠️ Unaudited |
| yUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12c068...af3aff` | ⚠️ Unaudited |
| yUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26ea74...b21951` | ⚠️ Unaudited |
| yUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3118ee...b9aade` | ⚠️ Unaudited |
| yVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fcda6...367889` | ⚠️ Unaudited |
| yVaultCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bbe0f...a6d1ad` | ⚠️ Unaudited |
| yVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044dea...f677b5` | ⚠️ Unaudited |
| yWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04aa51...787ec9` | ⚠️ Unaudited |
| yWrappedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x881b06...025298` | ⚠️ Unaudited |

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
| [Arcadia-Cover-Blacksmith-Audit.pdf](https://github.com/CoverProtocol/cover-security/blob/master/audits/Arcadia-Cover-Blacksmith-Audit.pdf) | Arcadia | Audit | 2020-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [Cover Protocol - Report - V2 by Quantstamp.pdf](https://github.com/CoverProtocol/cover-security/blob/master/audits/Cover%20Protocol%20-%20Report%20-%20V2%20by%20Quantstamp.pdf) | Quantstamp | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 34 | high |
| [Cover Protocol v2 Security Audit Report (merged).pdf](https://github.com/CoverProtocol/cover-security/blob/master/audits/Cover%20Protocol%20v2%20Security%20Audit%20Report%20(merged).pdf) | yAudit | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [PeckShield-Audit-Report-CoverForge-v1.0rc.pdf](https://github.com/CoverProtocol/cover-security/blob/master/audits/PeckShield-Audit-Report-CoverForge-v1.0rc.pdf) | PeckShield | Audit | 2021-02 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 0 | medium |
| [peckshield-audit-report-cover-v1.0.pdf (also discovered via alternate URL)](https://github.com/CoverProtocol/cover-security/blob/master/audits/peckshield-audit-report-cover-v1.0.pdf) | PeckShield | Audit | 2020-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [{% embed url="<>" %} (also discovered via alternate URL)](https://github.com/CoverProtocol/cover-token-mining/blob/main/Cover%20Audit.pdf) | unknown | Audit | 2020-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [Rendered PDF capture](https://389701914-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MN_8lt81m0bkkxuntw8%2F-MQnHkVDxSIblobTr8-Q%2F-MQnHrDVkyt7Hun89WE8%2FCover%20Protocol%20Peripheral%20Smart%20Contract%20Audit.pdf) | MixBytes | Audit | 2021-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [- [Smart Contract Audits](): All deployed contracts are audited.](https://cover-protocol.gitbook.io/docs/architecture/smart-contract-audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16924] Arcadia-Cover-Blacksmith-Audit.pdf — matched: Scope section lists 5 contracts: BlackSmith.sol, COVER.sol, Migrator.sol, Vesting.sol, MerkleProof.sol. Audit date is December 1st, 2020.
- [16925] Cover Protocol - Report - V2 by Quantstamp.pdf — no match: All contracts listed in file signatures and findings are considered in scope. Audit date from reaudit commit date.
- [16926] Cover Protocol v2 Security Audit Report (merged).pdf — no match: All contracts listed in the FILES LISTING section are in scope.
- [16927] PeckShield-Audit-Report-CoverForge-v1.0rc.pdf — matched: No explicit scope table; contracts identified from findings targets and protocol description.
- [16928] peckshield-audit-report-cover-v1.0.pdf — matched: Extracted contract names from the audit report's scope and findings sections. The report mentions Protocol, Cover, CoverERC20, Ownable, and ClaimManagement as audited contracts. InitializableAdminUpgradeabilityProxy is referenced in code but may be a library. Audit date is from the cover page.
- [16930] {% embed url="<>" %} — matched: Scope section lists 5 contracts: BlackSmith.sol, COVER.sol, Migrator.sol, Vesting.sol, MerkleProof.sol. Audit date is December 1st, 2020 from the cover page.
- [16933] Rendered PDF capture — no match: All contracts listed in the 'FILES LISTING' section are considered in scope. The audit date is the end date of the audit period (2020-12-25 - 2021-01-11).
- [16934] - [Smart Contract Audits](): All deployed contracts are audited. — no match: The provided text is an index page listing audit reports for Cover Protocol, but does not contain the actual audit reports or scope sections. No contract names or dates could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Arcadia-Cover-Blacksmith-Audit.pdf | BlackSmith | own contract | Blacksmith (selected) `0xe0b94a...1caed5` — deployed 2020-11-20 02:49:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Arcadia-Cover-Blacksmith-Audit.pdf | COVER | unmatched — not counted | — | listed in scope | no |
| Arcadia-Cover-Blacksmith-Audit.pdf | Migrator | unmatched — not counted | — | listed in scope | no |
| Arcadia-Cover-Blacksmith-Audit.pdf | Vesting | unmatched — not counted | — | listed in scope | no |
| Arcadia-Cover-Blacksmith-Audit.pdf | MerkleProof | unmatched — not counted | — | listed in scope | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | CoverPool | unmatched — not counted | — | listed in scope and findings | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | CoverPoolFactory | unmatched — not counted | — | listed in scope and findings | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | Cover | unmatched — not counted | — | listed in scope and findings | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | CoverERC20 | unmatched — not counted | — | listed in scope and findings | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | ClaimConfig | unmatched — not counted | — | listed in scope and findings | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | ClaimManagement | unmatched — not counted | — | listed in scope and findings | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | ICoverPool | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | ICoverPoolFactory | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | ICover | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | ICoverERC20 | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | IClaimConfig | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | IClaimManagement | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | ICoverPoolCallee | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | ICovTokenProxy | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | IOwnable | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | ERC20 | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | ERC20Permit | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | IERC20 | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | IERC20Permit | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | SafeERC20 | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | ECDSA | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | EIP712 | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | FlashCover | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | Initializable | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | ReentrancyGuard | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | Ownable | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | Address | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | Create2 | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | StringHelper | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | BaseUpgradeabilityProxy | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | Clones | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | BaseAdminUpgradeabilityProxy | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | Proxy | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | InitializableAdminUpgradeabilityProxy | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | Cover | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | CoverPool | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | CoverPoolFactory | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | CoverERC20 | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | ClaimManagement | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | ClaimConfig | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | BasicProxyLib | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | StringHelper | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | EIP712 | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | ERC20Permit | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | SafeERC20 | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | ERC20 | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | Address | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | ReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | Initializable | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | Create2 | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | Proxy | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | BaseUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | BaseAdminUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | InitializableAdminUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-CoverForge-v1.0rc.pdf | CoverFeeReceiver | own contract | CoverFeeReceiver (selected) `0xe06323...bc8b2e` — deployed 2021-03-19 02:52:28+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-CoverForge-v1.0rc.pdf | CoverForge | own contract | CoverForge (selected) `0xa92139...59d5f8` — deployed 2021-03-19 02:51:48+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| peckshield-audit-report-cover-v1.0.pdf | Protocol | own contract | Protocol (selected) `0xb6886b...173f6a` — deployed 2020-11-18 00:07:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| peckshield-audit-report-cover-v1.0.pdf | Cover | unmatched — not counted | — | Listed in findings targets (e.g., PVE-001, PVE-004) | no |
| peckshield-audit-report-cover-v1.0.pdf | CoverERC20 | unmatched — not counted | — | Listed in findings target (PVE-005) | no |
| peckshield-audit-report-cover-v1.0.pdf | Ownable | unmatched — not counted | — | Listed in findings target (PVE-006) | no |
| peckshield-audit-report-cover-v1.0.pdf | InitializableAdminUpgradeabilityProxy | unmatched — not counted | — | Referenced in Protocol.sol code snippet (line 156) | no |
| peckshield-audit-report-cover-v1.0.pdf | ClaimManagement | unmatched — not counted | — | Referenced in finding PVE-007 as the contract that files/decides claims | no |
| {% embed url="<>" %} | BlackSmith | own contract | Blacksmith (selected) `0xe0b94a...1caed5` — deployed 2020-11-20 02:49:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| {% embed url="<>" %} | COVER | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | Migrator | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | Vesting | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | MerkleProof | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | CoverRouter | unmatched — not counted | — | listed in files listing and findings | no |
| Rendered PDF capture | Rollover | unmatched — not counted | — | listed in files listing and findings | no |
| Rendered PDF capture | Address | unmatched — not counted | — | listed in files listing | no |
| Rendered PDF capture | Ownable | unmatched — not counted | — | listed in files listing | no |
| Rendered PDF capture | ReentrancyGuard | unmatched — not counted | — | listed in files listing | no |
| Rendered PDF capture | SafeERC20 | unmatched — not counted | — | listed in files listing | no |
| Rendered PDF capture | SafeMath | unmatched — not counted | — | listed in files listing | no |
| Rendered PDF capture | IBFactory | unmatched — not counted | — | listed in files listing | no |
| Rendered PDF capture | IBlacksmith | unmatched — not counted | — | listed in files listing | no |
| Rendered PDF capture | IBPool | unmatched — not counted | — | listed in files listing | no |
| Rendered PDF capture | ICover | unmatched — not counted | — | listed in files listing | no |
| Rendered PDF capture | ICoverERC20 | unmatched — not counted | — | listed in files listing | no |
| Rendered PDF capture | ICoverRouter | unmatched — not counted | — | listed in files listing | no |
| Rendered PDF capture | IERC20 | unmatched — not counted | — | listed in files listing | no |
| Rendered PDF capture | IProtocol | unmatched — not counted | — | listed in files listing | no |
| Rendered PDF capture | IRollover | unmatched — not counted | — | listed in files listing | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x2166c7...226454` | CoverDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0c134e...f829a0` | WETHDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 154 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 84 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, low=1, medium=1
- Match method counts: unique_name=8

Zero-match audit list:

- [16925] Cover Protocol - Report - V2 by Quantstamp.pdf
- [16926] Cover Protocol v2 Security Audit Report (merged).pdf
- [16933] Rendered PDF capture
- [16934] - [Smart Contract Audits](): All deployed contracts are audited.

Fork inheritance lineage and inherited audits are included when available.
