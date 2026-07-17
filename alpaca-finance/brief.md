# Agentic Audit Brief: Alpaca Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 9.7% over 90 days

## Project Overview

- Project: Alpaca Finance (`alpaca-finance`)
- Lifecycle: declining (Tier 0, 97.9% below peak)
- Generated: 2026-07-04T14:52:59.822Z
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

- Coverage of deployed-live implementations: 66/71 (93.0%)
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
- Tier 1 coverage: 2.8% (SlowMist)
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
| AlpacaToken | token | bsc | n/a | [`0x8f0528ce5ef7b51152a59745befdd91d97091d2f`](./contracts/bsc-56/0x8f0528ce5ef7b51152a59745befdd91d97091d2f/) | ✅ Audited |
| Vault | core_logic | bsc | n/a | 2 deployments: bsc [`0x3282d2a151ca00bfe7ed17aa16e42880248cd3cd`](./contracts/bsc-56/0x3282d2a151ca00bfe7ed17aa16e42880248cd3cd/); bsc `0xf1be8ecc990cbcb90e166b71e368299f0116d421` | ✅ Audited |
| AccessControlConfig | unknown | bsc | n/a | 2 deployments: bsc [`0x0780d461480a3386031498f264a91f3d473a181a`](./contracts/bsc-56/0x0780d461480a3386031498f264a91f3d473a181a/); bsc `0x6b6997ae4be20d8bc5a49e482e9a2979b46e3e5f` | ✅ Audited |
| AlpacaOraclePriceFeed | unknown | bsc | n/a | 2 deployments: bsc [`0x333db3ede42a351fbcce6ef38ec35a74a9a1c52b`](./contracts/bsc-56/0x333db3ede42a351fbcce6ef38ec35a74a9a1c52b/); bsc `0x8cc012356e61424446646ec3b261fe5ef5b44a8a` | ✅ Audited |
| AlpacaStablecoin | unknown | bsc | n/a | 2 deployments: bsc [`0x561b8c4f2ac28801baf6a4461b63c954eea1a0b4`](./contracts/bsc-56/0x561b8c4f2ac28801baf6a4461b63c954eea1a0b4/); bsc `0xdcecf0664c33321ceca2effce701e710a2d28a3f` | ✅ Audited |
| AlpacaStablecoinProxyActions | unknown | bsc | n/a | 2 deployments: bsc [`0x1391fb5efc2394f33930a0cffb9d407abdbf1481`](./contracts/bsc-56/0x1391fb5efc2394f33930a0cffb9d407abdbf1481/); bsc `0x9d9507b4eede3e3fd83e8bebdb9a9bf3ed681c0a` | ✅ Audited |
| AuthTokenAdapter | unknown | bsc | n/a | [`0xb689c00e7d3897aaa505abace6a1b590b5a951d5`](./contracts/bsc-56/0xb689c00e7d3897aaa505abace6a1b590b5a951d5/) | ✅ Audited |
| BookKeeper | unknown | bsc | n/a | 2 deployments: bsc [`0xc7d037e67b09cb59c94e0fef231124fd01fb0e49`](./contracts/bsc-56/0xc7d037e67b09cb59c94e0fef231124fd01fb0e49/); bsc `0xd0aecee1520b5f9925d952405f9a06dcd8fd6e6c` | ✅ Audited |
| CakeMaxiWorker | unknown | bsc | n/a | [`0x025ba0e82d45e29e831c53637bea2ce9d88199c2`](./contracts/bsc-56/0x025ba0e82d45e29e831c53637bea2ce9d88199c2/) | ✅ Audited |
| CakeMaxiWorker02 | unknown | bsc | n/a | 2 deployments: bsc [`0x0455ce6b16629883c52d54ac5d5fcb4622d8275d`](./contracts/bsc-56/0x0455ce6b16629883c52d54ac5d5fcb4622d8275d/); bsc `0xa14c9e1939b4f323ef540566b0ee80142713a4d9` | ✅ Audited |
| CakeMaxiWorker02 | unknown | bsc | n/a | 3 deployments: bsc [`0x9cbc68b89fe7edde4609d0fcfca835c976c959c9`](./contracts/bsc-56/0x9cbc68b89fe7edde4609d0fcfca835c976c959c9/); bsc `0xc82aca9c28da7092527c160f5bd72dbc3df6c8e3`; bsc `0xcdd640f7cc3c5001ca06f00d578b85f895dd2379` | ✅ Audited |
| ChainLinkPriceOracle | unknown | bsc | n/a | [`0x634902128543b25265da350e2d961c7ff540fc71`](./contracts/bsc-56/0x634902128543b25265da350e2d961c7ff540fc71/) | ✅ Audited |
| CollateralPoolConfig | unknown | bsc | n/a | [`0x064bb6eea2339cad2bdaf895c3d3728e2c6bdac1`](./contracts/bsc-56/0x064bb6eea2339cad2bdaf895c3d3728e2c6bdac1/) | ✅ Audited |
| CollateralPoolConfig | unknown | bsc | n/a | [`0x06d280abee1073b83a01fe778b6145e850e87162`](./contracts/bsc-56/0x06d280abee1073b83a01fe778b6145e850e87162/) | ✅ Audited |
| DeltaNeutralPancakeWorker02 | unknown | bsc | n/a | 5 deployments: bsc [`0x41d2e4ac5b7373041c06a9d331b0624142fa1123`](./contracts/bsc-56/0x41d2e4ac5b7373041c06a9d331b0624142fa1123/); bsc `0x5124baa8ca9c5e327efc458271dac157aceb4f04`; bsc `0x539fc3fd348b427b5f70b4f87c1a44983c9e8dbd`; bsc `0x6e3314453642c5ce9ff273aa5f132c1cc8463cef`; bsc `0xf9e292c9608a4aba9a141e55a184d6d68d3eeb70` | ✅ Audited |
| DeltaNeutralPancakeWorker02 | unknown | bsc | n/a | [`0x4d5fc3f859acf7525d7bc0faf540b827d0b8fe27`](./contracts/bsc-56/0x4d5fc3f859acf7525d7bc0faf540b827d0b8fe27/) | ✅ Audited |
| DeltaNeutralVault | unknown | bsc | n/a | [`0xd22d9012b1c06ae593d8f33b706becea58ecbf99`](./contracts/bsc-56/0xd22d9012b1c06ae593d8f33b706becea58ecbf99/) | ✅ Audited |
| DeltaNeutralVaultConfig | unknown | bsc | n/a | [`0x30275f8980ade89febfd93023a4af67da0fe700f`](./contracts/bsc-56/0x30275f8980ade89febfd93023a4af67da0fe700f/) | ✅ Audited |
| DeltaNeutralVaultGateway | unknown | bsc | n/a | 4 deployments: bsc [`0x1d24165cefa83c14559f67f819b61c2c857c01b4`](./contracts/bsc-56/0x1d24165cefa83c14559f67f819b61c2c857c01b4/); bsc `0x595f76f2254ed6a93e8763c585741ac3fc796e2e`; bsc `0x933db54446d1a42216b8ead55064891359ab9c6b`; bsc `0xd3f82e0af8c5a078c783dedddf79ccb762ba413a` | ✅ Audited |
| DeltaNeutralVaultGateway | unknown | bsc | n/a | [`0xdd0106c3f2d74ecbfd86f39f5639ca5a7efaf1c7`](./contracts/bsc-56/0xdd0106c3f2d74ecbfd86f39f5639ca5a7efaf1c7/) | ✅ Audited |
| FairLaunch | unknown | bsc | n/a | [`0xa625ab01b08ce023b2a342dbb12a16f2c8489a8f`](./contracts/bsc-56/0xa625ab01b08ce023b2a342dbb12a16f2c8489a8f/) | ✅ Audited |
| FixedSpreadLiquidationStrategy | unknown | bsc | n/a | 2 deployments: bsc [`0x52d62bd452b6b8d7d92ef4fe6e474fb55650dbc1`](./contracts/bsc-56/0x52d62bd452b6b8d7d92ef4fe6e474fb55650dbc1/); bsc `0x9fa028cf1ddaaa514a1adde6a9fe7224ca10d6d1` | ✅ Audited |
| FixedSpreadLiquidationStrategy | unknown | bsc | n/a | [`0x5af5c295300304d7988d5a6c7c7446d305f8f6b7`](./contracts/bsc-56/0x5af5c295300304d7988d5a6c7c7446d305f8f6b7/) | ✅ Audited |
| FlashMintModule | unknown | bsc | n/a | 2 deployments: bsc [`0x0a7233ade189237e4ecc86ff201d3bac2c96fbd6`](./contracts/bsc-56/0x0a7233ade189237e4ecc86ff201d3bac2c96fbd6/); bsc `0xe7a49ae5c9500d18481e0e0efbff1d5d0ff75de3` | ✅ Audited |
| GetPositions | unknown | bsc | n/a | 2 deployments: bsc [`0x878ef0130340b8375de06287a47a6c9c2bd26618`](./contracts/bsc-56/0x878ef0130340b8375de06287a47a6c9c2bd26618/); bsc `0x9f481c023b84359f4fcc30749f828d5a9c17af03` | ✅ Audited |
| GrazingRange | unknown | bsc | n/a | 2 deployments: bsc [`0x6bf5b334409cc3fd336da9a2d3e3f9c870feb343`](./contracts/bsc-56/0x6bf5b334409cc3fd336da9a2d3e3f9c870feb343/); bsc `0x815c54f332dd60eacd839bb12fdc37105783b77f` | ✅ Audited |
| GrazingRange | unknown | bsc | n/a | [`0xd50a06e444d2a85098b3dbc66a5d1946789bb869`](./contracts/bsc-56/0xd50a06e444d2a85098b3dbc66a5d1946789bb869/) | ✅ Audited |
| IbTokenAdapter | unknown | bsc | n/a | 4 deployments: bsc [`0x2b356b9cd4b00658facc35f4d031df528ee9778d`](./contracts/bsc-56/0x2b356b9cd4b00658facc35f4d031df528ee9778d/); bsc `0x425b07f17c0b1476c0a3006b70816800147dec64`; bsc `0x4bf04730c37fc395b5f780e6ad3e397c031f6d39`; bsc `0x4f56a92ca885be50e705006876261e839b080e36` | ✅ Audited |
| IbTokenPriceFeed | unknown | bsc | n/a | 4 deployments: bsc [`0x44b930f2e53231b3f85495229ea644724c93c617`](./contracts/bsc-56/0x44b930f2e53231b3f85495229ea644724c93c617/); bsc `0x4a89f897aa97d096dbea0f874a5854662996f8ae`; bsc `0xbb403a75a49aec69d0333da3d95ec1d1f5973d7d`; bsc `0xfb6a378b5e5bbc6f413dddf07873076851a00fd1` | ✅ Audited |
| IbTokenPriceFeed | unknown | bsc | n/a | [`0xbac9d8d59dbb0e2a21cc75323c9c8a1abbd9df49`](./contracts/bsc-56/0xbac9d8d59dbb0e2a21cc75323c9c8a1abbd9df49/) | ✅ Audited |
| LiquidationEngine | unknown | bsc | n/a | [`0x5aa539cbe3d5bbeb89f633946e64e3c3419a7026`](./contracts/bsc-56/0x5aa539cbe3d5bbeb89f633946e64e3c3419a7026/) | ✅ Audited |
| MdexRestrictedStrategyAddBaseTokenOnly | unknown | bsc | n/a | 2 deployments: bsc [`0x632e03943dd4c5c509486233b345fae86cd5517a`](./contracts/bsc-56/0x632e03943dd4c5c509486233b345fae86cd5517a/); bsc `0xeac60ec7f7623b3db636c9fc9758e8cbf3ff0548` | ✅ Audited |
| MdexRestrictedStrategyAddTwoSidesOptimal | unknown | bsc | n/a | 9 deployments: bsc [`0x0768ef9e891725c4c65f3e0fb671abcd66fc6bee`](./contracts/bsc-56/0x0768ef9e891725c4c65f3e0fb671abcd66fc6bee/); bsc `0x090ff57ffd64593111b0aa7f2d664b1aa3066137`; bsc `0x34cce22a47c5f020a5cc4fcc63d231d46577415a`; bsc `0x632188a1b2f3a2636b59a1c400835e2c5ea40214`; bsc `0xaa8f19fab381df42f2767ae7fb770434c4b710b4`; bsc `0xb16912cbb98c7ef7aad30268bdc5602dbb5833f9`; bsc `0xc9b12a6900c53a9d0eaed911c1f46f6a1cc8e7ad`; bsc `0xd8a128e5712d9b240811a0d55d3f9ca8e6599b7a`; bsc `0xf4c6b53bd2a1f0c06d8483e38cd6e6cec1860593` | ✅ Audited |
| MdexRestrictedStrategyLiquidate | unknown | bsc | n/a | 2 deployments: bsc [`0x812298f58b7cc413f06aa88f10fad71bd55ae475`](./contracts/bsc-56/0x812298f58b7cc413f06aa88f10fad71bd55ae475/); bsc `0xbd2c6bed2b89415fe2853941a222662f12166f1d` | ✅ Audited |
| MdexRestrictedStrategyPartialCloseLiquidate | unknown | bsc | n/a | 2 deployments: bsc [`0xd7103ac4c3b888fdfe9c7adbe596c15e5ddf68b4`](./contracts/bsc-56/0xd7103ac4c3b888fdfe9c7adbe596c15e5ddf68b4/); bsc `0xdaf7205a8afc4d77171f5bfd24808946eccf373e` | ✅ Audited |
| MdexRestrictedStrategyPartialCloseMinimizeTrading | unknown | bsc | n/a | 2 deployments: bsc [`0x665a8e4b88f6bfa984b1568505cb4545f7816ce2`](./contracts/bsc-56/0x665a8e4b88f6bfa984b1568505cb4545f7816ce2/); bsc `0x88934638ef657affd64ba2150bb255d54f5e5b29` | ✅ Audited |
| MdexRestrictedStrategyWithdrawMinimizeTrading | unknown | bsc | n/a | 2 deployments: bsc [`0x47f1c5f505043dee9604b98d99304f7ad4239b72`](./contracts/bsc-56/0x47f1c5f505043dee9604b98d99304f7ad4239b72/); bsc `0xa5e98c503d62ee19619b3ef12085f0d35d2a3463` | ✅ Audited |
| MdexWorker02 | unknown | bsc | n/a | [`0xe9005e936d7d8d28b7c8151be39195744ae515b7`](./contracts/bsc-56/0xe9005e936d7d8d28b7c8151be39195744ae515b7/) | ✅ Audited |
| OracleMedianizer | unknown | bsc | n/a | 2 deployments: bsc [`0x3297961610d8a64f41cb4f577448bf3a57738303`](./contracts/bsc-56/0x3297961610d8a64f41cb4f577448bf3a57738303/); bsc `0x553b8adc2ac16491ec57239bea7191719a2b880c` | ✅ Audited |
| PancakeswapV2RestrictedSingleAssetStrategyAddBaseTokenOnly | unknown | bsc | n/a | 2 deployments: bsc [`0x5cb454fc86068e710212fbecbc93070b90011f2b`](./contracts/bsc-56/0x5cb454fc86068e710212fbecbc93070b90011f2b/); bsc `0x9a5105c9dd6c6ae76518f4afbbd388514c334d96` | ✅ Audited |
| PancakeswapV2RestrictedSingleAssetStrategyAddBaseWithFarm | unknown | bsc | n/a | 5 deployments: bsc [`0x38912684b1d20fe9d725e8b39c39458fac5a4833`](./contracts/bsc-56/0x38912684b1d20fe9d725e8b39c39458fac5a4833/); bsc `0x67a2cdb9f0760663b5e70c1517f1a603ba3f50f0`; bsc `0x69b5018910f9c8d82d544f315e9d3477236ed0e1`; bsc `0x9a0beed083d3a45b6463c621b0ce489482459b21`; bsc `0xb0951eb5ecd9948aaa8eb76d1061361f592ba029` | ✅ Audited |
| PancakeswapV2RestrictedSingleAssetStrategyLiquidate | unknown | bsc | n/a | 2 deployments: bsc [`0x67420cc8fda18b061fb4ba63777736cd8ae3053f`](./contracts/bsc-56/0x67420cc8fda18b061fb4ba63777736cd8ae3053f/); bsc `0x6c0105950b1fee24ee4addd1dff346ccef75d150` | ✅ Audited |
| PancakeswapV2RestrictedSingleAssetStrategyLiquidate | unknown | bsc | n/a | [`0x75a6b8c95bb115706b111c50bcad3607b9565e83`](./contracts/bsc-56/0x75a6b8c95bb115706b111c50bcad3607b9565e83/) | ✅ Audited |
| PancakeswapV2RestrictedSingleAssetStrategyPartialCloseLiquidate | unknown | bsc | n/a | 2 deployments: bsc [`0x23850a04f9dbf488780d998dd0048d472f7cc61c`](./contracts/bsc-56/0x23850a04f9dbf488780d998dd0048d472f7cc61c/); bsc `0xa6b2a3fdd415ca304a36909a35f974b670960843` | ✅ Audited |
| PancakeswapV2RestrictedSingleAssetStrategyWithdrawMinimizeTrading | unknown | bsc | n/a | 2 deployments: bsc [`0x94f5e884e11fc054ca0b332e3a8773750bdbe242`](./contracts/bsc-56/0x94f5e884e11fc054ca0b332e3a8773750bdbe242/); bsc `0xb7025d33762580fd48b412c3a5108be33c91df77` | ✅ Audited |
| PancakeswapV2RestrictedStrategyPartialCloseLiquidate | unknown | bsc | n/a | 2 deployments: bsc [`0x1313c57c5db43f932a8c91e12d19c2890fe3ae55`](./contracts/bsc-56/0x1313c57c5db43f932a8c91e12d19c2890fe3ae55/); bsc `0x4362635a0b2f8df98cde4cdde5f5f3be96f45316` | ✅ Audited |
| PancakeswapV2Worker02 | unknown | bsc | n/a | 30 deployments: bsc [`0x03462fb60aa5de5f1a068a597743f66e097b0d9b`](./contracts/bsc-56/0x03462fb60aa5de5f1a068a597743f66e097b0d9b/); bsc `0x0e7b1e4dedc07f711493ad696e2ee4969a119e2f`; bsc `0x1d0edca3f151dc9fafb5ce79547d153229985f42`; bsc `0x1dbdc3f67e56daedffa6b2b59d2f4a18190bdded`; bsc `0x255f31ae71c2864942cd5d86111fcf2d8a907fdb`; bsc `0x2e7f32e38ea5a5fcb4494d9b626d2d393b176b1e`; bsc `0x315f5fcbe2ab4b2c2b7ae69ada3d6a7d778fc726`; bsc `0x39bbc1b5c46ac99ecd412533ca831c4a730258ca`; bsc `0x4193d35d0cb598d92703ed69701f5d568aca015c`; bsc `0x4d395258c313bfee5ba4ff500a9befe8ff26991e`; bsc `0x532358cb052b0ca17856a75f1244681eedf36dca`; bsc `0x56017389d3068ca05afe3d4e697afa200f316f0b`; bsc `0x651ebb3f17f637ceaa77d214f2610d4a0af5bfde`; bsc `0x68f131fe93cfc18a6b3ec6312e18c089221a5c34`; bsc `0x72bbcfce18ec02734e87ed68b124bc422c84b2a2`; bsc `0x730bce145a55a07c2d7363db7110466c5c26e472`; bsc `0x7be8f8e84e195092da43bf6c4a4eb61dc90063bd`; bsc `0x7d306dd73531c45f9847e547a0e8deeafe804939`; bsc `0x807554b56f682e87234fd82712aa31548ba73db2`; bsc `0x867d166301a87c13bb71d0ed82df3d2ccc5e19c4`; bsc `0xa504afa74195b93a32ea772df430f2bf69e5d116`; bsc `0xa573ffd839aa1dc94ca6ae7ed75253c2ac7c2ec8`; bsc `0xa726e9e5c007253fe7589879136fdf24da6da393`; bsc `0xb800a87d8cc5d8d134635ed321bf7963aa3f5bcf`; bsc `0xb8e0b422d54aa59552a8aeb2255e1aa8627a5eda`; bsc `0xbd861fe2d91a2e82928fe0413fa77bfeb822f373`; bsc `0xc796e49c22b58f2d46e4e685b608eaaf46c0878d`; bsc `0xcfe0fa9eae5a225a4c33e39d4aefe32667eff11f`; bsc `0xd890f501df285cf24fe3b6494e138a1629fc9e11`; bsc `0xf80c39d3d5d5ca4581ec1982cc0c3c88494cbe62` | ✅ Audited |
| PancakeswapV2Worker02 | unknown | bsc | n/a | 2 deployments: bsc [`0xb6960faf74e7ada47bcbb3923d793da253ff521f`](./contracts/bsc-56/0xb6960faf74e7ada47bcbb3923d793da253ff521f/); bsc `0xc69c8c2944c331a8f9b49c5027da45e427c3708b` | ✅ Audited |
| PositionManager | unknown | bsc | n/a | [`0xaba0b03eaa3684eb84b51984add918290b41ee19`](./contracts/bsc-56/0xaba0b03eaa3684eb84b51984add918290b41ee19/) | ✅ Audited |
| PositionManager | unknown | bsc | n/a | [`0xbedf10b8a2af77051d3d1f82c048c2eccfd461b6`](./contracts/bsc-56/0xbedf10b8a2af77051d3d1f82c048c2eccfd461b6/) | ✅ Audited |
| PriceOracle | unknown | bsc | n/a | 2 deployments: bsc [`0x1afadbe730d44b95aeec909846d4bfdd8d3831af`](./contracts/bsc-56/0x1afadbe730d44b95aeec909846d4bfdd8d3831af/); bsc `0x4c7fb2214e6d782dc0152ea39c39166f666ca367` | ✅ Audited |
| ProxyWalletFactory | unknown | bsc | n/a | [`0x56f2d6fe1acb1549a665ff3a6e7dc46753f4a116`](./contracts/bsc-56/0x56f2d6fe1acb1549a665ff3a6e7dc46753f4a116/) | ✅ Audited |
| ProxyWalletRegistry | unknown | bsc | n/a | 2 deployments: bsc [`0x13e3bc3c6a96ae3beadd1b08531fde979dd30aea`](./contracts/bsc-56/0x13e3bc3c6a96ae3beadd1b08531fde979dd30aea/); bsc `0x951eb3e9fbe2e4bf428e68ad251ae0f2903e320f` | ✅ Audited |
| ShowStopper | unknown | bsc | n/a | [`0xc19c71a2fc7d67fb10ffe4e13dab3acfef798558`](./contracts/bsc-56/0xc19c71a2fc7d67fb10ffe4e13dab3acfef798558/) | ✅ Audited |
| SingleAssetWorkerConfig | unknown | bsc | n/a | 3 deployments: bsc [`0x0a3617197113ed2a9bbcadfb3c4f417734b1f8aa`](./contracts/bsc-56/0x0a3617197113ed2a9bbcadfb3c4f417734b1f8aa/); bsc `0x9b659a26938e6bf15264a89457b555b46b034d34`; bsc `0xfbefffdba82c98cf157cc709ab0cf7e19301bc27` | ✅ Audited |
| StabilityFeeCollector | unknown | bsc | n/a | 2 deployments: bsc [`0x45040e48c00b52d9c0bd11b8f577f188991129e6`](./contracts/bsc-56/0x45040e48c00b52d9c0bd11b8f577f188991129e6/); bsc `0xe35e008ccb407448ef37ef7c0148097553c00aa0` | ✅ Audited |
| StablecoinAdapter | unknown | bsc | n/a | 2 deployments: bsc [`0x713130e882b1dcb9ea7d960119f7b62429cacce3`](./contracts/bsc-56/0x713130e882b1dcb9ea7d960119f7b62429cacce3/); bsc `0xd409da25d32473efb0a1714ab3d0a6763bce4749` | ✅ Audited |
| StableSwapModule | unknown | bsc | n/a | 2 deployments: bsc [`0xd16004424b9c3f0a7c74c4c8dcda0d8c4d513fac`](./contracts/bsc-56/0xd16004424b9c3f0a7c74c4c8dcda0d8c4d513fac/); bsc `0xfbd7b6942de9edc987f81d8f31c2d4cd88cfb4f6` | ✅ Audited |
| StrictAlpacaOraclePriceFeed | unknown | bsc | n/a | 7 deployments: bsc [`0x2b9c18a7e2f067e006e4625a74174472e9f89559`](./contracts/bsc-56/0x2b9c18a7e2f067e006e4625a74174472e9f89559/); bsc `0x9cbb0e5c103707dc35dae0aa05a320c4f60a93f1`; bsc `0x9f748f798c75ea44f86a5871045629a2ac9c0568`; bsc `0xde375d37be6399022d6583c954a011a9244a0b61`; bsc `0xea4e46420065c7df0b931424a75c150474d72ac7`; bsc `0xee1d99c9b85dcbbe4773767795eed23fa8190731`; bsc `0xf7e3b6c8ac5047c6acf328c6c9c43ecdf15cd534` | ✅ Audited |
| StronkAlpaca | unknown | bsc | n/a | [`0x6f695bd5ffd25149176629f8491a5099426ce7a7`](./contracts/bsc-56/0x6f695bd5ffd25149176629f8491a5099426ce7a7/) | ✅ Audited |
| SystemDebtEngine | unknown | bsc | n/a | 2 deployments: bsc [`0x4c98c712da02d48fa3aa53dc3fe3e6754ddf1cb8`](./contracts/bsc-56/0x4c98c712da02d48fa3aa53dc3fe3e6754ddf1cb8/); bsc `0xe09e20ab1f91d1f7eaa0e73446b0617d89501b0e` | ✅ Audited |
| Timelock | governance | bsc | n/a | [`0x2d5408f2287bf9f9b05404794459a846651d0a59`](./contracts/bsc-56/0x2d5408f2287bf9f9b05404794459a846651d0a59/) | ✅ Audited |
| WaultSwapRestrictedStrategyPartialCloseLiquidate | unknown | bsc | n/a | 2 deployments: bsc [`0x91c1f2e7f7e6b77171ebda204f074a574edf2d24`](./contracts/bsc-56/0x91c1f2e7f7e6b77171ebda204f074a574edf2d24/); bsc `0xfe49affc3ffa7bed8346f8f33f8250d3c6fdf073` | ✅ Audited |
| WaultSwapWorker02 | unknown | bsc | n/a | 27 deployments: bsc [`0x040a65cddb0b8c75c72936879aa603e0d7425da4`](./contracts/bsc-56/0x040a65cddb0b8c75c72936879aa603e0d7425da4/); bsc `0x0541c542e2039d13238b5abc6d32a23ae3222b1d`; bsc `0x0c5ed4d8df44f20b052fc6966991e686d594b9c2`; bsc `0x0e0806a43188f383aadaec3440d6e8e4d71b281c`; bsc `0x184962b6c9a55c8c2ee757ca86b73a6edf87e3ca`; bsc `0x195f4c8754e9809bfe4d5f7a5891810c757cac7f`; bsc `0x20064f5ca352d95dda597acb5ecd10a86850caf9`; bsc `0x3483f17668f1863b57cfba66e9cf2f9c3b48423f`; bsc `0x50441d9c8e08e3dcce8d517e2257a3882d43fee9`; bsc `0x5894ac929e7a63417fa0a473563b2c772bb62355`; bsc `0x6169a983e9ded098a38e09636ea577c9b57a51a7`; bsc `0x63dd2d0f6ade00c5d70eb670b7a7074fd878c435`; bsc `0x684e33a6da0f6adfa5aeb6cdbc7f82c112f57dd8`; bsc `0x74c97946dde8b503e0278605fcc59d747170e5f7`; bsc `0x774d122cbf739249580631b8e4233e91ea2ad294`; bsc `0x813a9ae1c7b9f89d0b14d796d484478934c3a7f4`; bsc `0xb01a5f2942b39026eff8acb524a45e75a35f6469`; bsc `0xb3e13a8774378cdbb4bd95dd5d7a02363a75fa66`; bsc `0xb5000cfc1685425709939cc0588c755363b9deda`; bsc `0xb5c425d08719ef87d9ef23785011fd317c3a00bb`; bsc `0xbe6bde2a40511e2d87984af88f58228b1b8babed`; bsc `0xcd4b6354b992426283972eb2ac68178e2629e88d`; bsc `0xe0d62391ceb96487ed0299d1d8a4fffbb43c1581`; bsc `0xe29fd3521bf9784b3b57523cbbe468da28d36655`; bsc `0xf4b424db20d8664cf559fa3c095c54f4569a7f57`; bsc `0xfa4a3fe54143bfea4fdda3b5602766e13647ea66`; bsc `0xfaa8ebdbb5b408f649bfb714435013c09f0b8013` | ✅ Audited |
| WaultSwapWorker02 | unknown | bsc | n/a | 2 deployments: bsc [`0x29a08f38af02fcc2a75e91144e3931e26d31c88a`](./contracts/bsc-56/0x29a08f38af02fcc2a75e91144e3931e26d31c88a/); bsc `0xf9bda298fa04200002ff3b7e08e407a6bde04246` | ✅ Audited |
| WaultSwapWorker02 | unknown | bsc | n/a | 3 deployments: bsc [`0x85fb19fc1fed868e65bdfec58e64cccb8546b0bf`](./contracts/bsc-56/0x85fb19fc1fed868e65bdfec58e64cccb8546b0bf/); bsc `0x97d3282f64dc0a0243386880fc00542cd00a20f4`; bsc `0xe8323fff67043c29a19e0a13b66f0eafedb46df4` | ✅ Audited |
| WorkerConfig | governance | bsc | n/a | [`0x3175ec52c36fff63dce00e8a50e6066d38884a11`](./contracts/bsc-56/0x3175ec52c36fff63dce00e8a50e6066d38884a11/) | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultAip25 | core_logic | bsc | n/a | 2 deployments: bsc [`0x08fc9ba2cac74742177e0afc3dc8aed6961c24e7`](./contracts/bsc-56/0x08fc9ba2cac74742177e0afc3dc8aed6961c24e7/); bsc `0xbff4a34a4644a113e8200d7f1d79b3555f723afe` | ⚠️ Unaudited |
| AdminFacet | unknown | bsc | n/a | [`0x18a15bf2aa1e514dc660cc4b08d05f9f6f0fdc4e`](./contracts/bsc-56/0x18a15bf2aa1e514dc660cc4b08d05f9f6f0fdc4e/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | proxy | bsc | n/a | 3 deployments: bsc [`0x158da805682bdc8ee32d52833ad41e74bb951e59`](./contracts/bsc-56/0x158da805682bdc8ee32d52833ad41e74bb951e59/); bsc `0xd7d069493685a581d27824fc46eda46b7efc0063`; bsc `0xff693450dda65df7dd6f45b4472655a986b147eb` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | proxy | bsc | n/a | [`0x7c9e73d4c71dae564d41f78d56439bb4ba87592f`](./contracts/bsc-56/0x7c9e73d4c71dae564d41f78d56439bb4ba87592f/) | ⚠️ Unaudited |
| DeltaNeutralPancakeMCV2Worker02 | unknown | bsc | n/a | 8 deployments: bsc [`0x07767daf4e84bdaabf3a72c80cec8c8eb962f3ae`](./contracts/bsc-56/0x07767daf4e84bdaabf3a72c80cec8c8eb962f3ae/); bsc `0x0d9faf7023976b45b220b692699c5f5e9432efd9`; bsc `0x42da676116df26ee9bb71595ffe7c18343fb2b64`; bsc `0x4b70c41f514fbbea718234ac72f36c1b077a4162`; bsc `0x54d3218787060463eeb944fa01b0cbe745ef4db5`; bsc `0x83a5d5c54ad83bbea8667b3b95d7610e16e52723`; bsc `0x8ef56e94bbaee1638c3c87d3ab0de0a90e2cb067`; bsc `0xfa4b1e50f6ef51d0dab5c2eea7434ce6974fa832` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | n/a | [`0x18f59e8dddef9e000863082a37fc56a2a5475d01`](./contracts/bsc-56/0x18f59e8dddef9e000863082a37fc56a2a5475d01/) | ⚠️ Unaudited |
| Multicall | periphery | bsc | n/a | [`0x41263cba59eb80dc200f3e2544eda4ed6a90e76c`](./contracts/bsc-56/0x41263cba59eb80dc200f3e2544eda4ed6a90e76c/) | ⚠️ Unaudited |
| RevenueTreasury02 | operational_periphery | bsc | n/a | [`0x08b5a95cb94f926a8b620e87ee92e675b35afc7e`](./contracts/bsc-56/0x08b5a95cb94f926a8b620e87ee92e675b35afc7e/) | ⚠️ Unaudited |
| TerminateAV02 | unknown | bsc | n/a | 4 deployments: bsc [`0x8e5cfa7c06f187b56537f7f0cabfb55611af6f16`](./contracts/bsc-56/0x8e5cfa7c06f187b56537f7f0cabfb55611af6f16/); bsc `0x9fe96180ab2adfaebc735336f9213f26bca99aa1`; bsc `0xc57876a95a4f31a0a4fdb0329fc78e00b092cc94`; bsc `0xe9bd0b7333596d0a87ded9ee1a782aa052b711ab` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | [`0x6fee87f744fc612948001b09b2808c87b91ddc3c`](./contracts/bsc-56/0x6fee87f744fc612948001b09b2808c87b91ddc3c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | [`0x800933d685e7dc753758ceb77c8bd34abf1e26d7`](./contracts/bsc-56/0x800933d685e7dc753758ceb77c8bd34abf1e26d7/) | ⚠️ Unaudited |
| VaultAip42 | core_logic | bsc | n/a | [`0x5fd571bea8d104a28bfe44874f2aaf69f8e67c26`](./contracts/bsc-56/0x5fd571bea8d104a28bfe44874f2aaf69f8e67c26/) | ⚠️ Unaudited |
| xALPACAMigrator | periphery | bsc | n/a | [`0xb7d85ab25b9d478961face285fa3d8aaecad24a9`](./contracts/bsc-56/0xb7d85ab25b9d478961face285fa3d8aaecad24a9/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x0eeca1690c59fb195fd158f44c4f3230ed28561c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14b3cae61465656329a1240b67146249fa1fee97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14ddb0f012b425bd33cd22f33d2af41e3828a08a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e66af314756e6cc5065b5091be2ff0011e5ea84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x274dd0edac0ec5e72e45433c1666d6c246338bb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x284e25169ce75fc62c9339207de5d775f46ad406` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x28a7178e2125d053220b47195727efc29f1798df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x33c66c601a442b2263976332397f923cd6bf1753` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x349dbcf399e39642d43b6926c8ac30d9cfec5b80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b837846ad3322ecae28b60a2c2cf16e41b5a3ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4eca08e4f2ed826dba5bea2ec133036fe60d30b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x564c51709ce87eb07a16ba6f595c08b8bd20400a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61d5e93bfcbf30e6e0efd7e51d6a9222d2b081c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a31f36ee3a24c25c2f2bff2271d9a42715094a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x799cb521dfc34c8277d31f3ee0d1fa6a07f2a55e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7a81cda008e27889a52e5ea4823a0b22388b5ca6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7e1a283c5fbe6b69c95397dee0d02e6688afd0ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x83df8edb615b455bfce270ee2ee3562fd202353f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8511e6715845603597a2f33c69dacc5c19bcfbee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8d657683437bf1b2f8274515b237a2db0f233a2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xabc591b524b40e3be9eada1143b1dbc9d67b6274` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb4529a5e0190a4a92216628d703002b5e4bf220f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb1bf51a93fc162bfa761f18c236e39d107f6b23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd3bb23a761db394aa8692562502ae21b854be6c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd885797f19214e7dec84454a03ba765c75feda39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe87822c211eaaae2d294c592ec9dd44eaff7372c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec135a336bfa6313ddca09e0e38ec1b9ccb757f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7524afdb5c40581d89a1bb7b841c5e1e7a61f44` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe65861492ee51b126e2f6dc0299ffe4ca9a578c` | ❓ Unverified |

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
| bsc | [`0x18a15bf2aa1e514dc660cc4b08d05f9f6f0fdc4e`](./contracts/bsc-56/0x18a15bf2aa1e514dc660cc4b08d05f9f6f0fdc4e/) | AdminFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5fd571bea8d104a28bfe44874f2aaf69f8e67c26`](./contracts/bsc-56/0x5fd571bea8d104a28bfe44874f2aaf69f8e67c26/) | VaultAip42 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 67 |
| upstream | 1 |
| standard_library | 8 |
| needs_review | 33 |

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
