# Agentic Audit Brief: Origami Finance

## Project Overview

- Project: Origami Finance (`origami-finance`)
- Website: [https://origami.finance](https://origami.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:39.167Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, berachain, ethereum
- Contract surface: 70 unique implementations (70 raw deployments)
- DeFi Llama TVL: $183,832,403.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Leveraged Farming. Structurally: 69 project-authored contract(s) across 3 chain(s); 7 ERC4626 vaults, 15 ERC20 tokens, 5 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 22 common project-authored base contract(s) (origamielevatedaccess, origamielevatedaccessbase, origamimanagerpausable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 70; live-surface contracts included: 70 (70 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 46/68 (67.6%)
- Deployed-live implementations: 70 of 70 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 46/70
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 70
- Raw deployments: 70
- Audits discovered: 27 (27 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 21
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 5 fresh, 17 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 46 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Panprog | Tier 2 | 34 | 48.6% | 2025-12 |
| Nethermind | Tier 2 | 22 | 31.4% | 2025-12 |
| Jacopod | Tier 2 | 15 | 21.4% | 2026-02 |
| Zellic | Tier 2 | 13 | 18.6% | 2024-01 |
| Electisec | Tier 2 | 7 | 10.0% | 2025-07 |
| SBSecurity | Tier 2 | 6 | 8.6% | 2024-10 |
| Halborn | Tier 2 | 5 | 7.1% | 2024-12 |
| yAcademy | Tier 2 | 4 | 5.7% | 2023-02 |
| Pyro | Tier 2 | 3 | 4.3% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (46)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OpalAdapterEuler | unknown | ethereum | n/a | [`0xe8584c96dd161f4a24084668c0f333dfb093d02e`](./contracts/ethereum-1/0xe8584c96dd161f4a24084668c0f333dfb093d02e/) | ✅ Audited |
| OpalAdapterFactory | unknown | ethereum | n/a | [`0x1cecff54fe6042b05d6959cb20bb7241d802c98d`](./contracts/ethereum-1/0x1cecff54fe6042b05d6959cb20bb7241d802c98d/) | ✅ Audited |
| OpalAdapterSpotAssets | unknown | ethereum | n/a | [`0x964dd67d903f3927cce5a0ae2f6ebf71ce0dc8e4`](./contracts/ethereum-1/0x964dd67d903f3927cce5a0ae2f6ebf71ce0dc8e4/) | ✅ Audited |
| OpalManager | unknown | ethereum | n/a | [`0x7daf45b580c456c5b4d7366ebd6aab4f0876aa15`](./contracts/ethereum-1/0x7daf45b580c456c5b4d7366ebd6aab4f0876aa15/) | ✅ Audited |
| OpalVault | unknown | ethereum | n/a | [`0x1b3f4ed11cb5f4c3f08c91c5593cbbcd63fa8b23`](./contracts/ethereum-1/0x1b3f4ed11cb5f4c3f08c91c5593cbbcd63fa8b23/) | ✅ Audited |
| OrigamiAutoStakingFactory | unknown | berachain | n/a | [`0xc3d19ac9b79a8d89272a7ef88ddc1786fe36d747`](./contracts/berachain-80094/0xc3d19ac9b79a8d89272a7ef88ddc1786fe36d747/) | ✅ Audited |
| OrigamiAutoStakingToErc4626 | unknown | berachain | n/a | [`0x1a0730d90a253ded0177e5a1dbcfd169c5e3f67f`](./contracts/berachain-80094/0x1a0730d90a253ded0177e5a1dbcfd169c5e3f67f/) | ✅ Audited |
| OrigamiAutoStakingToErc4626Deployer | unknown | berachain | n/a | [`0x5a1e918371e5ec307aa93dda67d500b0e49a2423`](./contracts/berachain-80094/0x5a1e918371e5ec307aa93dda67d500b0e49a2423/) | ✅ Audited |
| OrigamiBorrowLendMigrator | unknown | ethereum | n/a | [`0x381d5bdbfb9cdf5d04a29ec6d035fdadbb98b978`](./contracts/ethereum-1/0x381d5bdbfb9cdf5d04a29ec6d035fdadbb98b978/) | ✅ Audited |
| OrigamiBoycoUsdcManager | unknown | berachain | n/a | [`0xcb6d80ac3209626d5bc6cb9291ef6c4c321c82ba`](./contracts/berachain-80094/0xcb6d80ac3209626d5bc6cb9291ef6c4c321c82ba/) | ✅ Audited |
| OrigamiBoycoVault | unknown | berachain | n/a | [`0x0b53afe5de9f9df65c3fe8a9da81dc410d14d4d4`](./contracts/berachain-80094/0x0b53afe5de9f9df65c3fe8a9da81dc410d14d4d4/) | ✅ Audited |
| OrigamiBundler | unknown | ethereum | n/a | [`0x346497a2471d39382cc9fda16ee94bec8d3ccb33`](./contracts/ethereum-1/0x346497a2471d39382cc9fda16ee94bec8d3ccb33/) | ✅ Audited |
| OrigamiBundlerPluginEntryPoint | unknown | ethereum | n/a | [`0x652400eef027e4c8ccae4425b2949ae7773ca1ea`](./contracts/ethereum-1/0x652400eef027e4c8ccae4425b2949ae7773ca1ea/) | ✅ Audited |
| OrigamiBundlerPluginKyberSwap | unknown | ethereum | n/a | [`0x759238fb254950d7743f5dab44714c74634e3edd`](./contracts/ethereum-1/0x759238fb254950d7743f5dab44714c74634e3edd/) | ✅ Audited |
| OrigamiBundlerPluginOhmStaking | unknown | ethereum | n/a | [`0x7b6fe436e0117346b4b014ff4f960e5158a27470`](./contracts/ethereum-1/0x7b6fe436e0117346b4b014ff4f960e5158a27470/) | ✅ Audited |
| OrigamiBundlerPluginTbsV1 | unknown | ethereum | n/a | [`0xa8ac5953e2b22f8bd4c88219179aee9386d3dd2c`](./contracts/ethereum-1/0xa8ac5953e2b22f8bd4c88219179aee9386d3dd2c/) | ✅ Audited |
| OrigamiBundlerPluginTbsV2 | unknown | ethereum | n/a | [`0xb4c97ebbae7a61b8647fde086b01c3bc1605c15d`](./contracts/ethereum-1/0xb4c97ebbae7a61b8647fde086b01c3bc1605c15d/) | ✅ Audited |
| OrigamiCoolerMigrator | unknown | ethereum | n/a | [`0x6b3441b121cadba4af1e92e9dd9ed3c0aa415e26`](./contracts/ethereum-1/0x6b3441b121cadba4af1e92e9dd9ed3c0aa415e26/) | ✅ Audited |
| OrigamiCowSwapper | unknown | ethereum | n/a | [`0x07b7346b763286b1a975619e13e024eeaffe178f`](./contracts/ethereum-1/0x07b7346b763286b1a975619e13e024eeaffe178f/) | ✅ Audited |
| OrigamiCrossRateOracle | unknown | ethereum | n/a | [`0x075766cb4efcff684feca227c80546f30b8de783`](./contracts/ethereum-1/0x075766cb4efcff684feca227c80546f30b8de783/) | ✅ Audited |
| OrigamiDelegated4626Vault | unknown | ethereum | n/a | [`0x07c5500359161b81eb0dfff83097d5025d3cf5a2`](./contracts/ethereum-1/0x07c5500359161b81eb0dfff83097d5025d3cf5a2/) | ✅ Audited |
| OrigamiDexAggregatorSwapper | unknown | ethereum | n/a | [`0x5bf1030503107db67c3047a4f05439bcfbb40234`](./contracts/ethereum-1/0x5bf1030503107db67c3047a4f05439bcfbb40234/) | ✅ Audited |
| OrigamiErc4626AndDexAggregatorSwapper | unknown | ethereum | n/a | [`0x302563254a72b59d71dd5bc209e1e91b7a84e262`](./contracts/ethereum-1/0x302563254a72b59d71dd5bc209e1e91b7a84e262/) | ✅ Audited |
| OrigamiErc4626WithRewardsManager | unknown | ethereum | n/a | [`0xe9224f1d852001ba32befdf665543280185eb08c`](./contracts/ethereum-1/0xe9224f1d852001ba32befdf665543280185eb08c/) | ✅ Audited |
| OrigamiEtherFiEthToEthOracle | unknown | ethereum | n/a | [`0xe0db69920e90ca56e29f71b7f566655de923c32b`](./contracts/ethereum-1/0xe0db69920e90ca56e29f71b7f566655de923c32b/) | ✅ Audited |
| OrigamiEulerV2BorrowAndLend | unknown | berachain | n/a | [`0x01e52c80eb4f6ba07fa0f61dc80799aabbee0ee2`](./contracts/berachain-80094/0x01e52c80eb4f6ba07fa0f61dc80799aabbee0ee2/) | ✅ Audited |
| OrigamiGmxEarnAccount | unknown | arbitrum | n/a | [`0x0b53afe5de9f9df65c3fe8a9da81dc410d14d4d4`](./contracts/arbitrum-42161/0x0b53afe5de9f9df65c3fe8a9da81dc410d14d4d4/) | ✅ Audited |
| OrigamiGmxInvestment | unknown | arbitrum | n/a | [`0x0348ea0fd56f994c93c9ebdf9f2c95e3b5c8824a`](./contracts/arbitrum-42161/0x0348ea0fd56f994c93c9ebdf9f2c95e3b5c8824a/) | ✅ Audited |
| OrigamiGmxManager | unknown | arbitrum | n/a | [`0x58833508c3d057fe8901a7a2d89ceccb3449ac24`](./contracts/arbitrum-42161/0x58833508c3d057fe8901a7a2d89ceccb3449ac24/) | ✅ Audited |
| OrigamiHOhmManager | unknown | ethereum | n/a | [`0xe6c5dc8508939b1c417f83b7fed3149ef22cf3ff`](./contracts/ethereum-1/0xe6c5dc8508939b1c417f83b7fed3149ef22cf3ff/) | ✅ Audited |
| OrigamiHOhmVault | unknown | ethereum | n/a | [`0x1db1591540d7a6062be0837ca3c808add28844f6`](./contracts/ethereum-1/0x1db1591540d7a6062be0837ca3c808add28844f6/) | ✅ Audited |
| OrigamiInfraredVaultManager | unknown | berachain | n/a | [`0x05d3461514e769f657ffe71233d6fc2546457b79`](./contracts/berachain-80094/0x05d3461514e769f657ffe71233d6fc2546457b79/) | ✅ Audited |
| OrigamiInvestmentVault | unknown | arbitrum | n/a | [`0x7fc862a47bbcde3812ca772ae851d0a9d1619eda`](./contracts/arbitrum-42161/0x7fc862a47bbcde3812ca772ae851d0a9d1619eda/) | ✅ Audited |
| OrigamiLovToken | unknown | berachain | n/a | [`0x0059fd16bc019ffe788d37807533edcf4df06c06`](./contracts/berachain-80094/0x0059fd16bc019ffe788d37807533edcf4df06c06/) | ✅ Audited |
| OrigamiLovTokenFlashAndBorrowManager | unknown | ethereum | n/a | [`0x013c5194b3548b1a9d460d6f80bd8d214bac13e2`](./contracts/ethereum-1/0x013c5194b3548b1a9d460d6f80bd8d214bac13e2/) | ✅ Audited |
| OrigamiLovTokenMorphoManager | unknown | ethereum | n/a | [`0x051dc89b797652ce8e19a9004d10a74eaabb1ec3`](./contracts/ethereum-1/0x051dc89b797652ce8e19a9004d10a74eaabb1ec3/) | ✅ Audited |
| OrigamiLovTokenMorphoManagerMarketAL | unknown | ethereum | n/a | [`0x71578e532f30983af51981deeda0a7bba88da22a`](./contracts/ethereum-1/0x71578e532f30983af51981deeda0a7bba88da22a/) | ✅ Audited |
| OrigamiOFT | unknown | berachain | n/a | [`0x5bad2b7a0a2eee88a4ef05d5470cdedb0ff948ea`](./contracts/berachain-80094/0x5bad2b7a0a2eee88a4ef05d5470cdedb0ff948ea/) | ✅ Audited |
| OrigamiStableChainlinkOracle | unknown | ethereum | n/a | [`0x1b184454e6c02370927789a3564f9d16368d55e4`](./contracts/ethereum-1/0x1b184454e6c02370927789a3564f9d16368d55e4/) | ✅ Audited |
| OrigamiSuperSavingsUsdsManager | unknown | ethereum | n/a | [`0x05654ff0cb3635fa5de00cc11607dbf203435c13`](./contracts/ethereum-1/0x05654ff0cb3635fa5de00cc11607dbf203435c13/) | ✅ Audited |
| OrigamiSuperSavingsUsdsVault | unknown | ethereum | n/a | [`0x0f90a6962e86b5587b4c11ba2b9697dc3ba84800`](./contracts/ethereum-1/0x0f90a6962e86b5587b4c11ba2b9697dc3ba84800/) | ✅ Audited |
| OrigamiSuperSkyManager | unknown | ethereum | n/a | [`0xc522335fbfe21d7a7d1135eb0e016a89da49dc9e`](./contracts/ethereum-1/0xc522335fbfe21d7a7d1135eb0e016a89da49dc9e/) | ✅ Audited |
| OrigamiSwapperWithCallback | unknown | berachain | n/a | [`0x23d774c4d42ead21c345f75af59325903f8c80db`](./contracts/berachain-80094/0x23d774c4d42ead21c345f75af59325903f8c80db/) | ✅ Audited |
| OrigamiTokenRecovery | unknown | ethereum | n/a | [`0x0cbb5862c662cbdf6d24df2d434c25dcf2534ef6`](./contracts/ethereum-1/0x0cbb5862c662cbdf6d24df2d434c25dcf2534ef6/) | ✅ Audited |
| OrigamiTokenTeleporter | unknown | ethereum | n/a | [`0xce39906a35de2ac81f0fd0ebd18fd3f04383932a`](./contracts/ethereum-1/0xce39906a35de2ac81f0fd0ebd18fd3f04383932a/) | ✅ Audited |
| TokenPrices | unknown | berachain | n/a | [`0x39cfdbefe1e7ccf0665675a3c3f6469b61dd32f5`](./contracts/berachain-80094/0x39cfdbefe1e7ccf0665675a3c3f6469b61dd32f5/) | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EzEthToEthExchangeRateAdapter | unknown | ethereum | n/a | [`0xb2ca3c47b1bea4ad7cfd187a522be0f1bfc8652b`](./contracts/ethereum-1/0xb2ca3c47b1bea4ad7cfd187a522be0f1bfc8652b/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x781b4c57100738095222bd92d37b07ed034ab696`](./contracts/ethereum-1/0x781b4c57100738095222bd92d37b07ed034ab696/) | ⚠️ Unaudited |
| HATVault | unknown | ethereum | n/a | [`0x998f1b716a5022be026ca6b919c0ddf45ca31abd`](./contracts/ethereum-1/0x998f1b716a5022be026ca6b919c0ddf45ca31abd/) | ⚠️ Unaudited |
| OpalPeriphery | unknown | ethereum | n/a | [`0x430b37b560c12dc591a17aea3c2e985fce88f3cc`](./contracts/ethereum-1/0x430b37b560c12dc591a17aea3c2e985fce88f3cc/) | ⚠️ Unaudited |
| OrigamiAaveV3BorrowAndLend | unknown | ethereum | n/a | [`0x2432b4767c6c3b4b5cff16acea8f51c013dbb678`](./contracts/ethereum-1/0x2432b4767c6c3b4b5cff16acea8f51c013dbb678/) | ⚠️ Unaudited |
| OrigamiAaveV3FlashLoanProvider | unknown | ethereum | n/a | [`0x88469316c5f828b4dfd11c4d8529cd9f96b2e006`](./contracts/ethereum-1/0x88469316c5f828b4dfd11c4d8529cd9f96b2e006/) | ⚠️ Unaudited |
| OrigamiDelegated4626VaultDeployer | unknown | berachain | n/a | [`0x29648c897ae6fe3858a1181622a39046828c129a`](./contracts/berachain-80094/0x29648c897ae6fe3858a1181622a39046828c129a/) | ⚠️ Unaudited |
| OrigamiErc4626Oracle | unknown | berachain | n/a | [`0x1d162073ba8545154f2e6ef5b73ab0d2b4968955`](./contracts/berachain-80094/0x1d162073ba8545154f2e6ef5b73ab0d2b4968955/) | ⚠️ Unaudited |
| OrigamiFixedPriceOracle | unknown | berachain | n/a | [`0x18a9000d8b947ea3005e61e8baaadaeaea7cceab`](./contracts/berachain-80094/0x18a9000d8b947ea3005e61e8baaadaeaea7cceab/) | ⚠️ Unaudited |
| OrigamiGlpInvestment | unknown | arbitrum | n/a | [`0x39cfdbefe1e7ccf0665675a3c3f6469b61dd32f5`](./contracts/arbitrum-42161/0x39cfdbefe1e7ccf0665675a3c3f6469b61dd32f5/) | ⚠️ Unaudited |
| OrigamiGmxRewardsAggregator | unknown | arbitrum | n/a | [`0x643d715a0697c56629a25ec33c9bf5990d08317f`](./contracts/arbitrum-42161/0x643d715a0697c56629a25ec33c9bf5990d08317f/) | ⚠️ Unaudited |
| OrigamiHOhmArbBot | unknown | ethereum | n/a | [`0x593e68eee095326fc2e406709aceb6721ca2330f`](./contracts/ethereum-1/0x593e68eee095326fc2e406709aceb6721ca2330f/) | ⚠️ Unaudited |
| OrigamiInfraredVaultManagerDeployer | unknown | berachain | n/a | [`0x4a3c19a6f14a112b908f5017b9931c9cad44e7d1`](./contracts/berachain-80094/0x4a3c19a6f14a112b908f5017b9931c9cad44e7d1/) | ⚠️ Unaudited |
| OrigamiInfraredVaultProxy | unknown | berachain | n/a | [`0x2ec7777838a49e2c83152d455b3ca753c6d08b79`](./contracts/berachain-80094/0x2ec7777838a49e2c83152d455b3ca753c6d08b79/) | ⚠️ Unaudited |
| OrigamiLanternOffering | unknown | berachain | n/a | [`0x727d8fa99d82ed6ce2cf458239d7e22ce88cf3e3`](./contracts/berachain-80094/0x727d8fa99d82ed6ce2cf458239d7e22ce88cf3e3/) | ⚠️ Unaudited |
| OrigamiMorphoBorrowAndLend | unknown | ethereum | n/a | [`0x03401161fc7785c86ee5cd96560711a677533e3b`](./contracts/ethereum-1/0x03401161fc7785c86ee5cd96560711a677533e3b/) | ⚠️ Unaudited |
| OrigamiScaledOracle | unknown | ethereum | n/a | [`0x736fdf61d94287ff54266a4027423950c2404cad`](./contracts/ethereum-1/0x736fdf61d94287ff54266a4027423950c2404cad/) | ⚠️ Unaudited |
| OrigamiSwapperWithLiquidityManagement | unknown | berachain | n/a | [`0x1511adab8b8cd255deb6b344751297277c7ceb47`](./contracts/berachain-80094/0x1511adab8b8cd255deb6b344751297277c7ceb47/) | ⚠️ Unaudited |
| OrigamiWstEthToEthOracle | unknown | ethereum | n/a | [`0x2848d944eab78c3abf02c89ff97f1652a0fbad77`](./contracts/ethereum-1/0x2848d944eab78c3abf02c89ff97f1652a0fbad77/) | ⚠️ Unaudited |
| RsEthToEthExchangeRateAdapter | unknown | ethereum | n/a | [`0xbac9fc6917c067f763eda63f569e0c6a7dbbcd80`](./contracts/ethereum-1/0xbac9fc6917c067f763eda63f569e0c6a7dbbcd80/) | ⚠️ Unaudited |
| RswEthToEthExchangeRateAdapter | unknown | ethereum | n/a | [`0xb2b18e668ce6326760e3b063f72684fdf2a2d582`](./contracts/ethereum-1/0xb2b18e668ce6326760e3b063f72684fdf2a2d582/) | ⚠️ Unaudited |
| SwEthToEthExchangeRateAdapter | unknown | ethereum | n/a | [`0x88154f69959e6c2d1a453ab60cec15a8965d06e3`](./contracts/ethereum-1/0x88154f69959e6c2d1a453ab60cec15a8965d06e3/) | ⚠️ Unaudited |
| TimelockController | unknown | arbitrum | n/a | [`0x85a6026bc75a11b77a3a0584aa33ecd98c40bdfb`](./contracts/arbitrum-42161/0x85a6026bc75a11b77a3a0584aa33ecd98c40bdfb/) | ⚠️ Unaudited |
| WeEthToEthExchangeRateAdapter | unknown | ethereum | n/a | [`0x4270e1817576bba4b640466be79a408ef128f828`](./contracts/ethereum-1/0x4270e1817576bba4b640466be79a408ef128f828/) | ⚠️ Unaudited |

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
| [Jacopod OPAL Report](https://github.com/TempleDAO/origami-public/blob/main/audits/opal/jacopod_opal.pdf) | Jacopod | Audit | 2026-02 | fresh | Direct | contract_name | 4 | high |
| [Panprog OPAL Report](https://github.com/TempleDAO/origami-public/blob/main/audits/opal/panprog-opal.pdf) | Panprog | Audit | 2025-12 | fresh | Direct | contract_name | 5 | high |
| [Panprog Bundler Report](https://github.com/TempleDAO/origami-public/blob/main/audits/opal/panprog-bundler.pdf) | Panprog | Audit | 2025-11 | fresh | Direct | contract_name | 6 | high |
| [Nethermind OPAL Report](https://github.com/TempleDAO/origami-public/blob/main/audits/opal/nethermind_opal.pdf) | Nethermind | Audit | 2025-12 | fresh | Direct | contract_name | 5 | high |
| [Nethermind Bundler Report](https://github.com/TempleDAO/origami-public/blob/main/audits/opal/nethermind_bundler.pdf) | Nethermind | Audit | 2025-11 | fresh | Direct | contract_name | 6 | high |
| [Bundler3 Spearbit Report](https://github.com/morpho-org/bundler3/blob/main/audits/2025-01-02-bundler3-spearbit.pdf) | Spearbit | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [Bundler3 Updated Spearbit Report](https://github.com/morpho-org/bundler3/blob/main/audits/2025-02-17-bundler3-update-spearbit.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Bundler3 Updated Open Zeppelin Report](https://github.com/morpho-org/bundler3/blob/main/audits/2025-02-18-bundler3-with-update-open-zeppelin.pdf) | OpenZeppelin | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Electisec Report (CowSwapper Re-Audit)](https://github.com/TempleDAO/origami-public/blob/main/audits/cow-swapper/cow-swapper-electisec.pdf) | Electisec | Audit | 2025-07 | aging | Direct | contract_name | 1 | high |
| [Jacopod Report (SKY+)](https://github.com/TempleDAO/origami-public/blob/main/audits/SKY%2B/SKY%2B-jacopod.pdf) | Jacopod | Audit | 2025-06 | aging | Direct | contract_name | 2 | high |
| [SBSecurity Report (sUSDS+)](https://github.com/TempleDAO/origami-public/blob/main/audits/sUSDS%2Bs/sUSDS%2Bs-SBSecurity.pdf) | SBSecurity | Audit | 2024-10 | aging | Direct | contract_name | 6 | high |
| [Jacopod Report](https://github.com/TempleDAO/origami-public/blob/main/audits/auto-staking/jacopod-autostaking.pdf) | Jacopod | Audit | 2025-05 | aging | Direct | contract_name | 3 | high |
| [Nethermind Report](https://github.com/TempleDAO/origami-public/blob/main/audits/hOHM/Nethermind_hOHM.pdf) | Nethermind | Audit | 2025-04 | aging | Direct | contract_name | 11 | high |
| [Panprog Report](https://github.com/TempleDAO/origami-public/blob/main/audits/hOHM/Panprog_hOHM.pdf) | Panprog | Audit | 2025-03 | aging | Direct | contract_name | 5 | high |
| [Electisec Report (Migrator)](https://github.com/TempleDAO/origami-public/blob/main/audits/hOHM/Electisec_hOHM_Migrator.pdf) | Electisec | Audit | 2025-03 | aging | Direct | contract_name | 1 | high |
| [Electisec Report](https://github.com/TempleDAO/origami-public/blob/main/audits/hOHM/Electisec_hOHM.pdf) | Electisec | Audit | 2025-03 | aging | Direct | contract_name | 5 | high |
| [Panprog Report](https://github.com/TempleDAO/origami-public/blob/main/audits/eulerBorrowLend/panprog_lovTokenEulerAdapter.pdf) | Panprog | Audit | 2025-04 | aging | Direct | contract_name | 5 | high |
| [Pyro Report](https://github.com/TempleDAO/origami-public/blob/main/audits/oriBGT/oriBGT-audit-pyro.pdf) | Pyro | Audit | 2025-03 | aging | Direct | contract_name | 3 | high |
| [Jacopod Report](https://github.com/TempleDAO/origami-public/blob/main/audits/oriBGT/oriBGT-audit-jacopod.pdf) | Jacopod | Audit | 2025-03 | aging | Direct | contract_name | 7 | high |
| [Panprog Report](https://github.com/TempleDAO/origami-public/blob/main/audits/boyco/Panprog_Audit_Report-Origami_Boyco.pdf) | Panprog | Audit | 2025-01 | aging | Direct | contract_name | 13 | high |
| [Halborn Report](https://github.com/TempleDAO/origami-public/blob/main/audits/boyco/Halborn_Audit_Report-Origami_Boyco.pdf) | Halborn | Audit | 2024-12 | aging | Direct | contract_name | 5 | high |
| [Zellic Report](https://github.com/TempleDAO/origami-public/blob/main/audits/origami-v2/Origami%20Finance%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-01 | stale | Direct | contract_name | 13 | high |
| [<img src="/files/2gef4EG77ADA9eg9jvO9" alt="" data-size="line"> yAudit Report](https://reports.yaudit.dev/01-2023-TempleDAO-Origami) | yAudit | Audit | 2023 | stale | Direct | n/a | 0 | n/a |
| [yAudit Report Recheck](https://reports.yaudit.dev/02-2023-TempleDAO-Origami-Recheck) | yAudit | Audit | 2023 | stale | Direct | n/a | 0 | n/a |
| [morpho-auto-compounder-jacopod.pdf](https://github.com/TempleDAO/origami-public/blob/main/audits/morpho-auto-compounder/morpho-auto-compounder-jacopod.pdf) | Jacopod | Audit | 2025-07 | aging | Direct | contract_name | 7 | high |
| [01-2023-TempleDao-Origami-yAcademy-Report.pdf](https://github.com/TempleDAO/origami-public/blob/main/audits/origami-v1/01-2023-TempleDao-Origami-yAcademy-Report.pdf) | yAcademy | Audit | 2023-02 | stale | Direct | contract_name | 4 | high |
| [02-2023-TempleDao-Origami-Recheck-yAcademy-Report.pdf](https://github.com/TempleDAO/origami-public/blob/main/audits/origami-v1/02-2023-TempleDao-Origami-Recheck-yAcademy-Report.pdf) | yAcademy | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xb2ca3c47b1bea4ad7cfd187a522be0f1bfc8652b`](./contracts/ethereum-1/0xb2ca3c47b1bea4ad7cfd187a522be0f1bfc8652b/) | EzEthToEthExchangeRateAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x998f1b716a5022be026ca6b919c0ddf45ca31abd`](./contracts/ethereum-1/0x998f1b716a5022be026ca6b919c0ddf45ca31abd/) | HATVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x430b37b560c12dc591a17aea3c2e985fce88f3cc`](./contracts/ethereum-1/0x430b37b560c12dc591a17aea3c2e985fce88f3cc/) | OpalPeriphery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2432b4767c6c3b4b5cff16acea8f51c013dbb678`](./contracts/ethereum-1/0x2432b4767c6c3b4b5cff16acea8f51c013dbb678/) | OrigamiAaveV3BorrowAndLend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88469316c5f828b4dfd11c4d8529cd9f96b2e006`](./contracts/ethereum-1/0x88469316c5f828b4dfd11c4d8529cd9f96b2e006/) | OrigamiAaveV3FlashLoanProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x29648c897ae6fe3858a1181622a39046828c129a`](./contracts/berachain-80094/0x29648c897ae6fe3858a1181622a39046828c129a/) | OrigamiDelegated4626VaultDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x1d162073ba8545154f2e6ef5b73ab0d2b4968955`](./contracts/berachain-80094/0x1d162073ba8545154f2e6ef5b73ab0d2b4968955/) | OrigamiErc4626Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x18a9000d8b947ea3005e61e8baaadaeaea7cceab`](./contracts/berachain-80094/0x18a9000d8b947ea3005e61e8baaadaeaea7cceab/) | OrigamiFixedPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x39cfdbefe1e7ccf0665675a3c3f6469b61dd32f5`](./contracts/arbitrum-42161/0x39cfdbefe1e7ccf0665675a3c3f6469b61dd32f5/) | OrigamiGlpInvestment | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x643d715a0697c56629a25ec33c9bf5990d08317f`](./contracts/arbitrum-42161/0x643d715a0697c56629a25ec33c9bf5990d08317f/) | OrigamiGmxRewardsAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x593e68eee095326fc2e406709aceb6721ca2330f`](./contracts/ethereum-1/0x593e68eee095326fc2e406709aceb6721ca2330f/) | OrigamiHOhmArbBot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x4a3c19a6f14a112b908f5017b9931c9cad44e7d1`](./contracts/berachain-80094/0x4a3c19a6f14a112b908f5017b9931c9cad44e7d1/) | OrigamiInfraredVaultManagerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x2ec7777838a49e2c83152d455b3ca753c6d08b79`](./contracts/berachain-80094/0x2ec7777838a49e2c83152d455b3ca753c6d08b79/) | OrigamiInfraredVaultProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x727d8fa99d82ed6ce2cf458239d7e22ce88cf3e3`](./contracts/berachain-80094/0x727d8fa99d82ed6ce2cf458239d7e22ce88cf3e3/) | OrigamiLanternOffering | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03401161fc7785c86ee5cd96560711a677533e3b`](./contracts/ethereum-1/0x03401161fc7785c86ee5cd96560711a677533e3b/) | OrigamiMorphoBorrowAndLend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x736fdf61d94287ff54266a4027423950c2404cad`](./contracts/ethereum-1/0x736fdf61d94287ff54266a4027423950c2404cad/) | OrigamiScaledOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x1511adab8b8cd255deb6b344751297277c7ceb47`](./contracts/berachain-80094/0x1511adab8b8cd255deb6b344751297277c7ceb47/) | OrigamiSwapperWithLiquidityManagement | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2848d944eab78c3abf02c89ff97f1652a0fbad77`](./contracts/ethereum-1/0x2848d944eab78c3abf02c89ff97f1652a0fbad77/) | OrigamiWstEthToEthOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbac9fc6917c067f763eda63f569e0c6a7dbbcd80`](./contracts/ethereum-1/0xbac9fc6917c067f763eda63f569e0c6a7dbbcd80/) | RsEthToEthExchangeRateAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb2b18e668ce6326760e3b063f72684fdf2a2d582`](./contracts/ethereum-1/0xb2b18e668ce6326760e3b063f72684fdf2a2d582/) | RswEthToEthExchangeRateAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88154f69959e6c2d1a453ab60cec15a8965d06e3`](./contracts/ethereum-1/0x88154f69959e6c2d1a453ab60cec15a8965d06e3/) | SwEthToEthExchangeRateAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4270e1817576bba4b640466be79a408ef128f828`](./contracts/ethereum-1/0x4270e1817576bba4b640466be79a408ef128f828/) | WeEthToEthExchangeRateAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 68 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=21
- Match method counts: extraction_exact=117

Zero-match audit list:

- [17897] Bundler3 Spearbit Report
- [17898] Bundler3 Updated Spearbit Report
- [17899] Bundler3 Updated Open Zeppelin Report
- [17914] <img src="/files/2gef4EG77ADA9eg9jvO9" alt="" data-size="line"> yAudit Report
- [17915] yAudit Report Recheck
- [17918] 02-2023-TempleDao-Origami-Recheck-yAcademy-Report.pdf

Fork inheritance lineage and inherited audits are included when available.
