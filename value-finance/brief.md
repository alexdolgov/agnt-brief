# Agentic Audit Brief: Value Finance

## Project Overview

- Project: Value Finance (`value-finance`)
- Website: [https://valuedefi.io](https://valuedefi.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:09.269Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: bsc, ethereum
- Contract surface: 130 unique implementations (130 raw deployments)
- DeFi Llama TVL: $500,008.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 129 project-authored contract(s) across 2 chain(s); 31 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 13 common project-authored base contract(s) (erc20upgradesafe, contextupgradesafe, upgradeabilityproxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 130; live-surface contracts included: 130 (130 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/123 (0.0%)
- Deployed-live implementations: 130 of 130 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/130
- Verified + Unaudited implementations: 130
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 130
- Raw deployments: 130
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 9 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (130)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Address | unknown | bsc | n/a | [`0xb1a8cb...af7f14`](./contracts/bsc-56/0xb1a8cbfd40877b70b5ab2f95a71d78cbf8af7f14/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x91df0f...f55876`](./contracts/ethereum-1/0x91df0ffc1b95113ba1f41ca0669fccaec0f55876/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x2f7c66...88dfb6`](./contracts/bsc-56/0x2f7c66f2c0f570e659e44f279f14f4131788dfb6/) | ⚠️ Unaudited |
| BActions | unknown | ethereum | n/a | [`0x60132f...8eca36`](./contracts/ethereum-1/0x60132fff0ca7c8a24a67159c7d9a8bcd8a8eca36/) | ⚠️ Unaudited |
| BalancerLpPairConverter_EthUsdc | unknown | ethereum | n/a | [`0xb25030...c94ae6`](./contracts/ethereum-1/0xb250308f23be3bbfbd4af2e74a873fd2bfc94ae6/) | ⚠️ Unaudited |
| BalancerLpPairConverter_EthWbtc | unknown | ethereum | n/a | [`0x5118e3...9a5448`](./contracts/ethereum-1/0x5118e35bc2b061947264bbb32dce0b7bcb9a5448/) | ⚠️ Unaudited |
| BarnBridgeConverter | unknown | ethereum | n/a | [`0x8716f2...37d13f`](./contracts/ethereum-1/0x8716f20ed86ce1b9931db53e851b62160437d13f/) | ⚠️ Unaudited |
| BFactory | unknown | ethereum | n/a | [`0xebc446...62675b`](./contracts/ethereum-1/0xebc44681c125d63210a33d30c55fd3d37762675b/) | ⚠️ Unaudited |
| BondMarket | unknown | ethereum | n/a | [`0x31a356...fcdcf2`](./contracts/ethereum-1/0x31a3566d95f638b3568a278915589dad96fcdcf2/) | ⚠️ Unaudited |
| BPoolCreator | unknown | ethereum | n/a | [`0x58bab5...abe950`](./contracts/ethereum-1/0x58bab52a511c747335d3da53cce9a6e7beabe950/) | ⚠️ Unaudited |
| CompositeVaultBank | unknown | ethereum | n/a | [`0x713a5f...2767e1`](./contracts/ethereum-1/0x713a5f7d7b48f8f4806f9fb4dc9c387c102767e1/) | ⚠️ Unaudited |
| CompositeVaultBBridgeUsdc | unknown | ethereum | n/a | [`0x30993b...d1069c`](./contracts/ethereum-1/0x30993bd1d103ac3d163797dc04aafaa1fdd1069c/) | ⚠️ Unaudited |
| CompositeVaultBptEthUsdc | unknown | ethereum | n/a | [`0x030c8e...3a7de3`](./contracts/ethereum-1/0x030c8eb47f720482f7fac6f1d066431f0c3a7de3/) | ⚠️ Unaudited |
| CompositeVaultBptEthWbtc | unknown | ethereum | n/a | [`0x0a62cc...692772`](./contracts/ethereum-1/0x0a62cc5ebfa79b155b4ec90e74c00e0176692772/) | ⚠️ Unaudited |
| CompositeVaultController | unknown | ethereum | n/a | [`0x3e67c2...641dbb`](./contracts/ethereum-1/0x3e67c27d14032304c0e8c3af8214ecf102641dbb/) | ⚠️ Unaudited |
| CompositeVaultController_BBridgeUsdc | unknown | ethereum | n/a | [`0xa25ec3...53131a`](./contracts/ethereum-1/0xa25ec370c34fe82ef4615c8dbbf6229f0a53131a/) | ⚠️ Unaudited |
| CompositeVaultController_BptEthUsdc | unknown | ethereum | n/a | [`0x50e50f...2b8126`](./contracts/ethereum-1/0x50e50f60b09930ac2cc14bf0725d7a29ff2b8126/) | ⚠️ Unaudited |
| CompositeVaultController_BptEthWbtc | unknown | ethereum | n/a | [`0x87abb9...439707`](./contracts/ethereum-1/0x87abb9370c9cf8766eaefb48f3b1395ad8439707/) | ⚠️ Unaudited |
| CompositeVaultController_SlpEthWbtc | unknown | ethereum | n/a | [`0x6acaa8...ecd8aa`](./contracts/ethereum-1/0x6acaa8fa3f4bf5644f5575da9c1022eca8ecd8aa/) | ⚠️ Unaudited |
| CompositeVaultMaster | unknown | ethereum | n/a | [`0x7a8ac3...affc89`](./contracts/ethereum-1/0x7a8ac384d3a9086afcc13eb58e90916f17affc89/) | ⚠️ Unaudited |
| CompositeVaultSlpEthUsdc | unknown | ethereum | n/a | [`0x061434...8a0e00`](./contracts/ethereum-1/0x061434f835a87f683793ba1271c2dfeb618a0e00/) | ⚠️ Unaudited |
| CompositeVaultSlpEthWbtc | unknown | ethereum | n/a | [`0x0ffd99...4c9932`](./contracts/ethereum-1/0x0ffd9995712b92d772b9dc195c5e00cc984c9932/) | ⚠️ Unaudited |
| Dollar | unknown | ethereum | n/a | [`0x3479b0...40f6cc`](./contracts/ethereum-1/0x3479b0acf875405d7853f44142fe06470a40f6cc/) | ⚠️ Unaudited |
| ERC20BridgeGateway | unknown | ethereum | n/a | [`0xfcfab4...0ffcb6`](./contracts/ethereum-1/0xfcfab4ecdf2caf3c98145b6fcdac1b46760ffcb6/) | ⚠️ Unaudited |
| ExchangeProxy | unknown | ethereum | n/a | [`0x054928...c0fa21`](./contracts/ethereum-1/0x0549282eb828861a0effa4c5cc281a1afec0fa21/) | ⚠️ Unaudited |
| FaaSPoolCreatorLite | unknown | ethereum | n/a | [`0x45c4d7...6f771a`](./contracts/ethereum-1/0x45c4d796e7506f467aed24b81db897f18b6f771a/) | ⚠️ Unaudited |
| FaasPoolProxy | unknown | ethereum | n/a | [`0x210f34...d426e7`](./contracts/ethereum-1/0x210f342802a95be9e8cc371961f23524a3d426e7/) | ⚠️ Unaudited |
| FaaSRewardFund | unknown | ethereum | n/a | [`0x240f42...c835ff`](./contracts/ethereum-1/0x240f42f2b096b5f2fcf351c9dcdda307a0c835ff/) | ⚠️ Unaudited |
| FaasYtruClaim | unknown | ethereum | n/a | [`0xf4871e...b35408`](./contracts/ethereum-1/0xf4871e1f699cd9b94b005b0b912114b050b35408/) | ⚠️ Unaudited |
| GovVaultRewardAutoCompound | unknown | ethereum | n/a | [`0x8d0127...b90c92`](./contracts/ethereum-1/0x8d012729ec8affc08043d97ca2c02fdfdcb90c92/) | ⚠️ Unaudited |
| gvVALUE | unknown | bsc | n/a | [`0x0610c2...50ad15`](./contracts/bsc-56/0x0610c2d9f6ebc40078cf081e2d1c4252dd50ad15/) | ⚠️ Unaudited |
| gvVALUEGateway | unknown | bsc | n/a | [`0x2dfb07...d54480`](./contracts/bsc-56/0x2dfb07be34c5499a07e6873c249433c953d54480/) | ⚠️ Unaudited |
| LegacyPoolDrainer | unknown | ethereum | n/a | [`0xcb3a0f...7fea90`](./contracts/ethereum-1/0xcb3a0fa12a7bb34b3c7897c6718d9706be7fea90/) | ⚠️ Unaudited |
| MathUtils | unknown | bsc | n/a | [`0x9fbd65...b2bdd8`](./contracts/bsc-56/0x9fbd6526bc1a0ab72a5258935013398904b2bdd8/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | [`0x70508d...569a03`](./contracts/ethereum-1/0x70508dd819635a58babbae1362bc83c41a569a03/) | ⚠️ Unaudited |
| MerkleDistributorMultiple | unknown | bsc | n/a | [`0xd10ab8...6a0910`](./contracts/bsc-56/0xd10ab835fb825c2f25d5b02e559db6d5586a0910/) | ⚠️ Unaudited |
| MultiStablesClaimReturn | unknown | ethereum | n/a | [`0x3a2c1d...c0c5db`](./contracts/ethereum-1/0x3a2c1d4aad6f85c3d0bd8a2018a6120a30c0c5db/) | ⚠️ Unaudited |
| MultiStablesVault | unknown | ethereum | n/a | [`0x55bf83...f86d26`](./contracts/ethereum-1/0x55bf8304c78ba6fe47fd251f37d7beb485f86d26/) | ⚠️ Unaudited |
| MultiStablesVaultController | unknown | ethereum | n/a | [`0xba5d28...1adee7`](./contracts/ethereum-1/0xba5d28f4ecee5586d616024c74e4d791e01adee7/) | ⚠️ Unaudited |
| OracleMultiPair | unknown | ethereum | n/a | [`0xa2d385...27a297`](./contracts/ethereum-1/0xa2d385185bbd96f4794ae3504aeaa7825827a297/) | ⚠️ Unaudited |
| ProfitSharingRewardPool | unknown | bsc | n/a | [`0x5344f4...1a5db4`](./contracts/bsc-56/0x5344f4d4e96f5cdfad4aa702771d479c911a5db4/) | ⚠️ Unaudited |
| ProtocolFeeRemover | unknown | bsc | n/a | [`0x58bd64...eb66d5`](./contracts/bsc-56/0x58bd64b52ca6d6ece85bfcd2d24a8e8044eb66d5/) | ⚠️ Unaudited |
| ReserveFund | unknown | bsc | n/a | [`0x6aed0a...370fb2`](./contracts/bsc-56/0x6aed0a5a6db07ceac234934dfd3c32d284370fb2/) | ⚠️ Unaudited |
| ReserveFundV2 | unknown | bsc | n/a | [`0x6cf664...afe4fb`](./contracts/bsc-56/0x6cf664834c9b59951a883199f32f536a44afe4fb/) | ⚠️ Unaudited |
| RewardPool | unknown | bsc | n/a | [`0x2f5274...8e05b8`](./contracts/bsc-56/0x2f527493916170de7d945daecbdcbe27ec8e05b8/) | ⚠️ Unaudited |
| ShareConverter | unknown | ethereum | n/a | [`0x57cda1...d15bf2`](./contracts/ethereum-1/0x57cda125d0c7b146a8320614ccd6c55999d15bf2/) | ⚠️ Unaudited |
| StableSwap3PoolConverter | unknown | ethereum | n/a | [`0x8c2f33...54338d`](./contracts/ethereum-1/0x8c2f33b3a580baeb2a1f2d34bcc76e020a54338d/) | ⚠️ Unaudited |
| StableSwapBusdConverter | unknown | ethereum | n/a | [`0x3d0e55...2fc2b0`](./contracts/ethereum-1/0x3d0e55dbcd7f2974957b6c823bffcd530e2fc2b0/) | ⚠️ Unaudited |
| StableSwapCompoundConverter | unknown | ethereum | n/a | [`0x85f988...2281e0`](./contracts/ethereum-1/0x85f98829f6f4b4551932de62c48781d17c2281e0/) | ⚠️ Unaudited |
| StableSwapFactory | unknown | bsc | n/a | [`0xae63a2...717718`](./contracts/bsc-56/0xae63a2065cdf6e516037fa1dd4efc0a439717718/) | ⚠️ Unaudited |
| StableSwapRouter | unknown | bsc | n/a | [`0xc437b8...1965e1`](./contracts/bsc-56/0xc437b8d65ecdd43cda92739e09ebd68bbe1965e1/) | ⚠️ Unaudited |
| StakePoolController | unknown | bsc | n/a | [`0x14abdb...4b7678`](./contracts/bsc-56/0x14abdb3fe4727852dcc0226240a307640b4b7678/) | ⚠️ Unaudited |
| StakePoolCreator | unknown | ethereum | n/a | [`0x959ecb...30257d`](./contracts/ethereum-1/0x959ecbacc9cfaa5ba63406fde9a238895b30257d/) | ⚠️ Unaudited |
| StakePoolEpochRewardCreator | unknown | ethereum | n/a | [`0x5be1aa...46e508`](./contracts/ethereum-1/0x5be1aac0ce9bd53b49179a37508c318ee146e508/) | ⚠️ Unaudited |
| StakePoolHasOperatorCreator | unknown | ethereum | n/a | [`0xd2fb63...0625d8`](./contracts/ethereum-1/0xd2fb63ba4a7500376a4fd414b67affdd490625d8/) | ⚠️ Unaudited |
| StrategyAutoCake | unknown | bsc | n/a | [`0xcce5b1...0721f1`](./contracts/bsc-56/0xcce5b1d506254c3ddc49eb195d7b614cf70721f1/) | ⚠️ Unaudited |
| StrategyBalancerEthUsdc | unknown | ethereum | n/a | [`0xc7c68a...2b27e6`](./contracts/ethereum-1/0xc7c68aca652b603d59d52eec076a6dfab02b27e6/) | ⚠️ Unaudited |
| StrategyBalancerEthWbtc | unknown | ethereum | n/a | [`0x7b2ef5...45c9a9`](./contracts/ethereum-1/0x7b2ef5c86bfb4d9b50100391e289b7dcf445c9a9/) | ⚠️ Unaudited |
| StrategyBarnBridgeUsdc | unknown | ethereum | n/a | [`0xb6bf3e...255e1b`](./contracts/ethereum-1/0xb6bf3eba4ab600090235f4bee5894ae17b255e1b/) | ⚠️ Unaudited |
| StrategyBEarnVSwapWeightLp | unknown | bsc | n/a | [`0xa27ce2...13eabd`](./contracts/bsc-56/0xa27ce2736492e44f05467471e479d7aeeb13eabd/) | ⚠️ Unaudited |
| StrategyCurve3Crv | unknown | ethereum | n/a | [`0x467e9f...07bf3e`](./contracts/ethereum-1/0x467e9f2caa9b7678ddc29b248cb9fb181907bf3e/) | ⚠️ Unaudited |
| StrategyCurveBCrv | unknown | ethereum | n/a | [`0xb43f07...a63926`](./contracts/ethereum-1/0xb43f0707b2719a5b8ab905d253022c6073a63926/) | ⚠️ Unaudited |
| StrategyCurveCCrv | unknown | ethereum | n/a | [`0x985956...6e92b5`](./contracts/ethereum-1/0x98595670e97aa2ec229f366806b37745ad6e92b5/) | ⚠️ Unaudited |
| StrategyPickle3Crv | unknown | ethereum | n/a | [`0x3061cf...72ff44`](./contracts/ethereum-1/0x3061cfa9f3c68190581550c52e0ab440f372ff44/) | ⚠️ Unaudited |
| StrategySushiEthUsdc | unknown | ethereum | n/a | [`0xbec7de...6b3fdb`](./contracts/ethereum-1/0xbec7de67579642df01fec1eae1833d668a6b3fdb/) | ⚠️ Unaudited |
| StrategySushiEthWbtc | unknown | ethereum | n/a | [`0x129a8d...08bcad`](./contracts/ethereum-1/0x129a8d8000b8e80a99aa09fe40d189947108bcad/) | ⚠️ Unaudited |
| SushiswapLpPairConverter_EthUsdc | unknown | ethereum | n/a | [`0xd93112...83803f`](./contracts/ethereum-1/0xd93112068a47425e60d9d6841043b997df83803f/) | ⚠️ Unaudited |
| SushiswapLpPairConverter_EthWbtc | unknown | ethereum | n/a | [`0xbda223...942f9e`](./contracts/ethereum-1/0xbda22300460bf0d818fb154e1dba58d6d9942f9e/) | ⚠️ Unaudited |
| SwapCreator | unknown | bsc | n/a | [`0x1c032f...f14960`](./contracts/bsc-56/0x1c032f5bb0ab7c02d8918617fa1482b559f14960/) | ⚠️ Unaudited |
| SwapUtils | unknown | bsc | n/a | [`0x02818a...ca2c39`](./contracts/bsc-56/0x02818a8256cf93564fab2199de2b13628fca2c39/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x105e62...be080d`](./contracts/ethereum-1/0x105e62e4bdfa67bca18400cfbe2eacd4d0be080d/) | ⚠️ Unaudited |
| Treasury | unknown | ethereum | n/a | [`0x605187...db76de`](./contracts/ethereum-1/0x605187e4ccb44b2eef08b4dffa34d895e8db76de/) | ⚠️ Unaudited |
| UniswapRouterSupportingFeeOnTransferTokens | unknown | ethereum | n/a | [`0xbc60a1...ba460c`](./contracts/ethereum-1/0xbc60a1235e589f79bcc3d0b8ce4910411dba460c/) | ⚠️ Unaudited |
| Univ2ETHUSDCMultiPoolStrategy | unknown | ethereum | n/a | [`0xde268a...e5ee2a`](./contracts/ethereum-1/0xde268af47bfb3658019f3d1b6ee77ebe8be5ee2a/) | ⚠️ Unaudited |
| UNIv2ETHUSDCVault | unknown | ethereum | n/a | [`0xa2b8c8...88d82e`](./contracts/ethereum-1/0xa2b8c86abfdb1c8c117e10616eb9f21b2488d82e/) | ⚠️ Unaudited |
| Univ2ETHWBTCMultiPoolStrategy | unknown | ethereum | n/a | [`0x68e409...429fc9`](./contracts/ethereum-1/0x68e409bec3fcd5008b91de8bbc8b0bdcdf429fc9/) | ⚠️ Unaudited |
| UNIv2ETHWBTCVault | unknown | ethereum | n/a | [`0xcbf57f...99c370`](./contracts/ethereum-1/0xcbf57fe64075340b54769faa594df279ae99c370/) | ⚠️ Unaudited |
| ValueGovernanceVault | unknown | ethereum | n/a | [`0x78d46e...98e51b`](./contracts/ethereum-1/0x78d46e6b5c022ffbd1a558c65407ad28ad98e51b/) | ⚠️ Unaudited |
| ValueIOUClaim | unknown | ethereum | n/a | [`0x1de515...a4eb7e`](./contracts/ethereum-1/0x1de515fa7e0834fa07bd7ff4a15fe7869ea4eb7e/) | ⚠️ Unaudited |
| ValueIOURebaser | unknown | bsc | n/a | [`0x5a53b6...b3f9f1`](./contracts/bsc-56/0x5a53b6a222fb9099659c4f37ecbe06e0feb3f9f1/) | ⚠️ Unaudited |
| ValueLiquidFactory | unknown | bsc | n/a | [`0x1b8e12...74c14c`](./contracts/bsc-56/0x1b8e12f839bd4e73a47addf76cf7f0097d74c14c/) | ⚠️ Unaudited |
| ValueLiquidFormula | unknown | bsc | n/a | [`0x45f24b...2bcdfa`](./contracts/bsc-56/0x45f24baeef268bb6d63aee5129015d69702bcdfa/) | ⚠️ Unaudited |
| ValueLiquidityToken | unknown | ethereum | n/a | [`0x49e833...218e5c`](./contracts/ethereum-1/0x49e833337ece7afe375e44f4e3e8481029218e5c/) | ⚠️ Unaudited |
| ValueLiquidMigrator | unknown | ethereum | n/a | [`0x4572b9...65e560`](./contracts/ethereum-1/0x4572b9882fd29bdbe26a74dfa8afe9a75365e560/) | ⚠️ Unaudited |
| ValueLiquidProfitCollector | unknown | ethereum | n/a | [`0x9d5318...5b775e`](./contracts/ethereum-1/0x9d531816b38c77859fd3702f4e09e5d6c45b775e/) | ⚠️ Unaudited |
| ValueLiquidProfitCollectorV2 | unknown | ethereum | n/a | [`0xee30af...090a13`](./contracts/ethereum-1/0xee30aff4ad70f2cbcdd0b9b422af92a7be090a13/) | ⚠️ Unaudited |
| ValueLiquidProvider | unknown | ethereum | n/a | [`0x6a7f82...774b36`](./contracts/ethereum-1/0x6a7f824579e280a717d44a96ae8df7fbaa774b36/) | ⚠️ Unaudited |
| ValueLiquidRouter | unknown | ethereum | n/a | [`0x52f75e...9a0a03`](./contracts/ethereum-1/0x52f75ee5033e25f2d8343e0323f1b3fe0b9a0a03/) | ⚠️ Unaudited |
| ValueLiquidZap | unknown | bsc | n/a | [`0x015a1d...918124`](./contracts/bsc-56/0x015a1de4dee9be2dd27b8864beaa8f8f6e918124/) | ⚠️ Unaudited |
| ValueMasterPool | unknown | ethereum | n/a | [`0x1e71c7...aee046`](./contracts/ethereum-1/0x1e71c74d45ffdf184a91f63b94d6469876aee046/) | ⚠️ Unaudited |
| ValueMinorPool | unknown | ethereum | n/a | [`0xcc5116...cfbd2f`](./contracts/ethereum-1/0xcc51169c21158084371c63bc260aba4afdcfbd2f/) | ⚠️ Unaudited |
| ValueMultiVaultBank | unknown | ethereum | n/a | [`0x8764f2...60f7ff`](./contracts/ethereum-1/0x8764f2c305b79680cfcc3398a96aedea9260f7ff/) | ⚠️ Unaudited |
| ValueMultiVaultMaster | unknown | ethereum | n/a | [`0xea48b3...29f0e3`](./contracts/ethereum-1/0xea48b3f50f3cf2216e34e2e868abc810b729f0e3/) | ⚠️ Unaudited |
| ValueVaultBank | unknown | ethereum | n/a | [`0x95beae...a386ec`](./contracts/ethereum-1/0x95beaeb2701736dd9bf1930d569231e78ca386ec/) | ⚠️ Unaudited |
| ValueVaultMaster | unknown | ethereum | n/a | [`0xaa8ecc...004b28`](./contracts/ethereum-1/0xaa8ecca0082c34ab8c30b4d896eb8eecc5004b28/) | ⚠️ Unaudited |
| ValueVaultProfitSharer | unknown | ethereum | n/a | [`0x7c1c31...d1e862`](./contracts/ethereum-1/0x7c1c3116c99b7f8a35163331a33a09e2ebd1e862/) | ⚠️ Unaudited |
| ValueVaultProfitSharerV2 | unknown | ethereum | n/a | [`0x9fae60...fa2ac8`](./contracts/ethereum-1/0x9fae600dff4681efe5048ece952005ed7ffa2ac8/) | ⚠️ Unaudited |
| vBond | unknown | ethereum | n/a | [`0x05d707...f2fef7`](./contracts/ethereum-1/0x05d70721c4f75473a07907c0d0c6eebed5f2fef7/) | ⚠️ Unaudited |
| vBONDGateway | unknown | bsc | n/a | [`0x85f988...2281e0`](./contracts/bsc-56/0x85f98829f6f4b4551932de62c48781d17c2281e0/) | ⚠️ Unaudited |
| vBSWAP | unknown | bsc | n/a | [`0x4f0ed5...361600`](./contracts/bsc-56/0x4f0ed527e8a95ecaa132af214dfd41f30b361600/) | ⚠️ Unaudited |
| vETH | unknown | ethereum | n/a | [`0x76a034...70f16e`](./contracts/ethereum-1/0x76a034e76aa835363056dd418611e4f81870f16e/) | ⚠️ Unaudited |
| VSafeVaultCAKE | unknown | bsc | n/a | [`0x15bcac...eebe32`](./contracts/bsc-56/0x15bcacd47eef0d3877cf1199819f9e6addeebe32/) | ⚠️ Unaudited |
| VSafeVaultController | unknown | bsc | n/a | [`0x4c7879...229cde`](./contracts/bsc-56/0x4c7879d39aac5af0e26c9dc66d1546f627229cde/) | ⚠️ Unaudited |
| VSafeVaultMaster | unknown | bsc | n/a | [`0x7376fc...864a7d`](./contracts/bsc-56/0x7376fc47863ceed6bf3427ce4526ae29c4864a7d/) | ⚠️ Unaudited |
| VSafeVaultVSwapGvValueBUSD | unknown | bsc | n/a | [`0x58d3e7...262637`](./contracts/bsc-56/0x58d3e700c52e3e013908a1f0037bdd1c6d262637/) | ⚠️ Unaudited |
| VSafeVaultVSwapVbswapBNB | unknown | bsc | n/a | [`0x925d67...38baea`](./contracts/bsc-56/0x925d67e6b2e86380833e7c950cccd3748d38baea/) | ⚠️ Unaudited |
| VSafeVaultVSwapVbswapBUSD | unknown | bsc | n/a | [`0x9265dc...45085a`](./contracts/bsc-56/0x9265dc93e221875777c8ca8140beb3512045085a/) | ⚠️ Unaudited |
| vUSD | unknown | ethereum | n/a | [`0x1b8e12...74c14c`](./contracts/ethereum-1/0x1b8e12f839bd4e73a47addf76cf7f0097d74c14c/) | ⚠️ Unaudited |
| WETHMultiPoolStrategy | unknown | ethereum | n/a | [`0x126082...df1abf`](./contracts/ethereum-1/0x126082815922fb9f8275021c5519c20ce7df1abf/) | ⚠️ Unaudited |
| WETHVault | unknown | ethereum | n/a | [`0x3f72aa...64ceee`](./contracts/ethereum-1/0x3f72aad4be55a7a0bfc1e572501a90b0c864ceee/) | ⚠️ Unaudited |
| xvBSWAP | unknown | bsc | n/a | [`0x8ca880...4bd8b5`](./contracts/bsc-56/0x8ca88018713f2c7aa970bdb45c8df2f42c4bd8b5/) | ⚠️ Unaudited |
| YFV | unknown | ethereum | n/a | [`0x45f24b...2bcdfa`](./contracts/ethereum-1/0x45f24baeef268bb6d63aee5129015d69702bcdfa/) | ⚠️ Unaudited |
| YFVDevRewards | unknown | ethereum | n/a | [`0x21ffcc...fae07e`](./contracts/ethereum-1/0x21ffccebb1a34107242240d44a066e4fcbfae07e/) | ⚠️ Unaudited |
| YFVGovernanceVault | unknown | ethereum | n/a | [`0x07eb8c...808ca2`](./contracts/ethereum-1/0x07eb8cb8aedb581a2d73cc29f6c7860226808ca2/) | ⚠️ Unaudited |
| YFVReferral | unknown | ethereum | n/a | [`0x3422ac...78bbdb`](./contracts/ethereum-1/0x3422ac57f4ca097806fa234e44ec0a781b78bbdb/) | ⚠️ Unaudited |
| YFVRewards | unknown | ethereum | n/a | [`0xa8d308...1c8cfe`](./contracts/ethereum-1/0xa8d3084fa61c893eacae2460ee77e3e5f11c8cfe/) | ⚠️ Unaudited |
| YFVRewardsBALPool | unknown | ethereum | n/a | [`0x62a9fe...2ba22e`](./contracts/ethereum-1/0x62a9fe913eb596c8fac0936fd2f51064022ba22e/) | ⚠️ Unaudited |
| YFVRewardsBATPool | unknown | ethereum | n/a | [`0x1c990f...5c31a1`](./contracts/ethereum-1/0x1c990fc37f399c935625b815975d0c9fad5c31a1/) | ⚠️ Unaudited |
| YFVRewardsBTCPool | unknown | ethereum | n/a | [`0xfbde07...b5e063`](./contracts/ethereum-1/0xfbde07329ffc9ec1b70f639ad388b94532b5e063/) | ⚠️ Unaudited |
| YFVRewardsETHPool | unknown | ethereum | n/a | [`0x67ffb6...6a42bb`](./contracts/ethereum-1/0x67ffb615eaeb8aa88ff37cca6a32e322286a42bb/) | ⚠️ Unaudited |
| YFVRewardsKNCPool | unknown | ethereum | n/a | [`0x9b7477...433092`](./contracts/ethereum-1/0x9b74774f55c0351fd064cfdffd35db002c433092/) | ⚠️ Unaudited |
| YFVRewardsLINKPool | unknown | ethereum | n/a | [`0x196cf7...7810cd`](./contracts/ethereum-1/0x196cf719251579cbc850ded0e47e972b3d7810cd/) | ⚠️ Unaudited |
| YFVRewardsRENPool | unknown | ethereum | n/a | [`0x752037...0174b0`](./contracts/ethereum-1/0x752037bfef024bd2669227bf9068cb22840174b0/) | ⚠️ Unaudited |
| YFVRewardsYCrvUNIv2Pool | unknown | ethereum | n/a | [`0x931da4...c47cfd`](./contracts/ethereum-1/0x931da4fe516a1e12fd033f8e33f54637edc47cfd/) | ⚠️ Unaudited |
| YFVRewardsYFIPool | unknown | ethereum | n/a | [`0x70b83a...c9a117`](./contracts/ethereum-1/0x70b83a7f5e83b3698d136887253e0bf426c9a117/) | ⚠️ Unaudited |
| YFVStake | unknown | ethereum | n/a | [`0x0e6ffd...ad4a30`](./contracts/ethereum-1/0x0e6ffd4daeca13a8158146516f847d2f44ad4a30/) | ⚠️ Unaudited |
| YFVStakeV2 | unknown | ethereum | n/a | [`0xd120f2...70277a`](./contracts/ethereum-1/0xd120f23438ac0edbba2c4c072739387aaa70277a/) | ⚠️ Unaudited |
| YFVVIPVote | unknown | ethereum | n/a | [`0x6ba70f...6280e6`](./contracts/ethereum-1/0x6ba70f65877da18e751ff42fc1c3fee8c66280e6/) | ⚠️ Unaudited |
| YFVVIPVoteV2 | unknown | ethereum | n/a | [`0xdc58a4...22775b`](./contracts/ethereum-1/0xdc58a481c27a6a376c02b97e1be2fafa0b22775b/) | ⚠️ Unaudited |
| YFVVoteV2 | unknown | ethereum | n/a | [`0x9d03cf...1cc997`](./contracts/ethereum-1/0x9d03cf457a4e3099aa5b38506374e3b7071cc997/) | ⚠️ Unaudited |

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
| [FaaSPool.pdf](https://valuedefi.io/files/faaspool.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Peckshield_Audit_Report.pdf](https://valuedefi.io/files/peckshield_audit_report.pdf) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ValueGov2 Audit.pdf](https://valuedefi.io/files/valuegov2audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Value Token Contract Audit.pdf](https://valuedefi.io/files/value_token_contract_audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Arcadia Vault AuditPublic.pdf](https://valuedefi.io/files/arcadia_vault_auditpublic.pdf) | Arcadia | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Security Analysis by Pessimistic.pdf](https://valuedefi.io/files/security_analysis_by_pessimistic.pdf) | Pessimistic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [1. Letter from Arcadia for YFV Staking Pool v2.pdf](https://valuedefi.io/files/letter_from_arcadia_for_yfv_staking_pool_v2.pdf) | Arcadia | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2. YFV Staking Pool v2 - Audit Summary.pdf](https://valuedefi.io/files/yfv_staking_pool_v2_-_audit_summary.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2. YFV Protocol Audit Summary.pdf](https://valuedefi.io/files/yfv_protocol_audit_summary.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xb1a8cb...af7f14`](./contracts/bsc-56/0xb1a8cbfd40877b70b5ab2f95a71d78cbf8af7f14/) | Address | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60132f...8eca36`](./contracts/ethereum-1/0x60132fff0ca7c8a24a67159c7d9a8bcd8a8eca36/) | BActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8716f2...37d13f`](./contracts/ethereum-1/0x8716f20ed86ce1b9931db53e851b62160437d13f/) | BarnBridgeConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xebc446...62675b`](./contracts/ethereum-1/0xebc44681c125d63210a33d30c55fd3d37762675b/) | BFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31a356...fcdcf2`](./contracts/ethereum-1/0x31a3566d95f638b3568a278915589dad96fcdcf2/) | BondMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x58bab5...abe950`](./contracts/ethereum-1/0x58bab52a511c747335d3da53cce9a6e7beabe950/) | BPoolCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x713a5f...2767e1`](./contracts/ethereum-1/0x713a5f7d7b48f8f4806f9fb4dc9c387c102767e1/) | CompositeVaultBank | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30993b...d1069c`](./contracts/ethereum-1/0x30993bd1d103ac3d163797dc04aafaa1fdd1069c/) | CompositeVaultBBridgeUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x030c8e...3a7de3`](./contracts/ethereum-1/0x030c8eb47f720482f7fac6f1d066431f0c3a7de3/) | CompositeVaultBptEthUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a62cc...692772`](./contracts/ethereum-1/0x0a62cc5ebfa79b155b4ec90e74c00e0176692772/) | CompositeVaultBptEthWbtc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e67c2...641dbb`](./contracts/ethereum-1/0x3e67c27d14032304c0e8c3af8214ecf102641dbb/) | CompositeVaultController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa25ec3...53131a`](./contracts/ethereum-1/0xa25ec370c34fe82ef4615c8dbbf6229f0a53131a/) | CompositeVaultController_BBridgeUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50e50f...2b8126`](./contracts/ethereum-1/0x50e50f60b09930ac2cc14bf0725d7a29ff2b8126/) | CompositeVaultController_BptEthUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87abb9...439707`](./contracts/ethereum-1/0x87abb9370c9cf8766eaefb48f3b1395ad8439707/) | CompositeVaultController_BptEthWbtc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6acaa8...ecd8aa`](./contracts/ethereum-1/0x6acaa8fa3f4bf5644f5575da9c1022eca8ecd8aa/) | CompositeVaultController_SlpEthWbtc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a8ac3...affc89`](./contracts/ethereum-1/0x7a8ac384d3a9086afcc13eb58e90916f17affc89/) | CompositeVaultMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x061434...8a0e00`](./contracts/ethereum-1/0x061434f835a87f683793ba1271c2dfeb618a0e00/) | CompositeVaultSlpEthUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ffd99...4c9932`](./contracts/ethereum-1/0x0ffd9995712b92d772b9dc195c5e00cc984c9932/) | CompositeVaultSlpEthWbtc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3479b0...40f6cc`](./contracts/ethereum-1/0x3479b0acf875405d7853f44142fe06470a40f6cc/) | Dollar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfcfab4...0ffcb6`](./contracts/ethereum-1/0xfcfab4ecdf2caf3c98145b6fcdac1b46760ffcb6/) | ERC20BridgeGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x054928...c0fa21`](./contracts/ethereum-1/0x0549282eb828861a0effa4c5cc281a1afec0fa21/) | ExchangeProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45c4d7...6f771a`](./contracts/ethereum-1/0x45c4d796e7506f467aed24b81db897f18b6f771a/) | FaaSPoolCreatorLite | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x210f34...d426e7`](./contracts/ethereum-1/0x210f342802a95be9e8cc371961f23524a3d426e7/) | FaasPoolProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x240f42...c835ff`](./contracts/ethereum-1/0x240f42f2b096b5f2fcf351c9dcdda307a0c835ff/) | FaaSRewardFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf4871e...b35408`](./contracts/ethereum-1/0xf4871e1f699cd9b94b005b0b912114b050b35408/) | FaasYtruClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d0127...b90c92`](./contracts/ethereum-1/0x8d012729ec8affc08043d97ca2c02fdfdcb90c92/) | GovVaultRewardAutoCompound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0610c2...50ad15`](./contracts/bsc-56/0x0610c2d9f6ebc40078cf081e2d1c4252dd50ad15/) | gvVALUE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2dfb07...d54480`](./contracts/bsc-56/0x2dfb07be34c5499a07e6873c249433c953d54480/) | gvVALUEGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb3a0f...7fea90`](./contracts/ethereum-1/0xcb3a0fa12a7bb34b3c7897c6718d9706be7fea90/) | LegacyPoolDrainer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9fbd65...b2bdd8`](./contracts/bsc-56/0x9fbd6526bc1a0ab72a5258935013398904b2bdd8/) | MathUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70508d...569a03`](./contracts/ethereum-1/0x70508dd819635a58babbae1362bc83c41a569a03/) | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd10ab8...6a0910`](./contracts/bsc-56/0xd10ab835fb825c2f25d5b02e559db6d5586a0910/) | MerkleDistributorMultiple | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a2c1d...c0c5db`](./contracts/ethereum-1/0x3a2c1d4aad6f85c3d0bd8a2018a6120a30c0c5db/) | MultiStablesClaimReturn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55bf83...f86d26`](./contracts/ethereum-1/0x55bf8304c78ba6fe47fd251f37d7beb485f86d26/) | MultiStablesVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba5d28...1adee7`](./contracts/ethereum-1/0xba5d28f4ecee5586d616024c74e4d791e01adee7/) | MultiStablesVaultController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2d385...27a297`](./contracts/ethereum-1/0xa2d385185bbd96f4794ae3504aeaa7825827a297/) | OracleMultiPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5344f4...1a5db4`](./contracts/bsc-56/0x5344f4d4e96f5cdfad4aa702771d479c911a5db4/) | ProfitSharingRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x58bd64...eb66d5`](./contracts/bsc-56/0x58bd64b52ca6d6ece85bfcd2d24a8e8044eb66d5/) | ProtocolFeeRemover | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6aed0a...370fb2`](./contracts/bsc-56/0x6aed0a5a6db07ceac234934dfd3c32d284370fb2/) | ReserveFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6cf664...afe4fb`](./contracts/bsc-56/0x6cf664834c9b59951a883199f32f536a44afe4fb/) | ReserveFundV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2f5274...8e05b8`](./contracts/bsc-56/0x2f527493916170de7d945daecbdcbe27ec8e05b8/) | RewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57cda1...d15bf2`](./contracts/ethereum-1/0x57cda125d0c7b146a8320614ccd6c55999d15bf2/) | ShareConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c2f33...54338d`](./contracts/ethereum-1/0x8c2f33b3a580baeb2a1f2d34bcc76e020a54338d/) | StableSwap3PoolConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d0e55...2fc2b0`](./contracts/ethereum-1/0x3d0e55dbcd7f2974957b6c823bffcd530e2fc2b0/) | StableSwapBusdConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x85f988...2281e0`](./contracts/ethereum-1/0x85f98829f6f4b4551932de62c48781d17c2281e0/) | StableSwapCompoundConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xae63a2...717718`](./contracts/bsc-56/0xae63a2065cdf6e516037fa1dd4efc0a439717718/) | StableSwapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc437b8...1965e1`](./contracts/bsc-56/0xc437b8d65ecdd43cda92739e09ebd68bbe1965e1/) | StableSwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x14abdb...4b7678`](./contracts/bsc-56/0x14abdb3fe4727852dcc0226240a307640b4b7678/) | StakePoolController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x959ecb...30257d`](./contracts/ethereum-1/0x959ecbacc9cfaa5ba63406fde9a238895b30257d/) | StakePoolCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5be1aa...46e508`](./contracts/ethereum-1/0x5be1aac0ce9bd53b49179a37508c318ee146e508/) | StakePoolEpochRewardCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd2fb63...0625d8`](./contracts/ethereum-1/0xd2fb63ba4a7500376a4fd414b67affdd490625d8/) | StakePoolHasOperatorCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcce5b1...0721f1`](./contracts/bsc-56/0xcce5b1d506254c3ddc49eb195d7b614cf70721f1/) | StrategyAutoCake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc7c68a...2b27e6`](./contracts/ethereum-1/0xc7c68aca652b603d59d52eec076a6dfab02b27e6/) | StrategyBalancerEthUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b2ef5...45c9a9`](./contracts/ethereum-1/0x7b2ef5c86bfb4d9b50100391e289b7dcf445c9a9/) | StrategyBalancerEthWbtc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb6bf3e...255e1b`](./contracts/ethereum-1/0xb6bf3eba4ab600090235f4bee5894ae17b255e1b/) | StrategyBarnBridgeUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa27ce2...13eabd`](./contracts/bsc-56/0xa27ce2736492e44f05467471e479d7aeeb13eabd/) | StrategyBEarnVSwapWeightLp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x467e9f...07bf3e`](./contracts/ethereum-1/0x467e9f2caa9b7678ddc29b248cb9fb181907bf3e/) | StrategyCurve3Crv | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb43f07...a63926`](./contracts/ethereum-1/0xb43f0707b2719a5b8ab905d253022c6073a63926/) | StrategyCurveBCrv | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x985956...6e92b5`](./contracts/ethereum-1/0x98595670e97aa2ec229f366806b37745ad6e92b5/) | StrategyCurveCCrv | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3061cf...72ff44`](./contracts/ethereum-1/0x3061cfa9f3c68190581550c52e0ab440f372ff44/) | StrategyPickle3Crv | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbec7de...6b3fdb`](./contracts/ethereum-1/0xbec7de67579642df01fec1eae1833d668a6b3fdb/) | StrategySushiEthUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x129a8d...08bcad`](./contracts/ethereum-1/0x129a8d8000b8e80a99aa09fe40d189947108bcad/) | StrategySushiEthWbtc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1c032f...f14960`](./contracts/bsc-56/0x1c032f5bb0ab7c02d8918617fa1482b559f14960/) | SwapCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x02818a...ca2c39`](./contracts/bsc-56/0x02818a8256cf93564fab2199de2b13628fca2c39/) | SwapUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x105e62...be080d`](./contracts/ethereum-1/0x105e62e4bdfa67bca18400cfbe2eacd4d0be080d/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x605187...db76de`](./contracts/ethereum-1/0x605187e4ccb44b2eef08b4dffa34d895e8db76de/) | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xde268a...e5ee2a`](./contracts/ethereum-1/0xde268af47bfb3658019f3d1b6ee77ebe8be5ee2a/) | Univ2ETHUSDCMultiPoolStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2b8c8...88d82e`](./contracts/ethereum-1/0xa2b8c86abfdb1c8c117e10616eb9f21b2488d82e/) | UNIv2ETHUSDCVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68e409...429fc9`](./contracts/ethereum-1/0x68e409bec3fcd5008b91de8bbc8b0bdcdf429fc9/) | Univ2ETHWBTCMultiPoolStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbf57f...99c370`](./contracts/ethereum-1/0xcbf57fe64075340b54769faa594df279ae99c370/) | UNIv2ETHWBTCVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78d46e...98e51b`](./contracts/ethereum-1/0x78d46e6b5c022ffbd1a558c65407ad28ad98e51b/) | ValueGovernanceVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1de515...a4eb7e`](./contracts/ethereum-1/0x1de515fa7e0834fa07bd7ff4a15fe7869ea4eb7e/) | ValueIOUClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5a53b6...b3f9f1`](./contracts/bsc-56/0x5a53b6a222fb9099659c4f37ecbe06e0feb3f9f1/) | ValueIOURebaser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1b8e12...74c14c`](./contracts/bsc-56/0x1b8e12f839bd4e73a47addf76cf7f0097d74c14c/) | ValueLiquidFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x45f24b...2bcdfa`](./contracts/bsc-56/0x45f24baeef268bb6d63aee5129015d69702bcdfa/) | ValueLiquidFormula | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49e833...218e5c`](./contracts/ethereum-1/0x49e833337ece7afe375e44f4e3e8481029218e5c/) | ValueLiquidityToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4572b9...65e560`](./contracts/ethereum-1/0x4572b9882fd29bdbe26a74dfa8afe9a75365e560/) | ValueLiquidMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d5318...5b775e`](./contracts/ethereum-1/0x9d531816b38c77859fd3702f4e09e5d6c45b775e/) | ValueLiquidProfitCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xee30af...090a13`](./contracts/ethereum-1/0xee30aff4ad70f2cbcdd0b9b422af92a7be090a13/) | ValueLiquidProfitCollectorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a7f82...774b36`](./contracts/ethereum-1/0x6a7f824579e280a717d44a96ae8df7fbaa774b36/) | ValueLiquidProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52f75e...9a0a03`](./contracts/ethereum-1/0x52f75ee5033e25f2d8343e0323f1b3fe0b9a0a03/) | ValueLiquidRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x015a1d...918124`](./contracts/bsc-56/0x015a1de4dee9be2dd27b8864beaa8f8f6e918124/) | ValueLiquidZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e71c7...aee046`](./contracts/ethereum-1/0x1e71c74d45ffdf184a91f63b94d6469876aee046/) | ValueMasterPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc5116...cfbd2f`](./contracts/ethereum-1/0xcc51169c21158084371c63bc260aba4afdcfbd2f/) | ValueMinorPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8764f2...60f7ff`](./contracts/ethereum-1/0x8764f2c305b79680cfcc3398a96aedea9260f7ff/) | ValueMultiVaultBank | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea48b3...29f0e3`](./contracts/ethereum-1/0xea48b3f50f3cf2216e34e2e868abc810b729f0e3/) | ValueMultiVaultMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95beae...a386ec`](./contracts/ethereum-1/0x95beaeb2701736dd9bf1930d569231e78ca386ec/) | ValueVaultBank | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaa8ecc...004b28`](./contracts/ethereum-1/0xaa8ecca0082c34ab8c30b4d896eb8eecc5004b28/) | ValueVaultMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c1c31...d1e862`](./contracts/ethereum-1/0x7c1c3116c99b7f8a35163331a33a09e2ebd1e862/) | ValueVaultProfitSharer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9fae60...fa2ac8`](./contracts/ethereum-1/0x9fae600dff4681efe5048ece952005ed7ffa2ac8/) | ValueVaultProfitSharerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05d707...f2fef7`](./contracts/ethereum-1/0x05d70721c4f75473a07907c0d0c6eebed5f2fef7/) | vBond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x85f988...2281e0`](./contracts/bsc-56/0x85f98829f6f4b4551932de62c48781d17c2281e0/) | vBONDGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4f0ed5...361600`](./contracts/bsc-56/0x4f0ed527e8a95ecaa132af214dfd41f30b361600/) | vBSWAP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76a034...70f16e`](./contracts/ethereum-1/0x76a034e76aa835363056dd418611e4f81870f16e/) | vETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x15bcac...eebe32`](./contracts/bsc-56/0x15bcacd47eef0d3877cf1199819f9e6addeebe32/) | VSafeVaultCAKE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4c7879...229cde`](./contracts/bsc-56/0x4c7879d39aac5af0e26c9dc66d1546f627229cde/) | VSafeVaultController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7376fc...864a7d`](./contracts/bsc-56/0x7376fc47863ceed6bf3427ce4526ae29c4864a7d/) | VSafeVaultMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x58d3e7...262637`](./contracts/bsc-56/0x58d3e700c52e3e013908a1f0037bdd1c6d262637/) | VSafeVaultVSwapGvValueBUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x925d67...38baea`](./contracts/bsc-56/0x925d67e6b2e86380833e7c950cccd3748d38baea/) | VSafeVaultVSwapVbswapBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9265dc...45085a`](./contracts/bsc-56/0x9265dc93e221875777c8ca8140beb3512045085a/) | VSafeVaultVSwapVbswapBUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b8e12...74c14c`](./contracts/ethereum-1/0x1b8e12f839bd4e73a47addf76cf7f0097d74c14c/) | vUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x126082...df1abf`](./contracts/ethereum-1/0x126082815922fb9f8275021c5519c20ce7df1abf/) | WETHMultiPoolStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f72aa...64ceee`](./contracts/ethereum-1/0x3f72aad4be55a7a0bfc1e572501a90b0c864ceee/) | WETHVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8ca880...4bd8b5`](./contracts/bsc-56/0x8ca88018713f2c7aa970bdb45c8df2f42c4bd8b5/) | xvBSWAP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45f24b...2bcdfa`](./contracts/ethereum-1/0x45f24baeef268bb6d63aee5129015d69702bcdfa/) | YFV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21ffcc...fae07e`](./contracts/ethereum-1/0x21ffccebb1a34107242240d44a066e4fcbfae07e/) | YFVDevRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07eb8c...808ca2`](./contracts/ethereum-1/0x07eb8cb8aedb581a2d73cc29f6c7860226808ca2/) | YFVGovernanceVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3422ac...78bbdb`](./contracts/ethereum-1/0x3422ac57f4ca097806fa234e44ec0a781b78bbdb/) | YFVReferral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8d308...1c8cfe`](./contracts/ethereum-1/0xa8d3084fa61c893eacae2460ee77e3e5f11c8cfe/) | YFVRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62a9fe...2ba22e`](./contracts/ethereum-1/0x62a9fe913eb596c8fac0936fd2f51064022ba22e/) | YFVRewardsBALPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c990f...5c31a1`](./contracts/ethereum-1/0x1c990fc37f399c935625b815975d0c9fad5c31a1/) | YFVRewardsBATPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfbde07...b5e063`](./contracts/ethereum-1/0xfbde07329ffc9ec1b70f639ad388b94532b5e063/) | YFVRewardsBTCPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67ffb6...6a42bb`](./contracts/ethereum-1/0x67ffb615eaeb8aa88ff37cca6a32e322286a42bb/) | YFVRewardsETHPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b7477...433092`](./contracts/ethereum-1/0x9b74774f55c0351fd064cfdffd35db002c433092/) | YFVRewardsKNCPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x196cf7...7810cd`](./contracts/ethereum-1/0x196cf719251579cbc850ded0e47e972b3d7810cd/) | YFVRewardsLINKPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x752037...0174b0`](./contracts/ethereum-1/0x752037bfef024bd2669227bf9068cb22840174b0/) | YFVRewardsRENPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x931da4...c47cfd`](./contracts/ethereum-1/0x931da4fe516a1e12fd033f8e33f54637edc47cfd/) | YFVRewardsYCrvUNIv2Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70b83a...c9a117`](./contracts/ethereum-1/0x70b83a7f5e83b3698d136887253e0bf426c9a117/) | YFVRewardsYFIPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e6ffd...ad4a30`](./contracts/ethereum-1/0x0e6ffd4daeca13a8158146516f847d2f44ad4a30/) | YFVStake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd120f2...70277a`](./contracts/ethereum-1/0xd120f23438ac0edbba2c4c072739387aaa70277a/) | YFVStakeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ba70f...6280e6`](./contracts/ethereum-1/0x6ba70f65877da18e751ff42fc1c3fee8c66280e6/) | YFVVIPVote | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc58a4...22775b`](./contracts/ethereum-1/0xdc58a481c27a6a376c02b97e1be2fafa0b22775b/) | YFVVIPVoteV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d03cf...1cc997`](./contracts/ethereum-1/0x9d03cf457a4e3099aa5b38506374e3b7071cc997/) | YFVVoteV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Extraction confidence breakdown: n/a
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
