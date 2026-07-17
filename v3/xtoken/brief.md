# Agentic Audit Brief: xToken

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: xToken (`xtoken`)
- Website: [https://xtokenterminal.io/](https://xtokenterminal.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, optimism, polygon
- Contract surface: 172 unique implementations (172 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $711,969.74
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for xToken in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x000000000022d473030f116ddee9f6b43ac78ba3`, chain 1)
- UnnamedContract (`0x1ba9912ab92d8c58e1def3f783e4ebe0a516d76e`, chain 1)
- UnnamedContract (`0x337842047368607f458e3d7bb47e676aec1509d9`, chain 1)
- UnnamedContract (`0x3af134307d5ee90faa2ba9cdba14ba66414cf1a7`, chain 1)
- UnnamedContract (`0x4658c167824c000ea93d62f15b5c9bb53ee329fe`, chain 1)
- UnnamedContract (`0x4b46ea82d80825ca5640301f47c035942e6d9a46`, chain 1)
- UnnamedContract (`0x4e9083ec6ed91d6ab6b59eaecfcd4459f76dcde1`, chain 1)
- UnnamedContract (`0x7b96cd54aa750ef83ca90ea487e0ba321707559a`, chain 1)
- UnnamedContract (`0xa348cfe719b63151f228e3c30eb424ba5a983012`, chain 1)
- UnnamedContract (`0xb3999b2d30dd8c9faece5a8a503fae42b8b1b614`, chain 1)
- UnnamedContract (`0xc9e814bb90b7e43c138f86d5c93df21817d976ca`, chain 1)
- UnnamedContract (`0xea6f72650da80093a1012606cc7328f5474ed378`, chain 1)
- UnnamedContract (`0xf24a818d2e276936a7abddfaad9c369a5b9dcde8`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/23 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 13 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 159 discovered implementations shown in the inventory but excluded from coverage (3 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 12
- Confirmed-live implementations: 13 of 172 unique; 159 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/159
- Verified + Unaudited implementations: 159
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 172
- Raw deployments: 172
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (159)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61166014e3f04e40c953fe4eab9d9e40863c83ae` | ⚠️ Unaudited |
| AlphaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1faa113cbe53436df28ff0aee54275c13b40975` | ⚠️ Unaudited |
| BancorBuyer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77a77eca75445841875ebb67a33d0a97dc34d924` | ⚠️ Unaudited |
| BancorChanger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb72a0fa1e537c956dfca72711c468efd81270468` | ⚠️ Unaudited |
| BancorConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40a36b6d7f956f80d07e401a5f620c3a4f252e16` | ⚠️ Unaudited |
| BancorConverterExtensions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf46002c37af6fb078ae1833fd447698a0c9012f7` | ⚠️ Unaudited |
| BancorConverterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a8079ce1fd9b1ae682d9f1b709609a05bf9b236` | ⚠️ Unaudited |
| BancorConverterUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaebf1085dd9a0fa403a75399c956595e3a7c3d5c` | ⚠️ Unaudited |
| BancorFormula | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eeb95a68c7382217ccdf9d4d1c89f3986c30cc5` | ⚠️ Unaudited |
| BancorFormulaProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b0c11e0df925387de1ce92504fe0e4af23af6f2` | ⚠️ Unaudited |
| BancorGasPriceLimit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fd539ef2be3192b6d6bdf095968bac2d74daa6e` | ⚠️ Unaudited |
| BancorNetwork | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x568e7cfebb39e2b2695e6f90d1d33c3cf03e5e07` | ⚠️ Unaudited |
| BancorPriceFloor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec6a713197fcbb4cfe7213800470b0940268549` | ⚠️ Unaudited |
| BancorQuickConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf1cc6ed5b653def7417e3fa93992c3ffe49139b` | ⚠️ Unaudited |
| BinaryOptionMarketData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdadea8352661ff961956c7ab5425839a400535a4` | ⚠️ Unaudited |
| BinaryOptionMarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x211ba925b35b82246a3ccfa3a991a39a840f025c` | ⚠️ Unaudited |
| BinaryOptionMarketManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x673e76631981cb55783527f744e581aba8cf406d` | ⚠️ Unaudited |
| CLR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0485954f55efda230f9027ffde40466467965610` | ⚠️ Unaudited |
| CLRDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aa5853d2d934c3a239d83f56dc26ebb25084163` | ⚠️ Unaudited |
| CollateralErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b3812bb9f6151beb6fa10783f1ae848a77a0d46` | ⚠️ Unaudited |
| CollateralEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ff5c0a14121ca39211c95f6ceb221b86a90729e` | ⚠️ Unaudited |
| CollateralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x067e398605e84f2d0aeec1806e62768c5110dcc6` | ⚠️ Unaudited |
| CollateralManagerState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x573e5105c4b92416d1544a188f1bf77d442bb52d` | ⚠️ Unaudited |
| CollateralShort | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x188c2274b04ea392b21487b5de299e382ff84246` | ⚠️ Unaudited |
| CollateralState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04d9231b1fff88464a3d26fd91a1ba0b24796107` | ⚠️ Unaudited |
| ContractFeatures | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x563172281800b139f69fb038cc2c08cad56ce699` | ⚠️ Unaudited |
| ContractRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7148b1c9154bcf273a2c7d7b90e3edc6fee395e6` | ⚠️ Unaudited |
| CouncilDilution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30ba359fe295e311d24bccb1502c7a6e89fb2100` | ⚠️ Unaudited |
| CrowdsaleController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbc79794599b19274850492394004087cbf89710` | ⚠️ Unaudited |
| DAONFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04567106db2a4661a5fda9f48719d57b372b77bf` | ⚠️ Unaudited |
| DappMaintenance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab0b2f1cf979cdbf4676251f35353ec5af2732dd` | ⚠️ Unaudited |
| DebtCache | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08118e04f58d7863b4fcf1de0e07c83a2541b89e` | ⚠️ Unaudited |
| DelegateApprovals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15fd6e554874b9e70f832ed37f231ac5e142362f` | ⚠️ Unaudited |
| EmptyFuturesMarketManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x834ef6c82d431ac9a7a6b66325f185b2430780d7` | ⚠️ Unaudited |
| EternalStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f7c200c4d3b5570c777764884ce6de67f31d3ba` | ⚠️ Unaudited |
| EtherCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7133aff303539b0a4f60ab9bd9656598bf49e272` | ⚠️ Unaudited |
| EtherCollateralsUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfed77055b40d63dcf17ab250ffd6948fbff57b82` | ⚠️ Unaudited |
| EtherToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315` | ⚠️ Unaudited |
| EtherWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1aae9d18bbe386b102435a8632c8063d31e747c` | ⚠️ Unaudited |
| ExchangeCircuitBreaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeacaed9581294b1b5cfb6b941d4b8b81b2005437` | ⚠️ Unaudited |
| Exchanger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d53a13d78766c0db6ef73ec0ae1138ea2b6f5d4` | ⚠️ Unaudited |
| ExchangeRates | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa68c6020ff9ea79f05345cdd2ce37df4b89478ed` | ⚠️ Unaudited |
| ExchangeRatesWithDexPricing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d9296df2ad52f174bf671f555d78628beba7752` | ⚠️ Unaudited |
| ExchangerWithFeeRecAlternatives | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a417c61b8062363e4ff50900779463b45d235f6` | ⚠️ Unaudited |
| ExchangerWithVirtualSynth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bfdc04b38251394542586969e2356d0d731f7de` | ⚠️ Unaudited |
| ExchangerWithVirtualSynth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x585fd19eba8f1a81f37c5eb322fd4b8d911367e8` | ⚠️ Unaudited |
| FeePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x013d16cb1bd493bbb89d45b43254842fadc169c8` | ⚠️ Unaudited |
| FlexibleStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc757acba3c0506218b3022266a9dc7f3612d85f5` | ⚠️ Unaudited |
| GrantsDAOV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cf117aaa757dad4a084025c3f23f1b67a037049` | ⚠️ Unaudited |
| iETHRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0333bd82e1f5ff89c19ec44ab5302a0041b33139` | ⚠️ Unaudited |
| Implementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x736d22180993e20cac87e9b2035560c1de455027` | ⚠️ Unaudited |
| ImplementationResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2206aa8ec85270ace5597539e3c287e021d41843` | ⚠️ Unaudited |
| IssuanceEternalStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x631e93a0fb06b5ec6d52c0a2d89a3f9672d6ba64` | ⚠️ Unaudited |
| Issuer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0689b1f72930eb25cacb99f790d2778e713a2c33` | ⚠️ Unaudited |
| Keeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9ca5dc1b26731feb99c7b6fe8dd9b789a259430` | ⚠️ Unaudited |
| KyberNetworkCrystal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd974d5c2e2928dea5f71b9825b8b646686bd200` | ⚠️ Unaudited |
| Liquidations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46338723022def2c5151e83be759796a988754a2` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e5fe1b05612581576e9a3db048416d0b1e3c425` | ⚠️ Unaudited |
| LiquidatorRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf79603a71144e415730c1a6f57f366e4ea962c00` | ⚠️ Unaudited |
| LiquidityProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45eaadc906b33212a230e2af5e9039dfaaf0adb2` | ⚠️ Unaudited |
| LMTerminal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x090559d58aab8828c27ee7a7eab18efd5bb90374` | ⚠️ Unaudited |
| LPCompVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ae00949b483509a9043fc9231b3a09dc4f6cbc6` | ⚠️ Unaudited |
| MerkleClaimTree | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ca8723b766ffed1fda5ec9ff925f564ce5ab28e` | ⚠️ Unaudited |
| Migration_Algol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaab72cfb21563830744f323579704e2524fb8b80` | ⚠️ Unaudited |
| Migration_Alkaid | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8de6828d358c2d9f93f4913dec4f14894139b53` | ⚠️ Unaudited |
| Migration_Alkaid_Supplemental | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6efd217b5fa2b2eddf9edb07b9e501f99d7efdc0` | ⚠️ Unaudited |
| Migration_Alnitak | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ca903aa46aa58c9e947f7504e02760d581e4ecf` | ⚠️ Unaudited |
| Migration_Alphard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf41e173be5778acbdb6885edfa790706bb0ef32e` | ⚠️ Unaudited |
| Migration_Alpheratz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda2168521c501adb5dc8e2a81a86ec95b32abe71` | ⚠️ Unaudited |
| Migration_Alsephina | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b5bdd21621967d083e428b100062dcefad58b47` | ⚠️ Unaudited |
| Migration_Diphda | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d10dcd04130b247cd08b31f64e60fa3b1502985` | ⚠️ Unaudited |
| Migration_Hamal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656206d5ba84038cd633e4be15fca016218723fa` | ⚠️ Unaudited |
| Migration_Kaus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73c9a051aa17c328a86684dc07f9daee9e2bc027` | ⚠️ Unaudited |
| Migration_Mirach | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x833501dff7a44d42c44e53a6c73e293a0286eb63` | ⚠️ Unaudited |
| Migration_Mirfak | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07961c77ef152e849cd76f4b4aef802bda3ad740` | ⚠️ Unaudited |
| Migration_Mirzam | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fe0910361c3e12fd5ae25a9630121ed2e831ba9` | ⚠️ Unaudited |
| Migration_Mizar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6f74ee0787e71d3491ee0f148b8afc11c3be21f` | ⚠️ Unaudited |
| Migration_Peacock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f7e01783ff352c3b1cf64e71a7be6e995ea2681` | ⚠️ Unaudited |
| Migration_Rasalhague | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24dfd25d27605677dd9c2b7b63617d279194505a` | ⚠️ Unaudited |
| Migration_Saiph | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74beadeda41f10948bab911857a55bad93ce7636` | ⚠️ Unaudited |
| Migration_Tiaki | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b291ad5dbff69de394b5e51076c7ca4158129f4` | ⚠️ Unaudited |
| MigrationLib_Diphda | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ed621441f435fad6bb799275215051028d3f8ed` | ⚠️ Unaudited |
| MinimalProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3257b6191a776ceab5523e2907943459249bc5b` | ⚠️ Unaudited |
| MultiCollateralSynth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x005d19ca7ff9d79a5bdf0805fc01d9d7c53b6827` | ⚠️ Unaudited |
| MultiSigWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x005a4d6edd48ef4cf1354cb4b6f6bc6dc2b19826` | ⚠️ Unaudited |
| NativeEtherWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a3d898b717e50a96fd8b232e9d15f0a547a7eeb` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42b24a95702b9986e82d421cc3568932790a48ec` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91ae842a5ffd8d12023116943e72a606179294f3` | ⚠️ Unaudited |
| NonRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0673a2e72b174cdc76d52a51226594b41a8c0fd4` | ⚠️ Unaudited |
| NonRewardPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x06bbd082ff7b063a8f467a0f7e3d78bb002f4337` | ⚠️ Unaudited |
| OneInch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x111111111117dc0aa78b770fa6a738034120c302` | ⚠️ Unaudited |
| OneNetAggregatorDebtRatio | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x977d0dd7ea212e9ca1dcd4ec15cd7ceb135fa68d` | ⚠️ Unaudited |
| OneNetAggregatorIssuedSynths | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf1405b18dbcea2893abe635c88359c75878b9e1` | ⚠️ Unaudited |
| OneNetAggregatorsDEFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x646f23085281dbd006fbfd211fd38d0743884864` | ⚠️ Unaudited |
| OwnerRelayOnEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e16a6876210841577b233c4165d7b7edf640b8a` | ⚠️ Unaudited |
| PendingXTKRewardsSnapshot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8557111842ff7f17f4cd1c80cb2ceb631870ae7e` | ⚠️ Unaudited |
| PrivateMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc76ff99be4c6871d53b41ef8ab85493ed673365f` | ⚠️ Unaudited |
| Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1864ff44b3f94732b1def2502383fe138c636444` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x21a3ed04b3f5e17bd158aa30a75c7429bcb03169` | ⚠️ Unaudited |
| ProxyERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0352557b007a4aae1511c114409b932f06f9e2f4` | ⚠️ Unaudited |
| PurgeableSynth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0517a56da8a517e3b2d484cc5f1da4bdcfe68ec3` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61ffe014ba17989e743c5f6cb21bf9697530b21e` | ⚠️ Unaudited |
| ReadProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e3b31eb0e5cb73641ee1e65e7dcefe520ba3ef2` | ⚠️ Unaudited |
| RebalanceBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5863cc15025b56fa3b5cac371cce3fa7acdd0068` | ⚠️ Unaudited |
| RebalancingSetToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93e01899c10532d76c0e864537a1d26433dbbddb` | ⚠️ Unaudited |
| RevenueController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f83f6e87779c029e623462658e01be26c036d58` | ⚠️ Unaudited |
| RewardEscrowProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2ac34f8327aced80cfc04085972ee06be72a45bb` | ⚠️ Unaudited |
| RewardEscrowProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x40e8cb3440c0b05eb20522d1f63397e5b36efcf2` | ⚠️ Unaudited |
| RewardEscrowV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda4ef8520b1a57d7d63f1e249606d1a459698876` | ⚠️ Unaudited |
| ShortingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12dc1273915a16ab8bd47ba7866b240c253e4c12` | ⚠️ Unaudited |
| SignedSafeDecimalMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x728a2b79cad691531cc1146ef802617ff50c7095` | ⚠️ Unaudited |
| SmartToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x164a1229f4826c9dd70ee3d9f4f3d7b68a172153` | ⚠️ Unaudited |
| SpartanCouncil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x023c66b7e13d30a3c46aa433fd2829763d5817c5` | ⚠️ Unaudited |
| StakedCLRToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08b129a7e3105bba38387ab940d5546991b209c2` | ⚠️ Unaudited |
| StakingDualRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb59e8d8ad40d06571dc0cf9936e727846dfae93f` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0031b7ac27d10c75072d2399323d4ca4751c4642` | ⚠️ Unaudited |
| StakingRewardUpdater | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f139d74e346d4380c6347ec09f573369922b8f9` | ⚠️ Unaudited |
| SupplySchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d203c458d536fe0f97e9f741bc231eac8cd91cf` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe592427a0aece92de3edee1f18e0157c05861564` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075b36de1bd11cb361c5b3b1e80a9ab0e7aa8a60` | ⚠️ Unaudited |
| Synth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02a8d76fa48da7bd959579478416d00fa4eb107f` | ⚠️ Unaudited |
| Synthetix | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08f30ecf2c15a783083ab9d5b9211c22388d0564` | ⚠️ Unaudited |
| SynthetixAirdropper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aa4907a38ee3ffa485cdeaa7bb1a2b7241f5daa` | ⚠️ Unaudited |
| SynthetixBridgeEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fd79d46eba7f351fe49bff9e87cdea6c821ef9f` | ⚠️ Unaudited |
| SynthetixBridgeToOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x045e507925d2e05d114534d0810a1abd94aca8d6` | ⚠️ Unaudited |
| SynthetixDebtShare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89fcb32f29e509cc42d0c8b6f058c993013a843f` | ⚠️ Unaudited |
| SynthRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe533139af961c9747356d947838c98451015e234` | ⚠️ Unaudited |
| SynthSummaryUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d69755e12107695e544842bf7f61d9193f09a54` | ⚠️ Unaudited |
| SynthUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81aee4ea48f678e172640fb5813cf7a96afaf6c3` | ⚠️ Unaudited |
| SystemSettings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26c6c7f10e271eef0011d07319622f31d22d139c` | ⚠️ Unaudited |
| SystemSettingsLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x307bdce0a68c612a17bae8d929f36402d7c94cfa` | ⚠️ Unaudited |
| SystemStatus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c86b3cdf2a60ae3a574f7f71d44e2c50bddb87e` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfd8137f7d1516d3ea5ca83523914859ec47f573` | ⚠️ Unaudited |
| TokenState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01ada1140ca795897c45016dfd296382267b264a` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07d89649602c2adabb5e011a73b78305dccc602b` | ⚠️ Unaudited |
| TradeAccounting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17f23194386e3a01f4812b7c2b9e7d04ff0c14b5` | ⚠️ Unaudited |
| TradingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62922670313bf6b41c580143d1f6c173c5c20019` | ⚠️ Unaudited |
| UniswapLibrary | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x246ebb0514c69767547213e2ff56223062628ef9` | ⚠️ Unaudited |
| USD1Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x199921335fa1cab3454042e8e839fdb0581e2e7f` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa5644e29708357803b5a882d272c41cc0df92b34` | ⚠️ Unaudited |
| VirtualSynthMastercopy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf02ce48fd47d7fa1b7a45a0444805d320d035775` | ⚠️ Unaudited |
| WrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02f9bc46bed33acdb9cb002fe346734cef8a9480` | ⚠️ Unaudited |
| xAssetCLR | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x152169b51b4a737dc0abfe8b943af64cf32e7189` | ⚠️ Unaudited |
| xAssetCLRBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82b6d2acb2877ef6c4ea0fbcc2346e8cb7b52394` | ⚠️ Unaudited |
| xAssetCLRProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f70a48b13135e394a6f4026ad9f597ce4ef2298` | ⚠️ Unaudited |
| xBNT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x104499cee754463990393989c046d84e3b1d96e9` | ⚠️ Unaudited |
| xBNTaMerkleClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x978090cefbe48b5c785e1265f60a41b92e27be52` | ⚠️ Unaudited |
| xINCH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x185991110f8699ddec230764990ebe649c62bb45` | ⚠️ Unaudited |
| xKNC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x06890d4c65a4cb75be73d7ccb4a8ee7962819e81` | ⚠️ Unaudited |
| xMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a5d6d0124509e532fffd15b50ba54de09a5f627` | ⚠️ Unaudited |
| xSNX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04bef870de607519c91d16a23434ad5745f62a63` | ⚠️ Unaudited |
| xSNXAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2139a12ff5377fceb02729c8658f4b0922a68047` | ⚠️ Unaudited |
| xSNXaMerkleClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1de6cd47dfe2df0d72bff4354d04a79195cabb1c` | ⚠️ Unaudited |
| xSNXCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2934443c1749dcc0cdcabbd77098eea31d2ea6c3` | ⚠️ Unaudited |
| XTKProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7f3edcdd180dbe4819bd98fee8929b5cedb3adeb` | ⚠️ Unaudited |
| XTKRetroactiveClaimsContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11f10378fc56277eedbc0c3309c457b0fd5c6dfd` | ⚠️ Unaudited |
| xTokenManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21c532c54edf1106e50203ef1115abac52d0364d` | ⚠️ Unaudited |
| xU3LPStable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x107357ac2299a4b876504532cb058fd38c1dc094` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397356 | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397358 | `0x1ba9912ab92d8c58e1def3f783e4ebe0a516d76e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397360 | `0x337842047368607f458e3d7bb47e676aec1509d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397361 | `0x3af134307d5ee90faa2ba9cdba14ba66414cf1a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397362 | `0x4658c167824c000ea93d62f15b5c9bb53ee329fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397363 | `0x4b46ea82d80825ca5640301f47c035942e6d9a46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397365 | `0x4e9083ec6ed91d6ab6b59eaecfcd4459f76dcde1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397368 | `0x7b96cd54aa750ef83ca90ea487e0ba321707559a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397370 | `0xa348cfe719b63151f228e3c30eb424ba5a983012` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397372 | `0xb3999b2d30dd8c9faece5a8a503fae42b8b1b614` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397374 | `0xc9e814bb90b7e43c138f86d5c93df21817d976ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397376 | `0xea6f72650da80093a1012606cc7328f5474ed378` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397378 | `0xf24a818d2e276936a7abddfaad9c369a5b9dcde8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ABDK-audit.pdf](https://github.com/xtokenmarket/terminal-mining/blob/master/audits/ABDK-audit.pdf) | ABDK | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 24 | high |
| [certik-audit.pdf](https://github.com/xtokenmarket/terminal-mining/blob/master/audits/certik-audit.pdf) | CertiK | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 22 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18620] ABDK-audit.pdf — no match: The audit report explicitly lists 24 files in scope on page 21. The date is from the cover page: '10th March 2022'.
- [18621] certik-audit.pdf — no match: All contracts listed in the Audit Scope table are extracted. The audit date is explicitly given as 'Delivery Date Feb 04, 2022'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ABDK-audit.pdf | ICLR | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | ICLRDeployer | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | IERC20 | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | IERC20Extended | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | ILMTerminal | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | IProxyAdmin | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | IRewardEscrow | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | IStakedCLRToken | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | IStakingRewards | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | IxTokenManager | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | UniswapLibrary | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | Utils | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | CLRProxy | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | LMTerminalProxy | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | ProxyAdmin | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | StakedCLRTokenProxy | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | StakingRewardsProxy | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | RewardEscrow | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | StakingRewards | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | BlockLock | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | CLR | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | CLRDeployer | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | LMTerminal | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | StakedCLRToken | unmatched — not counted | — | listed in scope | no |
| certik-audit.pdf | IERC20 | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | IERC20Extended | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | ILMTerminal | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | IRewardEscrow | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | IStakedCLRToken | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | IStakingRewards | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | IxAssetCLR | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | IxTokenManager | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | ABDKMath64x64 | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | UniswapLibrary | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | Utils | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | LMTerminalProxy | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | StakedCLRTokenProxy | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | xAssetCLRProxy | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | StakingRewardsProxy | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | RewardEscrow | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | StakingRewards | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | BlockLock | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | CLRDeployer | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | LMTerminal | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | StakedCLRToken | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | xAssetCLR | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 156 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 46 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [18620] ABDK-audit.pdf
- [18621] certik-audit.pdf

Fork inheritance lineage and inherited audits are included when available.
