# Agentic Audit Brief: Scientix

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Scientix (`scientix`)
- Website: [https://scientix.finance](https://scientix.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
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

- UnnamedContract (`0x2dfe725eca8ffe13fe4e4a8e015cf857b3b72bcf`, chain 56)
- UnnamedContract (`0x49a54908e1335f8702af5e5bf787ce83bd2bf3ed`, chain 56)
- UnnamedContract (`0x802de5174b2526e100de119c479e5560f0970bf1`, chain 56)
- UnnamedContract (`0x8e2208c93e7ad4500140144505ec47c6fefa04fc`, chain 56)
- UnnamedContract (`0xe8efb51e051b08614df535ee192b0672627bdbf9`, chain 56)
- UnnamedContract (`0xebb15456c0833033f0310f61748cd597554460da`, chain 56)
- GnosisSafeProxy (`0xa43487b3a77de47cb0192f1aec43ea4e4701d360`, chain 56)
- PancakePair (`0x53085b02955cfd2f884c58d19b8a35ef5095e8ae`, chain 56)
- ScientixToken (`0x2cfc48cdfea0678137854f010b5390c5144c0aa5`, chain 56)
- ScToken (`0x0e5c2b15666eee4b66788e45cf4da0392c070fa7`, chain 56)
- UpgradeableOwnableProxy (`0x68145f3319f819b8e01dfa3c094fa8205e9efb9a`, chain 56)
- UpgradeableOwnableProxy (`0xf92aba2a79dc133278de2cddb38db775a4b5b024`, chain 56)
- YearnVaultAdapter (`0x7da4b286b24b85ba971f5f5f4375f71e15b55e15`, chain 56)
- YearnVaultAdapterWithIndirection (`0xa96b313cb2e81505b306250946e3be86b26706b1`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 8; live-surface rows included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 14/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/8 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 14 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 121 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 48 standard proxy/library)
- Proxy deployments represented within implementation groups: 52
- Confirmed-live implementations: 14 of 135 unique; 121 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/129
- Verified + Unaudited implementations: 129
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
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0159f44892ffed7bc9c00ac7ad3d60dcf331fe53` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x02da7035bed00ae645516bdb0c282a7fd4aa7442` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x040a65cddb0b8c75c72936879aa603e0d7425da4` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x05bdf33f03017eafdeeccd68406e1281a1def62d` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x08fc9ba2cac74742177e0afc3dc8aed6961c24e7` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x10af39eb499ba94fa0d1de1f6ba98b839206eeed` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x166f56f2eda9817cab77118ae4fcaa0002a17ec7` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x38912684b1d20fe9d725e8b39c39458fac5a4833` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x3fc149995021f1d7aec54d015dad3c7abc952bf0` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x4c7a420142ec69c7df5c6c673d862b9e030743bf` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x5cb454fc86068e710212fbecbc93070b90011f2b` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x634902128543b25265da350e2d961c7ff540fc71` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x6bf5b334409cc3fd336da9a2d3e3f9c870feb343` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x853dcb694f74df5fd28b8fdec0be10b8ac43dcb3` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x94f5e884e11fc054ca0b332e3a8773750bdbe242` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xa48fea4153c3bd79ce12220580f4a1e0974c0f21` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xa7559bb0235a1c6003d0e48d2cfa89a6c8748439` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xe8084d7ded35e2840386f04d609cdb49c7e36d88` | ⚠️ Unaudited |
| AlpacaFeeder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25be5dae973894acfa810e9f4db7e3d73a3f6fad` | ⚠️ Unaudited |
| AlpacaOraclePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x333db3ede42a351fbcce6ef38ec35a74a9a1c52b` | ⚠️ Unaudited |
| AlpacaStablecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x561b8c4f2ac28801baf6a4461b63c954eea1a0b4` | ⚠️ Unaudited |
| AlpacaStablecoinProxyActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1391fb5efc2394f33930a0cffb9d407abdbf1481` | ⚠️ Unaudited |
| AlpacaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f0528ce5ef7b51152a59745befdd91d97091d2f` | ⚠️ Unaudited |
| AusdPriceFeedKeepers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4acb447a4fc0fa7d95cfd8fef1131526cb7f303f` | ⚠️ Unaudited |
| AuthTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb689c00e7d3897aaa505abace6a1b590b5a951d5` | ⚠️ Unaudited |
| BookKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7d037e67b09cb59c94e0fef231124fd01fb0e49` | ⚠️ Unaudited |
| CakeMaxiWorker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x025ba0e82d45e29e831c53637bea2ce9d88199c2` | ⚠️ Unaudited |
| CakeMaxiWorker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0455ce6b16629883c52d54ac5d5fcb4622d8275d` | ⚠️ Unaudited |
| CollateralPoolConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x064bb6eea2339cad2bdaf895c3d3728e2c6bdac1` | ⚠️ Unaudited |
| DeltaNeutralVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd22d9012b1c06ae593d8f33b706becea58ecbf99` | ⚠️ Unaudited |
| DeltaNeutralVaultConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30275f8980ade89febfd93023a4af67da0fe700f` | ⚠️ Unaudited |
| EmissionBridgeKeepers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64fe10f7afbc6ffbd8f849b7a36a3295c45284ae` | ⚠️ Unaudited |
| FairLaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa625ab01b08ce023b2a342dbb12a16f2c8489a8f` | ⚠️ Unaudited |
| FixedSpreadLiquidationStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52d62bd452b6b8d7d92ef4fe6e474fb55650dbc1` | ⚠️ Unaudited |
| FlashMintModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a7233ade189237e4ecc86ff201d3bac2c96fbd6` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 1 | bsc | unit-392083 | `0xa43487b3a77de47cb0192f1aec43ea4e4701d360` | ⚠️ Unaudited |
| GrassHouse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16716ee0a61eb9a34b42327bf442f873f15981d7` | ⚠️ Unaudited |
| GrassHouseGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50309398e3abcbd3357b0dd54a624c1251026ee5` | ⚠️ Unaudited |
| LiquidationEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5aa539cbe3d5bbeb89f633946e64e3c3419a7026` | ⚠️ Unaudited |
| MdexRestrictedStrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x812298f58b7cc413f06aa88f10fad71bd55ae475` | ⚠️ Unaudited |
| MdexRestrictedStrategyPartialCloseLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7103ac4c3b888fdfe9c7adbe596c15e5ddf68b4` | ⚠️ Unaudited |
| MdexWorker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9005e936d7d8d28b7c8151be39195744ae515b7` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x083c022046df51f458709e1a5660b87754e58de7` | ⚠️ Unaudited |
| OracleMedianizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3297961610d8a64f41cb4f577448bf3a57738303` | ⚠️ Unaudited |
| PancakePair | unknown | project_anchor | own_supporting | 0 | bsc | unit-392076 | `0x53085b02955cfd2f884c58d19b8a35ef5095e8ae` | ⚠️ Unaudited |
| PancakeswapV2RestrictedSingleAssetStrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x67420cc8fda18b061fb4ba63777736cd8ae3053f` | ⚠️ Unaudited |
| PancakeswapV2RestrictedSingleAssetStrategyPartialCloseLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23850a04f9dbf488780d998dd0048d472f7cc61c` | ⚠️ Unaudited |
| PancakeswapV2RestrictedSingleAssetStrategyPartialCloseMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1b41e43fe46db03959ee87dc00f498ae3d7c547` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20ebee5d5127d47b686ecfacf548ca4a65108684` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyPartialCloseLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1313c57c5db43f932a8c91e12d19c2890fe3ae55` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyPartialCloseMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1fa4d6a2498cbdec555fa727689f9b9d4587b464` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyWithdrawMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32b02e91dd0d7496ff34ebd9deb12973ee86e946` | ⚠️ Unaudited |
| PancakeswapV2StrategyAddBaseTokenOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77d23aff927f3d46e51d449372c957b3cbbfb40e` | ⚠️ Unaudited |
| PancakeswapV2StrategyAddTwoSidesOptimalMigrate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02728b3d91823c86e4009d2441d46e7397f7bdd0` | ⚠️ Unaudited |
| PancakeswapV2StrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f34511e604a1795e854aef9d872cb9c9836f1df` | ⚠️ Unaudited |
| PancakeswapV2StrategyWithdrawMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x811938726bc82da82fc4ac5de28851f27cc1dcb3` | ⚠️ Unaudited |
| PancakeswapV2Worker02Migrate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc13df0cae75114a44c3d7acd6adfaa229444d06` | ⚠️ Unaudited |
| PancakeswapWorker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb63acd06c7d6ece492dfba61c606855e49fb93f3` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1afadbe730d44b95aeec909846d4bfdd8d3831af` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5379f32c8d5f663eacb61eef63f722950294f452` | ⚠️ Unaudited |
| ProxyWalletFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56f2d6fe1acb1549a665ff3a6e7dc46753f4a116` | ⚠️ Unaudited |
| RevenueTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89110091631f49fdcb7141f791640096b98763cd` | ⚠️ Unaudited |
| RevenueTreasuryKeepers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee6d18afaae3cbe2fce9b34edf0fdcf615553d7e` | ⚠️ Unaudited |
| Scientist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c25da226ab9f03d30243465dd83f18bc22e2b0e` | ⚠️ Unaudited |
| ScientixToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-392073 | `0x2cfc48cdfea0678137854f010b5390c5144c0aa5` | ⚠️ Unaudited |
| ScToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-392072 | `0x0e5c2b15666eee4b66788e45cf4da0392c070fa7` | ⚠️ Unaudited |
| Shield | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1963f84395c8cf464e5483de7f2f434c3f1b4656` | ⚠️ Unaudited |
| ShowStopper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc19c71a2fc7d67fb10ffe4e13dab3acfef798558` | ⚠️ Unaudited |
| SimpleVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27e28316f5e54f1dae2112f8423a62df31bb7d4d` | ⚠️ Unaudited |
| SingleAssetWorkerConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a3617197113ed2a9bbcadfb3c4f417734b1f8aa` | ⚠️ Unaudited |
| StablecoinAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x713130e882b1dcb9ea7d960119f7b62429cacce3` | ⚠️ Unaudited |
| StaticPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ef228fe83393411c434306bf7ce56532a0c50dc` | ⚠️ Unaudited |
| StratAlpaca | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08fc457c814bbe1463bd53d4e92cc5b95e1cc70f` | ⚠️ Unaudited |
| StrategyAddBaseTokenOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13c052c34beaed5f7c4856faa4da0544b9df99a7` | ⚠️ Unaudited |
| StrategyAddTwoSidesOptimal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabe59308ac72f04b1a2d04175d5247ba981075a6` | ⚠️ Unaudited |
| StrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3af78aeb766059e2db89654ed438a8d976cd2dc5` | ⚠️ Unaudited |
| StrategyOracleMinimize | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45ce9276e6b62ebb91a6a866e49ceacec5455451` | ⚠️ Unaudited |
| StrategyWithdrawMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7f7118b1a50a088fe50b335f743ccfbc2765013` | ⚠️ Unaudited |
| StronkAlpaca | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f695bd5ffd25149176629f8491a5099426ce7a7` | ⚠️ Unaudited |
| SystemDebtEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c98c712da02d48fa3aa53dc3fe3e6754ddf1cb8` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d5408f2287bf9f9b05404794459a846651d0a59` | ⚠️ Unaudited |
| TimeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x793fd18a518834f490ada1cc69a7ebf1e7ea66fd` | ⚠️ Unaudited |
| TransmuterB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x161b33850ff58463c0503365d52428b76a482d97` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x01cf56544a303025c77c76ca77982cbd8655fcbc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x03462fb60aa5de5f1a068a597743f66e097b0d9b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0444201f61e06b35cab85807c2dc4764703be745` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0768ef9e891725c4c65f3e0fb671abcd66fc6bee` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x07767daf4e84bdaabf3a72c80cec8c8eb962f3ae` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0780d461480a3386031498f264a91f3d473a181a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x08b5a95cb94f926a8b620e87ee92e675b35afc7e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x08ea5fb66ea41f236e3001d2655e43a1e735787f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x08fa2ed02ebdc97bad85ff6369c57c6280ca52bd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0d487bb18f4d7d0523abb12101e378d6bf941159` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0ff370c7e245992414bef2cacba369422d2a91b3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x13e3bc3c6a96ae3beadd1b08531fde979dd30aea` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x1d24165cefa83c14559f67f819b61c2c857c01b4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2b356b9cd4b00658facc35f4d031df528ee9778d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2b9c18a7e2f067e006e4625a74174472e9f89559` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x3ffa4cd446f8127db0ed316b1e952876be2e61b0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x41d2e4ac5b7373041c06a9d331b0624142fa1123` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x44b930f2e53231b3f85495229ea644724c93c617` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x45040e48c00b52d9c0bd11b8f577f188991129e6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x47f1c5f505043dee9604b98d99304f7ad4239b72` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x4f4054b4d286213a39ca5b8ef89116ac62c1cf43` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x50e5748a2e9c5e05ba8b95549bf7b11da91ddab7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x632e03943dd4c5c509486233b345fae86cd5517a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x665a8e4b88f6bfa984b1568505cb4545f7816ce2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x8269bc659c9d6fe14720e0e549d67a37bdcca036` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x878ef0130340b8375de06287a47a6c9c2bd26618` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x8e5cfa7c06f187b56537f7f0cabfb55611af6f16` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xaba0b03eaa3684eb84b51984add918290b41ee19` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xb7d85ab25b9d478961face285fa3d8aaecad24a9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xd16004424b9c3f0a7c74c4c8dcda0d8c4d513fac` | ⚠️ Unaudited |
| TripleSlopeModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x375d32fada30d7e6fea242fca221a22cc6d52b30` | ⚠️ Unaudited |
| UpgradeableOwnableProxy | unknown | project_anchor | own_supporting | 1 | bsc | unit-392084 | `0x68145f3319f819b8e01dfa3c094fa8205e9efb9a` | ⚠️ Unaudited |
| UpgradeableOwnableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x71c035529bc37d44be67296b2d2f7e8974816e1f` | ⚠️ Unaudited |
| UpgradeableOwnableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x808386dece805422b6924d57adc1279cd0726ade` | ⚠️ Unaudited |
| UpgradeableOwnableProxy | unknown | project_anchor | own_supporting | 1 | bsc | unit-392085 | `0xf92aba2a79dc133278de2cddb38db775a4b5b024` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e98f04411d43c800608ca5019c216c212aae694` | ⚠️ Unaudited |
| VaultAip42 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5fd571bea8d104a28bfe44874f2aaf69f8e67c26` | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyAddBaseTokenOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x744bb95c6f31a0b6f7e7b53c46342b42aafc21d3` | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64e7de687625981497f21bd31135f6a9049935f7` | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyPartialCloseLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91c1f2e7f7e6b77171ebda204f074a574edf2d24` | ⚠️ Unaudited |
| WaultSwapWorker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d97bad1fd253ba3ac46a8281ae6571ad6d307de` | ⚠️ Unaudited |
| WNativeRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1d2ca01bc88f325ff7266dd2165944f3caf0d3d` | ⚠️ Unaudited |
| WorkerConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3175ec52c36fff63dce00e8a50e6066d38884a11` | ⚠️ Unaudited |
| xALPACA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6510b1825df7b0c665d92ab694dfbc0ed48d760a` | ⚠️ Unaudited |
| YearnVaultAdapter | unknown | project_anchor | own_supporting | 0 | bsc | unit-392077 | `0x7da4b286b24b85ba971f5f5f4375f71e15b55e15` | ⚠️ Unaudited |
| YearnVaultAdapterWithIndirection | unknown | project_anchor | own_supporting | 0 | bsc | unit-392080 | `0xa96b313cb2e81505b306250946e3be86b26706b1` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392074 | `0x2dfe725eca8ffe13fe4e4a8e015cf857b3b72bcf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392075 | `0x49a54908e1335f8702af5e5bf787ce83bd2bf3ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392078 | `0x802de5174b2526e100de119c479e5560f0970bf1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392079 | `0x8e2208c93e7ad4500140144505ec47c6fefa04fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392081 | `0xe8efb51e051b08614df535ee192b0672627bdbf9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392082 | `0xebb15456c0833033f0310f61748cd597554460da` | ❓ Unverified |

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
| bsc | `0x53085b02955cfd2f884c58d19b8a35ef5095e8ae` | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2cfc48cdfea0678137854f010b5390c5144c0aa5` | ScientixToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0e5c2b15666eee4b66788e45cf4da0392c070fa7` | ScToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x68145f3319f819b8e01dfa3c094fa8205e9efb9a` | UpgradeableOwnableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf92aba2a79dc133278de2cddb38db775a4b5b024` | UpgradeableOwnableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x7da4b286b24b85ba971f5f5f4375f71e15b55e15` | YearnVaultAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
