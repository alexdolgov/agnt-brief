# Agentic Audit Brief: Scientix

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

- Project: Scientix (`scientix`)
- Website: [https://scientix.finance](https://scientix.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 135 unique implementations (135 raw deployments)
- Coverage basis: 0/8 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $379,954.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Scientix. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across bsc. Structural roles: 6 core, 2 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: core (6), supporting (2)
- Contract kinds: contract (8)
- Detected standards: erc20 (3), accesscontrol (2), erc1967proxy (2), ownable (2), erc20permit (1)
- Frameworks: openzeppelin (7)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 14 contracts are derived from known codebases. 14 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2dfe72...b72bcf`, chain 56)
- UnnamedContract (`0x49a549...2bf3ed`, chain 56)
- UnnamedContract (`0x802de5...970bf1`, chain 56)
- UnnamedContract (`0x8e2208...fa04fc`, chain 56)
- UnnamedContract (`0xe8efb5...7bdbf9`, chain 56)
- UnnamedContract (`0xebb154...4460da`, chain 56)
- GnosisSafeProxy (`0xa43487...01d360`, chain 56)
- PancakePair (`0x53085b...95e8ae`, chain 56)
- ScientixToken (`0x2cfc48...4c0aa5`, chain 56)
- ScToken (`0x0e5c2b...070fa7`, chain 56)
- UpgradeableOwnableProxy (`0x68145f...9efb9a`, chain 56)
- UpgradeableOwnableProxy (`0xf92aba...b5b024`, chain 56)
- YearnVaultAdapter (`0x7da4b2...b55e15`, chain 56)
- YearnVaultAdapterWithIndirection (`0xa96b31...6706b1`, chain 56)

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 14/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/8 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 14 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 121 discovered implementations excluded (0 third-party/infra; 48 standard proxy/library)
- Proxy deployments represented within implementation groups: 52
- Deployed-live implementations: 14 of 135 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 135
- Raw deployments: 135
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

### ⚠️ Verified + Unaudited (129)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0159f4...31fe53` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x02da70...aa7442` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x040a65...425da4` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x05bdf3...def62d` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x08fc9b...1c24e7` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x10af39...06eeed` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x166f56...a17ec7` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x389126...5a4833` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x3fc149...952bf0` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x4c7a42...0743bf` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x5cb454...011f2b` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x634902...40fc71` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x6bf5b3...feb343` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x853dcb...43dcb3` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x94f5e8...dbe242` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xa48fea...4c0f21` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xa7559b...748439` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xe8084d...e36d88` | ⚠️ Unaudited |
| AlpacaFeeder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25be5d...3f6fad` | ⚠️ Unaudited |
| AlpacaOraclePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x333db3...a1c52b` | ⚠️ Unaudited |
| AlpacaStablecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x561b8c...a1a0b4` | ⚠️ Unaudited |
| AlpacaStablecoinProxyActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1391fb...bf1481` | ⚠️ Unaudited |
| AlpacaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f0528...091d2f` | ⚠️ Unaudited |
| AusdPriceFeedKeepers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4acb44...7f303f` | ⚠️ Unaudited |
| AuthTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb689c0...a951d5` | ⚠️ Unaudited |
| BookKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7d037...fb0e49` | ⚠️ Unaudited |
| CakeMaxiWorker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x025ba0...8199c2` | ⚠️ Unaudited |
| CakeMaxiWorker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0455ce...d8275d` | ⚠️ Unaudited |
| CollateralPoolConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x064bb6...6bdac1` | ⚠️ Unaudited |
| DeltaNeutralVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd22d90...ecbf99` | ⚠️ Unaudited |
| DeltaNeutralVaultConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30275f...fe700f` | ⚠️ Unaudited |
| EmissionBridgeKeepers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64fe10...5284ae` | ⚠️ Unaudited |
| FairLaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa625ab...489a8f` | ⚠️ Unaudited |
| FixedSpreadLiquidationStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52d62b...50dbc1` | ⚠️ Unaudited |
| FlashMintModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a7233...96fbd6` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 1 | bsc | unit-392083 | `0xa43487...01d360` | ⚠️ Unaudited |
| GrassHouse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16716e...5981d7` | ⚠️ Unaudited |
| GrassHouseGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x503093...026ee5` | ⚠️ Unaudited |
| LiquidationEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5aa539...9a7026` | ⚠️ Unaudited |
| MdexRestrictedStrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x812298...5ae475` | ⚠️ Unaudited |
| MdexRestrictedStrategyPartialCloseLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7103a...df68b4` | ⚠️ Unaudited |
| MdexWorker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9005e...e515b7` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x083c02...e58de7` | ⚠️ Unaudited |
| OracleMedianizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x329796...738303` | ⚠️ Unaudited |
| PancakePair | unknown | project_anchor | own_supporting | 0 | bsc | unit-392076 | `0x53085b...95e8ae` | ⚠️ Unaudited |
| PancakeswapV2RestrictedSingleAssetStrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x67420c...e3053f` | ⚠️ Unaudited |
| PancakeswapV2RestrictedSingleAssetStrategyPartialCloseLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23850a...7cc61c` | ⚠️ Unaudited |
| PancakeswapV2RestrictedSingleAssetStrategyPartialCloseMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1b41e...d7c547` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20ebee...108684` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyPartialCloseLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1313c5...e3ae55` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyPartialCloseMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1fa4d6...87b464` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyWithdrawMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32b02e...86e946` | ⚠️ Unaudited |
| PancakeswapV2StrategyAddBaseTokenOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77d23a...bfb40e` | ⚠️ Unaudited |
| PancakeswapV2StrategyAddTwoSidesOptimalMigrate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02728b...f7bdd0` | ⚠️ Unaudited |
| PancakeswapV2StrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f3451...36f1df` | ⚠️ Unaudited |
| PancakeswapV2StrategyWithdrawMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x811938...c1dcb3` | ⚠️ Unaudited |
| PancakeswapV2Worker02Migrate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc13df...444d06` | ⚠️ Unaudited |
| PancakeswapWorker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb63acd...fb93f3` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1afadb...3831af` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5379f3...94f452` | ⚠️ Unaudited |
| ProxyWalletFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56f2d6...f4a116` | ⚠️ Unaudited |
| RevenueTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x891100...8763cd` | ⚠️ Unaudited |
| RevenueTreasuryKeepers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee6d18...553d7e` | ⚠️ Unaudited |
| Scientist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c25da...2e2b0e` | ⚠️ Unaudited |
| ScientixToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-392073 | `0x2cfc48...4c0aa5` | ⚠️ Unaudited |
| ScToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-392072 | `0x0e5c2b...070fa7` | ⚠️ Unaudited |
| Shield | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1963f8...1b4656` | ⚠️ Unaudited |
| ShowStopper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc19c71...798558` | ⚠️ Unaudited |
| SimpleVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27e283...bb7d4d` | ⚠️ Unaudited |
| SingleAssetWorkerConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a3617...b1f8aa` | ⚠️ Unaudited |
| StablecoinAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x713130...cacce3` | ⚠️ Unaudited |
| StaticPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ef228...0c50dc` | ⚠️ Unaudited |
| StratAlpaca | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08fc45...1cc70f` | ⚠️ Unaudited |
| StrategyAddBaseTokenOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13c052...df99a7` | ⚠️ Unaudited |
| StrategyAddTwoSidesOptimal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabe593...1075a6` | ⚠️ Unaudited |
| StrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3af78a...cd2dc5` | ⚠️ Unaudited |
| StrategyOracleMinimize | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45ce92...455451` | ⚠️ Unaudited |
| StrategyWithdrawMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7f711...765013` | ⚠️ Unaudited |
| StronkAlpaca | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f695b...6ce7a7` | ⚠️ Unaudited |
| SystemDebtEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c98c7...df1cb8` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d5408...1d0a59` | ⚠️ Unaudited |
| TimeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x793fd1...ea66fd` | ⚠️ Unaudited |
| TransmuterB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x161b33...482d97` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x01cf56...55fcbc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x03462f...7b0d9b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x044420...3be745` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0768ef...fc6bee` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x07767d...62f3ae` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0780d4...3a181a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x08b5a9...5afc7e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x08ea5f...35787f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x08fa2e...ca52bd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0d487b...941159` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0ff370...2a91b3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x13e3bc...d30aea` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x1d2416...7c01b4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2b356b...e9778d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2b9c18...f89559` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x3ffa4c...2e61b0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x41d2e4...fa1123` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x44b930...93c617` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x45040e...1129e6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x47f1c5...239b72` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x4f4054...c1cf43` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x50e574...1ddab7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x632e03...d5517a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x665a8e...816ce2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x8269bc...cca036` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x878ef0...d26618` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x8e5cfa...af6f16` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xaba0b0...41ee19` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xb7d85a...ad24a9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xd16004...513fac` | ⚠️ Unaudited |
| TripleSlopeModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x375d32...d52b30` | ⚠️ Unaudited |
| UpgradeableOwnableProxy | unknown | project_anchor | own_supporting | 1 | bsc | unit-392084 | `0x68145f...9efb9a` | ⚠️ Unaudited |
| UpgradeableOwnableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x71c035...816e1f` | ⚠️ Unaudited |
| UpgradeableOwnableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x808386...726ade` | ⚠️ Unaudited |
| UpgradeableOwnableProxy | unknown | project_anchor | own_supporting | 1 | bsc | unit-392085 | `0xf92aba...b5b024` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e98f0...aae694` | ⚠️ Unaudited |
| VaultAip42 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5fd571...e67c26` | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyAddBaseTokenOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x744bb9...fc21d3` | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64e7de...9935f7` | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyPartialCloseLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91c1f2...df2d24` | ⚠️ Unaudited |
| WaultSwapWorker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d97ba...d307de` | ⚠️ Unaudited |
| WNativeRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1d2ca...af0d3d` | ⚠️ Unaudited |
| WorkerConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3175ec...884a11` | ⚠️ Unaudited |
| xALPACA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6510b1...8d760a` | ⚠️ Unaudited |
| YearnVaultAdapter | unknown | project_anchor | own_supporting | 0 | bsc | unit-392077 | `0x7da4b2...b55e15` | ⚠️ Unaudited |
| YearnVaultAdapterWithIndirection | unknown | project_anchor | own_supporting | 0 | bsc | unit-392080 | `0xa96b31...6706b1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392074 | `0x2dfe72...b72bcf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392075 | `0x49a549...2bf3ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392078 | `0x802de5...970bf1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392079 | `0x8e2208...fa04fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392081 | `0xe8efb5...7bdbf9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392082 | `0xebb154...4460da` | ❓ Unverified |

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
| bsc | `0x53085b...95e8ae` | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2cfc48...4c0aa5` | ScientixToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0e5c2b...070fa7` | ScToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x68145f...9efb9a` | UpgradeableOwnableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf92aba...b5b024` | UpgradeableOwnableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x7da4b2...b55e15` | YearnVaultAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 78 |
| upstream | 1 |
| standard_library | 50 |
| needs_review | 6 |

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
