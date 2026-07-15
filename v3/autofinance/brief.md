# Agentic Audit Brief: AUTOfinance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 8 (2 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: TRANSITIONING - TVL dropped 47.5% over 90 days

## Project Overview

- Project: AUTOfinance (`autofinance`)
- Website: [https://www.auto.finance](https://www.auto.finance)
- Lifecycle: transitioning (Tier 1, transitioning)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, linea, plasma, sepolia, sonic
- Contract surface: 694 unique implementations (1490 raw deployments)
- Coverage basis: 2/225 confirmed own live verified implementations (0.9%); conservative 0.9% with 1 needs-review implementation(s)
- DeFi Llama TVL: $31,903,043.62
- On-chain TVL (included contracts): $110,603,707.78
- TVL by chain: Ethereum $102,815,751.84 | Base $6,206,560.28 | Arbitrum $1,581,272.34 | Linea $123.22 | Plasma $0.10

## Project Description

This brief describes the observed EVM deployment and audit surface for AUTOfinance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 344 contract row(s) across arbitrum, base, ethereum, linea, plasma, sepolia, sonic. Structural roles: 167 core, 115 supporting, 62 unclassified. 136 row(s) use upgradeable patterns.

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

- Logic-topography rows: 344; live-surface rows included: 344 (301 live, 43 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 348/465 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/225 (0.9%)
- Coverage assessment: partial (medium confidence) — Coverage is calculated only over confirmed own address-book implementations; review inventory is reported separately and included in the conservative percentage where live and verified.
- Address-book implementation classification: 272 own, 49 exact-address-book context/dependencies excluded, 1 exact-address-book entries needing review
- Outside the address book: 372 discovered implementations shown in the inventory but excluded from coverage (45 third-party/infra; 5 standard proxy/library)
- Proxy deployments represented within implementation groups: 70
- Confirmed-live implementations: 273 of 694 unique; 421 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/565
- Verified + Unaudited implementations: 561
- Verified by bytecode match: 2
- Unverified implementations: 129
- Unique implementations: 694
- Raw deployments: 1490
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
| Halborn | Tier 2 | 1 | 0.2% | 2023-09 |
| Hexens | Tier 2 | 1 | 0.2% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MessageProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227856 | `0x20ea2f...616f76` | ✅ Audited |
| SystemRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-227857 | `0x2218f9...aa4285` | ✅ Audited |

### ⚠️ Verified + Unaudited (561)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BaseRewardPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x02e215...41d5b3`; ethereum `0x0a7604...e70f03`; ethereum `0x7e2b9b...81ad4a`; ethereum `0x7e8808...717b02`; ethereum `0xb900ef...209b2e`; ethereum `0xf27afa...d669cb` | ⚠️ Unaudited |
| OlympusERC20Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x383518...14a899` | ⚠️ Unaudited |
| AlToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc6da0...3660e9` | ⚠️ Unaudited |
| AutopoolETH | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227845 | 2 deployments: ethereum `0x0a2b94...114e56`; ethereum `0x35911a...cd3e5a` | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227900 | `0x60882d...d1755e` | ⚠️ Unaudited |
| AlchemixToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbdb4d...90c8df` | ⚠️ Unaudited |
| CurveNGConvexDestinationVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227863 | 3 deployments: ethereum `0x2b0813...93eb78`; ethereum `0x3f55ee...edb7f9`; ethereum `0x5c6aeb...d45126` | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | project_anchor | own_supporting | 0 | base | unit-228213 | `0x4103a4...630595` | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227912 | `0x726104...b6c27b` | ⚠️ Unaudited |
| FluidDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228034 | 3 deployments: arbitrum `0x40454f...aa2f74`; arbitrum `0xd70f87...d6c74b`; arbitrum `0xdedb00...d2fb40` | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228140 | `0xf6cc56...b09540` | ⚠️ Unaudited |
| TokenImplementation | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa693b1...ee87a5` | ⚠️ Unaudited |
| EthPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb104a7...8246d5`; ethereum `0xd3d13a...2a2f36` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 21 | ethereum | n/a | 22 deployments: ethereum `0x03dccc...2d360d`; ethereum `0x04bda0...0e860d`; ethereum `0x061aee...b2a7e7`; ethereum `0x0ce34f...fdfb75`; ethereum `0x15a629...b79415`; ethereum `0x1b429e...192fd3`; ethereum `0x2e9f9b...bd4fed`; ethereum `0x2fc6e9...ad22e1`; ethereum `0x41f6a9...b00263`; ethereum `0x482258...e6b03d`; ethereum `0x721150...ad4b4c`; ethereum `0x808d3e...ed5311`; ethereum `0x8858a7...61faa3`; ethereum `0x8d2254...d97832`; ethereum `0x94671a...20efb2`; ethereum `0x9eee9e...9797a3`; ethereum `0xadf15e...81e655`; ethereum `0xd3b5d9...f9aa84`; ethereum `0xd899ac...5fc03e`; ethereum `0xdc0b02...9709b0`; ethereum `0xeff721...ffc8de`; ethereum `0xf49764...629777` | ⚠️ Unaudited |
| DepositToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x117a0b...23560c`; ethereum `0xcb6d87...e7ce74` | ⚠️ Unaudited |
| SiloVaultWrapper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x0e80f6...a47dc6`; ethereum `0x1e308f...58e4d1`; ethereum `0x78910c...3d55cc`; ethereum `0x851c31...779f8e`; ethereum `0xb07168...114f3f`; ethereum `0xb0bb32...3a6af0`; ethereum `0xd065e6...76fe68` | ⚠️ Unaudited |
| AutopoolETH | core_logic | project_anchor | own_supporting | 0 | base | unit-228242 | `0xaadf01...6e0404` | ⚠️ Unaudited |
| TracerToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c4a42...22f050` | ⚠️ Unaudited |
| APWToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x134c05...c8157f`; ethereum `0x4104b1...7660c8` | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | project_anchor | own_supporting | 0 | base | unit-228222 | `0x69a63d...3e0522` | ⚠️ Unaudited |
| ERC20DestinationVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227850 | `0x116b3e...bf8f3e` | ⚠️ Unaudited |
| MYCToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b1300...eaf5ba` | ⚠️ Unaudited |
| ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb9200c...f2070d`; ethereum `0xf93842...72e91e` | ⚠️ Unaudited |
| FlashBorrowerSolver | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 22 deployments: ethereum `0x067cb9...8364ad`; ethereum `0x20d762...5885b9`; ethereum `0x2795b6...3ae6b6`; ethereum `0x76187c...c18d9d`; ethereum `0x7a6119...05e819`; ethereum `0x9491a1...6f3690`; ethereum `0x952d7a...6d2f5d`; ethereum `0x9cf7e7...80433d`; ethereum `0xace0eb...b36704`; ethereum `0xcc97cc...c97919`; ethereum `0xd02b50...15b6f9`; ethereum `0xfbfad8...8349dd`; sonic `0xaf6f21...30e10c`; sonic `0xf5a106...b09ec0`; base `0x044e16...81b776`; base `0x5ae89e...da9e20`; base `0xfbe1ce...b992c1`; base `0xfff192...a3a304`; plasma `0x673f9b...759fbb`; arbitrum `0x3dbbb7...56fce9`; linea `0x796115...e6a9dd`; linea `0xe085d4...d62a03` | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | project_anchor | own_supporting | 0 | linea | unit-228150 | `0x03825c...c5bf0d` | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227978 | `0xe041b3...5456f2` | ⚠️ Unaudited |
| AaveV3StataDestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x588354...940406`; plasma `0x5dffae...602ee7`; plasma `0x714ffc...8ab8e9`; plasma `0xde4d6c...f84855`; plasma `0xfc962a...2e5069` | ⚠️ Unaudited |
| AaveV2Swapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5067e4...faace2` | ⚠️ Unaudited |
| AaveV3StataDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-227997 | `0x00e52a...9c5f4a` | ⚠️ Unaudited |
| AaveV3StataDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228086 | 2 deployments: arbitrum `0xa087e1...e7d7bb`; arbitrum `0xebcff8...864991` | ⚠️ Unaudited |
| AaveV3StataDestinationVault | core_logic | project_anchor | own_supporting | 0 | linea | unit-228163 | 2 deployments: linea `0x68e93d...de15f7`; linea `0xd96d54...57f3fd` | ⚠️ Unaudited |
| AaveV3StataDestinationVault | core_logic | project_anchor | own_supporting | 0 | linea | unit-228180 | `0xbd353d...45e7e2` | ⚠️ Unaudited |
| AaveV3Swapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x91c008...8c95d6`; ethereum `0x9d6616...1f0b44` | ⚠️ Unaudited |
| AccessController | governance | project_anchor | own_supporting | 0 | ethereum | unit-227871 | `0x37767c...742df6` | ⚠️ Unaudited |
| AccessController | unknown | project_anchor | own_supporting | 0 | base | unit-228204 | `0x20dfa8...1f27e8` | ⚠️ Unaudited |
| AccessController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: sonic `0x7ae9ff...0e67f5`; sonic `0xb4b6b1...7b4dbc`; sonic `0xb99357...a5d006`; arbitrum `0x09006e...ca9312`; arbitrum `0xdd5b72...2e00ca` | ⚠️ Unaudited |
| AccessController | governance | project_anchor | own_supporting | 0 | arbitrum | unit-228066 | `0x7ec410...4fd6b2` | ⚠️ Unaudited |
| AccessController | governance | project_anchor | own_supporting | 0 | linea | unit-228194 | `0xf4425c...b76a04` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 26 deployments: linea `0x00cc29...423b67`; linea `0x09aaa5...fbea2a`; linea `0x09d128...fc72a3`; linea `0x0cc5a7...2d666c`; linea `0x0d8ff3...e66422`; linea `0x3fd55d...d6d071`; linea `0x44f551...22f508`; linea `0x51a269...e80006`; linea `0x55cab4...4b40b1`; linea `0x582f3f...031c7a`; linea `0x5aae85...da036b`; linea `0x5e2f4d...e4b4e7`; linea `0x6a0673...1c99c1`; linea `0x7026f9...8dd004`; linea `0x7ac793...8c9026`; linea `0x8af8a0...71b734`; linea `0x8e394f...5b49e1`; linea `0x93948c...4351ed`; linea `0x967a7a...37854c`; linea `0x9ce2fb...709346`; linea `0xb61396...31a7b6`; linea `0xb66d0c...9fd40b`; linea `0xbb100b...008e31`; linea `0xd434fe...06805e`; linea `0xe345ad...ddc6bc`; linea `0xe6d0d3...cb5298` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x683035...8ed5f3` | ⚠️ Unaudited |
| AccToke | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa374a6...7c0972` | ⚠️ Unaudited |
| AccToke | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x0cb44f...5f907b`; sonic `0x822248...99f928` | ⚠️ Unaudited |
| AccToke | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0x65e1f2...03506e`; base `0x2af04a...eed518`; base `0x8a0e61...e6e718`; base `0x999545...8bed8f` | ⚠️ Unaudited |
| AccToke | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x24127a...127e00`; arbitrum `0x7e5828...2964e4` | ⚠️ Unaudited |
| AddressRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2445e2...91e63c`; ethereum `0x28cb0d...f44d45` | ⚠️ Unaudited |
| Admin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bbbd9...0409d9` | ⚠️ Unaudited |
| AerodromeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd35d77...38ea9a` | ⚠️ Unaudited |
| AerodromeDestinationVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20bace...8a8107` | ⚠️ Unaudited |
| AerodromeDestinationVault | core_logic | project_anchor | own_supporting | 0 | base | unit-228221 | 4 deployments: base `0x58c223...a1ed3e`; base `0x945a4f...5835ad`; base `0xa94031...39845a`; base `0xd18db4...e0cdad` | ⚠️ Unaudited |
| AerodromeDestinationVault | unknown | project_anchor | own_supporting | 0 | base | unit-228273 | `0xdbd149...02c627` | ⚠️ Unaudited |
| AerodromeOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228201 | `0x099a7e...8900f4` | ⚠️ Unaudited |
| AerodromeStakingDexCalculator | unknown | project_anchor | own_supporting | 0 | base | unit-228244 | 4 deployments: base `0xb02cb1...57184e`; base `0xc7b711...d2bd10`; base `0xd9b54d...8042e3`; base `0xe40523...a7c240` | ⚠️ Unaudited |
| AerodromeStakingDexCalculator | unknown | project_anchor | own_supporting | 0 | base | unit-228263 | `0xcef50b...253985` | ⚠️ Unaudited |
| AerodromeStakingIncentiveCalculator | unknown | project_anchor | own_supporting | 0 | base | unit-228233 | 4 deployments: base `0x9813e3...89f3e3`; base `0xd675d8...c2e76b`; base `0xe923f8...425318`; base `0xeaa026...1ac028` | ⚠️ Unaudited |
| AerodromeStakingIncentiveCalculator | unknown | project_anchor | own_supporting | 0 | base | unit-228261 | `0xc8756b...e6ef01` | ⚠️ Unaudited |
| AerodromeSwap | unknown | project_anchor | own_supporting | 0 | base | unit-228209 | `0x2bb11c...ca44a5` | ⚠️ Unaudited |
| AerodromeSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7785f0...13d003` | ⚠️ Unaudited |
| aOHMMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x906d7a...ad8fd2`; ethereum `0xb1b462...d6ce87`; ethereum `0xc7f56e...97db3d`; ethereum `0xf31b98...7dd23c` | ⚠️ Unaudited |
| APWRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0db15...6fc336` | ⚠️ Unaudited |
| ArraysConverter | unknown | project_anchor | own_core | 0 | plasma | n/a | 4 deployments: sonic `0xb93c19...dae2f2`; plasma `0x097080...c5d0c2`; arbitrum `0xb6ab7a...e5940f`; linea `0x341421...5480a8` | ⚠️ Unaudited |
| AsyncSwapperRegistry | adapter | project_anchor | own_supporting | 0 | ethereum | unit-227913 | `0x73526d...9c0b75` | ⚠️ Unaudited |
| AsyncSwapperRegistry | unknown | project_anchor | own_supporting | 0 | base | unit-228212 | `0x3750d3...577472` | ⚠️ Unaudited |
| AsyncSwapperRegistry | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: sonic `0x330f3c...cdaa93`; sonic `0xacffb6...56a814`; sonic `0xd527f2...3fd120`; arbitrum `0x29d826...1c9f2b`; arbitrum `0xea7ea3...34f538` | ⚠️ Unaudited |
| AsyncSwapperRegistry | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228096 | `0xb45bd0...bfabba` | ⚠️ Unaudited |
| AsyncSwapperRegistry | adapter | project_anchor | own_supporting | 0 | linea | unit-228160 | `0x46e9c8...7468ca` | ⚠️ Unaudited |
| AuraCalculator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227843 | 12 deployments: ethereum `0x041679...74ea07`; ethereum `0x0f5d9c...65acad`; ethereum `0x4e4eb5...c48348`; ethereum `0x4ead64...eb43ea`; ethereum `0x596866...b2cc43`; ethereum `0x5ac9dc...9d7f40`; ethereum `0x662e3f...9b018b`; ethereum `0xa4349b...08f3a0`; ethereum `0xacdc4a...05829d`; ethereum `0xb57e41...fb6621`; ethereum `0xd09bde...e59c71`; ethereum `0xddfd0a...9d84b2` | ⚠️ Unaudited |
| AuraCalculator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227894 | `0x594baa...12898a` | ⚠️ Unaudited |
| AuraL2Calculator | unknown | project_anchor | own_supporting | 0 | base | unit-228224 | 3 deployments: base `0x7c4b58...13c539`; base `0xb9e981...02b6e8`; base `0xc5a917...7654d4` | ⚠️ Unaudited |
| AuraL2Calculator | unknown | project_anchor | own_supporting | 0 | base | unit-228230 | `0x925492...4b62f3` | ⚠️ Unaudited |
| AuraMintRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe35a6f...77c20d` | ⚠️ Unaudited |
| AuraRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 3 deployments: plasma `0x87b740...5b7b7a`; arbitrum `0xa9219c...440e8b`; linea `0x786dce...9aeba7` | ⚠️ Unaudited |
| AuraStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: plasma `0x3a0f16...1df466`; arbitrum `0x17dd20...440344`; arbitrum `0x887060...ac0408`; linea `0x727084...433188` | ⚠️ Unaudited |
| AutomatedFeeNotifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 8 deployments: linea `0x2e5c9e...7c10df`; linea `0x4bc655...6cb1f3`; linea `0x4dd0c2...ea2a4c`; linea `0x5ad9ec...b0e48c`; linea `0xb0b55d...af5939`; linea `0xbf0743...780d36`; linea `0xd7cb73...81ac2c`; linea `0xfd29fa...cf80e7` | ⚠️ Unaudited |
| AutopilotRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x37dd40...e8ae21` | ⚠️ Unaudited |
| AutopilotRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-227874 | `0x39ff6d...0835a2` | ⚠️ Unaudited |
| AutopilotRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc45e93...084c30` | ⚠️ Unaudited |
| AutopilotRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 9 deployments: ethereum `0xc23a37...ea893e`; sonic `0x298c60...cb7def`; sonic `0x396daf...e2dcce`; sonic `0xeb419f...fddd64`; sonic `0xf25c74...0ea85a`; base `0x71761b...85f816`; base `0x93e7c5...5adcbd`; arbitrum `0x643186...036487`; arbitrum `0xf86761...70b140` | ⚠️ Unaudited |
| AutopilotRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x4d2b87...40f8df` | ⚠️ Unaudited |
| AutopilotRouter | unknown | project_anchor | own_supporting | 0 | base | unit-228237 | `0xa18b89...606931` | ⚠️ Unaudited |
| AutopilotRouter | adapter | project_anchor | own_supporting | 0 | plasma | unit-228302 | `0xc84883...91f27a` | ⚠️ Unaudited |
| AutopilotRouter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228024 | `0x27a9c1...7621ad` | ⚠️ Unaudited |
| AutopilotRouter | adapter | project_anchor | own_supporting | 1 | linea | unit-228311 | `0xf61e75...990544` | ⚠️ Unaudited |
| Autopool4626 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0fe851...a81159`; base `0x6d9be4...a2213f`; plasma `0x4480bc...a9109b`; arbitrum `0xc80e12...159416`; linea `0x299c64...642108` | ⚠️ Unaudited |
| AutopoolDebt | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 5 deployments: ethereum `0xf792a3...715b8b`; base `0xfaac11...57c194`; plasma `0x153993...c780a9`; arbitrum `0x752004...c638ce`; linea `0xcd1e36...51b6c7` | ⚠️ Unaudited |
| AutopoolDestinations | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 5 deployments: ethereum `0x4d08d4...ae53f1`; base `0xd931d7...acdf09`; plasma `0x12d0df...49651a`; arbitrum `0xbf35cc...b9c4ef`; linea `0x48dfb2...e8ba01` | ⚠️ Unaudited |
| AutopoolETH | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227991 | `0xf90bb2...367281` | ⚠️ Unaudited |
| AutopoolETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 21 deployments: ethereum `0x1c2aa6...7c821a`; ethereum `0x1da0b3...691e61`; ethereum `0x558d67...61ef7a`; ethereum `0x824b39...439c66`; ethereum `0xa1f351...b50dc1`; ethereum `0xb0a44f...3f428a`; ethereum `0xcc1af2...49c1ea`; ethereum `0xd4ba03...870568`; ethereum `0xfb2ebd...ad0695`; sonic `0x0591c1...74eb4d`; sonic `0x67da05...31fe06`; sonic `0x84c8c1...2fd55e`; sonic `0x9075ec...187c2f`; sonic `0xfe0663...7aa92e`; base `0x375c79...f87235`; base `0x40ed41...45d381`; base `0x6e2cb0...caf85c`; base `0xc6bc14...985ef1`; arbitrum `0xa1ecbb...768510`; arbitrum `0xdeb9a2...d4e0ee`; linea `0x60a9b4...9ec01c` | ⚠️ Unaudited |
| AutopoolETH | unknown | project_anchor | own_supporting | 0 | base | unit-228208 | `0x2ab4a3...6efdf9` | ⚠️ Unaudited |
| AutopoolETH | unknown | project_anchor | own_supporting | 0 | plasma | unit-228305 | `0xd0cf0c...cc5821` | ⚠️ Unaudited |
| AutopoolETH | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228011 | `0x12db19...ff66c3` | ⚠️ Unaudited |
| AutopoolETH | unknown | project_anchor | own_supporting | 0 | linea | unit-228184 | `0xc9db15...195e7b` | ⚠️ Unaudited |
| AutopoolETHStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ac1e0...8e9275` | ⚠️ Unaudited |
| AutopoolETHStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227904 | `0x63139f...1428c8` | ⚠️ Unaudited |
| AutopoolETHStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227983 | `0xea7daf...ae2bd9` | ⚠️ Unaudited |
| AutopoolETHStrategy | unknown | project_anchor | own_supporting | 0 | base | unit-228246 | `0xb111c5...c2d9b0` | ⚠️ Unaudited |
| AutopoolFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-227920 | `0x7fed74...d2ed1f` | ⚠️ Unaudited |
| AutopoolFactory | unknown | project_anchor | own_supporting | 0 | base | unit-228223 | `0x78a7c4...898451` | ⚠️ Unaudited |
| AutopoolFees | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0x06958d...32cfc2`; base `0x05e14b...372c45`; plasma `0x852212...dbafff`; arbitrum `0x8350c5...09b11e`; linea `0x4edb7c...5e2c64` | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227988 | `0xf59086...26e716` | ⚠️ Unaudited |
| AutopoolRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-227919 | `0x7e5828...2964e4` | ⚠️ Unaudited |
| AutopoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x3a3f3b...fed0af`; sonic `0x43c35d...354658`; sonic `0x63e8e5...e8c253`; arbitrum `0xef4e7d...2ccc48`; arbitrum `0xfbf87c...e352ca` | ⚠️ Unaudited |
| AutopoolRegistry | unknown | project_anchor | own_supporting | 0 | base | unit-228217 | `0x4fe791...b1fece` | ⚠️ Unaudited |
| AutopoolRegistry | registry | project_anchor | own_supporting | 0 | arbitrum | unit-228107 | `0xc3b8f5...c9d268` | ⚠️ Unaudited |
| AutopoolRegistry | registry | project_anchor | own_supporting | 0 | linea | unit-228193 | `0xf25f61...d5f42c` | ⚠️ Unaudited |
| AutopoolStrategyHooks | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0x2b0b9b...be77fc`; base `0x1d39bf...89f876`; plasma `0x337dd2...4dbccd`; arbitrum `0x33ff76...04e1b1`; linea `0x70b429...d63fc0` | ⚠️ Unaudited |
| AutopoolToken | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 5 deployments: ethereum `0x3161b8...79c9e4`; base `0xff0d0b...b1739f`; plasma `0x2afc63...4f4da5`; arbitrum `0x73c064...f10104`; linea `0x3f37bc...6ba37b` | ⚠️ Unaudited |
| BackingRootOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: ethereum `0xb12206...87cfbf`; sonic `0x05a7de...75a1d6`; base `0x391fa5...f6b439`; plasma `0x0fda04...af0532`; arbitrum `0x3aac1c...e152ae` | ⚠️ Unaudited |
| BalancerAdapter | adapter | project_anchor | own_integration_wrapper | 0 | plasma | n/a | 2 deployments: plasma `0x35cbe9...331866`; arbitrum `0xb0c974...57702f` | ⚠️ Unaudited |
| BalancerAuraDestinationVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227865 | 5 deployments: ethereum `0x2f2cc1...6dac3d`; ethereum `0x5a4b54...8a4f4d`; ethereum `0x867991...70717e`; ethereum `0xc9b5d8...dd751c`; ethereum `0xfda499...33e94b` | ⚠️ Unaudited |
| BalancerAuraDestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x400aa2...6180f7`; ethereum `0x5f1349...55a4d8`; ethereum `0xc066dd...3efaf5` | ⚠️ Unaudited |
| BalancerAuraDestinationVault | core_logic | project_anchor | own_supporting | 0 | base | unit-228239 | 2 deployments: base `0xa6efb9...48dd5d`; base `0xb3723e...8500e0` | ⚠️ Unaudited |
| BalancerComposableStablePoolCalculator | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227846 | 9 deployments: ethereum `0x0e2b75...e39be4`; ethereum `0x2df5d9...ab0981`; ethereum `0x4c4d65...3a1970`; ethereum `0x4e7986...bd70e0`; ethereum `0x63b0ac...832ae9`; ethereum `0xa639d9...95193c`; ethereum `0xab0b54...27f9a5`; ethereum `0xadf54e...2dd5a6`; ethereum `0xb5652e...ea6866` | ⚠️ Unaudited |
| BalancerComposableStablePoolCalculator | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbd7fa...66186b` | ⚠️ Unaudited |
| BalancerComposableStablePoolCalculator | core_logic | project_anchor | own_supporting | 0 | base | unit-228216 | 2 deployments: base `0x4fc45f...0002a9`; base `0x800f53...4820b3` | ⚠️ Unaudited |
| BalancerDestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc0927...d9fb6c` | ⚠️ Unaudited |
| BalancerGyroPoolCalculator | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227929 | 2 deployments: ethereum `0x943673...13e9d2`; ethereum `0xa9b8e4...5702ab` | ⚠️ Unaudited |
| BalancerGyroPoolCalculator | core_logic | project_anchor | own_supporting | 0 | base | unit-228236 | `0x9d95e1...e39e33` | ⚠️ Unaudited |
| BalancerGyroscopeDestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aa9ea...0decc6` | ⚠️ Unaudited |
| BalancerGyroscopeDestinationVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227928 | 2 deployments: ethereum `0x92294a...61bad7`; ethereum `0xa1b929...a29d05` | ⚠️ Unaudited |
| BalancerGyroscopeDestinationVault | core_logic | project_anchor | own_supporting | 0 | base | unit-228256 | `0xbd137c...84f59c` | ⚠️ Unaudited |
| BalancerMetaStablePoolCalculator | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227908 | `0x66664b...9a59a4` | ⚠️ Unaudited |
| BalancerV2ComposableStableMathOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228122 | `0xddc9e4...7ab47c` | ⚠️ Unaudited |
| BalancerV2Swap | unknown | project_anchor | own_supporting | 1 | ethereum | unit-228309 | 2 deployments: ethereum `0x620152...5ea3f2`; ethereum `0x780d5b...4ba5f1` | ⚠️ Unaudited |
| BalancerV2Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2e329...099b2d` | ⚠️ Unaudited |
| BalancerV2Swap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228062 | `0x6def5e...13f311` | ⚠️ Unaudited |
| BalancerV3Adapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2b91e3...eca587`; ethereum `0x39de7c...40ab27`; ethereum `0x9c8d18...82ec0a` | ⚠️ Unaudited |
| BalancerV3Adapter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228017 | `0x19fa89...c1a620` | ⚠️ Unaudited |
| BalancerV3AuraDestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34d81f...d3dc7d` | ⚠️ Unaudited |
| BalancerV3AuraDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228110 | `0xc77161...d536c0` | ⚠️ Unaudited |
| BalancerV3AuraDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228114 | `0xce1c82...aec809` | ⚠️ Unaudited |
| BalancerV3BatchSwap | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x62e8bb...c5814e`; plasma `0x6de328...729033` | ⚠️ Unaudited |
| BalancerV3BatchSwap | periphery | project_anchor | own_supporting | 0 | arbitrum | unit-228102 | `0xbd6beb...4c741b` | ⚠️ Unaudited |
| BalancerV3DestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xb42c35...0aae84` | ⚠️ Unaudited |
| BalancerV3GaugeDestinationVault | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x4b021f...2f212a`; ethereum `0x684424...6727eb`; ethereum `0x77a541...7d3350`; ethereum `0x947bed...83135e`; ethereum `0xb22242...e6aaab` | ⚠️ Unaudited |
| BalancerV3MerklDestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 4 deployments: plasma `0x28c3b8...354ad3`; plasma `0x28ed66...26badb`; plasma `0xc253ef...e8ffdc`; plasma `0xd94ec2...2649f9` | ⚠️ Unaudited |
| BalancerV3SingleSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xf59adc...919d3f` | ⚠️ Unaudited |
| BalancerV3StableMathOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1140cd...e8421b`; ethereum `0x792587...0651fe`; plasma `0xff9059...6ca748` | ⚠️ Unaudited |
| BalancerV3StableMathOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228083 | `0x990957...2e54d2` | ⚠️ Unaudited |
| BalancerV3StablePoolCalculator | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe18c81...9e4184` | ⚠️ Unaudited |
| BankSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0xf3b137...8afc8e`; sonic `0xfbaa0e...d8b4ba` | ⚠️ Unaudited |
| BankSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x822b13...4d9077`; base `0xa196b8...f6dfad`; plasma `0xce618f...afbc90` | ⚠️ Unaudited |
| BankSwapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228021 | `0x1cde65...4647be` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 1 | ethereum | unit-228310 | 2 deployments: ethereum `0x8821a5...7cf6b8`; ethereum `0xbf5881...470ff5` | ⚠️ Unaudited |
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
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | linea | n/a | 55 deployments: ethereum `0x0ab823...6bc18b`; ethereum `0x1d549b...3b4a7f`; ethereum `0x216400...4ab9c5`; ethereum `0x2eab67...8bd678`; ethereum `0x38a3e8...a3b303`; ethereum `0x5a3512...696216`; ethereum `0x865285...fae79b`; ethereum `0x8bf1a0...593ef2`; ethereum `0x8ea340...16b859`; ethereum `0x957243...8f5192`; ethereum `0x9e2919...47a94a`; ethereum `0xa59477...2d6aba`; ethereum `0xbd9e1c...dd6db9`; ethereum `0xc15bd0...b2cbae`; ethereum `0xcaab99...7c08e1`; ethereum `0xd24d8a...f565e9`; sonic `0x394d48...d1ef25`; sonic `0x4d8145...dc503e`; sonic `0x618e00...ec164b`; sonic `0x6d13db...f345b2`; sonic `0x971e93...7456da`; sonic `0x98b55e...9c9502`; base `0x10fad2...ac5c6d`; base `0x115f7d...15d6d6`; base `0x3f8113...2761c5`; base `0x5e753e...1f350f`; base `0x82e986...bb67f0`; base `0x891dcd...45c05c`; base `0xdd6b15...93cb76`; base `0xe9498c...8dfb69`; plasma `0x09c6ac...3e527f`; plasma `0x23eed2...8c0731`; plasma `0x2fc77f...6cd469`; plasma `0x835bee...52f40e`; arbitrum `0x0f23b8...05efe3`; arbitrum `0x2d534d...56b01c`; arbitrum `0x44ec47...1fcb1d`; arbitrum `0x4ca6e6...4a3b4b`; arbitrum `0x7d6509...eb5482`; arbitrum `0x835f03...991299`; arbitrum `0xb8167e...10de65`; arbitrum `0xbbb989...41c3dc`; linea `0x0288ef...246b19`; linea `0x1b1b70...7b3a0e`; linea `0x1b9725...b9b3c9`; linea `0x27ff73...ee0a9e`; linea `0x422071...73cd1a`; linea `0x603b27...6251e6`; linea `0x843674...1032ec`; linea `0x997aa8...ac5d8b`; linea `0xc6f521...38dd8c`; linea `0xce131a...5f0ff2`; linea `0xdeabed...e0fb4a`; linea `0xe16d83...6ae856`; linea `0xf8c4eb...7913e6` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | linea | unit-228152 | `0x25be90...498fd1` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | linea | unit-228155 | 2 deployments: linea `0x2844a0...6a26d8`; linea `0xd00c62...1424bb` | ⚠️ Unaudited |
| BebopSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x117c65...a210fd`; ethereum `0x39dd8e...a57329`; ethereum `0x69543c...96e142`; ethereum `0xcd478d...a75ff3`; base `0x3f18d0...8c5785` | ⚠️ Unaudited |
| BlockchainInfo | periphery | project_anchor | own_core | 0 | linea | n/a | 5 deployments: sonic `0xf1e608...87aeba`; base `0xa628e8...740e1e`; plasma `0x88ccc2...48d171`; arbitrum `0x86abaa...3308b3`; linea `0x218975...7a76f2` | ⚠️ Unaudited |
| BridgedLSTCalculator | unknown | project_anchor | own_supporting | 0 | base | unit-228214 | `0x4cb4b1...a64f99` | ⚠️ Unaudited |
| BridgedLSTCalculator | operational_periphery | project_anchor | own_supporting | 0 | base | unit-228220 | 5 deployments: base `0x58897e...17943e`; base `0xa80b38...892934`; base `0xb081af...1cbdb0`; base `0xb51829...1fa9ea`; base `0xbaf2ee...04e1a7` | ⚠️ Unaudited |
| BridgedStats | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x01dd80...0d9231`; base `0x054322...02b2c2` | ⚠️ Unaudited |
| Bytes32 | unknown | project_anchor | own_supporting | 0 | plasma | n/a | 4 deployments: sonic `0x8737f9...8dcef2`; plasma `0x12d5aa...48b970`; arbitrum `0x5f317e...8f520e`; linea `0xe8905b...6f0459` | ⚠️ Unaudited |
| CbethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227861 | `0x24d783...069abb` | ⚠️ Unaudited |
| CbethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227946 | `0xab78a5...d01e08` | ⚠️ Unaudited |
| CErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 4 deployments: ethereum `0xa37811...1541dc`; ethereum `0xb21ebf...129ae8`; ethereum `0xdb55e5...25d4ba`; ethereum `0xeac275...f6d8d5` | ⚠️ Unaudited |
| CErc20Delegator | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x714e6c...92f09f` | ⚠️ Unaudited |
| ChainlinkEthPerTokenSenderUpkeep | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1d0b1e...364ec6`; ethereum `0x235c47...407499` | ⚠️ Unaudited |
| ChainlinkIncentivePricesUpkeepV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8d4e7...b2a39e` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227911 | `0x701f11...1b6c3f` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228259 | `0xc7939c...11641c` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x0d0314...39c689` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228100 | `0xbbcc2d...628433` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-228169 | `0x969954...189950` | ⚠️ Unaudited |
| ChainlinkStatsUpkeepV4 | unknown | project_anchor | own_core | 0 | ethereum | n/a | 4 deployments: ethereum `0x1a63df...ecdf4f`; ethereum `0x691350...679262`; ethereum `0x7d6582...b8c497`; base `0x30f285...27c637` | ⚠️ Unaudited |
| CommunalFarm_SaddleD4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x063907...4a5ca5` | ⚠️ Unaudited |
| ConvexCalculator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227868 | 7 deployments: ethereum `0x355f39...13de91`; ethereum `0x4bbfa1...332276`; ethereum `0x74c3b0...269ab7`; ethereum `0x83b694...301d7a`; ethereum `0xbfdf3a...163841`; ethereum `0xf25b36...45eac3`; ethereum `0xf7370f...4ba9d7` | ⚠️ Unaudited |
| ConvexController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40ce07...8d7446` | ⚠️ Unaudited |
| ConvexMintRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf422c4...1c25a5` | ⚠️ Unaudited |
| Curve3PoolSwap | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a46e3...cfeb78` | ⚠️ Unaudited |
| CurveAdapter | adapter | project_anchor | own_integration_wrapper | 0 | arbitrum | unit-228113 | 2 deployments: plasma `0xf70c47...e86e3a`; arbitrum `0xcb9597...30af70` | ⚠️ Unaudited |
| CurveController2 | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x941f10...44ca1d`; ethereum `0xe301a3...95849d` | ⚠️ Unaudited |
| CurveController3 | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x800df6...d9f5e6`; ethereum `0xdf9c66...aa30b8` | ⚠️ Unaudited |
| CurveController4 | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37a9be...b08649` | ⚠️ Unaudited |
| CurveControllerETH | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fe608...a569d2` | ⚠️ Unaudited |
| CurveConvexDestinationVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227869 | `0x356c79...6c3e77` | ⚠️ Unaudited |
| CurveConvexDestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd78860...be3631` | ⚠️ Unaudited |
| CurveConvexDestinationVaultV2 | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227840 | 8 deployments: ethereum `0x0091fe...6758cb`; ethereum `0x23032a...4e9d8c`; ethereum `0x2fa4c8...d9b171`; ethereum `0x737f2e...7f004b`; ethereum `0x88d0e0...f90ab0`; ethereum `0x9828b1...fb37f2`; ethereum `0xafd498...706a90`; ethereum `0xf4cedd...948fa2` | ⚠️ Unaudited |
| CurveConvexDestinationVaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x10b459...967b2d`; ethereum `0x73047a...bf5ec6`; ethereum `0xa7d642...fe3b29` | ⚠️ Unaudited |
| CurveDestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa265ce...ed3e9f` | ⚠️ Unaudited |
| CurveGaugeDestinationVault | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3c5be4...21f64e`; ethereum `0x6652b0...9bcbe2`; ethereum `0x946d9b...11391b`; ethereum `0xa07f6c...141a38` | ⚠️ Unaudited |
| CurveGaugeDestinationVault | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-227999 | 2 deployments: arbitrum `0x04f7ce...94f051`; arbitrum `0x9b1985...5c4410` | ⚠️ Unaudited |
| CurveGaugeDestinationVault | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-228121 | `0xdd78ea...07b0fd` | ⚠️ Unaudited |
| CurveNGConvexDestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fb4a7...dff483` | ⚠️ Unaudited |
| CurveResolverXchain | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228126 | `0xe0ebd6...05a5f8` | ⚠️ Unaudited |
| CurveResolverXchain | unknown | project_anchor | own_supporting | 0 | linea | unit-228178 | `0xbb1dfb...852e5e` | ⚠️ Unaudited |
| CurveV1PoolNoRebasingStatsCalculator | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227851 | 6 deployments: ethereum `0x145e12...c41879`; ethereum `0x542a6b...99f0fa`; ethereum `0x94b58e...6c7a69`; ethereum `0xb8e7a5...9b8c2a`; ethereum `0xd545ee...201004`; ethereum `0xd6884a...ee6154` | ⚠️ Unaudited |
| CurveV1PoolNoRebasingStatsCalculator | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2e14c...6d4edc` | ⚠️ Unaudited |
| CurveV1PoolRebasingLockedStatsCalculator | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227893 | `0x549398...56e3c8` | ⚠️ Unaudited |
| CurveV1StableEthLockedOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde695e...e4bf31` | ⚠️ Unaudited |
| CurveV1StableEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227952 | `0xaed535...b8a92b` | ⚠️ Unaudited |
| CurveV1StableEthOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xb757c8...431d24` | ⚠️ Unaudited |
| CurveV1StableEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228039 | `0x47b835...b49b5f` | ⚠️ Unaudited |
| CurveV1StableEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-228179 | `0xbb1feb...8d2635` | ⚠️ Unaudited |
| CurveV1StableSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xbeba12...92608f`; plasma `0xc92797...82a635` | ⚠️ Unaudited |
| CurveV1StableSwap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228020 | `0x1bdc53...b8cf69` | ⚠️ Unaudited |
| CurveV2Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5dc23...b12646` | ⚠️ Unaudited |
| CustomRedStoneOracleAdapter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x67c159...c21030`; ethereum `0xbb353f...e63b03` | ⚠️ Unaudited |
| CustomSetOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227891 | `0x53ff9d...24066f` | ⚠️ Unaudited |
| CustomSetOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228231 | `0x92c726...eae3ef` | ⚠️ Unaudited |
| CustomSetOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: ethereum `0xe67d77...958c03`; sonic `0x9dd5e7...b87254`; sonic `0xaad907...deb19d`; base `0xb840cd...3b1ff7`; plasma `0x9783c0...d55b72`; arbitrum `0x5e76c3...791551` | ⚠️ Unaudited |
| CustomSetOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228067 | `0x80c503...cdc4ca` | ⚠️ Unaudited |
| CustomSetOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-228172 | `0x9faefa...cc23e2` | ⚠️ Unaudited |
| DaiUsdsSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2c309e...994fbd`; ethereum `0xe65a46...c257f9` | ⚠️ Unaudited |
| DaiUsdsSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6404f6...81cfdc`; ethereum `0xbf7335...b759f0` | ⚠️ Unaudited |
| DefiRound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc80373...00ac38` | ⚠️ Unaudited |
| DegenBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd96f48...fc2cce` | ⚠️ Unaudited |
| Depositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x8599f0...ae7e7f`; base `0x9af8aa...813577`; base `0xe10142...fef87b`; base `0xed0489...fa4a05` | ⚠️ Unaudited |
| DepositProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x031464...ee2abf` | ⚠️ Unaudited |
| DestinationIncentiveChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3ac921...54232b`; ethereum `0x506199...91e295`; ethereum `0x9e60e4...45b28c` | ⚠️ Unaudited |
| DestinationIncentiveChecker | unknown | project_anchor | own_supporting | 0 | base | unit-228257 | `0xc3ff90...598323` | ⚠️ Unaudited |
| DestinationRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-227939 | `0xa698a9...a99402` | ⚠️ Unaudited |
| DestinationRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x0283a2...3afb61`; sonic `0x62794e...96886e`; sonic `0xa5e45b...6a17b8`; arbitrum `0xdf177c...d8d82c`; arbitrum `0xfea078...2c618b` | ⚠️ Unaudited |
| DestinationRegistry | registry | project_anchor | own_supporting | 0 | base | unit-228238 | `0xa1afc8...095ba1` | ⚠️ Unaudited |
| DestinationRegistry | registry | project_anchor | own_supporting | 0 | arbitrum | unit-228079 | `0x95b5f1...43c58e` | ⚠️ Unaudited |
| DestinationRegistry | registry | project_anchor | own_supporting | 0 | linea | unit-228162 | `0x66b9eb...6e258c` | ⚠️ Unaudited |
| DestinationVaultExtension | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: base `0xb64dd5...093d68`; plasma `0x94ab3c...7a09f1`; arbitrum `0x4ca8f3...443fc1`; linea `0xef8d12...8707b6` | ⚠️ Unaudited |
| DestinationVaultFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-227873 | `0x37de6f...0ff124` | ⚠️ Unaudited |
| DestinationVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: ethereum `0xc6c32c...199678`; sonic `0x4b3575...d5b0f0`; sonic `0x71ce71...f89837`; sonic `0xd707a2...49928c`; arbitrum `0x53303d...6c198d`; arbitrum `0x705688...49dbfb` | ⚠️ Unaudited |
| DestinationVaultFactory | registry | project_anchor | own_supporting | 0 | base | unit-228286 | `0xf34f79...e9abb6` | ⚠️ Unaudited |
| DestinationVaultFactory | registry | project_anchor | own_supporting | 0 | plasma | unit-228303 | `0xc895bb...5c288a` | ⚠️ Unaudited |
| DestinationVaultFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-228117 | `0xd66836...59225a` | ⚠️ Unaudited |
| DestinationVaultFactory | registry | project_anchor | own_supporting | 0 | linea | unit-228161 | `0x618273...67520f` | ⚠️ Unaudited |
| DestinationVaultRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-227875 | `0x3aac1c...e152ae` | ⚠️ Unaudited |
| DestinationVaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x005b5d...f79fa8`; sonic `0x0b7f22...520f57`; sonic `0x9e4530...62cca8`; arbitrum `0x39327c...264ba1`; arbitrum `0x852664...ed4f44` | ⚠️ Unaudited |
| DestinationVaultRegistry | unknown | project_anchor | own_supporting | 0 | base | unit-228253 | `0xbbbb6e...21735f` | ⚠️ Unaudited |
| DestinationVaultRegistry | registry | project_anchor | own_supporting | 0 | arbitrum | unit-228074 | `0x8d75a2...032b4b` | ⚠️ Unaudited |
| DestinationVaultRegistry | registry | project_anchor | own_supporting | 0 | linea | unit-228183 | `0xc7b061...d65da2` | ⚠️ Unaudited |
| DexIncentiveSetCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x269dbe...908be7` | ⚠️ Unaudited |
| DynamicVestingEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16d96b...d9c55d` | ⚠️ Unaudited |
| EethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227881 | `0x4353e1...1350ba` | ⚠️ Unaudited |
| EethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227942 | `0xa87930...d4a71e` | ⚠️ Unaudited |
| EethOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227944 | `0xaa573a...86df81` | ⚠️ Unaudited |
| ERC20DestinationVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: ethereum `0x8b025d...1ad095`; ethereum `0xaeb549...fb97c1`; ethereum `0xb6b90d...d1362e`; sonic `0x3058da...261b2d`; base `0xbc6128...c6c35c` | ⚠️ Unaudited |
| ERC4626BackingOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0xfc3213...014721`; sonic `0x881fd7...34fb26`; base `0x16cd14...9e516a`; plasma `0x5ab9f9...5031a9` | ⚠️ Unaudited |
| ERC4626BackingOracle | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-228040 | `0x47cabf...81ed2f` | ⚠️ Unaudited |
| ERC4626NonLPSpotEthOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x000404...aadf01`; ethereum `0x13da01...fc380f`; ethereum `0xc840bd...a86cf3`; ethereum `0xd50e56...6b0898`; sonic `0x375e79...dab4f1`; sonic `0x475707...fd1623`; base `0x336080...9c1678`; plasma `0x8a99bb...f682ad` | ⚠️ Unaudited |
| ERC4626NonLPSpotEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228120 | `0xdd0394...f9a8f2` | ⚠️ Unaudited |
| ERC4626NonLPSpotEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-228159 | `0x46c004...64686b` | ⚠️ Unaudited |
| ERC4626NonLPSpotRangeOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: sonic `0x82de00...f5d356`; base `0x136639...35a596`; plasma `0xdd597e...3822de`; linea `0x1068bb...595061` | ⚠️ Unaudited |
| ERC4626OneToOneCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: ethereum `0xf31bd1...91cdd9`; base `0xcd749a...138a61` | ⚠️ Unaudited |
| ERC4626RateProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227967 | `0xd4580a...0d44ba` | ⚠️ Unaudited |
| ERC4626RedeemSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x01f8d0...f16e96`; sonic `0xe2239b...e55824`; base `0xa60042...6be405`; plasma `0xba08e1...73e32f`; arbitrum `0x1cbd79...0ba22b` | ⚠️ Unaudited |
| ERC4626RedeemSwapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228050 | `0x5c47f4...905667` | ⚠️ Unaudited |
| ERC4626RedeemSwapper | adapter | project_anchor | own_supporting | 0 | linea | unit-228164 | `0x6978f2...b3f5c3` | ⚠️ Unaudited |
| ERC4626Swapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x1dfb50...ae8c88`; ethereum `0x2386c9...74105f`; ethereum `0xfbc60c...39b895`; ethereum `0xffebb3...4d959f`; sonic `0xab9f53...33241c`; sonic `0xc3c458...af1790`; base `0x383421...205baf`; base `0xb1b8d7...0c0193`; plasma `0x9186ea...82617d`; plasma `0xed5dc1...272d93`; arbitrum `0x84c1ce...e5d152`; arbitrum `0xb22f75...e22f34` | ⚠️ Unaudited |
| ERC4626Swapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228082 | `0x98a216...0e339a` | ⚠️ Unaudited |
| ERC4626Swapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228127 | `0xe1a08b...799213` | ⚠️ Unaudited |
| ERC4626Swapper | adapter | project_anchor | own_supporting | 0 | linea | unit-228154 | `0x268cbb...161a03` | ⚠️ Unaudited |
| ERC4626Swapper | adapter | project_anchor | own_supporting | 0 | linea | unit-228157 | `0x3f962e...acc328` | ⚠️ Unaudited |
| ERC4626VaultShareEthOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0d1e06...821fa8`; sonic `0x2bae39...be5f19`; base `0x869255...f1714a`; plasma `0x8b504e...5df923`; arbitrum `0x2210d0...252237` | ⚠️ Unaudited |
| ERC4626VaultShareEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228141 | `0xf701b4...2b7087` | ⚠️ Unaudited |
| ERC4626VaultShareEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-228190 | `0xdb28f4...aeae68` | ⚠️ Unaudited |
| Etherex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 3 deployments: linea `0xbe8b8d...69f11d`; linea `0xefd81e...31e348`; linea `0xf0c89c...0bd9eb` | ⚠️ Unaudited |
| EtherFiClaimingDestinationVaultExtension | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b65dc...339639` | ⚠️ Unaudited |
| EthPeggedOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227976 | `0xdeb361...a67de3` | ⚠️ Unaudited |
| EthPeggedOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228278 | `0xe33703...746aa9` | ⚠️ Unaudited |
| EthPeggedOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 4 deployments: sonic `0xac9ae2...b83ea9`; sonic `0xb074ee...6df27f`; plasma `0x738066...8b759f`; plasma `0xac2087...754a5e` | ⚠️ Unaudited |
| EthPeggedOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228014 | `0x16adb8...f5a0a8` | ⚠️ Unaudited |
| EthPeggedOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-228174 | `0xa6e5ac...acf562` | ⚠️ Unaudited |
| EthPerTokenSender | token | project_anchor | own_supporting | 0 | ethereum | unit-227974 | `0xdd9251...625a3d` | ⚠️ Unaudited |
| EthPerTokenStore | unknown | project_anchor | own_supporting | 0 | base | unit-228219 | `0x578317...d68dfe` | ⚠️ Unaudited |
| EthPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x77f18a...b864ee`; ethereum `0xca77a2...d5da31` | ⚠️ Unaudited |
| ETHxLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227862 | `0x2757f5...5b0c55` | ⚠️ Unaudited |
| ETHxLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227910 | `0x6d3c5f...78334c` | ⚠️ Unaudited |
| EulerDestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 12 deployments: sonic `0x59e6e9...e12afb`; base `0xc8ba1a...cc3c76`; plasma `0x07ed7e...b8f95b`; plasma `0x15b4dc...7178f9`; plasma `0x868c33...04b672`; plasma `0x919978...cf0377`; plasma `0xf3de68...78d217`; plasma `0xf5a4fa...0f684c`; arbitrum `0xc82aec...28537f`; arbitrum `0xdc7b96...ec7101`; arbitrum `0xfda745...010bd5`; linea `0xd27f7b...56fbf0` | ⚠️ Unaudited |
| EulerDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228032 | 2 deployments: arbitrum `0x398417...d80085`; arbitrum `0xe6a2b1...08fc71` | ⚠️ Unaudited |
| EulerDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228106 | `0xc32572...ea15a8` | ⚠️ Unaudited |
| EulerDestinationVault | core_logic | project_anchor | own_supporting | 0 | linea | unit-228170 | 2 deployments: linea `0x9d2868...239e3a`; linea `0xd2f243...5d4471` | ⚠️ Unaudited |
| EulerDestinationVault | core_logic | project_anchor | own_supporting | 0 | linea | unit-228181 | `0xbe22c1...3ae95f` | ⚠️ Unaudited |
| EulerRewardLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: plasma `0x46ba85...80e409`; arbitrum `0x6f1c28...f65cdd`; linea `0x349e41...6d59dd`; linea `0xc6383b...da5393` | ⚠️ Unaudited |
| ExtraRewarder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227853 | `0x17c50b...022975` | ⚠️ Unaudited |
| ExtraRewarder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227859 | `0x23e9bb...7fec38` | ⚠️ Unaudited |
| ExtraRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7a73fa...e05924`; plasma `0xae6b25...0e2124` | ⚠️ Unaudited |
| EzethLRTCalculator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227941 | `0xa84cc1...b263d9` | ⚠️ Unaudited |
| EzethLRTCalculator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227980 | `0xe3e731...25b459` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x51a2a0...7f21a1`; linea `0x532c15...54e0f3` | ⚠️ Unaudited |
| FeeDistributorFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x61c56a...6f3f6f`; linea `0xfde487...e6b7bf` | ⚠️ Unaudited |
| FeeRecipientFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x75430c...02d6a7` | ⚠️ Unaudited |
| FeeRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1057b...38e581` | ⚠️ Unaudited |
| Fei | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x956f47...7f87ca` | ⚠️ Unaudited |
| FlashBorrowerSolver | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228031 | `0x371b3c...b29488` | ⚠️ Unaudited |
| FluidDestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: ethereum `0x8f84c9...3a0f8f`; ethereum `0xf6c131...6b32d7`; base `0x99ff2b...a9da64`; base `0xcb52d8...09d136`; base `0xfaa818...2a652d`; plasma `0x5b2cd1...ffd68c`; plasma `0x5dd8e6...7f905b`; plasma `0xf07c1d...49a1d1`; arbitrum `0x1975b2...9b20bb`; arbitrum `0x5a4a23...565331`; arbitrum `0xc3350f...a9fb69` | ⚠️ Unaudited |
| FluidDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228026 | `0x2b8c97...414127` | ⚠️ Unaudited |
| FOX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc770ee...8ee52d` | ⚠️ Unaudited |
| FPIControllerPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x239732...43cf51` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Convex_stkcvxFRAXBP | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x963f48...03b199` | ⚠️ Unaudited |
| FrxEthLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227882 | `0x449a95...787590` | ⚠️ Unaudited |
| FrxEthLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227948 | `0xad6d0e...18a223` | ⚠️ Unaudited |
| Gamma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6bea7c...44e197`; ethereum `0x8a539c...ed793a` | ⚠️ Unaudited |
| GaugeV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 5 deployments: linea `0x18068c...3b0b25`; linea `0x84b465...04201b`; linea `0x9270d3...f81a74`; linea `0x9d5c0e...dc9cb4`; linea `0xeba9eb...eacb40` | ⚠️ Unaudited |
| GaugeV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x499aed...dd8fcb` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x127563...ad9013` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x8b4334...4a969b` | ⚠️ Unaudited |
| gOHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ab870...20a52f` | ⚠️ Unaudited |
| GT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf25dc5...baa20c` | ⚠️ Unaudited |
| HoldTokenCalculator | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x076f94...a65f50`; ethereum `0x78c4af...f57c0e`; base `0x804336...fac3a4` | ⚠️ Unaudited |
| HypeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa21b30...1e24ab`; ethereum `0xede66e...dc7dff` | ⚠️ Unaudited |
| Hypervisor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x33412f...31dbb4`; ethereum `0x336d7e...cf146f`; ethereum `0x388a39...98e22c`; ethereum `0x39b96f...16013c`; ethereum `0x4d7f0f...d0c832`; ethereum `0x51bbf7...808865`; ethereum `0x586880...f8ef13`; ethereum `0x5e6c48...f11660`; ethereum `0xac571c...b1d02f`; ethereum `0xf402ce...adbd9b`; ethereum `0xf6eeca...c7927c` | ⚠️ Unaudited |
| HypervisorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ae6c8...97ceae` | ⚠️ Unaudited |
| IncentiveCalculatorUpdateDestinationVaultExtension | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee117a...1ab674` | ⚠️ Unaudited |
| IncentiveHarvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x453bf4...7f51e7`; ethereum `0x4a566d...178791` | ⚠️ Unaudited |
| IncentiveHarvester | unknown | project_anchor | own_supporting | 0 | base | unit-228203 | `0x1bfcdf...d5be5e` | ⚠️ Unaudited |
| IncentivePricingStats | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227924 | `0x8607ba...85f862` | ⚠️ Unaudited |
| IncentivePricingStats | unknown | project_anchor | own_supporting | 0 | base | unit-228285 | `0xf28213...48090d` | ⚠️ Unaudited |
| InchSpellSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfe1a5...a52111` | ⚠️ Unaudited |
| InitialClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ad3cf...a17a11` | ⚠️ Unaudited |
| Integer | unknown | project_anchor | needs_review (excluded) | 0 | arbitrum | unit-228041 | 5 deployments: ethereum `0x8a397a...94a71c`; sonic `0xad3331...95f3f5`; plasma `0x5206eb...e4ec6e`; arbitrum `0x4c0868...092028`; linea `0xe9dedf...9958c6` | ⚠️ Unaudited |
| KelpDaoClaimingDestinationVaultExtension | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa30579...ddd067` | ⚠️ Unaudited |
| LBPController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e0561...3e2987` | ⚠️ Unaudited |
| Lens | periphery | project_anchor | own_supporting | 0 | ethereum | unit-227852 | `0x146b55...783882` | ⚠️ Unaudited |
| Lens | unknown | project_anchor | own_supporting | 0 | base | unit-228243 | `0xaf05c2...17aa9c` | ⚠️ Unaudited |
| Lens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: ethereum `0x0ab577...e6c89b`; ethereum `0x6972ee...cde442`; ethereum `0x75455a...1d2300`; sonic `0x8b5871...b42182`; sonic `0x93f91a...3d9584`; sonic `0xcb7e45...85a163`; sonic `0xf4201e...3cf18b`; base `0x1c0059...db89f0`; arbitrum `0x03200d...f749c1`; arbitrum `0x99f8f6...08279e` | ⚠️ Unaudited |
| Lens | periphery | project_anchor | own_supporting | 0 | arbitrum | unit-228047 | `0x590a31...2fc754` | ⚠️ Unaudited |
| Lens | periphery | project_anchor | own_supporting | 0 | linea | unit-228168 | `0x92537a...f7973c` | ⚠️ Unaudited |
| LiquidationExecutor | unknown | project_anchor | own_supporting | 0 | base | unit-228198 | `0x0294d7...7b2c8c` | ⚠️ Unaudited |
| LiquidationExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 6 deployments: ethereum `0xa61ab5...daaf53`; ethereum `0xd03f63...747738`; sonic `0x5a7110...5d0ab3`; base `0xc48496...005e9a`; plasma `0x2ddb79...7980be`; arbitrum `0x400662...5ca197` | ⚠️ Unaudited |
| LiquidationExecutor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228029 | `0x34d929...f7ad94` | ⚠️ Unaudited |
| LiquidationExecutor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228033 | `0x4008dd...ceba03` | ⚠️ Unaudited |
| LiquidationExecutor | unknown | project_anchor | own_supporting | 0 | linea | unit-228171 | `0x9f8e50...db4bfa` | ⚠️ Unaudited |
| LiquidationRow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0xf570ea...58d481`; base `0x7571de...c10b5d`; plasma `0xd3132c...b2a018`; arbitrum `0xb47d36...d913ed` | ⚠️ Unaudited |
| LiquidationRow | unknown | project_anchor | own_supporting | 0 | base | unit-228277 | `0xe2f00b...881d4f` | ⚠️ Unaudited |
| LiquidationRow | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228054 | `0x610ffe...3e3ab5` | ⚠️ Unaudited |
| LiquidationRow | unknown | project_anchor | own_supporting | 0 | linea | unit-228182 | `0xc33238...f05b3c` | ⚠️ Unaudited |
| LstPriceHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0xc7c308...bf4523`; sonic `0x3fab79...1c0626`; base `0x1617c7...d5f827`; arbitrum `0x329e4c...dd525c`; arbitrum `0xd57e25...aad943` | ⚠️ Unaudited |
| LstPriceHook | operational_periphery | project_anchor | own_supporting | 0 | plasma | unit-228304 | `0xc91f3b...a4ebc5` | ⚠️ Unaudited |
| LstPriceHook | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-228059 | `0x67ae7b...cafbc0` | ⚠️ Unaudited |
| LstPriceHook | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-228195 | `0xf63daf...6f2f47` | ⚠️ Unaudited |
| MagicInternetMoneyV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99d8a9...1e17f3` | ⚠️ Unaudited |
| Manager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x59170d...f9f4c9`; ethereum `0xa86e41...b86a14` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x0fee3b...237f64`; sonic `0x38b556...399227` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: ethereum `0x0ad818...3bb7f7`; ethereum `0x1d7858...1b4d43`; ethereum `0x47fa86...f705df`; ethereum `0xf31d02...6f2651`; ethereum `0xf663f4...2a244c`; base `0x020849...b67262`; base `0x85f982...a4d14e` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x304c29...eb1520`; base `0x76e6a3...aee47e` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x027a33...238833`; arbitrum `0x37767c...742df6` | ⚠️ Unaudited |
| MaxValueSlippageHook | unknown | project_anchor | own_supporting | 0 | plasma | unit-228297 | `0x881bb3...3d63d4` | ⚠️ Unaudited |
| MaxValueSlippageHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: ethereum `0x3b16c8...43cfc3`; sonic `0x720b31...ddee52`; base `0x80af95...3e228b`; arbitrum `0x0d1212...695426`; arbitrum `0x50306d...00ccf0` | ⚠️ Unaudited |
| MaxValueSlippageHook | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228056 | `0x6404da...44a402` | ⚠️ Unaudited |
| MaxValueSlippageHook | unknown | project_anchor | own_supporting | 0 | linea | unit-228175 | `0xaaee6a...869707` | ⚠️ Unaudited |
| MerklApiOperatorSetExtension | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x54f35d...6cdc8d` | ⚠️ Unaudited |
| MevModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x614f11...703abd`; linea `0xdf2787...088d5b` | ⚠️ Unaudited |
| MevModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x90fc1f...b4940d` | ⚠️ Unaudited |
| MigrationNFT | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72baaa...39fe76` | ⚠️ Unaudited |
| Minter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: linea `0x0b6d3b...ecc3eb`; linea `0x462e26...d2a966`; linea `0x76da79...da9f8f`; linea `0xf83962...0b6255` | ⚠️ Unaudited |
| MinTimeGapHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x2e9894...dc3466`; sonic `0x7a0c45...a9c7bc`; base `0xec1b42...1e5745`; arbitrum `0x5483a2...a7ece8`; arbitrum `0xcb409a...2dffe0` | ⚠️ Unaudited |
| MinTimeGapHook | unknown | project_anchor | own_supporting | 0 | plasma | unit-228293 | `0x71689a...1679d9` | ⚠️ Unaudited |
| MinTimeGapHook | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228004 | `0x09d0d6...b50322` | ⚠️ Unaudited |
| MinTimeGapHook | unknown | project_anchor | own_supporting | 0 | linea | unit-228177 | `0xb617bc...532e67` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x59037f...3712a6` | ⚠️ Unaudited |
| MorphoDestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x616e7e...0ecdcc`; ethereum `0x9bc152...9dad01`; plasma `0xde852a...f90db4` | ⚠️ Unaudited |
| MorphoDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228044 | `0x52b31f...d48be3` | ⚠️ Unaudited |
| MorphoDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228057 | 4 deployments: arbitrum `0x65f4fe...a62eef`; arbitrum `0xab3da8...c9bf0b`; arbitrum `0xd7b1f5...db00ce`; arbitrum `0xff004b...a24192` | ⚠️ Unaudited |
| mSpellStaking | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd2fba...5e6797` | ⚠️ Unaudited |
| MultiSigWalletWithTimeLock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8392f6...57e225` | ⚠️ Unaudited |
| NavLookbackHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x33db10...9c3624`; sonic `0xa6c320...e29268`; base `0x5ee04a...b5df51`; arbitrum `0x617005...19ea57`; arbitrum `0xd184c5...bd2b16` | ⚠️ Unaudited |
| NavLookbackHook | unknown | project_anchor | own_supporting | 0 | plasma | unit-228290 | `0x4c0be1...6b427b` | ⚠️ Unaudited |
| NavLookbackHook | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228080 | `0x9717e1...756f8b` | ⚠️ Unaudited |
| NavLookbackHook | unknown | project_anchor | own_supporting | 0 | linea | unit-228173 | `0xa31fe5...59fa42` | ⚠️ Unaudited |
| NavTracking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9d9118...8b2046` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0xa04a9f...bb2f58` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfc65c6...8453c4` | ⚠️ Unaudited |
| OethLSTCalculator | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x21fede...143826`; ethereum `0x90a7e9...2cbd59` | ⚠️ Unaudited |
| OHMPrincipleDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ee5c2...4815b9` | ⚠️ Unaudited |
| OlympusAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c21f8...b38b7a` | ⚠️ Unaudited |
| OlympusBondingCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a617f...68bedc` | ⚠️ Unaudited |
| OlympusLPStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf11f0f...722223` | ⚠️ Unaudited |
| OlympusRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ce62b...4a6cd1` | ⚠️ Unaudited |
| OlympusStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0822f3...f274a2`; ethereum `0x4a049d...cf7d7e`; ethereum `0x9f93c9...e5abf4` | ⚠️ Unaudited |
| OlympusStakingDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe7315...93242f` | ⚠️ Unaudited |
| OlympusTokenMigrator | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x184f3f...e784b3` | ⚠️ Unaudited |
| OnChainVoteL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x160317...a915be`; ethereum `0x43094e...6ca511` | ⚠️ Unaudited |
| OnChainVoteL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x803ec0...bc22bc`; ethereum `0xa1a7ec...7721dd` | ⚠️ Unaudited |
| OnChainVoteL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xabcf56...fa195c`; ethereum `0xc6807b...66e0bb` | ⚠️ Unaudited |
| OneToOneBaseAssetBackingOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x44670e...7f6c2d`; sonic `0x57ade9...ff038e`; base `0xe4baac...4d7704`; plasma `0x951891...0fbb80` | ⚠️ Unaudited |
| OneToOneBaseAssetBackingOracle | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-228042 | `0x4e8ce6...8e9b32` | ⚠️ Unaudited |
| OneToOneUSDBackingOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: ethereum `0xaeb29c...fd1016`; sonic `0xa28ffd...599822`; base `0xe8b43d...83472a`; plasma `0xea292b...6b9818`; arbitrum `0xa698a9...a99402` | ⚠️ Unaudited |
| Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x389df9...7e7d55` | ⚠️ Unaudited |
| OsethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227876 | `0x3cc439...257b1b` | ⚠️ Unaudited |
| OsethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227956 | `0xb5aa59...25aebb` | ⚠️ Unaudited |
| PairFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc0b920...644592` | ⚠️ Unaudited |
| PointsHook | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227936 | `0xa38606...c615c3` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x0139b3...e6f15a`; ethereum `0x2d3ead...022029`; ethereum `0x7a75ec...ac63fd`; ethereum `0xe7a7d1...31532d` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xbbfc7d...c7ba8a`; ethereum `0xca5e07...d58d4e` | ⚠️ Unaudited |
| PoolBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe66db0...1cdcb8` | ⚠️ Unaudited |
| Position | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2832e1...bf9d6f` | ⚠️ Unaudited |
| PricePerShareEthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5b0f86...248cea` | ⚠️ Unaudited |
| ProtocolActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x34413f...3140fd` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x01b431...e7e1ee`; ethereum `0xc89f74...cf00df`; ethereum `0xd813b2...c51a21`; plasma `0xea6b81...bcc98a` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | arbitrum | unit-228103 | `0xbfd637...047e9f` | ⚠️ Unaudited |
| ProxyLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227860 | 2 deployments: ethereum `0x24864c...25931e`; ethereum `0xdbfb63...aaa43f` | ⚠️ Unaudited |
| ProxyLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227927 | `0x8a26c7...494e53` | ⚠️ Unaudited |
| PufEthLRTCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x878958...a17e73`; ethereum `0x9d4920...8b34ac` | ⚠️ Unaudited |
| PxETHEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227877 | `0x3cc521...ffc629` | ⚠️ Unaudited |
| PxEthLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227872 | `0x37c9b7...06296a` | ⚠️ Unaudited |
| PxEthLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227934 | `0x9cb562...972153` | ⚠️ Unaudited |
| Quoter | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb593fa...4fe335` | ⚠️ Unaudited |
| QuoterV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe660c9...aba037` | ⚠️ Unaudited |
| RamsesTreasuryHelper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x020079...d3200e`; linea `0x0efaae...31693b` | ⚠️ Unaudited |
| RamsesTreasuryHelper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x15325a...5636a5` | ⚠️ Unaudited |
| RamsesV3Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xae334f...cf80f1` | ⚠️ Unaudited |
| RamsesV3PoolDeployer | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x80dca1...c7bec8` | ⚠️ Unaudited |
| RamsesV3PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4e710f...272bfb` | ⚠️ Unaudited |
| ReceivingRouter | unknown | project_anchor | own_supporting | 0 | base | unit-228211 | `0x327966...12267e` | ⚠️ Unaudited |
| ReceivingRouterGen | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd2c543...ad19dc` | ⚠️ Unaudited |
| RedstoneOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227979 | `0xe1adb6...da5913` | ⚠️ Unaudited |
| RedstoneOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x7b1e13...f5b3f2`; sonic `0xa1ce23...874718`; plasma `0x80d831...bb308d` | ⚠️ Unaudited |
| RedstoneOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228234 | `0x9ab4b6...dad1ee` | ⚠️ Unaudited |
| RedStonePullOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: ethereum `0x470139...b0a0ea`; ethereum `0x9a65e1...89b811`; sonic `0x0324a2...33abec`; sonic `0xc557b7...929d63`; base `0x1e4d6a...679306`; base `0xb470a1...855cc4`; arbitrum `0x995a39...759d1f` | ⚠️ Unaudited |
| RedStonePullOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228135 | `0xed2acb...5e081b` | ⚠️ Unaudited |
| RethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227842 | `0x038516...90fac1` | ⚠️ Unaudited |
| RethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227931 | `0x980109...bb84a8` | ⚠️ Unaudited |
| RewarderAutoLoader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: arbitrum `0xa11733...30bf38`; linea `0x2abfad...8ceec7` | ⚠️ Unaudited |
| RewardHash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2c8f3c...572705`; ethereum `0x3cce05...7661dd`; ethereum `0x5ec3ec...d02fb6` | ⚠️ Unaudited |
| RewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39baa5...d34867` | ⚠️ Unaudited |
| Rewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x086b97...e27054`; ethereum `0x79dd22...a713c5`; ethereum `0xba7c0f...c4a54e`; ethereum `0xd69e57...f88003`; ethereum `0xf81d69...4cef69`; ethereum `0xffd22c...69ede3` | ⚠️ Unaudited |
| RewardsHash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x70f0f4...373c24`; base `0xe43ca8...3ed9f7` | ⚠️ Unaudited |
| RewardsManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1b0512...7d4404`; ethereum `0x7cdbbd...e96d06` | ⚠️ Unaudited |
| RewardValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x7930ec...b1e0fc`; linea `0xe57600...c0a97c` | ⚠️ Unaudited |
| REX33 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 5 deployments: linea `0x312b67...433ec0`; linea `0xbf42f6...639dff`; linea `0xc4b578...31509c`; linea `0xccfc11...f15749`; linea `0xe4eeb4...f051c4` | ⚠️ Unaudited |
| RootPriceOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227902 | `0x61f8be...bc2cac` | ⚠️ Unaudited |
| RootPriceOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228254 | `0xbcf67d...661795` | ⚠️ Unaudited |
| RootPriceOracle | operational_periphery | project_anchor | own_supporting | 0 | plasma | unit-228306 | `0xf25bdd...6d124f` | ⚠️ Unaudited |
| RootPriceOracle | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-228130 | `0xe84cea...72d97f` | ⚠️ Unaudited |
| RootPriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 6 deployments: sonic `0x356d6e...46751f`; sonic `0x471100...cb8c9e`; sonic `0x7844db...5a3e97`; arbitrum `0x99ebce...8bed0e`; arbitrum `0xd24125...ab5b3d`; linea `0x03dc05...175618` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x81cfdc...fb2dec`; ethereum `0x86ac98...a1635c`; ethereum `0x92d853...975b16`; ethereum `0x994303...0f38e8`; ethereum `0xca17f5...b78536`; ethereum `0xf5ad91...cef3e0` | ⚠️ Unaudited |
| Router | adapter | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | linea | unit-228156 | `0x32db39...929c54` | ⚠️ Unaudited |
| RsethLRTCalculator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227849 | `0x114ca0...cefa86` | ⚠️ Unaudited |
| RsethLRTCalculator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227923 | `0x840a49...4fc210` | ⚠️ Unaudited |
| RswethLRTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227982 | `0xe861c6...15b90f` | ⚠️ Unaudited |
| RswethLRTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227984 | `0xeedb3d...b6741a` | ⚠️ Unaudited |
| Safe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xa9900b...1d447b` | ⚠️ Unaudited |
| SafeIsSpotEthOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x70659f...12e764` | ⚠️ Unaudited |
| SafeL2 | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1bb923...23cdc0` | ⚠️ Unaudited |
| SelfSpotEthOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e9a06...27a5d7` | ⚠️ Unaudited |
| SequencerChecker | unknown | project_anchor | own_supporting | 0 | base | unit-228218 | `0x564c39...d23535` | ⚠️ Unaudited |
| SequencerChecker | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228000 | `0x05abaa...1f23f4` | ⚠️ Unaudited |
| SequencerChecker | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228045 | `0x537f6e...d97dcc` | ⚠️ Unaudited |
| SequencerChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf37535...f129ef` | ⚠️ Unaudited |
| ShadowDexSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xadc552...33e2cc` | ⚠️ Unaudited |
| ShadowDexSwap | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | linea | unit-228196 | `0xfb918e...eae19d` | ⚠️ Unaudited |
| SiloMainnetDestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x43ac60...97ab82`; ethereum `0x679d6f...e3aca9`; ethereum `0x87a840...e4a262` | ⚠️ Unaudited |
| SlippageBudgetHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: ethereum `0xab64ce...294569`; ethereum `0xd7ca2c...51270a`; ethereum `0xebdfe0...e4f7c3`; sonic `0x1a1c7e...7439c2`; base `0x27579e...056589`; arbitrum `0x5984cf...11c192`; arbitrum `0x5db0e6...fd6b14` | ⚠️ Unaudited |
| SlippageBudgetHook | unknown | project_anchor | own_supporting | 0 | plasma | unit-228307 | `0xf68f04...80b335` | ⚠️ Unaudited |
| SlippageBudgetHook | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228075 | `0x8e9ac2...2d402d` | ⚠️ Unaudited |
| SlippageBudgetHook | unknown | project_anchor | own_supporting | 0 | linea | unit-228167 | `0x798b8a...824645` | ⚠️ Unaudited |
| SnapshotToke | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x572a7d...26aaa2` | ⚠️ Unaudited |
| SolverRootOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 4 deployments: ethereum `0xdb8747...3c20f1`; sonic `0x4137b3...1cc970`; base `0x67d29b...282de1`; plasma `0x03fad8...4d6cad` | ⚠️ Unaudited |
| SolverRootOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228052 | `0x5ee5d0...9cbd14` | ⚠️ Unaudited |
| SolverRootOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-228151 | `0x24127a...127e00` | ⚠️ Unaudited |
| sOlympus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31932e...77fbbe` | ⚠️ Unaudited |
| sSpellV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26fa3f...a106a9` | ⚠️ Unaudited |
| Stake_FXS_WETH | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xa29367...1892b6`; ethereum `0xd87562...540d4f`; ethereum `0xda2c33...dd9bec` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0fc455...954b4f`; ethereum `0x1dddf8...1d0122`; ethereum `0x596723...11ebee`; ethereum `0xe5943d...6ba92f`; ethereum `0xef8670...4a955b`; ethereum `0xf82337...b54f63` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x96f98e...3417d3` | ⚠️ Unaudited |
| StakingPools | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab8e74...d7deca` | ⚠️ Unaudited |
| StakingProxyConvex | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d9ef8...a20eb8` | ⚠️ Unaudited |
| StakingRewardsMultiGauge_StakeDAO | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb81b8...a96da2` | ⚠️ Unaudited |
| StandardNonLPSpotEthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: ethereum `0x84ec46...0c15c1`; ethereum `0xd06906...a6bfba`; sonic `0x62949f...b628d2` | ⚠️ Unaudited |
| StatsCalculatorFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-227921 | `0x819806...bc917c` | ⚠️ Unaudited |
| StatsCalculatorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9f6ed3...15dace` | ⚠️ Unaudited |
| StatsCalculatorFactory | registry | project_anchor | own_supporting | 0 | base | unit-228269 | `0xd82664...8b0a1c` | ⚠️ Unaudited |
| StatsCalculatorRegistry | registry | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227950 | `0xae6b25...0e2124` | ⚠️ Unaudited |
| StatsCalculatorRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x734ad2...dbb67e` | ⚠️ Unaudited |
| StatsCalculatorRegistry | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228205 | `0x22dd21...b217d2` | ⚠️ Unaudited |
| StatsTransientCacheStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34712f...61bb88` | ⚠️ Unaudited |
| StethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227909 | `0x66a466...dbad0c` | ⚠️ Unaudited |
| StethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227951 | `0xaea78e...02cee7` | ⚠️ Unaudited |
| sTokeExtend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e1f00...c50673` | ⚠️ Unaudited |
| StructuredLinkedList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 5 deployments: ethereum `0xe40299...b6eb7e`; base `0xdd3aba...fc0865`; plasma `0x22adaa...820812`; arbitrum `0x5c72bd...c4845c`; linea `0x073633...57401a` | ⚠️ Unaudited |
| SubSaturateMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe51fc5...a08456` | ⚠️ Unaudited |
| SushiswapControllerV1 | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f2647...ec3bf5` | ⚠️ Unaudited |
| SushiswapControllerV2 | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40e2d2...87b747` | ⚠️ Unaudited |
| SwapperAdapter | adapter | project_anchor | own_integration_wrapper | 0 | plasma | n/a | 4 deployments: sonic `0x833adb...d3d4e3`; plasma `0x22babd...34c56f`; arbitrum `0xac2e82...cad295`; linea `0xdf0797...a075ff` | ⚠️ Unaudited |
| SwapRouter | unknown | project_anchor | own_supporting | 0 | base | unit-228206 | `0x23783e...b85666` | ⚠️ Unaudited |
| SwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: sonic `0x9b7d6e...4a3b10`; linea `0x8be024...a5052a` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | linea | unit-228192 | `0xf0e746...7956d1` | ⚠️ Unaudited |
| SwapRouterV2 | adapter | project_anchor | own_supporting | 0 | plasma | unit-228301 | `0xb4da8d...fbcbe6` | ⚠️ Unaudited |
| SwapRouterV2 | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228001 | `0x096f44...33e59a` | ⚠️ Unaudited |
| SwapRouterV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: ethereum `0x955b5a...4679ca`; sonic `0x7850cf...d3f1b9`; sonic `0xce96e2...66fc71`; base `0x77e11d...6e48dc`; arbitrum `0x0ed955...cde632`; arbitrum `0x11d14d...6f55e7`; arbitrum `0x4dd492...f6cd37`; arbitrum `0x5e4cb1...599da6` | ⚠️ Unaudited |
| SwapXClassicSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x09cf82...38eeb9` | ⚠️ Unaudited |
| SwapXConcentratedSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb4ed0b...5d3960` | ⚠️ Unaudited |
| SwethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227901 | `0x60e98e...ce3c9e` | ⚠️ Unaudited |
| SwethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227918 | `0x7cbbb3...ac7408` | ⚠️ Unaudited |
| SystemRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x1e4cb0...3acb29`; sonic `0x734f85...97d5b1` | ⚠️ Unaudited |
| SystemRegistryL2 | registry | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x1a912e...ad8848`; arbitrum `0x700915...c86a2f`; arbitrum `0x7af0c2...639b7c` | ⚠️ Unaudited |
| SystemRegistryL2 | unknown | project_anchor | own_supporting | 0 | base | unit-228202 | `0x18dc92...371b4e` | ⚠️ Unaudited |
| SystemRegistryL2 | registry | project_anchor | own_supporting | 0 | arbitrum | unit-228104 | `0xbfd8e6...7b4220` | ⚠️ Unaudited |
| SystemRegistryL2 | registry | project_anchor | own_supporting | 0 | linea | unit-228153 | `0x25f26e...a9f980` | ⚠️ Unaudited |
| SystemSecurityL1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227841 | `0x027a33...238833` | ⚠️ Unaudited |
| SystemSecurityL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: ethereum `0xe57a2e...f39b20`; sonic `0x4024de...a2f1a2`; sonic `0x479b70...0072af`; sonic `0xb960eb...ace4d2`; linea `0xa287f0...493e46` | ⚠️ Unaudited |
| SystemSecurityL1 | unknown | project_anchor | own_supporting | 0 | plasma | unit-228308 | `0xf8cda9...699834` | ⚠️ Unaudited |
| SystemSecurityL1 | unknown | project_anchor | own_supporting | 0 | linea | unit-228166 | `0x795abe...87f494` | ⚠️ Unaudited |
| SystemSecurityL2 | unknown | project_anchor | own_supporting | 0 | base | unit-228227 | `0x8c58af...8b4006` | ⚠️ Unaudited |
| SystemSecurityL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: base `0xb246f6...6192de`; arbitrum `0x062a72...948127`; arbitrum `0x63051c...05e6a1`; arbitrum `0x9b17ef...e08a96`; arbitrum `0xa19d96...44a44c` | ⚠️ Unaudited |
| SystemSecurityL2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228129 | `0xe7eeb1...96cf99` | ⚠️ Unaudited |
| TickLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x432a52...e8e2b8` | ⚠️ Unaudited |
| TimeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x869d1b...ae8917` | ⚠️ Unaudited |
| Toke | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e9d63...a38c94` | ⚠️ Unaudited |
| TokeMigrationPool | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa760e2...8eb930`; ethereum `0xdb7074...d1e86e` | ⚠️ Unaudited |
| TokenManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6d520c...bd8326`; ethereum `0xffec41...ed5020` | ⚠️ Unaudited |
| TokenMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x279c80...ea0a72` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b79e1...7659ea` | ⚠️ Unaudited |
| TokeVotePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc727de...6559e1` | ⚠️ Unaudited |
| TopWithdrawMonitor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x727313...97def9` | ⚠️ Unaudited |
| TracerDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x515f28...aa259a` | ⚠️ Unaudited |
| TracerMultisigDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa84918...6b6cba` | ⚠️ Unaudited |
| TransferController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d98a2...6d145e` | ⚠️ Unaudited |
| TransientStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 3 deployments: plasma `0x596bec...821254`; arbitrum `0xc54851...a30833`; arbitrum `0xedcce7...de9d51` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x38c279...4736c1`; ethereum `0x66ded3...d80176` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3bc59a...2d3671`; ethereum `0xc8e257...44da8a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x50b82e...80feea`; ethereum `0x93b34b...3d25f8`; ethereum `0xd54d2b...695bd1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: ethereum `0x378ba0...3fbaf8`; ethereum `0x7d4a5e...41fc96`; base `0x0f7485...ec6053`; base `0x277078...901ebf`; base `0x535158...e46ff0`; base `0x9ecdc0...fff6c4`; base `0xad68bd...d3db34`; arbitrum `0x01890e...744be4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0xf26431...1bb458` | ⚠️ Unaudited |
| UniProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x1dceb4...00c161`; ethereum `0x2ac79b...6706db`; ethereum `0x2c5114...01a111`; ethereum `0x785454...7448b3`; ethereum `0x7ab903...0ce316`; ethereum `0xe25811...ce869f` | ⚠️ Unaudited |
| UniswapController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89e8ea...5cce57` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5fa464...38c688`; ethereum `0xd4e7a6...647e38` | ⚠️ Unaudited |
| UniV3Swap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227848 | `0x106a60...73963d` | ⚠️ Unaudited |
| UniV3Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x31576c...ee4cf9`; sonic `0x5520f6...c4acf8`; base `0xec306b...30ced9`; plasma `0x90535f...55dcd1`; arbitrum `0xfe10f2...1dbffb` | ⚠️ Unaudited |
| UniV3Swap | unknown | project_anchor | own_supporting | 0 | base | unit-228200 | `0x0915f5...da6e71` | ⚠️ Unaudited |
| UniV3Swap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228005 | `0x0ca3d0...34bb42` | ⚠️ Unaudited |
| UniV3Swap | unknown | project_anchor | third_party_dependency | 0 | linea | unit-228148 | 2 deployments: linea `0x0093ff...b144c6`; linea `0xae315b...66bcc9` | ⚠️ Unaudited |
| UniV3SwapBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xad1ccb...d4eb7a` | ⚠️ Unaudited |
| UniV3SwapBase | unknown | project_anchor | own_supporting | 0 | base | unit-228280 | `0xe4fef2...68ca11` | ⚠️ Unaudited |
| UniversalRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x859744...07826e` | ⚠️ Unaudited |
| UpgradeableAutopoolFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-228105 | `0xc08f39...a917a7` | ⚠️ Unaudited |
| UpgradeableAutopoolFactory | registry | project_anchor | own_supporting | 0 | linea | unit-228149 | `0x01890e...744be4` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x886ce9...62399d`; ethereum `0x8f5930...95da47` | ⚠️ Unaudited |
| veFPISYieldDistributorV5 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6d31c...b802f6` | ⚠️ Unaudited |
| veFXSYieldDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19a0a7...1d50f0` | ⚠️ Unaudited |
| veFXSYieldDistributorV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed2647...e3d3fe` | ⚠️ Unaudited |
| veFXSYieldDistributorV4 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6764e...1fa872` | ⚠️ Unaudited |
| Visor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x00ae28...e17b0d`; ethereum `0x08fb62...de76e9`; ethereum `0x17cc4e...cd2f79`; ethereum `0x8398a3...0e38f2`; ethereum `0x8daed2...c7752c`; ethereum `0xe2696f...94502d`; ethereum `0xf62dff...e16d04` | ⚠️ Unaudited |
| VisorFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae0323...e6f20a` | ⚠️ Unaudited |
| Vote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x388cff...8d0fb9` | ⚠️ Unaudited |
| VoteModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0xedd7cb...9c15b1`; linea `0xf70dc8...631ee4` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 7 deployments: linea `0x1dac11...a94046`; linea `0x4961f7...fc7679`; linea `0x5f26a6...06fc19`; linea `0x706e4a...f157e1`; linea `0xa0b937...d4f116`; linea `0xade917...9d56d1`; linea `0xe8e8e8...2f8468` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x56ebcf...dd256f`; linea `0x982c01...caa125` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x942117...f889c1` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 86 deployments: ethereum `0x02d341...1b285c`; ethereum `0x055be5...ca7222`; ethereum `0x063254...faf14e`; ethereum `0x08380a...a3027c`; ethereum `0x094d12...bc6332`; ethereum `0x0ce6a5...627caa`; ethereum `0x0f9cb5...bc83e1`; ethereum `0x11137b...040ab1`; ethereum `0x11f419...b3902c`; ethereum `0x182b72...453c28`; ethereum `0x194ebd...8411d1`; ethereum `0x1aef73...c862e6`; ethereum `0x1cebdb...b8a3a6`; ethereum `0x1de7f0...cda1f2`; ethereum `0x2dded6...ecfeaf`; ethereum `0x2fe94e...f9d614`; ethereum `0x3669c4...fce737`; ethereum `0x3a664a...7337b9`; ethereum `0x3b7020...935855`; ethereum `0x3c0fff...e1d238`; ethereum `0x3c8cae...ae4940`; ethereum `0x3e01dd...8af0fb`; ethereum `0x410e3e...d93c2a`; ethereum `0x42d702...7f053a`; ethereum `0x462253...22ca39`; ethereum `0x4bfb2f...dc8676`; ethereum `0x4f3e8f...811522`; ethereum `0x4fd86c...3a04bc`; ethereum `0x5282a4...13638c`; ethereum `0x53a901...4669d5`; ethereum `0x571ff5...bb4091`; ethereum `0x58a3c6...70ee47`; ethereum `0x5b5cfe...003858`; ethereum `0x6070fb...74c017`; ethereum `0x61e106...4996d0`; ethereum `0x64448b...b7136e`; ethereum `0x6955a5...c11f15`; ethereum `0x6d10ed...695707`; ethereum `0x6d65b4...40fb8f`; ethereum `0x7e1444...f13be1`; ethereum `0x7eb40e...f55ae6`; ethereum `0x8038c0...ecc10c`; ethereum `0x803a2b...2874c2`; ethereum `0x824f13...77a637`; ethereum `0x8474dd...dec9f6`; ethereum `0x890f4e...86985f`; ethereum `0x8925d9...a144b9`; ethereum `0x90e00a...c2d7f5`; ethereum `0x94e131...361b53`; ethereum `0x9582c4...b9c477`; ethereum `0x97e276...19b787`; ethereum `0xa3d87f...b74a9c`; ethereum `0xa464e6...8922dc`; ethereum `0xa96a65...f53ae2`; ethereum `0xaa17a2...c0a6cf`; ethereum `0xaa82ca...ddc78c`; ethereum `0xb0a071...f52f2d`; ethereum `0xb9fc15...c990d4`; ethereum `0xbe1751...a0fbd5`; ethereum `0xc2b1df...0bf627`; ethereum `0xc45b2e...93c756`; ethereum `0xc5424b...db4567`; ethereum `0xc5cfad...39b023`; ethereum `0xc8418a...adc5b0`; ethereum `0xcee60c...656f3a`; ethereum `0xd30dd0...225ac8`; ethereum `0xd5bcf5...570c8d`; ethereum `0xd66290...588b5d`; ethereum `0xd7d147...9fa416`; ethereum `0xd81da8...51f8dd`; ethereum `0xd8b712...866ddf`; ethereum `0xdc2431...f67022`; ethereum `0xde5331...6331e8`; ethereum `0xdebf20...8a8eee`; ethereum `0xdefd8f...6b2168`; ethereum `0xe7a24e...d7d171`; ethereum `0xeb16ae...65a733`; ethereum `0xecb456...e9b347`; ethereum `0xf178c0...c623c0`; ethereum `0xf1f85a...236adc`; ethereum `0xf5194c...c1949f`; ethereum `0xf94409...1de7a8`; ethereum `0xf98450...24cfc4`; ethereum `0xfa9a30...f67e58`; ethereum `0xfd2a8f...c14900`; ethereum `0xfd4d8a...06c87d` | ⚠️ Unaudited |
| WethController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3eb1b5...dc0a23` | ⚠️ Unaudited |
| WithdrawalQueue | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 5 deployments: ethereum `0x865a21...a5bb15`; base `0x7bce7f...1d9d4d`; plasma `0x6da532...75acda`; arbitrum `0xc5827c...c678a9`; linea `0x02a50c...e9352c` | ⚠️ Unaudited |
| WrapZeroCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x148cc2...71b298`; ethereum `0x35d305...ad4578`; ethereum `0x6daa9d...57e19d`; ethereum `0x7a4818...944d87`; ethereum `0x9cd467...430dfe`; ethereum `0xbc2d91...0c2899`; ethereum `0xda5bdd...8095d3`; ethereum `0xf5bb0a...323157`; ethereum `0xfd4026...1a4f2b` | ⚠️ Unaudited |
| WstETHEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227867 | `0x31fec5...5af883` | ⚠️ Unaudited |
| xGamma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x268050...747d8c` | ⚠️ Unaudited |
| XRex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x58d034...146997`; linea `0xc93b31...f366cc` | ⚠️ Unaudited |
| ZeroCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: ethereum `0x3818d3...736d28`; ethereum `0x88761c...6e6b4e`; sonic `0xf0be36...07ed33`; base `0x293f40...059144`; base `0x52282f...2738e2`; base `0x74b6cc...c76902`; plasma `0x2be9f3...beec61`; plasma `0xf58d7b...3da687`; arbitrum `0x254d87...e6c563`; arbitrum `0xaabc17...6197f5`; linea `0x94f20c...af56fe` | ⚠️ Unaudited |
| ZeroExSwapper | adapter | project_anchor | own_supporting | 0 | linea | unit-228165 | `0x69c6fb...c0440e` | ⚠️ Unaudited |
| ZeroOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227906 | `0x655fa9...b8aa28` | ⚠️ Unaudited |
| ZeroOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228197 | `0x015546...a1d14d` | ⚠️ Unaudited |
| ZeroOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 5 deployments: sonic `0x7f61fd...f5bc63`; sonic `0xaf4c76...d5dc40`; sonic `0xd2926f...d0c69e`; plasma `0x6b7610...3d5d48`; arbitrum `0xc14caf...6133d3` | ⚠️ Unaudited |
| ZeroOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228035 | `0x42ecca...d23713` | ⚠️ Unaudited |
| ZeroOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-228188 | `0xd7c964...b24841` | ⚠️ Unaudited |
| ZkAddressRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37076f...3d9eb2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x1ddf72...7944b3`; linea `0xd766d9...c4a200` | ⚠️ Unaudited (bytecode match) |
| UpgradeableAutopoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 15 deployments: ethereum `0x2567c9...05e59f`; ethereum `0x2b2ca9...1ceb72`; ethereum `0x866cf4...11c4ce`; ethereum `0x90f74a...95cd35`; sonic `0x00d9ca...f489af`; sonic `0x865774...c55b70`; sonic `0x98bbb7...6b38e8`; sonic `0xe76266...e5c9e8`; base `0x02fe08...e44d89`; base `0xc1e701...a34f79`; base `0xd0446a...1bd4e4`; base `0xdbb093...c2dc21`; base `0xdd08e4...b32b9e`; base `0xdf6dc6...699cd8`; arbitrum `0x9f76d5...08d7fb` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (129)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227844 | `0x084e65...f25a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0882ab...e7da64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14458f...c138a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16fff7...f054c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17e870...4ff07f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18dc92...371b4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a912e...ad8848` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227854 | `0x1abd04...0f356e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c5868...ccba7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227855 | `0x1ea622...f08573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2650d4...72e28f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d363d...d55111` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227879 | `0x40219b...4791d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227880 | `0x408b6a...42df36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227883 | `0x4a3688...730e91` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227886 | `0x4c70ef...cc1c58` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227887 | `0x4d37d7...2a34d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58edd1...daa754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c99be...0aeb05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f13ab...9bc520` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227899 | `0x603390...972cca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227903 | `0x620ffc...e89bc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65f0a0...227711` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dbe14...3f11f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x767789...04b9ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227916 | `0x79eb84...0aa54d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227917 | `0x7c19e6...665a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87fab8...380f68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cccdb...3e6a1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9065c0...187d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92872b...367057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94f13c...276df8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98801b...b33082` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98ddbb...4130cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227933 | `0x9abe58...354404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9be019...558103` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227940 | `0xa7569a...d80d35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabadfe...1e1907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaedc80...b5cc14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227958 | `0xba1462...73e01a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfd8e6...7b4220` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227960 | `0xc4eb86...eda30b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc63b77...01bd87` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227961 | `0xc7c77b...53ba38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227963 | `0xcb29d4...4bc3ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227965 | `0xd1e668...c98709` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227966 | `0xd3bf4a...612081` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227968 | `0xd460a3...9ad160` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227969 | `0xd48a39...fa0e4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227972 | `0xd8ef13...8125e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227977 | `0xdfe3fa...e86f0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe14833...100ad8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227981 | `0xe4433d...bffc04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5d263...92eeac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecaa8d...385e19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee04bd...fbc3cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeee291...cbe213` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227986 | `0xf4b143...96e23c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227989 | `0xf5c49c...825ab4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf721b9...9ac710` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227992 | `0xf9779a...25baac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff46eb...9086dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0387a5...c17d0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228199 | `0x08b061...713e4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0fec72...afa684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1e2fd1...572fbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x244717...1b3b73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x249acd...0a40e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228207 | `0x2a7a16...92b1ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2f1663...ed5697` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228215 | `0x4efcc0...73918b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x68c58d...4c5bd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7b229e...724b49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x819dbf...00f8df` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228226 | `0x859dda...29399b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x95a2d8...cc34c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228235 | `0x9c6864...84c831` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228250 | `0xb592c1...314498` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228255 | `0xbd0fe9...f29f6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc285c8...a2e696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd25751...c97332` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228283 | `0xeb042d...b02477` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228284 | `0xee5e75...10f3f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf73428...3305ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x0d8ea4...47668c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228288 | `0x0da0e8...54e1dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x162f49...b4b30f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x3540f2...654834` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228289 | `0x459386...067ccd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228291 | `0x4dd032...77e097` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228292 | `0x4ec8f8...83ec80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x58f411...3773a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228294 | `0x7bc604...560397` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228295 | `0x7bea14...ebe83d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228296 | `0x7de076...ffc1f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228298 | `0x8ccd47...00347d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228299 | `0x8dbad4...ae72e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228300 | `0x9065c0...187d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xac93ee...be4113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe3063e...8246a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xfc2337...8e5106` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228009 | `0x127563...ad9013` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228019 | `0x1bb923...23cdc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2218f9...aa4285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f465e...d60605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6aec50...339c2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa86e41...b86a14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228089 | `0xa9900b...1d447b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf4fc6...7373e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2edad...a888cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228139 | `0xf63b7f...46320c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x09e53a...83b9e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0c1de6...167d8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x10e5e0...cab7bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2acbdb...19d2a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x35e755...ad5a69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x631a30...4637f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7601df...7497b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x762e61...7ecb16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x88c987...d56756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x971634...461ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb39939...5f11f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd0dad8...1c3f5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228186 | `0xd1a652...bd792a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf36208...f1c721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfb8561...c4950d` | ❓ Unverified |
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
| plasma | `0x097080...c5d0c2` | ArraysConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
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
| ethereum | `0x8821a5...7cf6b8` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
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
| linea | `0x0288ef...246b19` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x25be90...498fd1` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x2844a0...6a26d8` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x218975...7a76f2` | BlockchainInfo | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4cb4b1...a64f99` | BridgedLSTCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x58897e...17943e` | BridgedLSTCalculator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x12d5aa...48b970` | Bytes32 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
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
| plasma | `0x22babd...34c56f` | SwapperAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
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
| native | 403 |
| upstream | 104 |
| standard_library | 20 |
| needs_review | 167 |

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
