# Agentic Audit Brief: ICHI

## Project Overview

- Project: ICHI (`ichi`)
- Website: [https://www.ichi.org](https://www.ichi.org)
- Lifecycle: active (Tier 0, 90.3% below peak)
- Generated: 2026-05-29T19:27:51.184Z
- Pipeline run: v2-pipeline-2026-05-29-691c43-e9c3
- Chains: arbitrum, avalanche, base, blast, bsc, celo, ethereum, fantom, kava, linea, mantle, mode, opbnb, polygon, polygon-zkevm, scroll, sonic, zksync-era
- Contract surface: 616 unique implementations (1073 raw deployments)
- DeFi Llama TVL: $12,782,422.64
- On-chain TVL (included contracts): $36,116,255.20
- TVL by chain: Ethereum $36,116,255.20

## Project Description

ICHI is a decentralized liquidity management protocol that automates concentrated liquidity positions on Uniswap V3 and similar AMMs. It deploys managed vaults that optimize fee earnings and rebalance assets to maintain a target token ratio, simplifying LP strategies for users.

### Architecture

The ICHI Vaults family relies on factory contracts like ICHIVaultFactory and RebalancerFactory to deploy and manage vaults across multiple chains, while the Legacy ICHI family contains older staking and farming contracts that may interact with the ICHI token. Both families share the ICHI token and some infrastructure like OneTokenFactory, but the vault system is the active product line.

## Audit Coverage Summary

- Verified implementations audited: 1/115 (0.9%)
- Verified + Unaudited implementations: 111
- Verified by bytecode match: 3
- Unverified implementations: 501
- Unique implementations: 616
- Raw deployments: 1073
- Audits discovered: 4
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $36,116,255.20
- Latest audit: 2021-04 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 0.9% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ichiFarmV2 | unknown | ethereum | 2 deployments: ethereum [`0x275dfe...9739c8`](./contracts/ethereum-1/0x275dfe03bc036257cd0a713ee819dbd4529739c8/); polygon `0x2fb241...d7a931` | ✅ Audited |

### ⚠️ Verified + Unaudited (111)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SmartToken | token | ethereum | 6 deployments: ethereum [`0x164a12...172153`](./contracts/ethereum-1/0x164a1229f4826c9dd70ee3d9f4f3d7b68a172153/); ethereum `0x1f573d...a7ff1c`; ethereum `0x970d48...c0c4dd`; ethereum `0x99ebd3...67b340`; ethereum `0xee01b3...8e6e72`; ethereum `0xf132d2...cfc8dc` | ⚠️ Unaudited |
| RiskHarborStrategy | core_logic | ethereum | 2 deployments: ethereum [`0x55922f...ac4cb7`](./contracts/ethereum-1/0x55922fa5084f9367b73fc0df9163b089d8ac4cb7/); ethereum `0xac2000...404691` | ⚠️ Unaudited |
| StandardPoolConverter | core_logic | ethereum | [`0x4a2f0c...37b63b`](./contracts/ethereum-1/0x4a2f0ca5e03b2cf81aebd936328cf2085037b63b/) | ⚠️ Unaudited |
| CErc20Delegate | token | ethereum | [`0xaff95a...89c0ce`](./contracts/ethereum-1/0xaff95ac1b0a78bd8e4f1a2933e373c66cc89c0ce/) | ⚠️ Unaudited |
| BPool | core_logic | ethereum | [`0x58378f...29d2bb`](./contracts/ethereum-1/0x58378f5f8ca85144ebd8e1e5e2ad95b02d29d2bb/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | proxy | ethereum | 5 deployments: ethereum [`0x22a063...d770c7`](./contracts/ethereum-1/0x22a063ec41aa1ef71099f37e15921e1631d770c7/); ethereum `0x2ecf8d...66147a`; ethereum `0x3c00b7...541f99`; ethereum `0xd7e6d8...088d8f`; ethereum `0xe5b386...9cedb1` | ⚠️ Unaudited |
| AegisVault | core_logic | celo | 4 deployments: celo [`0x289dc4...9df1cd`](./contracts/celo-42220/0x289dc4313997f78f04c2959a9a50aec4739df1cd/); celo `0x3586c6...ffa98f`; celo `0x8d6cdb...a9fc0d`; celo `0xf36abd...b851b6` | ⚠️ Unaudited |
| AegisVaultERC20 | core_logic | celo | 4 deployments: celo [`0x16dfbb...9fde29`](./contracts/celo-42220/0x16dfbb3f6c2a7a3ed697f7233b3e83001a9fde29/); celo `0xd20feb...1f39a6`; celo `0xeecb7b...d9eb3c`; celo `0xf92ac7...dd3cdb` | ⚠️ Unaudited |
| AegisVaultFactory | registry | celo | 4 deployments: celo [`0x51a0d7...e57959`](./contracts/celo-42220/0x51a0d74e1791399ce02aafd9a21dc4637fe57959/); celo `0xbeff79...34f6dd`; celo `0xe83a69...33e8fc`; celo `0xf39a4c...9b0298` | ⚠️ Unaudited |
| Ally | unknown | ethereum | [`0x1aa1e6...6952ef`](./contracts/ethereum-1/0x1aa1e61369874bae3444a8ef6528d6b13d6952ef/) | ⚠️ Unaudited |
| AllySwap | unknown | ethereum | 3 deployments: ethereum [`0x3f5744...8d9503`](./contracts/ethereum-1/0x3f57443040cc438d5d6108fd024dfbfd048d9503/); ethereum `0x9fd678...16d564`; ethereum `0xb973c8...3fb82d` | ⚠️ Unaudited |
| Arbitrary | unknown | ethereum | 8 deployments: ethereum [`0x1faac4...102c13`](./contracts/ethereum-1/0x1faac4842054f2db2dddfc8152d7c259d5102c13/); ethereum `0x2dfb53...cba9d5`; ethereum `0x6287d5...f4554c`; ethereum `0x8740c9...ab100b`; ethereum `0x97b380...9caa62`; ethereum `0xc96822...29c92e`; ethereum `0xeb370e...4708f6`; ethereum `0xf1587c...c35f41` | ⚠️ Unaudited |
| ArbitraryV2 | unknown | ethereum | 2 deployments: ethereum [`0x2e76a8...7fedd6`](./contracts/ethereum-1/0x2e76a8d053f839a04235341df1f25235437fedd6/); ethereum `0x4ed128...ec256c` | ⚠️ Unaudited |
| ArbitraryV3 | unknown | ethereum | 5 deployments: ethereum [`0x0b10e4...dc31ea`](./contracts/ethereum-1/0x0b10e483aac4340256772754d23131b6e0dc31ea/); ethereum `0x435b65...736771`; ethereum `0x8a17a9...d14b1b`; ethereum `0x95507f...942c6d`; ethereum `0xac225b...881bc8` | ⚠️ Unaudited |
| BancorBuyer | unknown | ethereum | [`0x77a77e...34d924`](./contracts/ethereum-1/0x77a77eca75445841875ebb67a33d0a97dc34d924/) | ⚠️ Unaudited |
| BancorChanger | unknown | ethereum | 2 deployments: ethereum [`0xb72a0f...270468`](./contracts/ethereum-1/0xb72a0fa1e537c956dfca72711c468efd81270468/); ethereum `0xca83bd...629ff4` | ⚠️ Unaudited |
| BancorConverter | unknown | ethereum | 14 deployments: ethereum [`0x40a36b...252e16`](./contracts/ethereum-1/0x40a36b6d7f956f80d07e401a5f620c3a4f252e16/); ethereum `0x578f3c...b3e2d8`; ethereum `0x62c37c...caa769`; ethereum `0x6427b5...df5f28`; ethereum `0x665f41...256f0e`; ethereum `0x803530...a42c59`; ethereum `0xa3a89d...ff5bad`; ethereum `0xabf66d...83f5e8`; ethereum `0xb626a5...1d1c78`; ethereum `0xc4628a...144ade`; ethereum `0xc6725a...b9db29`; ethereum `0xd8c2ca...fbdde9`; ethereum `0xdc2f2b...d30109`; ethereum `0xf8b211...58ce35` | ⚠️ Unaudited |
| BancorConverterExtensions | adapter | ethereum | [`0xf46002...9012f7`](./contracts/ethereum-1/0xf46002c37af6fb078ae1833fd447698a0c9012f7/) | ⚠️ Unaudited |
| BancorConverterFactory | registry | ethereum | 4 deployments: ethereum [`0x0a8079...f9b236`](./contracts/ethereum-1/0x0a8079ce1fd9b1ae682d9f1b709609a05bf9b236/); ethereum `0x383668...3175cf`; ethereum `0x5ed8c0...bb802b`; ethereum `0xa96a30...1f7448` | ⚠️ Unaudited |
| BancorConverterUpgrader | unknown | ethereum | 3 deployments: ethereum [`0xaebf10...7c3d5c`](./contracts/ethereum-1/0xaebf1085dd9a0fa403a75399c956595e3a7c3d5c/); ethereum `0xe727b1...a3429f`; ethereum `0xfae75b...984bd5` | ⚠️ Unaudited |
| BancorFormula | unknown | ethereum | 6 deployments: ethereum [`0x4eeb95...c30cc5`](./contracts/ethereum-1/0x4eeb95a68c7382217ccdf9d4d1c89f3986c30cc5/); ethereum `0x6f7df4...da4fc7`; ethereum `0x8d10c0...395b98`; ethereum `0xd288fb...1a9603`; ethereum `0xe6095e...96c58e`; ethereum `0xffd2de...454742` | ⚠️ Unaudited |
| BancorFormulaProxy | unknown | ethereum | [`0x8b0c11...3af6f2`](./contracts/ethereum-1/0x8b0c11e0df925387de1ce92504fe0e4af23af6f2/) | ⚠️ Unaudited |
| BancorGasPriceLimit | operational_periphery | ethereum | 2 deployments: ethereum [`0x7fd539...4daa6e`](./contracts/ethereum-1/0x7fd539ef2be3192b6d6bdf095968bac2d74daa6e/); ethereum `0xafb06c...b99590` | ⚠️ Unaudited |
| BancorNetwork | unknown | ethereum | 2 deployments: ethereum [`0x568e7c...3e5e07`](./contracts/ethereum-1/0x568e7cfebb39e2b2695e6f90d1d33c3cf03e5e07/); ethereum `0xf20b9e...39126a` | ⚠️ Unaudited |
| BancorPriceFloor | operational_periphery | ethereum | [`0x7ec6a7...268549`](./contracts/ethereum-1/0x7ec6a713197fcbb4cfe7213800470b0940268549/) | ⚠️ Unaudited |
| BancorQuickConverter | unknown | ethereum | 2 deployments: ethereum [`0xcf1cc6...49139b`](./contracts/ethereum-1/0xcf1cc6ed5b653def7417e3fa93992c3ffe49139b/); ethereum `0xf87a7e...dd38b1` | ⚠️ Unaudited |
| Batcher | periphery | ethereum | [`0x5fa1cc...69cff8`](./contracts/ethereum-1/0x5fa1cc03be296cd63d99351c3112609cb269cff8/) | ⚠️ Unaudited |
| bnICHIPowah | unknown | ethereum | 2 deployments: ethereum [`0x8c261c...f102ef`](./contracts/ethereum-1/0x8c261c87288dd5e2dc462fa0fd4c6399a7f102ef/); ethereum `0x8fd003...9d2c3e` | ⚠️ Unaudited |
| ContractFeatures | unknown | ethereum | [`0x563172...6ce699`](./contracts/ethereum-1/0x563172281800b139f69fb038cc2c08cad56ce699/) | ⚠️ Unaudited |
| ContractRegistry | registry | ethereum | 3 deployments: ethereum [`0x7148b1...e395e6`](./contracts/ethereum-1/0x7148b1c9154bcf273a2c7d7b90e3edc6fee395e6/); ethereum `0xa3bf8e...718e6a`; ethereum `0xd19970...8738b3` | ⚠️ Unaudited |
| CrowdsaleController | governance | ethereum | [`0xbbc797...f89710`](./contracts/ethereum-1/0xbbc79794599b19274850492394004087cbf89710/) | ⚠️ Unaudited |
| Delay | unknown | ethereum | [`0x6b9afc...0848ff`](./contracts/ethereum-1/0x6b9afc9832a51ab0c5c1bdbce8c2dbe2eb0848ff/) | ⚠️ Unaudited |
| EtherToken | token | ethereum | 2 deployments: ethereum [`0xc08294...2ce315`](./contracts/ethereum-1/0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315/); ethereum `0xd76b5c...b746ae` | ⚠️ Unaudited |
| ETHVault | core_logic | ethereum | 2 deployments: ethereum [`0x3ed0ab...246cf4`](./contracts/ethereum-1/0x3ed0abc49569dce331ba7d3706b462d194246cf4/); ethereum `0xfb5c18...3ddb2a` | ⚠️ Unaudited |
| ETHVaultWithSlippage | core_logic | ethereum | 13 deployments: ethereum [`0x25a862...7031ce`](./contracts/ethereum-1/0x25a862691978b47071244227ff77969bc27031ce/); ethereum `0x3dfd6d...d318bd`; ethereum `0x812ed1...832a1a`; ethereum `0x85679f...19edcc`; ethereum `0x8ad02d...3ac460`; ethereum `0x980d4a...8efb1d`; ethereum `0xeaf2de...913755`; arbitrum `0x7515fd...79f756`; arbitrum `0xb24a00...e00216`; arbitrum `0xb443de...723083`; arbitrum `0xd44939...58758f`; arbitrum `0xf21f2f...c3a989`; blast `0xa30018...126867` | ⚠️ Unaudited |
| ExtendedArbitrary | unknown | polygon | [`0x51803f...e39b08`](./contracts/polygon-137/0x51803f621c5e90011de58b57fd5b7a92e0e39b08/) | ⚠️ Unaudited |
| FeeSplitterFactory | operational_periphery | linea | [`0x8fd003...9d2c3e`](./contracts/linea-59144/0x8fd003f7c10ebd1431df50d88d9aba06dd9d2c3e/) | ⚠️ Unaudited |
| FixedTokenPriceOracle | operational_periphery | ethereum | [`0xc5f957...ac5838`](./contracts/ethereum-1/0xc5f957496d0d2a4331405270d1ea3ae78dac5838/) | ⚠️ Unaudited |
| GasChecker | unknown | ethereum | 3 deployments: ethereum [`0x1dfbc5...a11548`](./contracts/ethereum-1/0x1dfbc56f3c26e93adde335e1472c2a27b3a11548/); ethereum `0x60b075...00dd69`; ethereum `0x92fce8...1fc37e` | ⚠️ Unaudited |
| genericFarmV2 | unknown | ethereum | 8 deployments: ethereum [`0x151874...7d374e`](./contracts/ethereum-1/0x15187432d28d8ee94957a3277a51708b707d374e/); ethereum `0x3b5fcb...4d9114`; ethereum `0x4b1623...32c8aa`; ethereum `0x4c8e04...1d66e8`; ethereum `0x944344...b67b2d`; ethereum `0xa87c23...61ecb0`; ethereum `0xbdf32c...677a30`; ethereum `0xf9c16d...a5869b` | ⚠️ Unaudited |
| GovernorAlpha | governance | ethereum | [`0xb9220b...04d4c6`](./contracts/ethereum-1/0xb9220b9d31da138eaaaaf0ea5f686271f504d4c6/) | ⚠️ Unaudited |
| Ichi | unknown | ethereum | [`0x903bef...67a881`](./contracts/ethereum-1/0x903bef1736cddf2a537176cf3c64579c3867a881/) | ⚠️ Unaudited |
| ICHIBancorInsurance | unknown | ethereum | [`0x43f1ca...ffbb83`](./contracts/ethereum-1/0x43f1cacdacd3fa65dbcbd56604b90e077fffbb83/) | ⚠️ Unaudited |
| IchiBuyer | unknown | ethereum | 2 deployments: ethereum [`0x4a6255...d13fd8`](./contracts/ethereum-1/0x4a62552d0896a16cd1607c6ec03cbde97ed13fd8/); ethereum `0xf3145e...380e5b` | ⚠️ Unaudited |
| IchiBuyer2 | unknown | ethereum | [`0x371be9...4248ab`](./contracts/ethereum-1/0x371be922a89fbb160b1387dc0d3b61c1014248ab/) | ⚠️ Unaudited |
| ICHICompositeOracle | operational_periphery | ethereum | 10 deployments: ethereum [`0x022086...4293ca`](./contracts/ethereum-1/0x0220864a5c899b0848a5797ca84b34cc494293ca/); ethereum `0x2930e2...9fb18a`; ethereum `0x3134cb...352439`; ethereum `0x372d7b...c3f8e4`; ethereum `0x4b8ee3...4089ad`; ethereum `0x6c5bb7...939980`; ethereum `0x6f85eb...31fd8b`; ethereum `0x9422f6...fb305a`; ethereum `0xbbb97d...f46ad3`; ethereum `0xea2bcb...d38505` | ⚠️ Unaudited |
| ichiEthOracleWrapper | operational_periphery | ethereum | [`0x7ce22f...9f96e6`](./contracts/ethereum-1/0x7ce22f910dbd79741a14648157e465889a9f96e6/) | ⚠️ Unaudited |
| ichiFarm | unknown | ethereum | [`0xcc5095...d9b000`](./contracts/ethereum-1/0xcc50953a743b9ce382f423e37b07efa6f9d9b000/) | ⚠️ Unaudited |
| ICHIFarmPowah | unknown | ethereum | [`0x7c49fc...515014`](./contracts/ethereum-1/0x7c49fc7110ef49d080f1d0cfc57fad5f21515014/) | ⚠️ Unaudited |
| ICHIOracleAggregator | operational_periphery | ethereum | [`0xd41ea2...138139`](./contracts/ethereum-1/0xd41ea28e17bd06136c416ca942fb997122138139/) | ⚠️ Unaudited |
| ICHIPeggedOracle | operational_periphery | polygon | 2 deployments: ethereum `0xeb7217...8973c2`; polygon [`0xbb7a3d...ee2e73`](./contracts/polygon-137/0xbb7a3d439abf42cf39837f9102f987bab3ee2e73/) | ⚠️ Unaudited |
| ICHIPOWAH | unknown | ethereum | 5 deployments: ethereum [`0x553827...127474`](./contracts/ethereum-1/0x5538277f8d08e79e3f3e531267422bb55b127474/); ethereum `0x873902...ed5459`; ethereum `0x880184...2e7056`; ethereum `0xa1d90a...b1e575`; ethereum `0xe605c8...916bf9` | ⚠️ Unaudited |
| ICHIPOWAHV2 | unknown | ethereum | [`0x06899b...ba8a9d`](./contracts/ethereum-1/0x06899b9092ab29ab197c1588b326b13812ba8a9d/) | ⚠️ Unaudited |
| ICHISpotOracleUSDBancor | operational_periphery | ethereum | [`0xe0191c...d9a150`](./contracts/ethereum-1/0xe0191c950b2c19d7a470b00c59969c17fcd9a150/) | ⚠️ Unaudited |
| IchiStake | unknown | ethereum | [`0x70605a...ab467e`](./contracts/ethereum-1/0x70605a6457b0a8fbf1eee896911895296eab467e/) | ⚠️ Unaudited |
| IchiV2 | unknown | ethereum | [`0x111111...6bc4d6`](./contracts/ethereum-1/0x111111517e4929d3dcbdfa7cce55d30d4b6bc4d6/) | ⚠️ Unaudited |
| ICHIVaultDeployer | core_logic | arbitrum | 44 deployments: ethereum `0x3ac029...5a48c4`; ethereum `0x467e73...d94ac0`; ethereum `0xa7ceb2...42c35c`; bsc `0x1aa1e6...6952ef`; bsc `0x259268...00195e`; bsc `0x435b65...736771`; bsc `0x932e19...b95c5e`; polygon `0xbbb97d...f46ad3`; polygon `0xdf4828...a24ab7`; polygon `0xeaff03...ee7b2f`; sonic `0x0ac9e4...fd47f7`; sonic `0xa730ca...a95294`; sonic `0xb108b4...db86ef`; opbnb `0xb62399...090a71`; mantle `0x1bd8e5...3aec31`; mantle `0x932e19...b95c5e`; mantle `0xdc9d2d...a8ecb1`; mantle `0xf3145e...380e5b`; base `0x065cb8...6ea031`; base `0x5507b5...98d8b7`; arbitrum [`0x00501f...5b0673`](./contracts/arbitrum-42161/0x00501f23965512eab62c0bfd085d7f0e745b0673/); arbitrum `0x065cb8...6ea031`; arbitrum `0x2121aa...8814b8`; arbitrum `0x259268...00195e`; arbitrum `0x95e669...85b529`; arbitrum `0xdb03e0...431fac`; arbitrum `0xdcee75...061caa`; celo `0x544113...2756e1`; celo `0x561200...9fbd20`; celo `0xb78144...c8eb68`; celo `0xe3f26d...900dd4`; celo `0xfab743...7c068b`; celo `0xfbf389...607065`; avalanche `0x9fab4b...d7418f`; linea `0x7a0c9a...d890b1`; linea `0xbf44e2...61cafc`; linea `0xc030be...754ad3`; linea `0xe2381b...a31f26`; linea `0xf22399...23b929`; linea `0xfaa2e7...a07f30`; blast `0x7c6389...605f6d`; blast `0x89ffda...fa5f34`; blast `0xec9fc3...b111ed`; blast `0xfbf389...607065` | ⚠️ Unaudited |
| ICHIVaultDepositGuard | core_logic | blast | 54 deployments: ethereum `0x3e1afd...7a4775`; ethereum `0x81b2f4...c4f49d`; ethereum `0xc3822b...3acb83`; ethereum `0xe6e32d...0ef70a`; bsc `0x101eb1...bfc879`; bsc `0x15ba62...bf3785`; bsc `0x454130...c606c2`; bsc `0x7984d3...0df151`; bsc `0xa9b751...0af545`; bsc `0xd9272a...a66ee1`; bsc `0xe79140...5e914b`; polygon `0x64e445...483041`; polygon `0x66dcb1...1c8dc2`; polygon `0x8845fe...49d70c`; polygon `0x9b3ea1...d331e1`; polygon `0xa5ce10...eb05a4`; polygon `0xad7633...6316eb`; polygon `0xc1dec2...d8e458`; polygon `0xdb8e25...b590b6`; polygon `0xe976cd...3c481a`; sonic `0x65cd1f...2074ac`; sonic `0xcd9527...7dbfa0`; mantle `0x15ea9a...5ba0de`; mantle `0x2121aa...8814b8`; mantle `0xadda3a...6035f1`; mantle `0xb42d59...114f15`; base `0xbf38e4...599819`; base `0xe2381b...a31f26`; mode `0x2e76a8...7fedd6`; arbitrum `0x067ec6...93bf04`; arbitrum `0x1c4063...323411`; arbitrum `0x2472ca...68fb68`; arbitrum `0x28cf3b...4c97b7`; arbitrum `0x932e19...b95c5e`; arbitrum `0xb77463...aa7379`; arbitrum `0xe0f792...e5594c`; arbitrum `0xfb5263...686d12`; celo `0x238394...4fbed8`; celo `0x4fa116...75a529`; celo `0x62fd18...4774c2`; celo `0xa19595...4d5a14`; avalanche `0xbbb97d...f46ad3`; linea `0x19227e...fe50a7`; linea `0x57c9d9...a079df`; linea `0x60f508...8c505d`; linea `0x633762...76469c`; linea `0x92bce3...effe5b`; linea `0xb177cf...5a04e2`; linea `0xcf99c2...fa8801`; linea `0xdb1214...bf0cbf`; blast [`0x0248b9...9cfe4b`](./contracts/blast-81457/0x0248b992ac2a75294b05286e9dd3a2bd3c9cfe4b/); blast `0x8346a8...5955f1`; blast `0xb62399...090a71`; blast `0xd44939...58758f` | ⚠️ Unaudited |
| ICHIVaultDepositGuardExtendedForMFD | core_logic | celo | 3 deployments: celo [`0x141db8...1d9f25`](./contracts/celo-42220/0x141db85183ddb07dee22c33846aebde2101d9f25/); celo `0xb066a0...9029c3`; celo `0xdb771e...d6fccc` | ⚠️ Unaudited |
| ICHIVaultFactory | registry | linea | 58 deployments: ethereum `0x5a40df...f26112`; ethereum `0x8dd509...715094`; ethereum `0xeaec81...832b3e`; bsc `0x065356...0f51b7`; bsc `0x131c03...5c241d`; bsc `0x605932...aded6b`; bsc `0xac9314...f5d501`; bsc `0xbbb97d...f46ad3`; polygon `0x117005...db6e8a`; polygon `0x2538d7...9b1bd8`; polygon `0x2d2c72...a73fc0`; polygon `0xaf2afc...55da24`; polygon `0xb2f44d...2a5da7`; sonic `0x318603...8f7002`; sonic `0x34513e...2d8b5f`; sonic `0x7d18f2...542eb9`; opbnb `0xadda3a...6035f1`; mantle `0x797ebb...432433`; mantle `0x92bce3...effe5b`; mantle `0xbbb97d...f46ad3`; mantle `0xdd2346...9dc72d`; base `0x24430e...5eef74`; base `0x28cf3b...4c97b7`; base `0x2b52c4...00280a`; base `0x51a0d7...e57959`; base `0xabe5b5...8ab3b3`; base `0xba0967...0c187e`; base `0xfbf389...607065`; mode `0x9fab4b...d7418f`; arbitrum `0x0ac9e4...fd47f7`; arbitrum `0x1cc05b...0aa3f4`; arbitrum `0x7984d3...0df151`; arbitrum `0xac9314...f5d501`; arbitrum `0xba4c7b...50e6bc`; arbitrum `0xedac86...fb44a6`; arbitrum `0xfbf389...607065`; celo `0x1f9563...0838e6`; celo `0x2f4b48...36d085`; celo `0x7df494...14e975`; celo `0x82dca6...e33870`; celo `0x8d05f6...3eb92a`; celo `0x9fab4b...d7418f`; celo `0xb3bf88...d3e5bf`; avalanche `0x2e76a8...7fedd6`; avalanche `0x932e19...b95c5e`; avalanche `0xdd2346...9dc72d`; linea [`0x0248b9...9cfe4b`](./contracts/linea-59144/0x0248b992ac2a75294b05286e9dd3a2bd3c9cfe4b/); linea `0x259268...00195e`; linea `0x6e3eb9...772b53`; linea `0xa29f3d...4f544e`; linea `0xb0e787...70a6e7`; linea `0xbf38e4...599819`; blast `0x1b0ef0...a4cd63`; blast `0x2145b1...1ead93`; blast `0x9fab4b...d7418f`; blast `0xb42d59...114f15`; scroll `0x9fab4b...d7418f`; scroll `0xb42d59...114f15` | ⚠️ Unaudited |
| ICHIVaultHelper | core_logic | sonic | [`0xd4b27a...27ee39`](./contracts/sonic-146/0xd4b27ae6e3d6c95c57bd26de9e346f7fb727ee39/) | ⚠️ Unaudited |
| ICHIVaultMigrationGuard | operational_periphery | celo | [`0x7ba715...90bb56`](./contracts/celo-42220/0x7ba715350fa7d3120712b4ab1e3fc89f9090bb56/) | ⚠️ Unaudited |
| IchiVaultSettingsV1 | core_logic | ethereum | 6 deployments: ethereum [`0x13198f...38341f`](./contracts/ethereum-1/0x13198fb5cdde6aa5e1c1145f1b41b1028338341f/); ethereum `0x505477...0f2f1e`; ethereum `0xc5ad95...acb110`; bsc `0x2536d3...5fba3e`; polygon `0x310c54...9ee053`; polygon `0x454130...c606c2` | ⚠️ Unaudited |
| Incremental | unknown | ethereum | 2 deployments: ethereum [`0x58254b...7c82e2`](./contracts/ethereum-1/0x58254b405e85359fc7eb3b8856ba82a4dd7c82e2/); polygon `0x6f85eb...31fd8b` | ⚠️ Unaudited |
| K3PR | unknown | ethereum | [`0x9fd4df...2d3ed8`](./contracts/ethereum-1/0x9fd4df9dc332d029f5b80c2be1ad47bb592d3ed8/) | ⚠️ Unaudited |
| MaxPriceOracle | operational_periphery | ethereum | [`0x40e2bf...c80ecc`](./contracts/ethereum-1/0x40e2bfa76856d922097a100906c54fc2d3c80ecc/) | ⚠️ Unaudited |
| MaxPriceOracleBsc | operational_periphery | bsc | [`0xe30a42...1a7dd9`](./contracts/bsc-56/0xe30a4227dc09539cca9913ca935dae96891a7dd9/) | ⚠️ Unaudited |
| MaxPriceOraclePolygon | operational_periphery | polygon | [`0x7f039b...40770f`](./contracts/polygon-137/0x7f039bebcf1eb0fa9cff5edb8ad277150140770f/) | ⚠️ Unaudited |
| MemoLogs | unknown | ethereum | [`0x699f06...694876`](./contracts/ethereum-1/0x699f0635379c5026f8ef921ec4a1b05fb1694876/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | [`0x6e3eb9...772b53`](./contracts/ethereum-1/0x6e3eb904966b0158833852cafd1200c171772b53/) | ⚠️ Unaudited |
| Mooniswap | unknown | ethereum | [`0x1dce26...d9f3a5`](./contracts/ethereum-1/0x1dce26f543e591c27717e25294aebbf59ad9f3a5/) | ⚠️ Unaudited |
| MultiFeeDistributionFactory | registry | arbitrum | 8 deployments: arbitrum [`0x07ee54...f5ebdb`](./contracts/arbitrum-42161/0x07ee54286f65c05d94a4badd095614dba3f5ebdb/); arbitrum `0x46cfd2...55d66e`; arbitrum `0xe976cd...3c481a`; celo `0x5ccf5a...581afd`; celo `0x772960...3790b3`; celo `0xb005d5...0002fc`; celo `0xe734a1...e73017`; celo `0xf251d0...38eb5a` | ⚠️ Unaudited |
| MultiSigWallet | governance | ethereum | 23 deployments: ethereum [`0x005a4d...b19826`](./contracts/ethereum-1/0x005a4d6edd48ef4cf1354cb4b6f6bc6dc2b19826/); ethereum `0x177db9...d2830b`; ethereum `0x240f3f...fab65e`; ethereum `0x31b636...e9723b`; ethereum `0x4f8af8...cbbeac`; ethereum `0x51a3ac...3875a6`; ethereum `0x589411...4e4658`; ethereum `0x6d3bf5...4c8146`; ethereum `0x79e7cc...10dd26`; ethereum `0x7af136...0393ee`; ethereum `0x84af4a...55df19`; ethereum `0x8c4b31...3aecfb`; ethereum `0x9d0357...7f3010`; ethereum `0xad0483...d24036`; ethereum `0xb43c50...737a88`; ethereum `0xb7f230...cf341c`; ethereum `0xc39e56...86051d`; ethereum `0xc7a965...070acc`; ethereum `0xc9eaa9...dc0f31`; ethereum `0xcc1aac...f9db75`; ethereum `0xd046ee...36e177`; ethereum `0xd498c8...06f5b8`; ethereum `0xe2b1b8...d329cd` | ⚠️ Unaudited |
| MultiTokenFeeSplitterFactory | operational_periphery | bsc | [`0x97d1cd...999957`](./contracts/bsc-56/0x97d1cd59a917a6ffaf141996653647d048999957/) | ⚠️ Unaudited |
| NullController | governance | ethereum | 2 deployments: ethereum [`0x81c993...08630e`](./contracts/ethereum-1/0x81c9932bd9a87e454710ef83551ac32dd808630e/); polygon `0xfaa2e7...a07f30` | ⚠️ Unaudited |
| oneBTC | unknown | ethereum | [`0xc88f47...777c37`](./contracts/ethereum-1/0xc88f47067db2e25851317a2fdae73a22c0777c37/) | ⚠️ Unaudited |
| oneETH | unknown | ethereum | 3 deployments: ethereum [`0x2e6559...620e6b`](./contracts/ethereum-1/0x2e65593392589a780dc36784ac44c9be37620e6b/); ethereum `0x6fcbbb...eeb6e1`; ethereum `0xec0d77...085868` | ⚠️ Unaudited |
| oneFactor | unknown | ethereum | [`0x7aa827...cfbe60`](./contracts/ethereum-1/0x7aa8272ffe20fe3984d8a233a5ba2e8c63cfbe60/) | ⚠️ Unaudited |
| OneInch | unknown | ethereum | [`0x111111...20c302`](./contracts/ethereum-1/0x111111111117dc0aa78b770fa6a738034120c302/) | ⚠️ Unaudited |
| oneINCHICHIPowah | unknown | ethereum | [`0x9f4938...c5ebc8`](./contracts/ethereum-1/0x9f493813d4ea0328d263bdcd8d486e914ec5ebc8/) | ⚠️ Unaudited |
| OneINCHOracle | operational_periphery | ethereum | [`0x2a3a04...4d86ad`](./contracts/ethereum-1/0x2a3a0409c31db62f229973a521771c1de24d86ad/) | ⚠️ Unaudited |
| oneINCHPowah | unknown | ethereum | [`0x74a531...4c1cc1`](./contracts/ethereum-1/0x74a53159a3e73df5ee024a4af9bf1cfa2f4c1cc1/) | ⚠️ Unaudited |
| oneLINK | unknown | ethereum | [`0x18cc17...e2a2cf`](./contracts/ethereum-1/0x18cc17a1eed37c02a77b0b96b7890c7730e2a2cf/) | ⚠️ Unaudited |
| OneTokenFactory | registry | polygon | 2 deployments: ethereum `0xd00926...a6a36a`; polygon [`0x101eb1...bfc879`](./contracts/polygon-137/0x101eb16bdba37979a771c86e1caafbadbabfc879/) | ⚠️ Unaudited |
| OneTokenV1 | token | ethereum | 2 deployments: ethereum [`0x14356b...bc108d`](./contracts/ethereum-1/0x14356bf935d6a62f3b87ab89f729217599bc108d/); polygon `0x2e76a8...7fedd6` | ⚠️ Unaudited |
| oneVBTC | unknown | ethereum | [`0x7bd198...edbc4c`](./contracts/ethereum-1/0x7bd198b9107496fd5cc3d7655af52f43a8edbc4c/) | ⚠️ Unaudited |
| oneWING | unknown | ethereum | 2 deployments: ethereum [`0x8f041a...0e1618`](./contracts/ethereum-1/0x8f041a3940a5e6fb580075c3774e15fcfa0e1618/); ethereum `0xc58596...597657` | ⚠️ Unaudited |
| oracle_oneWING_USDC | operational_periphery | ethereum | [`0x3d469b...021930`](./contracts/ethereum-1/0x3d469bcb945d0c58759fa3bb4b8ddca23a021930/) | ⚠️ Unaudited |
| oracle_pWING_USD | operational_periphery | ethereum | [`0x480dab...0e1b55`](./contracts/ethereum-1/0x480dab56f09a7f79a825b23bd2bfe0035a0e1b55/) | ⚠️ Unaudited |
| OwlswapFactory | registry | bsc | 3 deployments: bsc [`0x07c607...95f166`](./contracts/bsc-56/0x07c607056b1acd7b3f2cebeb44187f722695f166/); bsc `0xb8cf7e...62e1e3`; bsc `0xe71473...cedbf6` | ⚠️ Unaudited |
| QuoterV1 | periphery | celo | 4 deployments: celo [`0x6d7fc9...e0b0c2`](./contracts/celo-42220/0x6d7fc94c5106a64a43b80fe8e4b3704d6ce0b0c2/); celo `0xb1fa72...7bd171`; celo `0xc7ea64...02d9af`; celo `0xe1962f...0f8f85` | ⚠️ Unaudited |
| RenFILOracle | operational_periphery | ethereum | [`0x9d136a...42a22a`](./contracts/ethereum-1/0x9d136a1733b152bd8b1f87d267ca23525c42a22a/) | ⚠️ Unaudited |
| RewardCampaignDistributor | operational_periphery | arbitrum | [`0x3ab392...3dd262`](./contracts/arbitrum-42161/0x3ab392793914a1dfd90bb7dca4ecb487983dd262/) | ⚠️ Unaudited |
| RewardCampaignDistributorFactory | operational_periphery | arbitrum | [`0xf231af...ea7395`](./contracts/arbitrum-42161/0xf231afdbcdd6a0cb391888f5951a40a643ea7395/) | ⚠️ Unaudited |
| ScopeGuard | governance | ethereum | 2 deployments: ethereum [`0x0718cd...1bf015`](./contracts/ethereum-1/0x0718cd20c7f7482cf776ee15364d1ef7051bf015/); ethereum `0x7c0557...13f73c` | ⚠️ Unaudited |
| SwapRouter | adapter | bsc | 3 deployments: bsc [`0x265a26...6af4bb`](./contracts/bsc-56/0x265a26af68fd815c91714831b0d7ecc0c86af4bb/); bsc `0xa9b6b3...18e7aa`; bsc `0xf4dfcb...ff2157` | ⚠️ Unaudited |
| SymbolLib | unknown | celo | 4 deployments: celo [`0x52a60f...ce2471`](./contracts/celo-42220/0x52a60fa5092f92b96d1a007eedfcd349d6ce2471/); celo `0xa2969b...494db7`; celo `0xad8408...40b780`; celo `0xbed3ce...9de85e` | ⚠️ Unaudited |
| Timelock | governance | ethereum | [`0x3881f0...05d6bb`](./contracts/ethereum-1/0x3881f0db85d2ba0ba419ddaa267f93419305d6bb/) | ⚠️ Unaudited |
| TokenBalance | token | ethereum | [`0x134fb1...aeb01a`](./contracts/ethereum-1/0x134fb1b3b3519187a43be9789e7ac5473caeb01a/) | ⚠️ Unaudited |
| TopUp | unknown | ethereum | [`0xf41c29...abce24`](./contracts/ethereum-1/0xf41c294de081afe43e39d21f27bd93d6a6abce24/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | 2 deployments: ethereum [`0x9cd028...28d069`](./contracts/ethereum-1/0x9cd028b1287803250b1e226f0180eb725428d069/); ethereum `0xd07d43...55b20c` | ⚠️ Unaudited |
| USD1Token | token | ethereum | [`0x199921...1e2e7f`](./contracts/ethereum-1/0x199921335fa1cab3454042e8e839fdb0581e2e7f/) | ⚠️ Unaudited |
| UV3Math | unknown | mode | 50 deployments: ethereum `0x13f01f...cb8230`; ethereum `0x75f540...f99726`; ethereum `0xd8d146...a29248`; bsc `0x7087dd...356103`; bsc `0x9fab4b...d7418f`; bsc `0xa23a22...b4cdc6`; bsc `0xc030be...754ad3`; polygon `0x932e19...b95c5e`; polygon `0xa02b39...c87231`; polygon `0xcf1ebe...b0068a`; sonic `0x6aad66...53524e`; sonic `0x85a4dd...583c55`; sonic `0xdb03e0...431fac`; opbnb `0x242cd1...ab65de`; mantle `0x30673b...b20f87`; mantle `0x921acc...cbb2aa`; mantle `0x9fab4b...d7418f`; mantle `0xbc43f2...0c0a5a`; base `0xb177cf...5a04e2`; base `0xbf60a8...e057a1`; mode [`0x065cb8...6ea031`](./contracts/mode-34443/0x065cb8139e9fed6c97f8b0851e599c56286ea031/); arbitrum `0x1566fe...1724d5`; arbitrum `0x2536d1...ce8694`; arbitrum `0x6dc9b3...289532`; arbitrum `0x764bf1...955d63`; arbitrum `0xaf216f...46df1a`; arbitrum `0xbf60a8...e057a1`; arbitrum `0xc030be...754ad3`; celo [`0x065cb8...6ea031`](./contracts/celo-42220/0x065cb8139e9fed6c97f8b0851e599c56286ea031/); celo `0x3b5fbc...4e0d3b`; celo `0x460812...898738`; celo `0x7a4ae8...8ede18`; celo `0x7f659c...e3dc06`; celo `0xa45a0a...3d883d`; celo `0xacdeab...35a3a6`; celo `0xafec07...dadf69`; celo `0xb9b42b...626dcc`; celo `0xf6b5ab...045fa6`; celo `0xfa0263...1b97c5`; avalanche `0xfbf389...607065`; linea `0x1dfbc5...a11548`; linea `0x7cd09b...1deffa`; linea `0x9fd678...16d564`; linea `0xa7e0fb...ca84f6`; linea `0xa9554b...0862ea`; linea `0xe02768...0ce869`; blast [`0x065cb8...6ea031`](./contracts/blast-81457/0x065cb8139e9fed6c97f8b0851e599c56286ea031/); blast `0x0b10e4...dc31ea`; blast `0x8492bc...0f3ae6`; blast `0xe57392...5f2cd3` | ⚠️ Unaudited |
| VaultCreate | core_logic | ethereum | 2 deployments: ethereum [`0x64ea7f...11e52a`](./contracts/ethereum-1/0x64ea7f100f0062d86ea2eae112dec221f011e52a/); ethereum `0xcd96ed...02ee52` | ⚠️ Unaudited |
| VaultLocker | core_logic | celo | 7 deployments: sonic `0x6613f6...344a4e`; sonic `0x765c21...9eef75`; sonic `0xccd6d4...a6cfa2`; celo [`0x0de3ba...31658c`](./contracts/celo-42220/0x0de3ba021a151030f344f8d05595672bbe31658c/); celo `0x2a8d03...d0e337`; celo `0x7f2eaf...ad8a65`; celo `0xd2c08d...5837b3` | ⚠️ Unaudited |
| VaultSlippageCheckV2 | core_logic | celo | [`0x69bf65...d44e2a`](./contracts/celo-42220/0x69bf658252d8fd535a28a5cb477abe42a2d44e2a/) | ⚠️ Unaudited |
| VaultSlippageCheckV2_1 | core_logic | celo | [`0xaa650b...157158`](./contracts/celo-42220/0xaa650baa871269952b12a8ed8fa88d5c64157158/) | ⚠️ Unaudited |
| VaultSlippageCheckV3 | core_logic | celo | [`0xcec871...4b7da8`](./contracts/celo-42220/0xcec8716cdd60856eacaa74d499abd14ae34b7da8/) | ⚠️ Unaudited |
| VolatilityCheck | unknown | sonic | 3 deployments: sonic [`0x3f77a0...0f5ea4`](./contracts/sonic-146/0x3f77a086280c3299a9fdaaa702e2a4036f0f5ea4/); celo `0x4eecd2...11d6da`; celo `0x6c2e26...74e72e` | ⚠️ Unaudited |
| xICHIPowah | unknown | ethereum | 2 deployments: ethereum [`0x5897e2...2208ed`](./contracts/ethereum-1/0x5897e2121183404a225f80647a1bc11a362208ed/); ethereum `0x65e1a3...a5ee6c` | ⚠️ Unaudited |
| xICHIPriceOracle | operational_periphery | ethereum | [`0x75d0b5...90ec9d`](./contracts/ethereum-1/0x75d0b5025ef5bb96d7c9c4ff54a254a20790ec9d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (3)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ProxyAdmin | governance | polygon | 36 deployments: ethereum `0x11923c...e9c3af`; ethereum `0x2022ef...4d0558`; ethereum `0x91fa65...e70955`; ethereum `0xa20a53...e91c04`; bsc `0xe02768...0ce869`; bsc `0xfd96f3...54428c`; polygon [`0x0169d4...470f9a`](./contracts/polygon-137/0x0169d443624972f3949be72683478bcc5e470f9a/); polygon `0xb7b928...8b96a5`; sonic `0x315685...523dc8`; sonic `0x532ec6...33c285`; sonic `0x62a7d1...265da1`; mantle `0x0248b9...9cfe4b`; mantle `0x84bbdd...c47430`; mantle `0xa74b06...97c348`; mantle `0xe02768...0ce869`; base `0x1b0ef0...a4cd63`; base `0xbbb97d...f46ad3`; mode `0x2d2c72...a73fc0`; arbitrum `0x2d2c72...a73fc0`; arbitrum `0x34204a...59cc8a`; arbitrum `0xa54eb6...6bd8b9`; arbitrum `0xf87475...7ec53b`; celo `0x2fb241...d7a931`; celo `0xb978c5...f1a415`; avalanche `0x2fb241...d7a931`; avalanche `0xadda3a...6035f1`; avalanche `0xe2381b...a31f26`; linea `0x1c4063...323411`; linea `0x705d45...309ad9`; linea `0xadda3a...6035f1`; linea `0xb5c3fa...05481a`; linea `0xc5ad95...acb110`; blast `0x2fb241...d7a931`; blast `0x3f5744...8d9503`; blast `0x605932...aded6b`; blast `0x921acc...cbb2aa` | ⚠️ Unaudited (bytecode match) |
| RebalancerFactory | adapter | celo | 46 deployments: ethereum `0x40af9b...d52f10`; ethereum `0x98896f...15f798`; bsc `0x229095...232087`; bsc `0x726535...caefe5`; bsc `0x7f039b...40770f`; bsc `0xc43b93...002721`; bsc `0xcf60db...f9388f`; bsc `0xd67985...84721c`; bsc `0xfaa2e7...a07f30`; polygon `0x2f662b...6adc2b`; polygon `0x7f86b5...76d108`; polygon `0xb44095...af86ec`; polygon `0xbd80bd...f45b7f`; sonic `0x1e3b3f...2623ac`; sonic `0x56326f...d3eaf2`; sonic `0xe7edc3...1d266e`; mantle `0x6aa1e3...effb98`; mantle `0x6f85eb...31fd8b`; mantle `0xb4514a...11a808`; mantle `0xe2381b...a31f26`; base `0x2d2c72...a73fc0`; base `0xf8b3f6...ff765e`; arbitrum `0x2fb241...d7a931`; arbitrum `0x3e6952...9eb01c`; arbitrum `0x6aa1e3...effb98`; arbitrum `0x6e93de...ab2dea`; arbitrum `0x8c261c...f102ef`; arbitrum `0x9ecd84...eb264d`; arbitrum `0xf93a1a...6327e5`; celo [`0x101eb1...bfc879`](./contracts/celo-42220/0x101eb16bdba37979a771c86e1caafbadbabfc879/); celo `0x16eb8e...b96483`; celo `0x215d61...e3a50c`; celo `0x606332...016d05`; celo `0x83ee90...edc23f`; celo `0xe04ba7...cbbef3`; celo `0xfa196a...e5c234`; avalanche [`0x101eb1...bfc879`](./contracts/avalanche-43114/0x101eb16bdba37979a771c86e1caafbadbabfc879/); linea `0x1afb48...9b0b03`; linea `0x3e6952...9eb01c`; linea `0x5799df...c5db2e`; linea `0x98e6cc...db93a1`; linea `0xbb7a3d...ee2e73`; blast [`0x101eb1...bfc879`](./contracts/blast-81457/0x101eb16bdba37979a771c86e1caafbadbabfc879/); blast `0x153d91...4a5298`; blast `0x9fd678...16d564`; blast `0xf3145e...380e5b` | ⚠️ Unaudited (bytecode match) |
| RebalancerFactory | adapter | avalanche | 9 deployments: sonic `0x0f3a3f...75b642`; sonic `0x4e5fff...27a411`; sonic `0x9176b8...9f19b5`; mantle `0x967768...23bd7b`; mantle `0xa5fd4e...208153`; mantle `0xae4cfe...71c836`; mantle `0xfaa2e7...a07f30`; avalanche [`0x0248b9...9cfe4b`](./contracts/avalanche-43114/0x0248b992ac2a75294b05286e9dd3a2bd3c9cfe4b/); avalanche `0xbb7a3d...ee2e73` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (501)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x481be66de423b6a0df368b526713ba632ef23add) | proxy | opbnb | `0x51803f...e39b08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x047479...51fc5e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0511f5...413e89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x080e42...5bf17f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x08804d...ba1a8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x088f0d...41c698` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0ab313...761ffa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0b0e06...07f657` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0dfeef...583405` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x107b45...fa2993` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x107bb6...45314a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x12f4a3...1e3d7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x13e11a...88db3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x14f219...7db425` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x165804...98b45d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x188c65...9f0aed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1afb48...9b0b03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1c2dea...70f87b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1d5cbc...d80393` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x20e518...798d66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x21a13b...773e5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x21c83b...19f6ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x22fe8a...bd7220` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x23146b...ffaa6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x25d4ba...37388e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x270dd6...c6d29b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x28d055...8b7fad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x293be8...e36cae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x331ae2...a4a6f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3324b3...c91f0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x33ffdc...c0e241` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x340ff6...b3fc35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x36bf4c...d8e30b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x378879...65a926` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3d75b3...b4909b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4205a8...3d1924` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x423ef1...12e55a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4263cd...3fc5f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x43bc9d...d4516a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x44e867...77711e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4b3707...e3763c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4dfa3d...1ab100` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x53dd55...9f0d7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5428c1...22a200` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x54a584...f9605f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x55e748...0a8312` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x580949...5ba762` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5b4146...5cbda6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5b6786...c67dca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5ca947...83591a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x646143...896b07` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x66fc74...8a9db1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6af1f5...20a9b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6b6649...38a8f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6b85c2...67e501` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6c5050...ebff19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6da3be...8e9828` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7184c7...f3ecca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x72d266...57106e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x73c30d...765f0a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x752d71...2cfb04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x772418...b14775` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7ccb2b...0f7fa8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7d89e4...4535c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8236dd...6ad9b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8ae385...8dc8e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8bb422...d719d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8e2e82...89ea54` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x934af7...0db936` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x941914...fa4a11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x97b155...64b103` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9f54f8...41fda9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa00f74...ec755f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa04052...8a1d04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa3338b...7a4eba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa5fd4e...208153` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa6fe71...f85bbd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa7d714...14e56d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaa105c...106e0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaffc27...37b1ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb4514a...11a808` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb8030a...05be25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb883d2...a2234a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xba2fd1...51db92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbbf6e0...66794e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbecd65...86863b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc0fdd9...84d11c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc22226...939a6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc6cf29...4363f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc7ee9a...d4d3d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc96559...994836` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcce7a4...5ba322` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd01ecc...e8516b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd0abb7...535bdf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd0bae9...8e2866` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd72cf0...559ee9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd7e955...b9d3c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdd701b...5d6d52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdf2bec...39cf6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe3f61b...b7a437` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe79cd6...3c38c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe8f4c7...c07807` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xed8705...f93976` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xedbe48...70bb56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeebbd3...562c17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeecb0c...231dc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf1f63b...b89448` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf2163e...a61e29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf30ecd...2aa110` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf480f7...5eada7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf5fdf5...403588` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf64f2a...e92c3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfc63b1...907d72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfeda93...a64ef1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xff28be...35e9f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x00501f...5b0673` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0b10e4...dc31ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x18674b...2cd87f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x250c8a...8be5e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x44f696...3d32cd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x58c977...a09254` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5dc2a9...8c1b80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7a0c9a...d890b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7f12f9...dd4f43` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x967768...23bd7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x98b60e...84447c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbc03c4...91a34b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcc6a77...50d7b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd4c0e1...8dfd7f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdebf48...af34d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe8532d...b8c23f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe94909...d28577` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xec9fc3...b111ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xeeb687...adee2a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0367b2...b47abf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x067ec6...93bf04` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x080e42...5bf17f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x088f0d...41c698` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0cba93...8c2219` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0f513c...c4dad4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x131c03...5c241d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1a4789...b32596` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1b941d...f2199b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1c4063...323411` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1dfbc5...a11548` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2145b1...1ead93` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x227abe...d80864` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x23146b...ffaa6f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x250c8a...8be5e7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2e7d49...e8a252` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x391dc9...d83cce` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3f5744...8d9503` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3f7c8e...2610f9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x40e2bf...c80ecc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x44f696...3d32cd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x48096f...54a6a1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x48d756...aa4aca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x49dd44...faf2e2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x58c977...a09254` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x59ff4f...bf31a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5f2a69...4135ff` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5f89ec...a51503` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5fa1cc...69cff8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x62824f...5c5f6b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x69ff83...364c60` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6a34c9...ad2b6e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6dc9b3...289532` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6f352c...2b999b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x70550d...dd9e1b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7087dd...356103` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x71338e...dd5f59` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x737ed2...a6fb48` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7cd09b...1deffa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7e3199...384a44` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8492bc...0f3ae6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x871c2b...1c7124` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x89ffda...fa5f34` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8c031f...f4d787` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8ce76d...bd2372` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8dd509...715094` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x976367...602e8b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9840fc...409310` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x98b60e...84447c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa1d9ac...ea52c7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa20596...c0c4ab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa5338d...0f3ec1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xac225b...881bc8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb4514a...11a808` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbc43f2...0c0a5a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbf78ef...e35980` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc030be...754ad3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc2643e...895f63` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcc7054...659ef0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcf60db...f9388f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcf99c2...fa8801` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd9104c...c43b5c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe67bef...b34064` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf38c0e...2e347b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf5fdf5...403588` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf9b0af...2775f6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfcee25...5c32a9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfd96f3...54428c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x043d91...60ce28` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x046c3b...ddbadd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x091998...0611ec` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x0dad5a...edee40` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x1a58d4...d024a1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x259743...4d6ade` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x28cf3b...4c97b7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x315b65...0f6973` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x318f30...b6bb69` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x355f8b...abc9fd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x3650a0...b7ed9b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x3aa31b...35f38d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x3db4dd...276ae2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x4a094b...0f98c2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x4a72de...8caa7a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x4c8c0d...53fc5f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x4d8f0b...562036` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x50893d...847bb7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x51339a...4fed93` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x5b92f4...af0cfe` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x5ccf5a...581afd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x5cfe73...bea1fa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x5d8153...df780c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x66717d...685653` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x749716...9fd59d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x7ef645...47b9a8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x886ef6...6c0e40` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x89ec55...53a623` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x8bc998...4905e2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x8ccd02...cd8182` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x8dd5e4...a929f5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x97bf8c...153037` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xa41fef...919559` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xaf1ffa...fafe28` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xb2ac18...9ff017` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xc7944f...e02b12` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xca3534...13730b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xccb051...d12405` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xcfea11...8b8d53` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xe7961f...170500` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xf0d899...d9fdb9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xf1d63f...dbfac8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xf6c0ee...745fc1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xf8d41b...04c613` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xf93a1a...6327e5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xfb57d8...32f3cc` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x1b0ef0...a4cd63` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x481be6...f23add` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x5507b5...98d8b7` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x7c6389...605f6d` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0xabe5b5...8ab3b3` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0xb1634b...5fb338` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x85a4dd...583c55` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x89ffda...fa5f34` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x932e19...b95c5e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xb62399...090a71` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xfbf389...607065` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x8a76c2...b94148` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x1721cb...8115b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x63703a...2535fa` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x860f38...1a146c` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x8ccd02...cd8182` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xe8532d...b8c23f` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x2d2c72...a73fc0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x23146b...ffaa6f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x236d67...03a211` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x2e76a8...7fedd6` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x3119d2...d79981` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x3ed0ab...246cf4` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x550ed3...d334dc` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x57c9d9...a079df` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x62fd18...4774c2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x7984d3...0df151` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x860f38...1a146c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x88d0cc...0a1e85` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x89cd0f...25153b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x9ff0bc...8b0901` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xa08544...ffc958` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xa23a22...b4cdc6` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xb90ca9...8c78af` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xbb7a3d...ee2e73` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xd9272a...a66ee1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xdfd2dd...4ceb24` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xe95c25...d5580f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xeaaa9b...0557d7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xeeb687...adee2a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0248b9...9cfe4b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x02f4a9...ccfcf5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x101eb1...bfc879` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2e76a8...7fedd6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6f85eb...31fd8b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x921acc...cbb2aa` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdd2346...9dc72d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf3145e...380e5b` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x242cd1...ab65de` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x62fd18...4774c2` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x6f85eb...31fd8b` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xadda3a...6035f1` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xe02768...0ce869` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xfbf389...607065` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0ad4d2...d7389c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0f513c...c4dad4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0fd993...29e3fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x101eb1...bfc879` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x183e90...b79f91` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1d2110...e3b074` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1e4a5d...297225` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x20021b...011a47` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2185b0...c6dc82` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x246e22...098d78` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x288f5b...5313ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2ab2c4...ae52ea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3b6518...e14c77` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3be786...a4e5f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3e5685...ce1aec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3f77a0...0f5ea4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x423f21...4479c2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4cfa9d...72aa01` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x50c670...3adb65` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x59ce31...c77c70` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5d8153...df780c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5f89ec...a51503` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x61a19b...c87b9d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x641da3...4a4cdc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6d3d2c...bf3caa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6e03bc...0f0d08` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7debd5...5c3c34` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x84bbdd...c47430` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x924b26...bb596c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x944344...b67b2d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x950fb7...1bf35c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa20a53...e91c04` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa5ce10...eb05a4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xad6c5e...cbdf63` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbfe8d4...c3973e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcc28a0...318e26` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcf8393...45433c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd36084...d4e014` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdc9afd...ba73bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdef802...cb5220` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdfad75...9ce816` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe13c30...500d05` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe3a469...3d7755` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe79140...5e914b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe872ea...d213a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf19a52...26e50a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf251d0...38eb5a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf38c0e...2e347b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfb98a7...e5b114` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfca3b4...867f03` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x05043e...87947b` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x0c551e...9da944` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x0e9a6b...d28a9c` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x0ffba7...083b09` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x130666...ab6788` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x14380c...f2d796` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x1657a6...0e1a02` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x16edb1...348ef8` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x178369...3000b3` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x17f1a5...6fad11` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x1919c1...dc2163` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x204f7c...25f0d2` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x22b2a7...57e875` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x242cd1...ab65de` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x278719...ffe90c` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x288f5b...5313ac` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x34513e...2d8b5f` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x36a3f7...537b76` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x3bc85a...d0e909` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x3c568f...835663` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x3e5685...ce1aec` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x4238eb...1ab723` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x48e263...54693f` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x4dc520...086497` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x4f5202...1e4d79` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x500c17...a5ded8` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x513844...e27987` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x535117...fab0f8` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x56326f...d3eaf2` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x5df820...fe1001` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x66854c...62eece` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x683334...f9b689` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x6aad66...53524e` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x6b7ccf...27208a` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x6dbb1e...866fd7` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x6dc696...ad61e2` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x6f6b1b...90e106` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x7582ce...26809a` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x7a3bf3...10d04c` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x808baa...5dd2ea` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x822b0b...093618` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x8244fd...8d11ad` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x838602...1c2119` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x858405...0c78ae` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x8e8aa5...2ad7e6` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x92b1ba...63629c` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x945193...1d640a` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x974ea7...7fc0ad` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x994969...44369c` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x998f04...9ac395` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x99fb98...4a8c8d` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x9a0ebe...4dc8d8` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x9bd308...241f76` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x9ff36c...5bf847` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa21139...ba4f42` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa24c23...45fca6` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa287a2...13e9d4` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa8b1ba...4819dc` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xae7b34...f0b6c0` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xb108b4...db86ef` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xb5fb13...a8b025` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xb838c2...4d07ce` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xbb1385...6a6e01` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xbdd005...754dd5` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xc1de90...f475f4` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xc2ddc7...2e261e` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xc4dcae...36b4ce` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xc9dcd7...53bb42` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xca1d96...0d87b2` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd39809...bedd4a` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd3db08...947894` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd4d56d...d695e3` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd59966...8fe2aa` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd8322b...91b08c` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xdeb87c...ccf879` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xdf5fea...766529` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe02768...0ce869` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe14209...5dbedd` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe1c415...a998e1` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe5fa9c...09a8da` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe7948b...77ab55` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe7cb9d...2e9e6d` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xed0819...3371df` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xf2bf7b...d32d5c` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xf4113f...46c90a` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xf891c4...6db75d` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xfaa2e7...a07f30` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xfc7efd...4d5ed9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0b10e4...dc31ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0e44f5...bc0e7e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x153d91...4a5298` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x435b65...736771` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x481be6...f23add` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5507b5...98d8b7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x57c9d9...a079df` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x605932...aded6b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x860f38...1a146c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x89ffda...fa5f34` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x921acc...cbb2aa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x95507f...942c6d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x967768...23bd7b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa23a22...b4cdc6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb177cf...5a04e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb42d59...114f15` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbf38e4...599819` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe57392...5f2cd3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf3145e...380e5b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfaa2e7...a07f30` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x02f4a9...ccfcf5` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x0e44f5...bc0e7e` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x1bcb70...139dc2` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x27d533...dafbf0` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x3b5fcb...4d9114` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x3ed0ab...246cf4` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x481be6...f23add` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x48d756...aa4aca` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x5507b5...98d8b7` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x5ea3d9...171475` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x726535...caefe5` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x7e3199...384a44` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x7f039b...40770f` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x81c785...843510` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x8346a8...5955f1` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x89cd0f...25153b` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x933090...cfd92f` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xa1d9ac...ea52c7` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xa20596...c0c4ab` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xb09b07...5f3263` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xbda111...16ffe8` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xc43b93...002721` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xd67985...84721c` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xeea907...b06c10` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xf2163e...a61e29` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x138361...076724` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x15ba62...bf3785` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x19e8f7...aa90ab` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x633762...76469c` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x6e3eb9...772b53` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x7e3199...384a44` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x879c95...7d0555` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x967768...23bd7b` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xa00bcf...64dbb8` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xadda3a...6035f1` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xbf38e4...599819` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xdb1214...bf0cbf` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xe02768...0ce869` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xe10823...793534` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xe12772...b48ead` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xfaa2e7...a07f30` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [CertiK Audit Report for ICHI - FarmV2.pdf](https://github.com/ichifarm/ichi-farming/blob/main/audits/CertiK%20Audit%20Report%20for%20ICHI%20-%20FarmV2.pdf) | CertiK | Audit | 2021-04 | stale | Direct | contract_name | 2 | high |
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x164a12...172153`](./contracts/ethereum-1/0x164a1229f4826c9dd70ee3d9f4f3d7b68a172153/) | SmartToken | token | $35,943,712.62 | Verified native implementation with $35,943,712.62 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55922f...ac4cb7`](./contracts/ethereum-1/0x55922fa5084f9367b73fc0df9163b089d8ac4cb7/) | RiskHarborStrategy | core_logic | $170,612.84 | Verified native implementation with $170,612.84 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x289dc4...9df1cd`](./contracts/celo-42220/0x289dc4313997f78f04c2959a9a50aec4739df1cd/) | AegisVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x16dfbb...9fde29`](./contracts/celo-42220/0x16dfbb3f6c2a7a3ed697f7233b3e83001a9fde29/) | AegisVaultERC20 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x51a0d7...e57959`](./contracts/celo-42220/0x51a0d74e1791399ce02aafd9a21dc4637fe57959/) | AegisVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1aa1e6...6952ef`](./contracts/ethereum-1/0x1aa1e61369874bae3444a8ef6528d6b13d6952ef/) | Ally | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f5744...8d9503`](./contracts/ethereum-1/0x3f57443040cc438d5d6108fd024dfbfd048d9503/) | AllySwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1faac4...102c13`](./contracts/ethereum-1/0x1faac4842054f2db2dddfc8152d7c259d5102c13/) | Arbitrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e76a8...7fedd6`](./contracts/ethereum-1/0x2e76a8d053f839a04235341df1f25235437fedd6/) | ArbitraryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b10e4...dc31ea`](./contracts/ethereum-1/0x0b10e483aac4340256772754d23131b6e0dc31ea/) | ArbitraryV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fa1cc...69cff8`](./contracts/ethereum-1/0x5fa1cc03be296cd63d99351c3112609cb269cff8/) | Batcher | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c261c...f102ef`](./contracts/ethereum-1/0x8c261c87288dd5e2dc462fa0fd4c6399a7f102ef/) | bnICHIPowah | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbbc797...f89710`](./contracts/ethereum-1/0xbbc79794599b19274850492394004087cbf89710/) | CrowdsaleController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ed0ab...246cf4`](./contracts/ethereum-1/0x3ed0abc49569dce331ba7d3706b462d194246cf4/) | ETHVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25a862...7031ce`](./contracts/ethereum-1/0x25a862691978b47071244227ff77969bc27031ce/) | ETHVaultWithSlippage | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x51803f...e39b08`](./contracts/polygon-137/0x51803f621c5e90011de58b57fd5b7a92e0e39b08/) | ExtendedArbitrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x8fd003...9d2c3e`](./contracts/linea-59144/0x8fd003f7c10ebd1431df50d88d9aba06dd9d2c3e/) | FeeSplitterFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5f957...ac5838`](./contracts/ethereum-1/0xc5f957496d0d2a4331405270d1ea3ae78dac5838/) | FixedTokenPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1dfbc5...a11548`](./contracts/ethereum-1/0x1dfbc56f3c26e93adde335e1472c2a27b3a11548/) | GasChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x151874...7d374e`](./contracts/ethereum-1/0x15187432d28d8ee94957a3277a51708b707d374e/) | genericFarmV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x903bef...67a881`](./contracts/ethereum-1/0x903bef1736cddf2a537176cf3c64579c3867a881/) | Ichi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43f1ca...ffbb83`](./contracts/ethereum-1/0x43f1cacdacd3fa65dbcbd56604b90e077fffbb83/) | ICHIBancorInsurance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a6255...d13fd8`](./contracts/ethereum-1/0x4a62552d0896a16cd1607c6ec03cbde97ed13fd8/) | IchiBuyer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x371be9...4248ab`](./contracts/ethereum-1/0x371be922a89fbb160b1387dc0d3b61c1014248ab/) | IchiBuyer2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x022086...4293ca`](./contracts/ethereum-1/0x0220864a5c899b0848a5797ca84b34cc494293ca/) | ICHICompositeOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ce22f...9f96e6`](./contracts/ethereum-1/0x7ce22f910dbd79741a14648157e465889a9f96e6/) | ichiEthOracleWrapper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc5095...d9b000`](./contracts/ethereum-1/0xcc50953a743b9ce382f423e37b07efa6f9d9b000/) | ichiFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c49fc...515014`](./contracts/ethereum-1/0x7c49fc7110ef49d080f1d0cfc57fad5f21515014/) | ICHIFarmPowah | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd41ea2...138139`](./contracts/ethereum-1/0xd41ea28e17bd06136c416ca942fb997122138139/) | ICHIOracleAggregator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xbb7a3d...ee2e73`](./contracts/polygon-137/0xbb7a3d439abf42cf39837f9102f987bab3ee2e73/) | ICHIPeggedOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x553827...127474`](./contracts/ethereum-1/0x5538277f8d08e79e3f3e531267422bb55b127474/) | ICHIPOWAH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06899b...ba8a9d`](./contracts/ethereum-1/0x06899b9092ab29ab197c1588b326b13812ba8a9d/) | ICHIPOWAHV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe0191c...d9a150`](./contracts/ethereum-1/0xe0191c950b2c19d7a470b00c59969c17fcd9a150/) | ICHISpotOracleUSDBancor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70605a...ab467e`](./contracts/ethereum-1/0x70605a6457b0a8fbf1eee896911895296eab467e/) | IchiStake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x111111...6bc4d6`](./contracts/ethereum-1/0x111111517e4929d3dcbdfa7cce55d30d4b6bc4d6/) | IchiV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x00501f...5b0673`](./contracts/arbitrum-42161/0x00501f23965512eab62c0bfd085d7f0e745b0673/) | ICHIVaultDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x0248b9...9cfe4b`](./contracts/blast-81457/0x0248b992ac2a75294b05286e9dd3a2bd3c9cfe4b/) | ICHIVaultDepositGuard | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x141db8...1d9f25`](./contracts/celo-42220/0x141db85183ddb07dee22c33846aebde2101d9f25/) | ICHIVaultDepositGuardExtendedForMFD | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0248b9...9cfe4b`](./contracts/linea-59144/0x0248b992ac2a75294b05286e9dd3a2bd3c9cfe4b/) | ICHIVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xd4b27a...27ee39`](./contracts/sonic-146/0xd4b27ae6e3d6c95c57bd26de9e346f7fb727ee39/) | ICHIVaultHelper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x7ba715...90bb56`](./contracts/celo-42220/0x7ba715350fa7d3120712b4ab1e3fc89f9090bb56/) | ICHIVaultMigrationGuard | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13198f...38341f`](./contracts/ethereum-1/0x13198fb5cdde6aa5e1c1145f1b41b1028338341f/) | IchiVaultSettingsV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x58254b...7c82e2`](./contracts/ethereum-1/0x58254b405e85359fc7eb3b8856ba82a4dd7c82e2/) | Incremental | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9fd4df...2d3ed8`](./contracts/ethereum-1/0x9fd4df9dc332d029f5b80c2be1ad47bb592d3ed8/) | K3PR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40e2bf...c80ecc`](./contracts/ethereum-1/0x40e2bfa76856d922097a100906c54fc2d3c80ecc/) | MaxPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe30a42...1a7dd9`](./contracts/bsc-56/0xe30a4227dc09539cca9913ca935dae96891a7dd9/) | MaxPriceOracleBsc | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7f039b...40770f`](./contracts/polygon-137/0x7f039bebcf1eb0fa9cff5edb8ad277150140770f/) | MaxPriceOraclePolygon | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x07ee54...f5ebdb`](./contracts/arbitrum-42161/0x07ee54286f65c05d94a4badd095614dba3f5ebdb/) | MultiFeeDistributionFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x97d1cd...999957`](./contracts/bsc-56/0x97d1cd59a917a6ffaf141996653647d048999957/) | MultiTokenFeeSplitterFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81c993...08630e`](./contracts/ethereum-1/0x81c9932bd9a87e454710ef83551ac32dd808630e/) | NullController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc88f47...777c37`](./contracts/ethereum-1/0xc88f47067db2e25851317a2fdae73a22c0777c37/) | oneBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e6559...620e6b`](./contracts/ethereum-1/0x2e65593392589a780dc36784ac44c9be37620e6b/) | oneETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7aa827...cfbe60`](./contracts/ethereum-1/0x7aa8272ffe20fe3984d8a233a5ba2e8c63cfbe60/) | oneFactor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9f4938...c5ebc8`](./contracts/ethereum-1/0x9f493813d4ea0328d263bdcd8d486e914ec5ebc8/) | oneINCHICHIPowah | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a3a04...4d86ad`](./contracts/ethereum-1/0x2a3a0409c31db62f229973a521771c1de24d86ad/) | OneINCHOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x74a531...4c1cc1`](./contracts/ethereum-1/0x74a53159a3e73df5ee024a4af9bf1cfa2f4c1cc1/) | oneINCHPowah | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18cc17...e2a2cf`](./contracts/ethereum-1/0x18cc17a1eed37c02a77b0b96b7890c7730e2a2cf/) | oneLINK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x101eb1...bfc879`](./contracts/polygon-137/0x101eb16bdba37979a771c86e1caafbadbabfc879/) | OneTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14356b...bc108d`](./contracts/ethereum-1/0x14356bf935d6a62f3b87ab89f729217599bc108d/) | OneTokenV1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7bd198...edbc4c`](./contracts/ethereum-1/0x7bd198b9107496fd5cc3d7655af52f43a8edbc4c/) | oneVBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f041a...0e1618`](./contracts/ethereum-1/0x8f041a3940a5e6fb580075c3774e15fcfa0e1618/) | oneWING | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d469b...021930`](./contracts/ethereum-1/0x3d469bcb945d0c58759fa3bb4b8ddca23a021930/) | oracle_oneWING_USDC | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x480dab...0e1b55`](./contracts/ethereum-1/0x480dab56f09a7f79a825b23bd2bfe0035a0e1b55/) | oracle_pWING_USD | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0248b9...9cfe4b`](./contracts/avalanche-43114/0x0248b992ac2a75294b05286e9dd3a2bd3c9cfe4b/) | RebalancerFactory | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3ab392...3dd262`](./contracts/arbitrum-42161/0x3ab392793914a1dfd90bb7dca4ecb487983dd262/) | RewardCampaignDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf231af...ea7395`](./contracts/arbitrum-42161/0xf231afdbcdd6a0cb391888f5951a40a643ea7395/) | RewardCampaignDistributorFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x265a26...6af4bb`](./contracts/bsc-56/0x265a26af68fd815c91714831b0d7ecc0c86af4bb/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x52a60f...ce2471`](./contracts/celo-42220/0x52a60fa5092f92b96d1a007eedfcd349d6ce2471/) | SymbolLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3881f0...05d6bb`](./contracts/ethereum-1/0x3881f0db85d2ba0ba419ddaa267f93419305d6bb/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x134fb1...aeb01a`](./contracts/ethereum-1/0x134fb1b3b3519187a43be9789e7ac5473caeb01a/) | TokenBalance | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf41c29...abce24`](./contracts/ethereum-1/0xf41c294de081afe43e39d21f27bd93d6a6abce24/) | TopUp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x199921...1e2e7f`](./contracts/ethereum-1/0x199921335fa1cab3454042e8e839fdb0581e2e7f/) | USD1Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x065cb8...6ea031`](./contracts/mode-34443/0x065cb8139e9fed6c97f8b0851e599c56286ea031/) | UV3Math | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x64ea7f...11e52a`](./contracts/ethereum-1/0x64ea7f100f0062d86ea2eae112dec221f011e52a/) | VaultCreate | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x0de3ba...31658c`](./contracts/celo-42220/0x0de3ba021a151030f344f8d05595672bbe31658c/) | VaultLocker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x69bf65...d44e2a`](./contracts/celo-42220/0x69bf658252d8fd535a28a5cb477abe42a2d44e2a/) | VaultSlippageCheckV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xaa650b...157158`](./contracts/celo-42220/0xaa650baa871269952b12a8ed8fa88d5c64157158/) | VaultSlippageCheckV2_1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xcec871...4b7da8`](./contracts/celo-42220/0xcec8716cdd60856eacaa74d499abd14ae34b7da8/) | VaultSlippageCheckV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3f77a0...0f5ea4`](./contracts/sonic-146/0x3f77a086280c3299a9fdaaa702e2a4036f0f5ea4/) | VolatilityCheck | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5897e2...2208ed`](./contracts/ethereum-1/0x5897e2121183404a225f80647a1bc11a362208ed/) | xICHIPowah | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75d0b5...90ec9d`](./contracts/ethereum-1/0x75d0b5025ef5bb96d7c9c4ff54a254a20790ec9d/) | xICHIPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 168 |
| upstream | 23 |
| standard_library | 6 |
| needs_review | 419 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Zero-match audit list:

- [6949] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [6950] 0002-metadata-manifest-and-pull-command.md
- [6951] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
