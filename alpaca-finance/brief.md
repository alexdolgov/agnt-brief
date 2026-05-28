# Agentic Audit Brief: Alpaca Finance

⚠️ Lifecycle status: DECLINING - TVL changed 3.5% over 90 days

## Project Overview

- Project: Alpaca Finance (`alpaca-finance`)
- Lifecycle: declining (Tier 0, 97.5% below peak)
- Generated: 2026-05-28T15:26:06.166Z
- Pipeline run: v2-pipeline-2026-05-28-8b27fb-06de
- Chains: bsc
- Contract surface: 144 unique implementations (550 raw deployments)
- DeFi Llama TVL: $46,096,508.00
- On-chain TVL (included contracts): $11,455,300.38
- TVL by chain: Bsc $11,455,300.38

## Project Description

Alpaca Finance is a DeFi protocol on BSC offering leveraged yield farming and a perpetual futures exchange. It enables users to borrow assets to amplify farming returns and trade derivatives with leverage.

### Architecture

Both families share infrastructure such as oracles (e.g., ChainLinkPriceOracle, BandPriceOracle), access control (AccessControlConfig), and the ALPACA token. The perpetual futures exchange uses its own stablecoin (AlpacaStablecoin) and debt engine, while leveraged farming relies on vaults, debt tokens, and DEX-specific workers.

## Audit Coverage Summary

- Verified implementations audited: 66/115 (57.4%)
- Verified + Unaudited implementations: 49
- Verified by bytecode match: 0
- Unverified implementations: 29
- Unique implementations: 144
- Raw deployments: 550
- Audits discovered: 22
- Scoreable audits (matched contracts): 17
- ASD (verified + unaudited TVL): $11,226,636.59
- Latest audit: 2022-03 (stale)
- Staleness: 0 fresh, 0 aging, 19 stale, 3 unknown
- Tier 1 coverage: 22.6% (SlowMist)
- Note: This protocol is classified as [declining]. ASD of $11,226,636.59 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 42 | 36.5% | 2022-02 |
| PeckShield | Tier 2 | 31 | 27.0% | 2022-03 |
| SlowMist | Tier 1 | 26 | 22.6% | 2021-11 |
| CertiK | Tier 2 | 18 | 15.7% | 2021-05 |
| yAudit | Tier 2 | 2 | 1.7% | 2021-07 |

## Contract Surface

### ✅ Verified + Audited (66)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AlpacaToken | token | bsc | [`0x8f0528...091d2f`](./contracts/bsc-56/0x8f0528ce5ef7b51152a59745befdd91d97091d2f/) | ✅ Audited |
| AlpacaStablecoin | token | bsc | 2 deployments: bsc [`0x561b8c...a1a0b4`](./contracts/bsc-56/0x561b8c4f2ac28801baf6a4461b63c954eea1a0b4/); bsc `0xdcecf0...d28a3f` | ✅ Audited |
| Vault | core_logic | bsc | 12 deployments: bsc [`0x0e98f0...aae694`](./contracts/bsc-56/0x0e98f04411d43c800608ca5019c216c212aae694/); bsc `0x15bc06...a63853`; bsc `0x3282d2...8cd3cd`; bsc `0x5353c5...835f06`; bsc `0x7eeaa9...b12da1`; bsc `0xac85fa...322c31`; bsc `0xcc7830...0e3a20`; bsc `0xce8ecb...b212fc`; bsc `0xcf33d2...6ce88b`; bsc `0xd50aab...99ab8e`; bsc `0xf097fc...3180d6`; bsc `0xf1be8e...16d421` | ✅ Audited |
| MdexRestrictedStrategyAddTwoSidesOptimal | core_logic | bsc | 9 deployments: bsc [`0x0768ef...fc6bee`](./contracts/bsc-56/0x0768ef9e891725c4c65f3e0fb671abcd66fc6bee/); bsc `0x090ff5...066137`; bsc `0x34cce2...77415a`; bsc `0x632188...a40214`; bsc `0xaa8f19...b710b4`; bsc `0xb16912...5833f9`; bsc `0xc9b12a...c8e7ad`; bsc `0xd8a128...599b7a`; bsc `0xf4c6b5...860593` | ✅ Audited |
| MdexRestrictedStrategyAddBaseTokenOnly | core_logic | bsc | 2 deployments: bsc [`0x632e03...d5517a`](./contracts/bsc-56/0x632e03943dd4c5c509486233b345fae86cd5517a/); bsc `0xeac60e...ff0548` | ✅ Audited |
| StrategyAddBaseTokenOnly | core_logic | bsc | 4 deployments: bsc [`0x13c052...df99a7`](./contracts/bsc-56/0x13c052c34beaed5f7c4856faa4da0544b9df99a7/); bsc `0x1dba79...bef2b5`; bsc `0x88d518...1d8550`; bsc `0xbbd346...269314` | ✅ Audited |
| StrategyAddTwoSidesOptimal | core_logic | bsc | 3 deployments: bsc [`0xabe593...1075a6`](./contracts/bsc-56/0xabe59308ac72f04b1a2d04175d5247ba981075a6/); bsc `0xb2de0a...9a8498`; bsc `0xd408e1...c590ed` | ✅ Audited |
| AccessControlConfig | governance | bsc | 2 deployments: bsc [`0x0780d4...3a181a`](./contracts/bsc-56/0x0780d461480a3386031498f264a91f3d473a181a/); bsc `0x6b6997...6e3e5f` | ✅ Audited |
| AlpacaOraclePriceFeed | operational_periphery | bsc | 2 deployments: bsc [`0x333db3...a1c52b`](./contracts/bsc-56/0x333db3ede42a351fbcce6ef38ec35a74a9a1c52b/); bsc `0x8cc012...b44a8a` | ✅ Audited |
| AlpacaStablecoinProxyActions | token | bsc | 2 deployments: bsc [`0x1391fb...bf1481`](./contracts/bsc-56/0x1391fb5efc2394f33930a0cffb9d407abdbf1481/); bsc `0x9d9507...681c0a` | ✅ Audited |
| AuthTokenAdapter | adapter | bsc | [`0xb689c0...a951d5`](./contracts/bsc-56/0xb689c00e7d3897aaa505abace6a1b590b5a951d5/) | ✅ Audited |
| BookKeeper | operational_periphery | bsc | 2 deployments: bsc [`0xc7d037...fb0e49`](./contracts/bsc-56/0xc7d037e67b09cb59c94e0fef231124fd01fb0e49/); bsc `0xd0aece...fd6e6c` | ✅ Audited |
| CakeMaxiWorker | unknown | bsc | [`0x025ba0...8199c2`](./contracts/bsc-56/0x025ba0e82d45e29e831c53637bea2ce9d88199c2/) | ✅ Audited |
| CakeMaxiWorker02 | unknown | bsc | 5 deployments: bsc [`0x0455ce...d8275d`](./contracts/bsc-56/0x0455ce6b16629883c52d54ac5d5fcb4622d8275d/); bsc `0x9cbc68...c959c9`; bsc `0xa14c9e...13a4d9`; bsc `0xc82aca...f6c8e3`; bsc `0xcdd640...dd2379` | ✅ Audited |
| ChainLinkPriceOracle | operational_periphery | bsc | [`0x634902...40fc71`](./contracts/bsc-56/0x634902128543b25265da350e2d961c7ff540fc71/) | ✅ Audited |
| CollateralPoolConfig | core_logic | bsc | 2 deployments: bsc [`0x064bb6...6bdac1`](./contracts/bsc-56/0x064bb6eea2339cad2bdaf895c3d3728e2c6bdac1/); bsc `0x06d280...e87162` | ✅ Audited |
| ConfigurableInterestVaultConfig | core_logic | bsc | 17 deployments: bsc [`0x01cf56...55fcbc`](./contracts/bsc-56/0x01cf56544a303025c77c76ca77982cbd8655fcbc/); bsc `0x09fd93...cbe57b`; bsc `0x0c1f04...bf83b3`; bsc `0x146135...b67bec`; bsc `0x238b84...ee3221`; bsc `0x53dbb7...b5dc01`; bsc `0x570222...00613f`; bsc `0x5fa7cb...fdca8c`; bsc `0x6cc80d...549fb8`; bsc `0x709b10...ce065b`; bsc `0x724e67...59c038`; bsc `0x8f8ed5...091284`; bsc `0xaf8db8...64c8bd`; bsc `0xc2f7c6...994ed3`; bsc `0xc60e83...7baaa3`; bsc `0xd7b805...2dbed4`; bsc `0xfe1699...2a05c4` | ✅ Audited |
| DebtToken | token | bsc | 12 deployments: bsc [`0x02da70...aa7442`](./contracts/bsc-56/0x02da7035bed00ae645516bdb0c282a7fd4aa7442/); bsc `0x036664...7dbf57`; bsc `0x11362e...a9db40`; bsc `0x205ec0...9f6fc6`; bsc `0x262de1...1b59b2`; bsc `0x3b4fbb...0fa4dc`; bsc `0x426bdf...c361f3`; bsc `0x513813...e22cec`; bsc `0x6a3487...2a55f9`; bsc `0x92110a...258fe6`; bsc `0xb76ed4...aeaf84`; bsc `0xd19d62...029ebd` | ✅ Audited |
| DeltaNeutralPancakeWorker02 | unknown | bsc | 6 deployments: bsc [`0x41d2e4...fa1123`](./contracts/bsc-56/0x41d2e4ac5b7373041c06a9d331b0624142fa1123/); bsc `0x4d5fc3...b8fe27`; bsc `0x5124ba...eb4f04`; bsc `0x539fc3...9e8dbd`; bsc `0x6e3314...463cef`; bsc `0xf9e292...3eeb70` | ✅ Audited |
| DeltaNeutralVault | core_logic | bsc | [`0xd22d90...ecbf99`](./contracts/bsc-56/0xd22d9012b1c06ae593d8f33b706becea58ecbf99/) | ✅ Audited |
| DeltaNeutralVaultConfig | core_logic | bsc | [`0x30275f...fe700f`](./contracts/bsc-56/0x30275f8980ade89febfd93023a4af67da0fe700f/) | ✅ Audited |
| DeltaNeutralVaultGateway | core_logic | bsc | 5 deployments: bsc [`0x1d2416...7c01b4`](./contracts/bsc-56/0x1d24165cefa83c14559f67f819b61c2c857c01b4/); bsc `0x595f76...796e2e`; bsc `0x933db5...ab9c6b`; bsc `0xd3f82e...ba413a`; bsc `0xdd0106...faf1c7` | ✅ Audited |
| FairLaunch | unknown | bsc | [`0xa625ab...489a8f`](./contracts/bsc-56/0xa625ab01b08ce023b2a342dbb12a16f2c8489a8f/) | ✅ Audited |
| FixedSpreadLiquidationStrategy | core_logic | bsc | 3 deployments: bsc [`0x52d62b...50dbc1`](./contracts/bsc-56/0x52d62bd452b6b8d7d92ef4fe6e474fb55650dbc1/); bsc `0x5af5c2...f8f6b7`; bsc `0x9fa028...10d6d1` | ✅ Audited |
| FlashMintModule | unknown | bsc | 2 deployments: bsc [`0x0a7233...96fbd6`](./contracts/bsc-56/0x0a7233ade189237e4ecc86ff201d3bac2c96fbd6/); bsc `0xe7a49a...f75de3` | ✅ Audited |
| GetPositions | unknown | bsc | 2 deployments: bsc [`0x878ef0...d26618`](./contracts/bsc-56/0x878ef0130340b8375de06287a47a6c9c2bd26618/); bsc `0x9f481c...17af03` | ✅ Audited |
| GrazingRange | unknown | bsc | 3 deployments: bsc [`0x6bf5b3...feb343`](./contracts/bsc-56/0x6bf5b334409cc3fd336da9a2d3e3f9c870feb343/); bsc `0x815c54...83b77f`; bsc `0xd50a06...9bb869` | ✅ Audited |
| IbTokenAdapter | adapter | bsc | 4 deployments: bsc [`0x2b356b...e9778d`](./contracts/bsc-56/0x2b356b9cd4b00658facc35f4d031df528ee9778d/); bsc `0x425b07...7dec64`; bsc `0x4bf047...1f6d39`; bsc `0x4f56a9...080e36` | ✅ Audited |
| IbTokenPriceFeed | operational_periphery | bsc | 5 deployments: bsc [`0x44b930...93c617`](./contracts/bsc-56/0x44b930f2e53231b3f85495229ea644724c93c617/); bsc `0x4a89f8...96f8ae`; bsc `0xbac9d8...d9df49`; bsc `0xbb403a...973d7d`; bsc `0xfb6a37...a00fd1` | ✅ Audited |
| LiquidationEngine | unknown | bsc | [`0x5aa539...9a7026`](./contracts/bsc-56/0x5aa539cbe3d5bbeb89f633946e64e3c3419a7026/) | ✅ Audited |
| MdexRestrictedStrategyLiquidate | core_logic | bsc | 2 deployments: bsc [`0x812298...5ae475`](./contracts/bsc-56/0x812298f58b7cc413f06aa88f10fad71bd55ae475/); bsc `0xbd2c6b...166f1d` | ✅ Audited |
| MdexRestrictedStrategyPartialCloseLiquidate | core_logic | bsc | 2 deployments: bsc [`0xd7103a...df68b4`](./contracts/bsc-56/0xd7103ac4c3b888fdfe9c7adbe596c15e5ddf68b4/); bsc `0xdaf720...cf373e` | ✅ Audited |
| MdexRestrictedStrategyPartialCloseMinimizeTrading | core_logic | bsc | 2 deployments: bsc [`0x665a8e...816ce2`](./contracts/bsc-56/0x665a8e4b88f6bfa984b1568505cb4545f7816ce2/); bsc `0x889346...5e5b29` | ✅ Audited |
| MdexRestrictedStrategyWithdrawMinimizeTrading | operational_periphery | bsc | 2 deployments: bsc [`0x47f1c5...239b72`](./contracts/bsc-56/0x47f1c5f505043dee9604b98d99304f7ad4239b72/); bsc `0xa5e98c...2a3463` | ✅ Audited |
| MdexWorker02 | unknown | bsc | [`0xe9005e...e515b7`](./contracts/bsc-56/0xe9005e936d7d8d28b7c8151be39195744ae515b7/) | ✅ Audited |
| OracleMedianizer | operational_periphery | bsc | 2 deployments: bsc [`0x329796...738303`](./contracts/bsc-56/0x3297961610d8a64f41cb4f577448bf3a57738303/); bsc `0x553b8a...2b880c` | ✅ Audited |
| PancakeswapV2RestrictedSingleAssetStrategyAddBaseTokenOnly | core_logic | bsc | 2 deployments: bsc [`0x5cb454...011f2b`](./contracts/bsc-56/0x5cb454fc86068e710212fbecbc93070b90011f2b/); bsc `0x9a5105...334d96` | ✅ Audited |
| PancakeswapV2RestrictedSingleAssetStrategyAddBaseWithFarm | core_logic | bsc | 5 deployments: bsc [`0x389126...5a4833`](./contracts/bsc-56/0x38912684b1d20fe9d725e8b39c39458fac5a4833/); bsc `0x67a2cd...3f50f0`; bsc `0x69b501...6ed0e1`; bsc `0x9a0bee...459b21`; bsc `0xb0951e...2ba029` | ✅ Audited |
| PancakeswapV2RestrictedSingleAssetStrategyLiquidate | core_logic | bsc | 3 deployments: bsc [`0x67420c...e3053f`](./contracts/bsc-56/0x67420cc8fda18b061fb4ba63777736cd8ae3053f/); bsc `0x6c0105...75d150`; bsc `0x75a6b8...565e83` | ✅ Audited |
| PancakeswapV2RestrictedSingleAssetStrategyPartialCloseLiquidate | core_logic | bsc | 2 deployments: bsc [`0x23850a...7cc61c`](./contracts/bsc-56/0x23850a04f9dbf488780d998dd0048d472f7cc61c/); bsc `0xa6b2a3...960843` | ✅ Audited |
| PancakeswapV2RestrictedSingleAssetStrategyWithdrawMinimizeTrading | operational_periphery | bsc | 2 deployments: bsc [`0x94f5e8...dbe242`](./contracts/bsc-56/0x94f5e884e11fc054ca0b332e3a8773750bdbe242/); bsc `0xb7025d...91df77` | ✅ Audited |
| PancakeswapV2RestrictedStrategyPartialCloseLiquidate | core_logic | bsc | 2 deployments: bsc [`0x1313c5...e3ae55`](./contracts/bsc-56/0x1313c57c5db43f932a8c91e12d19c2890fe3ae55/); bsc `0x436263...f45316` | ✅ Audited |
| PancakeswapV2Worker02 | unknown | bsc | 32 deployments: bsc [`0x03462f...7b0d9b`](./contracts/bsc-56/0x03462fb60aa5de5f1a068a597743f66e097b0d9b/); bsc `0x0e7b1e...119e2f`; bsc `0x1d0edc...985f42`; bsc `0x1dbdc3...0bdded`; bsc `0x255f31...907fdb`; bsc `0x2e7f32...176b1e`; bsc `0x315f5f...8fc726`; bsc `0x39bbc1...0258ca`; bsc `0x4193d3...ca015c`; bsc `0x4d3952...26991e`; bsc `0x532358...f36dca`; bsc `0x560173...316f0b`; bsc `0x651ebb...f5bfde`; bsc `0x68f131...1a5c34`; bsc `0x72bbcf...84b2a2`; bsc `0x730bce...26e472`; bsc `0x7be8f8...0063bd`; bsc `0x7d306d...804939`; bsc `0x807554...a73db2`; bsc `0x867d16...5e19c4`; bsc `0xa504af...e5d116`; bsc `0xa573ff...7c2ec8`; bsc `0xa726e9...6da393`; bsc `0xb6960f...ff521f`; bsc `0xb800a8...3f5bcf`; bsc `0xb8e0b4...7a5eda`; bsc `0xbd861f...22f373`; bsc `0xc69c8c...c3708b`; bsc `0xc796e4...c0878d`; bsc `0xcfe0fa...eff11f`; bsc `0xd890f5...fc9e11`; bsc `0xf80c39...4cbe62` | ✅ Audited |
| PancakeswapWorker | unknown | bsc | 2 deployments: bsc [`0xb63acd...fb93f3`](./contracts/bsc-56/0xb63acd06c7d6ece492dfba61c606855e49fb93f3/); bsc `0xd06d9b...62c0a0` | ✅ Audited |
| PositionManager | governance | bsc | 2 deployments: bsc [`0xaba0b0...41ee19`](./contracts/bsc-56/0xaba0b03eaa3684eb84b51984add918290b41ee19/); bsc `0xbedf10...d461b6` | ✅ Audited |
| PriceOracle | operational_periphery | bsc | 2 deployments: bsc [`0x1afadb...3831af`](./contracts/bsc-56/0x1afadbe730d44b95aeec909846d4bfdd8d3831af/); bsc `0x4c7fb2...6ca367` | ✅ Audited |
| ProxyWalletFactory | registry | bsc | [`0x56f2d6...f4a116`](./contracts/bsc-56/0x56f2d6fe1acb1549a665ff3a6e7dc46753f4a116/) | ✅ Audited |
| ProxyWalletRegistry | registry | bsc | 2 deployments: bsc [`0x13e3bc...d30aea`](./contracts/bsc-56/0x13e3bc3c6a96ae3beadd1b08531fde979dd30aea/); bsc `0x951eb3...3e320f` | ✅ Audited |
| Shield | unknown | bsc | [`0x1963f8...1b4656`](./contracts/bsc-56/0x1963f84395c8cf464e5483de7f2f434c3f1b4656/) | ✅ Audited |
| ShowStopper | unknown | bsc | [`0xc19c71...798558`](./contracts/bsc-56/0xc19c71a2fc7d67fb10ffe4e13dab3acfef798558/) | ✅ Audited |
| SimplePriceOracle | operational_periphery | bsc | 2 deployments: bsc [`0x166f56...a17ec7`](./contracts/bsc-56/0x166f56f2eda9817cab77118ae4fcaa0002a17ec7/); bsc `0x588c58...40f3c7` | ✅ Audited |
| SingleAssetWorkerConfig | governance | bsc | 3 deployments: bsc [`0x0a3617...b1f8aa`](./contracts/bsc-56/0x0a3617197113ed2a9bbcadfb3c4f417734b1f8aa/); bsc `0x9b659a...034d34`; bsc `0xfbefff...01bc27` | ✅ Audited |
| StabilityFeeCollector | unknown | bsc | 2 deployments: bsc [`0x45040e...1129e6`](./contracts/bsc-56/0x45040e48c00b52d9c0bd11b8f577f188991129e6/); bsc `0xe35e00...c00aa0` | ✅ Audited |
| StablecoinAdapter | adapter | bsc | 2 deployments: bsc [`0x713130...cacce3`](./contracts/bsc-56/0x713130e882b1dcb9ea7d960119f7b62429cacce3/); bsc `0xd409da...ce4749` | ✅ Audited |
| StableSwapModule | unknown | bsc | 2 deployments: bsc [`0xd16004...513fac`](./contracts/bsc-56/0xd16004424b9c3f0a7c74c4c8dcda0d8c4d513fac/); bsc `0xfbd7b6...cfb4f6` | ✅ Audited |
| StrategyLiquidate | core_logic | bsc | 4 deployments: bsc [`0x3af78a...cd2dc5`](./contracts/bsc-56/0x3af78aeb766059e2db89654ed438a8d976cd2dc5/); bsc `0xc1203f...93b465`; bsc `0xc7c025...1c86bb`; bsc `0xe28808...2243f1` | ✅ Audited |
| StrategyWithdrawMinimizeTrading | operational_periphery | bsc | [`0xb7f711...765013`](./contracts/bsc-56/0xb7f7118b1a50a088fe50b335f743ccfbc2765013/) | ✅ Audited |
| StrictAlpacaOraclePriceFeed | operational_periphery | bsc | 7 deployments: bsc [`0x2b9c18...f89559`](./contracts/bsc-56/0x2b9c18a7e2f067e006e4625a74174472e9f89559/); bsc `0x9cbb0e...0a93f1`; bsc `0x9f748f...9c0568`; bsc `0xde375d...4a0b61`; bsc `0xea4e46...d72ac7`; bsc `0xee1d99...190731`; bsc `0xf7e3b6...5cd534` | ✅ Audited |
| StronkAlpaca | unknown | bsc | [`0x6f695b...6ce7a7`](./contracts/bsc-56/0x6f695bd5ffd25149176629f8491a5099426ce7a7/) | ✅ Audited |
| SystemDebtEngine | unknown | bsc | 2 deployments: bsc [`0x4c98c7...df1cb8`](./contracts/bsc-56/0x4c98c712da02d48fa3aa53dc3fe3e6754ddf1cb8/); bsc `0xe09e20...501b0e` | ✅ Audited |
| Timelock | governance | bsc | [`0x2d5408...1d0a59`](./contracts/bsc-56/0x2d5408f2287bf9f9b05404794459a846651d0a59/) | ✅ Audited |
| TripleSlopeModel | unknown | bsc | 6 deployments: bsc [`0x375d32...d52b30`](./contracts/bsc-56/0x375d32fada30d7e6fea242fca221a22cc6d52b30/); bsc `0x4ed10e...bdab05`; bsc `0x607ed4...5f5d9f`; bsc `0xadcfbf...028e9c`; bsc `0xae9ee5...73f1ee`; bsc `0xb17e30...c31725` | ✅ Audited |
| WaultSwapRestrictedStrategyPartialCloseLiquidate | core_logic | bsc | 2 deployments: bsc [`0x91c1f2...df2d24`](./contracts/bsc-56/0x91c1f2e7f7e6b77171ebda204f074a574edf2d24/); bsc `0xfe49af...fdf073` | ✅ Audited |
| WaultSwapWorker02 | unknown | bsc | 32 deployments: bsc [`0x040a65...425da4`](./contracts/bsc-56/0x040a65cddb0b8c75c72936879aa603e0d7425da4/); bsc `0x0541c5...222b1d`; bsc `0x0c5ed4...94b9c2`; bsc `0x0e0806...1b281c`; bsc `0x184962...87e3ca`; bsc `0x195f4c...7cac7f`; bsc `0x20064f...50caf9`; bsc `0x29a08f...31c88a`; bsc `0x3483f1...48423f`; bsc `0x50441d...43fee9`; bsc `0x5894ac...b62355`; bsc `0x6169a9...7a51a7`; bsc `0x63dd2d...78c435`; bsc `0x684e33...f57dd8`; bsc `0x74c979...70e5f7`; bsc `0x774d12...2ad294`; bsc `0x813a9a...c3a7f4`; bsc `0x85fb19...46b0bf`; bsc `0x97d328...0a20f4`; bsc `0xb01a5f...5f6469`; bsc `0xb3e13a...75fa66`; bsc `0xb5000c...b9deda`; bsc `0xb5c425...3a00bb`; bsc `0xbe6bde...8babed`; bsc `0xcd4b63...29e88d`; bsc `0xe0d623...3c1581`; bsc `0xe29fd3...d36655`; bsc `0xe8323f...b46df4`; bsc `0xf4b424...9a7f57`; bsc `0xf9bda2...e04246`; bsc `0xfa4a3f...47ea66`; bsc `0xfaa8eb...0b8013` | ✅ Audited |
| WNativeRelayer | unknown | bsc | [`0xe1d2ca...af0d3d`](./contracts/bsc-56/0xe1d2ca01bc88f325ff7266dd2165944f3caf0d3d/) | ✅ Audited |
| WorkerConfig | governance | bsc | 5 deployments: bsc [`0x3175ec...884a11`](./contracts/bsc-56/0x3175ec52c36fff63dce00e8a50e6066d38884a11/); bsc `0x3dfc43...5b16b5`; bsc `0xadabc5...51a8f8`; bsc `0xc2d5cf...425857`; bsc `0xcbbc7f...fc429c` | ✅ Audited |

### ⚠️ Verified + Unaudited (49)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| VaultAip25 | core_logic | bsc | 2 deployments: bsc [`0x08fc9b...1c24e7`](./contracts/bsc-56/0x08fc9ba2cac74742177e0afc3dc8aed6961c24e7/); bsc `0xbff4a3...723afe` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyAddTwoSidesOptimal | core_logic | bsc | 6 deployments: bsc [`0x3fc149...952bf0`](./contracts/bsc-56/0x3fc149995021f1d7aec54d015dad3c7abc952bf0/); bsc `0x4a9675...392cda`; bsc `0x5f94f6...1f4001`; bsc `0x66c717...6f5242`; bsc `0xb9b876...91c610`; bsc `0xcb459b...15d7a5` | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyAddBaseTokenOnly | core_logic | bsc | 2 deployments: bsc [`0x744bb9...fc21d3`](./contracts/bsc-56/0x744bb95c6f31a0b6f7e7b53c46342b42aafc21d3/); bsc `0xebb8ba...94970d` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyAddBaseTokenOnly | core_logic | bsc | 2 deployments: bsc [`0x4c7a42...0743bf`](./contracts/bsc-56/0x4c7a420142ec69c7df5c6c673d862b9e030743bf/); bsc `0xb7da04...877009` | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyAddTwoSidesOptimal | core_logic | bsc | 4 deployments: bsc [`0xa7559b...748439`](./contracts/bsc-56/0xa7559bb0235a1c6003d0e48d2cfa89a6c8748439/); bsc `0xce37fd...0ec585`; bsc `0xd58b96...32ced3`; bsc `0xda5c06...e98586` | ⚠️ Unaudited |
| PancakeswapV2StrategyAddTwoSidesOptimal | core_logic | bsc | 5 deployments: bsc [`0xa48fea...4c0f21`](./contracts/bsc-56/0xa48fea4153c3bd79ce12220580f4a1e0974c0f21/); bsc `0xbbf2a7...1d8f06`; bsc `0xe3cbb6...79eef3`; bsc `0xf02be2...7f3a97`; bsc `0xf25034...121c45` | ⚠️ Unaudited |
| PancakeswapV2StrategyAddBaseTokenOnly | core_logic | bsc | 2 deployments: bsc [`0x77d23a...bfb40e`](./contracts/bsc-56/0x77d23aff927f3d46e51d449372c957b3cbbfb40e/); bsc `0xe38ebf...bed0be` | ⚠️ Unaudited |
| AdminFacet | unknown | bsc | [`0x18a15b...0fdc4e`](./contracts/bsc-56/0x18a15bf2aa1e514dc660cc4b08d05f9f6f0fdc4e/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | proxy | bsc | 69 deployments: bsc [`0x0159f4...31fe53`](./contracts/bsc-56/0x0159f44892ffed7bc9c00ac7ad3d60dcf331fe53/); bsc `0x05f34e...d85fb4`; bsc `0x091765...a2bb3a`; bsc `0x104c62...61545d`; bsc `0x10e691...594236`; bsc `0x158da8...951e59`; bsc `0x174e30...71f192`; bsc `0x1a174d...5f4db8`; bsc `0x20e5d4...365e82`; bsc `0x226bcb...a4c81f`; bsc `0x2c4a24...3bfd8c`; bsc `0x2ec106...52296b`; bsc `0x30a937...c0724e`; bsc `0x3be235...4c56eb`; bsc `0x3e0c8a...120934`; bsc `0x41c1d9...83c46f`; bsc `0x462bc5...207aaa`; bsc `0x4bfe94...bc1b5a`; bsc `0x50380a...0e6c90`; bsc `0x51782e...a5a695`; bsc `0x596958...e212c3`; bsc `0x5e2911...58f2e6`; bsc `0x61e58d...283c81`; bsc `0x6389ee...954962`; bsc `0x693430...8ea482`; bsc `0x6d203f...35378c`; bsc `0x74eec5...e68b1b`; bsc `0x7c9e73...87592f`; bsc `0x7f8be6...de0900`; bsc `0x844766...203f06`; bsc `0x86547e...2de1cc`; bsc `0x8ce75f...0dfeaa`; bsc `0x8e90eb...834a46`; bsc `0x90c9f3...28bb5e`; bsc `0x9328df...64b5f4`; bsc `0x93cf6e...6a4fdf`; bsc `0x946eb7...2581f7`; bsc `0x958bcc...240c15`; bsc `0x98b7e1...bb13a0`; bsc `0x9ed2ee...2f8f5a`; bsc `0xa09e12...78765f`; bsc `0xa8f37d...a82d51`; bsc `0xa964fc...9679a8`; bsc `0xaa5c95...e14124`; bsc `0xac712f...aa6682`; bsc `0xb222b4...54e1ee`; bsc `0xb2a587...24b891`; bsc `0xb63a71...887db2`; bsc `0xb82b93...017a14`; bsc `0xbde156...24a07c`; bsc `0xc40158...f1107a`; bsc `0xc5954c...66492b`; bsc `0xc5c5e6...cbf936`; bsc `0xc979ca...ec49ac`; bsc `0xcec250...e6780e`; bsc `0xd12b15...83353a`; bsc `0xd431e0...d60253`; bsc `0xd4bc4c...702285`; bsc `0xd6260d...39627f`; bsc `0xd7d069...fc0063`; bsc `0xd80783...f86f68`; bsc `0xd8bfe8...ee89cd`; bsc `0xddcf0f...f5f95e`; bsc `0xe36154...b01792`; bsc `0xe632ac...82b1fb`; bsc `0xe862d4...057130`; bsc `0xeb6e0b...7b7480`; bsc `0xebdecf...7073e7`; bsc `0xef1c5d...7d1bad` | ⚠️ Unaudited |
| AlpacaFeeder | unknown | bsc | [`0x25be5d...3f6fad`](./contracts/bsc-56/0x25be5dae973894acfa810e9f4db7e3d73a3f6fad/) | ⚠️ Unaudited |
| AusdPriceFeedKeepers | operational_periphery | bsc | [`0x4acb44...7f303f`](./contracts/bsc-56/0x4acb447a4fc0fa7d95cfd8fef1131526cb7f303f/) | ⚠️ Unaudited |
| BandPriceOracle | operational_periphery | bsc | 2 deployments: bsc [`0x08fa2e...ca52bd`](./contracts/bsc-56/0x08fa2ed02ebdc97bad85ff6369c57c6280ca52bd/); bsc `0x29d36f...8ec82a` | ⚠️ Unaudited |
| CakeMaxiWorker02MCV2 | unknown | bsc | 2 deployments: bsc [`0xe8084d...e36d88`](./contracts/bsc-56/0xe8084d7ded35e2840386f04d609cdb49c7e36d88/); bsc `0xecfb6e...4a14c9` | ⚠️ Unaudited |
| DeltaNeutralOracle | operational_periphery | bsc | 2 deployments: bsc [`0x08ea5f...35787f`](./contracts/bsc-56/0x08ea5fb66ea41f236e3001d2655e43a1e735787f/); bsc `0x5f4ea2...00e0a1` | ⚠️ Unaudited |
| DeltaNeutralPancakeMCV2Worker02 | unknown | bsc | 8 deployments: bsc [`0x07767d...62f3ae`](./contracts/bsc-56/0x07767daf4e84bdaabf3a72c80cec8c8eb962f3ae/); bsc `0x0d9faf...32efd9`; bsc `0x42da67...fb2b64`; bsc `0x4b70c4...7a4162`; bsc `0x54d321...ef4db5`; bsc `0x83a5d5...e52723`; bsc `0x8ef56e...2cb067`; bsc `0xfa4b1e...4fa832` | ⚠️ Unaudited |
| DeltaNeutralVaultConfig02 | core_logic | bsc | 4 deployments: bsc [`0x0ff370...2a91b3`](./contracts/bsc-56/0x0ff370c7e245992414bef2cacba369422d2a91b3/); bsc `0x1cdea8...71c754`; bsc `0x31e461...b72967`; bsc `0x5640ce...e56cf2` | ⚠️ Unaudited |
| EmissionBridgeKeepers | operational_periphery | bsc | [`0x64fe10...5284ae`](./contracts/bsc-56/0x64fe10f7afbc6ffbd8f849b7a36a3295c45284ae/) | ⚠️ Unaudited |
| EmissionForwarder | operational_periphery | bsc | 2 deployments: bsc [`0x4f4054...c1cf43`](./contracts/bsc-56/0x4f4054b4d286213a39ca5b8ef89116ac62c1cf43/); bsc `0x7e6f68...7227f7` | ⚠️ Unaudited |
| GrassHouse | unknown | bsc | 15 deployments: bsc [`0x16716e...5981d7`](./contracts/bsc-56/0x16716ee0a61eb9a34b42327bf442f873f15981d7/); bsc `0x35cba4...3e2ae5`; bsc `0x3a7023...292e6a`; bsc `0x3fd102...fdc4b4`; bsc `0x4c8f95...9f4c8a`; bsc `0x5876be...54dd6e`; bsc `0x58bd8f...f0c52a`; bsc `0x66877f...3c5ec7`; bsc `0x6efa50...1cdd16`; bsc `0x760455...132cd5`; bsc `0x980bfd...147379`; bsc `0xd31628...e444b4`; bsc `0xdd97a1...aafb2c`; bsc `0xdf4445...14a963`; bsc `0xf4d66c...f0d109` | ⚠️ Unaudited |
| GrassHouseGateway | unknown | bsc | [`0x503093...026ee5`](./contracts/bsc-56/0x50309398e3abcbd3357b0dd54a624c1251026ee5/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | bsc | 5 deployments: bsc [`0x083c02...e58de7`](./contracts/bsc-56/0x083c022046df51f458709e1a5660b87754e58de7/); bsc `0x60bc40...514105`; bsc `0x63c60b...dc4412`; bsc `0xa33ff7...50ce58`; bsc `0xd193b3...21c4bf` | ⚠️ Unaudited |
| PancakeswapV2MCV2Worker02 | unknown | bsc | 20 deployments: bsc [`0x05bdf3...def62d`](./contracts/bsc-56/0x05bdf33f03017eafdeeccd68406e1281a1def62d/); bsc `0x0ad12b...116089`; bsc `0x1eaaf5...aa4ee3`; bsc `0x32951e...82ac6c`; bsc `0x41867c...d2a94c`; bsc `0x4add84...56b5c3`; bsc `0x5c8035...0c5cb5`; bsc `0x7af938...6e16c4`; bsc `0x81b653...fc81cd`; bsc `0x831332...34b25a`; bsc `0x9b07de...57f7bf`; bsc `0x9b1398...e4d8bd`; bsc `0xa16441...052c5e`; bsc `0xa71381...272880`; bsc `0xbb77f1...e9e4c6`; bsc `0xbba4c9...3b1adf`; bsc `0xd62f15...371af6`; bsc `0xdcd9f0...795f80`; bsc `0xe90c44...f67273`; bsc `0xecb008...423f33` | ⚠️ Unaudited |
| PancakeswapV2RestrictedSingleAssetStrategyPartialCloseMinimizeTrading | core_logic | bsc | 2 deployments: bsc [`0xd1b41e...d7c547`](./contracts/bsc-56/0xd1b41e43fe46db03959ee87dc00f498ae3d7c547/); bsc `0xdd8a43...d98495` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyLiquidate | core_logic | bsc | 3 deployments: bsc [`0x20ebee...108684`](./contracts/bsc-56/0x20ebee5d5127d47b686ecfacf548ca4a65108684/); bsc `0x93e802...358796`; bsc `0x9da5d5...84d438` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyPartialCloseMinimizeTrading | core_logic | bsc | 2 deployments: bsc [`0x1fa4d6...87b464`](./contracts/bsc-56/0x1fa4d6a2498cbdec555fa727689f9b9d4587b464/); bsc `0x8dcec5...d286c2` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyWithdrawMinimizeTrading | operational_periphery | bsc | 2 deployments: bsc [`0x32b02e...86e946`](./contracts/bsc-56/0x32b02e91dd0d7496ff34ebd9deb12973ee86e946/); bsc `0x55fcc2...7a9419` | ⚠️ Unaudited |
| PancakeswapV2StrategyAddTwoSidesOptimalMigrate | core_logic | bsc | [`0x02728b...f7bdd0`](./contracts/bsc-56/0x02728b3d91823c86e4009d2441d46e7397f7bdd0/) | ⚠️ Unaudited |
| PancakeswapV2StrategyLiquidate | core_logic | bsc | 2 deployments: bsc [`0x4f3451...36f1df`](./contracts/bsc-56/0x4f34511e604a1795e854aef9d872cb9c9836f1df/); bsc `0xe574dc...874599` | ⚠️ Unaudited |
| PancakeswapV2StrategyWithdrawMinimizeTrading | operational_periphery | bsc | 2 deployments: bsc [`0x811938...c1dcb3`](./contracts/bsc-56/0x811938726bc82da82fc4ac5de28851f27cc1dcb3/); bsc `0x95ff13...f5401e` | ⚠️ Unaudited |
| PancakeswapV2Worker | unknown | bsc | 7 deployments: bsc [`0x10af39...06eeed`](./contracts/bsc-56/0x10af39eb499ba94fa0d1de1f6ba98b839206eeed/); bsc `0x462c2d...8f4e14`; bsc `0x7880fd...c2c8a3`; bsc `0x7d0ea8...45b0d2`; bsc `0x9e698f...b8d471`; bsc `0xad4e7e...e6b305`; bsc `0xcac73a...66b430` | ⚠️ Unaudited |
| PancakeswapV2Worker02Migrate | unknown | bsc | [`0xbc13df...444d06`](./contracts/bsc-56/0xbc13df0cae75114a44c3d7acd6adfaa229444d06/) | ⚠️ Unaudited |
| PCSFlashLiquidator | operational_periphery | bsc | 3 deployments: bsc [`0x0d487b...941159`](./contracts/bsc-56/0x0d487bb18f4d7d0523abb12101e378d6bf941159/); bsc `0x152461...48bf70`; bsc `0x514635...bb3398` | ⚠️ Unaudited |
| ProxyAdmin | governance | bsc | 2 deployments: bsc [`0x5379f3...94f452`](./contracts/bsc-56/0x5379f32c8d5f663eacb61eef63f722950294f452/); bsc `0xfca12e...edef72` | ⚠️ Unaudited |
| ProxyToken | token | bsc | 3 deployments: bsc [`0x50e574...1ddab7`](./contracts/bsc-56/0x50e5748a2e9c5e05ba8b95549bf7b11da91ddab7/); bsc `0x783495...a01e4f`; bsc `0xc04096...aaff05` | ⚠️ Unaudited |
| RevenueTreasury | operational_periphery | bsc | [`0x891100...8763cd`](./contracts/bsc-56/0x89110091631f49fdcb7141f791640096b98763cd/) | ⚠️ Unaudited |
| RevenueTreasury02 | operational_periphery | bsc | [`0x08b5a9...5afc7e`](./contracts/bsc-56/0x08b5a95cb94f926a8b620e87ee92e675b35afc7e/) | ⚠️ Unaudited |
| RevenueTreasuryKeepers | operational_periphery | bsc | [`0xee6d18...553d7e`](./contracts/bsc-56/0xee6d18afaae3cbe2fce9b34edf0fdcf615553d7e/) | ⚠️ Unaudited |
| ScientixFeeder | unknown | bsc | 3 deployments: bsc [`0x8269bc...cca036`](./contracts/bsc-56/0x8269bc659c9d6fe14720e0e549d67a37bdcca036/); bsc `0xd2a63d...c92def`; bsc `0xf64c61...aeeffd` | ⚠️ Unaudited |
| StaticPriceFeed | operational_periphery | bsc | 2 deployments: bsc [`0x8ef228...0c50dc`](./contracts/bsc-56/0x8ef228fe83393411c434306bf7ce56532a0c50dc/); bsc `0xd67286...a9eb45` | ⚠️ Unaudited |
| StrategyOracleMinimize | operational_periphery | bsc | 3 deployments: bsc [`0x45ce92...455451`](./contracts/bsc-56/0x45ce9276e6b62ebb91a6a866e49ceacec5455451/); bsc `0x55be65...8071be`; bsc `0x82573b...02df68` | ⚠️ Unaudited |
| TerminateAV02 | unknown | bsc | 4 deployments: bsc [`0x8e5cfa...af6f16`](./contracts/bsc-56/0x8e5cfa7c06f187b56537f7f0cabfb55611af6f16/); bsc `0x9fe961...a99aa1`; bsc `0xc57876...92cc94`; bsc `0xe9bd0b...b711ab` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | 51 deployments: bsc [`0x044420...3be745`](./contracts/bsc-56/0x0444201f61e06b35cab85807c2dc4764703be745/); bsc `0x0ec1b4...b7d413`; bsc `0x121752...42a608`; bsc `0x165102...099c25`; bsc `0x1c6231...dc082b`; bsc `0x224563...2f4c46`; bsc `0x2728ea...6b5252`; bsc `0x2ef53b...a185a3`; bsc `0x301897...1bdd60`; bsc `0x3da8c3...67ebbc`; bsc `0x44b386...06b3b4`; bsc `0x452fc4...65e252`; bsc `0x4633a1...852ee9`; bsc `0x4d2285...293851`; bsc `0x51b893...dd353c`; bsc `0x5342fb...3b6a58`; bsc `0x535991...57d9d3`; bsc `0x58a3ad...123c93`; bsc `0x594076...3c51d5`; bsc `0x5979ce...e71df9`; bsc `0x5effbf...9e6a7e`; bsc `0x6c8964...2c33f9`; bsc `0x6fee87...1ddc3c`; bsc `0x73c46d...fbfbd0`; bsc `0x800933...1e26d7`; bsc `0x8064f7...ebefeb`; bsc `0x8a426a...659aec`; bsc `0x8b4520...b4c349`; bsc `0x8fff07...09a9e9`; bsc `0x9140ab...c9ca0a`; bsc `0x94bd7c...1a425f`; bsc `0x9aaad0...23e00c`; bsc `0x9b601f...513318`; bsc `0x9f6125...22da8e`; bsc `0xa745bb...4764d8`; bsc `0xa7837a...785ffc`; bsc `0xb995c6...d350f7`; bsc `0xbeb7c0...31f6cd`; bsc `0xc25f74...eccb54`; bsc `0xc2f8cc...e59e23`; bsc `0xc42023...926584`; bsc `0xc4ed26...5d938b`; bsc `0xc836c3...ae546a`; bsc `0xc870e0...1e245d`; bsc `0xcaac62...405ccc`; bsc `0xcfbcb9...10cf84`; bsc `0xdb4a41...3f7968`; bsc `0xe62d49...d7d9da`; bsc `0xe93f5d...8b510b`; bsc `0xec4709...d48505`; bsc `0xfac289...bb9303` | ⚠️ Unaudited |
| VaultAip42 | core_logic | bsc | [`0x5fd571...e67c26`](./contracts/bsc-56/0x5fd571bea8d104a28bfe44874f2aaf69f8e67c26/) | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyLiquidate | core_logic | bsc | 3 deployments: bsc [`0x64e7de...9935f7`](./contracts/bsc-56/0x64e7de687625981497f21bd31135f6a9049935f7/); bsc `0xcae15b...085c28`; bsc `0xd7f9d5...0601e1` | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyPartialCloseMinimizeTrading | core_logic | bsc | 2 deployments: bsc [`0x3ffa4c...2e61b0`](./contracts/bsc-56/0x3ffa4cd446f8127db0ed316b1e952876be2e61b0/); bsc `0x83d6f3...26ad03` | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyWithdrawMinimizeTrading | operational_periphery | bsc | 2 deployments: bsc [`0x853dcb...43dcb3`](./contracts/bsc-56/0x853dcb694f74df5fd28b8fdec0be10b8ac43dcb3/); bsc `0xbf4c99...0f23eb` | ⚠️ Unaudited |
| WaultSwapWorker | unknown | bsc | [`0x9d97ba...d307de`](./contracts/bsc-56/0x9d97bad1fd253ba3ac46a8281ae6571ad6d307de/) | ⚠️ Unaudited |
| xALPACA | unknown | bsc | [`0x6510b1...8d760a`](./contracts/bsc-56/0x6510b1825df7b0c665d92ab694dfbc0ed48d760a/) | ⚠️ Unaudited |
| xALPACAMigrator | periphery | bsc | [`0xb7d85a...ad24a9`](./contracts/bsc-56/0xb7d85ab25b9d478961face285fa3d8aaecad24a9/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (29)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | bsc | `0x0eeca1...28561c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x14b3ca...1fee97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x14ddb0...28a08a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1e66af...e5ea84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x274dd0...338bb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x284e25...6ad406` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x28a717...1798df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x33c66c...bf1753` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x349dbc...ec5b80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4b8378...b5a3ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4eca08...0d30b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x564c51...20400a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x61d5e9...b081c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6a31f3...5094a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x799cb5...f2a55e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7a81cd...8b5ca6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7e1a28...afd0ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x83df8e...02353f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8511e6...bcfbee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8d6576...233a2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xabc591...7b6274` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb4529a...bf220f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcb1bf5...7f6b23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd3bb23...4be6c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd88579...feda39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe87822...f7372c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xec135a...b757f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf7524a...a61f44` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfe6586...9a578c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/add-collateral-routine/PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf) | PeckShield | Audit | 2021-08 | stale | Direct | contract_name | 37 | high |
| [Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/cakemaxi/Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 4 | high |
| [PeckShield-Audit-Report-Alpaca-CakeMaxi-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/cakemaxi/PeckShield-Audit-Report-Alpaca-CakeMaxi-v1.0.pdf) | PeckShield | Audit | 2021-06 | stale | Direct | contract_name | 1 | high |
| [Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/cakemaxi/Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 16 | high |
| [PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/delta-neutral/PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | 13 | high |
| [alpaca_v1.0-signed.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/delta-neutral/alpaca_v1.0-signed.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | 7 | high |
| [Alpaca_GrazingRange_SmartContractReview_fcd2f3c_Report.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/grazing-range/Alpaca_GrazingRange_SmartContractReview_fcd2f3c_Report.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 3 | high |
| [Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_1.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/grazing-range/Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_1.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 3 | high |
| [Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/mdex-integration/Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 20 | high |
| [Inspex_AUDIT2021009_Alpaca_OptimizedWorker_FinalReport_v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/optimized-worker/Inspex_AUDIT2021009_Alpaca_OptimizedWorker_FinalReport_v1.0.pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | 69 | high |
| [Smart Contract Security Audit Report - Alpaca Finance Oracle.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/oracle/Smart%20Contract%20Security%20Audit%20Report%20-%20Alpaca%20Finance%20Oracle.pdf) | yAudit | Audit | 2021-07 | stale | Direct | contract_name | 3 | high |
| [PeckShield-Audit-Report-Alpaca-PartialCloseStrategies-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/partial-close/PeckShield-Audit-Report-Alpaca-PartialCloseStrategies-v1.0.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | contract_name | 6 | high |
| [CertiK Security Assessment for Alpaca Finance 1.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/protocol/CertiK%20Security%20Assessment%20for%20Alpaca%20Finance%201.pdf) | CertiK | Audit | 2021-05 | stale | Direct | contract_name | 76 | high |
| [PeckShield-Audit-Report-Alpaca-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/protocol/PeckShield-Audit-Report-Alpaca-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name | 43 | high |
| [Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/spooky-minifl/Inspex_AUDIT2022008_Alpaca%20Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf) | unknown | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf](https://github.com/alpaca-finance/alpaca-stablecoin/blob/main/audits/Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | 53 | high |
| [PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf](https://github.com/alpaca-finance/alpaca-stablecoin/blob/main/audits/PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf) | PeckShield | Audit | 2021-11 | stale | Direct | contract_name | 18 | high |
| [SlowMist_Audit_Report_-_AlpacaStablecoin.pdf](https://github.com/alpaca-finance/alpaca-stablecoin/blob/main/audits/SlowMist_Audit_Report_-_AlpacaStablecoin.pdf) | SlowMist | Audit | 2021-11 | stale | Direct | contract_name | 56 | high |
| [PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf](https://github.com/alpaca-finance/alpies-contract/blob/main/audits/PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf) | PeckShield | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x744bb9...fc21d3`](./contracts/bsc-56/0x744bb95c6f31a0b6f7e7b53c46342b42aafc21d3/) | WaultSwapRestrictedStrategyAddBaseTokenOnly | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x77d23a...bfb40e`](./contracts/bsc-56/0x77d23aff927f3d46e51d449372c957b3cbbfb40e/) | PancakeswapV2StrategyAddBaseTokenOnly | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x18a15b...0fdc4e`](./contracts/bsc-56/0x18a15bf2aa1e514dc660cc4b08d05f9f6f0fdc4e/) | AdminFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x25be5d...3f6fad`](./contracts/bsc-56/0x25be5dae973894acfa810e9f4db7e3d73a3f6fad/) | AlpacaFeeder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4acb44...7f303f`](./contracts/bsc-56/0x4acb447a4fc0fa7d95cfd8fef1131526cb7f303f/) | AusdPriceFeedKeepers | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x64fe10...5284ae`](./contracts/bsc-56/0x64fe10f7afbc6ffbd8f849b7a36a3295c45284ae/) | EmissionBridgeKeepers | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x16716e...5981d7`](./contracts/bsc-56/0x16716ee0a61eb9a34b42327bf442f873f15981d7/) | GrassHouse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x503093...026ee5`](./contracts/bsc-56/0x50309398e3abcbd3357b0dd54a624c1251026ee5/) | GrassHouseGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x083c02...e58de7`](./contracts/bsc-56/0x083c022046df51f458709e1a5660b87754e58de7/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd1b41e...d7c547`](./contracts/bsc-56/0xd1b41e43fe46db03959ee87dc00f498ae3d7c547/) | PancakeswapV2RestrictedSingleAssetStrategyPartialCloseMinimizeTrading | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x20ebee...108684`](./contracts/bsc-56/0x20ebee5d5127d47b686ecfacf548ca4a65108684/) | PancakeswapV2RestrictedStrategyLiquidate | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1fa4d6...87b464`](./contracts/bsc-56/0x1fa4d6a2498cbdec555fa727689f9b9d4587b464/) | PancakeswapV2RestrictedStrategyPartialCloseMinimizeTrading | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x32b02e...86e946`](./contracts/bsc-56/0x32b02e91dd0d7496ff34ebd9deb12973ee86e946/) | PancakeswapV2RestrictedStrategyWithdrawMinimizeTrading | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x02728b...f7bdd0`](./contracts/bsc-56/0x02728b3d91823c86e4009d2441d46e7397f7bdd0/) | PancakeswapV2StrategyAddTwoSidesOptimalMigrate | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4f3451...36f1df`](./contracts/bsc-56/0x4f34511e604a1795e854aef9d872cb9c9836f1df/) | PancakeswapV2StrategyLiquidate | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x811938...c1dcb3`](./contracts/bsc-56/0x811938726bc82da82fc4ac5de28851f27cc1dcb3/) | PancakeswapV2StrategyWithdrawMinimizeTrading | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x891100...8763cd`](./contracts/bsc-56/0x89110091631f49fdcb7141f791640096b98763cd/) | RevenueTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xee6d18...553d7e`](./contracts/bsc-56/0xee6d18afaae3cbe2fce9b34edf0fdcf615553d7e/) | RevenueTreasuryKeepers | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8ef228...0c50dc`](./contracts/bsc-56/0x8ef228fe83393411c434306bf7ce56532a0c50dc/) | StaticPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x45ce92...455451`](./contracts/bsc-56/0x45ce9276e6b62ebb91a6a866e49ceacec5455451/) | StrategyOracleMinimize | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5fd571...e67c26`](./contracts/bsc-56/0x5fd571bea8d104a28bfe44874f2aaf69f8e67c26/) | VaultAip42 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x64e7de...9935f7`](./contracts/bsc-56/0x64e7de687625981497f21bd31135f6a9049935f7/) | WaultSwapRestrictedStrategyLiquidate | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6510b1...8d760a`](./contracts/bsc-56/0x6510b1825df7b0c665d92ab694dfbc0ed48d760a/) | xALPACA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 72 |
| upstream | 1 |
| standard_library | 32 |
| needs_review | 39 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=17
- Match method counts: extraction_exact=428

Zero-match audit list:

- [5775] Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf
- [5779] PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf
- [5780] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [5781] 0002-metadata-manifest-and-pull-command.md
- [5782] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
