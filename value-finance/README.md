# Agentic Audit Brief: Value Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 9 (0 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Value Finance (`value-finance`)
- Website: [https://valuedefi.io](https://valuedefi.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum
- Contract surface: 236 unique implementations (241 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $500,008.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Value Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc, ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 1; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 235 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/130
- Verified + Unaudited implementations: 130
- Verified by bytecode match: 0
- Unverified implementations: 106
- Unique implementations: 236
- Raw deployments: 241
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 9 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (130)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb1a8cbfd40877b70b5ab2f95a71d78cbf8af7f14` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x91df0ffc1b95113ba1f41ca0669fccaec0f55876` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2f7c66f2c0f570e659e44f279f14f4131788dfb6`; bsc `0x52614aa808412bed0a2aeb29452874a1368b996c` | ⚠️ Unaudited |
| BActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60132fff0ca7c8a24a67159c7d9a8bcd8a8eca36` | ⚠️ Unaudited |
| BalancerLpPairConverter_EthUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb250308f23be3bbfbd4af2e74a873fd2bfc94ae6` | ⚠️ Unaudited |
| BalancerLpPairConverter_EthWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5118e35bc2b061947264bbb32dce0b7bcb9a5448` | ⚠️ Unaudited |
| BarnBridgeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8716f20ed86ce1b9931db53e851b62160437d13f` | ⚠️ Unaudited |
| BFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebc44681c125d63210a33d30c55fd3d37762675b` | ⚠️ Unaudited |
| BondMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31a3566d95f638b3568a278915589dad96fcdcf2` | ⚠️ Unaudited |
| BPoolCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58bab52a511c747335d3da53cce9a6e7beabe950` | ⚠️ Unaudited |
| CompositeVaultBank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x713a5f7d7b48f8f4806f9fb4dc9c387c102767e1` | ⚠️ Unaudited |
| CompositeVaultBBridgeUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30993bd1d103ac3d163797dc04aafaa1fdd1069c` | ⚠️ Unaudited |
| CompositeVaultBptEthUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x030c8eb47f720482f7fac6f1d066431f0c3a7de3` | ⚠️ Unaudited |
| CompositeVaultBptEthWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0a62cc5ebfa79b155b4ec90e74c00e0176692772`; ethereum `0x694fcd0cea05218ea6397f16f88d445707a04dee` | ⚠️ Unaudited |
| CompositeVaultController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e67c27d14032304c0e8c3af8214ecf102641dbb` | ⚠️ Unaudited |
| CompositeVaultController_BBridgeUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa25ec370c34fe82ef4615c8dbbf6229f0a53131a` | ⚠️ Unaudited |
| CompositeVaultController_BptEthUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50e50f60b09930ac2cc14bf0725d7a29ff2b8126` | ⚠️ Unaudited |
| CompositeVaultController_BptEthWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87abb9370c9cf8766eaefb48f3b1395ad8439707` | ⚠️ Unaudited |
| CompositeVaultController_SlpEthWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6acaa8fa3f4bf5644f5575da9c1022eca8ecd8aa` | ⚠️ Unaudited |
| CompositeVaultMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a8ac384d3a9086afcc13eb58e90916f17affc89` | ⚠️ Unaudited |
| CompositeVaultSlpEthUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x061434f835a87f683793ba1271c2dfeb618a0e00` | ⚠️ Unaudited |
| CompositeVaultSlpEthWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ffd9995712b92d772b9dc195c5e00cc984c9932` | ⚠️ Unaudited |
| Dollar | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3479b0acf875405d7853f44142fe06470a40f6cc`; ethereum `0xca351b42cd58479e79813cce0a74a8f91cdf0a7b` | ⚠️ Unaudited |
| ERC20BridgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcfab4ecdf2caf3c98145b6fcdac1b46760ffcb6` | ⚠️ Unaudited |
| ExchangeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0549282eb828861a0effa4c5cc281a1afec0fa21` | ⚠️ Unaudited |
| FaaSPoolCreatorLite | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45c4d796e7506f467aed24b81db897f18b6f771a` | ⚠️ Unaudited |
| FaasPoolProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x210f342802a95be9e8cc371961f23524a3d426e7` | ⚠️ Unaudited |
| FaaSRewardFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x240f42f2b096b5f2fcf351c9dcdda307a0c835ff` | ⚠️ Unaudited |
| FaasYtruClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4871e1f699cd9b94b005b0b912114b050b35408` | ⚠️ Unaudited |
| GovVaultRewardAutoCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d012729ec8affc08043d97ca2c02fdfdcb90c92` | ⚠️ Unaudited |
| gvVALUE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0610c2d9f6ebc40078cf081e2d1c4252dd50ad15` | ⚠️ Unaudited |
| gvVALUEGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2dfb07be34c5499a07e6873c249433c953d54480` | ⚠️ Unaudited |
| LegacyPoolDrainer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb3a0fa12a7bb34b3c7897c6718d9706be7fea90` | ⚠️ Unaudited |
| MathUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9fbd6526bc1a0ab72a5258935013398904b2bdd8` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70508dd819635a58babbae1362bc83c41a569a03` | ⚠️ Unaudited |
| MerkleDistributorMultiple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd10ab835fb825c2f25d5b02e559db6d5586a0910` | ⚠️ Unaudited |
| MultiStablesClaimReturn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a2c1d4aad6f85c3d0bd8a2018a6120a30c0c5db` | ⚠️ Unaudited |
| MultiStablesVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x55bf8304c78ba6fe47fd251f37d7beb485f86d26`; ethereum `0xddd7df28b1fb668b77860b473af819b03db61101` | ⚠️ Unaudited |
| MultiStablesVaultController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba5d28f4ecee5586d616024c74e4d791e01adee7` | ⚠️ Unaudited |
| OracleMultiPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2d385185bbd96f4794ae3504aeaa7825827a297` | ⚠️ Unaudited |
| ProfitSharingRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5344f4d4e96f5cdfad4aa702771d479c911a5db4` | ⚠️ Unaudited |
| ProtocolFeeRemover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58bd64b52ca6d6ece85bfcd2d24a8e8044eb66d5` | ⚠️ Unaudited |
| ReserveFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6aed0a5a6db07ceac234934dfd3c32d284370fb2` | ⚠️ Unaudited |
| ReserveFundV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6cf664834c9b59951a883199f32f536a44afe4fb` | ⚠️ Unaudited |
| RewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f527493916170de7d945daecbdcbe27ec8e05b8` | ⚠️ Unaudited |
| ShareConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57cda125d0c7b146a8320614ccd6c55999d15bf2` | ⚠️ Unaudited |
| StableSwap3PoolConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c2f33b3a580baeb2a1f2d34bcc76e020a54338d` | ⚠️ Unaudited |
| StableSwapBusdConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d0e55dbcd7f2974957b6c823bffcd530e2fc2b0` | ⚠️ Unaudited |
| StableSwapCompoundConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85f98829f6f4b4551932de62c48781d17c2281e0` | ⚠️ Unaudited |
| StableSwapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae63a2065cdf6e516037fa1dd4efc0a439717718` | ⚠️ Unaudited |
| StableSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc437b8d65ecdd43cda92739e09ebd68bbe1965e1` | ⚠️ Unaudited |
| StakePoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14abdb3fe4727852dcc0226240a307640b4b7678` | ⚠️ Unaudited |
| StakePoolCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x959ecbacc9cfaa5ba63406fde9a238895b30257d` | ⚠️ Unaudited |
| StakePoolEpochRewardCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5be1aac0ce9bd53b49179a37508c318ee146e508` | ⚠️ Unaudited |
| StakePoolHasOperatorCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2fb63ba4a7500376a4fd414b67affdd490625d8` | ⚠️ Unaudited |
| StrategyAutoCake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcce5b1d506254c3ddc49eb195d7b614cf70721f1` | ⚠️ Unaudited |
| StrategyBalancerEthUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7c68aca652b603d59d52eec076a6dfab02b27e6` | ⚠️ Unaudited |
| StrategyBalancerEthWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b2ef5c86bfb4d9b50100391e289b7dcf445c9a9` | ⚠️ Unaudited |
| StrategyBarnBridgeUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6bf3eba4ab600090235f4bee5894ae17b255e1b` | ⚠️ Unaudited |
| StrategyBEarnVSwapWeightLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa27ce2736492e44f05467471e479d7aeeb13eabd` | ⚠️ Unaudited |
| StrategyCurve3Crv | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x467e9f2caa9b7678ddc29b248cb9fb181907bf3e` | ⚠️ Unaudited |
| StrategyCurveBCrv | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb43f0707b2719a5b8ab905d253022c6073a63926` | ⚠️ Unaudited |
| StrategyCurveCCrv | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98595670e97aa2ec229f366806b37745ad6e92b5` | ⚠️ Unaudited |
| StrategyPickle3Crv | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3061cfa9f3c68190581550c52e0ab440f372ff44` | ⚠️ Unaudited |
| StrategySushiEthUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbec7de67579642df01fec1eae1833d668a6b3fdb` | ⚠️ Unaudited |
| StrategySushiEthWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x129a8d8000b8e80a99aa09fe40d189947108bcad` | ⚠️ Unaudited |
| SushiswapLpPairConverter_EthUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd93112068a47425e60d9d6841043b997df83803f` | ⚠️ Unaudited |
| SushiswapLpPairConverter_EthWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbda22300460bf0d818fb154e1dba58d6d9942f9e` | ⚠️ Unaudited |
| SwapCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c032f5bb0ab7c02d8918617fa1482b559f14960` | ⚠️ Unaudited |
| SwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02818a8256cf93564fab2199de2b13628fca2c39` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x105e62e4bdfa67bca18400cfbe2eacd4d0be080d` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x605187e4ccb44b2eef08b4dffa34d895e8db76de` | ⚠️ Unaudited |
| UniswapRouterSupportingFeeOnTransferTokens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc60a1235e589f79bcc3d0b8ce4910411dba460c` | ⚠️ Unaudited |
| Univ2ETHUSDCMultiPoolStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde268af47bfb3658019f3d1b6ee77ebe8be5ee2a` | ⚠️ Unaudited |
| UNIv2ETHUSDCVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2b8c86abfdb1c8c117e10616eb9f21b2488d82e` | ⚠️ Unaudited |
| Univ2ETHWBTCMultiPoolStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68e409bec3fcd5008b91de8bbc8b0bdcdf429fc9` | ⚠️ Unaudited |
| UNIv2ETHWBTCVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbf57fe64075340b54769faa594df279ae99c370` | ⚠️ Unaudited |
| ValueGovernanceVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-260133 | `0x78d46e6b5c022ffbd1a558c65407ad28ad98e51b` | ⚠️ Unaudited |
| ValueIOUClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1de515fa7e0834fa07bd7ff4a15fe7869ea4eb7e` | ⚠️ Unaudited |
| ValueIOURebaser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a53b6a222fb9099659c4f37ecbe06e0feb3f9f1` | ⚠️ Unaudited |
| ValueLiquidFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b8e12f839bd4e73a47addf76cf7f0097d74c14c` | ⚠️ Unaudited |
| ValueLiquidFormula | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45f24baeef268bb6d63aee5129015d69702bcdfa` | ⚠️ Unaudited |
| ValueLiquidityToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49e833337ece7afe375e44f4e3e8481029218e5c` | ⚠️ Unaudited |
| ValueLiquidMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4572b9882fd29bdbe26a74dfa8afe9a75365e560` | ⚠️ Unaudited |
| ValueLiquidProfitCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d531816b38c77859fd3702f4e09e5d6c45b775e` | ⚠️ Unaudited |
| ValueLiquidProfitCollectorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee30aff4ad70f2cbcdd0b9b422af92a7be090a13` | ⚠️ Unaudited |
| ValueLiquidProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a7f824579e280a717d44a96ae8df7fbaa774b36` | ⚠️ Unaudited |
| ValueLiquidRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52f75ee5033e25f2d8343e0323f1b3fe0b9a0a03` | ⚠️ Unaudited |
| ValueLiquidZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x015a1de4dee9be2dd27b8864beaa8f8f6e918124` | ⚠️ Unaudited |
| ValueMasterPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e71c74d45ffdf184a91f63b94d6469876aee046` | ⚠️ Unaudited |
| ValueMinorPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc51169c21158084371c63bc260aba4afdcfbd2f` | ⚠️ Unaudited |
| ValueMultiVaultBank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8764f2c305b79680cfcc3398a96aedea9260f7ff` | ⚠️ Unaudited |
| ValueMultiVaultMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea48b3f50f3cf2216e34e2e868abc810b729f0e3` | ⚠️ Unaudited |
| ValueVaultBank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95beaeb2701736dd9bf1930d569231e78ca386ec` | ⚠️ Unaudited |
| ValueVaultMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa8ecca0082c34ab8c30b4d896eb8eecc5004b28` | ⚠️ Unaudited |
| ValueVaultProfitSharer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c1c3116c99b7f8a35163331a33a09e2ebd1e862` | ⚠️ Unaudited |
| ValueVaultProfitSharerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fae600dff4681efe5048ece952005ed7ffa2ac8` | ⚠️ Unaudited |
| vBond | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x05d70721c4f75473a07907c0d0c6eebed5f2fef7`; ethereum `0x23be14b17f481a04d7a42aa18ffc4d9d502e70e3` | ⚠️ Unaudited |
| vBONDGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85f98829f6f4b4551932de62c48781d17c2281e0` | ⚠️ Unaudited |
| vBSWAP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f0ed527e8a95ecaa132af214dfd41f30b361600` | ⚠️ Unaudited |
| vETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76a034e76aa835363056dd418611e4f81870f16e` | ⚠️ Unaudited |
| VSafeVaultCAKE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15bcacd47eef0d3877cf1199819f9e6addeebe32` | ⚠️ Unaudited |
| VSafeVaultController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c7879d39aac5af0e26c9dc66d1546f627229cde` | ⚠️ Unaudited |
| VSafeVaultMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7376fc47863ceed6bf3427ce4526ae29c4864a7d` | ⚠️ Unaudited |
| VSafeVaultVSwapGvValueBUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58d3e700c52e3e013908a1f0037bdd1c6d262637` | ⚠️ Unaudited |
| VSafeVaultVSwapVbswapBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x925d67e6b2e86380833e7c950cccd3748d38baea` | ⚠️ Unaudited |
| VSafeVaultVSwapVbswapBUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9265dc93e221875777c8ca8140beb3512045085a` | ⚠️ Unaudited |
| vUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b8e12f839bd4e73a47addf76cf7f0097d74c14c` | ⚠️ Unaudited |
| WETHMultiPoolStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x126082815922fb9f8275021c5519c20ce7df1abf` | ⚠️ Unaudited |
| WETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f72aad4be55a7a0bfc1e572501a90b0c864ceee` | ⚠️ Unaudited |
| xvBSWAP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ca88018713f2c7aa970bdb45c8df2f42c4bd8b5` | ⚠️ Unaudited |
| YFV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45f24baeef268bb6d63aee5129015d69702bcdfa` | ⚠️ Unaudited |
| YFVDevRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21ffccebb1a34107242240d44a066e4fcbfae07e` | ⚠️ Unaudited |
| YFVGovernanceVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07eb8cb8aedb581a2d73cc29f6c7860226808ca2` | ⚠️ Unaudited |
| YFVReferral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3422ac57f4ca097806fa234e44ec0a781b78bbdb` | ⚠️ Unaudited |
| YFVRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8d3084fa61c893eacae2460ee77e3e5f11c8cfe` | ⚠️ Unaudited |
| YFVRewardsBALPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62a9fe913eb596c8fac0936fd2f51064022ba22e` | ⚠️ Unaudited |
| YFVRewardsBATPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c990fc37f399c935625b815975d0c9fad5c31a1` | ⚠️ Unaudited |
| YFVRewardsBTCPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbde07329ffc9ec1b70f639ad388b94532b5e063` | ⚠️ Unaudited |
| YFVRewardsETHPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67ffb615eaeb8aa88ff37cca6a32e322286a42bb` | ⚠️ Unaudited |
| YFVRewardsKNCPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b74774f55c0351fd064cfdffd35db002c433092` | ⚠️ Unaudited |
| YFVRewardsLINKPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x196cf719251579cbc850ded0e47e972b3d7810cd` | ⚠️ Unaudited |
| YFVRewardsRENPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x752037bfef024bd2669227bf9068cb22840174b0` | ⚠️ Unaudited |
| YFVRewardsYCrvUNIv2Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x931da4fe516a1e12fd033f8e33f54637edc47cfd` | ⚠️ Unaudited |
| YFVRewardsYFIPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70b83a7f5e83b3698d136887253e0bf426c9a117` | ⚠️ Unaudited |
| YFVStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e6ffd4daeca13a8158146516f847d2f44ad4a30` | ⚠️ Unaudited |
| YFVStakeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd120f23438ac0edbba2c4c072739387aaa70277a` | ⚠️ Unaudited |
| YFVVIPVote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ba70f65877da18e751ff42fc1c3fee8c66280e6` | ⚠️ Unaudited |
| YFVVIPVoteV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc58a481c27a6a376c02b97e1be2fafa0b22775b` | ⚠️ Unaudited |
| YFVVoteV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d03cf457a4e3099aa5b38506374e3b7071cc997` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (106)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dea42987d029c6bef4f95b92c0789ff9b374b45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b97a9789dad6033b21de6a43b854875dfb9123a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24374ad9049f18e50d26077885ce7d7fe8299d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x247b6b13ad67d9c795a25c1d9a6c3857166e4b1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d7f0e81376f9c61861c1da6aa3769a2978d3200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41a98fb8c34b42402b14a37e18c60efc3c1be51b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ec183443cebfb8fdb540dd6b4df8ea295dceddc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5021470fc598373fba4fe3384745940eab3e653d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53aa48b2ac0071a6ce61ddb3ba4e41d395b2db51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x555ddd7c3999010cff0ae3671d31cb376fa638f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f53335197e360de56c7ba77f6a45f3e259b1a7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x601d7858fe5abf8dea871e035c2d40f29152d717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6728c58d85eec5ada86190887db4f06443084d52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6848f413c55c1b139c422b99d4a9ef4d1f7168f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d1fa4270176229b726ce786a36725fbe3b080fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71535ad4c7c5925382cdeadc806371cc89a5085d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72a1c4090c545946820f0fa3c15a3c253bb83f03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75262fdd8ae0b4dc5397756ac8d991995de477dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x776394cf56b1aabf73b41fa8a9edcf69be1ddb94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a247a10e7f7393ba2e534c0859cb04d5f2b9f8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c175a3fd4d2f14e40ac418a1e004dfc8edd3ba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89822f305922c187d42db1017f9b61135be1c1e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x981cdc4d9af743d2b841ff8b69a4a8451189fb68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x990593dac95fc5d5dacc0fea5d10d0eb20bf7581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b9df09941285ec6acf735942e613d1da15e60ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c0aa49819d871a4098956638061fc398c7c7f21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa09fb0b2d3ad10339139bf9cad0c00f96480a594` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa17ec9694d1f83f681d7ba67cee7eec0d916de37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa274be0e0eb44b6383852ba582fd4ae3aa78a4ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa321e318ef37fbbd1c825c0c421ce3996e06bbc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac15789d7bd5fc62334d6bf9d53f184dafdbe0ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0a2317176619ee915fadc6685988c1928d23cf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0cc465192bcd18940cd15e4877bbc92257e0d0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb936525a77ba0529f6c0feab28f8b0ae6c0398c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb94343a0352435101fd6fe373e0341f72baf7dd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9735bfd873f9f02cb3c82ad8b8c383f3bc3ea95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbaf1e9bb677eff3e2ceea161711e250e90e40a50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd3d761a1254b0ab0b8c9f889f23ccca109b136f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc29bcd10bca418622a6d957566d8f5b924e9fdd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2d55ce14a8e04aef9b6bcfd105079b63c6a0ac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcca15caa715e918df70a62e5a600c0f53c1b9053` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcec03a960ea678a2b6ea350fe0dbd1807b22d875` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5df2a8b6dcc3e4730703a9c1d65c4cf8d591337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd897b5458afe7e2dc26d94ec33cf7d09a9158568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd90eb747156a841995d16b68f58633b713007e18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd989212c51ba850a1787ce4c666eb44a170cc415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbfc46a53de2f034024b49d77513ac9de418e522` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4d42c52c5800942332e7d4a8b946e17eb553754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe85e1e37060d95ae6892a02884e3e621e1ae8755` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed517fde7f36efeab9d52e569c77491ad964f6e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefa14c326424f82503f3120d16898d3084e90942` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0159d041db29029ccf285a1043dcaac7088030b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6dd4fcd99592c9f2953c6317f7945be28b50235` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe77bfba0d4640580c7f590d8e9cf0d49b59f93f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff65a22910f6655a58b23831a991b6809ef8095a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x105e9e54c2bd4504519a35ae09af8db01aea99ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d954998067db0074e810a85fd43e4e44a655153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20a6cdb7253b16a17ceacbcc03bf629da57c3fe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x226307352d090ddbb45b564648ee199001b2f889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x322f56d8152b0b0ed1371ba5425f282d9d54aa38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3327a442a5fe919dd8f541068bf7d0ff02a332bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36fcf1c1525854b2d195f5d03d483f01549e06f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d0e55dbcd7f2974957b6c823bffcd530e2fc2b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x513c5def87bc57c9d4e69f575508f8c4ea551fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5693f0d1e42acede79f2b7cd1a0d7f5d05c6dd84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x57cda125d0c7b146a8320614ccd6c55999d15bf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x621030f83bb1c74a58897037a9e51918d30e1224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63ef584ab17ed24d2a0b80d343e395d8b09ceb08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76a034e76aa835363056dd418611e4f81870f16e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a587c2297ef25ee4f57229c249cbd1330d31aa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a8ac384d3a9086afcc13eb58e90916f17affc89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85f94c7c3ba0841aff76c7539349816b856b3fea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e142656954864a0f82849afcbe31f9057119885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f1473fd508b650f3f6241400bb5aca6781fa805` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x908229e1b9a778ec392b5d1d84a7172090569b7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9674b6cdb3bb7ae2081223c02334c88814ed301f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x970bf8688c928d569c4900d58cea23d18e61c528` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98d5dba5597dac6887e269f570327f6854869cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa07c50c80c8f09d9e83e6d79f09c368d0fca6647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1627b2bcee252ac4b368062a0047c55487ef398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1c372a39f874e5f7ed509647a9da7527d035203` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3939c27a1f5922998edfe63eb28e39a8fe5c5a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb3bbd080994434cd716eb4d31e1810ad1128a34b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb43f0707b2719a5b8ab905d253022c6073a63926` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7e19a1188776f32e8c2b790d9ca578f2896da7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe879a1a360e5beeb6abdae6b3d4cda300756a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbea812e57ef51ae40ba2cc56cd1172deddb95f94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf06aa8e12631c9161a5e62a1c73b8b4aa10797c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3e9b10bab578be2952f194ac28c09702f893d9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc6e111637440d1fe9c1ee45d5a1239771b267122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc79d10a00cf21068c7214769b7fd06b87bd09040` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xccf02f8f774e501b9f65f233bc9ad589ae4af611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd56339f80586c08b7a4e3a68678d16d37237bd96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd66c07c3520a5b43a98ef5f762d03f0f039481aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdaae68bc644f072420c2902b63c06292369afbc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdcb6ef8813736733a83a51f8e6c2133b870b5378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe03653aaa2a222f65b58525a2e32f41229fde3c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe28682277106b81e3ba917c031b34c8b9ff33afc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe750abff74e71ffe1e55c20decd1557f87c8ef94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xebd914328fb9338b6ac1f53ea5920f84120541cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec73ff6aef9516c35da8d98699c1a40617496b1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed517fde7f36efeab9d52e569c77491ad964f6e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf040f669a4b37c38933bc8ddaed6b58f352c2960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3ebabd4cf105c38cfe73b81628c73faabfd92a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf716dff001109875009b22c1ca1b4812b24d4232` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfcaa33b91a8ced8b82a6cda899449827191a48c6` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 111
- Live contracts: 0
- Unknown liveness contracts: 111
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=111

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | unverified unclassified | UnnamedContract<br>`0x105e9e54c2bd4504519a35ae09af8db01aea99ea` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1d954998067db0074e810a85fd43e4e44a655153` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x20a6cdb7253b16a17ceacbcc03bf629da57c3fe8` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x226307352d090ddbb45b564648ee199001b2f889` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x322f56d8152b0b0ed1371ba5425f282d9d54aa38` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3327a442a5fe919dd8f541068bf7d0ff02a332bf` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x36fcf1c1525854b2d195f5d03d483f01549e06f2` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3d0e55dbcd7f2974957b6c823bffcd530e2fc2b0` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x513c5def87bc57c9d4e69f575508f8c4ea551fd0` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x52614aa808412bed0a2aeb29452874a1368b996c` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5693f0d1e42acede79f2b7cd1a0d7f5d05c6dd84` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x57cda125d0c7b146a8320614ccd6c55999d15bf2` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x621030f83bb1c74a58897037a9e51918d30e1224` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x63ef584ab17ed24d2a0b80d343e395d8b09ceb08` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x76a034e76aa835363056dd418611e4f81870f16e` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7a587c2297ef25ee4f57229c249cbd1330d31aa1` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7a8ac384d3a9086afcc13eb58e90916f17affc89` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x85f94c7c3ba0841aff76c7539349816b856b3fea` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8e142656954864a0f82849afcbe31f9057119885` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8f1473fd508b650f3f6241400bb5aca6781fa805` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x908229e1b9a778ec392b5d1d84a7172090569b7c` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9674b6cdb3bb7ae2081223c02334c88814ed301f` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x970bf8688c928d569c4900d58cea23d18e61c528` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x98d5dba5597dac6887e269f570327f6854869cdd` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa07c50c80c8f09d9e83e6d79f09c368d0fca6647` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa1627b2bcee252ac4b368062a0047c55487ef398` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa1c372a39f874e5f7ed509647a9da7527d035203` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa3939c27a1f5922998edfe63eb28e39a8fe5c5a3` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb3bbd080994434cd716eb4d31e1810ad1128a34b` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb43f0707b2719a5b8ab905d253022c6073a63926` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb7e19a1188776f32e8c2b790d9ca578f2896da7c` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbe879a1a360e5beeb6abdae6b3d4cda300756a8b` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbea812e57ef51ae40ba2cc56cd1172deddb95f94` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbf06aa8e12631c9161a5e62a1c73b8b4aa10797c` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc3e9b10bab578be2952f194ac28c09702f893d9c` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc6e111637440d1fe9c1ee45d5a1239771b267122` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc79d10a00cf21068c7214769b7fd06b87bd09040` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xccf02f8f774e501b9f65f233bc9ad589ae4af611` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd56339f80586c08b7a4e3a68678d16d37237bd96` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd66c07c3520a5b43a98ef5f762d03f0f039481aa` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdaae68bc644f072420c2902b63c06292369afbc7` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdcb6ef8813736733a83a51f8e6c2133b870b5378` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe03653aaa2a222f65b58525a2e32f41229fde3c2` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe28682277106b81e3ba917c031b34c8b9ff33afc` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe750abff74e71ffe1e55c20decd1557f87c8ef94` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xebd914328fb9338b6ac1f53ea5920f84120541cf` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xec73ff6aef9516c35da8d98699c1a40617496b1b` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xed517fde7f36efeab9d52e569c77491ad964f6e6` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf040f669a4b37c38933bc8ddaed6b58f352c2960` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf3ebabd4cf105c38cfe73b81628c73faabfd92a0` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf716dff001109875009b22c1ca1b4812b24d4232` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfcaa33b91a8ced8b82a6cda899449827191a48c6` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0dea42987d029c6bef4f95b92c0789ff9b374b45` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1b97a9789dad6033b21de6a43b854875dfb9123a` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x23be14b17f481a04d7a42aa18ffc4d9d502e70e3` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x24374ad9049f18e50d26077885ce7d7fe8299d48` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x247b6b13ad67d9c795a25c1d9a6c3857166e4b1a` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3d7f0e81376f9c61861c1da6aa3769a2978d3200` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41a98fb8c34b42402b14a37e18c60efc3c1be51b` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4ec183443cebfb8fdb540dd6b4df8ea295dceddc` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5021470fc598373fba4fe3384745940eab3e653d` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x53aa48b2ac0071a6ce61ddb3ba4e41d395b2db51` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x555ddd7c3999010cff0ae3671d31cb376fa638f0` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5f53335197e360de56c7ba77f6a45f3e259b1a7d` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x601d7858fe5abf8dea871e035c2d40f29152d717` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6728c58d85eec5ada86190887db4f06443084d52` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6848f413c55c1b139c422b99d4a9ef4d1f7168f3` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x694fcd0cea05218ea6397f16f88d445707a04dee` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6d1fa4270176229b726ce786a36725fbe3b080fd` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x71535ad4c7c5925382cdeadc806371cc89a5085d` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x72a1c4090c545946820f0fa3c15a3c253bb83f03` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x75262fdd8ae0b4dc5397756ac8d991995de477dd` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x776394cf56b1aabf73b41fa8a9edcf69be1ddb94` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7a247a10e7f7393ba2e534c0859cb04d5f2b9f8d` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7c175a3fd4d2f14e40ac418a1e004dfc8edd3ba8` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x89822f305922c187d42db1017f9b61135be1c1e8` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x981cdc4d9af743d2b841ff8b69a4a8451189fb68` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x990593dac95fc5d5dacc0fea5d10d0eb20bf7581` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9b9df09941285ec6acf735942e613d1da15e60ca` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9c0aa49819d871a4098956638061fc398c7c7f21` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa09fb0b2d3ad10339139bf9cad0c00f96480a594` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa17ec9694d1f83f681d7ba67cee7eec0d916de37` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa274be0e0eb44b6383852ba582fd4ae3aa78a4ca` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa321e318ef37fbbd1c825c0c421ce3996e06bbc7` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xac15789d7bd5fc62334d6bf9d53f184dafdbe0ad` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb0a2317176619ee915fadc6685988c1928d23cf0` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb0cc465192bcd18940cd15e4877bbc92257e0d0a` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb936525a77ba0529f6c0feab28f8b0ae6c0398c7` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb94343a0352435101fd6fe373e0341f72baf7dd7` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb9735bfd873f9f02cb3c82ad8b8c383f3bc3ea95` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbaf1e9bb677eff3e2ceea161711e250e90e40a50` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbd3d761a1254b0ab0b8c9f889f23ccca109b136f` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc29bcd10bca418622a6d957566d8f5b924e9fdd7` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc2d55ce14a8e04aef9b6bcfd105079b63c6a0ac8` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca351b42cd58479e79813cce0a74a8f91cdf0a7b` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcca15caa715e918df70a62e5a600c0f53c1b9053` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcec03a960ea678a2b6ea350fe0dbd1807b22d875` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd5df2a8b6dcc3e4730703a9c1d65c4cf8d591337` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd897b5458afe7e2dc26d94ec33cf7d09a9158568` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd90eb747156a841995d16b68f58633b713007e18` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd989212c51ba850a1787ce4c666eb44a170cc415` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdbfc46a53de2f034024b49d77513ac9de418e522` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xddd7df28b1fb668b77860b473af819b03db61101` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe4d42c52c5800942332e7d4a8b946e17eb553754` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe85e1e37060d95ae6892a02884e3e621e1ae8755` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xed517fde7f36efeab9d52e569c77491ad964f6e6` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xefa14c326424f82503f3120d16898d3084e90942` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf0159d041db29029ccf285a1043dcaac7088030b` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf6dd4fcd99592c9f2953c6317f7945be28b50235` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe77bfba0d4640580c7f590d8e9cf0d49b59f93f` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xff65a22910f6655a58b23831a991b6809ef8095a` | non_address_book | unknown | unknown | unverified | n/a | `0x7be4d5a99c903c437ec77a20cb6d0688cbb73c7f` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [FaaSPool.pdf](https://valuedefi.io/files/faaspool.pdf) | unknown | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Peckshield_Audit_Report.pdf](https://valuedefi.io/files/peckshield_audit_report.pdf) | PeckShield | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [ValueGov2 Audit.pdf](https://valuedefi.io/files/valuegov2audit.pdf) | unknown | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Value Token Contract Audit.pdf](https://valuedefi.io/files/value_token_contract_audit.pdf) | unknown | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Arcadia Vault AuditPublic.pdf](https://valuedefi.io/files/arcadia_vault_auditpublic.pdf) | Arcadia | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Security Analysis by Pessimistic.pdf](https://valuedefi.io/files/security_analysis_by_pessimistic.pdf) | Pessimistic | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [1. Letter from Arcadia for YFV Staking Pool v2.pdf](https://valuedefi.io/files/letter_from_arcadia_for_yfv_staking_pool_v2.pdf) | Arcadia | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2. YFV Staking Pool v2 - Audit Summary.pdf](https://valuedefi.io/files/yfv_staking_pool_v2_-_audit_summary.pdf) | unknown | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [2. YFV Protocol Audit Summary.pdf](https://valuedefi.io/files/yfv_protocol_audit_summary.pdf) | unknown | Audit | 2020-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18465] FaaSPool.pdf — no match: Only one contract, FaaSPool.sol, is explicitly listed in scope.
- [18466] Peckshield_Audit_Report.pdf — no match: Scope section explicitly lists four contracts: ValueVaultMaster, ValueVaultBank, ValueVaultV2, and WETHMultiPoolStrategy. Audit date is November 28, 2020 from cover page.
- [18467] ValueGov2 Audit.pdf — no match: Only one contract in scope: ValueGovernanceVault.sol. Also mentions ValueLiquidityToken in findings but not in scope.
- [18468] Value Token Contract Audit.pdf — no match: Only one contract in scope: ValueLiquidityToken.sol. Audit date from cover page.
- [18469] Arcadia Vault AuditPublic.pdf — no match: Two contracts in scope: YFVGovernanceVault.sol and YFVController.sol. Audit date from title.
- [18470] Security Analysis by Pessimistic.pdf — no match: Only one contract, YFV_Stake_v2.sol, is explicitly mentioned as the audited target.
- [18471] 1. Letter from Arcadia for YFV Staking Pool v2.pdf — no match: Contract name extracted from file path in the report text.
- [18472] 2. YFV Staking Pool v2 - Audit Summary.pdf — no match: Only one contract name explicitly mentioned in scope; no formal scope section.
- [18473] 2. YFV Protocol Audit Summary.pdf — no match: Contracts extracted from findings sections; no explicit scope table but contracts are clearly identified as audited targets.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| FaaSPool.pdf | FaaSPool | unmatched — not counted | — | Listed in scope section: 'FaaSPool.sol' | no |
| Peckshield_Audit_Report.pdf | ValueVaultMaster | unmatched — not counted | — | listed in scope section | no |
| Peckshield_Audit_Report.pdf | ValueVaultBank | unmatched — not counted | — | listed in scope section | no |
| Peckshield_Audit_Report.pdf | ValueVaultV2 | unmatched — not counted | — | listed in scope section | no |
| Peckshield_Audit_Report.pdf | WETHMultiPoolStrategy | unmatched — not counted | — | listed in scope section | no |
| ValueGov2 Audit.pdf | ValueGovernanceVault | unmatched — not counted | — | listed in scope and findings target | no |
| Value Token Contract Audit.pdf | ValueLiquidityToken | unmatched — not counted | — | Listed in scope and targeted in findings. | no |
| Arcadia Vault AuditPublic.pdf | YFVGovernanceVault | unmatched — not counted | — | listed in scope and findings | no |
| Arcadia Vault AuditPublic.pdf | YFVController | unmatched — not counted | — | listed in scope and findings | no |
| Security Analysis by Pessimistic.pdf | YFV_Stake_v2 | unmatched — not counted | — | listed in scope as the audited smart contract | no |
| 1. Letter from Arcadia for YFV Staking Pool v2.pdf | YFV Stake | unmatched — not counted | — | listed in scope | no |
| 2. YFV Staking Pool v2 - Audit Summary.pdf | YFV Stake V2 | unmatched — not counted | — | mentioned as 'YFValue Smart Contract YFV Stake V2.sol' in executive summary | no |
| 2. YFV Protocol Audit Summary.pdf | YFVRewards | unmatched — not counted | — | Listed in findings section: Contracts: YFVRewards.sol | no |
| 2. YFV Protocol Audit Summary.pdf | YFVRewardsPool1BAL | unmatched — not counted | — | Listed in findings section: Contracts: YFVRewardsPool1BAL.sol | no |
| 2. YFV Protocol Audit Summary.pdf | YFVRewardsPool2YFI | unmatched — not counted | — | Listed in findings section: Contracts: YFVRewardsPool2YFI.sol | no |
| 2. YFV Protocol Audit Summary.pdf | YFVRewardsPool3BAT | unmatched — not counted | — | Listed in findings section: Contracts: YFVRewardsPool3BAT.sol | no |
| 2. YFV Protocol Audit Summary.pdf | YFVRewardsPool4REN | unmatched — not counted | — | Listed in findings section: Contracts: YFVRewardsPool4REN.sol | no |
| 2. YFV Protocol Audit Summary.pdf | YFVRewardsPool5KNC | unmatched — not counted | — | Listed in findings section: Contracts: YFVRewardsPool5KNC.sol | no |
| 2. YFV Protocol Audit Summary.pdf | YFVRewardsPool6BTC | unmatched — not counted | — | Listed in findings section: Contracts: YFVRewardsPool6BTC.sol | no |
| 2. YFV Protocol Audit Summary.pdf | YFVRewardsPool7ETH | unmatched — not counted | — | Listed in findings section: Contracts: YFVRewardsPool7ETH.sol | no |
| 2. YFV Protocol Audit Summary.pdf | YFVRewardsPool8LINK | unmatched — not counted | — | Listed in findings section: Contracts: YFVRewardsPool8LINK.sol | no |
| 2. YFV Protocol Audit Summary.pdf | YFVRewardsPool9YCrvUNIv2 | unmatched — not counted | — | Listed in findings section: Contracts: YFVRewardsPool9YCrvUNIv2.sol | no |
| 2. YFV Protocol Audit Summary.pdf | YFVStake | unmatched — not counted | — | Listed in findings section: Contract: YFVStake.sol | no |
| 2. YFV Protocol Audit Summary.pdf | YFVVote | unmatched — not counted | — | Listed in findings section: Contract: YFVVote.sol | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 123 |
| upstream | 5 |
| standard_library | 2 |
| needs_review | 106 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 24 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8, medium=1
- Match method counts: n/a

Zero-match audit list:

- [18465] FaaSPool.pdf
- [18466] Peckshield_Audit_Report.pdf
- [18467] ValueGov2 Audit.pdf
- [18468] Value Token Contract Audit.pdf
- [18469] Arcadia Vault AuditPublic.pdf
- [18470] Security Analysis by Pessimistic.pdf
- [18471] 1. Letter from Arcadia for YFV Staking Pool v2.pdf
- [18472] 2. YFV Staking Pool v2 - Audit Summary.pdf
- [18473] 2. YFV Protocol Audit Summary.pdf

Fork inheritance lineage and inherited audits are included when available.
