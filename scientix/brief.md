# Agentic Audit Brief: Scientix

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Scientix (`scientix`)
- Website: [https://scientix.finance](https://scientix.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc
- Contract surface: 564 unique implementations (599 raw deployments)
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
- Outside the address book: 550 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 14 standard proxy/library)
- Proxy deployments represented within implementation groups: 52
- Confirmed-live implementations: 14 of 564 unique; 550 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/129
- Verified + Unaudited implementations: 129
- Verified by bytecode match: 0
- Unverified implementations: 435
- Unique implementations: 564
- Raw deployments: 599
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
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x02da7035bed00ae645516bdb0c282a7fd4aa7442`; bsc `0x036664394715d255895f600861fe882a167dbf57` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x040a65cddb0b8c75c72936879aa603e0d7425da4`; bsc `0x20064f5ca352d95dda597acb5ecd10a86850caf9` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x05bdf33f03017eafdeeccd68406e1281a1def62d` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x08fc9ba2cac74742177e0afc3dc8aed6961c24e7` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x10af39eb499ba94fa0d1de1f6ba98b839206eeed`; bsc `0x462c2d17fd631b6bdb172a72d6da7d7ec48f4e14` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x166f56f2eda9817cab77118ae4fcaa0002a17ec7`; bsc `0x588c58d88319b2edf7426006668cdff60940f3c7` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x38912684b1d20fe9d725e8b39c39458fac5a4833`; bsc `0x69b5018910f9c8d82d544f315e9d3477236ed0e1` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3fc149995021f1d7aec54d015dad3c7abc952bf0`; bsc `0x4a967509e424969bc766d5b0da74e59e18392cda` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4c7a420142ec69c7df5c6c673d862b9e030743bf`; bsc `0xb7da04cb7dae797397e290c79079f959e4877009` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5cb454fc86068e710212fbecbc93070b90011f2b`; bsc `0x9a5105c9dd6c6ae76518f4afbbd388514c334d96` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x634902128543b25265da350e2d961c7ff540fc71` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6bf5b334409cc3fd336da9a2d3e3f9c870feb343`; bsc `0x815c54f332dd60eacd839bb12fdc37105783b77f` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x853dcb694f74df5fd28b8fdec0be10b8ac43dcb3`; bsc `0xbf4c99bf1db12e1ad96672c7ad652bc5fe0f23eb` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x94f5e884e11fc054ca0b332e3a8773750bdbe242`; bsc `0xb7025d33762580fd48b412c3a5108be33c91df77` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa48fea4153c3bd79ce12220580f4a1e0974c0f21`; bsc `0xf02be2d27461c4fb4fb7d474215e799ca07f3a97` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa7559bb0235a1c6003d0e48d2cfa89a6c8748439`; bsc `0xda5c06064d29bd7525123d86d17c57512ce98586` | ⚠️ Unaudited |
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
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x03462fb60aa5de5f1a068a597743f66e097b0d9b`; bsc `0x0e7b1e4dedc07f711493ad696e2ee4969a119e2f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0444201f61e06b35cab85807c2dc4764703be745` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0768ef9e891725c4c65f3e0fb671abcd66fc6bee`; bsc `0xaa8f19fab381df42f2767ae7fb770434c4b710b4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x07767daf4e84bdaabf3a72c80cec8c8eb962f3ae` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0780d461480a3386031498f264a91f3d473a181a`; bsc `0x6b6997ae4be20d8bc5a49e482e9a2979b46e3e5f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x08b5a95cb94f926a8b620e87ee92e675b35afc7e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x08ea5fb66ea41f236e3001d2655e43a1e735787f`; bsc `0x5f4ea2bf5fce383305440c8edadafc3ef600e0a1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x08fa2ed02ebdc97bad85ff6369c57c6280ca52bd`; bsc `0x29d36fc6ac505e8d9c04e5fae913038c8f8ec82a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0d487bb18f4d7d0523abb12101e378d6bf941159`; bsc `0x5146359ff45ec3b6f60c256c99fff856dcbb3398` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0ff370c7e245992414bef2cacba369422d2a91b3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x13e3bc3c6a96ae3beadd1b08531fde979dd30aea`; bsc `0x951eb3e9fbe2e4bf428e68ad251ae0f2903e320f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x1d24165cefa83c14559f67f819b61c2c857c01b4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2b356b9cd4b00658facc35f4d031df528ee9778d`; bsc `0x425b07f17c0b1476c0a3006b70816800147dec64` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2b9c18a7e2f067e006e4625a74174472e9f89559`; bsc `0x9cbb0e5c103707dc35dae0aa05a320c4f60a93f1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3ffa4cd446f8127db0ed316b1e952876be2e61b0`; bsc `0x83d6f3ac9c88c238b0d1676e1fce59f4b026ad03` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x41d2e4ac5b7373041c06a9d331b0624142fa1123`; bsc `0xf9e292c9608a4aba9a141e55a184d6d68d3eeb70` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x44b930f2e53231b3f85495229ea644724c93c617`; bsc `0xbb403a75a49aec69d0333da3d95ec1d1f5973d7d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x45040e48c00b52d9c0bd11b8f577f188991129e6`; bsc `0xe35e008ccb407448ef37ef7c0148097553c00aa0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x47f1c5f505043dee9604b98d99304f7ad4239b72`; bsc `0xa5e98c503d62ee19619b3ef12085f0d35d2a3463` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4f4054b4d286213a39ca5b8ef89116ac62c1cf43`; bsc `0x7e6f681df3210fba706fc2f8c59cadbede7227f7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x50e5748a2e9c5e05ba8b95549bf7b11da91ddab7`; bsc `0x7834959e1e552e443933e7c5979c24b9eca01e4f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x632e03943dd4c5c509486233b345fae86cd5517a`; bsc `0xeac60ec7f7623b3db636c9fc9758e8cbf3ff0548` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x665a8e4b88f6bfa984b1568505cb4545f7816ce2`; bsc `0x88934638ef657affd64ba2150bb255d54f5e5b29` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8269bc659c9d6fe14720e0e549d67a37bdcca036`; bsc `0xd2a63dce53c509edd7dcb072e33a16e726c92def` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x878ef0130340b8375de06287a47a6c9c2bd26618`; bsc `0x9f481c023b84359f4fcc30749f828d5a9c17af03` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x8e5cfa7c06f187b56537f7f0cabfb55611af6f16` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xaba0b03eaa3684eb84b51984add918290b41ee19` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xb7d85ab25b9d478961face285fa3d8aaecad24a9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xd16004424b9c3f0a7c74c4c8dcda0d8c4d513fac`; bsc `0xfbd7b6942de9edc987f81d8f31c2d4cd88cfb4f6` | ⚠️ Unaudited |
| TripleSlopeModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x375d32fada30d7e6fea242fca221a22cc6d52b30` | ⚠️ Unaudited |
| UpgradeableOwnableProxy | unknown | project_anchor | own_supporting | 1 | bsc | unit-392084 | `0x68145f3319f819b8e01dfa3c094fa8205e9efb9a` | ⚠️ Unaudited |
| UpgradeableOwnableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x71c035529bc37d44be67296b2d2f7e8974816e1f`; bsc `0x8330b5e39b68ef642c7d3241db39a8c3238bf4c2` | ⚠️ Unaudited |
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

### ❓ Unverified (435)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0541c542e2039d13238b5abc6d32a23ae3222b1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05f34ec9e20459b84f31cd9c65630244ced85fb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06d280abee1073b83a01fe778b6145e850e87162` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x090ff57ffd64593111b0aa7f2d664b1aa3066137` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09176545f3c013142b69477d7de2e7f4baa2bb3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09fd9321aad19bf98c85a7df06891b38abcbe57b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ad12bc160b523e7abfbe3abadcee8f1b6116089` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c1f049ebe3e0537c7e7ce428bb468d5f6bf83b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c5ed4d8df44f20b052fc6966991e686d594b9c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d9faf7023976b45b220b692699c5f5e9432efd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e0806a43188f383aadaec3440d6e8e4d71b281c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ec1b4a034e7a4dd746f2c5c7dc806293db7d413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0eeca1690c59fb195fd158f44c4f3230ed28561c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x104c62e5eee21cb4acf0a4a7e459cc72ea61545d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10e691bdd2665d0180fbc69535862874a3594236` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11362ea137a799298306123eea014b7809a9db40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x121752a8c3d4afd5cc0b41c8807db7887742a608` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14613598f0e929f8bb1f89051fd976b0a7b67bec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14b3cae61465656329a1240b67146249fa1fee97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14ddb0f012b425bd33cd22f33d2af41e3828a08a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x152461ec1492611ab31e13dc10afbfef2e48bf70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x158da805682bdc8ee32d52833ad41e74bb951e59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15bc06b928917228893da2496b0ea86345a63853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x165102dd6ea72a4fb513ff78f30e835c8f099c25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x174e30e9e529e640b23e497f745742c48a71f192` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x184962b6c9a55c8c2ee757ca86b73a6edf87e3ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x195f4c8754e9809bfe4d5f7a5891810c757cac7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a174d28b54f688cb4b1b30f9daa64b0fc5f4db8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c623105d072dc69f9a3f8a3db67b5aecedc082b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1cdea8f4592e8ff406f0cd65a3b2f2060e71c754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d0edca3f151dc9fafb5ce79547d153229985f42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1dba79e73a7ea9749fc28b921bc9431d09bef2b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1dbdc3f67e56daedffa6b2b59d2f4a18190bdded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e66af314756e6cc5065b5091be2ff0011e5ea84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1eaaf599b95d7cab0151b8384d15fe3f68aa4ee3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x205ec09443debb37a526a384f68622bae69f6fc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20e5d465df8520abfef79b04c4a2c8952b365e82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2245634e4c325f3f3fc2b98cf75352b5d92f4c46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x226bcb6caa453a013dcead5cb901673a31a4c81f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x238b84fc7635c33f46313ebff4283dc0e2ee3221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x255f31ae71c2864942cd5d86111fcf2d8a907fdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x262de19b5fde97ed5bdba10d630e34fb9a1b59b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2728eafc63c81557a929fee36ddad0d18d6b5252` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x274dd0edac0ec5e72e45433c1666d6c246338bb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x284e25169ce75fc62c9339207de5d775f46ad406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x28a7178e2125d053220b47195727efc29f1798df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x291fb4aae9f79f395b2106fbbe48fb484db8c24c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29a08f38af02fcc2a75e91144e3931e26d31c88a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c4a246e532542dfae3d575003c7f5c6583bfd8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c89d34e4266688bd8990103abfcedb8ea325fcc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392074 | `0x2dfe725eca8ffe13fe4e4a8e015cf857b3b72bcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e7f32e38ea5a5fcb4494d9b626d2d393b176b1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ec1066a4856b9b326c4bebac24d6b5d1952296b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ef53bb6749d9c635ff1fe7580b36303eca185a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x301897d786adc651473e1edb87b32ee5821bdd60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30370f7f443c78e27b7c4153c4ac7d3c56dded48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30a937b9d22d71e58ad9dc96a6a3d552b9c0724e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x315f5fcbe2ab4b2c2b7ae69ada3d6a7d778fc726` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31e4614551a80eab40c29ae851d710a3a0b72967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3282d2a151ca00bfe7ed17aa16e42880248cd3cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32951e060e6ad6d512fc3eaa958f3a8f4f82ac6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33c66c601a442b2263976332397f923cd6bf1753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3483f17668f1863b57cfba66e9cf2f9c3b48423f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x349dbcf399e39642d43b6926c8ac30d9cfec5b80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34cce22a47c5f020a5cc4fcc63d231d46577415a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35cba40d30a0b814a53a09b667405a1a0a3e2ae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x38430ca1767038fa213249bb2dc16ed3ac244861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39bbc1b5c46ac99ecd412533ca831c4a730258ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a70232785a23b0c7cd8e3c236d9bbfd41292e6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b4fbb2b8536ab144048abafdd27eaf52f0fa4dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3be23527ff4d7881c6f5ed870cbf89f5c24c56eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3da8c388cd5e5a7011ebd084d3708a117067ebbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3dfc436f2194ca9ab2faf314f95492c0485b16b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e0c8a85620560f02ca4893fe5c044532f120934` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3fd1029d4db12dfdaa6b92bfeed6e41e21fdc4b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x417548a28d0cfb48a3b68b2eb4f09eab29cbc71a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41867cc58aece8b570ff1a2a8aa6149014d2a94c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4193d35d0cb598d92703ed69701f5d568aca015c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41c1d9544ed9fa6b604ecaf7430b4cfdf883c46f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x426bdfe8cab2c4720b36abbdc3ff08144bc361f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x42da676116df26ee9bb71595ffe7c18343fb2b64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4362635a0b2f8df98cde4cdde5f5f3be96f45316` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44b3868cbba5fbd2c5d8d1445bdb14458806b3b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x452fc464583ab2a149d6a63437fe90322a65e252` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x462bc565b5486e76503dab62d96937842f207aaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4633a11702a5751fb4836f5ecd3edd8d86852ee9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392075 | `0x49a54908e1335f8702af5e5bf787ce83bd2bf3ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a89f897aa97d096dbea0f874a5854662996f8ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4add84e335ee575ba22bc4059c844ed1b756b5c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b70c41f514fbbea718234ac72f36c1b077a4162` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b837846ad3322ecae28b60a2c2cf16e41b5a3ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4bf04730c37fc395b5f780e6ad3e397c031f6d39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4bfe9489937d6c0d7cd6911f1102c25c7cbc1b5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c7fb2214e6d782dc0152ea39c39166f666ca367` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c8f9534731ec017a7a4e71f1045f4a8dd9f4c8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d228564cc6bea08b7cf1bcd4a7074d4b9293851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d395258c313bfee5ba4ff500a9befe8ff26991e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d5fc3f859acf7525d7bc0faf540b827d0b8fe27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d6575b714b14b105c3a0e8b3f952723a51b38e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4eca08e4f2ed826dba5bea2ec133036fe60d30b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ed10eb92c4e92be4d368433e009646e4abdab05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f56a92ca885be50e705006876261e839b080e36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x500cb73333641ab98d80de8921b16bd3a26048dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50380ac8da73d73719785f0a4433192f4e0e6c90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50441d9c8e08e3dcce8d517e2257a3882d43fee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5124baa8ca9c5e327efc458271dac157aceb4f04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5138133f0671071d8b8f1c4c180881bfcfe22cec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x51782e39a0af33f542443419c223434bb4a5a695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x51b893ff705b04188784da29d9bade2d72dd353c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x532358cb052b0ca17856a75f1244681eedf36dca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5342fbb861c2aea626f66521c512ac5fa03b6a58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5353c5c15e7bdab42d3f03e3332ea84ca5835f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5359911a2081f8afeb0a19e01cf1fe6b0457d9d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x539fc3fd348b427b5f70b4f87c1a44983c9e8dbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x53dbb71303ad0f9afa184b8f7147f9f12bb5dc01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54d3218787060463eeb944fa01b0cbe745ef4db5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x553b8adc2ac16491ec57239bea7191719a2b880c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x55be65fa6566babe8bd36175bf5299568a8071be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x55fcc2dfb1a26e58b1c92a7c85bd2946037a9419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56017389d3068ca05afe3d4e697afa200f316f0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5640ce665c4fac707885a04059449dadabe56cf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x564c51709ce87eb07a16ba6f595c08b8bd20400a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5702223873b50b934265360074af68973900613f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5876bea7920f4a542d8906470bcbcd56c554dd6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5894ac929e7a63417fa0a473563b2c772bb62355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58a3ad7f263b75532b58a60cbf5d78ee73123c93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58bd8fbe2156d3c9ef7b33cfe6d2cfb3f5f0c52a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5940760382caebf45463cf8845e610820d3c51d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x595f76f2254ed6a93e8763c585741ac3fc796e2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59695835d0d07d22347c0e092d092c182ee212c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5979ce98e993232f93c81fe4a878815983e71df9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5af5c295300304d7988d5a6c7c7446d305f8f6b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c8035eb6f6e724ee6748d9844b6e9ffec0c5cb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e2911d70d7a659da0da26989f445aecac58f2e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5effbf90f915b59cc967060740243037ce9e6a7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f94f61095731b669b30ed1f3f4586bbb51f4001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5fa7cb6654f7c551957f3c8a8bb3d8b736fdca8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x607ed45d4837e93158cd39aafd292340ed5f5d9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60bc407144c82cb27bf0681b457f0e7a75514105` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6169a983e9ded098a38e09636ea577c9b57a51a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61d5e93bfcbf30e6e0efd7e51d6a9222d2b081c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61e58de669d842c2d77288df629af031b3283c81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x632188a1b2f3a2636b59a1c400835e2c5ea40214` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6389eecb14fb2f5e583c56e6763530e80e954962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63c60b840933e62e43d8efc1dfde31a32cdc4412` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63dd2d0f6ade00c5d70eb670b7a7074fd878c435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x651ebb3f17f637ceaa77d214f2610d4a0af5bfde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x66877f35062f3c4ad44c4889c2efddbeb93c5ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x66c7170d102db819f50f9582973ab0d16d6f5242` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x67a2cdb9f0760663b5e70c1517f1a603ba3f50f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x684e33a6da0f6adfa5aeb6cdbc7f82c112f57dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68f131fe93cfc18a6b3ec6312e18c089221a5c34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x693430fe5f1b0a61b232132d0567295c288ea482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a31f36ee3a24c25c2f2bff2271d9a42715094a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a3487ce84fd83c66b83e598b18412bd1d2a55f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a780403aef8cdcff80466b7a803165e8398be25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c0105950b1fee24ee4addd1dff346ccef75d150` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c8964f349c2a1a278b8fad6b87610ee402c33f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6cc80df354415fa0ffef78555a06c1dde7549fb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d203f081367cfa2968bd62dc3122274f735378c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e3314453642c5ce9ff273aa5f132c1cc8463cef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6efa5037a0d7be675d0b937edeb41554871cdd16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6fee87f744fc612948001b09b2808c87b91ddc3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6feebb3037d32a9238a99df5a7dba43272b28a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70254981d0e54c16cecec2e483f49f9c7f0025da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x709b102ef4b605197c75cfea45f455a4e7ce065b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70edb982b4ddaa25f88dc42406156d5a653f8e4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x724e6748cb1d52ec45b77fb82a0750a2b759c038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x72bbcfce18ec02734e87ed68b124bc422c84b2a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x730bce145a55a07c2d7363db7110466c5c26e472` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73c46de8bfa266b40668f82e7c52fd5245fbfbd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x74c97946dde8b503e0278605fcc59d747170e5f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x74eec507b01aacc192b295b7b7eb6f5daee68b1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x75a6b8c95bb115706b111c50bcad3607b9565e83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x760455d144682e8598578115b02b9320b1132cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x774d122cbf739249580631b8e4233e91ea2ad294` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7880fd4125772d5ef0e6f342e209c193d8c2c8a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x799cb521dfc34c8277d31f3ee0d1fa6a07f2a55e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a81cda008e27889a52e5ea4823a0b22388b5ca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7af938f0efdd98dc513109f6a7e85106d26e16c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7be8f8e84e195092da43bf6c4a4eb61dc90063bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c9e73d4c71dae564d41f78d56439bb4ba87592f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d0ea848563f5fa0ae5c2af2d8207c01ea45b0d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d306dd73531c45f9847e547a0e8deeafe804939` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e1a283c5fbe6b69c95397dee0d02e6688afd0ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7eeaa96bf1abaa206615046c0991e678a2b12da1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f8be608d72d5eb51e231b1f9a3e25823fde0900` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x800933d685e7dc753758ceb77c8bd34abf1e26d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392078 | `0x802de5174b2526e100de119c479e5560f0970bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8064f7019feeda26038fbce42031fbb26bebefeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x807554b56f682e87234fd82712aa31548ba73db2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x813a9ae1c7b9f89d0b14d796d484478934c3a7f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81b6534f4f7ba45ecf98295cef1450b4a4fc81cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82573b46630ca335a7ca68a0ae42d0ee6a02df68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x831332f94c4a0092040b28ece9377afeff34b25a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83a5d5c54ad83bbea8667b3b95d7610e16e52723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83df8edb615b455bfce270ee2ee3562fd202353f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x844766f737bc9442b9491da1eb7a5cd02b203f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8511e6715845603597a2f33c69dacc5c19bcfbee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85fb19fc1fed868e65bdfec58e64cccb8546b0bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86547e01b7f1bac1f4ce80a4964829009d2de1cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x867d166301a87c13bb71d0ed82df3d2ccc5e19c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88d5186eb7fe8a28b358f1382a1499b2b81d8550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a2df085a99dbcd4a88544b6255493f919d2d8bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a426aabf42aae9e0f483cbe3c0dcc00b7659aec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a9f1b26f378348ad9e6fbcad99704b7f7d42039` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8b452051666708a005f6c7170baadc3913b4c349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8cc012356e61424446646ec3b261fe5ef5b44a8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ce75ff793d7832302bea91c275e2509060dfeaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8d657683437bf1b2f8274515b237a2db0f233a2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8dcec5e136b6321a50f8567588c2f25738d286c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392079 | `0x8e2208c93e7ad4500140144505ec47c6fefa04fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e90ebbeeb1409b5f69dab932220efe940834a46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ef56e94bbaee1638c3c87d3ab0de0a90e2cb067` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f8ed54901b90c89c5817b7f67a425c0e6091284` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8fff07f961e75dcced6f1620386d91e66109a9e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x90c9f39dddc1d7f7460985170d47bee9b328bb5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9140ab358bcf6d6c18e36f560ce72d6458c9ca0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92110af24d280e412b3a89691f6b0b9e09258fe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9328df75a6e48f4eb1976819a8af35a9de64b5f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x933db54446d1a42216b8ead55064891359ab9c6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93cf6e8d7e0d03b8d773c893506fc808cd6a4fdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93e8027515a51c68fed014e3ae76d6c490358796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x946eb7078b2c4ee18bea314a48396572ed2581f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x94bd7c206ce735213c2e9ecef424af7eb71a425f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x958bcc62770e1029d285242f5dbe6987c8240c15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95ff1336985723aa46078995454d7a7fd9f5401e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97d3282f64dc0a0243386880fc00542cd00a20f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x980bfdfc0422aed89b15fda32da5eb8845147379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98b7e1e50f0fb7787475acbbb86cc2c367bb13a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a0beed083d3a45b6463c621b0ce489482459b21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9aaad0ab432efdf86b27b4ea020df2dfb223e00c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b07deaec22328ebae132875245492d56a57f7bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b13982d094b4fcca4aff741a96834ff66e4d8bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b601fbad19036d6e074cadaf61cd70ea2513318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b659a26938e6bf15264a89457b555b46b034d34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9cbc68b89fe7edde4609d0fcfca835c976c959c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9cccd652dac365504a5498d0773642d6e7095f66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d9507b4eede3e3fd83e8bebdb9a9bf3ed681c0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9da5d593d08b062063f81913a08e04594f84d438` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e698f779cec7f42663b051ff8176a55fcb8d471` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ed2ee419b65b6745be435ba5d28407b9a2f8f5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f612544075d3e088ef004b99ec2c77fe622da8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f748f798c75ea44f86a5871045629a2ac9c0568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9fa028cf1ddaaa514a1adde6a9fe7224ca10d6d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9fe96180ab2adfaebc735336f9213f26bca99aa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa09e126eeeaef8abaed919082423c0f5ff78765f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa14c9e1939b4f323ef540566b0ee80142713a4d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1644132ca692ba0657637a31ce0f6b99f052c5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa33ff77f414408797a27a0057afb51d2df50ce58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa504afa74195b93a32ea772df430f2bf69e5d116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa573ffd839aa1dc94ca6ae7ed75253c2ac7c2ec8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa5e633cd44503d1f66ee263ff05c46b975e9e63c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6b2a3fdd415ca304a36909a35f974b670960843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa71381ff15862d0079c614b1e2b1f18485272880` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa726e9e5c007253fe7589879136fdf24da6da393` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa745bb195cbb18a43f999f52bb0b80c3614764d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa7837a1198fb33ae2fc9ee1e1d679242b4785ffc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8f37daf3d290f636f0b79e47ea50ab7f7a82d51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa964fcd9a434cb4c68bfe25e77d1f2cd5d9679a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa5c95181c02dfb8173813149e52c8c9e4e14124` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabc591b524b40e3be9eada1143b1dbc9d67b6274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac712f4fc61ab96aa9a1adf3977b808789aa6682` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac85fa48997b9cc3784c4fedff0070091a322c31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad4e7e32f2168073e456a9a14e11abb116e6b305` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xadabc5fc5da42c85a84e66096460c769a151a8f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xadcfbf2e8470493060fbe0a0afac66d2cb028e9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae70d65dc8ec6df9e5d845909fe20e58ffad2cda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae9ee567dcbbce85ccea1d1b0cdd595e3c73f1ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf8db88ec4da3ed942f46ad58b9dd963d664c8bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb01a5f2942b39026eff8acb524a45e75a35f6469` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0951eb5ecd9948aaa8eb76d1061361f592ba029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb1059ebced445e11e28863251eb036f78474495e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb16912cbb98c7ef7aad30268bdc5602dbb5833f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb17e305af95e6a4345ff743bc394a0929cc31725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb222b4ebebcb9f264e8ff5c7661a52850e54e1ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2a58780a37df31aa519462dba3667418624b891` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2de0a949e5d5db5172d654bf532f473f79a8498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb3e13a8774378cdbb4bd95dd5d7a02363a75fa66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4529a5e0190a4a92216628d703002b5e4bf220f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb5000cfc1685425709939cc0588c755363b9deda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb5923a0837bb5d70d69c733bb5ec952148e2e27a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb5c425d08719ef87d9ef23785011fd317c3a00bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb63a710383fbf9dc37f4b81c377cc4e02f887db2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb6960faf74e7ada47bcbb3923d793da253ff521f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb76ed435b93477511e4604c441550a23d5aeaf84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb800a87d8cc5d8d134635ed321bf7963aa3f5bcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb82b93fcf1818513889c0e1f3628484ce5017a14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8e0b422d54aa59552a8aeb2255e1aa8627a5eda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb995c6abcde40576d4458b2bb0718d3ca5d350f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb9b8766b65636779c3b169b9a18e0a708f91c610` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbac9d8d59dbb0e2a21cc75323c9c8a1abbd9df49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb77f1625c4c3374ea0baf42fac74f7b7ae9e4c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbba4c941e577cfe921e3e88d705a46b22f3b1adf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbbd3464c571db4315bebee098381b687c8269314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbbf2a7facdb318f7670ce87a5f6571bb001d8f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd2c6bed2b89415fe2853941a222662f12166f1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd861fe2d91a2e82928fe0413fa77bfeb822f373` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbde156e6a814f7a56d3e389e681088649d24a07c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe6bde2a40511e2d87984af88f58228b1b8babed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe8bb797eacfb39690a2a79b93745d0b849efb2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbeb7c0bf4cdc19853cc72281dec5af697531f6cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbedf10b8a2af77051d3d1f82c048c2eccfd461b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbff4a34a4644a113e8200d7f1d79b3555f723afe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc04096b8d0c4fd0fd7a8667e813e630935aaff05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1203f662cece399768ab9a92a2717d3ca93b465` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc24d5d896460184929b3659d265324d8285de62d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc25f74a4c4c5f814ce1b92af573f18905beccb54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2d5cf622f314e8d79f84c5c643e18c509425857` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2f7c637702b9131cb58dcbf49a119b77d994ed3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2f8ccaf5530d9148bb07a6947b2f0f317e59e23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc40158e78793c759cbc1436ee1edce15a8f1107a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc42023c518014e4f843bee928b27d4e004926584` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc4ed268754dd3cbca82a6ee743acad2d355d938b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc57876a95a4f31a0a4fdb0329fc78e00b092cc94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5954ca8988988362f60498d5adec67ba466492b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5c5e605d12a87b8378c76f3df9a7a441ecbf936` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc60e83fa880e525fa7e46f170e3e1337d87baaa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc69c8c2944c331a8f9b49c5027da45e427c3708b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc796e49c22b58f2d46e4e685b608eaaf46c0878d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7c025aa69f4b525e3f9f5186b524492ee1c86bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc82aca9c28da7092527c160f5bd72dbc3df6c8e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc836c32048f81a21827ada8bfc3005a420ae546a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc870e0a4f719ddd2b1e9f6afb9d43a604f1e245d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc979cab6424fb6138abf28689ed8efaba1ec49ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9b12a6900c53a9d0eaed911c1f46f6a1cc8e7ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcaac62533cb652f512b61a57455db00ded405ccc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcac73a0f24968e201c2cc326edbc92a87666b430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcae15b2843a8bafa65e82b66dfb7d68397085c28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb1bf51a93fc162bfa761f18c236e39d107f6b23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb459b4504d10445760095c59c394ea45715d7a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb743b140fa24b64be272ae5b58d28a2a8bd12d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcbbc7f00b6c68c0901af71d103c9dbf362fc429c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc7830c29fa5fdf0e289562470672285290e3a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd4b6354b992426283972eb2ac68178e2629e88d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcdd640f7cc3c5001ca06f00d578b85f895dd2379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce37fd1ff0a6cb4a6a59cd46ccf55d5dc70ec585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce8ecbab55105164fdcfe9b8ac67b0f644b212fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcebf167bfaea67490c164e625a396203e7d12913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcec2506e2420f2616221eca10ee5663cfbe6780e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf33d2dfda8a99ca81876e301577ff83866ce88b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcfbcb958514e6c1294f0c900454de7049110cf84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcfe0fa9eae5a225a4c33e39d4aefe32667eff11f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd06d9b0ba226de48399ed3b06ceb39ee8f62c0a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd0aecee1520b5f9925d952405f9a06dcd8fd6e6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd12b1581cbca1b82a441f7d210112a800e83353a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd193b38c87c8faf7cb2f6c592d3ae885ae21c4bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd19d6253d979ccf663869fee30b8e0ac86029ebd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd316283d648b94a9143f56d293cb4ab96de444b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3bb23a761db394aa8692562502ae21b854be6c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3f82e0af8c5a078c783dedddf79ccb762ba413a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd408e19fd8474deb0aa917df123f6eafcfc590ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd409da25d32473efb0a1714ab3d0a6763bce4749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd431e0bd577b4f4f5055f238d9de74c01ed60253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4bc4c252c8ef9ab29d48e040b2f8c99f5702285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd50a06e444d2a85098b3dbc66a5d1946789bb869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd50aab6b210fe049b6c5262f5a7676204699ab8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd56c33736715cc20e6f255e0f47897f2cfc785e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd58b9626d941ca2d31b55a43045d34a87b32ced3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6260db3a84c7bfdafcd82325397b8e70b39627f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd62f15cb6fdff5464047f4f2fb235622c6371af6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd67286e5969ca0d2ad282eb4eda4b51d60a9eb45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7b805e88c5f52ede71a9b93f7048c8d632dbed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7d069493685a581d27824fc46eda46b7efc0063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7f9d59381346da932c68ba399e398501e0601e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd80783de91fbed9f7995a97d4c02917295f86f68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd885797f19214e7dec84454a03ba765c75feda39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd890f501df285cf24fe3b6494e138a1629fc9e11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8a128e5712d9b240811a0d55d3f9ca8e6599b7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8bfe852bba29ea5968a3e5aaf21480f36ee89cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdaf7205a8afc4d77171f5bfd24808946eccf373e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb4a41cdabd4ca7ab9af3db346106245cb3f7968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdcd9f075b1ff638e757226626a3b3606d7795f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdcecf0664c33321ceca2effce701e710a2d28a3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd0106c3f2d74ecbfd86f39f5639ca5a7efaf1c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd8a4302299115226676f943e01306107dd98495` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd97a18e36222f5d493d990ec7ffa52338aafb2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xddcf0f1f320a82a93ea6f8f8ae3ed3f8eaf5f95e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde375d37be6399022d6583c954a011a9244a0b61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf4445022725c08d1e66e68387816f365a14a963` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe09e20ab1f91d1f7eaa0e73446b0617d89501b0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0d62391ceb96487ed0299d1d8a4fffbb43c1581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe2880836faf7fadf094418f9e9ddde3d132243f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe29fd3521bf9784b3b57523cbbe468da28d36655` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe36154467fb6eb91911fd11287b93d69fab01792` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe38ebfe8f314dcad61d5adcb29c1a26f41bed0be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3cbb658168ffcae0af6fe686356e68c9e79eef3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4dfa0897c4a2b0e8571ee54ef11759b099acb87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe574dc08aa579720dfacd70d3dae883d29874599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe62d493ae682ba2b5f9f34ddbd5f42348cd7d9da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe632ac75f2d0a97f7b1ef3a8a16d653c4c82b1fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7a49ae5c9500d18481e0e0efbff1d5d0ff75de3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8323fff67043c29a19e0a13b66f0eafedb46df4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe862d45abdf7ea38f75dd0c7164b19faed057130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe87822c211eaaae2d294c592ec9dd44eaff7372c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392081 | `0xe8efb51e051b08614df535ee192b0672627bdbf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe90c44c16705859931099e7565da5d3c21f67273` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe93f5d253e5f367d3d5d6f5ecd8a409ceb8b510b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9bd0b7333596d0a87ded9ee1a782aa052b711ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea4e46420065c7df0b931424a75c150474d72ac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb6e0b9839b297322a6faec0cebc6d3e207b7480` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392082 | `0xebb15456c0833033f0310f61748cd597554460da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xebb8ba21a3703ab30187d3eec02a3bc62894970d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xebdecf3a21d95453a89440a4e32b9559e47073e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec135a336bfa6313ddca09e0e38ec1b9ccb757f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec4709b3c33d78f0c3f0b3daa779813b93d48505` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xecb008f4741465f9f169ec11a50aa8871e423f33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xecfb6e8becea9a65a5a367497230df14f64a14c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee1d99c9b85dcbbe4773767795eed23fa8190731` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef1c5d2c20b22ae50437a2f3bd258ab1117d1bad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf097fc9af4072f5709b95e168346499b363180d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf1be8ecc990cbcb90e166b71e368299f0116d421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf25034ca7f3cfc48970272b7d709803c1e121c45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf42b4524f82c10a39c1d6e1de2111d1072a88391` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4b424db20d8664cf559fa3c095c54f4569a7f57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4b60dc0a3e7e38d67f60df2f33e91f0b1418da2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4c6b53bd2a1f0c06d8483e38cd6e6cec1860593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4d66c03766b434814cb216899ff61ad96f0d109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf64c61183dca4fde0f608e0be442bd2dfeaeeffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7524afdb5c40581d89a1bb7b841c5e1e7a61f44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7e3b6c8ac5047c6acf328c6c9c43ecdf15cd534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf80c39d3d5d5ca4581ec1982cc0c3c88494cbe62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf9bda298fa04200002ff3b7e08e407a6bde04246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa4a3fe54143bfea4fdda3b5602766e13647ea66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa4b1e50f6ef51d0dab5c2eea7434ce6974fa832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfaa8ebdbb5b408f649bfb714435013c09f0b8013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfac2898ab87daa4909200ed7a99c5cbab3bb9303` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb6a378b5e5bbc6f413dddf07873076851a00fd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfbefffdba82c98cf157cc709ab0cf7e19301bc27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfbfa6d26925862e63bd5fc2e323f57a3ca6fe65b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfca12e322dbfbbdff5747e26cfabf480aaedef72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe16999d88856a9e492ce3088eaea8fc9e2a05c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe49affc3ffa7bed8346f8f33f8250d3c6fdf073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe5ac9dd9f0edfd0df2eb95b83e555c793264170` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe65861492ee51b126e2f6dc0299ffe4ca9a578c` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 464
- Live contracts: 0
- Unknown liveness contracts: 464
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=464

Showing first 200 of 464 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | unverified unclassified | UnnamedContract<br>`0x291fb4aae9f79f395b2106fbbe48fb484db8c24c` | non_address_book | unknown | unknown | unverified | n/a | `0x3d7c0a35fbc3278186151c35edb1b3e760121c74` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6a780403aef8cdcff80466b7a803165e8398be25` | non_address_book | unknown | unknown | unverified | n/a | `0x3d7c0a35fbc3278186151c35edb1b3e760121c74` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6feebb3037d32a9238a99df5a7dba43272b28a86` | non_address_book | unknown | unknown | unverified | n/a | `0x3d7c0a35fbc3278186151c35edb1b3e760121c74` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8a2df085a99dbcd4a88544b6255493f919d2d8bc` | non_address_book | unknown | unknown | unverified | n/a | `0x3d7c0a35fbc3278186151c35edb1b3e760121c74` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8a9f1b26f378348ad9e6fbcad99704b7f7d42039` | non_address_book | unknown | unknown | unverified | n/a | `0x3d7c0a35fbc3278186151c35edb1b3e760121c74` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe4dfa0897c4a2b0e8571ee54ef11759b099acb87` | non_address_book | unknown | unknown | unverified | n/a | `0x3d7c0a35fbc3278186151c35edb1b3e760121c74` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf42b4524f82c10a39c1d6e1de2111d1072a88391` | non_address_book | unknown | unknown | unverified | n/a | `0x3d7c0a35fbc3278186151c35edb1b3e760121c74` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf4b60dc0a3e7e38d67f60df2f33e91f0b1418da2` | non_address_book | unknown | unknown | unverified | n/a | `0x3d7c0a35fbc3278186151c35edb1b3e760121c74` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2c89d34e4266688bd8990103abfcedb8ea325fcc` | non_address_book | unknown | unknown | unverified | n/a | `0x47a14a6f2a5979570a395725f16ec2c61be026f0` |
| bsc | unverified unclassified | UnnamedContract<br>`0x30370f7f443c78e27b7c4153c4ac7d3c56dded48` | non_address_book | unknown | unknown | unverified | n/a | `0x47a14a6f2a5979570a395725f16ec2c61be026f0` |
| bsc | unverified unclassified | UnnamedContract<br>`0x38430ca1767038fa213249bb2dc16ed3ac244861` | non_address_book | unknown | unknown | unverified | n/a | `0x47a14a6f2a5979570a395725f16ec2c61be026f0` |
| bsc | unverified unclassified | UnnamedContract<br>`0x417548a28d0cfb48a3b68b2eb4f09eab29cbc71a` | non_address_book | unknown | unknown | unverified | n/a | `0x47a14a6f2a5979570a395725f16ec2c61be026f0` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4d6575b714b14b105c3a0e8b3f952723a51b38e5` | non_address_book | unknown | unknown | unverified | n/a | `0x47a14a6f2a5979570a395725f16ec2c61be026f0` |
| bsc | unverified unclassified | UnnamedContract<br>`0x500cb73333641ab98d80de8921b16bd3a26048dd` | non_address_book | unknown | unknown | unverified | n/a | `0x47a14a6f2a5979570a395725f16ec2c61be026f0` |
| bsc | unverified unclassified | UnnamedContract<br>`0x70254981d0e54c16cecec2e483f49f9c7f0025da` | non_address_book | unknown | unknown | unverified | n/a | `0x47a14a6f2a5979570a395725f16ec2c61be026f0` |
| bsc | unverified unclassified | UnnamedContract<br>`0x70edb982b4ddaa25f88dc42406156d5a653f8e4d` | non_address_book | unknown | unknown | unverified | n/a | `0x47a14a6f2a5979570a395725f16ec2c61be026f0` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8330b5e39b68ef642c7d3241db39a8c3238bf4c2` | non_address_book | unknown | unknown | unverified | n/a | `0x47a14a6f2a5979570a395725f16ec2c61be026f0` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9cccd652dac365504a5498d0773642d6e7095f66` | non_address_book | unknown | unknown | unverified | n/a | `0x47a14a6f2a5979570a395725f16ec2c61be026f0` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa5e633cd44503d1f66ee263ff05c46b975e9e63c` | non_address_book | unknown | unknown | unverified | n/a | `0x47a14a6f2a5979570a395725f16ec2c61be026f0` |
| bsc | unverified unclassified | UnnamedContract<br>`0xae70d65dc8ec6df9e5d845909fe20e58ffad2cda` | non_address_book | unknown | unknown | unverified | n/a | `0x47a14a6f2a5979570a395725f16ec2c61be026f0` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb1059ebced445e11e28863251eb036f78474495e` | non_address_book | unknown | unknown | unverified | n/a | `0x47a14a6f2a5979570a395725f16ec2c61be026f0` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb5923a0837bb5d70d69c733bb5ec952148e2e27a` | non_address_book | unknown | unknown | unverified | n/a | `0x47a14a6f2a5979570a395725f16ec2c61be026f0` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbe8bb797eacfb39690a2a79b93745d0b849efb2c` | non_address_book | unknown | unknown | unverified | n/a | `0x47a14a6f2a5979570a395725f16ec2c61be026f0` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc24d5d896460184929b3659d265324d8285de62d` | non_address_book | unknown | unknown | unverified | n/a | `0x47a14a6f2a5979570a395725f16ec2c61be026f0` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcb743b140fa24b64be272ae5b58d28a2a8bd12d3` | non_address_book | unknown | unknown | unverified | n/a | `0x47a14a6f2a5979570a395725f16ec2c61be026f0` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcebf167bfaea67490c164e625a396203e7d12913` | non_address_book | unknown | unknown | unverified | n/a | `0x47a14a6f2a5979570a395725f16ec2c61be026f0` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd56c33736715cc20e6f255e0f47897f2cfc785e6` | non_address_book | unknown | unknown | unverified | n/a | `0x47a14a6f2a5979570a395725f16ec2c61be026f0` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfbfa6d26925862e63bd5fc2e323f57a3ca6fe65b` | non_address_book | unknown | unknown | unverified | n/a | `0x47a14a6f2a5979570a395725f16ec2c61be026f0` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfe5ac9dd9f0edfd0df2eb95b83e555c793264170` | non_address_book | unknown | unknown | unverified | n/a | `0x47a14a6f2a5979570a395725f16ec2c61be026f0` |
| bsc | unverified unclassified | UnnamedContract<br>`0x036664394715d255895f600861fe882a167dbf57` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0541c542e2039d13238b5abc6d32a23ae3222b1d` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x05f34ec9e20459b84f31cd9c65630244ced85fb4` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x06d280abee1073b83a01fe778b6145e850e87162` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x090ff57ffd64593111b0aa7f2d664b1aa3066137` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x09176545f3c013142b69477d7de2e7f4baa2bb3a` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x09fd9321aad19bf98c85a7df06891b38abcbe57b` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0ad12bc160b523e7abfbe3abadcee8f1b6116089` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0c1f049ebe3e0537c7e7ce428bb468d5f6bf83b3` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0c5ed4d8df44f20b052fc6966991e686d594b9c2` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0d9faf7023976b45b220b692699c5f5e9432efd9` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0e0806a43188f383aadaec3440d6e8e4d71b281c` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0e7b1e4dedc07f711493ad696e2ee4969a119e2f` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0ec1b4a034e7a4dd746f2c5c7dc806293db7d413` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0eeca1690c59fb195fd158f44c4f3230ed28561c` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x104c62e5eee21cb4acf0a4a7e459cc72ea61545d` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x10e691bdd2665d0180fbc69535862874a3594236` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x11362ea137a799298306123eea014b7809a9db40` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x121752a8c3d4afd5cc0b41c8807db7887742a608` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x14613598f0e929f8bb1f89051fd976b0a7b67bec` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x14b3cae61465656329a1240b67146249fa1fee97` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x14ddb0f012b425bd33cd22f33d2af41e3828a08a` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x152461ec1492611ab31e13dc10afbfef2e48bf70` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x158da805682bdc8ee32d52833ad41e74bb951e59` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x15bc06b928917228893da2496b0ea86345a63853` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x165102dd6ea72a4fb513ff78f30e835c8f099c25` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x174e30e9e529e640b23e497f745742c48a71f192` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x184962b6c9a55c8c2ee757ca86b73a6edf87e3ca` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x195f4c8754e9809bfe4d5f7a5891810c757cac7f` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1a174d28b54f688cb4b1b30f9daa64b0fc5f4db8` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1c623105d072dc69f9a3f8a3db67b5aecedc082b` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1cdea8f4592e8ff406f0cd65a3b2f2060e71c754` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1d0edca3f151dc9fafb5ce79547d153229985f42` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1dba79e73a7ea9749fc28b921bc9431d09bef2b5` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1dbdc3f67e56daedffa6b2b59d2f4a18190bdded` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1e66af314756e6cc5065b5091be2ff0011e5ea84` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1eaaf599b95d7cab0151b8384d15fe3f68aa4ee3` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x20064f5ca352d95dda597acb5ecd10a86850caf9` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x205ec09443debb37a526a384f68622bae69f6fc6` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x20e5d465df8520abfef79b04c4a2c8952b365e82` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2245634e4c325f3f3fc2b98cf75352b5d92f4c46` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x226bcb6caa453a013dcead5cb901673a31a4c81f` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x238b84fc7635c33f46313ebff4283dc0e2ee3221` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x255f31ae71c2864942cd5d86111fcf2d8a907fdb` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x262de19b5fde97ed5bdba10d630e34fb9a1b59b2` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2728eafc63c81557a929fee36ddad0d18d6b5252` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x274dd0edac0ec5e72e45433c1666d6c246338bb2` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x284e25169ce75fc62c9339207de5d775f46ad406` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x28a7178e2125d053220b47195727efc29f1798df` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x29a08f38af02fcc2a75e91144e3931e26d31c88a` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x29d36fc6ac505e8d9c04e5fae913038c8f8ec82a` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2c4a246e532542dfae3d575003c7f5c6583bfd8c` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2e7f32e38ea5a5fcb4494d9b626d2d393b176b1e` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2ec1066a4856b9b326c4bebac24d6b5d1952296b` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2ef53bb6749d9c635ff1fe7580b36303eca185a3` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x301897d786adc651473e1edb87b32ee5821bdd60` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x30a937b9d22d71e58ad9dc96a6a3d552b9c0724e` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x315f5fcbe2ab4b2c2b7ae69ada3d6a7d778fc726` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x31e4614551a80eab40c29ae851d710a3a0b72967` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3282d2a151ca00bfe7ed17aa16e42880248cd3cd` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x32951e060e6ad6d512fc3eaa958f3a8f4f82ac6c` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x33c66c601a442b2263976332397f923cd6bf1753` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3483f17668f1863b57cfba66e9cf2f9c3b48423f` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x349dbcf399e39642d43b6926c8ac30d9cfec5b80` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x34cce22a47c5f020a5cc4fcc63d231d46577415a` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x35cba40d30a0b814a53a09b667405a1a0a3e2ae5` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x39bbc1b5c46ac99ecd412533ca831c4a730258ca` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3a70232785a23b0c7cd8e3c236d9bbfd41292e6a` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3b4fbb2b8536ab144048abafdd27eaf52f0fa4dc` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3be23527ff4d7881c6f5ed870cbf89f5c24c56eb` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3da8c388cd5e5a7011ebd084d3708a117067ebbc` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3dfc436f2194ca9ab2faf314f95492c0485b16b5` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3e0c8a85620560f02ca4893fe5c044532f120934` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3fd1029d4db12dfdaa6b92bfeed6e41e21fdc4b4` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x41867cc58aece8b570ff1a2a8aa6149014d2a94c` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4193d35d0cb598d92703ed69701f5d568aca015c` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x41c1d9544ed9fa6b604ecaf7430b4cfdf883c46f` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x425b07f17c0b1476c0a3006b70816800147dec64` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x426bdfe8cab2c4720b36abbdc3ff08144bc361f3` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x42da676116df26ee9bb71595ffe7c18343fb2b64` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4362635a0b2f8df98cde4cdde5f5f3be96f45316` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x44b3868cbba5fbd2c5d8d1445bdb14458806b3b4` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x452fc464583ab2a149d6a63437fe90322a65e252` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x462bc565b5486e76503dab62d96937842f207aaa` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x462c2d17fd631b6bdb172a72d6da7d7ec48f4e14` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4633a11702a5751fb4836f5ecd3edd8d86852ee9` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4a89f897aa97d096dbea0f874a5854662996f8ae` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4a967509e424969bc766d5b0da74e59e18392cda` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4add84e335ee575ba22bc4059c844ed1b756b5c3` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4b70c41f514fbbea718234ac72f36c1b077a4162` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4b837846ad3322ecae28b60a2c2cf16e41b5a3ab` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4bf04730c37fc395b5f780e6ad3e397c031f6d39` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4bfe9489937d6c0d7cd6911f1102c25c7cbc1b5a` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4c7fb2214e6d782dc0152ea39c39166f666ca367` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4c8f9534731ec017a7a4e71f1045f4a8dd9f4c8a` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4d228564cc6bea08b7cf1bcd4a7074d4b9293851` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4d395258c313bfee5ba4ff500a9befe8ff26991e` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4d5fc3f859acf7525d7bc0faf540b827d0b8fe27` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4eca08e4f2ed826dba5bea2ec133036fe60d30b6` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4ed10eb92c4e92be4d368433e009646e4abdab05` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4f56a92ca885be50e705006876261e839b080e36` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x50380ac8da73d73719785f0a4433192f4e0e6c90` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x50441d9c8e08e3dcce8d517e2257a3882d43fee9` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5124baa8ca9c5e327efc458271dac157aceb4f04` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5138133f0671071d8b8f1c4c180881bfcfe22cec` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5146359ff45ec3b6f60c256c99fff856dcbb3398` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x51782e39a0af33f542443419c223434bb4a5a695` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x51b893ff705b04188784da29d9bade2d72dd353c` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x532358cb052b0ca17856a75f1244681eedf36dca` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5342fbb861c2aea626f66521c512ac5fa03b6a58` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5353c5c15e7bdab42d3f03e3332ea84ca5835f06` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5359911a2081f8afeb0a19e01cf1fe6b0457d9d3` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x539fc3fd348b427b5f70b4f87c1a44983c9e8dbd` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x53dbb71303ad0f9afa184b8f7147f9f12bb5dc01` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x54d3218787060463eeb944fa01b0cbe745ef4db5` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x553b8adc2ac16491ec57239bea7191719a2b880c` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x55be65fa6566babe8bd36175bf5299568a8071be` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x55fcc2dfb1a26e58b1c92a7c85bd2946037a9419` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x56017389d3068ca05afe3d4e697afa200f316f0b` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5640ce665c4fac707885a04059449dadabe56cf2` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x564c51709ce87eb07a16ba6f595c08b8bd20400a` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5702223873b50b934265360074af68973900613f` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5876bea7920f4a542d8906470bcbcd56c554dd6e` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x588c58d88319b2edf7426006668cdff60940f3c7` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5894ac929e7a63417fa0a473563b2c772bb62355` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x58a3ad7f263b75532b58a60cbf5d78ee73123c93` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x58bd8fbe2156d3c9ef7b33cfe6d2cfb3f5f0c52a` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5940760382caebf45463cf8845e610820d3c51d5` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x595f76f2254ed6a93e8763c585741ac3fc796e2e` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x59695835d0d07d22347c0e092d092c182ee212c3` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5979ce98e993232f93c81fe4a878815983e71df9` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5af5c295300304d7988d5a6c7c7446d305f8f6b7` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5c8035eb6f6e724ee6748d9844b6e9ffec0c5cb5` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5e2911d70d7a659da0da26989f445aecac58f2e6` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5effbf90f915b59cc967060740243037ce9e6a7e` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5f4ea2bf5fce383305440c8edadafc3ef600e0a1` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5f94f61095731b669b30ed1f3f4586bbb51f4001` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5fa7cb6654f7c551957f3c8a8bb3d8b736fdca8c` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x607ed45d4837e93158cd39aafd292340ed5f5d9f` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x60bc407144c82cb27bf0681b457f0e7a75514105` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6169a983e9ded098a38e09636ea577c9b57a51a7` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x61d5e93bfcbf30e6e0efd7e51d6a9222d2b081c2` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x61e58de669d842c2d77288df629af031b3283c81` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x632188a1b2f3a2636b59a1c400835e2c5ea40214` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6389eecb14fb2f5e583c56e6763530e80e954962` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x63c60b840933e62e43d8efc1dfde31a32cdc4412` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x63dd2d0f6ade00c5d70eb670b7a7074fd878c435` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x651ebb3f17f637ceaa77d214f2610d4a0af5bfde` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x66877f35062f3c4ad44c4889c2efddbeb93c5ec7` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x66c7170d102db819f50f9582973ab0d16d6f5242` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x67a2cdb9f0760663b5e70c1517f1a603ba3f50f0` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x684e33a6da0f6adfa5aeb6cdbc7f82c112f57dd8` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x68f131fe93cfc18a6b3ec6312e18c089221a5c34` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x693430fe5f1b0a61b232132d0567295c288ea482` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x69b5018910f9c8d82d544f315e9d3477236ed0e1` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6a31f36ee3a24c25c2f2bff2271d9a42715094a7` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6a3487ce84fd83c66b83e598b18412bd1d2a55f9` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6b6997ae4be20d8bc5a49e482e9a2979b46e3e5f` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6c0105950b1fee24ee4addd1dff346ccef75d150` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6c8964f349c2a1a278b8fad6b87610ee402c33f9` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6cc80df354415fa0ffef78555a06c1dde7549fb8` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6d203f081367cfa2968bd62dc3122274f735378c` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6e3314453642c5ce9ff273aa5f132c1cc8463cef` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6efa5037a0d7be675d0b937edeb41554871cdd16` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6fee87f744fc612948001b09b2808c87b91ddc3c` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x709b102ef4b605197c75cfea45f455a4e7ce065b` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x724e6748cb1d52ec45b77fb82a0750a2b759c038` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x72bbcfce18ec02734e87ed68b124bc422c84b2a2` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x730bce145a55a07c2d7363db7110466c5c26e472` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x73c46de8bfa266b40668f82e7c52fd5245fbfbd0` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |
| bsc | unverified unclassified | UnnamedContract<br>`0x74c97946dde8b503e0278605fcc59d747170e5f7` | non_address_book | unknown | unknown | unverified | n/a | `0xc44f82b07ab3e691f826951a6e335e1bc1bb0b51` |

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
| needs_review | 435 |

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
