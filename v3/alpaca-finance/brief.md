# Agentic Audit Brief: Alpaca Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 9.7% over 90 days

## Project Overview

- Project: Alpaca Finance (`alpaca-finance`)
- Lifecycle: declining (Tier 0, 97.9% below peak)
- Generated: 2026-07-03T21:05:26.640Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: bsc
- Contract surface: 109 unique implementations (245 raw deployments)
- DeFi Llama TVL: $39,030,090.00
- On-chain TVL (included contracts): $8,635,247.86
- TVL by chain: Bsc $8,635,247.86

## Project Description

Lending. Structurally: 120 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 12 common project-authored base contract(s) (upgradeabilityproxy, proxy, erc1967upgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 553; live-surface contracts included: 245 (216 live, 29 unknown).
- Excluded by liveness: 308 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 67/80 (83.8%)
- Deployed-live implementations: 80 of 109 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 67/80
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 29
- Unique implementations: 109
- Raw deployments: 245
- Audits discovered: 19 (19 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 17
- ASD (verified + unaudited TVL): $8,544,244.14
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 19 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 61 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: 2.5% (SlowMist)
- Note: This protocol is classified as [declining]. ASD of $8,544,244.14 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 53 | 66.3% | 2022-02 |
| PeckShield | Tier 2 | 24 | 30.0% | 2022-03 |
| CertiK | Tier 2 | 6 | 7.5% | 2021-05 |
| SlowMist | Tier 1 | 2 | 2.5% | 2021-11 |
| yAudit | Tier 2 | 2 | 2.5% | 2021-07 |

## Contract Surface

### ✅ Verified + Audited (67)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlpacaToken | token | bsc | n/a | [`0x8f0528...091d2f`](./contracts/bsc-56/0x8f0528ce5ef7b51152a59745befdd91d97091d2f/) | ✅ Audited |
| Vault | core_logic | bsc | n/a | 2 deployments: bsc [`0x3282d2...8cd3cd`](./contracts/bsc-56/0x3282d2a151ca00bfe7ed17aa16e42880248cd3cd/); bsc `0xf1be8e...16d421` | ✅ Audited |
| AccessControlConfig | unknown | bsc | n/a | 2 deployments: bsc [`0x0780d4...3a181a`](./contracts/bsc-56/0x0780d461480a3386031498f264a91f3d473a181a/); bsc `0x6b6997...6e3e5f` | ✅ Audited |
| AlpacaOraclePriceFeed | unknown | bsc | n/a | 2 deployments: bsc [`0x333db3...a1c52b`](./contracts/bsc-56/0x333db3ede42a351fbcce6ef38ec35a74a9a1c52b/); bsc `0x8cc012...b44a8a` | ✅ Audited |
| AlpacaStablecoin | unknown | bsc | n/a | 2 deployments: bsc [`0x561b8c...a1a0b4`](./contracts/bsc-56/0x561b8c4f2ac28801baf6a4461b63c954eea1a0b4/); bsc `0xdcecf0...d28a3f` | ✅ Audited |
| AlpacaStablecoinProxyActions | unknown | bsc | n/a | 2 deployments: bsc [`0x1391fb...bf1481`](./contracts/bsc-56/0x1391fb5efc2394f33930a0cffb9d407abdbf1481/); bsc `0x9d9507...681c0a` | ✅ Audited |
| AuthTokenAdapter | unknown | bsc | n/a | [`0xb689c0...a951d5`](./contracts/bsc-56/0xb689c00e7d3897aaa505abace6a1b590b5a951d5/) | ✅ Audited |
| BookKeeper | unknown | bsc | n/a | 2 deployments: bsc [`0xc7d037...fb0e49`](./contracts/bsc-56/0xc7d037e67b09cb59c94e0fef231124fd01fb0e49/); bsc `0xd0aece...fd6e6c` | ✅ Audited |
| CakeMaxiWorker | unknown | bsc | n/a | [`0x025ba0...8199c2`](./contracts/bsc-56/0x025ba0e82d45e29e831c53637bea2ce9d88199c2/) | ✅ Audited |
| CakeMaxiWorker02 | unknown | bsc | n/a | 2 deployments: bsc [`0x0455ce...d8275d`](./contracts/bsc-56/0x0455ce6b16629883c52d54ac5d5fcb4622d8275d/); bsc `0xa14c9e...13a4d9` | ✅ Audited |
| CakeMaxiWorker02 | unknown | bsc | n/a | 3 deployments: bsc [`0x9cbc68...c959c9`](./contracts/bsc-56/0x9cbc68b89fe7edde4609d0fcfca835c976c959c9/); bsc `0xc82aca...f6c8e3`; bsc `0xcdd640...dd2379` | ✅ Audited |
| ChainLinkPriceOracle | unknown | bsc | n/a | [`0x634902...40fc71`](./contracts/bsc-56/0x634902128543b25265da350e2d961c7ff540fc71/) | ✅ Audited |
| CollateralPoolConfig | unknown | bsc | n/a | [`0x064bb6...6bdac1`](./contracts/bsc-56/0x064bb6eea2339cad2bdaf895c3d3728e2c6bdac1/) | ✅ Audited |
| CollateralPoolConfig | unknown | bsc | n/a | [`0x06d280...e87162`](./contracts/bsc-56/0x06d280abee1073b83a01fe778b6145e850e87162/) | ✅ Audited |
| DeltaNeutralPancakeWorker02 | unknown | bsc | n/a | 5 deployments: bsc [`0x41d2e4...fa1123`](./contracts/bsc-56/0x41d2e4ac5b7373041c06a9d331b0624142fa1123/); bsc `0x5124ba...eb4f04`; bsc `0x539fc3...9e8dbd`; bsc `0x6e3314...463cef`; bsc `0xf9e292...3eeb70` | ✅ Audited |
| DeltaNeutralPancakeWorker02 | unknown | bsc | n/a | [`0x4d5fc3...b8fe27`](./contracts/bsc-56/0x4d5fc3f859acf7525d7bc0faf540b827d0b8fe27/) | ✅ Audited |
| DeltaNeutralVault | unknown | bsc | n/a | [`0xd22d90...ecbf99`](./contracts/bsc-56/0xd22d9012b1c06ae593d8f33b706becea58ecbf99/) | ✅ Audited |
| DeltaNeutralVaultConfig | unknown | bsc | n/a | [`0x30275f...fe700f`](./contracts/bsc-56/0x30275f8980ade89febfd93023a4af67da0fe700f/) | ✅ Audited |
| DeltaNeutralVaultGateway | unknown | bsc | n/a | 4 deployments: bsc [`0x1d2416...7c01b4`](./contracts/bsc-56/0x1d24165cefa83c14559f67f819b61c2c857c01b4/); bsc `0x595f76...796e2e`; bsc `0x933db5...ab9c6b`; bsc `0xd3f82e...ba413a` | ✅ Audited |
| DeltaNeutralVaultGateway | unknown | bsc | n/a | [`0xdd0106...faf1c7`](./contracts/bsc-56/0xdd0106c3f2d74ecbfd86f39f5639ca5a7efaf1c7/) | ✅ Audited |
| FairLaunch | unknown | bsc | n/a | [`0xa625ab...489a8f`](./contracts/bsc-56/0xa625ab01b08ce023b2a342dbb12a16f2c8489a8f/) | ✅ Audited |
| FixedSpreadLiquidationStrategy | unknown | bsc | n/a | 2 deployments: bsc [`0x52d62b...50dbc1`](./contracts/bsc-56/0x52d62bd452b6b8d7d92ef4fe6e474fb55650dbc1/); bsc `0x9fa028...10d6d1` | ✅ Audited |
| FixedSpreadLiquidationStrategy | unknown | bsc | n/a | [`0x5af5c2...f8f6b7`](./contracts/bsc-56/0x5af5c295300304d7988d5a6c7c7446d305f8f6b7/) | ✅ Audited |
| FlashMintModule | unknown | bsc | n/a | 2 deployments: bsc [`0x0a7233...96fbd6`](./contracts/bsc-56/0x0a7233ade189237e4ecc86ff201d3bac2c96fbd6/); bsc `0xe7a49a...f75de3` | ✅ Audited |
| GetPositions | unknown | bsc | n/a | 2 deployments: bsc [`0x878ef0...d26618`](./contracts/bsc-56/0x878ef0130340b8375de06287a47a6c9c2bd26618/); bsc `0x9f481c...17af03` | ✅ Audited |
| GrazingRange | unknown | bsc | n/a | 2 deployments: bsc [`0x6bf5b3...feb343`](./contracts/bsc-56/0x6bf5b334409cc3fd336da9a2d3e3f9c870feb343/); bsc `0x815c54...83b77f` | ✅ Audited |
| GrazingRange | unknown | bsc | n/a | [`0xd50a06...9bb869`](./contracts/bsc-56/0xd50a06e444d2a85098b3dbc66a5d1946789bb869/) | ✅ Audited |
| IbTokenAdapter | unknown | bsc | n/a | 4 deployments: bsc [`0x2b356b...e9778d`](./contracts/bsc-56/0x2b356b9cd4b00658facc35f4d031df528ee9778d/); bsc `0x425b07...7dec64`; bsc `0x4bf047...1f6d39`; bsc `0x4f56a9...080e36` | ✅ Audited |
| IbTokenPriceFeed | unknown | bsc | n/a | 4 deployments: bsc [`0x44b930...93c617`](./contracts/bsc-56/0x44b930f2e53231b3f85495229ea644724c93c617/); bsc `0x4a89f8...96f8ae`; bsc `0xbb403a...973d7d`; bsc `0xfb6a37...a00fd1` | ✅ Audited |
| IbTokenPriceFeed | unknown | bsc | n/a | [`0xbac9d8...d9df49`](./contracts/bsc-56/0xbac9d8d59dbb0e2a21cc75323c9c8a1abbd9df49/) | ✅ Audited |
| LiquidationEngine | unknown | bsc | n/a | [`0x5aa539...9a7026`](./contracts/bsc-56/0x5aa539cbe3d5bbeb89f633946e64e3c3419a7026/) | ✅ Audited |
| MdexRestrictedStrategyAddBaseTokenOnly | unknown | bsc | n/a | 2 deployments: bsc [`0x632e03...d5517a`](./contracts/bsc-56/0x632e03943dd4c5c509486233b345fae86cd5517a/); bsc `0xeac60e...ff0548` | ✅ Audited |
| MdexRestrictedStrategyAddTwoSidesOptimal | unknown | bsc | n/a | 9 deployments: bsc [`0x0768ef...fc6bee`](./contracts/bsc-56/0x0768ef9e891725c4c65f3e0fb671abcd66fc6bee/); bsc `0x090ff5...066137`; bsc `0x34cce2...77415a`; bsc `0x632188...a40214`; bsc `0xaa8f19...b710b4`; bsc `0xb16912...5833f9`; bsc `0xc9b12a...c8e7ad`; bsc `0xd8a128...599b7a`; bsc `0xf4c6b5...860593` | ✅ Audited |
| MdexRestrictedStrategyLiquidate | unknown | bsc | n/a | 2 deployments: bsc [`0x812298...5ae475`](./contracts/bsc-56/0x812298f58b7cc413f06aa88f10fad71bd55ae475/); bsc `0xbd2c6b...166f1d` | ✅ Audited |
| MdexRestrictedStrategyPartialCloseLiquidate | unknown | bsc | n/a | 2 deployments: bsc [`0xd7103a...df68b4`](./contracts/bsc-56/0xd7103ac4c3b888fdfe9c7adbe596c15e5ddf68b4/); bsc `0xdaf720...cf373e` | ✅ Audited |
| MdexRestrictedStrategyPartialCloseMinimizeTrading | unknown | bsc | n/a | 2 deployments: bsc [`0x665a8e...816ce2`](./contracts/bsc-56/0x665a8e4b88f6bfa984b1568505cb4545f7816ce2/); bsc `0x889346...5e5b29` | ✅ Audited |
| MdexRestrictedStrategyWithdrawMinimizeTrading | unknown | bsc | n/a | 2 deployments: bsc [`0x47f1c5...239b72`](./contracts/bsc-56/0x47f1c5f505043dee9604b98d99304f7ad4239b72/); bsc `0xa5e98c...2a3463` | ✅ Audited |
| MdexWorker02 | unknown | bsc | n/a | [`0xe9005e...e515b7`](./contracts/bsc-56/0xe9005e936d7d8d28b7c8151be39195744ae515b7/) | ✅ Audited |
| OracleMedianizer | unknown | bsc | n/a | 2 deployments: bsc [`0x329796...738303`](./contracts/bsc-56/0x3297961610d8a64f41cb4f577448bf3a57738303/); bsc `0x553b8a...2b880c` | ✅ Audited |
| PancakeswapV2RestrictedSingleAssetStrategyAddBaseTokenOnly | unknown | bsc | n/a | 2 deployments: bsc [`0x5cb454...011f2b`](./contracts/bsc-56/0x5cb454fc86068e710212fbecbc93070b90011f2b/); bsc `0x9a5105...334d96` | ✅ Audited |
| PancakeswapV2RestrictedSingleAssetStrategyAddBaseWithFarm | unknown | bsc | n/a | 5 deployments: bsc [`0x389126...5a4833`](./contracts/bsc-56/0x38912684b1d20fe9d725e8b39c39458fac5a4833/); bsc `0x67a2cd...3f50f0`; bsc `0x69b501...6ed0e1`; bsc `0x9a0bee...459b21`; bsc `0xb0951e...2ba029` | ✅ Audited |
| PancakeswapV2RestrictedSingleAssetStrategyLiquidate | unknown | bsc | n/a | 2 deployments: bsc [`0x67420c...e3053f`](./contracts/bsc-56/0x67420cc8fda18b061fb4ba63777736cd8ae3053f/); bsc `0x6c0105...75d150` | ✅ Audited |
| PancakeswapV2RestrictedSingleAssetStrategyLiquidate | unknown | bsc | n/a | [`0x75a6b8...565e83`](./contracts/bsc-56/0x75a6b8c95bb115706b111c50bcad3607b9565e83/) | ✅ Audited |
| PancakeswapV2RestrictedSingleAssetStrategyPartialCloseLiquidate | unknown | bsc | n/a | 2 deployments: bsc [`0x23850a...7cc61c`](./contracts/bsc-56/0x23850a04f9dbf488780d998dd0048d472f7cc61c/); bsc `0xa6b2a3...960843` | ✅ Audited |
| PancakeswapV2RestrictedSingleAssetStrategyWithdrawMinimizeTrading | unknown | bsc | n/a | 2 deployments: bsc [`0x94f5e8...dbe242`](./contracts/bsc-56/0x94f5e884e11fc054ca0b332e3a8773750bdbe242/); bsc `0xb7025d...91df77` | ✅ Audited |
| PancakeswapV2RestrictedStrategyPartialCloseLiquidate | unknown | bsc | n/a | 2 deployments: bsc [`0x1313c5...e3ae55`](./contracts/bsc-56/0x1313c57c5db43f932a8c91e12d19c2890fe3ae55/); bsc `0x436263...f45316` | ✅ Audited |
| PancakeswapV2Worker02 | unknown | bsc | n/a | 30 deployments: bsc [`0x03462f...7b0d9b`](./contracts/bsc-56/0x03462fb60aa5de5f1a068a597743f66e097b0d9b/); bsc `0x0e7b1e...119e2f`; bsc `0x1d0edc...985f42`; bsc `0x1dbdc3...0bdded`; bsc `0x255f31...907fdb`; bsc `0x2e7f32...176b1e`; bsc `0x315f5f...8fc726`; bsc `0x39bbc1...0258ca`; bsc `0x4193d3...ca015c`; bsc `0x4d3952...26991e`; bsc `0x532358...f36dca`; bsc `0x560173...316f0b`; bsc `0x651ebb...f5bfde`; bsc `0x68f131...1a5c34`; bsc `0x72bbcf...84b2a2`; bsc `0x730bce...26e472`; bsc `0x7be8f8...0063bd`; bsc `0x7d306d...804939`; bsc `0x807554...a73db2`; bsc `0x867d16...5e19c4`; bsc `0xa504af...e5d116`; bsc `0xa573ff...7c2ec8`; bsc `0xa726e9...6da393`; bsc `0xb800a8...3f5bcf`; bsc `0xb8e0b4...7a5eda`; bsc `0xbd861f...22f373`; bsc `0xc796e4...c0878d`; bsc `0xcfe0fa...eff11f`; bsc `0xd890f5...fc9e11`; bsc `0xf80c39...4cbe62` | ✅ Audited |
| PancakeswapV2Worker02 | unknown | bsc | n/a | 2 deployments: bsc [`0xb6960f...ff521f`](./contracts/bsc-56/0xb6960faf74e7ada47bcbb3923d793da253ff521f/); bsc `0xc69c8c...c3708b` | ✅ Audited |
| PositionManager | unknown | bsc | n/a | [`0xaba0b0...41ee19`](./contracts/bsc-56/0xaba0b03eaa3684eb84b51984add918290b41ee19/) | ✅ Audited |
| PositionManager | unknown | bsc | n/a | [`0xbedf10...d461b6`](./contracts/bsc-56/0xbedf10b8a2af77051d3d1f82c048c2eccfd461b6/) | ✅ Audited |
| PriceOracle | unknown | bsc | n/a | 2 deployments: bsc [`0x1afadb...3831af`](./contracts/bsc-56/0x1afadbe730d44b95aeec909846d4bfdd8d3831af/); bsc `0x4c7fb2...6ca367` | ✅ Audited |
| ProxyWalletFactory | unknown | bsc | n/a | [`0x56f2d6...f4a116`](./contracts/bsc-56/0x56f2d6fe1acb1549a665ff3a6e7dc46753f4a116/) | ✅ Audited |
| ProxyWalletRegistry | unknown | bsc | n/a | 2 deployments: bsc [`0x13e3bc...d30aea`](./contracts/bsc-56/0x13e3bc3c6a96ae3beadd1b08531fde979dd30aea/); bsc `0x951eb3...3e320f` | ✅ Audited |
| ShowStopper | unknown | bsc | n/a | [`0xc19c71...798558`](./contracts/bsc-56/0xc19c71a2fc7d67fb10ffe4e13dab3acfef798558/) | ✅ Audited |
| SingleAssetWorkerConfig | unknown | bsc | n/a | 3 deployments: bsc [`0x0a3617...b1f8aa`](./contracts/bsc-56/0x0a3617197113ed2a9bbcadfb3c4f417734b1f8aa/); bsc `0x9b659a...034d34`; bsc `0xfbefff...01bc27` | ✅ Audited |
| StabilityFeeCollector | unknown | bsc | n/a | 2 deployments: bsc [`0x45040e...1129e6`](./contracts/bsc-56/0x45040e48c00b52d9c0bd11b8f577f188991129e6/); bsc `0xe35e00...c00aa0` | ✅ Audited |
| StablecoinAdapter | unknown | bsc | n/a | 2 deployments: bsc [`0x713130...cacce3`](./contracts/bsc-56/0x713130e882b1dcb9ea7d960119f7b62429cacce3/); bsc `0xd409da...ce4749` | ✅ Audited |
| StableSwapModule | unknown | bsc | n/a | 2 deployments: bsc [`0xd16004...513fac`](./contracts/bsc-56/0xd16004424b9c3f0a7c74c4c8dcda0d8c4d513fac/); bsc `0xfbd7b6...cfb4f6` | ✅ Audited |
| StrictAlpacaOraclePriceFeed | unknown | bsc | n/a | 7 deployments: bsc [`0x2b9c18...f89559`](./contracts/bsc-56/0x2b9c18a7e2f067e006e4625a74174472e9f89559/); bsc `0x9cbb0e...0a93f1`; bsc `0x9f748f...9c0568`; bsc `0xde375d...4a0b61`; bsc `0xea4e46...d72ac7`; bsc `0xee1d99...190731`; bsc `0xf7e3b6...5cd534` | ✅ Audited |
| StronkAlpaca | unknown | bsc | n/a | [`0x6f695b...6ce7a7`](./contracts/bsc-56/0x6f695bd5ffd25149176629f8491a5099426ce7a7/) | ✅ Audited |
| SystemDebtEngine | unknown | bsc | n/a | 2 deployments: bsc [`0x4c98c7...df1cb8`](./contracts/bsc-56/0x4c98c712da02d48fa3aa53dc3fe3e6754ddf1cb8/); bsc `0xe09e20...501b0e` | ✅ Audited |
| Timelock | governance | bsc | n/a | [`0x2d5408...1d0a59`](./contracts/bsc-56/0x2d5408f2287bf9f9b05404794459a846651d0a59/) | ✅ Audited |
| WaultSwapRestrictedStrategyPartialCloseLiquidate | unknown | bsc | n/a | 2 deployments: bsc [`0x91c1f2...df2d24`](./contracts/bsc-56/0x91c1f2e7f7e6b77171ebda204f074a574edf2d24/); bsc `0xfe49af...fdf073` | ✅ Audited |
| WaultSwapWorker02 | unknown | bsc | n/a | 27 deployments: bsc [`0x040a65...425da4`](./contracts/bsc-56/0x040a65cddb0b8c75c72936879aa603e0d7425da4/); bsc `0x0541c5...222b1d`; bsc `0x0c5ed4...94b9c2`; bsc `0x0e0806...1b281c`; bsc `0x184962...87e3ca`; bsc `0x195f4c...7cac7f`; bsc `0x20064f...50caf9`; bsc `0x3483f1...48423f`; bsc `0x50441d...43fee9`; bsc `0x5894ac...b62355`; bsc `0x6169a9...7a51a7`; bsc `0x63dd2d...78c435`; bsc `0x684e33...f57dd8`; bsc `0x74c979...70e5f7`; bsc `0x774d12...2ad294`; bsc `0x813a9a...c3a7f4`; bsc `0xb01a5f...5f6469`; bsc `0xb3e13a...75fa66`; bsc `0xb5000c...b9deda`; bsc `0xb5c425...3a00bb`; bsc `0xbe6bde...8babed`; bsc `0xcd4b63...29e88d`; bsc `0xe0d623...3c1581`; bsc `0xe29fd3...d36655`; bsc `0xf4b424...9a7f57`; bsc `0xfa4a3f...47ea66`; bsc `0xfaa8eb...0b8013` | ✅ Audited |
| WaultSwapWorker02 | unknown | bsc | n/a | 2 deployments: bsc [`0x29a08f...31c88a`](./contracts/bsc-56/0x29a08f38af02fcc2a75e91144e3931e26d31c88a/); bsc `0xf9bda2...e04246` | ✅ Audited |
| WaultSwapWorker02 | unknown | bsc | n/a | 3 deployments: bsc [`0x85fb19...46b0bf`](./contracts/bsc-56/0x85fb19fc1fed868e65bdfec58e64cccb8546b0bf/); bsc `0x97d328...0a20f4`; bsc `0xe8323f...b46df4` | ✅ Audited |
| WorkerConfig | governance | bsc | n/a | [`0x3175ec...884a11`](./contracts/bsc-56/0x3175ec52c36fff63dce00e8a50e6066d38884a11/) | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultAip25 | core_logic | bsc | n/a | 2 deployments: bsc [`0x08fc9b...1c24e7`](./contracts/bsc-56/0x08fc9ba2cac74742177e0afc3dc8aed6961c24e7/); bsc `0xbff4a3...723afe` | ⚠️ Unaudited |
| AdminFacet | unknown | bsc | n/a | [`0x18a15b...0fdc4e`](./contracts/bsc-56/0x18a15bf2aa1e514dc660cc4b08d05f9f6f0fdc4e/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | proxy | bsc | n/a | 3 deployments: bsc [`0x158da8...951e59`](./contracts/bsc-56/0x158da805682bdc8ee32d52833ad41e74bb951e59/); bsc `0xd7d069...fc0063`; bsc `0xff6934...b147eb` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | proxy | bsc | n/a | [`0x7c9e73...87592f`](./contracts/bsc-56/0x7c9e73d4c71dae564d41f78d56439bb4ba87592f/) | ⚠️ Unaudited |
| DeltaNeutralPancakeMCV2Worker02 | unknown | bsc | n/a | 8 deployments: bsc [`0x07767d...62f3ae`](./contracts/bsc-56/0x07767daf4e84bdaabf3a72c80cec8c8eb962f3ae/); bsc `0x0d9faf...32efd9`; bsc `0x42da67...fb2b64`; bsc `0x4b70c4...7a4162`; bsc `0x54d321...ef4db5`; bsc `0x83a5d5...e52723`; bsc `0x8ef56e...2cb067`; bsc `0xfa4b1e...4fa832` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | n/a | [`0x18f59e...475d01`](./contracts/bsc-56/0x18f59e8dddef9e000863082a37fc56a2a5475d01/) | ⚠️ Unaudited |
| Multicall | periphery | bsc | n/a | [`0x41263c...90e76c`](./contracts/bsc-56/0x41263cba59eb80dc200f3e2544eda4ed6a90e76c/) | ⚠️ Unaudited |
| RevenueTreasury02 | operational_periphery | bsc | n/a | [`0x08b5a9...5afc7e`](./contracts/bsc-56/0x08b5a95cb94f926a8b620e87ee92e675b35afc7e/) | ⚠️ Unaudited |
| TerminateAV02 | unknown | bsc | n/a | 4 deployments: bsc [`0x8e5cfa...af6f16`](./contracts/bsc-56/0x8e5cfa7c06f187b56537f7f0cabfb55611af6f16/); bsc `0x9fe961...a99aa1`; bsc `0xc57876...92cc94`; bsc `0xe9bd0b...b711ab` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | [`0x6fee87...1ddc3c`](./contracts/bsc-56/0x6fee87f744fc612948001b09b2808c87b91ddc3c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | [`0x800933...1e26d7`](./contracts/bsc-56/0x800933d685e7dc753758ceb77c8bd34abf1e26d7/) | ⚠️ Unaudited |
| VaultAip42 | core_logic | bsc | n/a | [`0x5fd571...e67c26`](./contracts/bsc-56/0x5fd571bea8d104a28bfe44874f2aaf69f8e67c26/) | ⚠️ Unaudited |
| xALPACAMigrator | periphery | bsc | n/a | [`0xb7d85a...ad24a9`](./contracts/bsc-56/0xb7d85ab25b9d478961face285fa3d8aaecad24a9/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (29)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0eeca1...28561c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14b3ca...1fee97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14ddb0...28a08a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e66af...e5ea84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x274dd0...338bb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x284e25...6ad406` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x28a717...1798df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x33c66c...bf1753` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x349dbc...ec5b80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b8378...b5a3ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4eca08...0d30b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x564c51...20400a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61d5e9...b081c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a31f3...5094a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x799cb5...f2a55e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7a81cd...8b5ca6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7e1a28...afd0ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x83df8e...02353f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8511e6...bcfbee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8d6576...233a2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xabc591...7b6274` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb4529a...bf220f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb1bf5...7f6b23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd3bb23...4be6c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd88579...feda39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe87822...f7372c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec135a...b757f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7524a...a61f44` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe6586...9a578c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/add-collateral-routine/PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf) | PeckShield | Audit | 2021-08 | stale | Direct | contract_name | 2 | n/a |
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
| [CertiK Security Assessment for Alpaca Finance 1.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/protocol/CertiK%20Security%20Assessment%20for%20Alpaca%20Finance%201.pdf) | CertiK | Audit | 2021-05 | stale | Direct | contract_name | 6 | n/a |
| [PeckShield-Audit-Report-Alpaca-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/protocol/PeckShield-Audit-Report-Alpaca-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name | 3 | n/a |
| [Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/spooky-minifl/Inspex_AUDIT2022008_Alpaca%20Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf) | unknown | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf](https://github.com/alpaca-finance/alpaca-stablecoin/blob/main/audits/Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | 53 | high |
| [PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf](https://github.com/alpaca-finance/alpaca-stablecoin/blob/main/audits/PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf) | PeckShield | Audit | 2021-11 | stale | Direct | contract_name | 18 | high |
| [SlowMist_Audit_Report_-_AlpacaStablecoin.pdf](https://github.com/alpaca-finance/alpaca-stablecoin/blob/main/audits/SlowMist_Audit_Report_-_AlpacaStablecoin.pdf) | SlowMist | Audit | 2021-11 | stale | Direct | contract_name | 2 | n/a |
| [PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf](https://github.com/alpaca-finance/alpies-contract/blob/main/audits/PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf) | PeckShield | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x18a15b...0fdc4e`](./contracts/bsc-56/0x18a15bf2aa1e514dc660cc4b08d05f9f6f0fdc4e/) | AdminFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5fd571...e67c26`](./contracts/bsc-56/0x5fd571bea8d104a28bfe44874f2aaf69f8e67c26/) | VaultAip42 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 94 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=13
- Match method counts: contract_name=13, extraction_exact=216

Zero-match audit list:

- [5775] Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf
- [5779] PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
