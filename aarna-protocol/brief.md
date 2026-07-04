# Agentic Audit Brief: Aarna Protocol

## Project Overview

- Project: Aarna Protocol (`aarna-protocol`)
- Website: [https://www.aarna.ai](https://www.aarna.ai)
- Lifecycle: unknown
- Generated: 2026-07-04T14:52:57.879Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, base, ethereum, sonic
- Contract surface: 66 unique implementations (66 raw deployments)
- DeFi Llama TVL: $501,712.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 66 project-authored contract(s) across 4 chain(s); 3 ERC4626 vaults, 10 ERC20 tokens, 3 Chainlink feeds; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 18 common project-authored base contract(s) (ownabledelaymodule, ownable2step, afivariablestorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 66; live-surface contracts included: 66 (66 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/62 (12.9%)
- Deployed-live implementations: 66 of 66 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/66
- Verified + Unaudited implementations: 58
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 66
- Raw deployments: 66
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 8 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 8 | 12.1% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AFiBase | unknown | ethereum | n/a | [`0x0b895a...4e4d02`](./contracts/ethereum-1/0x0b895a9b6b5d0aa48292695c5d244ec5f14e4d02/) | ✅ Audited |
| AFiFactory | unknown | ethereum | n/a | [`0x3a66dd...a7593c`](./contracts/ethereum-1/0x3a66dd5d1be2179fda40631708f334fc04a7593c/) | ✅ Audited |
| AFiManager | unknown | ethereum | n/a | [`0x0020e7...f373b6`](./contracts/ethereum-1/0x0020e7ebf874cd2b2e0378eba007cbc715f373b6/) | ✅ Audited |
| AFiOracle | unknown | ethereum | n/a | [`0x11747c...a55d5b`](./contracts/ethereum-1/0x11747c3284b5f8088e815e5cf2e5c3062da55d5b/) | ✅ Audited |
| AFiPassiveRebalanceStrategies | unknown | ethereum | n/a | [`0x226b02...36bc49`](./contracts/ethereum-1/0x226b02e6ca55bb634cbb1412a644f4d97036bc49/) | ✅ Audited |
| AFiStorage | unknown | ethereum | n/a | [`0x24ba60...1eb741`](./contracts/ethereum-1/0x24ba60e3c99c0bacb4e237e862542e65491eb741/) | ✅ Audited |
| AFiTimeLock | unknown | ethereum | n/a | [`0x1a7a69...fa184c`](./contracts/ethereum-1/0x1a7a692c923c1ec403eff0b17fc950ec59fa184c/) | ✅ Audited |
| TimeDelayModule | unknown | sonic | n/a | [`0x0faac2...84a70e`](./contracts/sonic-146/0x0faac27e4a9c1bbd02bb959330551f2d4484a70e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (58)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Address | unknown | base | n/a | [`0xebe8b1...7af297`](./contracts/base-8453/0xebe8b1f4701267bab8993fb5f804f842fb7af297/) | ⚠️ Unaudited |
| AFiASRT | unknown | ethereum | n/a | [`0x1b14fe...2b4617`](./contracts/ethereum-1/0x1b14fe61a5c215138855246bd011a0d80d2b4617/) | ⚠️ Unaudited |
| AFiBoosterTL | unknown | ethereum | n/a | [`0x1504e9...7bc9ac`](./contracts/ethereum-1/0x1504e94b4c2c8a6e8c7c84aa9323f3fea37bc9ac/) | ⚠️ Unaudited |
| AFiManagerV2_1 | unknown | ethereum | n/a | [`0x8b21a8...16d1a6`](./contracts/ethereum-1/0x8b21a81c58c20ebc0757c71870c61485ea16d1a6/) | ⚠️ Unaudited |
| AFiOracleV2_1 | unknown | ethereum | n/a | [`0x005aed...90a2b8`](./contracts/ethereum-1/0x005aed2732db6230914ca49fb935d7f9f690a2b8/) | ⚠️ Unaudited |
| AFiPassiveRebalanceStrategiesV2_1 | unknown | ethereum | n/a | [`0x11dd82...06112d`](./contracts/ethereum-1/0x11dd82ceadf6874bd8f2916c26a65f13c806112d/) | ⚠️ Unaudited |
| AFiStorageV2_1 | unknown | ethereum | n/a | [`0x7f91aa...6d7465`](./contracts/ethereum-1/0x7f91aaca4b90643374dc5050585d00f2806d7465/) | ⚠️ Unaudited |
| APRRecommendation | unknown | ethereum | n/a | [`0x206710...2007ee`](./contracts/ethereum-1/0x206710c3db14593458eb9fb318dba53e582007ee/) | ⚠️ Unaudited |
| ArbitrumBridgeReceiver | unknown | arbitrum | n/a | [`0x42480c...d38068`](./contracts/arbitrum-42161/0x42480c37b249e33aabaf4c22b20235656bd38068/) | ⚠️ Unaudited |
| ATokenInstance | unknown | arbitrum | n/a | [`0x625e77...0eb4cd`](./contracts/arbitrum-42161/0x625e7708f30ca75bfd92586e17077590c60eb4cd/) | ⚠️ Unaudited |
| AtvAdapter | unknown | base | n/a | [`0x057a2a...dc9efc`](./contracts/base-8453/0x057a2a173468630c9f150996256821c131dc9efc/) | ⚠️ Unaudited |
| AtvASRT | unknown | ethereum | n/a | [`0x1ef690...722a91`](./contracts/ethereum-1/0x1ef6900f89476b20b0645ae4f510164c37722a91/) | ⚠️ Unaudited |
| AtvBase | unknown | sonic | n/a | [`0x0955b9...b68dc4`](./contracts/sonic-146/0x0955b91424208c699d85cda85644736143b68dc4/) | ⚠️ Unaudited |
| AtvBoosterTL | unknown | ethereum | n/a | [`0x283775...d9ae88`](./contracts/ethereum-1/0x283775555757e74077d101a7cc76b6e86dd9ae88/) | ⚠️ Unaudited |
| AtvDexAdapter | unknown | sonic | n/a | [`0x3e4029...d6ecf8`](./contracts/sonic-146/0x3e4029472c4618c777b80715f7975c6c85d6ecf8/) | ⚠️ Unaudited |
| AtvFactory | unknown | base | n/a | [`0x053136...72bad4`](./contracts/base-8453/0x053136b9a3826e72e6b8b692fd607ea8cd72bad4/) | ⚠️ Unaudited |
| AtvLeverageBundler | unknown | base | n/a | [`0x0b6291...e784d2`](./contracts/base-8453/0x0b6291d7df80ef789772aaff633c807538e784d2/) | ⚠️ Unaudited |
| AtvManager | unknown | arbitrum | n/a | [`0x0bc6b9...e34b8e`](./contracts/arbitrum-42161/0x0bc6b965b42d9429d3717d5cc35f9d9aace34b8e/) | ⚠️ Unaudited |
| AtvMorphoBlueIntegration | unknown | base | n/a | [`0x3c29ef...3db9d8`](./contracts/base-8453/0x3c29eff521e6f8f8488eb9dfe7c81386d83db9d8/) | ⚠️ Unaudited |
| AtvOracle | unknown | base | n/a | [`0x0faac2...84a70e`](./contracts/base-8453/0x0faac27e4a9c1bbd02bb959330551f2d4484a70e/) | ⚠️ Unaudited |
| AtvPassiveRebalanceStrategies | unknown | base | n/a | [`0x043e92...662a4d`](./contracts/base-8453/0x043e92d4672836d9fb481864325b7a7555662a4d/) | ⚠️ Unaudited |
| AtvStorage | unknown | base | n/a | [`0x07ef18...d11d39`](./contracts/base-8453/0x07ef18636a0e23b43f68264660940740e6d11d39/) | ⚠️ Unaudited |
| AtvWrappedBoosterTL | unknown | base | n/a | [`0x04dd44...ba27c6`](./contracts/base-8453/0x04dd4466f633c5440bd1a2b1106963c442ba27c6/) | ⚠️ Unaudited |
| BaseBulker | unknown | arbitrum | n/a | [`0xbde8f3...7b372d`](./contracts/arbitrum-42161/0xbde8f31d2ddda895264e27dd990fab3dc87b372d/) | ⚠️ Unaudited |
| BaseVault | unknown | ethereum | n/a | [`0x332e81...e5f110`](./contracts/ethereum-1/0x332e81368daec705612ff06b3a80b10ae1e5f110/) | ⚠️ Unaudited |
| Bulker | unknown | ethereum | n/a | [`0x74a81f...8d80c3`](./contracts/ethereum-1/0x74a81f84268744a40febc48f8b812a1f188d80c3/) | ⚠️ Unaudited |
| CErc20 | unknown | ethereum | n/a | [`0x158079...ac95c1`](./contracts/ethereum-1/0x158079ee67fce2f58472a96584a73c7ab9ac95c1/) | ⚠️ Unaudited |
| CErc20Delegator | unknown | ethereum | n/a | [`0x5d3a53...8e3643`](./contracts/ethereum-1/0x5d3a536e4d6dbd6114cc1ead35777bab948e3643/) | ⚠️ Unaudited |
| CEther | unknown | ethereum | n/a | [`0x4ddc2d...270ed5`](./contracts/ethereum-1/0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5/) | ⚠️ Unaudited |
| Comet | unknown | arbitrum | n/a | [`0x14d2c9...5239c6`](./contracts/arbitrum-42161/0x14d2c9dd16304e8a95fc8395a37f17b6c15239c6/) | ⚠️ Unaudited |
| CometExt | unknown | arbitrum | n/a | [`0x1b2e88...8437e9`](./contracts/arbitrum-42161/0x1b2e88cc7365d90e7e81392432482925bd8437e9/) | ⚠️ Unaudited |
| CometFactory | unknown | ethereum | n/a | [`0x1c1853...db1ae7`](./contracts/ethereum-1/0x1c1853bc7c6bff0d276da53972c0b1a066db1ae7/) | ⚠️ Unaudited |
| CometProxyAdmin | unknown | ethereum | n/a | [`0x1ec63b...2e8779`](./contracts/ethereum-1/0x1ec63b5883c3481134fd50d5daebc83ecd2e8779/) | ⚠️ Unaudited |
| CometRewards | unknown | ethereum | n/a | [`0x1b0e76...885a40`](./contracts/ethereum-1/0x1b0e765f6224c21223aea2af16c1c46e38885a40/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | [`0x178053...63df29`](./contracts/ethereum-1/0x178053c06006e67e09879c09ff012ff9d263df29/) | ⚠️ Unaudited |
| ConfiguratorProxy | unknown | ethereum | n/a | [`0x316f97...d336e3`](./contracts/ethereum-1/0x316f9708bb98af7da9c68c1c3b5e79039cd336e3/) | ⚠️ Unaudited |
| ConfiguratorProxy | unknown | arbitrum | n/a | [`0xb21b06...ad3775`](./contracts/arbitrum-42161/0xb21b06d71c75973babde35b49ffdac3f82ad3775/) | ⚠️ Unaudited |
| ConstantPriceFeed | unknown | ethereum | n/a | [`0xd72ac1...4ce0ab`](./contracts/ethereum-1/0xd72ac1bce9177cfe7aeb5d0516a38c88a64ce0ab/) | ⚠️ Unaudited |
| DataConsumerWithSequencerCheck | unknown | arbitrum | n/a | [`0x322216...d1b4fc`](./contracts/arbitrum-42161/0x32221633bf43e85ecf330fb6342b7098d4d1b4fc/) | ⚠️ Unaudited |
| JumpRateModel | unknown | ethereum | n/a | [`0x556202...7b57e7`](./contracts/ethereum-1/0x5562024784cc914069d67d89a28e3201bf7b57e7/) | ⚠️ Unaudited |
| Liquidator | unknown | ethereum | n/a | [`0xb61c66...a81fa3`](./contracts/ethereum-1/0xb61c66a4d83da8e04f40ca844c0c4b508ca81fa3/) | ⚠️ Unaudited |
| MainnetBulker | unknown | ethereum | n/a | [`0xa397a8...4b00c7`](./contracts/ethereum-1/0xa397a8c2086c554b531c02e29f3291c9704b00c7/) | ⚠️ Unaudited |
| Maximillion | unknown | ethereum | n/a | [`0xf859a1...174088`](./contracts/ethereum-1/0xf859a1ad94bcf445a406b892ef0d3082f4174088/) | ⚠️ Unaudited |
| NCStableCoinInterestRateModel | unknown | ethereum | n/a | [`0x645e75...231f4c`](./contracts/ethereum-1/0x645e758796408efdd65bbbd877e8ebceeb231f4c/) | ⚠️ Unaudited |
| NCStandardInterestRateModel | unknown | ethereum | n/a | [`0x18b5b6...5d14a7`](./contracts/ethereum-1/0x18b5b6696e6569f437f48b111734d72b225d14a7/) | ⚠️ Unaudited |
| PendleAdapter | unknown | ethereum | n/a | [`0x45afba...1a2dff`](./contracts/ethereum-1/0x45afbac8be713d5f7cb42a7b1e6d034a681a2dff/) | ⚠️ Unaudited |
| PendleMarketV3 | unknown | sonic | n/a | [`0x3f5ea5...182418`](./contracts/sonic-146/0x3f5ea53d1160177445b1898afbb16da111182418/) | ⚠️ Unaudited |
| PriceOracleProxy | unknown | ethereum | n/a | [`0x1653c0...e53ba1`](./contracts/ethereum-1/0x1653c07fa6ce103b43925dddb5e31ca568e53ba1/) | ⚠️ Unaudited |
| SafeProxy | unknown | ethereum | n/a | [`0xc2b275...d9f49b`](./contracts/ethereum-1/0xc2b275d096403e2e4160b8af440ba47f89d9f49b/) | ⚠️ Unaudited |
| ScalingPriceFeed | unknown | ethereum | n/a | [`0x23a982...bb5549`](./contracts/ethereum-1/0x23a982b74a3236a5f2297856d4391b2edbbb5549/) | ⚠️ Unaudited |
| StakingManager | unknown | base | n/a | [`0x1ed5f1...e4efdf`](./contracts/base-8453/0x1ed5f11f8627fb369c2ddfc3722cb55de3e4efdf/) | ⚠️ Unaudited |
| SYAtvAdapter | unknown | ethereum | n/a | [`0xa394a0...f6d3a7`](./contracts/ethereum-1/0xa394a082273998bdaeea3f1ee6435008d6f6d3a7/) | ⚠️ Unaudited |
| Timelock | unknown | arbitrum | n/a | [`0x3fb4d3...8cf88a`](./contracts/arbitrum-42161/0x3fb4d38ea7ec20d91917c09591490eeda38cf88a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x9c4ec7...ff58bf`](./contracts/arbitrum-42161/0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0xa5edbd...905dca`](./contracts/arbitrum-42161/0xa5edbdd9646f8dff606d7448e414884c7d905dca/) | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | ethereum | n/a | [`0x8c159c...986069`](./contracts/ethereum-1/0x8c159cfd11677a4f2fe4fd0278dd37a95b986069/) | ⚠️ Unaudited |
| WrappedBoosterTL | unknown | ethereum | n/a | [`0x401cf9...89b8bc`](./contracts/ethereum-1/0x401cf9c74f83f53f0a8a804b49d3aeeee289b8bc/) | ⚠️ Unaudited |
| WstETHPriceFeed | unknown | ethereum | n/a | [`0x4f67e4...f48e79`](./contracts/ethereum-1/0x4f67e4d9bd67efa28236013288737d39aef48e79/) | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/aarna-protocol) | CertiK | Audit | 2025-07 | aging | Direct | contract_name | 8 | high |
| [FailSafe >](https://drive.google.com/drive/folders/14_ulqN1J3Sd61QMrwYEbeafjxK8Nf5Uq?usp=sharing) | Failsafe | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review.](https://drive.google.com/file/d/16EK-59YoFuBfGL4zRR7YBbL9ko35Au7U/view) | Failsafe | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xebe8b1...7af297`](./contracts/base-8453/0xebe8b1f4701267bab8993fb5f804f842fb7af297/) | Address | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b14fe...2b4617`](./contracts/ethereum-1/0x1b14fe61a5c215138855246bd011a0d80d2b4617/) | AFiASRT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1504e9...7bc9ac`](./contracts/ethereum-1/0x1504e94b4c2c8a6e8c7c84aa9323f3fea37bc9ac/) | AFiBoosterTL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b21a8...16d1a6`](./contracts/ethereum-1/0x8b21a81c58c20ebc0757c71870c61485ea16d1a6/) | AFiManagerV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x005aed...90a2b8`](./contracts/ethereum-1/0x005aed2732db6230914ca49fb935d7f9f690a2b8/) | AFiOracleV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11dd82...06112d`](./contracts/ethereum-1/0x11dd82ceadf6874bd8f2916c26a65f13c806112d/) | AFiPassiveRebalanceStrategiesV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f91aa...6d7465`](./contracts/ethereum-1/0x7f91aaca4b90643374dc5050585d00f2806d7465/) | AFiStorageV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x206710...2007ee`](./contracts/ethereum-1/0x206710c3db14593458eb9fb318dba53e582007ee/) | APRRecommendation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x42480c...d38068`](./contracts/arbitrum-42161/0x42480c37b249e33aabaf4c22b20235656bd38068/) | ArbitrumBridgeReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x625e77...0eb4cd`](./contracts/arbitrum-42161/0x625e7708f30ca75bfd92586e17077590c60eb4cd/) | ATokenInstance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x057a2a...dc9efc`](./contracts/base-8453/0x057a2a173468630c9f150996256821c131dc9efc/) | AtvAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ef690...722a91`](./contracts/ethereum-1/0x1ef6900f89476b20b0645ae4f510164c37722a91/) | AtvASRT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0955b9...b68dc4`](./contracts/sonic-146/0x0955b91424208c699d85cda85644736143b68dc4/) | AtvBase | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x283775...d9ae88`](./contracts/ethereum-1/0x283775555757e74077d101a7cc76b6e86dd9ae88/) | AtvBoosterTL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3e4029...d6ecf8`](./contracts/sonic-146/0x3e4029472c4618c777b80715f7975c6c85d6ecf8/) | AtvDexAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x053136...72bad4`](./contracts/base-8453/0x053136b9a3826e72e6b8b692fd607ea8cd72bad4/) | AtvFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0b6291...e784d2`](./contracts/base-8453/0x0b6291d7df80ef789772aaff633c807538e784d2/) | AtvLeverageBundler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0bc6b9...e34b8e`](./contracts/arbitrum-42161/0x0bc6b965b42d9429d3717d5cc35f9d9aace34b8e/) | AtvManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3c29ef...3db9d8`](./contracts/base-8453/0x3c29eff521e6f8f8488eb9dfe7c81386d83db9d8/) | AtvMorphoBlueIntegration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0faac2...84a70e`](./contracts/base-8453/0x0faac27e4a9c1bbd02bb959330551f2d4484a70e/) | AtvOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x043e92...662a4d`](./contracts/base-8453/0x043e92d4672836d9fb481864325b7a7555662a4d/) | AtvPassiveRebalanceStrategies | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x07ef18...d11d39`](./contracts/base-8453/0x07ef18636a0e23b43f68264660940740e6d11d39/) | AtvStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x04dd44...ba27c6`](./contracts/base-8453/0x04dd4466f633c5440bd1a2b1106963c442ba27c6/) | AtvWrappedBoosterTL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbde8f3...7b372d`](./contracts/arbitrum-42161/0xbde8f31d2ddda895264e27dd990fab3dc87b372d/) | BaseBulker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x332e81...e5f110`](./contracts/ethereum-1/0x332e81368daec705612ff06b3a80b10ae1e5f110/) | BaseVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x74a81f...8d80c3`](./contracts/ethereum-1/0x74a81f84268744a40febc48f8b812a1f188d80c3/) | Bulker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x158079...ac95c1`](./contracts/ethereum-1/0x158079ee67fce2f58472a96584a73c7ab9ac95c1/) | CErc20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d3a53...8e3643`](./contracts/ethereum-1/0x5d3a536e4d6dbd6114cc1ead35777bab948e3643/) | CErc20Delegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ddc2d...270ed5`](./contracts/ethereum-1/0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5/) | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x14d2c9...5239c6`](./contracts/arbitrum-42161/0x14d2c9dd16304e8a95fc8395a37f17b6c15239c6/) | Comet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1b2e88...8437e9`](./contracts/arbitrum-42161/0x1b2e88cc7365d90e7e81392432482925bd8437e9/) | CometExt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c1853...db1ae7`](./contracts/ethereum-1/0x1c1853bc7c6bff0d276da53972c0b1a066db1ae7/) | CometFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ec63b...2e8779`](./contracts/ethereum-1/0x1ec63b5883c3481134fd50d5daebc83ecd2e8779/) | CometProxyAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b0e76...885a40`](./contracts/ethereum-1/0x1b0e765f6224c21223aea2af16c1c46e38885a40/) | CometRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x178053...63df29`](./contracts/ethereum-1/0x178053c06006e67e09879c09ff012ff9d263df29/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x316f97...d336e3`](./contracts/ethereum-1/0x316f9708bb98af7da9c68c1c3b5e79039cd336e3/) | ConfiguratorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb21b06...ad3775`](./contracts/arbitrum-42161/0xb21b06d71c75973babde35b49ffdac3f82ad3775/) | ConfiguratorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd72ac1...4ce0ab`](./contracts/ethereum-1/0xd72ac1bce9177cfe7aeb5d0516a38c88a64ce0ab/) | ConstantPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x322216...d1b4fc`](./contracts/arbitrum-42161/0x32221633bf43e85ecf330fb6342b7098d4d1b4fc/) | DataConsumerWithSequencerCheck | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x556202...7b57e7`](./contracts/ethereum-1/0x5562024784cc914069d67d89a28e3201bf7b57e7/) | JumpRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb61c66...a81fa3`](./contracts/ethereum-1/0xb61c66a4d83da8e04f40ca844c0c4b508ca81fa3/) | Liquidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa397a8...4b00c7`](./contracts/ethereum-1/0xa397a8c2086c554b531c02e29f3291c9704b00c7/) | MainnetBulker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf859a1...174088`](./contracts/ethereum-1/0xf859a1ad94bcf445a406b892ef0d3082f4174088/) | Maximillion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x645e75...231f4c`](./contracts/ethereum-1/0x645e758796408efdd65bbbd877e8ebceeb231f4c/) | NCStableCoinInterestRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18b5b6...5d14a7`](./contracts/ethereum-1/0x18b5b6696e6569f437f48b111734d72b225d14a7/) | NCStandardInterestRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45afba...1a2dff`](./contracts/ethereum-1/0x45afbac8be713d5f7cb42a7b1e6d034a681a2dff/) | PendleAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1653c0...e53ba1`](./contracts/ethereum-1/0x1653c07fa6ce103b43925dddb5e31ca568e53ba1/) | PriceOracleProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23a982...bb5549`](./contracts/ethereum-1/0x23a982b74a3236a5f2297856d4391b2edbbb5549/) | ScalingPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1ed5f1...e4efdf`](./contracts/base-8453/0x1ed5f11f8627fb369c2ddfc3722cb55de3e4efdf/) | StakingManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa394a0...f6d3a7`](./contracts/ethereum-1/0xa394a082273998bdaeea3f1ee6435008d6f6d3a7/) | SYAtvAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3fb4d3...8cf88a`](./contracts/arbitrum-42161/0x3fb4d38ea7ec20d91917c09591490eeda38cf88a/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c159c...986069`](./contracts/ethereum-1/0x8c159cfd11677a4f2fe4fd0278dd37a95b986069/) | WhitePaperInterestRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x401cf9...89b8bc`](./contracts/ethereum-1/0x401cf9c74f83f53f0a8a804b49d3aeeee289b8bc/) | WrappedBoosterTL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f67e4...f48e79`](./contracts/ethereum-1/0x4f67e4d9bd67efa28236013288737d39aef48e79/) | WstETHPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 62 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=8

Zero-match audit list:

- [16710] FailSafe >
- [16711] The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review.

Fork inheritance lineage and inherited audits are included when available.
