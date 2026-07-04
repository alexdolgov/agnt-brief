# Agentic Audit Brief: xToken

## Project Overview

- Project: xToken (`xtoken`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:16.561Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: ethereum, optimism, polygon
- Contract surface: 159 unique implementations (159 raw deployments)
- DeFi Llama TVL: $711,969.74
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquidity Manager. Structurally: 156 project-authored contract(s) across 3 chain(s); 19 ERC20 tokens, 1 ERC721 NFT, 3 Chainlink feeds; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 38 common project-authored base contract(s) (rewardsdistributionrecipient, owned, synth). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 159; live-surface contracts included: 159 (159 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 9/159 (5.7%)
- Deployed-live implementations: 159 of 159 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 9/159
- Verified + Unaudited implementations: 150
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 159
- Raw deployments: 159
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 9 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ABDK | Tier 2 | 7 | 4.4% | 2022-03 |
| CertiK | Tier 2 | 7 | 4.4% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CLR | unknown | ethereum | n/a | [`0x048595...965610`](./contracts/ethereum-1/0x0485954f55efda230f9027ffde40466467965610/) | ✅ Audited |
| CLRDeployer | unknown | ethereum | n/a | [`0x2aa585...084163`](./contracts/ethereum-1/0x2aa5853d2d934c3a239d83f56dc26ebb25084163/) | ✅ Audited |
| LMTerminal | unknown | ethereum | n/a | [`0x090559...b90374`](./contracts/ethereum-1/0x090559d58aab8828c27ee7a7eab18efd5bb90374/) | ✅ Audited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x21a3ed...b03169`](./contracts/ethereum-1/0x21a3ed04b3f5e17bd158aa30a75c7429bcb03169/) | ✅ Audited |
| StakedCLRToken | unknown | ethereum | n/a | [`0x08b129...b209c2`](./contracts/ethereum-1/0x08b129a7e3105bba38387ab940d5546991b209c2/) | ✅ Audited |
| StakingRewards | unknown | ethereum | n/a | [`0x0031b7...1c4642`](./contracts/ethereum-1/0x0031b7ac27d10c75072d2399323d4ca4751c4642/) | ✅ Audited |
| UniswapLibrary | unknown | ethereum | n/a | [`0x246ebb...628ef9`](./contracts/ethereum-1/0x246ebb0514c69767547213e2ff56223062628ef9/) | ✅ Audited |
| xAssetCLR | unknown | ethereum | n/a | [`0x152169...2e7189`](./contracts/ethereum-1/0x152169b51b4a737dc0abfe8b943af64cf32e7189/) | ✅ Audited |
| xAssetCLRProxy | unknown | ethereum | n/a | [`0x0f70a4...ef2298`](./contracts/ethereum-1/0x0f70a48b13135e394a6f4026ad9f597ce4ef2298/) | ✅ Audited |

### ⚠️ Verified + Unaudited (150)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressResolver | unknown | ethereum | n/a | [`0x611660...3c83ae`](./contracts/ethereum-1/0x61166014e3f04e40c953fe4eab9d9e40863c83ae/) | ⚠️ Unaudited |
| AlphaToken | unknown | ethereum | n/a | [`0xa1faa1...b40975`](./contracts/ethereum-1/0xa1faa113cbe53436df28ff0aee54275c13b40975/) | ⚠️ Unaudited |
| BancorBuyer | unknown | ethereum | n/a | [`0x77a77e...34d924`](./contracts/ethereum-1/0x77a77eca75445841875ebb67a33d0a97dc34d924/) | ⚠️ Unaudited |
| BancorChanger | unknown | ethereum | n/a | [`0xb72a0f...270468`](./contracts/ethereum-1/0xb72a0fa1e537c956dfca72711c468efd81270468/) | ⚠️ Unaudited |
| BancorConverter | unknown | ethereum | n/a | [`0x40a36b...252e16`](./contracts/ethereum-1/0x40a36b6d7f956f80d07e401a5f620c3a4f252e16/) | ⚠️ Unaudited |
| BancorConverterExtensions | unknown | ethereum | n/a | [`0xf46002...9012f7`](./contracts/ethereum-1/0xf46002c37af6fb078ae1833fd447698a0c9012f7/) | ⚠️ Unaudited |
| BancorConverterFactory | unknown | ethereum | n/a | [`0x0a8079...f9b236`](./contracts/ethereum-1/0x0a8079ce1fd9b1ae682d9f1b709609a05bf9b236/) | ⚠️ Unaudited |
| BancorConverterUpgrader | unknown | ethereum | n/a | [`0xaebf10...7c3d5c`](./contracts/ethereum-1/0xaebf1085dd9a0fa403a75399c956595e3a7c3d5c/) | ⚠️ Unaudited |
| BancorFormula | unknown | ethereum | n/a | [`0x4eeb95...c30cc5`](./contracts/ethereum-1/0x4eeb95a68c7382217ccdf9d4d1c89f3986c30cc5/) | ⚠️ Unaudited |
| BancorFormulaProxy | unknown | ethereum | n/a | [`0x8b0c11...3af6f2`](./contracts/ethereum-1/0x8b0c11e0df925387de1ce92504fe0e4af23af6f2/) | ⚠️ Unaudited |
| BancorGasPriceLimit | unknown | ethereum | n/a | [`0x7fd539...4daa6e`](./contracts/ethereum-1/0x7fd539ef2be3192b6d6bdf095968bac2d74daa6e/) | ⚠️ Unaudited |
| BancorNetwork | unknown | ethereum | n/a | [`0x568e7c...3e5e07`](./contracts/ethereum-1/0x568e7cfebb39e2b2695e6f90d1d33c3cf03e5e07/) | ⚠️ Unaudited |
| BancorPriceFloor | unknown | ethereum | n/a | [`0x7ec6a7...268549`](./contracts/ethereum-1/0x7ec6a713197fcbb4cfe7213800470b0940268549/) | ⚠️ Unaudited |
| BancorQuickConverter | unknown | ethereum | n/a | [`0xcf1cc6...49139b`](./contracts/ethereum-1/0xcf1cc6ed5b653def7417e3fa93992c3ffe49139b/) | ⚠️ Unaudited |
| BinaryOptionMarketData | unknown | ethereum | n/a | [`0xdadea8...0535a4`](./contracts/ethereum-1/0xdadea8352661ff961956c7ab5425839a400535a4/) | ⚠️ Unaudited |
| BinaryOptionMarketFactory | unknown | ethereum | n/a | [`0x211ba9...0f025c`](./contracts/ethereum-1/0x211ba925b35b82246a3ccfa3a991a39a840f025c/) | ⚠️ Unaudited |
| BinaryOptionMarketManager | unknown | ethereum | n/a | [`0x673e76...cf406d`](./contracts/ethereum-1/0x673e76631981cb55783527f744e581aba8cf406d/) | ⚠️ Unaudited |
| CollateralErc20 | unknown | ethereum | n/a | [`0x3b3812...7a0d46`](./contracts/ethereum-1/0x3b3812bb9f6151beb6fa10783f1ae848a77a0d46/) | ⚠️ Unaudited |
| CollateralEth | unknown | ethereum | n/a | [`0x3ff5c0...90729e`](./contracts/ethereum-1/0x3ff5c0a14121ca39211c95f6ceb221b86a90729e/) | ⚠️ Unaudited |
| CollateralManager | unknown | ethereum | n/a | [`0x067e39...10dcc6`](./contracts/ethereum-1/0x067e398605e84f2d0aeec1806e62768c5110dcc6/) | ⚠️ Unaudited |
| CollateralManagerState | unknown | ethereum | n/a | [`0x573e51...2bb52d`](./contracts/ethereum-1/0x573e5105c4b92416d1544a188f1bf77d442bb52d/) | ⚠️ Unaudited |
| CollateralShort | unknown | ethereum | n/a | [`0x188c22...f84246`](./contracts/ethereum-1/0x188c2274b04ea392b21487b5de299e382ff84246/) | ⚠️ Unaudited |
| CollateralState | unknown | ethereum | n/a | [`0x04d923...796107`](./contracts/ethereum-1/0x04d9231b1fff88464a3d26fd91a1ba0b24796107/) | ⚠️ Unaudited |
| ContractFeatures | unknown | ethereum | n/a | [`0x563172...6ce699`](./contracts/ethereum-1/0x563172281800b139f69fb038cc2c08cad56ce699/) | ⚠️ Unaudited |
| ContractRegistry | unknown | ethereum | n/a | [`0x7148b1...e395e6`](./contracts/ethereum-1/0x7148b1c9154bcf273a2c7d7b90e3edc6fee395e6/) | ⚠️ Unaudited |
| CouncilDilution | unknown | ethereum | n/a | [`0x30ba35...fb2100`](./contracts/ethereum-1/0x30ba359fe295e311d24bccb1502c7a6e89fb2100/) | ⚠️ Unaudited |
| CrowdsaleController | unknown | ethereum | n/a | [`0xbbc797...f89710`](./contracts/ethereum-1/0xbbc79794599b19274850492394004087cbf89710/) | ⚠️ Unaudited |
| DAONFT | unknown | ethereum | n/a | [`0x045671...2b77bf`](./contracts/ethereum-1/0x04567106db2a4661a5fda9f48719d57b372b77bf/) | ⚠️ Unaudited |
| DappMaintenance | unknown | ethereum | n/a | [`0xab0b2f...2732dd`](./contracts/ethereum-1/0xab0b2f1cf979cdbf4676251f35353ec5af2732dd/) | ⚠️ Unaudited |
| DebtCache | unknown | ethereum | n/a | [`0x08118e...41b89e`](./contracts/ethereum-1/0x08118e04f58d7863b4fcf1de0e07c83a2541b89e/) | ⚠️ Unaudited |
| DelegateApprovals | unknown | ethereum | n/a | [`0x15fd6e...42362f`](./contracts/ethereum-1/0x15fd6e554874b9e70f832ed37f231ac5e142362f/) | ⚠️ Unaudited |
| EmptyFuturesMarketManager | unknown | ethereum | n/a | [`0x834ef6...0780d7`](./contracts/ethereum-1/0x834ef6c82d431ac9a7a6b66325f185b2430780d7/) | ⚠️ Unaudited |
| EternalStorage | unknown | ethereum | n/a | [`0x0f7c20...31d3ba`](./contracts/ethereum-1/0x0f7c200c4d3b5570c777764884ce6de67f31d3ba/) | ⚠️ Unaudited |
| EtherCollateral | unknown | ethereum | n/a | [`0x7133af...49e272`](./contracts/ethereum-1/0x7133aff303539b0a4f60ab9bd9656598bf49e272/) | ⚠️ Unaudited |
| EtherCollateralsUSD | unknown | ethereum | n/a | [`0xfed770...f57b82`](./contracts/ethereum-1/0xfed77055b40d63dcf17ab250ffd6948fbff57b82/) | ⚠️ Unaudited |
| EtherToken | unknown | ethereum | n/a | [`0xc08294...2ce315`](./contracts/ethereum-1/0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315/) | ⚠️ Unaudited |
| EtherWrapper | unknown | ethereum | n/a | [`0xc1aae9...1e747c`](./contracts/ethereum-1/0xc1aae9d18bbe386b102435a8632c8063d31e747c/) | ⚠️ Unaudited |
| ExchangeCircuitBreaker | unknown | ethereum | n/a | [`0xeacaed...005437`](./contracts/ethereum-1/0xeacaed9581294b1b5cfb6b941d4b8b81b2005437/) | ⚠️ Unaudited |
| Exchanger | unknown | ethereum | n/a | [`0x1d53a1...b6f5d4`](./contracts/ethereum-1/0x1d53a13d78766c0db6ef73ec0ae1138ea2b6f5d4/) | ⚠️ Unaudited |
| ExchangeRates | unknown | ethereum | n/a | [`0xa68c60...9478ed`](./contracts/ethereum-1/0xa68c6020ff9ea79f05345cdd2ce37df4b89478ed/) | ⚠️ Unaudited |
| ExchangeRatesWithDexPricing | unknown | ethereum | n/a | [`0x6d9296...ba7752`](./contracts/ethereum-1/0x6d9296df2ad52f174bf671f555d78628beba7752/) | ⚠️ Unaudited |
| ExchangerWithFeeRecAlternatives | unknown | ethereum | n/a | [`0x2a417c...d235f6`](./contracts/ethereum-1/0x2a417c61b8062363e4ff50900779463b45d235f6/) | ⚠️ Unaudited |
| ExchangerWithVirtualSynth | unknown | ethereum | n/a | [`0x0bfdc0...31f7de`](./contracts/ethereum-1/0x0bfdc04b38251394542586969e2356d0d731f7de/) | ⚠️ Unaudited |
| ExchangerWithVirtualSynth | unknown | ethereum | n/a | [`0x585fd1...1367e8`](./contracts/ethereum-1/0x585fd19eba8f1a81f37c5eb322fd4b8d911367e8/) | ⚠️ Unaudited |
| FeePool | unknown | ethereum | n/a | [`0x013d16...c169c8`](./contracts/ethereum-1/0x013d16cb1bd493bbb89d45b43254842fadc169c8/) | ⚠️ Unaudited |
| FlexibleStorage | unknown | ethereum | n/a | [`0xc757ac...2d85f5`](./contracts/ethereum-1/0xc757acba3c0506218b3022266a9dc7f3612d85f5/) | ⚠️ Unaudited |
| GrantsDAOV2 | unknown | ethereum | n/a | [`0x4cf117...037049`](./contracts/ethereum-1/0x4cf117aaa757dad4a084025c3f23f1b67a037049/) | ⚠️ Unaudited |
| iETHRewards | unknown | ethereum | n/a | [`0x0333bd...b33139`](./contracts/ethereum-1/0x0333bd82e1f5ff89c19ec44ab5302a0041b33139/) | ⚠️ Unaudited |
| Implementation | unknown | ethereum | n/a | [`0x736d22...455027`](./contracts/ethereum-1/0x736d22180993e20cac87e9b2035560c1de455027/) | ⚠️ Unaudited |
| ImplementationResolver | unknown | ethereum | n/a | [`0x2206aa...d41843`](./contracts/ethereum-1/0x2206aa8ec85270ace5597539e3c287e021d41843/) | ⚠️ Unaudited |
| IssuanceEternalStorage | unknown | ethereum | n/a | [`0x631e93...d6ba64`](./contracts/ethereum-1/0x631e93a0fb06b5ec6d52c0a2d89a3f9672d6ba64/) | ⚠️ Unaudited |
| Issuer | unknown | ethereum | n/a | [`0x0689b1...3a2c33`](./contracts/ethereum-1/0x0689b1f72930eb25cacb99f790d2778e713a2c33/) | ⚠️ Unaudited |
| Keeper | unknown | ethereum | n/a | [`0xc9ca5d...259430`](./contracts/ethereum-1/0xc9ca5dc1b26731feb99c7b6fe8dd9b789a259430/) | ⚠️ Unaudited |
| KyberNetworkCrystal | unknown | ethereum | n/a | [`0xdd974d...6bd200`](./contracts/ethereum-1/0xdd974d5c2e2928dea5f71b9825b8b646686bd200/) | ⚠️ Unaudited |
| Liquidations | unknown | ethereum | n/a | [`0x463387...8754a2`](./contracts/ethereum-1/0x46338723022def2c5151e83be759796a988754a2/) | ⚠️ Unaudited |
| Liquidator | unknown | ethereum | n/a | [`0x0e5fe1...e3c425`](./contracts/ethereum-1/0x0e5fe1b05612581576e9a3db048416d0b1e3c425/) | ⚠️ Unaudited |
| LiquidatorRewards | unknown | ethereum | n/a | [`0xf79603...962c00`](./contracts/ethereum-1/0xf79603a71144e415730c1a6f57f366e4ea962c00/) | ⚠️ Unaudited |
| LiquidityProvider | unknown | ethereum | n/a | [`0x45eaad...f0adb2`](./contracts/ethereum-1/0x45eaadc906b33212a230e2af5e9039dfaaf0adb2/) | ⚠️ Unaudited |
| LPCompVesting | unknown | ethereum | n/a | [`0x8ae009...f6cbc6`](./contracts/ethereum-1/0x8ae00949b483509a9043fc9231b3a09dc4f6cbc6/) | ⚠️ Unaudited |
| MerkleClaimTree | unknown | ethereum | n/a | [`0x2ca872...5ab28e`](./contracts/ethereum-1/0x2ca8723b766ffed1fda5ec9ff925f564ce5ab28e/) | ⚠️ Unaudited |
| Migration_Algol | unknown | ethereum | n/a | [`0xaab72c...fb8b80`](./contracts/ethereum-1/0xaab72cfb21563830744f323579704e2524fb8b80/) | ⚠️ Unaudited |
| Migration_Alkaid | unknown | ethereum | n/a | [`0xa8de68...139b53`](./contracts/ethereum-1/0xa8de6828d358c2d9f93f4913dec4f14894139b53/) | ⚠️ Unaudited |
| Migration_Alkaid_Supplemental | unknown | ethereum | n/a | [`0x6efd21...7efdc0`](./contracts/ethereum-1/0x6efd217b5fa2b2eddf9edb07b9e501f99d7efdc0/) | ⚠️ Unaudited |
| Migration_Alnitak | unknown | ethereum | n/a | [`0x1ca903...1e4ecf`](./contracts/ethereum-1/0x1ca903aa46aa58c9e947f7504e02760d581e4ecf/) | ⚠️ Unaudited |
| Migration_Alphard | unknown | ethereum | n/a | [`0xf41e17...0ef32e`](./contracts/ethereum-1/0xf41e173be5778acbdb6885edfa790706bb0ef32e/) | ⚠️ Unaudited |
| Migration_Alpheratz | unknown | ethereum | n/a | [`0xda2168...2abe71`](./contracts/ethereum-1/0xda2168521c501adb5dc8e2a81a86ec95b32abe71/) | ⚠️ Unaudited |
| Migration_Alsephina | unknown | ethereum | n/a | [`0x1b5bdd...d58b47`](./contracts/ethereum-1/0x1b5bdd21621967d083e428b100062dcefad58b47/) | ⚠️ Unaudited |
| Migration_Diphda | unknown | ethereum | n/a | [`0x9d10dc...502985`](./contracts/ethereum-1/0x9d10dcd04130b247cd08b31f64e60fa3b1502985/) | ⚠️ Unaudited |
| Migration_Hamal | unknown | ethereum | n/a | [`0x656206...8723fa`](./contracts/ethereum-1/0x656206d5ba84038cd633e4be15fca016218723fa/) | ⚠️ Unaudited |
| Migration_Kaus | unknown | ethereum | n/a | [`0x73c9a0...2bc027`](./contracts/ethereum-1/0x73c9a051aa17c328a86684dc07f9daee9e2bc027/) | ⚠️ Unaudited |
| Migration_Mirach | unknown | ethereum | n/a | [`0x833501...86eb63`](./contracts/ethereum-1/0x833501dff7a44d42c44e53a6c73e293a0286eb63/) | ⚠️ Unaudited |
| Migration_Mirfak | unknown | ethereum | n/a | [`0x07961c...3ad740`](./contracts/ethereum-1/0x07961c77ef152e849cd76f4b4aef802bda3ad740/) | ⚠️ Unaudited |
| Migration_Mirzam | unknown | ethereum | n/a | [`0x4fe091...831ba9`](./contracts/ethereum-1/0x4fe0910361c3e12fd5ae25a9630121ed2e831ba9/) | ⚠️ Unaudited |
| Migration_Mizar | unknown | ethereum | n/a | [`0xd6f74e...3be21f`](./contracts/ethereum-1/0xd6f74ee0787e71d3491ee0f148b8afc11c3be21f/) | ⚠️ Unaudited |
| Migration_Peacock | unknown | ethereum | n/a | [`0x5f7e01...ea2681`](./contracts/ethereum-1/0x5f7e01783ff352c3b1cf64e71a7be6e995ea2681/) | ⚠️ Unaudited |
| Migration_Rasalhague | unknown | ethereum | n/a | [`0x24dfd2...94505a`](./contracts/ethereum-1/0x24dfd25d27605677dd9c2b7b63617d279194505a/) | ⚠️ Unaudited |
| Migration_Saiph | unknown | ethereum | n/a | [`0x74bead...ce7636`](./contracts/ethereum-1/0x74beadeda41f10948bab911857a55bad93ce7636/) | ⚠️ Unaudited |
| Migration_Tiaki | unknown | ethereum | n/a | [`0x8b291a...8129f4`](./contracts/ethereum-1/0x8b291ad5dbff69de394b5e51076c7ca4158129f4/) | ⚠️ Unaudited |
| MigrationLib_Diphda | unknown | ethereum | n/a | [`0x8ed621...d3f8ed`](./contracts/ethereum-1/0x8ed621441f435fad6bb799275215051028d3f8ed/) | ⚠️ Unaudited |
| MinimalProxyFactory | unknown | ethereum | n/a | [`0xe3257b...49bc5b`](./contracts/ethereum-1/0xe3257b6191a776ceab5523e2907943459249bc5b/) | ⚠️ Unaudited |
| MultiCollateralSynth | unknown | ethereum | n/a | [`0x005d19...3b6827`](./contracts/ethereum-1/0x005d19ca7ff9d79a5bdf0805fc01d9d7c53b6827/) | ⚠️ Unaudited |
| MultiSigWallet | unknown | ethereum | n/a | [`0x005a4d...b19826`](./contracts/ethereum-1/0x005a4d6edd48ef4cf1354cb4b6f6bc6dc2b19826/) | ⚠️ Unaudited |
| NativeEtherWrapper | unknown | ethereum | n/a | [`0x7a3d89...7a7eeb`](./contracts/ethereum-1/0x7a3d898b717e50a96fd8b232e9d15f0a547a7eeb/) | ⚠️ Unaudited |
| NFTDescriptor | unknown | ethereum | n/a | [`0x42b24a...0a48ec`](./contracts/ethereum-1/0x42b24a95702b9986e82d421cc3568932790a48ec/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | ethereum | n/a | [`0x91ae84...9294f3`](./contracts/ethereum-1/0x91ae842a5ffd8d12023116943e72a606179294f3/) | ⚠️ Unaudited |
| NonRewardPool | unknown | polygon | n/a | [`0x0673a2...8c0fd4`](./contracts/polygon-137/0x0673a2e72b174cdc76d52a51226594b41a8c0fd4/) | ⚠️ Unaudited |
| NonRewardPoolDeployer | unknown | optimism | n/a | [`0x06bbd0...2f4337`](./contracts/optimism-10/0x06bbd082ff7b063a8f467a0f7e3d78bb002f4337/) | ⚠️ Unaudited |
| OneInch | unknown | ethereum | n/a | [`0x111111...20c302`](./contracts/ethereum-1/0x111111111117dc0aa78b770fa6a738034120c302/) | ⚠️ Unaudited |
| OneNetAggregatorDebtRatio | unknown | ethereum | n/a | [`0x977d0d...5fa68d`](./contracts/ethereum-1/0x977d0dd7ea212e9ca1dcd4ec15cd7ceb135fa68d/) | ⚠️ Unaudited |
| OneNetAggregatorIssuedSynths | unknown | ethereum | n/a | [`0xcf1405...78b9e1`](./contracts/ethereum-1/0xcf1405b18dbcea2893abe635c88359c75878b9e1/) | ⚠️ Unaudited |
| OneNetAggregatorsDEFI | unknown | ethereum | n/a | [`0x646f23...884864`](./contracts/ethereum-1/0x646f23085281dbd006fbfd211fd38d0743884864/) | ⚠️ Unaudited |
| OwnerRelayOnEthereum | unknown | ethereum | n/a | [`0x0e16a6...640b8a`](./contracts/ethereum-1/0x0e16a6876210841577b233c4165d7b7edf640b8a/) | ⚠️ Unaudited |
| PendingXTKRewardsSnapshot | unknown | ethereum | n/a | [`0x855711...70ae7e`](./contracts/ethereum-1/0x8557111842ff7f17f4cd1c80cb2ceb631870ae7e/) | ⚠️ Unaudited |
| PrivateMulticall | unknown | ethereum | n/a | [`0xc76ff9...73365f`](./contracts/ethereum-1/0xc76ff99be4c6871d53b41ef8ab85493ed673365f/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x1864ff...636444`](./contracts/ethereum-1/0x1864ff44b3f94732b1def2502383fe138c636444/) | ⚠️ Unaudited |
| ProxyERC20 | unknown | ethereum | n/a | [`0x035255...f9e2f4`](./contracts/ethereum-1/0x0352557b007a4aae1511c114409b932f06f9e2f4/) | ⚠️ Unaudited |
| PurgeableSynth | unknown | ethereum | n/a | [`0x0517a5...e68ec3`](./contracts/ethereum-1/0x0517a56da8a517e3b2d484cc5f1da4bdcfe68ec3/) | ⚠️ Unaudited |
| Quoter | unknown | ethereum | n/a | [`0xb27308...ce5ab6`](./contracts/ethereum-1/0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6/) | ⚠️ Unaudited |
| QuoterV2 | unknown | ethereum | n/a | [`0x61ffe0...30b21e`](./contracts/ethereum-1/0x61ffe014ba17989e743c5f6cb21bf9697530b21e/) | ⚠️ Unaudited |
| ReadProxy | unknown | ethereum | n/a | [`0x4e3b31...ba3ef2`](./contracts/ethereum-1/0x4e3b31eb0e5cb73641ee1e65e7dcefe520ba3ef2/) | ⚠️ Unaudited |
| RebalanceBot | unknown | ethereum | n/a | [`0x5863cc...dd0068`](./contracts/ethereum-1/0x5863cc15025b56fa3b5cac371cce3fa7acdd0068/) | ⚠️ Unaudited |
| RebalancingSetToken | unknown | ethereum | n/a | [`0x93e018...dbbddb`](./contracts/ethereum-1/0x93e01899c10532d76c0e864537a1d26433dbbddb/) | ⚠️ Unaudited |
| RevenueController | unknown | ethereum | n/a | [`0x1f83f6...036d58`](./contracts/ethereum-1/0x1f83f6e87779c029e623462658e01be26c036d58/) | ⚠️ Unaudited |
| RewardEscrowProxy | unknown | ethereum | n/a | [`0x2ac34f...2a45bb`](./contracts/ethereum-1/0x2ac34f8327aced80cfc04085972ee06be72a45bb/) | ⚠️ Unaudited |
| RewardEscrowProxy | unknown | polygon | n/a | [`0x40e8cb...6efcf2`](./contracts/polygon-137/0x40e8cb3440c0b05eb20522d1f63397e5b36efcf2/) | ⚠️ Unaudited |
| RewardEscrowV2 | unknown | ethereum | n/a | [`0xda4ef8...698876`](./contracts/ethereum-1/0xda4ef8520b1a57d7d63f1e249606d1a459698876/) | ⚠️ Unaudited |
| ShortingRewards | unknown | ethereum | n/a | [`0x12dc12...3e4c12`](./contracts/ethereum-1/0x12dc1273915a16ab8bd47ba7866b240c253e4c12/) | ⚠️ Unaudited |
| SignedSafeDecimalMath | unknown | ethereum | n/a | [`0x728a2b...0c7095`](./contracts/ethereum-1/0x728a2b79cad691531cc1146ef802617ff50c7095/) | ⚠️ Unaudited |
| SmartToken | unknown | ethereum | n/a | [`0x164a12...172153`](./contracts/ethereum-1/0x164a1229f4826c9dd70ee3d9f4f3d7b68a172153/) | ⚠️ Unaudited |
| SpartanCouncil | unknown | ethereum | n/a | [`0x023c66...5817c5`](./contracts/ethereum-1/0x023c66b7e13d30a3c46aa433fd2829763d5817c5/) | ⚠️ Unaudited |
| StakingDualRewards | unknown | ethereum | n/a | [`0xb59e8d...fae93f`](./contracts/ethereum-1/0xb59e8d8ad40d06571dc0cf9936e727846dfae93f/) | ⚠️ Unaudited |
| StakingRewardUpdater | unknown | ethereum | n/a | [`0x6f139d...22b8f9`](./contracts/ethereum-1/0x6f139d74e346d4380c6347ec09f573369922b8f9/) | ⚠️ Unaudited |
| SupplySchedule | unknown | ethereum | n/a | [`0x8d203c...cd91cf`](./contracts/ethereum-1/0x8d203c458d536fe0f97e9f741bc231eac8cd91cf/) | ⚠️ Unaudited |
| SwapRouter | unknown | ethereum | n/a | [`0xe59242...861564`](./contracts/ethereum-1/0xe592427a0aece92de3edee1f18e0157c05861564/) | ⚠️ Unaudited |
| SwapRouter02 | unknown | ethereum | n/a | [`0x075b36...aa8a60`](./contracts/ethereum-1/0x075b36de1bd11cb361c5b3b1e80a9ab0e7aa8a60/) | ⚠️ Unaudited |
| Synth | unknown | ethereum | n/a | [`0x02a8d7...eb107f`](./contracts/ethereum-1/0x02a8d76fa48da7bd959579478416d00fa4eb107f/) | ⚠️ Unaudited |
| Synthetix | unknown | ethereum | n/a | [`0x08f30e...8d0564`](./contracts/ethereum-1/0x08f30ecf2c15a783083ab9d5b9211c22388d0564/) | ⚠️ Unaudited |
| SynthetixAirdropper | unknown | ethereum | n/a | [`0x3aa490...1f5daa`](./contracts/ethereum-1/0x3aa4907a38ee3ffa485cdeaa7bb1a2b7241f5daa/) | ⚠️ Unaudited |
| SynthetixBridgeEscrow | unknown | ethereum | n/a | [`0x5fd79d...21ef9f`](./contracts/ethereum-1/0x5fd79d46eba7f351fe49bff9e87cdea6c821ef9f/) | ⚠️ Unaudited |
| SynthetixBridgeToOptimism | unknown | ethereum | n/a | [`0x045e50...aca8d6`](./contracts/ethereum-1/0x045e507925d2e05d114534d0810a1abd94aca8d6/) | ⚠️ Unaudited |
| SynthetixDebtShare | unknown | ethereum | n/a | [`0x89fcb3...3a843f`](./contracts/ethereum-1/0x89fcb32f29e509cc42d0c8b6f058c993013a843f/) | ⚠️ Unaudited |
| SynthRedeemer | unknown | ethereum | n/a | [`0xe53313...15e234`](./contracts/ethereum-1/0xe533139af961c9747356d947838c98451015e234/) | ⚠️ Unaudited |
| SynthSummaryUtil | unknown | ethereum | n/a | [`0x0d6975...f09a54`](./contracts/ethereum-1/0x0d69755e12107695e544842bf7f61d9193f09a54/) | ⚠️ Unaudited |
| SynthUtil | unknown | ethereum | n/a | [`0x81aee4...faf6c3`](./contracts/ethereum-1/0x81aee4ea48f678e172640fb5813cf7a96afaf6c3/) | ⚠️ Unaudited |
| SystemSettings | unknown | ethereum | n/a | [`0x26c6c7...2d139c`](./contracts/ethereum-1/0x26c6c7f10e271eef0011d07319622f31d22d139c/) | ⚠️ Unaudited |
| SystemSettingsLib | unknown | ethereum | n/a | [`0x307bdc...c94cfa`](./contracts/ethereum-1/0x307bdce0a68c612a17bae8d929f36402d7c94cfa/) | ⚠️ Unaudited |
| SystemStatus | unknown | ethereum | n/a | [`0x1c86b3...ddb87e`](./contracts/ethereum-1/0x1c86b3cdf2a60ae3a574f7f71d44e2c50bddb87e/) | ⚠️ Unaudited |
| TickLens | unknown | ethereum | n/a | [`0xbfd813...47f573`](./contracts/ethereum-1/0xbfd8137f7d1516d3ea5ca83523914859ec47f573/) | ⚠️ Unaudited |
| TokenState | unknown | ethereum | n/a | [`0x01ada1...7b264a`](./contracts/ethereum-1/0x01ada1140ca795897c45016dfd296382267b264a/) | ⚠️ Unaudited |
| TokenVesting | unknown | ethereum | n/a | [`0x07d896...cc602b`](./contracts/ethereum-1/0x07d89649602c2adabb5e011a73b78305dccc602b/) | ⚠️ Unaudited |
| TradeAccounting | unknown | ethereum | n/a | [`0x17f231...0c14b5`](./contracts/ethereum-1/0x17f23194386e3a01f4812b7c2b9e7d04ff0c14b5/) | ⚠️ Unaudited |
| TradingRewards | unknown | ethereum | n/a | [`0x629226...c20019`](./contracts/ethereum-1/0x62922670313bf6b41c580143d1f6c173c5c20019/) | ⚠️ Unaudited |
| USD1Token | unknown | ethereum | n/a | [`0x199921...1e2e7f`](./contracts/ethereum-1/0x199921335fa1cab3454042e8e839fdb0581e2e7f/) | ⚠️ Unaudited |
| V3Migrator | unknown | ethereum | n/a | [`0xa5644e...f92b34`](./contracts/ethereum-1/0xa5644e29708357803b5a882d272c41cc0df92b34/) | ⚠️ Unaudited |
| VirtualSynthMastercopy | unknown | ethereum | n/a | [`0xf02ce4...035775`](./contracts/ethereum-1/0xf02ce48fd47d7fa1b7a45a0444805d320d035775/) | ⚠️ Unaudited |
| WrapperFactory | unknown | ethereum | n/a | [`0x02f9bc...8a9480`](./contracts/ethereum-1/0x02f9bc46bed33acdb9cb002fe346734cef8a9480/) | ⚠️ Unaudited |
| xAssetCLRBeacon | unknown | ethereum | n/a | [`0x82b6d2...b52394`](./contracts/ethereum-1/0x82b6d2acb2877ef6c4ea0fbcc2346e8cb7b52394/) | ⚠️ Unaudited |
| xBNT | unknown | ethereum | n/a | [`0x104499...1d96e9`](./contracts/ethereum-1/0x104499cee754463990393989c046d84e3b1d96e9/) | ⚠️ Unaudited |
| xBNTaMerkleClaim | unknown | ethereum | n/a | [`0x978090...27be52`](./contracts/ethereum-1/0x978090cefbe48b5c785e1265f60a41b92e27be52/) | ⚠️ Unaudited |
| xINCH | unknown | ethereum | n/a | [`0x185991...62bb45`](./contracts/ethereum-1/0x185991110f8699ddec230764990ebe649c62bb45/) | ⚠️ Unaudited |
| xKNC | unknown | ethereum | n/a | [`0x06890d...819e81`](./contracts/ethereum-1/0x06890d4c65a4cb75be73d7ccb4a8ee7962819e81/) | ⚠️ Unaudited |
| xMigration | unknown | ethereum | n/a | [`0x1a5d6d...a5f627`](./contracts/ethereum-1/0x1a5d6d0124509e532fffd15b50ba54de09a5f627/) | ⚠️ Unaudited |
| xSNX | unknown | ethereum | n/a | [`0x04bef8...f62a63`](./contracts/ethereum-1/0x04bef870de607519c91d16a23434ad5745f62a63/) | ⚠️ Unaudited |
| xSNXAdmin | unknown | ethereum | n/a | [`0x2139a1...a68047`](./contracts/ethereum-1/0x2139a12ff5377fceb02729c8658f4b0922a68047/) | ⚠️ Unaudited |
| xSNXaMerkleClaim | unknown | ethereum | n/a | [`0x1de6cd...cabb1c`](./contracts/ethereum-1/0x1de6cd47dfe2df0d72bff4354d04a79195cabb1c/) | ⚠️ Unaudited |
| xSNXCore | unknown | ethereum | n/a | [`0x293444...2ea6c3`](./contracts/ethereum-1/0x2934443c1749dcc0cdcabbd77098eea31d2ea6c3/) | ⚠️ Unaudited |
| XTKProxy | unknown | ethereum | n/a | [`0x7f3edc...b3adeb`](./contracts/ethereum-1/0x7f3edcdd180dbe4819bd98fee8929b5cedb3adeb/) | ⚠️ Unaudited |
| XTKRetroactiveClaimsContract | unknown | ethereum | n/a | [`0x11f103...5c6dfd`](./contracts/ethereum-1/0x11f10378fc56277eedbc0c3309c457b0fd5c6dfd/) | ⚠️ Unaudited |
| xTokenManager | unknown | ethereum | n/a | [`0x21c532...d0364d`](./contracts/ethereum-1/0x21c532c54edf1106e50203ef1115abac52d0364d/) | ⚠️ Unaudited |
| xU3LPStable | unknown | ethereum | n/a | [`0x107357...1dc094`](./contracts/ethereum-1/0x107357ac2299a4b876504532cb058fd38c1dc094/) | ⚠️ Unaudited |

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
| [ABDK-audit.pdf](https://github.com/xtokenmarket/terminal-mining/blob/master/audits/ABDK-audit.pdf) | ABDK | Audit | 2022-03 | stale | Direct | contract_name | 7 | high |
| [certik-audit.pdf](https://github.com/xtokenmarket/terminal-mining/blob/master/audits/certik-audit.pdf) | CertiK | Audit | 2022-02 | stale | Direct | contract_name | 7 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 159 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=14

Fork inheritance lineage and inherited audits are included when available.
