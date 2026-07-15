# Agentic Audit Brief: AUTOfinance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 8 (2 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: TRANSITIONING - TVL dropped 47.5% over 90 days

## Project Overview

- Project: AUTOfinance (`autofinance`)
- Website: [https://www.auto.finance](https://www.auto.finance)
- Lifecycle: transitioning (Tier 1, transitioning)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, linea, plasma, sepolia
- Contract surface: 323 unique implementations (399 raw deployments)
- Coverage basis: 2/227 confirmed own live verified implementations (0.9%); conservative 0.9% with 0 needs-review implementation(s)
- DeFi Llama TVL: $31,903,043.62
- On-chain TVL (included contracts): $33,555,386.07
- TVL by chain: Ethereum $25,767,657.23 | Base $6,206,335.00 | Arbitrum $1,581,272.34 | Linea $121.49

## Project Description

This brief describes the observed EVM deployment and audit surface for AUTOfinance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 344 contract row(s) across arbitrum, base, ethereum, linea, plasma, sepolia. Structural roles: 167 core, 115 supporting, 62 unclassified. 136 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 344
- Structural roles: core (167), supporting (115), unclassified (62)
- Contract kinds: contract (344)
- Detected standards: erc20 (62), eip1271 (27), pausable (11), erc20permit (8), erc4626 (8), ownable (8), multicall (5), accesscontrol (3), erc165 (3), ownable2step (2), chainlinkaggregator (1)
- Frameworks: openzeppelin (274), openzeppelin-upgradeable (136), solady (120), chainlink (7), permit2 (6), foundry (2)
- Upgradeable-pattern rows: 136

## Fork Analysis

0 of 301 contracts are derived from known codebases. 301 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x084e65...f25a0c`, chain 1)
- UnnamedContract (`0x1abd04...0f356e`, chain 1)
- UnnamedContract (`0x1ea622...f08573`, chain 1)
- UnnamedContract (`0x40219b...4791d9`, chain 1)
- UnnamedContract (`0x408b6a...42df36`, chain 1)
- UnnamedContract (`0x4a3688...730e91`, chain 1)
- UnnamedContract (`0x603390...972cca`, chain 1)
- UnnamedContract (`0x620ffc...e89bc0`, chain 1)
- UnnamedContract (`0x780d5b...4ba5f1`, chain 1)
- UnnamedContract (`0x79eb84...0aa54d`, chain 1)
- UnnamedContract (`0x9abe58...354404`, chain 1)
- UnnamedContract (`0xa7569a...d80d35`, chain 1)
- UnnamedContract (`0xba1462...73e01a`, chain 1)
- UnnamedContract (`0xc4eb86...eda30b`, chain 1)
- UnnamedContract (`0xc7c77b...53ba38`, chain 1)
- UnnamedContract (`0xcb29d4...4bc3ae`, chain 1)
- UnnamedContract (`0xd1e668...c98709`, chain 1)
- UnnamedContract (`0xd3bf4a...612081`, chain 1)
- UnnamedContract (`0xd48a39...fa0e4d`, chain 1)
- UnnamedContract (`0xd8ef13...8125e4`, chain 1)
- UnnamedContract (`0xdfe3fa...e86f0c`, chain 1)
- UnnamedContract (`0xe4433d...bffc04`, chain 1)
- UnnamedContract (`0xf4b143...96e23c`, chain 1)
- UnnamedContract (`0xf5c49c...825ab4`, chain 1)
- UnnamedContract (`0xf9779a...25baac`, chain 1)
- UnnamedContract (`0x08b061...713e4d`, chain 8453)
- UnnamedContract (`0x2a7a16...92b1ed`, chain 8453)
- UnnamedContract (`0x4efcc0...73918b`, chain 8453)
- UnnamedContract (`0x9c6864...84c831`, chain 8453)
- UnnamedContract (`0xb592c1...314498`, chain 8453)
- UnnamedContract (`0xbd0fe9...f29f6a`, chain 8453)
- UnnamedContract (`0xeb042d...b02477`, chain 8453)
- UnnamedContract (`0xee5e75...10f3f7`, chain 8453)
- UnnamedContract (`0x0da0e8...54e1dc`, chain 9745)
- UnnamedContract (`0x459386...067ccd`, chain 9745)
- UnnamedContract (`0x4dd032...77e097`, chain 9745)
- UnnamedContract (`0x4ec8f8...83ec80`, chain 9745)
- UnnamedContract (`0x7bc604...560397`, chain 9745)
- UnnamedContract (`0x7bea14...ebe83d`, chain 9745)
- UnnamedContract (`0x7de076...ffc1f4`, chain 9745)
- UnnamedContract (`0x8ccd47...00347d`, chain 9745)
- UnnamedContract (`0x8dbad4...ae72e8`, chain 9745)
- UnnamedContract (`0x9065c0...187d48`, chain 9745)
- UnnamedContract (`0x127563...ad9013`, chain 42161)
- UnnamedContract (`0x1bb923...23cdc0`, chain 42161)
- UnnamedContract (`0xa9900b...1d447b`, chain 42161)
- UnnamedContract (`0xf63b7f...46320c`, chain 42161)
- UnnamedContract (`0xd1a652...bd792a`, chain 59144)
- AaveV3StataDestinationVault (`0x00e52a...9c5f4a`, chain 42161)
- AaveV3StataDestinationVault (`0xa087e1...e7d7bb`, chain 42161)
- AaveV3StataDestinationVault (`0xebcff8...864991`, chain 42161)
- AaveV3StataDestinationVault (`0x68e93d...de15f7`, chain 59144)
- AaveV3StataDestinationVault (`0xbd353d...45e7e2`, chain 59144)
- AaveV3StataDestinationVault (`0xd96d54...57f3fd`, chain 59144)
- AccessController (`0x7ec410...4fd6b2`, chain 42161)
- AccessController (`0xf4425c...b76a04`, chain 59144)
- AerodromeDestinationVault (`0x58c223...a1ed3e`, chain 8453)
- AerodromeDestinationVault (`0x945a4f...5835ad`, chain 8453)
- AerodromeDestinationVault (`0xa94031...39845a`, chain 8453)
- AerodromeDestinationVault (`0xd18db4...e0cdad`, chain 8453)
- AerodromeDestinationVault (`0xdbd149...02c627`, chain 8453)
- AerodromeStakingDexCalculator (`0xb02cb1...57184e`, chain 8453)
- AerodromeStakingDexCalculator (`0xc7b711...d2bd10`, chain 8453)
- AerodromeStakingDexCalculator (`0xd9b54d...8042e3`, chain 8453)
- AerodromeStakingDexCalculator (`0xe40523...a7c240`, chain 8453)
- AerodromeStakingIncentiveCalculator (`0x9813e3...89f3e3`, chain 8453)
- AerodromeStakingIncentiveCalculator (`0xd675d8...c2e76b`, chain 8453)
- AerodromeStakingIncentiveCalculator (`0xe923f8...425318`, chain 8453)
- AerodromeStakingIncentiveCalculator (`0xeaa026...1ac028`, chain 8453)
- AerodromeSwap (`0x2bb11c...ca44a5`, chain 8453)
- ArraysConverter (`0xb6ab7a...e5940f`, chain 42161)
- AsyncSwapperRegistry (`0x73526d...9c0b75`, chain 1)
- AsyncSwapperRegistry (`0xb45bd0...bfabba`, chain 42161)
- AsyncSwapperRegistry (`0x46e9c8...7468ca`, chain 59144)
- AuraCalculator (`0x041679...74ea07`, chain 1)
- AuraCalculator (`0x0f5d9c...65acad`, chain 1)
- AuraCalculator (`0x4e4eb5...c48348`, chain 1)
- AuraCalculator (`0x4ead64...eb43ea`, chain 1)
- AuraCalculator (`0x596866...b2cc43`, chain 1)
- AuraCalculator (`0x5ac9dc...9d7f40`, chain 1)
- AuraCalculator (`0x662e3f...9b018b`, chain 1)
- AuraCalculator (`0xa4349b...08f3a0`, chain 1)
- AuraCalculator (`0xacdc4a...05829d`, chain 1)
- AuraCalculator (`0xb57e41...fb6621`, chain 1)
- AuraCalculator (`0xd09bde...e59c71`, chain 1)
- AuraCalculator (`0xddfd0a...9d84b2`, chain 1)
- AuraL2Calculator (`0x7c4b58...13c539`, chain 8453)
- AuraL2Calculator (`0xb9e981...02b6e8`, chain 8453)
- AuraL2Calculator (`0xc5a917...7654d4`, chain 8453)
- AutopilotRouter (`0x39ff6d...0835a2`, chain 1)
- AutopilotRouter (`0xa18b89...606931`, chain 8453)
- AutopilotRouter (`0xc84883...91f27a`, chain 9745)
- AutopilotRouter (`0x27a9c1...7621ad`, chain 42161)
- AutopilotRouter (`0xf61e75...990544`, chain 59144)
- AutopoolETH (`0x0a2b94...114e56`, chain 1)
- AutopoolETH (`0x35911a...cd3e5a`, chain 1)
- AutopoolETH (`0xf90bb2...367281`, chain 1)
- AutopoolETH (`0x2ab4a3...6efdf9`, chain 8453)
- AutopoolETH (`0xaadf01...6e0404`, chain 8453)
- AutopoolETH (`0xd0cf0c...cc5821`, chain 9745)
- AutopoolETH (`0x12db19...ff66c3`, chain 42161)
- AutopoolETH (`0xc9db15...195e7b`, chain 59144)
- AutopoolMainRewarder (`0x60882d...d1755e`, chain 1)
- AutopoolMainRewarder (`0x726104...b6c27b`, chain 1)
- AutopoolMainRewarder (`0xe041b3...5456f2`, chain 1)
- AutopoolMainRewarder (`0xf59086...26e716`, chain 1)
- AutopoolMainRewarder (`0x4103a4...630595`, chain 8453)
- AutopoolMainRewarder (`0x69a63d...3e0522`, chain 8453)
- AutopoolMainRewarder (`0xf6cc56...b09540`, chain 42161)
- AutopoolMainRewarder (`0x03825c...c5bf0d`, chain 59144)
- AutopoolRegistry (`0xc3b8f5...c9d268`, chain 42161)
- AutopoolRegistry (`0xf25f61...d5f42c`, chain 59144)
- BalancerAdapter (`0xb0c974...57702f`, chain 42161)
- BalancerAuraDestinationVault (`0x2f2cc1...6dac3d`, chain 1)
- BalancerAuraDestinationVault (`0x5a4b54...8a4f4d`, chain 1)
- BalancerAuraDestinationVault (`0x867991...70717e`, chain 1)
- BalancerAuraDestinationVault (`0xc9b5d8...dd751c`, chain 1)
- BalancerAuraDestinationVault (`0xfda499...33e94b`, chain 1)
- BalancerAuraDestinationVault (`0xa6efb9...48dd5d`, chain 8453)
- BalancerAuraDestinationVault (`0xb3723e...8500e0`, chain 8453)
- BalancerComposableStablePoolCalculator (`0x0e2b75...e39be4`, chain 1)
- BalancerComposableStablePoolCalculator (`0x2df5d9...ab0981`, chain 1)
- BalancerComposableStablePoolCalculator (`0x4c4d65...3a1970`, chain 1)
- BalancerComposableStablePoolCalculator (`0x4e7986...bd70e0`, chain 1)
- BalancerComposableStablePoolCalculator (`0x63b0ac...832ae9`, chain 1)
- BalancerComposableStablePoolCalculator (`0xa639d9...95193c`, chain 1)
- BalancerComposableStablePoolCalculator (`0xab0b54...27f9a5`, chain 1)
- BalancerComposableStablePoolCalculator (`0xadf54e...2dd5a6`, chain 1)
- BalancerComposableStablePoolCalculator (`0xb5652e...ea6866`, chain 1)
- BalancerComposableStablePoolCalculator (`0x4fc45f...0002a9`, chain 8453)
- BalancerComposableStablePoolCalculator (`0x800f53...4820b3`, chain 8453)
- BalancerGyroPoolCalculator (`0x943673...13e9d2`, chain 1)
- BalancerGyroPoolCalculator (`0xa9b8e4...5702ab`, chain 1)
- BalancerGyroPoolCalculator (`0x9d95e1...e39e33`, chain 8453)
- BalancerGyroscopeDestinationVault (`0x92294a...61bad7`, chain 1)
- BalancerGyroscopeDestinationVault (`0xa1b929...a29d05`, chain 1)
- BalancerGyroscopeDestinationVault (`0xbd137c...84f59c`, chain 8453)
- BalancerMetaStablePoolCalculator (`0x66664b...9a59a4`, chain 1)
- BalancerV2Swap (`0x6def5e...13f311`, chain 42161)
- BalancerV3Adapter (`0x19fa89...c1a620`, chain 42161)
- BalancerV3AuraDestinationVault (`0xc77161...d536c0`, chain 42161)
- BalancerV3AuraDestinationVault (`0xce1c82...aec809`, chain 42161)
- BalancerV3BatchSwap (`0xbd6beb...4c741b`, chain 42161)
- BankSwapper (`0x1cde65...4647be`, chain 42161)
- BaseAsyncSwapper (`0x18f9f3...c00df8`, chain 42161)
- BaseAsyncSwapper (`0x4423cb...450ceb`, chain 42161)
- BaseAsyncSwapper (`0x45bce6...3949fb`, chain 42161)
- BaseAsyncSwapper (`0x4660a1...34f58d`, chain 42161)
- BaseAsyncSwapper (`0x621091...45deba`, chain 42161)
- BaseAsyncSwapper (`0x9f42f5...4f4ed5`, chain 42161)
- BaseAsyncSwapper (`0xa2217d...69b478`, chain 42161)
- BaseAsyncSwapper (`0xadb96b...49f858`, chain 42161)
- BaseAsyncSwapper (`0xc54e00...4717ad`, chain 42161)
- BaseAsyncSwapper (`0xcaf5b3...41bcad`, chain 42161)
- BaseAsyncSwapper (`0x25be90...498fd1`, chain 59144)
- BaseAsyncSwapper (`0x2844a0...6a26d8`, chain 59144)
- BaseAsyncSwapper (`0x422071...73cd1a`, chain 59144)
- BaseAsyncSwapper (`0xd00c62...1424bb`, chain 59144)
- BlockchainInfo (`0x86abaa...3308b3`, chain 42161)
- BridgedLSTCalculator (`0x58897e...17943e`, chain 8453)
- BridgedLSTCalculator (`0xa80b38...892934`, chain 8453)
- BridgedLSTCalculator (`0xb081af...1cbdb0`, chain 8453)
- BridgedLSTCalculator (`0xb51829...1fa9ea`, chain 8453)
- BridgedLSTCalculator (`0xbaf2ee...04e1a7`, chain 8453)
- Bytes32 (`0x5f317e...8f520e`, chain 42161)
- CbethLSTCalculator (`0xab78a5...d01e08`, chain 1)
- ChainlinkStatsUpkeepV4 (`0x30f285...27c637`, chain 8453)
- ConvexCalculator (`0x355f39...13de91`, chain 1)
- ConvexCalculator (`0x4bbfa1...332276`, chain 1)
- ConvexCalculator (`0x74c3b0...269ab7`, chain 1)
- ConvexCalculator (`0x83b694...301d7a`, chain 1)
- ConvexCalculator (`0xbfdf3a...163841`, chain 1)
- ConvexCalculator (`0xf25b36...45eac3`, chain 1)
- ConvexCalculator (`0xf7370f...4ba9d7`, chain 1)
- CurveAdapter (`0xcb9597...30af70`, chain 42161)
- CurveConvexDestinationVault (`0x356c79...6c3e77`, chain 1)
- CurveConvexDestinationVaultV2 (`0x0091fe...6758cb`, chain 1)
- CurveConvexDestinationVaultV2 (`0x23032a...4e9d8c`, chain 1)
- CurveConvexDestinationVaultV2 (`0x2fa4c8...d9b171`, chain 1)
- CurveConvexDestinationVaultV2 (`0x737f2e...7f004b`, chain 1)
- CurveConvexDestinationVaultV2 (`0x88d0e0...f90ab0`, chain 1)
- CurveConvexDestinationVaultV2 (`0x9828b1...fb37f2`, chain 1)
- CurveConvexDestinationVaultV2 (`0xafd498...706a90`, chain 1)
- CurveConvexDestinationVaultV2 (`0xf4cedd...948fa2`, chain 1)
- CurveGaugeDestinationVault (`0x04f7ce...94f051`, chain 42161)
- CurveGaugeDestinationVault (`0x9b1985...5c4410`, chain 42161)
- CurveGaugeDestinationVault (`0xdd78ea...07b0fd`, chain 42161)
- CurveNGConvexDestinationVault (`0x2b0813...93eb78`, chain 1)
- CurveNGConvexDestinationVault (`0x3f55ee...edb7f9`, chain 1)
- CurveNGConvexDestinationVault (`0x5c6aeb...d45126`, chain 1)
- CurveResolverXchain (`0xe0ebd6...05a5f8`, chain 42161)
- CurveResolverXchain (`0xbb1dfb...852e5e`, chain 59144)
- CurveV1PoolNoRebasingStatsCalculator (`0x145e12...c41879`, chain 1)
- CurveV1PoolNoRebasingStatsCalculator (`0x542a6b...99f0fa`, chain 1)
- CurveV1PoolNoRebasingStatsCalculator (`0x94b58e...6c7a69`, chain 1)
- CurveV1PoolNoRebasingStatsCalculator (`0xb8e7a5...9b8c2a`, chain 1)
- CurveV1PoolNoRebasingStatsCalculator (`0xd545ee...201004`, chain 1)
- CurveV1PoolNoRebasingStatsCalculator (`0xd6884a...ee6154`, chain 1)
- CurveV1PoolRebasingLockedStatsCalculator (`0x549398...56e3c8`, chain 1)
- CurveV1StableSwap (`0x1bdc53...b8cf69`, chain 42161)
- DestinationRegistry (`0xa698a9...a99402`, chain 1)
- DestinationRegistry (`0xa1afc8...095ba1`, chain 8453)
- DestinationRegistry (`0x95b5f1...43c58e`, chain 42161)
- DestinationRegistry (`0x66b9eb...6e258c`, chain 59144)
- DestinationVaultFactory (`0x37de6f...0ff124`, chain 1)
- DestinationVaultFactory (`0xf34f79...e9abb6`, chain 8453)
- DestinationVaultFactory (`0xc895bb...5c288a`, chain 9745)
- DestinationVaultFactory (`0xd66836...59225a`, chain 42161)
- DestinationVaultFactory (`0x618273...67520f`, chain 59144)
- DestinationVaultRegistry (`0x8d75a2...032b4b`, chain 42161)
- DestinationVaultRegistry (`0xc7b061...d65da2`, chain 59144)
- EethLSTCalculator (`0x4353e1...1350ba`, chain 1)
- ERC20DestinationVault (`0x116b3e...bf8f3e`, chain 1)
- ERC4626BackingOracle (`0x47cabf...81ed2f`, chain 42161)
- ERC4626RateProvider (`0xd4580a...0d44ba`, chain 1)
- ERC4626RedeemSwapper (`0x5c47f4...905667`, chain 42161)
- ERC4626RedeemSwapper (`0x6978f2...b3f5c3`, chain 59144)
- ERC4626Swapper (`0x98a216...0e339a`, chain 42161)
- ERC4626Swapper (`0xe1a08b...799213`, chain 42161)
- ERC4626Swapper (`0x268cbb...161a03`, chain 59144)
- ERC4626Swapper (`0x3f962e...acc328`, chain 59144)
- ETHxLSTCalculator (`0x6d3c5f...78334c`, chain 1)
- EulerDestinationVault (`0x398417...d80085`, chain 42161)
- EulerDestinationVault (`0xc32572...ea15a8`, chain 42161)
- EulerDestinationVault (`0xe6a2b1...08fc71`, chain 42161)
- EulerDestinationVault (`0x9d2868...239e3a`, chain 59144)
- EulerDestinationVault (`0xbe22c1...3ae95f`, chain 59144)
- EulerDestinationVault (`0xd2f243...5d4471`, chain 59144)
- ExtraRewarder (`0x17c50b...022975`, chain 1)
- ExtraRewarder (`0x23e9bb...7fec38`, chain 1)
- EzethLRTCalculator (`0xa84cc1...b263d9`, chain 1)
- FlashBorrowerSolver (`0x371b3c...b29488`, chain 42161)
- FluidDestinationVault (`0x2b8c97...414127`, chain 42161)
- FluidDestinationVault (`0x40454f...aa2f74`, chain 42161)
- FluidDestinationVault (`0xd70f87...d6c74b`, chain 42161)
- FluidDestinationVault (`0xdedb00...d2fb40`, chain 42161)
- FrxEthLSTCalculator (`0x449a95...787590`, chain 1)
- IncentiveHarvester (`0x1bfcdf...d5be5e`, chain 8453)
- Integer (`0x4c0868...092028`, chain 42161)
- Lens (`0x590a31...2fc754`, chain 42161)
- Lens (`0x92537a...f7973c`, chain 59144)
- LiquidationExecutor (`0x0294d7...7b2c8c`, chain 8453)
- LiquidationExecutor (`0x34d929...f7ad94`, chain 42161)
- LiquidationExecutor (`0x4008dd...ceba03`, chain 42161)
- LiquidationExecutor (`0x9f8e50...db4bfa`, chain 59144)
- LiquidationRow (`0x610ffe...3e3ab5`, chain 42161)
- LiquidationRow (`0xc33238...f05b3c`, chain 59144)
- LstPriceHook (`0xc91f3b...a4ebc5`, chain 9745)
- LstPriceHook (`0x67ae7b...cafbc0`, chain 42161)
- LstPriceHook (`0xf63daf...6f2f47`, chain 59144)
- MaxValueSlippageHook (`0x881bb3...3d63d4`, chain 9745)
- MaxValueSlippageHook (`0x6404da...44a402`, chain 42161)
- MaxValueSlippageHook (`0xaaee6a...869707`, chain 59144)
- MessageProxy (`0x20ea2f...616f76`, chain 1)
- MinTimeGapHook (`0x71689a...1679d9`, chain 9745)
- MinTimeGapHook (`0x09d0d6...b50322`, chain 42161)
- MinTimeGapHook (`0xb617bc...532e67`, chain 59144)
- MorphoDestinationVault (`0x52b31f...d48be3`, chain 42161)
- MorphoDestinationVault (`0x65f4fe...a62eef`, chain 42161)
- MorphoDestinationVault (`0xab3da8...c9bf0b`, chain 42161)
- MorphoDestinationVault (`0xd7b1f5...db00ce`, chain 42161)
- MorphoDestinationVault (`0xff004b...a24192`, chain 42161)
- NavLookbackHook (`0x4c0be1...6b427b`, chain 9745)
- NavLookbackHook (`0x9717e1...756f8b`, chain 42161)
- NavLookbackHook (`0xa31fe5...59fa42`, chain 59144)
- OneToOneBaseAssetBackingOracle (`0x4e8ce6...8e9b32`, chain 42161)
- OsethLSTCalculator (`0xb5aa59...25aebb`, chain 1)
- ProxyAdmin (`0xbfd637...047e9f`, chain 42161)
- ProxyLSTCalculator (`0x24864c...25931e`, chain 1)
- ProxyLSTCalculator (`0xdbfb63...aaa43f`, chain 1)
- PxEthLSTCalculator (`0x9cb562...972153`, chain 1)
- RethLSTCalculator (`0x980109...bb84a8`, chain 1)
- RootPriceOracle (`0xf25bdd...6d124f`, chain 9745)
- RootPriceOracle (`0xe84cea...72d97f`, chain 42161)
- RsethLRTCalculator (`0x840a49...4fc210`, chain 1)
- RswethLRTCalculator (`0xeedb3d...b6741a`, chain 1)
- SequencerChecker (`0x05abaa...1f23f4`, chain 42161)
- SequencerChecker (`0x537f6e...d97dcc`, chain 42161)
- SlippageBudgetHook (`0xf68f04...80b335`, chain 9745)
- SlippageBudgetHook (`0x8e9ac2...2d402d`, chain 42161)
- SlippageBudgetHook (`0x798b8a...824645`, chain 59144)
- StatsCalculatorFactory (`0x819806...bc917c`, chain 1)
- StatsCalculatorFactory (`0xd82664...8b0a1c`, chain 8453)
- StethLSTCalculator (`0x66a466...dbad0c`, chain 1)
- SwapperAdapter (`0xac2e82...cad295`, chain 42161)
- SwapRouter (`0xf0e746...7956d1`, chain 59144)
- SwapRouterV2 (`0xb4da8d...fbcbe6`, chain 9745)
- SwapRouterV2 (`0x096f44...33e59a`, chain 42161)
- SwethLSTCalculator (`0x60e98e...ce3c9e`, chain 1)
- SystemRegistry (`0x2218f9...aa4285`, chain 1)
- SystemRegistryL2 (`0x18dc92...371b4e`, chain 8453)
- SystemRegistryL2 (`0xbfd8e6...7b4220`, chain 42161)
- SystemRegistryL2 (`0x25f26e...a9f980`, chain 59144)
- SystemSecurityL1 (`0xf8cda9...699834`, chain 9745)
- SystemSecurityL1 (`0x795abe...87f494`, chain 59144)
- SystemSecurityL2 (`0xe7eeb1...96cf99`, chain 42161)
- UniV3Swap (`0x0ca3d0...34bb42`, chain 42161)
- UniV3Swap (`0x0093ff...b144c6`, chain 59144)
- UpgradeableAutopoolFactory (`0xc08f39...a917a7`, chain 42161)
- UpgradeableAutopoolFactory (`0x01890e...744be4`, chain 59144)
- ZeroExSwapper (`0x69c6fb...c0440e`, chain 59144)

## Contract Surface Quality

- Indexed contracts: 344; live-surface contracts included: 344 (301 live, 43 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 348/465 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/227 (0.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 274 own, 49 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (45 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Deployed-live implementations: 274 of 323 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/227
- Verified + Unaudited implementations: 225
- Verified by bytecode match: 0
- Unverified implementations: 47
- Unique implementations: 323
- Raw deployments: 399
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $33,555,386.07
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [transitioning]. ASD of $33,555,386.07 represents exposure in a protocol with transitioning activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 1 | 0.4% | 2023-09 |
| Hexens | Tier 2 | 1 | 0.4% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MessageProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227856 | `0x20ea2f...616f76` | ✅ Audited |
| SystemRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-227857 | `0x2218f9...aa4285` | ✅ Audited |

### ⚠️ Verified + Unaudited (266)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AutopoolETH | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227845 | 2 deployments: ethereum `0x0a2b94...114e56`; ethereum `0x35911a...cd3e5a` | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227900 | `0x60882d...d1755e` | ⚠️ Unaudited |
| CurveNGConvexDestinationVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227863 | 3 deployments: ethereum `0x2b0813...93eb78`; ethereum `0x3f55ee...edb7f9`; ethereum `0x5c6aeb...d45126` | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | project_anchor | own_supporting | 0 | base | unit-228213 | `0x4103a4...630595` | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227912 | `0x726104...b6c27b` | ⚠️ Unaudited |
| FluidDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228034 | 3 deployments: arbitrum `0x40454f...aa2f74`; arbitrum `0xd70f87...d6c74b`; arbitrum `0xdedb00...d2fb40` | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228140 | `0xf6cc56...b09540` | ⚠️ Unaudited |
| AutopoolETH | core_logic | project_anchor | own_supporting | 0 | base | unit-228242 | `0xaadf01...6e0404` | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | project_anchor | own_supporting | 0 | base | unit-228222 | `0x69a63d...3e0522` | ⚠️ Unaudited |
| ERC20DestinationVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227850 | `0x116b3e...bf8f3e` | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | project_anchor | own_supporting | 0 | linea | unit-228150 | `0x03825c...c5bf0d` | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227978 | `0xe041b3...5456f2` | ⚠️ Unaudited |
| AaveV3StataDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-227997 | `0x00e52a...9c5f4a` | ⚠️ Unaudited |
| AaveV3StataDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228086 | 2 deployments: arbitrum `0xa087e1...e7d7bb`; arbitrum `0xebcff8...864991` | ⚠️ Unaudited |
| AaveV3StataDestinationVault | core_logic | project_anchor | own_supporting | 0 | linea | unit-228163 | 2 deployments: linea `0x68e93d...de15f7`; linea `0xd96d54...57f3fd` | ⚠️ Unaudited |
| AaveV3StataDestinationVault | core_logic | project_anchor | own_supporting | 0 | linea | unit-228180 | `0xbd353d...45e7e2` | ⚠️ Unaudited |
| AccessController | governance | project_anchor | own_supporting | 0 | ethereum | unit-227871 | `0x37767c...742df6` | ⚠️ Unaudited |
| AccessController | unknown | project_anchor | own_supporting | 0 | base | unit-228204 | `0x20dfa8...1f27e8` | ⚠️ Unaudited |
| AccessController | governance | project_anchor | own_supporting | 0 | arbitrum | unit-228066 | `0x7ec410...4fd6b2` | ⚠️ Unaudited |
| AccessController | governance | project_anchor | own_supporting | 0 | linea | unit-228194 | `0xf4425c...b76a04` | ⚠️ Unaudited |
| AerodromeDestinationVault | core_logic | project_anchor | own_supporting | 0 | base | unit-228221 | 4 deployments: base `0x58c223...a1ed3e`; base `0x945a4f...5835ad`; base `0xa94031...39845a`; base `0xd18db4...e0cdad` | ⚠️ Unaudited |
| AerodromeDestinationVault | unknown | project_anchor | own_supporting | 0 | base | unit-228273 | `0xdbd149...02c627` | ⚠️ Unaudited |
| AerodromeOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228201 | `0x099a7e...8900f4` | ⚠️ Unaudited |
| AerodromeStakingDexCalculator | unknown | project_anchor | own_supporting | 0 | base | unit-228244 | 4 deployments: base `0xb02cb1...57184e`; base `0xc7b711...d2bd10`; base `0xd9b54d...8042e3`; base `0xe40523...a7c240` | ⚠️ Unaudited |
| AerodromeStakingDexCalculator | unknown | project_anchor | own_supporting | 0 | base | unit-228263 | `0xcef50b...253985` | ⚠️ Unaudited |
| AerodromeStakingIncentiveCalculator | unknown | project_anchor | own_supporting | 0 | base | unit-228233 | 4 deployments: base `0x9813e3...89f3e3`; base `0xd675d8...c2e76b`; base `0xe923f8...425318`; base `0xeaa026...1ac028` | ⚠️ Unaudited |
| AerodromeStakingIncentiveCalculator | unknown | project_anchor | own_supporting | 0 | base | unit-228261 | `0xc8756b...e6ef01` | ⚠️ Unaudited |
| AerodromeSwap | unknown | project_anchor | own_supporting | 0 | base | unit-228209 | `0x2bb11c...ca44a5` | ⚠️ Unaudited |
| ArraysConverter | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228097 | `0xb6ab7a...e5940f` | ⚠️ Unaudited |
| AsyncSwapperRegistry | adapter | project_anchor | own_supporting | 0 | ethereum | unit-227913 | `0x73526d...9c0b75` | ⚠️ Unaudited |
| AsyncSwapperRegistry | unknown | project_anchor | own_supporting | 0 | base | unit-228212 | `0x3750d3...577472` | ⚠️ Unaudited |
| AsyncSwapperRegistry | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228096 | `0xb45bd0...bfabba` | ⚠️ Unaudited |
| AsyncSwapperRegistry | adapter | project_anchor | own_supporting | 0 | linea | unit-228160 | `0x46e9c8...7468ca` | ⚠️ Unaudited |
| AuraCalculator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227843 | 12 deployments: ethereum `0x041679...74ea07`; ethereum `0x0f5d9c...65acad`; ethereum `0x4e4eb5...c48348`; ethereum `0x4ead64...eb43ea`; ethereum `0x596866...b2cc43`; ethereum `0x5ac9dc...9d7f40`; ethereum `0x662e3f...9b018b`; ethereum `0xa4349b...08f3a0`; ethereum `0xacdc4a...05829d`; ethereum `0xb57e41...fb6621`; ethereum `0xd09bde...e59c71`; ethereum `0xddfd0a...9d84b2` | ⚠️ Unaudited |
| AuraCalculator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227894 | `0x594baa...12898a` | ⚠️ Unaudited |
| AuraL2Calculator | unknown | project_anchor | own_supporting | 0 | base | unit-228224 | 3 deployments: base `0x7c4b58...13c539`; base `0xb9e981...02b6e8`; base `0xc5a917...7654d4` | ⚠️ Unaudited |
| AuraL2Calculator | unknown | project_anchor | own_supporting | 0 | base | unit-228230 | `0x925492...4b62f3` | ⚠️ Unaudited |
| AutopilotRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-227874 | `0x39ff6d...0835a2` | ⚠️ Unaudited |
| AutopilotRouter | unknown | project_anchor | own_supporting | 0 | base | unit-228237 | `0xa18b89...606931` | ⚠️ Unaudited |
| AutopilotRouter | adapter | project_anchor | own_supporting | 0 | plasma | unit-228302 | `0xc84883...91f27a` | ⚠️ Unaudited |
| AutopilotRouter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228024 | `0x27a9c1...7621ad` | ⚠️ Unaudited |
| AutopilotRouter | adapter | project_anchor | own_supporting | 1 | linea | unit-228311 | `0xf61e75...990544` | ⚠️ Unaudited |
| AutopoolETH | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227991 | `0xf90bb2...367281` | ⚠️ Unaudited |
| AutopoolETH | unknown | project_anchor | own_supporting | 0 | base | unit-228208 | `0x2ab4a3...6efdf9` | ⚠️ Unaudited |
| AutopoolETH | unknown | project_anchor | own_supporting | 0 | plasma | unit-228305 | `0xd0cf0c...cc5821` | ⚠️ Unaudited |
| AutopoolETH | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228011 | `0x12db19...ff66c3` | ⚠️ Unaudited |
| AutopoolETH | unknown | project_anchor | own_supporting | 0 | linea | unit-228184 | `0xc9db15...195e7b` | ⚠️ Unaudited |
| AutopoolETHStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227904 | `0x63139f...1428c8` | ⚠️ Unaudited |
| AutopoolETHStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227983 | `0xea7daf...ae2bd9` | ⚠️ Unaudited |
| AutopoolETHStrategy | unknown | project_anchor | own_supporting | 0 | base | unit-228246 | `0xb111c5...c2d9b0` | ⚠️ Unaudited |
| AutopoolFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-227920 | `0x7fed74...d2ed1f` | ⚠️ Unaudited |
| AutopoolFactory | unknown | project_anchor | own_supporting | 0 | base | unit-228223 | `0x78a7c4...898451` | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227988 | `0xf59086...26e716` | ⚠️ Unaudited |
| AutopoolRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-227919 | `0x7e5828...2964e4` | ⚠️ Unaudited |
| AutopoolRegistry | unknown | project_anchor | own_supporting | 0 | base | unit-228217 | `0x4fe791...b1fece` | ⚠️ Unaudited |
| AutopoolRegistry | registry | project_anchor | own_supporting | 0 | arbitrum | unit-228107 | `0xc3b8f5...c9d268` | ⚠️ Unaudited |
| AutopoolRegistry | registry | project_anchor | own_supporting | 0 | linea | unit-228193 | `0xf25f61...d5f42c` | ⚠️ Unaudited |
| BalancerAdapter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228094 | `0xb0c974...57702f` | ⚠️ Unaudited |
| BalancerAuraDestinationVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227865 | 5 deployments: ethereum `0x2f2cc1...6dac3d`; ethereum `0x5a4b54...8a4f4d`; ethereum `0x867991...70717e`; ethereum `0xc9b5d8...dd751c`; ethereum `0xfda499...33e94b` | ⚠️ Unaudited |
| BalancerAuraDestinationVault | core_logic | project_anchor | own_supporting | 0 | base | unit-228239 | 2 deployments: base `0xa6efb9...48dd5d`; base `0xb3723e...8500e0` | ⚠️ Unaudited |
| BalancerComposableStablePoolCalculator | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227846 | 9 deployments: ethereum `0x0e2b75...e39be4`; ethereum `0x2df5d9...ab0981`; ethereum `0x4c4d65...3a1970`; ethereum `0x4e7986...bd70e0`; ethereum `0x63b0ac...832ae9`; ethereum `0xa639d9...95193c`; ethereum `0xab0b54...27f9a5`; ethereum `0xadf54e...2dd5a6`; ethereum `0xb5652e...ea6866` | ⚠️ Unaudited |
| BalancerComposableStablePoolCalculator | core_logic | project_anchor | own_supporting | 0 | base | unit-228216 | 2 deployments: base `0x4fc45f...0002a9`; base `0x800f53...4820b3` | ⚠️ Unaudited |
| BalancerGyroPoolCalculator | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227929 | 2 deployments: ethereum `0x943673...13e9d2`; ethereum `0xa9b8e4...5702ab` | ⚠️ Unaudited |
| BalancerGyroPoolCalculator | core_logic | project_anchor | own_supporting | 0 | base | unit-228236 | `0x9d95e1...e39e33` | ⚠️ Unaudited |
| BalancerGyroscopeDestinationVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227928 | 2 deployments: ethereum `0x92294a...61bad7`; ethereum `0xa1b929...a29d05` | ⚠️ Unaudited |
| BalancerGyroscopeDestinationVault | core_logic | project_anchor | own_supporting | 0 | base | unit-228256 | `0xbd137c...84f59c` | ⚠️ Unaudited |
| BalancerMetaStablePoolCalculator | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227908 | `0x66664b...9a59a4` | ⚠️ Unaudited |
| BalancerV2ComposableStableMathOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228122 | `0xddc9e4...7ab47c` | ⚠️ Unaudited |
| BalancerV2Swap | unknown | project_anchor | own_supporting | 1 | ethereum | unit-228309 | 2 deployments: ethereum `0x620152...5ea3f2`; ethereum `0x780d5b...4ba5f1` | ⚠️ Unaudited |
| BalancerV2Swap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228062 | `0x6def5e...13f311` | ⚠️ Unaudited |
| BalancerV3Adapter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228017 | `0x19fa89...c1a620` | ⚠️ Unaudited |
| BalancerV3AuraDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228110 | `0xc77161...d536c0` | ⚠️ Unaudited |
| BalancerV3AuraDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228114 | `0xce1c82...aec809` | ⚠️ Unaudited |
| BalancerV3BatchSwap | periphery | project_anchor | own_supporting | 0 | arbitrum | unit-228102 | `0xbd6beb...4c741b` | ⚠️ Unaudited |
| BalancerV3StableMathOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228083 | `0x990957...2e54d2` | ⚠️ Unaudited |
| BankSwapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228021 | `0x1cde65...4647be` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 1 | ethereum | unit-228310 | `0xbf5881...470ff5` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228016 | `0x18f9f3...c00df8` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228036 | `0x4423cb...450ceb` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228037 | `0x45bce6...3949fb` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228038 | `0x4660a1...34f58d` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228055 | `0x621091...45deba` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228085 | `0x9f42f5...4f4ed5` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228087 | `0xa2217d...69b478` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228093 | `0xadb96b...49f858` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228109 | `0xc54e00...4717ad` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228112 | `0xcaf5b3...41bcad` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | linea | unit-228152 | `0x25be90...498fd1` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | linea | unit-228155 | `0x2844a0...6a26d8` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | linea | unit-228158 | `0x422071...73cd1a` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | linea | unit-228185 | `0xd00c62...1424bb` | ⚠️ Unaudited |
| BlockchainInfo | periphery | project_anchor | own_supporting | 0 | arbitrum | unit-228070 | `0x86abaa...3308b3` | ⚠️ Unaudited |
| BridgedLSTCalculator | unknown | project_anchor | own_supporting | 0 | base | unit-228214 | `0x4cb4b1...a64f99` | ⚠️ Unaudited |
| BridgedLSTCalculator | operational_periphery | project_anchor | own_supporting | 0 | base | unit-228220 | 5 deployments: base `0x58897e...17943e`; base `0xa80b38...892934`; base `0xb081af...1cbdb0`; base `0xb51829...1fa9ea`; base `0xbaf2ee...04e1a7` | ⚠️ Unaudited |
| Bytes32 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228053 | `0x5f317e...8f520e` | ⚠️ Unaudited |
| CbethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227861 | `0x24d783...069abb` | ⚠️ Unaudited |
| CbethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227946 | `0xab78a5...d01e08` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227911 | `0x701f11...1b6c3f` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228259 | `0xc7939c...11641c` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228100 | `0xbbcc2d...628433` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-228169 | `0x969954...189950` | ⚠️ Unaudited |
| ChainlinkStatsUpkeepV4 | unknown | project_anchor | own_supporting | 0 | base | unit-228210 | `0x30f285...27c637` | ⚠️ Unaudited |
| ConvexCalculator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227868 | 7 deployments: ethereum `0x355f39...13de91`; ethereum `0x4bbfa1...332276`; ethereum `0x74c3b0...269ab7`; ethereum `0x83b694...301d7a`; ethereum `0xbfdf3a...163841`; ethereum `0xf25b36...45eac3`; ethereum `0xf7370f...4ba9d7` | ⚠️ Unaudited |
| CurveAdapter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228113 | `0xcb9597...30af70` | ⚠️ Unaudited |
| CurveConvexDestinationVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227869 | `0x356c79...6c3e77` | ⚠️ Unaudited |
| CurveConvexDestinationVaultV2 | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227840 | 8 deployments: ethereum `0x0091fe...6758cb`; ethereum `0x23032a...4e9d8c`; ethereum `0x2fa4c8...d9b171`; ethereum `0x737f2e...7f004b`; ethereum `0x88d0e0...f90ab0`; ethereum `0x9828b1...fb37f2`; ethereum `0xafd498...706a90`; ethereum `0xf4cedd...948fa2` | ⚠️ Unaudited |
| CurveGaugeDestinationVault | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-227999 | 2 deployments: arbitrum `0x04f7ce...94f051`; arbitrum `0x9b1985...5c4410` | ⚠️ Unaudited |
| CurveGaugeDestinationVault | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-228121 | `0xdd78ea...07b0fd` | ⚠️ Unaudited |
| CurveResolverXchain | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228126 | `0xe0ebd6...05a5f8` | ⚠️ Unaudited |
| CurveResolverXchain | unknown | project_anchor | own_supporting | 0 | linea | unit-228178 | `0xbb1dfb...852e5e` | ⚠️ Unaudited |
| CurveV1PoolNoRebasingStatsCalculator | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227851 | 6 deployments: ethereum `0x145e12...c41879`; ethereum `0x542a6b...99f0fa`; ethereum `0x94b58e...6c7a69`; ethereum `0xb8e7a5...9b8c2a`; ethereum `0xd545ee...201004`; ethereum `0xd6884a...ee6154` | ⚠️ Unaudited |
| CurveV1PoolRebasingLockedStatsCalculator | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227893 | `0x549398...56e3c8` | ⚠️ Unaudited |
| CurveV1StableEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227952 | `0xaed535...b8a92b` | ⚠️ Unaudited |
| CurveV1StableEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228039 | `0x47b835...b49b5f` | ⚠️ Unaudited |
| CurveV1StableEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-228179 | `0xbb1feb...8d2635` | ⚠️ Unaudited |
| CurveV1StableSwap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228020 | `0x1bdc53...b8cf69` | ⚠️ Unaudited |
| CustomSetOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227891 | `0x53ff9d...24066f` | ⚠️ Unaudited |
| CustomSetOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228231 | `0x92c726...eae3ef` | ⚠️ Unaudited |
| CustomSetOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228067 | `0x80c503...cdc4ca` | ⚠️ Unaudited |
| CustomSetOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-228172 | `0x9faefa...cc23e2` | ⚠️ Unaudited |
| DestinationIncentiveChecker | unknown | project_anchor | own_supporting | 0 | base | unit-228257 | `0xc3ff90...598323` | ⚠️ Unaudited |
| DestinationRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-227939 | `0xa698a9...a99402` | ⚠️ Unaudited |
| DestinationRegistry | registry | project_anchor | own_supporting | 0 | base | unit-228238 | `0xa1afc8...095ba1` | ⚠️ Unaudited |
| DestinationRegistry | registry | project_anchor | own_supporting | 0 | arbitrum | unit-228079 | `0x95b5f1...43c58e` | ⚠️ Unaudited |
| DestinationRegistry | registry | project_anchor | own_supporting | 0 | linea | unit-228162 | `0x66b9eb...6e258c` | ⚠️ Unaudited |
| DestinationVaultFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-227873 | `0x37de6f...0ff124` | ⚠️ Unaudited |
| DestinationVaultFactory | registry | project_anchor | own_supporting | 0 | base | unit-228286 | `0xf34f79...e9abb6` | ⚠️ Unaudited |
| DestinationVaultFactory | registry | project_anchor | own_supporting | 0 | plasma | unit-228303 | `0xc895bb...5c288a` | ⚠️ Unaudited |
| DestinationVaultFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-228117 | `0xd66836...59225a` | ⚠️ Unaudited |
| DestinationVaultFactory | registry | project_anchor | own_supporting | 0 | linea | unit-228161 | `0x618273...67520f` | ⚠️ Unaudited |
| DestinationVaultRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-227875 | `0x3aac1c...e152ae` | ⚠️ Unaudited |
| DestinationVaultRegistry | unknown | project_anchor | own_supporting | 0 | base | unit-228253 | `0xbbbb6e...21735f` | ⚠️ Unaudited |
| DestinationVaultRegistry | registry | project_anchor | own_supporting | 0 | arbitrum | unit-228074 | `0x8d75a2...032b4b` | ⚠️ Unaudited |
| DestinationVaultRegistry | registry | project_anchor | own_supporting | 0 | linea | unit-228183 | `0xc7b061...d65da2` | ⚠️ Unaudited |
| EethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227881 | `0x4353e1...1350ba` | ⚠️ Unaudited |
| EethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227942 | `0xa87930...d4a71e` | ⚠️ Unaudited |
| EethOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227944 | `0xaa573a...86df81` | ⚠️ Unaudited |
| ERC4626BackingOracle | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-228040 | `0x47cabf...81ed2f` | ⚠️ Unaudited |
| ERC4626NonLPSpotEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228120 | `0xdd0394...f9a8f2` | ⚠️ Unaudited |
| ERC4626NonLPSpotEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-228159 | `0x46c004...64686b` | ⚠️ Unaudited |
| ERC4626RateProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227967 | `0xd4580a...0d44ba` | ⚠️ Unaudited |
| ERC4626RedeemSwapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228050 | `0x5c47f4...905667` | ⚠️ Unaudited |
| ERC4626RedeemSwapper | adapter | project_anchor | own_supporting | 0 | linea | unit-228164 | `0x6978f2...b3f5c3` | ⚠️ Unaudited |
| ERC4626Swapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228082 | `0x98a216...0e339a` | ⚠️ Unaudited |
| ERC4626Swapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228127 | `0xe1a08b...799213` | ⚠️ Unaudited |
| ERC4626Swapper | adapter | project_anchor | own_supporting | 0 | linea | unit-228154 | `0x268cbb...161a03` | ⚠️ Unaudited |
| ERC4626Swapper | adapter | project_anchor | own_supporting | 0 | linea | unit-228157 | `0x3f962e...acc328` | ⚠️ Unaudited |
| ERC4626VaultShareEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228141 | `0xf701b4...2b7087` | ⚠️ Unaudited |
| ERC4626VaultShareEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-228190 | `0xdb28f4...aeae68` | ⚠️ Unaudited |
| EthPeggedOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227976 | `0xdeb361...a67de3` | ⚠️ Unaudited |
| EthPeggedOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228278 | `0xe33703...746aa9` | ⚠️ Unaudited |
| EthPeggedOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228014 | `0x16adb8...f5a0a8` | ⚠️ Unaudited |
| EthPeggedOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-228174 | `0xa6e5ac...acf562` | ⚠️ Unaudited |
| EthPerTokenSender | token | project_anchor | own_supporting | 0 | ethereum | unit-227974 | `0xdd9251...625a3d` | ⚠️ Unaudited |
| EthPerTokenStore | unknown | project_anchor | own_supporting | 0 | base | unit-228219 | `0x578317...d68dfe` | ⚠️ Unaudited |
| ETHxLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227862 | `0x2757f5...5b0c55` | ⚠️ Unaudited |
| ETHxLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227910 | `0x6d3c5f...78334c` | ⚠️ Unaudited |
| EulerDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228032 | 2 deployments: arbitrum `0x398417...d80085`; arbitrum `0xe6a2b1...08fc71` | ⚠️ Unaudited |
| EulerDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228106 | `0xc32572...ea15a8` | ⚠️ Unaudited |
| EulerDestinationVault | core_logic | project_anchor | own_supporting | 0 | linea | unit-228170 | 2 deployments: linea `0x9d2868...239e3a`; linea `0xd2f243...5d4471` | ⚠️ Unaudited |
| EulerDestinationVault | core_logic | project_anchor | own_supporting | 0 | linea | unit-228181 | `0xbe22c1...3ae95f` | ⚠️ Unaudited |
| ExtraRewarder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227853 | `0x17c50b...022975` | ⚠️ Unaudited |
| ExtraRewarder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227859 | `0x23e9bb...7fec38` | ⚠️ Unaudited |
| EzethLRTCalculator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227941 | `0xa84cc1...b263d9` | ⚠️ Unaudited |
| EzethLRTCalculator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227980 | `0xe3e731...25b459` | ⚠️ Unaudited |
| FlashBorrowerSolver | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228031 | `0x371b3c...b29488` | ⚠️ Unaudited |
| FluidDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228026 | `0x2b8c97...414127` | ⚠️ Unaudited |
| FrxEthLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227882 | `0x449a95...787590` | ⚠️ Unaudited |
| FrxEthLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227948 | `0xad6d0e...18a223` | ⚠️ Unaudited |
| IncentiveHarvester | unknown | project_anchor | own_supporting | 0 | base | unit-228203 | `0x1bfcdf...d5be5e` | ⚠️ Unaudited |
| IncentivePricingStats | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227924 | `0x8607ba...85f862` | ⚠️ Unaudited |
| IncentivePricingStats | unknown | project_anchor | own_supporting | 0 | base | unit-228285 | `0xf28213...48090d` | ⚠️ Unaudited |
| Integer | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228041 | `0x4c0868...092028` | ⚠️ Unaudited |
| Lens | periphery | project_anchor | own_supporting | 0 | ethereum | unit-227852 | `0x146b55...783882` | ⚠️ Unaudited |
| Lens | unknown | project_anchor | own_supporting | 0 | base | unit-228243 | `0xaf05c2...17aa9c` | ⚠️ Unaudited |
| Lens | periphery | project_anchor | own_supporting | 0 | arbitrum | unit-228047 | `0x590a31...2fc754` | ⚠️ Unaudited |
| Lens | periphery | project_anchor | own_supporting | 0 | linea | unit-228168 | `0x92537a...f7973c` | ⚠️ Unaudited |
| LiquidationExecutor | unknown | project_anchor | own_supporting | 0 | base | unit-228198 | `0x0294d7...7b2c8c` | ⚠️ Unaudited |
| LiquidationExecutor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228029 | `0x34d929...f7ad94` | ⚠️ Unaudited |
| LiquidationExecutor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228033 | `0x4008dd...ceba03` | ⚠️ Unaudited |
| LiquidationExecutor | unknown | project_anchor | own_supporting | 0 | linea | unit-228171 | `0x9f8e50...db4bfa` | ⚠️ Unaudited |
| LiquidationRow | unknown | project_anchor | own_supporting | 0 | base | unit-228277 | `0xe2f00b...881d4f` | ⚠️ Unaudited |
| LiquidationRow | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228054 | `0x610ffe...3e3ab5` | ⚠️ Unaudited |
| LiquidationRow | unknown | project_anchor | own_supporting | 0 | linea | unit-228182 | `0xc33238...f05b3c` | ⚠️ Unaudited |
| LstPriceHook | operational_periphery | project_anchor | own_supporting | 0 | plasma | unit-228304 | `0xc91f3b...a4ebc5` | ⚠️ Unaudited |
| LstPriceHook | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-228059 | `0x67ae7b...cafbc0` | ⚠️ Unaudited |
| LstPriceHook | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-228195 | `0xf63daf...6f2f47` | ⚠️ Unaudited |
| MaxValueSlippageHook | unknown | project_anchor | own_supporting | 0 | plasma | unit-228297 | `0x881bb3...3d63d4` | ⚠️ Unaudited |
| MaxValueSlippageHook | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228056 | `0x6404da...44a402` | ⚠️ Unaudited |
| MaxValueSlippageHook | unknown | project_anchor | own_supporting | 0 | linea | unit-228175 | `0xaaee6a...869707` | ⚠️ Unaudited |
| MinTimeGapHook | unknown | project_anchor | own_supporting | 0 | plasma | unit-228293 | `0x71689a...1679d9` | ⚠️ Unaudited |
| MinTimeGapHook | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228004 | `0x09d0d6...b50322` | ⚠️ Unaudited |
| MinTimeGapHook | unknown | project_anchor | own_supporting | 0 | linea | unit-228177 | `0xb617bc...532e67` | ⚠️ Unaudited |
| MorphoDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228044 | `0x52b31f...d48be3` | ⚠️ Unaudited |
| MorphoDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228057 | 4 deployments: arbitrum `0x65f4fe...a62eef`; arbitrum `0xab3da8...c9bf0b`; arbitrum `0xd7b1f5...db00ce`; arbitrum `0xff004b...a24192` | ⚠️ Unaudited |
| NavLookbackHook | unknown | project_anchor | own_supporting | 0 | plasma | unit-228290 | `0x4c0be1...6b427b` | ⚠️ Unaudited |
| NavLookbackHook | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228080 | `0x9717e1...756f8b` | ⚠️ Unaudited |
| NavLookbackHook | unknown | project_anchor | own_supporting | 0 | linea | unit-228173 | `0xa31fe5...59fa42` | ⚠️ Unaudited |
| OneToOneBaseAssetBackingOracle | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-228042 | `0x4e8ce6...8e9b32` | ⚠️ Unaudited |
| OsethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227876 | `0x3cc439...257b1b` | ⚠️ Unaudited |
| OsethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227956 | `0xb5aa59...25aebb` | ⚠️ Unaudited |
| PointsHook | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227936 | `0xa38606...c615c3` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | arbitrum | unit-228103 | `0xbfd637...047e9f` | ⚠️ Unaudited |
| ProxyLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227860 | 2 deployments: ethereum `0x24864c...25931e`; ethereum `0xdbfb63...aaa43f` | ⚠️ Unaudited |
| ProxyLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227927 | `0x8a26c7...494e53` | ⚠️ Unaudited |
| PxETHEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227877 | `0x3cc521...ffc629` | ⚠️ Unaudited |
| PxEthLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227872 | `0x37c9b7...06296a` | ⚠️ Unaudited |
| PxEthLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227934 | `0x9cb562...972153` | ⚠️ Unaudited |
| ReceivingRouter | unknown | project_anchor | own_supporting | 0 | base | unit-228211 | `0x327966...12267e` | ⚠️ Unaudited |
| RedstoneOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227979 | `0xe1adb6...da5913` | ⚠️ Unaudited |
| RedstoneOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228234 | `0x9ab4b6...dad1ee` | ⚠️ Unaudited |
| RedStonePullOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228135 | `0xed2acb...5e081b` | ⚠️ Unaudited |
| RethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227842 | `0x038516...90fac1` | ⚠️ Unaudited |
| RethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227931 | `0x980109...bb84a8` | ⚠️ Unaudited |
| RootPriceOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227902 | `0x61f8be...bc2cac` | ⚠️ Unaudited |
| RootPriceOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228254 | `0xbcf67d...661795` | ⚠️ Unaudited |
| RootPriceOracle | operational_periphery | project_anchor | own_supporting | 0 | plasma | unit-228306 | `0xf25bdd...6d124f` | ⚠️ Unaudited |
| RootPriceOracle | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-228130 | `0xe84cea...72d97f` | ⚠️ Unaudited |
| Router | adapter | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | linea | unit-228156 | `0x32db39...929c54` | ⚠️ Unaudited |
| RsethLRTCalculator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227849 | `0x114ca0...cefa86` | ⚠️ Unaudited |
| RsethLRTCalculator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227923 | `0x840a49...4fc210` | ⚠️ Unaudited |
| RswethLRTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227982 | `0xe861c6...15b90f` | ⚠️ Unaudited |
| RswethLRTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227984 | `0xeedb3d...b6741a` | ⚠️ Unaudited |
| SequencerChecker | unknown | project_anchor | own_supporting | 0 | base | unit-228218 | `0x564c39...d23535` | ⚠️ Unaudited |
| SequencerChecker | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228000 | `0x05abaa...1f23f4` | ⚠️ Unaudited |
| SequencerChecker | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228045 | `0x537f6e...d97dcc` | ⚠️ Unaudited |
| ShadowDexSwap | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | linea | unit-228196 | `0xfb918e...eae19d` | ⚠️ Unaudited |
| SlippageBudgetHook | unknown | project_anchor | own_supporting | 0 | plasma | unit-228307 | `0xf68f04...80b335` | ⚠️ Unaudited |
| SlippageBudgetHook | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228075 | `0x8e9ac2...2d402d` | ⚠️ Unaudited |
| SlippageBudgetHook | unknown | project_anchor | own_supporting | 0 | linea | unit-228167 | `0x798b8a...824645` | ⚠️ Unaudited |
| SolverRootOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228052 | `0x5ee5d0...9cbd14` | ⚠️ Unaudited |
| SolverRootOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-228151 | `0x24127a...127e00` | ⚠️ Unaudited |
| StatsCalculatorFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-227921 | `0x819806...bc917c` | ⚠️ Unaudited |
| StatsCalculatorFactory | registry | project_anchor | own_supporting | 0 | base | unit-228269 | `0xd82664...8b0a1c` | ⚠️ Unaudited |
| StatsCalculatorRegistry | registry | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227950 | `0xae6b25...0e2124` | ⚠️ Unaudited |
| StatsCalculatorRegistry | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228205 | `0x22dd21...b217d2` | ⚠️ Unaudited |
| StethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227909 | `0x66a466...dbad0c` | ⚠️ Unaudited |
| StethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227951 | `0xaea78e...02cee7` | ⚠️ Unaudited |
| SwapperAdapter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228091 | `0xac2e82...cad295` | ⚠️ Unaudited |
| SwapRouter | unknown | project_anchor | own_supporting | 0 | base | unit-228206 | `0x23783e...b85666` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | linea | unit-228192 | `0xf0e746...7956d1` | ⚠️ Unaudited |
| SwapRouterV2 | adapter | project_anchor | own_supporting | 0 | plasma | unit-228301 | `0xb4da8d...fbcbe6` | ⚠️ Unaudited |
| SwapRouterV2 | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228001 | `0x096f44...33e59a` | ⚠️ Unaudited |
| SwethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227901 | `0x60e98e...ce3c9e` | ⚠️ Unaudited |
| SwethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227918 | `0x7cbbb3...ac7408` | ⚠️ Unaudited |
| SystemRegistryL2 | unknown | project_anchor | own_supporting | 0 | base | unit-228202 | `0x18dc92...371b4e` | ⚠️ Unaudited |
| SystemRegistryL2 | registry | project_anchor | own_supporting | 0 | arbitrum | unit-228104 | `0xbfd8e6...7b4220` | ⚠️ Unaudited |
| SystemRegistryL2 | registry | project_anchor | own_supporting | 0 | linea | unit-228153 | `0x25f26e...a9f980` | ⚠️ Unaudited |
| SystemSecurityL1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227841 | `0x027a33...238833` | ⚠️ Unaudited |
| SystemSecurityL1 | unknown | project_anchor | own_supporting | 0 | plasma | unit-228308 | `0xf8cda9...699834` | ⚠️ Unaudited |
| SystemSecurityL1 | unknown | project_anchor | own_supporting | 0 | linea | unit-228166 | `0x795abe...87f494` | ⚠️ Unaudited |
| SystemSecurityL2 | unknown | project_anchor | own_supporting | 0 | base | unit-228227 | `0x8c58af...8b4006` | ⚠️ Unaudited |
| SystemSecurityL2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228129 | `0xe7eeb1...96cf99` | ⚠️ Unaudited |
| UniV3Swap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227848 | `0x106a60...73963d` | ⚠️ Unaudited |
| UniV3Swap | unknown | project_anchor | own_supporting | 0 | base | unit-228200 | `0x0915f5...da6e71` | ⚠️ Unaudited |
| UniV3Swap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228005 | `0x0ca3d0...34bb42` | ⚠️ Unaudited |
| UniV3Swap | unknown | project_anchor | third_party_dependency | 0 | linea | unit-228148 | 2 deployments: linea `0x0093ff...b144c6`; linea `0xae315b...66bcc9` | ⚠️ Unaudited |
| UniV3SwapBase | unknown | project_anchor | own_supporting | 0 | base | unit-228280 | `0xe4fef2...68ca11` | ⚠️ Unaudited |
| UpgradeableAutopoolFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-228105 | `0xc08f39...a917a7` | ⚠️ Unaudited |
| UpgradeableAutopoolFactory | registry | project_anchor | own_supporting | 0 | linea | unit-228149 | `0x01890e...744be4` | ⚠️ Unaudited |
| WstETHEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227867 | `0x31fec5...5af883` | ⚠️ Unaudited |
| ZeroExSwapper | adapter | project_anchor | own_supporting | 0 | linea | unit-228165 | `0x69c6fb...c0440e` | ⚠️ Unaudited |
| ZeroOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227906 | `0x655fa9...b8aa28` | ⚠️ Unaudited |
| ZeroOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228197 | `0x015546...a1d14d` | ⚠️ Unaudited |
| ZeroOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228035 | `0x42ecca...d23713` | ⚠️ Unaudited |
| ZeroOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-228188 | `0xd7c964...b24841` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227844 | `0x084e65...f25a0c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227854 | `0x1abd04...0f356e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227855 | `0x1ea622...f08573` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227879 | `0x40219b...4791d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227880 | `0x408b6a...42df36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227883 | `0x4a3688...730e91` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227886 | `0x4c70ef...cc1c58` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227887 | `0x4d37d7...2a34d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227899 | `0x603390...972cca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227903 | `0x620ffc...e89bc0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227916 | `0x79eb84...0aa54d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227917 | `0x7c19e6...665a8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227933 | `0x9abe58...354404` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227940 | `0xa7569a...d80d35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227958 | `0xba1462...73e01a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227960 | `0xc4eb86...eda30b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227961 | `0xc7c77b...53ba38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227963 | `0xcb29d4...4bc3ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227965 | `0xd1e668...c98709` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227966 | `0xd3bf4a...612081` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227968 | `0xd460a3...9ad160` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227969 | `0xd48a39...fa0e4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227972 | `0xd8ef13...8125e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227977 | `0xdfe3fa...e86f0c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227981 | `0xe4433d...bffc04` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227986 | `0xf4b143...96e23c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227989 | `0xf5c49c...825ab4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227992 | `0xf9779a...25baac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228199 | `0x08b061...713e4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228207 | `0x2a7a16...92b1ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228215 | `0x4efcc0...73918b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228226 | `0x859dda...29399b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228235 | `0x9c6864...84c831` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228250 | `0xb592c1...314498` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228255 | `0xbd0fe9...f29f6a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228283 | `0xeb042d...b02477` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228284 | `0xee5e75...10f3f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228288 | `0x0da0e8...54e1dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228289 | `0x459386...067ccd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228291 | `0x4dd032...77e097` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228292 | `0x4ec8f8...83ec80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228294 | `0x7bc604...560397` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228295 | `0x7bea14...ebe83d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228296 | `0x7de076...ffc1f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228298 | `0x8ccd47...00347d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228299 | `0x8dbad4...ae72e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228300 | `0x9065c0...187d48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228009 | `0x127563...ad9013` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228019 | `0x1bb923...23cdc0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228089 | `0xa9900b...1d447b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228139 | `0xf63b7f...46320c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228186 | `0xd1a652...bd792a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-227994 | `0x25f603...270c23` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-227995 | `0x69410c...01a3dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-227996 | `0xadee3f...194a03` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view](https://drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view) | Hexens | Audit | 2024-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 14 | high |
| [drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view](https://drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view?usp=sharing) | Hexens | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [drive.google.com/file/d/1CcKw0ig7eBXV6q8jNjuvOFdEF_ozh_ZE/view](https://drive.google.com/file/d/1CcKw0ig7eBXV6q8jNjuvOFdEF_ozh_ZE/view) | Hexens | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Zhba6TjCgu4jzvAQ_Tokemak-CertoraAuditReport.pdf](https://certora.cdn.prismic.io/certora/Zhba6TjCgu4jzvAQ_Tokemak-CertoraAuditReport.pdf) | Certora | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Report.md](https://github.com/Certora/tokemak-v2-core-fv/blob/main/Report.md) | Certora | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FS0VKxLL6FMLB1onYrDVu%2Fuploads%2Fm9vasMSC35JbnaqfyPVN%2FTokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf?alt=media) | Halborn | Audit | 2023-09 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 23 | high |
| [spaces/S0VKxLL6FMLB1onYrDVu/uploads/auBJzmmsZIR0afW4AD7c/Tokemak_V2_Smart_Contract_Formal_Verification_Report_Halborn_Draft.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FS0VKxLL6FMLB1onYrDVu%2Fuploads%2FauBJzmmsZIR0afW4AD7c%2FTokemak_V2_Smart_Contract_Formal_Verification_Report_Halborn_Draft.pdf?alt=media) | Halborn | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [drive.google.com/file/d/1rE-u847zxv49vShADpMhgVIE1cYvZujG/view](https://drive.google.com/file/d/1rE-u847zxv49vShADpMhgVIE1cYvZujG/view) | Halborn | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11542] drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view — matched: Extracted contract names from file paths and findings sections. Audit date from 'delivered 22.07.2024' in auditing details.
- [11543] drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view — no match: Extracted contract names from file paths in findings and scope section. Audit date from 'delivered 25.03.2025'.
- [11544] drive.google.com/file/d/1CcKw0ig7eBXV6q8jNjuvOFdEF_ozh_ZE/view — no match: Extracted 5 contracts from findings paths; scope section mentions repository but no explicit contract list; audit date from 'delivered 20.08.2024'.
- [11545] Zhba6TjCgu4jzvAQ_Tokemak-CertoraAuditReport.pdf — no match: Only LMPStrategy.sol is explicitly in scope. LMPVault.sol and LMPDebt.sol are mentioned as partially looked at but not in scope.
- [11546] Report.md — no match: Scope section explicitly lists four contracts. Audit competition ended March 11, 2024.
- [11547] spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf — matched: Scope section explicitly lists all contracts under /src folder except 8 excluded files. Extracted contract names from scope and findings. Audit date from engagement end date: September 24th, 2023.
- [11548] spaces/S0VKxLL6FMLB1onYrDVu/uploads/auBJzmmsZIR0afW4AD7c/Tokemak_V2_Smart_Contract_Formal_Verification_Report_Halborn_Draft.pdf — no match: Scope section lists 4 contracts: LMPVault.sol, LMPDebt.sol, DestinationVault.sol (file path given as src/security/AccessController.sol, but contract name is DestinationVault), LMPDestinations.sol. Audit date is end date of engagement: September 15th, 2023.
- [11549] drive.google.com/file/d/1rE-u847zxv49vShADpMhgVIE1cYvZujG/view — no match: Scope section explicitly lists AccToke and Staking contracts. Audit date is the end date of engagement: November 11th, 2022.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | AbstractRewarder | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | AccToke | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | AutoPoolDebt | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | AutoPoolETH | ambiguous — not counted | AutopoolETH (alternative) `0x2ab4a3...6efdf9` — deployed 2024-10-18 20:08:41+03 — liveness: live (code_present_context)<br>AutopoolETH (alternative) `0x12db19...ff66c3` — deployed 2025-09-09 20:39:35+03 — liveness: live (code_present_context)<br>AutopoolETH (alternative) `0xaadf01...6e0404` — deployed 2024-10-18 20:12:33+03 — liveness: live (current_address_book_code)<br>AutopoolETH (alternative) `0xf90bb2...367281` — deployed 2024-09-11 00:28:23+03 — liveness: live (code_present_context)<br>AutopoolETH (alternative) `0xc9db15...195e7b` — deployed 2025-10-14 20:29:38+03 — liveness: live (code_present_context)<br>AutopoolETH (alternative) `0x35911a...cd3e5a` — deployed 2025-01-28 00:36:11+03 — liveness: live (current_address_book_code)<br>AutopoolETH (alternative) `0x0a2b94...114e56` — deployed 2024-09-11 00:30:47+03 — liveness: live (current_address_book_code)<br>AutopoolETH (alternative) `0xd0cf0c...cc5821` — deployed 2025-09-19 23:44:18+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | AutoPoolFees | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | AutoPoolDestinations | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | DestinationVault | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | IncentiveCalculatorBase | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | LSTCalculatorBase | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | LiquidationRow | ambiguous — not counted | LiquidationRow (alternative) `0x610ffe...3e3ab5` — deployed 2025-09-09 16:26:10+03 — liveness: live (code_present_context)<br>LiquidationRow (proxy) (alternative) `0xbf5881...470ff5` — deployed 2024-09-12 20:02:59+03 — liveness: live (current_address_book_code)<br>LiquidationRow (alternative) `0xe2f00b...881d4f` — deployed 2024-11-05 21:39:59+03 — liveness: live (code_present_context)<br>LiquidationRow (alternative) `0xc33238...f05b3c` — deployed 2025-10-10 13:48:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | MainRewarder | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | MessageProxy | own contract | MessageProxy (selected) `0x20ea2f...616f76` — deployed 2024-10-18 18:50:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | PriceReturn | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | SummaryStats | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | TellorOracle | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view | BalancerV3StablePoolCalculatorBase | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view | NavTracking | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view | SlippageBudgetHook | ambiguous — not counted | SlippageBudgetHook (alternative) `0x8e9ac2...2d402d` — deployed 2025-09-09 20:39:58+03 — liveness: live (current_address_book_code)<br>SlippageBudgetHook (alternative) `0x798b8a...824645` — deployed 2025-10-14 15:19:21+03 — liveness: live (current_address_book_code)<br>SlippageBudgetHook (alternative) `0xf68f04...80b335` — deployed 2025-09-23 18:09:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view | LstPriceHook | ambiguous — not counted | LstPriceHook (alternative) `0xf63daf...6f2f47` — deployed 2025-10-14 15:19:21+03 — liveness: live (current_address_book_code)<br>LstPriceHook (alternative) `0x67ae7b...cafbc0` — deployed 2025-09-09 20:39:48+03 — liveness: live (current_address_book_code)<br>LstPriceHook (alternative) `0xc91f3b...a4ebc5` — deployed 2025-09-23 18:09:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view | MinTimeGapHook | ambiguous — not counted | MinTimeGapHook (alternative) `0x71689a...1679d9` — deployed 2025-09-23 18:09:17+03 — liveness: live (current_address_book_code)<br>MinTimeGapHook (alternative) `0x09d0d6...b50322` — deployed 2025-09-09 20:39:53+03 — liveness: live (current_address_book_code)<br>MinTimeGapHook (alternative) `0xb617bc...532e67` — deployed 2025-10-14 15:19:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view | NavLookbackHook | ambiguous — not counted | NavLookbackHook (alternative) `0xa31fe5...59fa42` — deployed 2025-10-14 15:19:21+03 — liveness: live (current_address_book_code)<br>NavLookbackHook (alternative) `0x4c0be1...6b427b` — deployed 2025-09-23 18:09:19+03 — liveness: live (current_address_book_code)<br>NavLookbackHook (alternative) `0x9717e1...756f8b` — deployed 2025-09-09 20:39:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view | DestinationVault | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1CcKw0ig7eBXV6q8jNjuvOFdEF_ozh_ZE/view | BridgedLSTCalculator | ambiguous — not counted | BridgedLSTCalculator (alternative) `0xb081af...1cbdb0` — deployed 2024-10-18 19:43:49+03 — liveness: live (current_address_book_code)<br>BridgedLSTCalculator (alternative) `0xbaf2ee...04e1a7` — deployed 2024-10-18 19:44:55+03 — liveness: live (current_address_book_code)<br>BridgedLSTCalculator (alternative) `0xa80b38...892934` — deployed 2024-10-22 17:46:49+03 — liveness: live (current_address_book_code)<br>BridgedLSTCalculator (alternative) `0x4cb4b1...a64f99` — deployed 2024-10-18 19:42:59+03 — liveness: live (current_address_book_code)<br>BridgedLSTCalculator (alternative) `0xb51829...1fa9ea` — deployed 2024-10-18 19:43:27+03 — liveness: live (current_address_book_code)<br>BridgedLSTCalculator (alternative) `0x58897e...17943e` — deployed 2024-10-22 17:47:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/1CcKw0ig7eBXV6q8jNjuvOFdEF_ozh_ZE/view | AerodromeAdapter | unmatched — not counted | — | listed in scope and finding toke2-5 | no |
| drive.google.com/file/d/1CcKw0ig7eBXV6q8jNjuvOFdEF_ozh_ZE/view | AutopoolETHStrategyConfig | unmatched — not counted | — | listed in scope and finding toke2-2 | no |
| drive.google.com/file/d/1CcKw0ig7eBXV6q8jNjuvOFdEF_ozh_ZE/view | AerodromeStakingIncentiveCalculator | ambiguous — not counted | AerodromeStakingIncentiveCalculator (alternative) `0xe923f8...425318` — deployed 2024-11-12 19:57:07+03 — liveness: live (current_address_book_code)<br>AerodromeStakingIncentiveCalculator (alternative) `0x9813e3...89f3e3` — deployed 2024-11-12 19:57:07+03 — liveness: live (current_address_book_code)<br>AerodromeStakingIncentiveCalculator (alternative) `0xd675d8...c2e76b` — deployed 2024-10-22 23:20:17+03 — liveness: live (current_address_book_code)<br>AerodromeStakingIncentiveCalculator (alternative) `0xeaa026...1ac028` — deployed 2024-11-12 19:57:07+03 — liveness: live (current_address_book_code)<br>AerodromeStakingIncentiveCalculator (alternative) `0xc8756b...e6ef01` — deployed 2024-10-22 23:18:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/1CcKw0ig7eBXV6q8jNjuvOFdEF_ozh_ZE/view | EzethLRTCalculator | ambiguous — not counted | EzethLRTCalculator (alternative) `0xa84cc1...b263d9` — deployed 2024-08-31 15:50:59+03 — liveness: live (current_address_book_code)<br>EzethLRTCalculator (alternative) `0xe3e731...25b459` — deployed 2024-08-31 15:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Zhba6TjCgu4jzvAQ_Tokemak-CertoraAuditReport.pdf | LMPStrategy | unmatched — not counted | — | listed in scope | no |
| Report.md | LMPStrategy | unmatched — not counted | — | listed in scope | no |
| Report.md | LMPStrategyConfig | unmatched — not counted | — | listed in scope | no |
| Report.md | NavTracking | unmatched — not counted | — | listed in scope | no |
| Report.md | ViolationTracking | unmatched — not counted | — | listed in scope | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | LMPVaultRouterBase | unmatched — not counted | — | Listed in scope and findings (HAL-01, HAL-08) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | LMPVault | unmatched — not counted | — | Listed in scope and findings (HAL-04, HAL-06, HAL-12, HAL-13, HAL-17) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | AbstractRewarder | unmatched — not counted | — | Listed in scope and findings (HAL-02) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | DestinationVault | unmatched — not counted | — | Listed in scope and findings (HAL-03, HAL-20) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | LiquidationRow | ambiguous — not counted | LiquidationRow (alternative) `0x610ffe...3e3ab5` — deployed 2025-09-09 16:26:10+03 — liveness: live (code_present_context)<br>LiquidationRow (proxy) (alternative) `0xbf5881...470ff5` — deployed 2024-09-12 20:02:59+03 — liveness: live (current_address_book_code)<br>LiquidationRow (alternative) `0xe2f00b...881d4f` — deployed 2024-11-05 21:39:59+03 — liveness: live (code_present_context)<br>LiquidationRow (alternative) `0xc33238...f05b3c` — deployed 2025-10-10 13:48:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | AsyncSwapper | unmatched — not counted | — | Listed in scope and findings (HAL-05) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | IncentivePricingStats | ambiguous — not counted | IncentivePricingStats (alternative) `0xf28213...48090d` — deployed 2024-10-17 17:34:55+03 — liveness: live (current_address_book_code)<br>IncentivePricingStats (alternative) `0x8607ba...85f862` — deployed 2024-08-30 05:35:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | PeripheryPayments | unmatched — not counted | — | Listed in scope and findings (HAL-08) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | ConvexRewardsAdapter | unmatched — not counted | — | Listed in scope and findings (HAL-09) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | TellorOracle | unmatched — not counted | — | Listed in scope and findings (HAL-11) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | GPToke | unmatched — not counted | — | Listed in scope and findings (HAL-14) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | LMPVaultRegistry | unmatched — not counted | — | Listed in scope and findings (HAL-16) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | MainRewarder | unmatched — not counted | — | Listed in scope and findings (HAL-17) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | ExtraRewarder | ambiguous — not counted | ExtraRewarder (alternative) `0x23e9bb...7fec38` — deployed 2025-07-29 18:56:59+03 — liveness: live (current_address_book_code)<br>ExtraRewarder (alternative) `0x17c50b...022975` — deployed 2025-05-28 21:10:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | SfrxEthEthOracle | unmatched — not counted | — | Listed in scope and findings (HAL-18) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | EthPeggedOracle | unmatched — not counted | — | Listed in scope and findings (HAL-19) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | MavEthOracle | unmatched — not counted | — | Listed in scope and findings (HAL-21) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | CurveV1StableEthOracle | unmatched — not counted | — | Listed in scope and findings (HAL-22, HAL-26, HAL-27) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | SystemRegistry | own contract | SystemRegistry (selected) `0x2218f9...aa4285` — deployed 2024-08-30 05:28:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | BalancerAuraDestinationVault | ambiguous — not counted | BalancerAuraDestinationVault (alternative) `0xb3723e...8500e0` — deployed 2024-11-06 00:35:49+03 — liveness: live (current_address_book_code)<br>BalancerAuraDestinationVault (alternative) `0x5a4b54...8a4f4d` — deployed 2024-10-08 06:20:11+03 — liveness: live (current_address_book_code)<br>BalancerAuraDestinationVault (alternative) `0x867991...70717e` — deployed 2024-10-08 06:11:11+03 — liveness: live (current_address_book_code)<br>BalancerAuraDestinationVault (alternative) `0x2f2cc1...6dac3d` — deployed 2024-10-08 06:21:11+03 — liveness: live (current_address_book_code)<br>BalancerAuraDestinationVault (alternative) `0xfda499...33e94b` — deployed 2024-10-08 06:19:59+03 — liveness: live (current_address_book_code)<br>BalancerAuraDestinationVault (alternative) `0xa6efb9...48dd5d` — deployed 2024-11-06 00:35:41+03 — liveness: live (current_address_book_code)<br>BalancerAuraDestinationVault (alternative) `0xc9b5d8...dd751c` — deployed 2024-10-08 06:21:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | LMPStrategy | unmatched — not counted | — | Listed in scope and findings (HAL-25) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | CurveV1ConvexStatsCalculator | unmatched — not counted | — | Listed in scope (excluded from scope but mentioned in findings) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | StatsCalculatorRegistry | unmatched — not counted | — | Listed in scope and findings (HAL-25) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | CurveV2CryptoEthOracle | unmatched — not counted | — | Listed in scope and findings (HAL-22) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/auBJzmmsZIR0afW4AD7c/Tokemak_V2_Smart_Contract_Formal_Verification_Report_Halborn_Draft.pdf | LMPVault | unmatched — not counted | — | listed in scope | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/auBJzmmsZIR0afW4AD7c/Tokemak_V2_Smart_Contract_Formal_Verification_Report_Halborn_Draft.pdf | LMPDebt | unmatched — not counted | — | listed in scope | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/auBJzmmsZIR0afW4AD7c/Tokemak_V2_Smart_Contract_Formal_Verification_Report_Halborn_Draft.pdf | DestinationVault | unmatched — not counted | — | listed in scope (note: file path mismatch but contract name as given) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/auBJzmmsZIR0afW4AD7c/Tokemak_V2_Smart_Contract_Formal_Verification_Report_Halborn_Draft.pdf | LMPDestinations | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1rE-u847zxv49vShADpMhgVIE1cYvZujG/view | AccToke | unmatched — not counted | — | listed in scope section | no |
| drive.google.com/file/d/1rE-u847zxv49vShADpMhgVIE1cYvZujG/view | Staking | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x0a2b94...114e56` | AutopoolETH | core_logic | $7,829,183.81 | Verified native implementation with $7,829,183.81 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x60882d...d1755e` | AutopoolMainRewarder | core_logic | $7,272,363.22 | Verified native implementation with $7,272,363.22 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4103a4...630595` | AutopoolMainRewarder | core_logic | $5,945,373.41 | Verified native implementation with $5,945,373.41 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x726104...b6c27b` | AutopoolMainRewarder | core_logic | $4,445,740.53 | Verified native implementation with $4,445,740.53 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x40454f...aa2f74` | FluidDestinationVault | core_logic | $821,430.69 | Verified native implementation with $821,430.69 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf6cc56...b09540` | AutopoolMainRewarder | core_logic | $759,841.65 | Verified native implementation with $759,841.65 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xaadf01...6e0404` | AutopoolETH | core_logic | $202,384.01 | Verified native implementation with $202,384.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x69a63d...3e0522` | AutopoolMainRewarder | core_logic | $58,577.59 | Verified native implementation with $58,577.59 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x116b3e...bf8f3e` | ERC20DestinationVault | core_logic | $52,043.38 | Verified native implementation with $52,043.38 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x03825c...c5bf0d` | AutopoolMainRewarder | core_logic | $121.49 | Verified native implementation with $121.49 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe041b3...5456f2` | AutopoolMainRewarder | core_logic | $13.66 | Verified native implementation with $13.66 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x37767c...742df6` | AccessController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x20dfa8...1f27e8` | AccessController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x7ec410...4fd6b2` | AccessController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x58c223...a1ed3e` | AerodromeDestinationVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xdbd149...02c627` | AerodromeDestinationVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb02cb1...57184e` | AerodromeStakingDexCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xcef50b...253985` | AerodromeStakingDexCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9813e3...89f3e3` | AerodromeStakingIncentiveCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc8756b...e6ef01` | AerodromeStakingIncentiveCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2bb11c...ca44a5` | AerodromeSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb6ab7a...e5940f` | ArraysConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x73526d...9c0b75` | AsyncSwapperRegistry | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x3750d3...577472` | AsyncSwapperRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb45bd0...bfabba` | AsyncSwapperRegistry | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x46e9c8...7468ca` | AsyncSwapperRegistry | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x041679...74ea07` | AuraCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x594baa...12898a` | AuraCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x7c4b58...13c539` | AuraL2Calculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x925492...4b62f3` | AuraL2Calculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x39ff6d...0835a2` | AutopilotRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa18b89...606931` | AutopilotRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0xc84883...91f27a` | AutopilotRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x27a9c1...7621ad` | AutopilotRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf90bb2...367281` | AutopoolETH | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2ab4a3...6efdf9` | AutopoolETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0xd0cf0c...cc5821` | AutopoolETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x12db19...ff66c3` | AutopoolETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xc9db15...195e7b` | AutopoolETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x63139f...1428c8` | AutopoolETHStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xea7daf...ae2bd9` | AutopoolETHStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb111c5...c2d9b0` | AutopoolETHStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7fed74...d2ed1f` | AutopoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x78a7c4...898451` | AutopoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf59086...26e716` | AutopoolMainRewarder | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7e5828...2964e4` | AutopoolRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4fe791...b1fece` | AutopoolRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc3b8f5...c9d268` | AutopoolRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x620152...5ea3f2` | BalancerV2Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1cde65...4647be` | BankSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbf5881...470ff5` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x18f9f3...c00df8` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4423cb...450ceb` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x45bce6...3949fb` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4660a1...34f58d` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x621091...45deba` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x9f42f5...4f4ed5` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa2217d...69b478` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xadb96b...49f858` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc54e00...4717ad` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xcaf5b3...41bcad` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x25be90...498fd1` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x2844a0...6a26d8` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x422071...73cd1a` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xd00c62...1424bb` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x86abaa...3308b3` | BlockchainInfo | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4cb4b1...a64f99` | BridgedLSTCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x58897e...17943e` | BridgedLSTCalculator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x24d783...069abb` | CbethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xab78a5...d01e08` | CbethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc3ff90...598323` | DestinationIncentiveChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa698a9...a99402` | DestinationRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa1afc8...095ba1` | DestinationRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x95b5f1...43c58e` | DestinationRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x66b9eb...6e258c` | DestinationRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x37de6f...0ff124` | DestinationVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf34f79...e9abb6` | DestinationVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0xc895bb...5c288a` | DestinationVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd66836...59225a` | DestinationVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x618273...67520f` | DestinationVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3aac1c...e152ae` | DestinationVaultRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xbbbb6e...21735f` | DestinationVaultRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8d75a2...032b4b` | DestinationVaultRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4353e1...1350ba` | EethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa87930...d4a71e` | EethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x47cabf...81ed2f` | ERC4626BackingOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd4580a...0d44ba` | ERC4626RateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5c47f4...905667` | ERC4626RedeemSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x6978f2...b3f5c3` | ERC4626RedeemSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x98a216...0e339a` | ERC4626Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe1a08b...799213` | ERC4626Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x268cbb...161a03` | ERC4626Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x3f962e...acc328` | ERC4626Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdd9251...625a3d` | EthPerTokenSender | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x578317...d68dfe` | EthPerTokenStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2757f5...5b0c55` | ETHxLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6d3c5f...78334c` | ETHxLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x398417...d80085` | EulerDestinationVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc32572...ea15a8` | EulerDestinationVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x17c50b...022975` | ExtraRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x23e9bb...7fec38` | ExtraRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa84cc1...b263d9` | EzethLRTCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe3e731...25b459` | EzethLRTCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x371b3c...b29488` | FlashBorrowerSolver | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2b8c97...414127` | FluidDestinationVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x449a95...787590` | FrxEthLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xad6d0e...18a223` | FrxEthLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1bfcdf...d5be5e` | IncentiveHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8607ba...85f862` | IncentivePricingStats | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf28213...48090d` | IncentivePricingStats | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x146b55...783882` | Lens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xaf05c2...17aa9c` | Lens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x590a31...2fc754` | Lens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0294d7...7b2c8c` | LiquidationExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x34d929...f7ad94` | LiquidationExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4008dd...ceba03` | LiquidationExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe2f00b...881d4f` | LiquidationRow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x610ffe...3e3ab5` | LiquidationRow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0xc91f3b...a4ebc5` | LstPriceHook | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x67ae7b...cafbc0` | LstPriceHook | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x881bb3...3d63d4` | MaxValueSlippageHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6404da...44a402` | MaxValueSlippageHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x71689a...1679d9` | MinTimeGapHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x09d0d6...b50322` | MinTimeGapHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x4c0be1...6b427b` | NavLookbackHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x9717e1...756f8b` | NavLookbackHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4e8ce6...8e9b32` | OneToOneBaseAssetBackingOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3cc439...257b1b` | OsethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb5aa59...25aebb` | OsethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x24864c...25931e` | ProxyLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8a26c7...494e53` | ProxyLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x37c9b7...06296a` | PxEthLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9cb562...972153` | PxEthLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x327966...12267e` | ReceivingRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x038516...90fac1` | RethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x980109...bb84a8` | RethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0xf25bdd...6d124f` | RootPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe84cea...72d97f` | RootPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x114ca0...cefa86` | RsethLRTCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x840a49...4fc210` | RsethLRTCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe861c6...15b90f` | RswethLRTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeedb3d...b6741a` | RswethLRTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x564c39...d23535` | SequencerChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x05abaa...1f23f4` | SequencerChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x537f6e...d97dcc` | SequencerChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0xf68f04...80b335` | SlippageBudgetHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8e9ac2...2d402d` | SlippageBudgetHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x819806...bc917c` | StatsCalculatorFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd82664...8b0a1c` | StatsCalculatorFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x66a466...dbad0c` | StethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaea78e...02cee7` | StethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xac2e82...cad295` | SwapperAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x23783e...b85666` | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0xb4da8d...fbcbe6` | SwapRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x096f44...33e59a` | SwapRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x60e98e...ce3c9e` | SwethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7cbbb3...ac7408` | SwethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x18dc92...371b4e` | SystemRegistryL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbfd8e6...7b4220` | SystemRegistryL2 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x25f26e...a9f980` | SystemRegistryL2 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x027a33...238833` | SystemSecurityL1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0xf8cda9...699834` | SystemSecurityL1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8c58af...8b4006` | SystemSecurityL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe7eeb1...96cf99` | SystemSecurityL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x106a60...73963d` | UniV3Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0915f5...da6e71` | UniV3Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe4fef2...68ca11` | UniV3SwapBase | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc08f39...a917a7` | UpgradeableAutopoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x01890e...744be4` | UpgradeableAutopoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 197 |
| upstream | 47 |
| standard_library | 3 |
| needs_review | 76 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 13 ambiguous, 47 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8
- Match method counts: unique_name=2

Zero-match audit list:

- [11543] drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view
- [11544] drive.google.com/file/d/1CcKw0ig7eBXV6q8jNjuvOFdEF_ozh_ZE/view
- [11545] Zhba6TjCgu4jzvAQ_Tokemak-CertoraAuditReport.pdf
- [11546] Report.md
- [11548] spaces/S0VKxLL6FMLB1onYrDVu/uploads/auBJzmmsZIR0afW4AD7c/Tokemak_V2_Smart_Contract_Formal_Verification_Report_Halborn_Draft.pdf
- [11549] drive.google.com/file/d/1rE-u847zxv49vShADpMhgVIE1cYvZujG/view

Fork inheritance lineage and inherited audits are included when available.
