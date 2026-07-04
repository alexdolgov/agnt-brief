# Agentic Audit Brief: Morpho

## Project Overview

- Project: Morpho (`morpho`)
- Website: [https://morpho.org/](https://morpho.org/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:31.856Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 181 unique implementations (181 raw deployments)
- DeFi Llama TVL: $13,812,833,277.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 159 project-authored contract(s) across 4 chain(s); 2 ERC4626 vaults, 10 ERC20 tokens, 1 ERC1155 multi-token, 11 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 58 common project-authored base contract(s) (owned, typeandversioninterface, simplereadaccesscontroller). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 181; live-surface contracts included: 181 (181 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 18/181 (9.9%)
- Deployed-live implementations: 181 of 181 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 18/181
- Verified + Unaudited implementations: 163
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 181
- Raw deployments: 181
- Audits discovered: 30 (30 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 16
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 9 fresh, 9 aging, 11 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 18 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 9.9% (Certora, ChainSecurity, OpenZeppelin, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 14 | 7.7% | 2025-12 |
| OpenZeppelin | Tier 1 | 12 | 6.6% | 2025-01 |
| Blackthorn | Tier 2 | 2 | 1.1% | 2025-12 |
| Certora | Tier 1 | 2 | 1.1% | 2025-12 |
| ChainSecurity | Tier 1 | 2 | 1.1% | 2025-09 |
| Zellic | Tier 2 | 1 | 0.6% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV2MigrationBundler | unknown | ethereum | n/a | [`0xb3dcc7...aa8e76`](./contracts/ethereum-1/0xb3dcc75db379925edfd3007511a8ce0cb4aa8e76/) | ✅ Audited |
| AaveV3MigrationBundler | unknown | ethereum | n/a | [`0x98ccb1...2f9bdc`](./contracts/ethereum-1/0x98ccb155e86bb478d514a827d16f58c6912f9bdc/) | ✅ Audited |
| AaveV3OptimizerMigrationBundler | unknown | ethereum | n/a | [`0x16f38d...6d2f9c`](./contracts/ethereum-1/0x16f38d2e764e7bebf625a8e995b34968226d2f9c/) | ✅ Audited |
| AdaptiveCurveIrm | unknown | base | n/a | [`0x464159...d22687`](./contracts/base-8453/0x46415998764c29ab2a25cbea6254146d50d22687/) | ✅ Audited |
| CompoundV2MigrationBundler | unknown | ethereum | n/a | [`0x26bf52...8c8647`](./contracts/ethereum-1/0x26bf52a84360ad3d01d7cdc28fc2ddc04d8c8647/) | ✅ Audited |
| CompoundV3MigrationBundler | unknown | ethereum | n/a | [`0x3a0e2e...479558`](./contracts/ethereum-1/0x3a0e2e9fb9c95fbc843daf166276c90b6c479558/) | ✅ Audited |
| EthereumBundler | unknown | ethereum | n/a | [`0xa7995f...f55107`](./contracts/ethereum-1/0xa7995f71aa11525db02fc2473c37dee5dbf55107/) | ✅ Audited |
| MetaMorphoFactory | unknown | ethereum | n/a | [`0xa9c3d3...c41101`](./contracts/ethereum-1/0xa9c3d3a366466fa809d1ae982fb2c46e5fc41101/) | ✅ Audited |
| MetaMorphoV1_1 | unknown | ethereum | n/a | [`0xbeefc1...c6f4e2`](./contracts/ethereum-1/0xbeefc1cdafc5b4a649b54d07afc6bf0f75c6f4e2/) | ✅ Audited |
| MetaMorphoV1_1Factory | unknown | ethereum | n/a | [`0x1897a8...535c24`](./contracts/ethereum-1/0x1897a8997241c1cd4bd0698647e4eb7213535c24/) | ✅ Audited |
| Morpho | unknown | bsc | n/a | [`0x01b0bd...67a83a`](./contracts/bsc-56/0x01b0bd309aa75547f7a37ad7b1219a898e67a83a/) | ✅ Audited |
| MorphoMarketV1AdapterV2Factory | unknown | ethereum | n/a | [`0x32bb1c...61ccc1`](./contracts/ethereum-1/0x32bb1c0d48d8b1b3363e86eeb9a0300bad61ccc1/) | ✅ Audited |
| MorphoVaultV1AdapterFactory | unknown | ethereum | n/a | [`0xd1b8e2...f63394`](./contracts/ethereum-1/0xd1b8e2dee25c2b89dcd2f98448a7ce87d6f63394/) | ✅ Audited |
| PublicAllocator | unknown | ethereum | n/a | [`0x3df418...ca05c4`](./contracts/ethereum-1/0x3df41890b6f4b723d9bb85f81d42990e0fca05c4/) | ✅ Audited |
| RegistryList | unknown | ethereum | n/a | [`0x3696c5...d9364e`](./contracts/ethereum-1/0x3696c5eae4a7ffd04ea163564571e9cd8ed9364e/) | ✅ Audited |
| UniversalRewardsDistributor | unknown | ethereum | n/a | [`0x330eef...e61ddb`](./contracts/ethereum-1/0x330eefa8a787552dc5cad3c3ca644844b1e61ddb/) | ✅ Audited |
| UrdFactory | unknown | ethereum | n/a | [`0x9baa51...ee7c8d`](./contracts/ethereum-1/0x9baa51245cdd28d8d74afe8b3959b616e9ee7c8d/) | ✅ Audited |
| VaultV2Factory | unknown | ethereum | n/a | [`0xa1d94f...6c0405`](./contracts/ethereum-1/0xa1d94f746defa1928926b84fb2596c06926c0405/) | ✅ Audited |

### ⚠️ Verified + Unaudited (163)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV2MigrationAdapter | unknown | ethereum | n/a | [`0x402888...87961b`](./contracts/ethereum-1/0x40288815c399709dfc0875a384b637ffe387961b/) | ⚠️ Unaudited |
| AaveV3MigrationAdapter | unknown | ethereum | n/a | [`0x2cc8d5...bdb806`](./contracts/ethereum-1/0x2cc8d502a65824b4cf9a58db03490ba024bdb806/) | ⚠️ Unaudited |
| AaveV3OptimizerMigrationAdapter | unknown | ethereum | n/a | [`0x9e2ea2...5ad972`](./contracts/ethereum-1/0x9e2ea2d5785598a163d569d795f286f5c55ad972/) | ⚠️ Unaudited |
| AccessControlledAggregator | unknown | ethereum | n/a | [`0x00c7a3...275446`](./contracts/ethereum-1/0x00c7a37b03690fb9f41b5c5af8131735c7275446/) | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | ethereum | n/a | [`0x00260d...a6cd78`](./contracts/ethereum-1/0x00260db07a22a6a5182213d8de1aba0705a6cd78/) | ⚠️ Unaudited |
| Aggregator | unknown | ethereum | n/a | [`0x0b8b84...eeae4d`](./contracts/ethereum-1/0x0b8b84d5f89378eb7f902031b6006dd6c0eeae4d/) | ⚠️ Unaudited |
| AggregatorFacade | unknown | ethereum | n/a | [`0x010b33...6c0a67`](./contracts/ethereum-1/0x010b33ce6fe3c65e8c873d91be0bcb3de36c0a67/) | ⚠️ Unaudited |
| ArbitrumValidator | unknown | ethereum | n/a | [`0x31982c...c38ac1`](./contracts/ethereum-1/0x31982c9e5edd99bb923a948252167ea4bbc38ac1/) | ⚠️ Unaudited |
| ArbMCBv2 | unknown | arbitrum | n/a | [`0xdb967d...f2d7ca`](./contracts/arbitrum-42161/0xdb967d37651532dbac06ec3bcf8e548d43f2d7ca/) | ⚠️ Unaudited |
| BulkerGateway | unknown | ethereum | n/a | [`0xf99e37...82c168`](./contracts/ethereum-1/0xf99e3796f94000462f736925cf32162fea82c168/) | ⚠️ Unaudited |
| Bundler3 | unknown | ethereum | n/a | [`0x656619...c90245`](./contracts/ethereum-1/0x6566194141eefa99af43bb5aa71460ca2dc90245/) | ⚠️ Unaudited |
| CallbackRegister | unknown | arbitrum | n/a | [`0x3ce837...6e7a31`](./contracts/arbitrum-42161/0x3ce83753671e520751238785ea6648d1476e7a31/) | ⚠️ Unaudited |
| CelerBridge | unknown | arbitrum | n/a | [`0xba20fb...1622f2`](./contracts/arbitrum-42161/0xba20fb9d03e0e974fc54e37417c1f7f6a01622f2/) | ⚠️ Unaudited |
| CErc20 | unknown | ethereum | n/a | [`0x158079...ac95c1`](./contracts/ethereum-1/0x158079ee67fce2f58472a96584a73c7ab9ac95c1/) | ⚠️ Unaudited |
| CErc20Delegator | unknown | ethereum | n/a | [`0x5d3a53...8e3643`](./contracts/ethereum-1/0x5d3a536e4d6dbd6114cc1ead35777bab948e3643/) | ⚠️ Unaudited |
| CEther | unknown | ethereum | n/a | [`0x4ddc2d...270ed5`](./contracts/ethereum-1/0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5/) | ⚠️ Unaudited |
| Claimer | unknown | arbitrum | n/a | [`0x328f5d...2a3ad5`](./contracts/arbitrum-42161/0x328f5db55ac2b280b1bdfd65b8ea4726452a3ad5/) | ⚠️ Unaudited |
| CollateralPool | unknown | arbitrum | n/a | [`0x019234...ae6af3`](./contracts/arbitrum-42161/0x019234ee55a1fc89015d9b90d2777a9ce6ae6af3/) | ⚠️ Unaudited |
| CollateralPoolAumReader | unknown | arbitrum | n/a | [`0x1c6a28...a25747`](./contracts/arbitrum-42161/0x1c6a2809604c170f57dc8361915db97931a25747/) | ⚠️ Unaudited |
| CollateralPoolEventEmitter | unknown | arbitrum | n/a | [`0x36abad...24242b`](./contracts/arbitrum-42161/0x36abade2d25cd909718d45f513151374cc24242b/) | ⚠️ Unaudited |
| CompoundV2MigrationAdapter | unknown | ethereum | n/a | [`0x9b89c0...8f1101`](./contracts/ethereum-1/0x9b89c07f480df1945279031b5fc6ff241b8f1101/) | ⚠️ Unaudited |
| CompoundV3MigrationAdapter | unknown | ethereum | n/a | [`0xdba5bd...b26773`](./contracts/ethereum-1/0xdba5bde29ea030bfa6a608592dfca1d02cb26773/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | [`0x178053...63df29`](./contracts/ethereum-1/0x178053c06006e67e09879c09ff012ff9d263df29/) | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | ethereum | n/a | [`0x2e1b5a...d67f6b`](./contracts/ethereum-1/0x2e1b5a40edc922bce489668b11749b8eabd67f6b/) | ⚠️ Unaudited |
| CPoR | unknown | ethereum | n/a | [`0x575a16...f28c51`](./contracts/ethereum-1/0x575a16cd2305ad7171f5c1036c3506070df28c51/) | ⚠️ Unaudited |
| DegenFeeDistributor | unknown | arbitrum | n/a | [`0xc6b190...977216`](./contracts/arbitrum-42161/0xc6b1908c4995cacda30302c458f72ea395977216/) | ⚠️ Unaudited |
| DelayedERC4626Oracle | unknown | ethereum | n/a | [`0x363fff...c52321`](./contracts/ethereum-1/0x363fffe9e293df351fec24bde69954c472c52321/) | ⚠️ Unaudited |
| Delegator | unknown | arbitrum | n/a | [`0x138c39...d2de7d`](./contracts/arbitrum-42161/0x138c39789be9a065d989d167441b3f9479d2de7d/) | ⚠️ Unaudited |
| Diamond | unknown | arbitrum | n/a | [`0x53b472...bde744`](./contracts/arbitrum-42161/0x53b47240f9725c9baf4637a1196b1700cfbde744/) | ⚠️ Unaudited |
| DiamondCutFacet | unknown | arbitrum | n/a | [`0x01ee7a...8e7f10`](./contracts/arbitrum-42161/0x01ee7ac4dcd8e680b6a2223921bb9cdcd28e7f10/) | ⚠️ Unaudited |
| DiamondInit | unknown | arbitrum | n/a | [`0x040375...74ecb3`](./contracts/arbitrum-42161/0x040375a92da214e396205e95cb162213c574ecb3/) | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | arbitrum | n/a | [`0x146e29...29ebed`](./contracts/arbitrum-42161/0x146e291d96bf1a6a9178e18ee9d81133b129ebed/) | ⚠️ Unaudited |
| Disperse | unknown | arbitrum | n/a | [`0x081e9e...7cd4fe`](./contracts/arbitrum-42161/0x081e9e52bba6575e0fd36c6db6dd3ae6de7cd4fe/) | ⚠️ Unaudited |
| DualBot | unknown | ethereum | n/a | [`0x0f2cea...2880f4`](./contracts/ethereum-1/0x0f2ceadda587491dd513a82cd0fecb896e2880f4/) | ⚠️ Unaudited |
| DummyFeed | unknown | ethereum | n/a | [`0xc3866d...88973d`](./contracts/ethereum-1/0xc3866d726c204c0836e0677a31973c649888973d/) | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | ethereum | n/a | [`0x00a773...9d7c29`](./contracts/ethereum-1/0x00a773bd2ce922f866bb43ab876009fb959d7c29/) | ⚠️ Unaudited |
| ERC20WrapperAdapter | unknown | ethereum | n/a | [`0xf83d17...87f962`](./contracts/ethereum-1/0xf83d17dfe160597b19e4fdd8ea61a23e9a87f962/) | ⚠️ Unaudited |
| ERC4626Feed | unknown | ethereum | n/a | [`0x6d3273...89891f`](./contracts/ethereum-1/0x6d32736220291d20e927b891aba976c6fc89891f/) | ⚠️ Unaudited |
| EthereumBundlerV2 | unknown | ethereum | n/a | [`0x4095f0...e30077`](./contracts/ethereum-1/0x4095f064b8d3c3548a3bebfd0bbfd04750e30077/) | ⚠️ Unaudited |
| EthereumGeneralAdapter1 | unknown | ethereum | n/a | [`0x4a6c31...be0ae0`](./contracts/ethereum-1/0x4a6c312ec70e8747a587ee860a0353cd42be0ae0/) | ⚠️ Unaudited |
| EventEmitter | unknown | arbitrum | n/a | [`0x6c3a43...a48329`](./contracts/arbitrum-42161/0x6c3a43eb0b374ca565f926d3e32e91e71ea48329/) | ⚠️ Unaudited |
| Executor | unknown | ethereum | n/a | [`0x72d227...5e6938`](./contracts/ethereum-1/0x72d2277c7242a4464d9b277cf682e350205e6938/) | ⚠️ Unaudited |
| FacetClose | unknown | arbitrum | n/a | [`0x0067eb...3d21ef`](./contracts/arbitrum-42161/0x0067eba29666801e93f925c09d52311c6a3d21ef/) | ⚠️ Unaudited |
| FacetManagement | unknown | arbitrum | n/a | [`0x2fd65f...2b1eff`](./contracts/arbitrum-42161/0x2fd65f6a2150b2648973645567e6c695052b1eff/) | ⚠️ Unaudited |
| FacetMux3Owner | unknown | arbitrum | n/a | [`0x52162c...ad5189`](./contracts/arbitrum-42161/0x52162c310565868e76d60b3e1fc69cc4c0ad5189/) | ⚠️ Unaudited |
| FacetOpen | unknown | arbitrum | n/a | [`0x4d5de4...4ab703`](./contracts/arbitrum-42161/0x4d5de4ca2413be62d73e68910c9d756aa04ab703/) | ⚠️ Unaudited |
| FacetPositionAccount | unknown | arbitrum | n/a | [`0x083131...b0d874`](./contracts/arbitrum-42161/0x0831319d1d4d717d0b21f78f61af90fb60b0d874/) | ⚠️ Unaudited |
| FacetReader | unknown | arbitrum | n/a | [`0x5b552e...37061f`](./contracts/arbitrum-42161/0x5b552e5b71396fbdb2b370f012825ddbee37061f/) | ⚠️ Unaudited |
| FacetTrade | unknown | arbitrum | n/a | [`0x2260b6...424534`](./contracts/arbitrum-42161/0x2260b6bd2649c5a6fd2a5f3a3655b0b2b6424534/) | ⚠️ Unaudited |
| FeedRegistry | unknown | ethereum | n/a | [`0x47fb25...ceeedf`](./contracts/ethereum-1/0x47fb2585d2c56fe188d0e6ec628a38b74fceeedf/) | ⚠️ Unaudited |
| Firefighter | unknown | ethereum | n/a | [`0x213f30...9ffb23`](./contracts/ethereum-1/0x213f30e50892dc90d8893618c656316b769ffb23/) | ⚠️ Unaudited |
| Flags | unknown | ethereum | n/a | [`0x24ec84...3bdabf`](./contracts/ethereum-1/0x24ec8467ab20e0b3c11a0a3fa39ccba9ec3bdabf/) | ⚠️ Unaudited |
| GainsReader | unknown | arbitrum | n/a | [`0x39dd1b...415d91`](./contracts/arbitrum-42161/0x39dd1bd008d2657e1b1c853f693fd4676f415d91/) | ⚠️ Unaudited |
| GMORPHO | unknown | base | n/a | [`0xda1c2c...5e0ccd`](./contracts/base-8453/0xda1c2c3c8fad503662e41e324fc644dc2c5e0ccd/) | ⚠️ Unaudited |
| GmxAdapter | unknown | arbitrum | n/a | [`0x16e600...864037`](./contracts/arbitrum-42161/0x16e6006629f9c3be4d4b54972dd10f07b5864037/) | ⚠️ Unaudited |
| GmxV2Adapter | unknown | arbitrum | n/a | [`0x1ce415...9c2031`](./contracts/arbitrum-42161/0x1ce415cd823652954b3f5b8841d1bdf2919c2031/) | ⚠️ Unaudited |
| JumpRateModel | unknown | ethereum | n/a | [`0x556202...7b57e7`](./contracts/ethereum-1/0x5562024784cc914069d67d89a28e3201bf7b57e7/) | ⚠️ Unaudited |
| JuniorBoostHelper | unknown | arbitrum | n/a | [`0x04b51b...6e424b`](./contracts/arbitrum-42161/0x04b51ba79e7d19e011ef1db86bd340908a6e424b/) | ⚠️ Unaudited |
| JuniorBoostHelperFactory | unknown | arbitrum | n/a | [`0x37c5da...9d5a80`](./contracts/arbitrum-42161/0x37c5da65017f35f172708f6cce3e850f279d5a80/) | ⚠️ Unaudited |
| KeeperRegistry | unknown | ethereum | n/a | [`0x4f7595...dd08c7`](./contracts/ethereum-1/0x4f75953c2661d3a0138fcd80551ea10b80dd08c7/) | ⚠️ Unaudited |
| LendingPool | unknown | arbitrum | n/a | [`0x124dce...09319e`](./contracts/arbitrum-42161/0x124dce3bfe55be7f9178c96cf6b5f928c409319e/) | ⚠️ Unaudited |
| LibGmx | unknown | arbitrum | n/a | [`0x11c0c4...603bd9`](./contracts/arbitrum-42161/0x11c0c4dd6ce692b2aa2d65da07aa38687f603bd9/) | ⚠️ Unaudited |
| LibGmxV2 | unknown | arbitrum | n/a | [`0xb45dcb...329287`](./contracts/arbitrum-42161/0xb45dcbd209862d8f607862e719935f5c23329287/) | ⚠️ Unaudited |
| LibLiquidity | unknown | arbitrum | n/a | [`0x2abad7...e2d206`](./contracts/arbitrum-42161/0x2abad74605eff3d0c49fd70cd230d974afe2d206/) | ⚠️ Unaudited |
| LibOrderBook | unknown | arbitrum | n/a | [`0x05ec03...2d262b`](./contracts/arbitrum-42161/0x05ec039f250b3df9088f60819bbef36eec2d262b/) | ⚠️ Unaudited |
| LibOrderBook2 | unknown | arbitrum | n/a | [`0x0035f6...296059`](./contracts/arbitrum-42161/0x0035f6ca0417cd36eb62764bcbbe163e7d296059/) | ⚠️ Unaudited |
| Liquidator | unknown | ethereum | n/a | [`0xc88058...79dd4d`](./contracts/ethereum-1/0xc88058aa7c210e23e6cc54baba7ba6c51479dd4d/) | ⚠️ Unaudited |
| LiquidityPoolHop1 | unknown | arbitrum | n/a | [`0x245ba1...8f481c`](./contracts/arbitrum-42161/0x245ba1e19e7a15dd903b6b9b2705d4bf308f481c/) | ⚠️ Unaudited |
| LiquidityPoolHop2 | unknown | arbitrum | n/a | [`0x32272d...d9b5bc`](./contracts/arbitrum-42161/0x32272d27e656446d64c880fa0d543b9c3dd9b5bc/) | ⚠️ Unaudited |
| MarketEventUtils | unknown | arbitrum | n/a | [`0x80c874...e7587b`](./contracts/arbitrum-42161/0x80c874e50017996106baf6d551ed9b0706e7587b/) | ⚠️ Unaudited |
| MarketStoreUtils | unknown | arbitrum | n/a | [`0x46ffa9...a5acec`](./contracts/arbitrum-42161/0x46ffa915d87bf915c2d01ac7d4c1c5338fa5acec/) | ⚠️ Unaudited |
| MarketUtils | unknown | arbitrum | n/a | [`0x2a2987...6b8d9f`](./contracts/arbitrum-42161/0x2a2987c407e76782fc422a27240c9821206b8d9f/) | ⚠️ Unaudited |
| Maximillion | unknown | ethereum | n/a | [`0xf859a1...174088`](./contracts/ethereum-1/0xf859a1ad94bcf445a406b892ef0d3082f4174088/) | ⚠️ Unaudited |
| MetaOracleDeviationTimelockFactory | unknown | ethereum | n/a | [`0x44d049...17a9f4`](./contracts/ethereum-1/0x44d049eed4ad33807859c45bbd3a8eb47917a9f4/) | ⚠️ Unaudited |
| Migration | unknown | arbitrum | n/a | [`0x28f16e...20a36c`](./contracts/arbitrum-42161/0x28f16eb86481066bf63bcbeb05c8474f7120a36c/) | ⚠️ Unaudited |
| MlpToken | unknown | arbitrum | n/a | [`0x085f5b...fe33ba`](./contracts/arbitrum-42161/0x085f5b8945426aa5e8239cd172070d0301fe33ba/) | ⚠️ Unaudited |
| MockMux3 | unknown | arbitrum | n/a | [`0x5857c7...e4bd34`](./contracts/arbitrum-42161/0x5857c758b3f40e99202a51710fc777ba78e4bd34/) | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | unknown | ethereum | n/a | [`0x95e85f...24bd87`](./contracts/ethereum-1/0x95e85fef34b79f0030f41fb619733bf7e024bd87/) | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | unknown | base | n/a | [`0x2dc205...aebd3d`](./contracts/base-8453/0x2dc205f24bcb6b311e5cdf0745b0741648aebd3d/) | ⚠️ Unaudited |
| MorphoHelper | unknown | ethereum | n/a | [`0x0dfcc0...3d9329`](./contracts/ethereum-1/0x0dfcc04aa52b758c7a3b7ee0217e3d8b8f3d9329/) | ⚠️ Unaudited |
| MorphoLiquidator | unknown | ethereum | n/a | [`0x526a27...554661`](./contracts/ethereum-1/0x526a27a974d8c8d4be6f34090d5025307d554661/) | ⚠️ Unaudited |
| MorphoMarketFactory | unknown | ethereum | n/a | [`0x68df94...93c61d`](./contracts/ethereum-1/0x68df94ff395729d537a9d2cdb72511cc7e93c61d/) | ⚠️ Unaudited |
| MorphoOFTAdapter | unknown | ethereum | n/a | [`0x50d3d6...5649d9`](./contracts/ethereum-1/0x50d3d6fd7518682155e3c1b65fdd50e1b35649d9/) | ⚠️ Unaudited |
| MorphoReader | unknown | ethereum | n/a | [`0x16fc80...8b8cb5`](./contracts/ethereum-1/0x16fc802c0d4b8076e69381e11308601b938b8cb5/) | ⚠️ Unaudited |
| MorphoToken | unknown | ethereum | n/a | [`0x9994e3...330999`](./contracts/ethereum-1/0x9994e35db50125e0df82e4c2dde62496ce330999/) | ⚠️ Unaudited |
| MorphoTokenEthereum | unknown | ethereum | n/a | [`0x4364fd...c24852`](./contracts/ethereum-1/0x4364fd2371b6318159366abfa51f190df5c24852/) | ⚠️ Unaudited |
| Mux | unknown | arbitrum | n/a | [`0x454c4e...c20d8a`](./contracts/arbitrum-42161/0x454c4ea9e1593805c7d40f34e6e3c8c39ec20d8a/) | ⚠️ Unaudited |
| Mux3 | unknown | arbitrum | n/a | [`0x2c367d...252cd3`](./contracts/arbitrum-42161/0x2c367d79d7c721a2c7a1e40bcf022b08ff252cd3/) | ⚠️ Unaudited |
| Mux3FeeDistributor | unknown | arbitrum | n/a | [`0x11a276...30bfd7`](./contracts/arbitrum-42161/0x11a276fad46490052ecba26b9736441e9130bfd7/) | ⚠️ Unaudited |
| Mux3OwnerFacet | unknown | arbitrum | n/a | [`0x1d9f0f...903f8a`](./contracts/arbitrum-42161/0x1d9f0f2e21692bf154d5ca32eafa77b2d1903f8a/) | ⚠️ Unaudited |
| Mux3POL | unknown | arbitrum | n/a | [`0x2ef6d4...5cf7a6`](./contracts/arbitrum-42161/0x2ef6d4b46c71f7ea0b8d0309f342100d3a5cf7a6/) | ⚠️ Unaudited |
| Mux3RateProviderFactory | unknown | arbitrum | n/a | [`0x162d7a...2d8cb8`](./contracts/arbitrum-42161/0x162d7a2791d619a842940ddaa20bf4e3f52d8cb8/) | ⚠️ Unaudited |
| MuxDistributor | unknown | arbitrum | n/a | [`0x1b3b6e...990f14`](./contracts/arbitrum-42161/0x1b3b6ea661e77059192e495400fda3ab92990f14/) | ⚠️ Unaudited |
| MuxLpOracle | unknown | arbitrum | n/a | [`0x03d05a...e06235`](./contracts/arbitrum-42161/0x03d05a176ce43ec164f7eb6d65a6685284e06235/) | ⚠️ Unaudited |
| MuxRewardTracker | unknown | arbitrum | n/a | [`0x0ff022...80adb4`](./contracts/arbitrum-42161/0x0ff022d8ac086f7836c3226291ecfa73d380adb4/) | ⚠️ Unaudited |
| MuxSender | unknown | arbitrum | n/a | [`0x1560ed...e8a36e`](./contracts/arbitrum-42161/0x1560ed0c53c924595a4cf57ba622fd0a79e8a36e/) | ⚠️ Unaudited |
| MuxTimelock | unknown | arbitrum | n/a | [`0x965a45...00d7c5`](./contracts/arbitrum-42161/0x965a4597258f0cbb57b513846e0d89109300d7c5/) | ⚠️ Unaudited |
| NativeUnwrapper | unknown | arbitrum | n/a | [`0x9de873...2aec33`](./contracts/arbitrum-42161/0x9de8733589921cf203e703d9e4330e83162aec33/) | ⚠️ Unaudited |
| NCStableCoinInterestRateModel | unknown | ethereum | n/a | [`0x645e75...231f4c`](./contracts/ethereum-1/0x645e758796408efdd65bbbd877e8ebceeb231f4c/) | ⚠️ Unaudited |
| NCStandardInterestRateModel | unknown | ethereum | n/a | [`0x18b5b6...5d14a7`](./contracts/ethereum-1/0x18b5b6696e6569f437f48b111734d72b225d14a7/) | ⚠️ Unaudited |
| Oracle | unknown | ethereum | n/a | [`0x0fc84a...546ebe`](./contracts/ethereum-1/0x0fc84ab084a08971e6f52a9da41bfae82b546ebe/) | ⚠️ Unaudited |
| OrderBook | unknown | arbitrum | n/a | [`0x066ac2...a31246`](./contracts/arbitrum-42161/0x066ac24c6b4c19a5e5726c73129efbf9c8a31246/) | ⚠️ Unaudited |
| OwnershipFacet | unknown | arbitrum | n/a | [`0x6c3859...bb8b2e`](./contracts/arbitrum-42161/0x6c38591445724c2c1c53a292ff9b663fdfbb8b2e/) | ⚠️ Unaudited |
| ParaswapAdapter | unknown | ethereum | n/a | [`0x03b525...c6c38f`](./contracts/ethereum-1/0x03b5259bd204bfd4a616e5b79b0b786d90c6c38f/) | ⚠️ Unaudited |
| POL | unknown | arbitrum | n/a | [`0x14d1e8...4d5cf3`](./contracts/arbitrum-42161/0x14d1e8ace06005f8abe4e0d526c93dca284d5cf3/) | ⚠️ Unaudited |
| PositionsManager | unknown | ethereum | n/a | [`0x4592e4...dac6de`](./contracts/ethereum-1/0x4592e45e0c5dbee94a135720ccff2e4353dac6de/) | ⚠️ Unaudited |
| PositionStoreUtils | unknown | arbitrum | n/a | [`0xe1645e...f94f8e`](./contracts/arbitrum-42161/0xe1645e6a4e166ce4811f9fd559b895a9c3f94f8e/) | ⚠️ Unaudited |
| PositionUtils | unknown | arbitrum | n/a | [`0x19b9ec...4f1d8b`](./contracts/arbitrum-42161/0x19b9ecd3fa2dc9272cd815ee05f300534b4f1d8b/) | ⚠️ Unaudited |
| PriceConsumer | unknown | ethereum | n/a | [`0x7f7d99...22f242`](./contracts/ethereum-1/0x7f7d995fc12752fe5df42134252e8b7a8922f242/) | ⚠️ Unaudited |
| PriceOracleProxy | unknown | ethereum | n/a | [`0x1653c0...e53ba1`](./contracts/ethereum-1/0x1653c07fa6ce103b43925dddb5e31ca568e53ba1/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | arbitrum | n/a | [`0x67740d...e58508`](./contracts/arbitrum-42161/0x67740dddea7a555c30af42536c786133c7e58508/) | ⚠️ Unaudited |
| ProxyFactory | unknown | arbitrum | n/a | [`0x052346...cd4fbf`](./contracts/arbitrum-42161/0x0523467daeed5df174e178fee3c1777784cd4fbf/) | ⚠️ Unaudited |
| Reader | unknown | arbitrum | n/a | [`0x5e250d...27701f`](./contracts/arbitrum-42161/0x5e250d7fd315a55b0c53281dfd03a9b91327701f/) | ⚠️ Unaudited |
| ReaderLite | unknown | arbitrum | n/a | [`0x436c9b...6af525`](./contracts/arbitrum-42161/0x436c9b6182e96b0526dd12f041730854756af525/) | ⚠️ Unaudited |
| ReaderPricingUtils | unknown | arbitrum | n/a | [`0xf61da3...ec6c2c`](./contracts/arbitrum-42161/0xf61da339230c4bb7cafa444bd7ffa4d5d5ec6c2c/) | ⚠️ Unaudited |
| ReceiveAssets | unknown | arbitrum | n/a | [`0x89aa49...3fba91`](./contracts/arbitrum-42161/0x89aa49caa1c7bdc0d6e7cc3f0540b1980f3fba91/) | ⚠️ Unaudited |
| ReferralManager | unknown | arbitrum | n/a | [`0x8020e9...d2f7dc`](./contracts/arbitrum-42161/0x8020e9b7900a2001d3329237773eeea401d2f7dc/) | ⚠️ Unaudited |
| Rescue | unknown | arbitrum | n/a | [`0x4857b4...495780`](./contracts/arbitrum-42161/0x4857b45b7a0038b4df7f51ac4687bf2fac495780/) | ⚠️ Unaudited |
| ReservoirLooper | unknown | ethereum | n/a | [`0x0f6b59...c87df4`](./contracts/ethereum-1/0x0f6b59f54087ace95cb1fdcb3d2af1aca7c87df4/) | ⚠️ Unaudited |
| RewardController | unknown | arbitrum | n/a | [`0x8b2e25...7cd1fc`](./contracts/arbitrum-42161/0x8b2e254bfbda1b722a78d14b2b7e08d3dd7cd1fc/) | ⚠️ Unaudited |
| RouterV1 | unknown | arbitrum | n/a | [`0xacf98f...1f43cf`](./contracts/arbitrum-42161/0xacf98f9564fb6903104644537624cdc3661f43cf/) | ⚠️ Unaudited |
| SavingsDai | unknown | ethereum | n/a | [`0x83f20f...42beea`](./contracts/ethereum-1/0x83f20f44975d03b1b09e64809b757c47f942beea/) | ⚠️ Unaudited |
| SimpleReadAccessController | unknown | ethereum | n/a | [`0x4a9d21...82700d`](./contracts/ethereum-1/0x4a9d21b46810f69a02ac2d61f4bf1963de82700d/) | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | ethereum | n/a | [`0x641b69...89dfe6`](./contracts/ethereum-1/0x641b698ad1c6e503470520b0eecb472c0589dfe6/) | ⚠️ Unaudited |
| SuperToken | unknown | arbitrum | n/a | [`0x010700...364ed3`](./contracts/arbitrum-42161/0x010700ab046dd8e92b0e3587842080df36364ed3/) | ⚠️ Unaudited |
| SusdcOracleL2 | unknown | arbitrum | n/a | [`0x179340...cfb9c5`](./contracts/arbitrum-42161/0x179340fb5eb9c82b7c76a9a8f5512271b7cfb9c5/) | ⚠️ Unaudited |
| SusdsOracleL2 | unknown | arbitrum | n/a | [`0x2f1831...1dfd50`](./contracts/arbitrum-42161/0x2f1831be0c1ab4aa888884827abf79f68e1dfd50/) | ⚠️ Unaudited |
| SwapperAngle | unknown | ethereum | n/a | [`0x4e8644...0d592e`](./contracts/ethereum-1/0x4e8644d7e0c185f07ab33535ca73a8d3880d592e/) | ⚠️ Unaudited |
| SwapperDaiUsds | unknown | ethereum | n/a | [`0x99ce8d...29c873`](./contracts/ethereum-1/0x99ce8de8737a1b05affd9539750c23255e29c873/) | ⚠️ Unaudited |
| SwapperERC4626 | unknown | ethereum | n/a | [`0x119388...080e26`](./contracts/ethereum-1/0x1193888325a82ff22603bd316ed7b5398c080e26/) | ⚠️ Unaudited |
| SwapperMakerPSM | unknown | ethereum | n/a | [`0x0076af...a41254`](./contracts/ethereum-1/0x0076af860630ea0337d4c932b986d68f32a41254/) | ⚠️ Unaudited |
| SwapperRusd | unknown | ethereum | n/a | [`0x242db4...9dacee`](./contracts/ethereum-1/0x242db4438ba1686050d679680478da876a9dacee/) | ⚠️ Unaudited |
| SwapperSimpleUniV3 | unknown | ethereum | n/a | [`0x45241b...33d54a`](./contracts/ethereum-1/0x45241b97afbe5b9883b8439615d9f7e28033d54a/) | ⚠️ Unaudited |
| SwapperWsteth | unknown | ethereum | n/a | [`0x8fa444...9dc868`](./contracts/ethereum-1/0x8fa4443df3989ed5c51a4e6f436f1f51129dc868/) | ⚠️ Unaudited |
| SwapPricingUtils | unknown | arbitrum | n/a | [`0x985c24...79b89c`](./contracts/arbitrum-42161/0x985c24816385c4cce9fa48ca484fa174a279b89c/) | ⚠️ Unaudited |
| TestReferralManager | unknown | arbitrum | n/a | [`0x192a9e...f68769`](./contracts/arbitrum-42161/0x192a9edfca3b565ae78ff506345342b78af68769/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x6d903f...c33925`](./contracts/ethereum-1/0x6d903f6003cca6255d85cca4d3b5e5146dc33925/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x36f8d0...44cab6`](./contracts/ethereum-1/0x36f8d0d0573ae92326827c4a82fe4ce4c244cab6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x507fa3...a91ff4`](./contracts/ethereum-1/0x507fa343d0a90786d86c7cd885f5c49263a91ff4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x01afd1...ddea58`](./contracts/arbitrum-42161/0x01afd1b17d3e42d3e0858aca8469e1d2e8ddea58/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x0241d1...8fe3f7`](./contracts/arbitrum-42161/0x0241d1b85fd3b184bfe881162eee163f7b8fe3f7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x02fae0...c2b23c`](./contracts/arbitrum-42161/0x02fae054acd7fb1615471319c4e3029dfbc2b23c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x097c06...efd1f1`](./contracts/arbitrum-42161/0x097c06a9a9568cdcd6d168a5a9fe02c81fefd1f1/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x0a9bbf...de8e5d`](./contracts/arbitrum-42161/0x0a9bbf8299fed2441009a7bb44874ee453de8e5d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x18b930...24695a`](./contracts/arbitrum-42161/0x18b930154300607538895dbe21359c8ae224695a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x198f15...98753f`](./contracts/arbitrum-42161/0x198f152d3f34cb49a926333cd935d864d398753f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x228302...6d605b`](./contracts/arbitrum-42161/0x2283026d4514bb14f09e644a4f5d457bd96d605b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x229df4...8589f5`](./contracts/arbitrum-42161/0x229df44fdbb4193c6c123bd9f2327163378589f5/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x381200...7961e2`](./contracts/arbitrum-42161/0x381200de35cd57810f5ab9a6273ead68917961e2/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x3efe46...5bf82b`](./contracts/arbitrum-42161/0x3efe4639eb082e22209fee29aabaf14ade5bf82b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x6256dc...592859`](./contracts/arbitrum-42161/0x6256dc556ee340952b8d8778f22608fd45592859/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x6fded1...4d2705`](./contracts/arbitrum-42161/0x6fded16b69ca396e437af47bdad1d0352e4d2705/) | ⚠️ Unaudited |
| UsycBot | unknown | ethereum | n/a | [`0x3e33c1...900c03`](./contracts/ethereum-1/0x3e33c1e80cf8fd074da6eb408f2059c2a9900c03/) | ⚠️ Unaudited |
| UsycLiquidator | unknown | ethereum | n/a | [`0x385826...4728ce`](./contracts/ethereum-1/0x3858266579f2913cbba5eaa6381cddfc684728ce/) | ⚠️ Unaudited |
| ValidatorProxy | unknown | ethereum | n/a | [`0x264bdd...d50236`](./contracts/ethereum-1/0x264bddfd9d93d48d759fbdb0670be1c6fdd50236/) | ⚠️ Unaudited |
| Vault | unknown | arbitrum | n/a | [`0x33261b...ceed62`](./contracts/arbitrum-42161/0x33261b56d71d8af545afcf255779149788ceed62/) | ⚠️ Unaudited |
| Vester | unknown | ethereum | n/a | [`0x21aef9...a16e60`](./contracts/ethereum-1/0x21aef9afc97301c9db61e45179dff1115ca16e60/) | ⚠️ Unaudited |
| VotingEscrow | unknown | arbitrum | n/a | [`0x22f9fc...1b7232`](./contracts/arbitrum-42161/0x22f9fc4a8fff13180472c01c77663828c71b7232/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0xe384f1...411a72`](./contracts/ethereum-1/0xe384f1db840ddfac78ddd25e5fdb89a9a2411a72/) | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | ethereum | n/a | [`0x8c159c...986069`](./contracts/ethereum-1/0x8c159cfd11677a4f2fe4fd0278dd37a95b986069/) | ⚠️ Unaudited |
| Wrapper | unknown | ethereum | n/a | [`0x9d03bb...0e5123`](./contracts/ethereum-1/0x9d03bb2092270648d7480049d0e58d2fcf0e5123/) | ⚠️ Unaudited |
| WstethBot | unknown | ethereum | n/a | [`0xf14dc5...ebd16b`](./contracts/ethereum-1/0xf14dc5bdfa8050a3ebf330092f71c54d3febd16b/) | ⚠️ Unaudited |
| WstEthStEthExchangeRateChainlinkAdapter | unknown | ethereum | n/a | [`0x905b7d...db1421`](./contracts/ethereum-1/0x905b7dabcd3ce6b792d874e303d336424cdb1421/) | ⚠️ Unaudited |

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
| [Cantina Contest](https://cantina.xyz/competitions/523e1540-f8c3-45ae-9c5d-b6d35d3a326c) | Spearbit | Contest | 2025-07 | aging | Direct | contract_name | 1 | high |
| [Cantina Contest](https://cantina.xyz/competitions/d86b7f95-e574-4092-8ea2-78dcac2f54f1) | Spearbit | Contest | 2023-12 | stale | Direct | contract_name | 1 | high |
| [Cantina Contest](https://cantina.xyz/competitions/8409a0ce-6c21-4cc9-8ef2-bd77ce7425af) | Spearbit | Contest | 2023-12 | stale | Direct | contract_name | 9 | high |
| [omniscia-report](https://omniscia.io/reports/morpho-specialized-token) | Omniscia | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Lexfo_250523.pdf](https://cdn.morpho.org/documents/Lexfo_250523.pdf) | Lexfo | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [MorphoDAO_Frontend_04042022.pdf](https://cdn.morpho.org/documents/MorphoDAO_Frontend_04042022.pdf) | Securing | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [2025-05-19-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-05-19-spearbit.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [2025-07-15-competition.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-07-15-competition.pdf) | Competition | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [2025-07-15-zellic.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-07-15-zellic.pdf) | Zellic | Audit | 2025-07 | aging | Direct | contract_name | 1 | high |
| [2025-08-11-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-08-11-spearbit.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [2025-09-15-blackthorn.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-blackthorn.pdf) | Blackthorn | Audit | 2025-09 | fresh | Direct | contract_name | 2 | high |
| [2025-09-15-chainsecurity.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-chainsecurity.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Direct | contract_name | 2 | high |
| [2025-09-15-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-spearbit.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [2025-12-04-market-v1-adapter-v2-blackthorn.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-12-04-market-v1-adapter-v2-blackthorn.pdf) | Blackthorn | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [2025-12-04-market-v1-adapter-v2-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-12-04-market-v1-adapter-v2-spearbit.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [2025-12-15-market-v1-adapter-v2-certora.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-12-15-market-v1-adapter-v2-certora.pdf) | Certora | Audit | 2025-12 | fresh | Direct | contract_name | 2 | high |
| [2025-09-11-spearbit.pdf](https://github.com/morpho-org/vault-v2-adapter-registries/blob/main/audits/2025-09-11-spearbit.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | 1 | high |
| [2025-12-04-market-v1-adapter-v2-certora.pdf](https://github.com/morpho-org/vault-v2-adapter-registries/blob/main/audits/2025-12-04-market-v1-adapter-v2-certora.pdf) | Certora | Audit | 2025-12 | fresh | Direct | contract_name | 2 | high |
| [2024-10-29-pre-liquidation-spearbit.pdf](https://github.com/morpho-org/pre-liquidation/blob/main/audits/2024-10-29-pre-liquidation-spearbit.pdf) | Spearbit | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [2024-11-01-pre-liquidation-ABDK-consulting.pdf](https://github.com/morpho-org/pre-liquidation/blob/main/audits/2024-11-01-pre-liquidation-ABDK-consulting.pdf) | ABDK | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [2023-11-14-metamorpho-cantina-managed-review.pdf (also discovered via alternate URL)](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2023-11-14-metamorpho-cantina-managed-review.pdf) | Spearbit | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [2023-11-16-morpho-blue-periphery-open-zeppelin.pdf (also discovered via alternate URL)](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2023-11-16-morpho-blue-periphery-open-zeppelin.pdf) | OpenZeppelin | Audit | 2023-11 | stale | Direct | contract_name | 9 | high |
| [2024-01-05-periphery-cantina-competition.pdf (also discovered via alternate URL)](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2024-01-05-periphery-cantina-competition.pdf) | Spearbit | Audit | 2024-01 | stale | Direct | contract_name | 5 | high |
| [2024-09-23-metamorpho-diff-cantina-managed-review.pdf](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2024-09-23-metamorpho-diff-cantina-managed-review.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [2025-01-10-metamorpho-v1.1-open-zeppelin.pdf](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2025-01-10-metamorpho-v1.1-open-zeppelin.pdf) | OpenZeppelin | Audit | 2025-01 | aging | Direct | contract_name | 2 | high |
| [2025-02-20-metamorpho-v1.1-cantina-managed.pdf](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2025-02-20-metamorpho-v1.1-cantina-managed.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [2024-03-11-morpho-public-allocator-cantina-managed.pdf](https://github.com/morpho-org/public-allocator/blob/main/audits/2024-03-11-morpho-public-allocator-cantina-managed.pdf) | Spearbit | Audit | 2024-03 | stale | Direct | contract_name | 1 | high |
| [2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf](https://github.com/morpho-org/morpho-blue/blob/main/audits/2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf) | OpenZeppelin | Audit | 2023-10 | stale | Direct | contract_name | 1 | high |
| [2023-11-13-morpho-blue-cantina-managed-review.pdf](https://github.com/morpho-org/morpho-blue/blob/main/audits/2023-11-13-morpho-blue-cantina-managed-review.pdf) | Spearbit | Audit | 2023-11 | stale | Direct | contract_name | 1 | medium |
| [2024-01-05-morpho-blue-cantina-competition.pdf](https://github.com/morpho-org/morpho-blue/blob/main/audits/2024-01-05-morpho-blue-cantina-competition.pdf) | Spearbit | Audit | 2024-01 | stale | Direct | contract_name | 2 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 181 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=14, medium=2
- Match method counts: extraction_exact=56

Zero-match audit list:

- [17654] omniscia-report
- [17655] Lexfo_250523.pdf
- [17656] MorphoDAO_Frontend_04042022.pdf
- [17657] 2025-05-19-spearbit.pdf
- [17658] 2025-07-15-competition.pdf
- [17660] 2025-08-11-spearbit.pdf
- [17663] 2025-09-15-spearbit.pdf
- [17664] 2025-12-04-market-v1-adapter-v2-blackthorn.pdf
- [17665] 2025-12-04-market-v1-adapter-v2-spearbit.pdf
- [17669] 2024-10-29-pre-liquidation-spearbit.pdf
- [17670] 2024-11-01-pre-liquidation-ABDK-consulting.pdf
- [17671] 2023-11-14-metamorpho-cantina-managed-review.pdf
- [17674] 2024-09-23-metamorpho-diff-cantina-managed-review.pdf
- [17676] 2025-02-20-metamorpho-v1.1-cantina-managed.pdf

Fork inheritance lineage and inherited audits are included when available.
