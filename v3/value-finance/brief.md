# Agentic Audit Brief: Value Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 9 (0 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Value Finance (`value-finance`)
- Website: [https://valuedefi.io](https://valuedefi.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum
- Contract surface: 130 unique implementations (130 raw deployments)
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
- Outside the address book: 129 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/130
- Verified + Unaudited implementations: 130
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 130
- Raw deployments: 130
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
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2f7c66f2c0f570e659e44f279f14f4131788dfb6` | ⚠️ Unaudited |
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
| CompositeVaultBptEthWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0a62cc5ebfa79b155b4ec90e74c00e0176692772` | ⚠️ Unaudited |
| CompositeVaultController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e67c27d14032304c0e8c3af8214ecf102641dbb` | ⚠️ Unaudited |
| CompositeVaultController_BBridgeUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa25ec370c34fe82ef4615c8dbbf6229f0a53131a` | ⚠️ Unaudited |
| CompositeVaultController_BptEthUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50e50f60b09930ac2cc14bf0725d7a29ff2b8126` | ⚠️ Unaudited |
| CompositeVaultController_BptEthWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87abb9370c9cf8766eaefb48f3b1395ad8439707` | ⚠️ Unaudited |
| CompositeVaultController_SlpEthWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6acaa8fa3f4bf5644f5575da9c1022eca8ecd8aa` | ⚠️ Unaudited |
| CompositeVaultMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a8ac384d3a9086afcc13eb58e90916f17affc89` | ⚠️ Unaudited |
| CompositeVaultSlpEthUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x061434f835a87f683793ba1271c2dfeb618a0e00` | ⚠️ Unaudited |
| CompositeVaultSlpEthWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ffd9995712b92d772b9dc195c5e00cc984c9932` | ⚠️ Unaudited |
| Dollar | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3479b0acf875405d7853f44142fe06470a40f6cc` | ⚠️ Unaudited |
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
| MultiStablesVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x55bf8304c78ba6fe47fd251f37d7beb485f86d26` | ⚠️ Unaudited |
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
| vBond | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x05d70721c4f75473a07907c0d0c6eebed5f2fef7` | ⚠️ Unaudited |
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

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

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
| needs_review | 0 |

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
