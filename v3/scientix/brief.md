# Agentic Audit Brief: Scientix

## Project Overview

- Project: Scientix (`scientix`)
- Website: [https://scientix.finance](https://scientix.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:52.828Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc
- Contract surface: 129 unique implementations (129 raw deployments)
- DeFi Llama TVL: $379,954.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Synthetics. Structurally: 129 project-authored contract(s) across 1 chain(s); 10 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 15 common project-authored base contract(s) (upgradeabilityproxy, proxy, erc1967upgrade). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Hinkal** (`hinkal`) in the Alchemist, AlchemistEth, TransmuterEth subsystem.
8 audits inherited from `hinkal`, scoped to that subsystem.

Total inherited audits: 8. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 129; live-surface contracts included: 129 (129 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/129 (0.0%)
- Deployed-live implementations: 129 of 129 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/129
- Verified + Unaudited implementations: 129
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 129
- Raw deployments: 129
- Audits discovered: 8 (0 direct, 8 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 8 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (129)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x0159f4...31fe53`](./contracts/bsc-56/0x0159f44892ffed7bc9c00ac7ad3d60dcf331fe53/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x02da70...aa7442`](./contracts/bsc-56/0x02da7035bed00ae645516bdb0c282a7fd4aa7442/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x040a65...425da4`](./contracts/bsc-56/0x040a65cddb0b8c75c72936879aa603e0d7425da4/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x05bdf3...def62d`](./contracts/bsc-56/0x05bdf33f03017eafdeeccd68406e1281a1def62d/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x08fc9b...1c24e7`](./contracts/bsc-56/0x08fc9ba2cac74742177e0afc3dc8aed6961c24e7/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x10af39...06eeed`](./contracts/bsc-56/0x10af39eb499ba94fa0d1de1f6ba98b839206eeed/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x166f56...a17ec7`](./contracts/bsc-56/0x166f56f2eda9817cab77118ae4fcaa0002a17ec7/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x389126...5a4833`](./contracts/bsc-56/0x38912684b1d20fe9d725e8b39c39458fac5a4833/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x3fc149...952bf0`](./contracts/bsc-56/0x3fc149995021f1d7aec54d015dad3c7abc952bf0/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x4c7a42...0743bf`](./contracts/bsc-56/0x4c7a420142ec69c7df5c6c673d862b9e030743bf/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x5cb454...011f2b`](./contracts/bsc-56/0x5cb454fc86068e710212fbecbc93070b90011f2b/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x634902...40fc71`](./contracts/bsc-56/0x634902128543b25265da350e2d961c7ff540fc71/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x6bf5b3...feb343`](./contracts/bsc-56/0x6bf5b334409cc3fd336da9a2d3e3f9c870feb343/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x853dcb...43dcb3`](./contracts/bsc-56/0x853dcb694f74df5fd28b8fdec0be10b8ac43dcb3/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x94f5e8...dbe242`](./contracts/bsc-56/0x94f5e884e11fc054ca0b332e3a8773750bdbe242/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0xa48fea...4c0f21`](./contracts/bsc-56/0xa48fea4153c3bd79ce12220580f4a1e0974c0f21/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0xa7559b...748439`](./contracts/bsc-56/0xa7559bb0235a1c6003d0e48d2cfa89a6c8748439/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0xe8084d...e36d88`](./contracts/bsc-56/0xe8084d7ded35e2840386f04d609cdb49c7e36d88/) | ⚠️ Unaudited |
| AlpacaFeeder | unknown | bsc | n/a | [`0x25be5d...3f6fad`](./contracts/bsc-56/0x25be5dae973894acfa810e9f4db7e3d73a3f6fad/) | ⚠️ Unaudited |
| AlpacaOraclePriceFeed | unknown | bsc | n/a | [`0x333db3...a1c52b`](./contracts/bsc-56/0x333db3ede42a351fbcce6ef38ec35a74a9a1c52b/) | ⚠️ Unaudited |
| AlpacaStablecoin | unknown | bsc | n/a | [`0x561b8c...a1a0b4`](./contracts/bsc-56/0x561b8c4f2ac28801baf6a4461b63c954eea1a0b4/) | ⚠️ Unaudited |
| AlpacaStablecoinProxyActions | unknown | bsc | n/a | [`0x1391fb...bf1481`](./contracts/bsc-56/0x1391fb5efc2394f33930a0cffb9d407abdbf1481/) | ⚠️ Unaudited |
| AlpacaToken | unknown | bsc | n/a | [`0x8f0528...091d2f`](./contracts/bsc-56/0x8f0528ce5ef7b51152a59745befdd91d97091d2f/) | ⚠️ Unaudited |
| AusdPriceFeedKeepers | unknown | bsc | n/a | [`0x4acb44...7f303f`](./contracts/bsc-56/0x4acb447a4fc0fa7d95cfd8fef1131526cb7f303f/) | ⚠️ Unaudited |
| AuthTokenAdapter | unknown | bsc | n/a | [`0xb689c0...a951d5`](./contracts/bsc-56/0xb689c00e7d3897aaa505abace6a1b590b5a951d5/) | ⚠️ Unaudited |
| BookKeeper | unknown | bsc | n/a | [`0xc7d037...fb0e49`](./contracts/bsc-56/0xc7d037e67b09cb59c94e0fef231124fd01fb0e49/) | ⚠️ Unaudited |
| CakeMaxiWorker | unknown | bsc | n/a | [`0x025ba0...8199c2`](./contracts/bsc-56/0x025ba0e82d45e29e831c53637bea2ce9d88199c2/) | ⚠️ Unaudited |
| CakeMaxiWorker02 | unknown | bsc | n/a | [`0x0455ce...d8275d`](./contracts/bsc-56/0x0455ce6b16629883c52d54ac5d5fcb4622d8275d/) | ⚠️ Unaudited |
| CollateralPoolConfig | unknown | bsc | n/a | [`0x064bb6...6bdac1`](./contracts/bsc-56/0x064bb6eea2339cad2bdaf895c3d3728e2c6bdac1/) | ⚠️ Unaudited |
| DeltaNeutralVault | unknown | bsc | n/a | [`0xd22d90...ecbf99`](./contracts/bsc-56/0xd22d9012b1c06ae593d8f33b706becea58ecbf99/) | ⚠️ Unaudited |
| DeltaNeutralVaultConfig | unknown | bsc | n/a | [`0x30275f...fe700f`](./contracts/bsc-56/0x30275f8980ade89febfd93023a4af67da0fe700f/) | ⚠️ Unaudited |
| EmissionBridgeKeepers | unknown | bsc | n/a | [`0x64fe10...5284ae`](./contracts/bsc-56/0x64fe10f7afbc6ffbd8f849b7a36a3295c45284ae/) | ⚠️ Unaudited |
| FairLaunch | unknown | bsc | n/a | [`0xa625ab...489a8f`](./contracts/bsc-56/0xa625ab01b08ce023b2a342dbb12a16f2c8489a8f/) | ⚠️ Unaudited |
| FixedSpreadLiquidationStrategy | unknown | bsc | n/a | [`0x52d62b...50dbc1`](./contracts/bsc-56/0x52d62bd452b6b8d7d92ef4fe6e474fb55650dbc1/) | ⚠️ Unaudited |
| FlashMintModule | unknown | bsc | n/a | [`0x0a7233...96fbd6`](./contracts/bsc-56/0x0a7233ade189237e4ecc86ff201d3bac2c96fbd6/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | bsc | n/a | [`0xa43487...01d360`](./contracts/bsc-56/0xa43487b3a77de47cb0192f1aec43ea4e4701d360/) | ⚠️ Unaudited |
| GrassHouse | unknown | bsc | n/a | [`0x16716e...5981d7`](./contracts/bsc-56/0x16716ee0a61eb9a34b42327bf442f873f15981d7/) | ⚠️ Unaudited |
| GrassHouseGateway | unknown | bsc | n/a | [`0x503093...026ee5`](./contracts/bsc-56/0x50309398e3abcbd3357b0dd54a624c1251026ee5/) | ⚠️ Unaudited |
| LiquidationEngine | unknown | bsc | n/a | [`0x5aa539...9a7026`](./contracts/bsc-56/0x5aa539cbe3d5bbeb89f633946e64e3c3419a7026/) | ⚠️ Unaudited |
| MdexRestrictedStrategyLiquidate | unknown | bsc | n/a | [`0x812298...5ae475`](./contracts/bsc-56/0x812298f58b7cc413f06aa88f10fad71bd55ae475/) | ⚠️ Unaudited |
| MdexRestrictedStrategyPartialCloseLiquidate | unknown | bsc | n/a | [`0xd7103a...df68b4`](./contracts/bsc-56/0xd7103ac4c3b888fdfe9c7adbe596c15e5ddf68b4/) | ⚠️ Unaudited |
| MdexWorker02 | unknown | bsc | n/a | [`0xe9005e...e515b7`](./contracts/bsc-56/0xe9005e936d7d8d28b7c8151be39195744ae515b7/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | bsc | n/a | [`0x083c02...e58de7`](./contracts/bsc-56/0x083c022046df51f458709e1a5660b87754e58de7/) | ⚠️ Unaudited |
| OracleMedianizer | unknown | bsc | n/a | [`0x329796...738303`](./contracts/bsc-56/0x3297961610d8a64f41cb4f577448bf3a57738303/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0x53085b...95e8ae`](./contracts/bsc-56/0x53085b02955cfd2f884c58d19b8a35ef5095e8ae/) | ⚠️ Unaudited |
| PancakeswapV2RestrictedSingleAssetStrategyLiquidate | unknown | bsc | n/a | [`0x67420c...e3053f`](./contracts/bsc-56/0x67420cc8fda18b061fb4ba63777736cd8ae3053f/) | ⚠️ Unaudited |
| PancakeswapV2RestrictedSingleAssetStrategyPartialCloseLiquidate | unknown | bsc | n/a | [`0x23850a...7cc61c`](./contracts/bsc-56/0x23850a04f9dbf488780d998dd0048d472f7cc61c/) | ⚠️ Unaudited |
| PancakeswapV2RestrictedSingleAssetStrategyPartialCloseMinimizeTrading | unknown | bsc | n/a | [`0xd1b41e...d7c547`](./contracts/bsc-56/0xd1b41e43fe46db03959ee87dc00f498ae3d7c547/) | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyLiquidate | unknown | bsc | n/a | [`0x20ebee...108684`](./contracts/bsc-56/0x20ebee5d5127d47b686ecfacf548ca4a65108684/) | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyPartialCloseLiquidate | unknown | bsc | n/a | [`0x1313c5...e3ae55`](./contracts/bsc-56/0x1313c57c5db43f932a8c91e12d19c2890fe3ae55/) | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyPartialCloseMinimizeTrading | unknown | bsc | n/a | [`0x1fa4d6...87b464`](./contracts/bsc-56/0x1fa4d6a2498cbdec555fa727689f9b9d4587b464/) | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyWithdrawMinimizeTrading | unknown | bsc | n/a | [`0x32b02e...86e946`](./contracts/bsc-56/0x32b02e91dd0d7496ff34ebd9deb12973ee86e946/) | ⚠️ Unaudited |
| PancakeswapV2StrategyAddBaseTokenOnly | unknown | bsc | n/a | [`0x77d23a...bfb40e`](./contracts/bsc-56/0x77d23aff927f3d46e51d449372c957b3cbbfb40e/) | ⚠️ Unaudited |
| PancakeswapV2StrategyAddTwoSidesOptimalMigrate | unknown | bsc | n/a | [`0x02728b...f7bdd0`](./contracts/bsc-56/0x02728b3d91823c86e4009d2441d46e7397f7bdd0/) | ⚠️ Unaudited |
| PancakeswapV2StrategyLiquidate | unknown | bsc | n/a | [`0x4f3451...36f1df`](./contracts/bsc-56/0x4f34511e604a1795e854aef9d872cb9c9836f1df/) | ⚠️ Unaudited |
| PancakeswapV2StrategyWithdrawMinimizeTrading | unknown | bsc | n/a | [`0x811938...c1dcb3`](./contracts/bsc-56/0x811938726bc82da82fc4ac5de28851f27cc1dcb3/) | ⚠️ Unaudited |
| PancakeswapV2Worker02Migrate | unknown | bsc | n/a | [`0xbc13df...444d06`](./contracts/bsc-56/0xbc13df0cae75114a44c3d7acd6adfaa229444d06/) | ⚠️ Unaudited |
| PancakeswapWorker | unknown | bsc | n/a | [`0xb63acd...fb93f3`](./contracts/bsc-56/0xb63acd06c7d6ece492dfba61c606855e49fb93f3/) | ⚠️ Unaudited |
| PriceOracle | unknown | bsc | n/a | [`0x1afadb...3831af`](./contracts/bsc-56/0x1afadbe730d44b95aeec909846d4bfdd8d3831af/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x5379f3...94f452`](./contracts/bsc-56/0x5379f32c8d5f663eacb61eef63f722950294f452/) | ⚠️ Unaudited |
| ProxyWalletFactory | unknown | bsc | n/a | [`0x56f2d6...f4a116`](./contracts/bsc-56/0x56f2d6fe1acb1549a665ff3a6e7dc46753f4a116/) | ⚠️ Unaudited |
| RevenueTreasury | unknown | bsc | n/a | [`0x891100...8763cd`](./contracts/bsc-56/0x89110091631f49fdcb7141f791640096b98763cd/) | ⚠️ Unaudited |
| RevenueTreasuryKeepers | unknown | bsc | n/a | [`0xee6d18...553d7e`](./contracts/bsc-56/0xee6d18afaae3cbe2fce9b34edf0fdcf615553d7e/) | ⚠️ Unaudited |
| Scientist | unknown | bsc | n/a | [`0x1c25da...2e2b0e`](./contracts/bsc-56/0x1c25da226ab9f03d30243465dd83f18bc22e2b0e/) | ⚠️ Unaudited |
| ScientixToken | unknown | bsc | n/a | [`0x2cfc48...4c0aa5`](./contracts/bsc-56/0x2cfc48cdfea0678137854f010b5390c5144c0aa5/) | ⚠️ Unaudited |
| ScToken | unknown | bsc | n/a | [`0x0e5c2b...070fa7`](./contracts/bsc-56/0x0e5c2b15666eee4b66788e45cf4da0392c070fa7/) | ⚠️ Unaudited |
| Shield | unknown | bsc | n/a | [`0x1963f8...1b4656`](./contracts/bsc-56/0x1963f84395c8cf464e5483de7f2f434c3f1b4656/) | ⚠️ Unaudited |
| ShowStopper | unknown | bsc | n/a | [`0xc19c71...798558`](./contracts/bsc-56/0xc19c71a2fc7d67fb10ffe4e13dab3acfef798558/) | ⚠️ Unaudited |
| SimpleVault | unknown | bsc | n/a | [`0x27e283...bb7d4d`](./contracts/bsc-56/0x27e28316f5e54f1dae2112f8423a62df31bb7d4d/) | ⚠️ Unaudited |
| SingleAssetWorkerConfig | unknown | bsc | n/a | [`0x0a3617...b1f8aa`](./contracts/bsc-56/0x0a3617197113ed2a9bbcadfb3c4f417734b1f8aa/) | ⚠️ Unaudited |
| StablecoinAdapter | unknown | bsc | n/a | [`0x713130...cacce3`](./contracts/bsc-56/0x713130e882b1dcb9ea7d960119f7b62429cacce3/) | ⚠️ Unaudited |
| StaticPriceFeed | unknown | bsc | n/a | [`0x8ef228...0c50dc`](./contracts/bsc-56/0x8ef228fe83393411c434306bf7ce56532a0c50dc/) | ⚠️ Unaudited |
| StratAlpaca | unknown | bsc | n/a | [`0x08fc45...1cc70f`](./contracts/bsc-56/0x08fc457c814bbe1463bd53d4e92cc5b95e1cc70f/) | ⚠️ Unaudited |
| StrategyAddBaseTokenOnly | unknown | bsc | n/a | [`0x13c052...df99a7`](./contracts/bsc-56/0x13c052c34beaed5f7c4856faa4da0544b9df99a7/) | ⚠️ Unaudited |
| StrategyAddTwoSidesOptimal | unknown | bsc | n/a | [`0xabe593...1075a6`](./contracts/bsc-56/0xabe59308ac72f04b1a2d04175d5247ba981075a6/) | ⚠️ Unaudited |
| StrategyLiquidate | unknown | bsc | n/a | [`0x3af78a...cd2dc5`](./contracts/bsc-56/0x3af78aeb766059e2db89654ed438a8d976cd2dc5/) | ⚠️ Unaudited |
| StrategyOracleMinimize | unknown | bsc | n/a | [`0x45ce92...455451`](./contracts/bsc-56/0x45ce9276e6b62ebb91a6a866e49ceacec5455451/) | ⚠️ Unaudited |
| StrategyWithdrawMinimizeTrading | unknown | bsc | n/a | [`0xb7f711...765013`](./contracts/bsc-56/0xb7f7118b1a50a088fe50b335f743ccfbc2765013/) | ⚠️ Unaudited |
| StronkAlpaca | unknown | bsc | n/a | [`0x6f695b...6ce7a7`](./contracts/bsc-56/0x6f695bd5ffd25149176629f8491a5099426ce7a7/) | ⚠️ Unaudited |
| SystemDebtEngine | unknown | bsc | n/a | [`0x4c98c7...df1cb8`](./contracts/bsc-56/0x4c98c712da02d48fa3aa53dc3fe3e6754ddf1cb8/) | ⚠️ Unaudited |
| Timelock | unknown | bsc | n/a | [`0x2d5408...1d0a59`](./contracts/bsc-56/0x2d5408f2287bf9f9b05404794459a846651d0a59/) | ⚠️ Unaudited |
| TimeToken | unknown | bsc | n/a | [`0x793fd1...ea66fd`](./contracts/bsc-56/0x793fd18a518834f490ada1cc69a7ebf1e7ea66fd/) | ⚠️ Unaudited |
| TransmuterB | unknown | bsc | n/a | [`0x161b33...482d97`](./contracts/bsc-56/0x161b33850ff58463c0503365d52428b76a482d97/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x01cf56...55fcbc`](./contracts/bsc-56/0x01cf56544a303025c77c76ca77982cbd8655fcbc/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x03462f...7b0d9b`](./contracts/bsc-56/0x03462fb60aa5de5f1a068a597743f66e097b0d9b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x044420...3be745`](./contracts/bsc-56/0x0444201f61e06b35cab85807c2dc4764703be745/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x0768ef...fc6bee`](./contracts/bsc-56/0x0768ef9e891725c4c65f3e0fb671abcd66fc6bee/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x07767d...62f3ae`](./contracts/bsc-56/0x07767daf4e84bdaabf3a72c80cec8c8eb962f3ae/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x0780d4...3a181a`](./contracts/bsc-56/0x0780d461480a3386031498f264a91f3d473a181a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x08b5a9...5afc7e`](./contracts/bsc-56/0x08b5a95cb94f926a8b620e87ee92e675b35afc7e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x08ea5f...35787f`](./contracts/bsc-56/0x08ea5fb66ea41f236e3001d2655e43a1e735787f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x08fa2e...ca52bd`](./contracts/bsc-56/0x08fa2ed02ebdc97bad85ff6369c57c6280ca52bd/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x0d487b...941159`](./contracts/bsc-56/0x0d487bb18f4d7d0523abb12101e378d6bf941159/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x0ff370...2a91b3`](./contracts/bsc-56/0x0ff370c7e245992414bef2cacba369422d2a91b3/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x13e3bc...d30aea`](./contracts/bsc-56/0x13e3bc3c6a96ae3beadd1b08531fde979dd30aea/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x1d2416...7c01b4`](./contracts/bsc-56/0x1d24165cefa83c14559f67f819b61c2c857c01b4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x2b356b...e9778d`](./contracts/bsc-56/0x2b356b9cd4b00658facc35f4d031df528ee9778d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x2b9c18...f89559`](./contracts/bsc-56/0x2b9c18a7e2f067e006e4625a74174472e9f89559/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x3ffa4c...2e61b0`](./contracts/bsc-56/0x3ffa4cd446f8127db0ed316b1e952876be2e61b0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x41d2e4...fa1123`](./contracts/bsc-56/0x41d2e4ac5b7373041c06a9d331b0624142fa1123/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x44b930...93c617`](./contracts/bsc-56/0x44b930f2e53231b3f85495229ea644724c93c617/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x45040e...1129e6`](./contracts/bsc-56/0x45040e48c00b52d9c0bd11b8f577f188991129e6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x47f1c5...239b72`](./contracts/bsc-56/0x47f1c5f505043dee9604b98d99304f7ad4239b72/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x4f4054...c1cf43`](./contracts/bsc-56/0x4f4054b4d286213a39ca5b8ef89116ac62c1cf43/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x50e574...1ddab7`](./contracts/bsc-56/0x50e5748a2e9c5e05ba8b95549bf7b11da91ddab7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x632e03...d5517a`](./contracts/bsc-56/0x632e03943dd4c5c509486233b345fae86cd5517a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x665a8e...816ce2`](./contracts/bsc-56/0x665a8e4b88f6bfa984b1568505cb4545f7816ce2/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x8269bc...cca036`](./contracts/bsc-56/0x8269bc659c9d6fe14720e0e549d67a37bdcca036/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x878ef0...d26618`](./contracts/bsc-56/0x878ef0130340b8375de06287a47a6c9c2bd26618/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x8e5cfa...af6f16`](./contracts/bsc-56/0x8e5cfa7c06f187b56537f7f0cabfb55611af6f16/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xaba0b0...41ee19`](./contracts/bsc-56/0xaba0b03eaa3684eb84b51984add918290b41ee19/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xb7d85a...ad24a9`](./contracts/bsc-56/0xb7d85ab25b9d478961face285fa3d8aaecad24a9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xd16004...513fac`](./contracts/bsc-56/0xd16004424b9c3f0a7c74c4c8dcda0d8c4d513fac/) | ⚠️ Unaudited |
| TripleSlopeModel | unknown | bsc | n/a | [`0x375d32...d52b30`](./contracts/bsc-56/0x375d32fada30d7e6fea242fca221a22cc6d52b30/) | ⚠️ Unaudited |
| UpgradeableOwnableProxy | unknown | bsc | n/a | [`0x68145f...9efb9a`](./contracts/bsc-56/0x68145f3319f819b8e01dfa3c094fa8205e9efb9a/) | ⚠️ Unaudited |
| UpgradeableOwnableProxy | unknown | bsc | n/a | [`0x71c035...816e1f`](./contracts/bsc-56/0x71c035529bc37d44be67296b2d2f7e8974816e1f/) | ⚠️ Unaudited |
| UpgradeableOwnableProxy | unknown | bsc | n/a | [`0x808386...726ade`](./contracts/bsc-56/0x808386dece805422b6924d57adc1279cd0726ade/) | ⚠️ Unaudited |
| UpgradeableOwnableProxy | unknown | bsc | n/a | [`0xf92aba...b5b024`](./contracts/bsc-56/0xf92aba2a79dc133278de2cddb38db775a4b5b024/) | ⚠️ Unaudited |
| Vault | unknown | bsc | n/a | [`0x0e98f0...aae694`](./contracts/bsc-56/0x0e98f04411d43c800608ca5019c216c212aae694/) | ⚠️ Unaudited |
| VaultAip42 | unknown | bsc | n/a | [`0x5fd571...e67c26`](./contracts/bsc-56/0x5fd571bea8d104a28bfe44874f2aaf69f8e67c26/) | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyAddBaseTokenOnly | unknown | bsc | n/a | [`0x744bb9...fc21d3`](./contracts/bsc-56/0x744bb95c6f31a0b6f7e7b53c46342b42aafc21d3/) | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyLiquidate | unknown | bsc | n/a | [`0x64e7de...9935f7`](./contracts/bsc-56/0x64e7de687625981497f21bd31135f6a9049935f7/) | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyPartialCloseLiquidate | unknown | bsc | n/a | [`0x91c1f2...df2d24`](./contracts/bsc-56/0x91c1f2e7f7e6b77171ebda204f074a574edf2d24/) | ⚠️ Unaudited |
| WaultSwapWorker | unknown | bsc | n/a | [`0x9d97ba...d307de`](./contracts/bsc-56/0x9d97bad1fd253ba3ac46a8281ae6571ad6d307de/) | ⚠️ Unaudited |
| WNativeRelayer | unknown | bsc | n/a | [`0xe1d2ca...af0d3d`](./contracts/bsc-56/0xe1d2ca01bc88f325ff7266dd2165944f3caf0d3d/) | ⚠️ Unaudited |
| WorkerConfig | unknown | bsc | n/a | [`0x3175ec...884a11`](./contracts/bsc-56/0x3175ec52c36fff63dce00e8a50e6066d38884a11/) | ⚠️ Unaudited |
| xALPACA | unknown | bsc | n/a | [`0x6510b1...8d760a`](./contracts/bsc-56/0x6510b1825df7b0c665d92ab694dfbc0ed48d760a/) | ⚠️ Unaudited |
| YearnVaultAdapter | unknown | bsc | n/a | [`0x7da4b2...b55e15`](./contracts/bsc-56/0x7da4b286b24b85ba971f5f5f4375f71e15b55e15/) | ⚠️ Unaudited |
| YearnVaultAdapterWithIndirection | unknown | bsc | n/a | [`0xa96b31...6706b1`](./contracts/bsc-56/0xa96b313cb2e81505b306250946e3be86b26706b1/) | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Hinkal_Zokyo_Feb20th_2024.pdf](https://github.com/zokyo-sec/audit-reports/blob/main/Hinkal/Hinkal_Zokyo_Feb20th_2024.pdf) | unknown | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to Alchemist, AlchemistEth, TransmuterEth | n/a | 0 | n/a |
| [index.html](https://certificate.quantstamp.com/full/hinkal-protocol/66b9b783-8b42-4a4e-89ed-3ef2a2df5958/index.html) | Quantstamp | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to Alchemist, AlchemistEth, TransmuterEth | n/a | 0 | n/a |
| [www.zksecurity.xyz/reports/hinkal-audit](https://www.zksecurity.xyz/reports/hinkal-audit) | unknown | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to Alchemist, AlchemistEth, TransmuterEth | n/a | 0 | n/a |
| [immunefi.com/audit-competition/hinkal-iop/leaderboard](https://immunefi.com/audit-competition/hinkal-iop/leaderboard) | Immunefi | Contest | n/a | unknown | Inherited from Hinkal — forked code, scoped to Alchemist, AlchemistEth, TransmuterEth | n/a | 0 | n/a |
| [drive.google.com/file/d/1DomEnIQ0o4Fv7ELFvnVAIP9vgd6Ez__A/view](https://drive.google.com/file/d/1DomEnIQ0o4Fv7ELFvnVAIP9vgd6Ez__A/view?usp=sharing&utm_source=immunefi) | unknown | Contest | n/a | unknown | Inherited from Hinkal — forked code, scoped to Alchemist, AlchemistEth, TransmuterEth | n/a | 0 | n/a |
| [security-audits.md](https://hinkal-team.gitbook.io/hinkal/technical-description/security-audits.md) | yAudit | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to Alchemist, AlchemistEth, TransmuterEth | n/a | 0 | n/a |
| [drive.google.com/file/d/1A0kGmlg04X88-_c4uU0F5WvaMGTDUT3s/view](https://drive.google.com/file/d/1A0kGmlg04X88-_c4uU0F5WvaMGTDUT3s/view?usp=sharing) | Quantstamp | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to Alchemist, AlchemistEth, TransmuterEth | n/a | 0 | n/a |
| [drive.google.com/file/d/1SclKWU99HSVgVxfIh7zz4BWuJO46Jd9W/view](https://drive.google.com/file/d/1SclKWU99HSVgVxfIh7zz4BWuJO46Jd9W/view?usp=sharing) | Quantstamp | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to Alchemist, AlchemistEth, TransmuterEth | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 129 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19165] Hinkal_Zokyo_Feb20th_2024.pdf
- [19166] index.html
- [19167] www.zksecurity.xyz/reports/hinkal-audit
- [19168] immunefi.com/audit-competition/hinkal-iop/leaderboard
- [19169] drive.google.com/file/d/1DomEnIQ0o4Fv7ELFvnVAIP9vgd6Ez__A/view
- [19170] security-audits.md
- [19171] drive.google.com/file/d/1A0kGmlg04X88-_c4uU0F5WvaMGTDUT3s/view
- [19172] drive.google.com/file/d/1SclKWU99HSVgVxfIh7zz4BWuJO46Jd9W/view

Fork inheritance lineage and inherited audits are included when available.
