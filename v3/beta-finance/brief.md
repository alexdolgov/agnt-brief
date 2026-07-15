# Agentic Audit Brief: Beta Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 4 audit(s)
- Eligible audit results: 4 (4 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Beta Finance (`beta-finance`)
- Website: [https://betafinance.gitbook.io/betafinance](https://betafinance.gitbook.io/betafinance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, bsc, ethereum
- Contract surface: 188 unique implementations (188 raw deployments)
- Coverage basis: 1/5 confirmed own live verified implementations (20.0%); conservative 20.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $537,517.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Beta Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across avalanche, bsc, ethereum. Structural roles: 4 core, 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (4), supporting (1)
- Contract kinds: contract (5)
- Detected standards: ownable (1), pausable (1)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 23 contracts are derived from known codebases. 23 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x06f12b...65369b`, chain 1)
- UnnamedContract (`0x28130d...64a0b9`, chain 1)
- UnnamedContract (`0x74cac8...65c132`, chain 1)
- UnnamedContract (`0x885a58...cd2626`, chain 1)
- UnnamedContract (`0x9136df...134a63`, chain 1)
- UnnamedContract (`0x972a78...493be1`, chain 1)
- UnnamedContract (`0xaf1523...f166ae`, chain 1)
- UnnamedContract (`0xbf3e3e...4c904b`, chain 1)
- UnnamedContract (`0xfb4bea...77f405`, chain 1)
- UnnamedContract (`0x7044fd...3ed47b`, chain 43114)
- UnnamedContract (`0x7e5dab...5b2949`, chain 43114)
- UnnamedContract (`0x908e5c...0206ba`, chain 43114)
- UnnamedContract (`0xae00e5...d2cb9d`, chain 43114)
- UnnamedContract (`0xe04472...5da025`, chain 43114)
- UnnamedContract (`0xf0f8a7...018247`, chain 43114)
- UnnamedContract (`0xf3a82d...10f36b`, chain 43114)
- UnnamedContract (`0xf75ff3...9be6db`, chain 43114)
- UnnamedContract (`0xfe8fe8...3d6648`, chain 43114)
- BetaBank (`0x42e1f3...f76d32`, chain 1)
- BetaConfig (`0x59334e...f6b9c5`, chain 1)
- BetaRunnerLending (`0x068af1...19005f`, chain 1)
- BTokenDeployer (`0x24d8d4...6e7af5`, chain 43114)
- WETHGateway (`0x02d516...240057`, chain 43114)

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/23 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/5 (20.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 23 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 165 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Deployed-live implementations: 23 of 188 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/5
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 188
- Raw deployments: 188
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 20.0% (OpenZeppelin, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 1 | 20.0% | 2021-08 |
| PeckShield | Tier 2 | 1 | 20.0% | 2021-05 |
| Trail of Bits | Tier 1 | 1 | 20.0% | 2021-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BetaBank | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230219 | `0x42e1f3...f76d32` | ✅ Audited |

### ⚠️ Verified + Unaudited (169)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ABDKMath64x64 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21a8d1...be0f32` | ⚠️ Unaudited |
| AddressQueueStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44e319...e2ebd8` | ⚠️ Unaudited |
| AddressSetStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4ae25...1c6a16` | ⚠️ Unaudited |
| AirdropGrapesToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x025c6d...205a1f` | ⚠️ Unaudited |
| AlphaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1faa1...b40975` | ⚠️ Unaudited |
| AnycallExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x70d6b3...a72c40` | ⚠️ Unaudited |
| AnyswapV5ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce1bff...2f7814` | ⚠️ Unaudited |
| AnyswapV6ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x511d35...d89212` | ⚠️ Unaudited |
| Astgik | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d2244...594381` | ⚠️ Unaudited |
| AUTOCOLOR_Technica | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e734e...6dae11` | ⚠️ Unaudited |
| BalancerGovernanceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba1000...424e3d` | ⚠️ Unaudited |
| BancorBuyer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77a77e...34d924` | ⚠️ Unaudited |
| BancorChanger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb72a0f...270468` | ⚠️ Unaudited |
| BancorConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40a36b...252e16` | ⚠️ Unaudited |
| BancorConverterExtensions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf46002...9012f7` | ⚠️ Unaudited |
| BancorConverterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a8079...f9b236` | ⚠️ Unaudited |
| BancorConverterUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaebf10...7c3d5c` | ⚠️ Unaudited |
| BancorFormula | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eeb95...c30cc5` | ⚠️ Unaudited |
| BancorFormulaProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b0c11...3af6f2` | ⚠️ Unaudited |
| BancorGasPriceLimit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fd539...4daa6e` | ⚠️ Unaudited |
| BancorNetwork | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x568e7c...3e5e07` | ⚠️ Unaudited |
| BancorPriceFloor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec6a7...268549` | ⚠️ Unaudited |
| BancorQuickConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf1cc6...49139b` | ⚠️ Unaudited |
| BandToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba11d0...6d7f55` | ⚠️ Unaudited |
| BaseRegistrarImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfac7be...b31e04` | ⚠️ Unaudited |
| BetaConfig | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230220 | `0x59334e...f6b9c5` | ⚠️ Unaudited |
| BetaInterestModelV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e2021...8f8eb1` | ⚠️ Unaudited |
| BetaRunnerLending | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230216 | `0x068af1...19005f` | ⚠️ Unaudited |
| BetaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe1a00...c09d28` | ⚠️ Unaudited |
| BFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d3303...9b619f` | ⚠️ Unaudited |
| BlurAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee90e5...9833e1` | ⚠️ Unaudited |
| BlurGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7967b...845810` | ⚠️ Unaudited |
| BlurToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5283d2...208b44` | ⚠️ Unaudited |
| BSCBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e4ae3...464ed6` | ⚠️ Unaudited |
| BSCWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70266e...cf18ea` | ⚠️ Unaudited |
| BToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01aa46...3f3a11` | ⚠️ Unaudited |
| BTokenDeployer | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230229 | `0x24d8d4...6e7af5` | ⚠️ Unaudited |
| CCapableErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x018a82...9ff5ab` | ⚠️ Unaudited |
| CCollateralCapErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a6fd0...2b930f` | ⚠️ Unaudited |
| CCollateralCapErc20NoInterestDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca1041...41c157` | ⚠️ Unaudited |
| CCTokenDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f0800...909b9e` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x00e5c0...c84bf3` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x011a01...230afa` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e821d...11c2cb` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2db6c8...5066d6` | ⚠️ Unaudited |
| CEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd06527...2860ee` | ⚠️ Unaudited |
| Comp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ba592...7cb200` | ⚠️ Unaudited |
| ContractFeatures | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x563172...6ce699` | ⚠️ Unaudited |
| ContractRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7148b1...e395e6` | ⚠️ Unaudited |
| CreamEth2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49d72e...9fdb64` | ⚠️ Unaudited |
| CreamLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8584b7...40ca64` | ⚠️ Unaudited |
| CreamLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x780f75...7a8b45` | ⚠️ Unaudited |
| CreamVotingPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb146bf...20d0f9` | ⚠️ Unaudited |
| CrowdsaleController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbc797...f89710` | ⚠️ Unaudited |
| CSLPDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b4722...151ffb` | ⚠️ Unaudited |
| CTokenAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa67b44...2a038d` | ⚠️ Unaudited |
| CurrencyManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc881ad...b93d25` | ⚠️ Unaudited |
| CurrencyManagerOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb624e4...a84bd2` | ⚠️ Unaudited |
| EasyConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50697a...224790` | ⚠️ Unaudited |
| ENSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc18360...7f9d72` | ⚠️ Unaudited |
| ePHTR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b9805...b799f5` | ⚠️ Unaudited |
| ERC1155GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe0560d...835705` | ⚠️ Unaudited |
| ERC20GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4643d9...b0df5a` | ⚠️ Unaudited |
| ERC677GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12e994...1d8f3e` | ⚠️ Unaudited |
| ERC721Gateway_MintBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x154547...f96f11` | ⚠️ Unaudited |
| ERC721GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x869ec6...0d4964` | ⚠️ Unaudited |
| EtherToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc08294...2ce315` | ⚠️ Unaudited |
| ETHRegistrarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb22c1c...e6ad16` | ⚠️ Unaudited |
| EthRegistrarSubdomainRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc32659...27231d` | ⚠️ Unaudited |
| ExecutionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cc58b...5d62b2` | ⚠️ Unaudited |
| ExtraReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b8674...697392` | ⚠️ Unaudited |
| FactoryPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ac03b...c3f056` | ⚠️ Unaudited |
| FantomAnimals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3cb196...bb6dda` | ⚠️ Unaudited |
| FeeSharingSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5924a2...81f3c1` | ⚠️ Unaudited |
| FeeSharingSystem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcd725...cc12ce` | ⚠️ Unaudited |
| FixedAmountVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06cf01...ed31b7` | ⚠️ Unaudited |
| HODLCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb45d7b...2b672c` | ⚠️ Unaudited |
| IBAgreement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30f254...37f812` | ⚠️ Unaudited |
| IBAgreementV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ae50b...46b3ff` | ⚠️ Unaudited |
| IndexToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x095490...464cab` | ⚠️ Unaudited |
| IRM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e8c0c...823128` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfecc2d...25736f` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x014872...d2e1a6` | ⚠️ Unaudited |
| LooksRareAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa35dce...9b5970` | ⚠️ Unaudited |
| LooksRareExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x597285...17ce3a` | ⚠️ Unaudited |
| LooksRareToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4d288...92421e` | ⚠️ Unaudited |
| ManagedIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x632806...cb8b48` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x060917...e5aa2f` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aab73...1a7e85` | ⚠️ Unaudited |
| MultiPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e064e...a50d3d` | ⚠️ Unaudited |
| MultiRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0554f0...638c72` | ⚠️ Unaudited |
| MultiSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f85a4...d12ed0` | ⚠️ Unaudited |
| MultiSigWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x005a4d...b19826` | ⚠️ Unaudited |
| NFTRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1fbbc7...692cd8` | ⚠️ Unaudited |
| OmniLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f003a...aac507` | ⚠️ Unaudited |
| OmniOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00dc65...5e15b3` | ⚠️ Unaudited |
| OmniPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1150d3...47b07d` | ⚠️ Unaudited |
| OmniToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0cc73d...3b11a0` | ⚠️ Unaudited |
| OperatorControllerForRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6c40e...7ebe01` | ⚠️ Unaudited |
| OperatorControllerForRewardsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91cc8b...0f9ee3` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65d66c...a483a1` | ⚠️ Unaudited |
| OracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc92ae5...fa9eda` | ⚠️ Unaudited |
| OracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9465f...167f53` | ⚠️ Unaudited |
| OrderValidatorV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69bab1...9fbcdd` | ⚠️ Unaudited |
| OrderValidatorV1B | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc56de...eed395` | ⚠️ Unaudited |
| OwnedRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa86ba3...db69cf` | ⚠️ Unaudited |
| OwnedResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30200e...723b2b` | ⚠️ Unaudited |
| PHTR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1fc44...0622da` | ⚠️ Unaudited |
| PHTRRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x571365...ceeb1c` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01ae37...cab2b1` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3abce8...525cf7` | ⚠️ Unaudited |
| PriceOracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d8e38...61ae3c` | ⚠️ Unaudited |
| PriceOracleProxyIB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde19f5...297266` | ⚠️ Unaudited |
| PrivateSaleWithFeeSharing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9571cd...dde65b` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x067341...2e5171` | ⚠️ Unaudited |
| ProxyAdminContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe70f04...ac5a8f` | ⚠️ Unaudited |
| PublicResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226159...ed68b8` | ⚠️ Unaudited |
| Registrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x328328...6bdf51` | ⚠️ Unaudited |
| RegistrarMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6109dd...75c662` | ⚠️ Unaudited |
| ReserveManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c5bf1...1beaed` | ⚠️ Unaudited |
| RocketTokenRPL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd33526...21a51f` | ⚠️ Unaudited |
| Root | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x285088...e5284a` | ⚠️ Unaudited |
| RoyaltyFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x735818...ef4906` | ⚠️ Unaudited |
| RoyaltyFeeManagerV1B | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79a1c1...5d0c7a` | ⚠️ Unaudited |
| RoyaltyFeeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x550104...8d8022` | ⚠️ Unaudited |
| RoyaltyFeeSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x664661...3c27a8` | ⚠️ Unaudited |
| SetToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1494ca...ba3c2b` | ⚠️ Unaudited |
| ShibbolethTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d915c...97904c` | ⚠️ Unaudited |
| ShortHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b4095...1632c5` | ⚠️ Unaudited |
| ShortNameAuctionController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x699c7f...919d17` | ⚠️ Unaudited |
| ShortPowerPerp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa653e2...863a38` | ⚠️ Unaudited |
| SmartToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x164a12...172153` | ⚠️ Unaudited |
| SqrtPriceMathPartial | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cf8dc...828460` | ⚠️ Unaudited |
| StableConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe649d8...489e30` | ⚠️ Unaudited |
| StablePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9d374...ae233a` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b471a...85e150` | ⚠️ Unaudited |
| StrategyAnyItemFromCollectionForFixedPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86f909...e7e8f3` | ⚠️ Unaudited |
| StrategyAnyItemFromCollectionForFixedPriceV1B | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09f936...49c69b` | ⚠️ Unaudited |
| StrategyDutchAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8079...43bae0` | ⚠️ Unaudited |
| StrategyPrivateSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58d835...4dd98c` | ⚠️ Unaudited |
| StrategyStandardSaleForFixedPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56244b...190031` | ⚠️ Unaudited |
| StrategyStandardSaleForFixedPriceV1B | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x579af6...eb930c` | ⚠️ Unaudited |
| SubdomainMigrationRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9a4ee...63e3d2` | ⚠️ Unaudited |
| SubdomainRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b0746...b0dbd1` | ⚠️ Unaudited |
| TickMathExternal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d9d7f...e6fdfc` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6a96f...3f2486` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5be718...e4be3f` | ⚠️ Unaudited |
| TokenDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x465a79...e0d3b1` | ⚠️ Unaudited |
| TokenLockup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00a644...2663df` | ⚠️ Unaudited |
| TokenSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfec306...6c8203` | ⚠️ Unaudited |
| TokenVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xdfdb7f...635346` | ⚠️ Unaudited |
| TradingRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x453c12...fbc3cd` | ⚠️ Unaudited |
| TransferManagerERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfed24e...b3a051` | ⚠️ Unaudited |
| TransferManagerERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf42aa9...bca83e` | ⚠️ Unaudited |
| TransferManagerNonCompliantERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e5381...0510a1` | ⚠️ Unaudited |
| TransferSelectorNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ba628...cd9e2c` | ⚠️ Unaudited |
| TransparentUpgradeableProxyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x186c6e...ec6e16` | ⚠️ Unaudited |
| TripleSlopeRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0c25...747556` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3d5bc3...ae9258` | ⚠️ Unaudited |
| ValueRouterImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x522cb8...a14aa0` | ⚠️ Unaudited |
| ve_query | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x443299...35e9ca` | ⚠️ Unaudited |
| VEPowerOracleSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x559d12...46c5f1` | ⚠️ Unaudited |
| VestingContractWithFeeSharing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x332580...9744d8` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ca0f0...6f6ace` | ⚠️ Unaudited |
| WBNBGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10cf42...a542dd` | ⚠️ Unaudited |
| WETHGateway | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230228 | `0x02d516...240057` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521a06...59e88d` | ⚠️ Unaudited |
| WPowerPerp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1b99e...64e86b` | ⚠️ Unaudited |
| XrpSwapAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfb288d...4269aa` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230217 | `0x06f12b...65369b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230218 | `0x28130d...64a0b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230221 | `0x74cac8...65c132` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230222 | `0x885a58...cd2626` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230223 | `0x9136df...134a63` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230224 | `0x972a78...493be1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230225 | `0xaf1523...f166ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230226 | `0xbf3e3e...4c904b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230227 | `0xfb4bea...77f405` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230230 | `0x7044fd...3ed47b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230231 | `0x7e5dab...5b2949` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230232 | `0x908e5c...0206ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230233 | `0xae00e5...d2cb9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230234 | `0xe04472...5da025` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230235 | `0xf0f8a7...018247` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230236 | `0xf3a82d...10f36b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230237 | `0xf75ff3...9be6db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230238 | `0xfe8fe8...3d6648` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [OZ - Beta Finance Audit Report.pdf](https://github.com/beta-finance/beta/blob/master/audits/OZ%20-%20Beta%20Finance%20Audit%20Report.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |
| [Here](https://www.openzeppelin.com/news/beta-finance-audit) | OpenZeppelin | Audit | 2021-08 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |
| [PeckShield-Audit-Report-Beta-v1.0.pdf](https://github.com/beta-finance/beta/blob/master/audits/PeckShield-Audit-Report-Beta-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [ToB - Beta Finance Final Report.pdf](https://github.com/beta-finance/beta/blob/master/audits/ToB%20-%20Beta%20Finance%20Final%20Report.pdf) | Trail of Bits | Audit | 2021-08 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16843] OZ - Beta Finance Audit Report.pdf — matched: Contracts explicitly listed in scope section. No audit date found in the provided text.
- [16844] Here — matched: All contracts listed in the 'Scope' section of the audit report.
- [16845] PeckShield-Audit-Report-Beta-v1.0.pdf — matched: Extracted contract names from findings targets and mentions. Audit date from cover page and version history.
- [16846] ToB - Beta Finance Final Report.pdf — matched: Extracted from the 'Coverage' section and findings targets. The audit date is from the cover page: 'August 23, 2021'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| OZ - Beta Finance Audit Report.pdf | BToken | unmatched — not counted | — | listed in scope | no |
| OZ - Beta Finance Audit Report.pdf | BetaBank | own contract | BetaBank (selected) `0x42e1f3...f76d32` — deployed 2021-08-11 16:45:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OZ - Beta Finance Audit Report.pdf | BetaInterestModelV1 | ambiguous — not counted | 0xf75ff3… (alternative) `0xf75ff3...9be6db` — liveness: live (current_address_book_code)<br>0xfb4bea… (alternative) `0xfb4bea...77f405` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| OZ - Beta Finance Audit Report.pdf | WETHGateway | ambiguous — not counted | WETHGateway (alternative) `0x02d516...240057` — deployed 2021-12-20 21:38:52+03 — liveness: live (current_address_book_code)<br>0xbf3e3e… (alternative) `0xbf3e3e...4c904b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| OZ - Beta Finance Audit Report.pdf | BTokenDeployer | ambiguous — not counted | 0xaf1523… (alternative) `0xaf1523...f166ae` — liveness: live (current_address_book_code)<br>BTokenDeployer (alternative) `0x24d8d4...6e7af5` — deployed 2021-12-20 21:31:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| OZ - Beta Finance Audit Report.pdf | BetaConfig | ambiguous — not counted | 0xf0f8a7… (alternative) `0xf0f8a7...018247` — liveness: live (current_address_book_code)<br>BetaConfig (alternative) `0x59334e...f6b9c5` — deployed 2021-08-11 16:24:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| OZ - Beta Finance Audit Report.pdf | BetaOracleUniswapV2 | unmatched — not counted | — | listed in scope | no |
| OZ - Beta Finance Audit Report.pdf | BetaToken | unmatched — not counted | — | listed in scope | no |
| Here | BToken | unmatched — not counted | — | listed in scope | no |
| Here | BetaBank | own contract | BetaBank (selected) `0x42e1f3...f76d32` — deployed 2021-08-11 16:45:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Here | BetaInterestModelV1 | ambiguous — not counted | 0xf75ff3… (alternative) `0xf75ff3...9be6db` — liveness: live (current_address_book_code)<br>0xfb4bea… (alternative) `0xfb4bea...77f405` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Here | WETHGateway | ambiguous — not counted | WETHGateway (alternative) `0x02d516...240057` — deployed 2021-12-20 21:38:52+03 — liveness: live (current_address_book_code)<br>0xbf3e3e… (alternative) `0xbf3e3e...4c904b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Here | BTokenDeployer | ambiguous — not counted | 0xaf1523… (alternative) `0xaf1523...f166ae` — liveness: live (current_address_book_code)<br>BTokenDeployer (alternative) `0x24d8d4...6e7af5` — deployed 2021-12-20 21:31:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Here | BetaConfig | ambiguous — not counted | 0xf0f8a7… (alternative) `0xf0f8a7...018247` — liveness: live (current_address_book_code)<br>BetaConfig (alternative) `0x59334e...f6b9c5` — deployed 2021-08-11 16:24:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Here | BetaOracleUniswapV2 | unmatched — not counted | — | listed in scope | no |
| Here | BetaToken | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-Beta-v1.0.pdf | BetaBank | own contract | BetaBank (selected) `0x42e1f3...f76d32` — deployed 2021-08-11 16:45:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Beta-v1.0.pdf | BetaConfig | ambiguous — not counted | 0xf0f8a7… (alternative) `0xf0f8a7...018247` — liveness: live (current_address_book_code)<br>BetaConfig (alternative) `0x59334e...f6b9c5` — deployed 2021-08-11 16:24:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Beta-v1.0.pdf | BToken | unmatched — not counted | — | Target in finding PVE-003, PVE-004 | no |
| PeckShield-Audit-Report-Beta-v1.0.pdf | BetaRunnerBase | unmatched — not counted | — | Mentioned in finding PVE-002 as containing _buy()/_repay()/short() | no |
| ToB - Beta Finance Final Report.pdf | BetaBank | own contract | BetaBank (selected) `0x42e1f3...f76d32` — deployed 2021-08-11 16:45:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ToB - Beta Finance Final Report.pdf | BToken | unmatched — not counted | — | Coverage section: 'BToken contracts enable the lending and borrowing of assets in the Beta Finance system.' | no |
| ToB - Beta Finance Final Report.pdf | BetaOracleUniswapV2 | unmatched — not counted | — | Coverage section: 'This contract fetches raw prices from Uniswap V2...' | no |
| ToB - Beta Finance Final Report.pdf | BetaRunner | unmatched — not counted | — | Coverage section: 'The BetaRunner contracts are helper contracts...' | no |
| ToB - Beta Finance Final Report.pdf | BetaRunnerBase | unmatched — not counted | — | Finding TOB-BFI-001 target: 'BetaRunnerBase.constructor' | no |
| ToB - Beta Finance Final Report.pdf | BetaRunnerUniswapV2 | own contract | 0x9136df… (selected) `0x9136df...134a63` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ToB - Beta Finance Final Report.pdf | BetaRunnerUniswapV3 | own contract | 0x06f12b… (selected) `0x06f12b...65369b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ToB - Beta Finance Final Report.pdf | BetaRunnerLending | ambiguous — not counted | 0x7044fd… (alternative) `0x7044fd...3ed47b` — liveness: live (current_address_book_code)<br>BetaRunnerLending (alternative) `0x068af1...19005f` — deployed 2021-08-11 18:12:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ToB - Beta Finance Final Report.pdf | BetaConfig | ambiguous — not counted | 0xf0f8a7… (alternative) `0xf0f8a7...018247` — liveness: live (current_address_book_code)<br>BetaConfig (alternative) `0x59334e...f6b9c5` — deployed 2021-08-11 16:24:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ToB - Beta Finance Final Report.pdf | WETHGateway | ambiguous — not counted | WETHGateway (alternative) `0x02d516...240057` — deployed 2021-12-20 21:38:52+03 — liveness: live (current_address_book_code)<br>0xbf3e3e… (alternative) `0xbf3e3e...4c904b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ToB - Beta Finance Final Report.pdf | BetaToken | unmatched — not counted | — | Finding TOB-BFI-003 target: 'beta-contract/contracts/BetaToken.sol' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x59334e...f6b9c5` | BetaConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x068af1...19005f` | BetaRunnerLending | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x24d8d4...6e7af5` | BTokenDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x02d516...240057` | WETHGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 163 |
| upstream | 4 |
| standard_library | 3 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 12 ambiguous, 13 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: unique_name=6

Fork inheritance lineage and inherited audits are included when available.
