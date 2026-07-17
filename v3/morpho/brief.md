# Agentic Audit Brief: Morpho

## Export Authority

- Production state: **published scope**
- Raw selected rows: 54 across 17 audit(s)
- Eligible audit results: 33 (17 matched; 16 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Morpho (`morpho`)
- Website: [https://morpho.org/](https://morpho.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, celo, cronos, ethereum, fraxtal, gnosis, hyperliquid, ink, kaia, linea, mode, optimism, plasma, polygon, scroll, sei, sepolia, sonic, unichain
- Contract surface: 395 unique implementations (395 raw deployments)
- Coverage basis: 16/30 confirmed own live verified implementations (53.3%); conservative 53.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $13,812,833,277.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Morpho. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 30 contract row(s) across arbitrum, avalanche, base, bsc, celo, cronos, ethereum, gnosis, hyperliquid, ink, kaia, linea, mode, optimism, plasma, polygon, scroll, sei, sepolia, sonic, unichain. Structural roles: 28 core, 2 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 30
- Structural roles: core (28), supporting (2)
- Contract kinds: contract (30)
- Detected standards: multicall (7), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (16), solmate (10), permit2 (8), chainlink (1), layerzero (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

8 of 236 contracts are derived from known codebases. 228 contracts have no detected origin.

### Forked Contracts

**AaveV2MigrationBundler** (`0xb3dcc75db379925edfd3007511a8ce0cb4aa8e76`, chain 1)
Origin: singularv (`0xb3dcc75db379925edfd3007511a8ce0cb4aa8e76`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AaveV3MigrationBundler** (`0x98ccb155e86bb478d514a827d16f58c6912f9bdc`, chain 1)
Origin: morpho (`0x3a0e2e9fb9c95fbc843daf166276c90b6c479558`)
Containment: 88.5% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- aaveV3Repay(address,uint256,uint256)
- aaveV3Withdraw(address,uint256)

Removals (removed from original):
- compoundV3AllowBySig(address,bool,uint256,uint256,uint8,bytes32,bytes32,bool)
- compoundV3Repay(address,uint256)
- compoundV3WithdrawFrom(address,address,uint256)

**AaveV3OptimizerMigrationBundler** (`0x16f38d2e764e7bebf625a8e995b34968226d2f9c`, chain 1)
Origin: singularv (`0xb3dcc75db379925edfd3007511a8ce0cb4aa8e76`)
Containment: 82.1% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- aaveV3OptimizerApproveManagerWithSig(bool,uint256,uint256,Signature,bool)
- aaveV3OptimizerRepay(address,uint256)
- aaveV3OptimizerWithdraw(address,uint256,uint256)
- aaveV3OptimizerWithdrawCollateral(address,uint256)

Removals (removed from original):
- aaveV2Repay(address,uint256,uint256)
- aaveV2Withdraw(address,uint256)
- stakeEth(uint256,uint256,address)
- unwrapStEth(uint256)
- wrapStEth(uint256)

**CompoundV2MigrationBundler** (`0x26bf52a84360ad3d01d7cdc28fc2ddc04d8c8647`, chain 1)
Origin: morpho (`0x16f38d2e764e7bebf625a8e995b34968226d2f9c`)
Containment: 85.2% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- compoundV2Redeem(address,uint256)
- compoundV2Repay(address,uint256)
- unwrapNative(uint256)
- wrapNative(uint256)

Removals (removed from original):
- aaveV3OptimizerApproveManagerWithSig(bool,uint256,uint256,Signature,bool)
- aaveV3OptimizerRepay(address,uint256)
- aaveV3OptimizerWithdraw(address,uint256,uint256)
- aaveV3OptimizerWithdrawCollateral(address,uint256)

**CompoundV3MigrationBundler** (`0x3a0e2e9fb9c95fbc843daf166276c90b6c479558`, chain 1)
Origin: morpho (`0x16f38d2e764e7bebf625a8e995b34968226d2f9c`)
Containment: 85.2% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- compoundV3AllowBySig(address,bool,uint256,uint256,uint8,bytes32,bytes32,bool)
- compoundV3Repay(address,uint256)
- compoundV3WithdrawFrom(address,address,uint256)

Removals (removed from original):
- aaveV3OptimizerApproveManagerWithSig(bool,uint256,uint256,Signature,bool)
- aaveV3OptimizerRepay(address,uint256)
- aaveV3OptimizerWithdraw(address,uint256,uint256)
- aaveV3OptimizerWithdrawCollateral(address,uint256)

**EthereumBundler** (`0xa7995f71aa11525db02fc2473c37dee5dbf55107`, chain 1)
Origin: singularv (`0xa7995f71aa11525db02fc2473c37dee5dbf55107`)
Containment: 100.0% - 32 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**EthereumBundlerV2** (`0x4095f064b8d3c3548a3bebfd0bbfd04750e30077`, chain 1)
Origin: singularv (`0x4095f064b8d3c3548a3bebfd0bbfd04750e30077`)
Containment: 100.0% - 33 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**EthereumGeneralAdapter1** (`0x4a6c312ec70e8747a587ee860a0353cd42be0ae0`, chain 1)
Origin: singularv (`0x4a6c312ec70e8747a587ee860a0353cd42be0ae0`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x3a7bb36ee3f3ee32a60e9f2b33c1e5f2e83ad766`, chain 1)
- UnnamedContract (`0x4011dc6581fa05f9b0c7a12adcd676e2b1a59ca3`, chain 1)
- UnnamedContract (`0x58d97b57bb95320f9a05dc918aef65434969c2b2`, chain 1)
- UnnamedContract (`0x870ac11d48b15db9a138cf899d20f13f79ba00bc`, chain 1)
- UnnamedContract (`0xb09e40ebe31b738fbf20289270a397118707d475`, chain 1)
- UnnamedContract (`0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb`, chain 1)
- UnnamedContract (`0xfd32fa2ca22c76dd6e550706ad913fc6ce91c75d`, chain 1)
- UnnamedContract (`0x0d68a97324e602e02799cd83b42d337207b40658`, chain 10)
- UnnamedContract (`0x1ec408d4131686f727f3fd6245cf85bc5c9dad70`, chain 10)
- UnnamedContract (`0x31f539f4ed14fa1fd18781e93f6739249692adc5`, chain 10)
- UnnamedContract (`0x3bb6a6a0bc85b367efe0a5bac81c5e52c892839a`, chain 10)
- UnnamedContract (`0x6128b680b277bf4df80dfe9d8c55a498660870ef`, chain 10)
- UnnamedContract (`0x71b299bdb52b6396429cd1e11c418324502cb434`, chain 10)
- UnnamedContract (`0x79481c87f24a3c4332442a2e9faaf675e5f141f0`, chain 10)
- UnnamedContract (`0x8cd70a8f399428456b29546bc5dbe10ab6a06ef6`, chain 10)
- UnnamedContract (`0xce95afbb8ea029495c66020883f87aae8864af92`, chain 10)
- UnnamedContract (`0xd1346be260cd22eab9e6163010b0d5cbfaaad32b`, chain 10)
- UnnamedContract (`0xe41aecb4570a7b68d15a4fb0a03acee421a21498`, chain 10)
- UnnamedContract (`0xee9f7c64dd827ed7b5caa2272936366faca00cf3`, chain 10)
- UnnamedContract (`0xfbcd3c258feb131d8e038f2a3a670a7be0507c05`, chain 10)
- UnnamedContract (`0x05519a0835a1bfd90f110aa7ca46e9a5f81ed3b4`, chain 25)
- UnnamedContract (`0x1db002c086439d55b9f33e6c0693eb850f7c0607`, chain 25)
- UnnamedContract (`0x295e0ab80f8234398cd0e51c85d873ee69e5f0dd`, chain 25)
- UnnamedContract (`0x44b2c8e4474751ef2bbc57b92928afb99da785de`, chain 25)
- UnnamedContract (`0x8840f99bb2d4f69fb02b2d019384c5c98a11746c`, chain 25)
- UnnamedContract (`0xb1c59fe6a0dce25b804f6113c441bf4f3a4ab6bc`, chain 25)
- UnnamedContract (`0xca470cbbc3de56fde336466f2107cc969174d513`, chain 25)
- UnnamedContract (`0xdf9a1dc07e5dee5ccccabec35e446c70faf7434e`, chain 25)
- UnnamedContract (`0xe39f6b5dd03f4ce8c201b946e662e653d94fa121`, chain 25)
- UnnamedContract (`0xea67e5566ca2c0176d9db172a7f9a1e1f22e9d3a`, chain 25)
- UnnamedContract (`0xfeabef95f3c937ff4d5fd70005cf3392f8ca02d5`, chain 25)
- UnnamedContract (`0x16d40b9df1497468195bfafeb2718e486e15bf91`, chain 56)
- UnnamedContract (`0x7112d95cb5f6b13bf5f5b94a373bb3b2b381f979`, chain 56)
- UnnamedContract (`0x842beccf8ebc11006c4be96defe09b60326d0495`, chain 56)
- UnnamedContract (`0x87c93660ece6e68c6492eabbbbdbaafa102ae3a3`, chain 56)
- UnnamedContract (`0x92983687e672ca6d96530f9dbe11a196ce905d72`, chain 56)
- UnnamedContract (`0xbb12b012fa31f7fe418236caf625713edc852f82`, chain 56)
- UnnamedContract (`0xdf2035fc15919588526dbb5560863c812f135236`, chain 56)
- UnnamedContract (`0x2ac3ea771547926d4714078e807efbef70d0997f`, chain 100)
- UnnamedContract (`0x6f3313a395fb09a56502710ab75cf69fb692270a`, chain 100)
- UnnamedContract (`0x832625f5c0aad4bc14d39291156d37898a40973b`, chain 100)
- UnnamedContract (`0x8ffd9e3a4b02d217c3ebb5e48e64f748d7476c32`, chain 100)
- UnnamedContract (`0xae529333703c34b8976bab9d04af3f0b9cff05c5`, chain 100)
- UnnamedContract (`0xb74d4dd451e250bc325aff0556d717e4e2351c66`, chain 100)
- UnnamedContract (`0xff3623eadb1dd8590b902fa23bacfab3c361bf68`, chain 100)
- UnnamedContract (`0x43269546e1d586a1f7200a0ac07e26f9631f7539`, chain 130)
- UnnamedContract (`0x617f8d7885cce689115af04576f7cb6f2534fa9a`, chain 130)
- UnnamedContract (`0x72cc7a247f389d327bc898420837477fb4a57cc4`, chain 130)
- UnnamedContract (`0x7dd85759182495af7f6757da75036d24a9b58bc3`, chain 130)
- UnnamedContract (`0x8f5ae9cddb9f68de460c77730b018ae7e04a140a`, chain 130)
- UnnamedContract (`0x9a13bda35f98811fbacf097966b2c838f3f9c58c`, chain 130)
- UnnamedContract (`0x9a6061d51743b31d2c3be75d83781fa423f53f0e`, chain 130)
- UnnamedContract (`0xaa870da2a9f611a3a53d0d2aee5664b3700a59c9`, chain 130)
- UnnamedContract (`0xb0c9a107fa17c779b3378210a7a593e88938c7c9`, chain 130)
- UnnamedContract (`0xb9130d2a87d7c60ed7e7e4b25bda6e3e6841becb`, chain 130)
- UnnamedContract (`0xc11329d19c2275c9e759867e879ecfceed7e30a0`, chain 130)
- UnnamedContract (`0xc9b34c108014b44e5a189a830e7e04c56704a0c9`, chain 130)
- UnnamedContract (`0xe9ede3929f43a7062a007c3e8652e4aca610bdc0`, chain 130)
- UnnamedContract (`0xf1ab9e885c0faa0cbced407498bba895537ad754`, chain 130)
- UnnamedContract (`0x1bf0c2541f820e775182832f06c0b7fc27a25f67`, chain 137)
- UnnamedContract (`0x1ff7895eb842794c5d07c4c547b6730e61295215`, chain 137)
- UnnamedContract (`0x2d9c3a9e67c966c711208cc78b34fb9e9f8db589`, chain 137)
- UnnamedContract (`0x5f2617f12d1fdd1e43e72cb80c92dfce8124db8d`, chain 137)
- UnnamedContract (`0xa9c87dab340631c34bb738625c70499e29dddc98`, chain 137)
- UnnamedContract (`0xb261b51938a9767406ef83bbfbaafe16691b7047`, chain 137)
- UnnamedContract (`0xb70a43821d2707fa9d0edd9511cc499f468ba564`, chain 137)
- UnnamedContract (`0xc0006f52b38625c283dd2f972dd9b779a5851dd0`, chain 137)
- UnnamedContract (`0xc11a53ee9b1ecc7a068d8e40f8f17926584f97cf`, chain 137)
- UnnamedContract (`0xe675a2161d4a6e2de2eed70ac98eebf257fbf0b0`, chain 137)
- UnnamedContract (`0xeb174fea51da241eb3b516959b216e013de2888a`, chain 137)
- UnnamedContract (`0xfac15aff53add2ff80c2962127c434e8615df0d3`, chain 137)
- UnnamedContract (`0xfc5be756236feaf4297d3279bf6532bf100f0ac9`, chain 137)
- UnnamedContract (`0x0ce9e3512cb4df8ae7e265e62fb9258dc14f12e8`, chain 146)
- UnnamedContract (`0x31d5aee8d75eeab548cfa0d11c4f9843a5201eaf`, chain 146)
- UnnamedContract (`0x6cef2edc70d87e8f1623f3096eff05d066e59b36`, chain 146)
- UnnamedContract (`0x7da59fa482f1f49fadc486d8e47badc506feb86d`, chain 146)
- UnnamedContract (`0xb06f1ad8c908b958e596c42973f67f2f1d9a9aff`, chain 146)
- UnnamedContract (`0xd6c916eb7542d0ad3f18aed0fcbd50c582cfa95f`, chain 146)
- UnnamedContract (`0xdefcf242226425f93d8dd0e314735c28517c473f`, chain 146)
- UnnamedContract (`0xdfa21a9189425187ff6e44d7ebea19f64e8836ee`, chain 146)
- UnnamedContract (`0x517505be22d9068687334e69ae7a02fc77edf4fc`, chain 999)
- UnnamedContract (`0x68e37de8d93d3496ae143f2e900490f6280c57cd`, chain 999)
- UnnamedContract (`0x857b55ceb57da0c2a83ee08a8db529b931089aee`, chain 999)
- UnnamedContract (`0xa3f50477afa601c771874260a3b34b40e244fa0e`, chain 999)
- UnnamedContract (`0xaeff6ef4b7bbfbaadb18b634a8f11392cbeb72be`, chain 999)
- UnnamedContract (`0xd4a426f010986dcad727e8dd6eed44ca4a9b7483`, chain 999)
- UnnamedContract (`0xd7217e5687ff1071356c780b5fe4803d9d967da7`, chain 999)
- UnnamedContract (`0xd7f48ade56613e8605863832b7b8a1985b934ae4`, chain 999)
- UnnamedContract (`0xdf5202e29654e02011611a086f15477880580cac`, chain 999)
- UnnamedContract (`0xeb476f124fad625178759d13557a72394a6f9af5`, chain 999)
- UnnamedContract (`0xec051b19d654c48c357dc974376deb6272f24e53`, chain 999)
- UnnamedContract (`0x02e0e71e145f254820b9d89c9e6068f08256f601`, chain 1329)
- UnnamedContract (`0x4bd68c2ff3274207ec07ed281c915758b6f23f07`, chain 1329)
- UnnamedContract (`0x6efa8e3aa8279eb2fd46b6083a9e52da72ea56c4`, chain 1329)
- UnnamedContract (`0x8dea49ec5bd5aeac8bcf96b3e187f59354118291`, chain 1329)
- UnnamedContract (`0xc9cdac20fceaaf616f7eb0bb6cd2c69dcfa9094c`, chain 1329)
- UnnamedContract (`0xd878509446be2c601f0f032f501851001b159d6b`, chain 1329)
- UnnamedContract (`0xf9457356f18a3349bb317ac144c3bcc62e5761ad`, chain 1329)
- UnnamedContract (`0x27880b18ae04a05f1d603b87aeb2a27491ffaba9`, chain 8217)
- UnnamedContract (`0x3e89c1071814b2c4170c90260fcb60b903ad4602`, chain 8217)
- UnnamedContract (`0x4d04c39ca604b560c50f4045c558378fd9aebcf4`, chain 8217)
- UnnamedContract (`0x8e36c2c6d7771820bf14a75f725f3cf0374a7823`, chain 8217)
- UnnamedContract (`0xa4e2ba20fc64d721d95bd5a28ff71844c5bb5cf2`, chain 8217)
- UnnamedContract (`0xa8beebdca34d83c697c302a0594f3c41f3994cd2`, chain 8217)
- UnnamedContract (`0xf2aecd4a4d4c21d08770e34f392c4c271abd9144`, chain 8217)
- UnnamedContract (`0xfca12228da5fba6e9c0b57a8e8322d0ebaca03bc`, chain 8217)
- UnnamedContract (`0x123f3167a416ca19365de03a65e0af3532af7223`, chain 8453)
- UnnamedContract (`0x1f8076e2eb6f10b12e6886f30d4909a91969f7da`, chain 8453)
- UnnamedContract (`0x23055618898e202386e6c13955a58d3c68200bfb`, chain 8453)
- UnnamedContract (`0x4501125508079a99ebbebce205dec9593c2b5857`, chain 8453)
- UnnamedContract (`0x5400dbb270c956e8985184335a1c62aca6ce1333`, chain 8453)
- UnnamedContract (`0x5c2531cbd2cf112cf687da3cd536708add7db10a`, chain 8453)
- UnnamedContract (`0x6abe8abd0275e5564ed1336f0243a52c32562f71`, chain 8453)
- UnnamedContract (`0x6bfd8137e702540e7a42b74178a4a49ba43920c4`, chain 8453)
- UnnamedContract (`0x7276454fc1cf9c408deeed722fd6b5e7a4ca25d8`, chain 8453)
- UnnamedContract (`0x85d4812ef92c040d4270ed8547b6835e41fbbb70`, chain 8453)
- UnnamedContract (`0x9a1b378c43ba535cdb89934230f0d3890c51c0eb`, chain 8453)
- UnnamedContract (`0xa090dd1a701408df1d4d0b85b716c87565f90467`, chain 8453)
- UnnamedContract (`0xa9c3d3a366466fa809d1ae982fb2c46e5fc41101`, chain 8453)
- UnnamedContract (`0xb27aa2a964ead5ed661d86974b37e4fb995b36f5`, chain 8453)
- UnnamedContract (`0xb98c948cfa24072e58935bc004a8a7b376ae746a`, chain 8453)
- UnnamedContract (`0xbaa5cc21fd487b8fcc2f632f3f4e8d37262a0842`, chain 8453)
- UnnamedContract (`0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb`, chain 8453)
- UnnamedContract (`0xcae2929babc60be34818eaa5f40bf69265677108`, chain 8453)
- UnnamedContract (`0xdeef55f0a7366cc3baf5e04313269389fe17e9ae`, chain 8453)
- UnnamedContract (`0xf42d9c36b34c9c2cf3bc30ed2a52a90eeb604642`, chain 8453)
- UnnamedContract (`0xff62a7c278c62ed665133147129245053bbf5918`, chain 8453)
- UnnamedContract (`0x171b2807e8ce8fb853c37bc3c3b4805abf6f9896`, chain 9745)
- UnnamedContract (`0x2ff74a46536f5c67ef5a42fd5b4e2ed8a2cee249`, chain 9745)
- UnnamedContract (`0x42432f31d085ecb8d9c128092c84b084123c624e`, chain 9745)
- UnnamedContract (`0x5476aeee80d87649fdd8ee19ea65976f28525f7a`, chain 9745)
- UnnamedContract (`0x69410429099018fa1586aab0afadc525314f5830`, chain 9745)
- UnnamedContract (`0x6a7389f9d4fd199254479d6735aad7aa5d4db0ce`, chain 9745)
- UnnamedContract (`0xb241753668f929eb78a0069330c31305c0c83255`, chain 9745)
- UnnamedContract (`0xb41aa3e41131947f4cd070617c582c1f9604ed11`, chain 9745)
- UnnamedContract (`0xd7373d3597c26e7340b0612c938eefe6de02ab30`, chain 9745)
- UnnamedContract (`0xec6f72cf30fb5d3d0f9bea8509b61902cf3b1e45`, chain 9745)
- UnnamedContract (`0xf37f73028b5b4ebadc055deb24b1cde271cf0f71`, chain 9745)
- UnnamedContract (`0x063a8f498b4a1423c62be360007b7d9d0c60c481`, chain 34443)
- UnnamedContract (`0xae5b0884bfff430493d6c844b9fd052af7d79278`, chain 34443)
- UnnamedContract (`0xd85ce6bd68487e0aafb0858fde1cd18c76840564`, chain 34443)
- UnnamedContract (`0xe3d46ae190cb39cca3655e966dcef96b4eae1d1c`, chain 34443)
- UnnamedContract (`0xee868bf3359da30c10ea472eaebfc0a06e8f0120`, chain 34443)
- UnnamedContract (`0xf53925b95cc409447066cd5c1a7756084b2ee0a4`, chain 34443)
- UnnamedContract (`0xf9380f7898423bd7fde3c9fdd1b2671a2471f39d`, chain 34443)
- UnnamedContract (`0xfea0edfa081c8d5960ec9bf6684981db1834305d`, chain 34443)
- UnnamedContract (`0x1923670d4f4eb7435d865e7477d28feaffa40c93`, chain 42161)
- UnnamedContract (`0x1fa4431bc113d308bee1d46b0e98cb805fb48c13`, chain 42161)
- UnnamedContract (`0x40bd670a58238e6e230c430bbb5ce6ec0d40df48`, chain 42161)
- UnnamedContract (`0x66f30587fb8d4206918deb78eca7d5ebbafd06da`, chain 42161)
- UnnamedContract (`0x6b46fa3cc9ebf8ab230abac664e37f2966bf7971`, chain 42161)
- UnnamedContract (`0x6c247b1f6182318877311737bac0844baa518f5e`, chain 42161)
- UnnamedContract (`0x769583af5e9d03589f159ebec31cc2c23e8c355e`, chain 42161)
- UnnamedContract (`0x7b792ef7e91fbc78ef482e3bbb52193a73367fbf`, chain 42161)
- UnnamedContract (`0x86ca77a4a37a9cdbe9bbf4975f6d69531b96444b`, chain 42161)
- UnnamedContract (`0x878988f5f561081deea117717052164ea1ef0c82`, chain 42161)
- UnnamedContract (`0x98ce5d183dc0c176f54d37162f87e7ed7f2e41b5`, chain 42161)
- UnnamedContract (`0x9954afb60bb5a222714c478ac86990f221788b88`, chain 42161)
- UnnamedContract (`0xaa5c30c1482c189ca0d56057d3ac4dd7af1e4726`, chain 42161)
- UnnamedContract (`0xc00eb3c7ad1ae986a7f05f5a9d71aca39c763c65`, chain 42161)
- UnnamedContract (`0xd8fc8a85779551e78b516da9f74061cb3b086793`, chain 42161)
- UnnamedContract (`0xef84b1ecebe43283ec5af95d7a5c4d7de0a9859b`, chain 42161)
- UnnamedContract (`0xfc3329363cd51adbbaa52e389bee389981ccaae0`, chain 42161)
- UnnamedContract (`0x3a4849b5174dc6828c6dc9bbd87e61ed1ebe9ffa`, chain 42220)
- UnnamedContract (`0x3e7544a07157d03a49359ee89f2fcac9a6467230`, chain 42220)
- UnnamedContract (`0x3fe12193d178b76baf4e23a083a64e49acde3188`, chain 42220)
- UnnamedContract (`0x683caaaddfa2f42e24880e202676526d501a5ded`, chain 42220)
- UnnamedContract (`0x6870aa9f66c1e5efe8dbe8730e86e9e91f688275`, chain 42220)
- UnnamedContract (`0xbd142f98f847c170d51d8b23e5febc51fc9a67d9`, chain 42220)
- UnnamedContract (`0xd24ecdd8c1e0e57a4e26b1a7bbeaa3e95466a569`, chain 42220)
- UnnamedContract (`0x0ed0478946e00ca8bcf65475e7c8dfaca4a30005`, chain 43114)
- UnnamedContract (`0x66dc122cf454576684ad78a2800a8eb052b2e9a6`, chain 43114)
- UnnamedContract (`0x708e04d46d82d8f1d0a70a3aa0a780f27fcb3f92`, chain 43114)
- UnnamedContract (`0x895383274303aa19fe978afb4ac55c7f094f982c`, chain 43114)
- UnnamedContract (`0x8bcc016ab7334a16dccbee9ab3fd6e52feb29e96`, chain 43114)
- UnnamedContract (`0x9633d22bb8f42f6f70dbbbe34c11eb9209769b8b`, chain 43114)
- UnnamedContract (`0xb6ac9477d574ee2a7bf32d2475b303fb70968aa4`, chain 43114)
- UnnamedContract (`0xf0c1299d44b3803243d7c1eec2042e9484db13f2`, chain 43114)
- UnnamedContract (`0xf7b1d9e43baea3705f2b303693766acbcfec6a55`, chain 43114)
- UnnamedContract (`0x2884732d25b97090cab59d0d2b78cd9c85a83411`, chain 57073)
- UnnamedContract (`0x3fffe273ee348b9e1ef89533025c7f165b17b439`, chain 57073)
- UnnamedContract (`0x7db0f1e2bf1f47ec82220090f388d75d8b9bb6bc`, chain 57073)
- UnnamedContract (`0x85416891752a6b81106c1c2999ae1af5d8cd3357`, chain 57073)
- UnnamedContract (`0x857f3eefe8cbda3bc49367c996cd664a880d3042`, chain 57073)
- UnnamedContract (`0x9515407b1512f53388ffe699524100e7270ee57b`, chain 57073)
- UnnamedContract (`0xb8b2addcde1cdc94aae18a0f8a19df03d8683610`, chain 57073)
- UnnamedContract (`0xd3f39505d0c48afed3549d625982fdc38ea9904b`, chain 57073)
- UnnamedContract (`0x122ea8ff8888c29f8736665d576e3faef15d27d5`, chain 59144)
- UnnamedContract (`0x1ee8ec299e8014760d50a4e3cfc3b44cc2242625`, chain 59144)
- UnnamedContract (`0x2d4cf00e18d48fd030d9b1e2faae6e0384c7610b`, chain 59144)
- UnnamedContract (`0x3fff726062b03bfd5bc485eeeecc92cf1d8f0105`, chain 59144)
- UnnamedContract (`0x454dab6ce9891245696b239b4845a1cdc268255d`, chain 59144)
- UnnamedContract (`0x5dc11cf8ba4c39d1194f91218d35008d9f52a5d0`, chain 59144)
- UnnamedContract (`0x6b0d716ac0a45536172308e08fc2c40387262c9f`, chain 59144)
- UnnamedContract (`0x6faf26dd640e22457ca4fd5da702ba3e169eed87`, chain 59144)
- UnnamedContract (`0x85c2ef4bd69f42d7da19fb9dcdd7fb8d0f59cdee`, chain 59144)
- UnnamedContract (`0xa148a8223b622a72dc36472de1492abb5c089ba7`, chain 59144)
- UnnamedContract (`0xcab7c66f7191ad3ef1e7feeb67f3137bc975f8ce`, chain 59144)
- UnnamedContract (`0x2d012edbadc37edc2bc62791b666f9193fdf5a55`, chain 534352)
- UnnamedContract (`0x56b65742ade55015e6480959808229ad6dbc9295`, chain 534352)
- UnnamedContract (`0x60f9159d4dcd724e743212416fd57d8ac0b60768`, chain 534352)
- UnnamedContract (`0x78f44e1ed61210952b6e23d09c930bfa64a359c1`, chain 534352)
- UnnamedContract (`0x8a7f671e45e51de245649cf916ca0256fb8a9927`, chain 534352)
- UnnamedContract (`0xa5ea7500a27c0079961d93366a6e93aaff18cb90`, chain 534352)
- UnnamedContract (`0xb5961902e60b188b1c665b7b72ef616656a9e24e`, chain 534352)
- UnnamedContract (`0xd2780fae0869cdc06ee202152304a39653361525`, chain 534352)
- AaveV2MigrationAdapter (`0x40288815c399709dfc0875a384b637ffe387961b`, chain 1)
- AaveV3MigrationAdapter (`0x2cc8d502a65824b4cf9a58db03490ba024bdb806`, chain 1)
- AaveV3OptimizerMigrationAdapter (`0x9e2ea2d5785598a163d569d795f286f5c55ad972`, chain 1)
- AdaptiveCurveIrm (`0x46415998764c29ab2a25cbea6254146d50d22687`, chain 8453)
- Bundler3 (`0x6566194141eefa99af43bb5aa71460ca2dc90245`, chain 1)
- CompoundV2MigrationAdapter (`0x9b89c07f480df1945279031b5fc6ff241b8f1101`, chain 1)
- CompoundV3MigrationAdapter (`0xdba5bde29ea030bfa6a608592dfca1d02cb26773`, chain 1)
- ERC20WrapperAdapter (`0xf83d17dfe160597b19e4fdd8ea61a23e9a87f962`, chain 1)
- MetaMorphoFactory (`0xa9c3d3a366466fa809d1ae982fb2c46e5fc41101`, chain 1)
- MetaMorphoV1_1Factory (`0x1897a8997241c1cd4bd0698647e4eb7213535c24`, chain 1)
- Morpho (`0x01b0bd309aa75547f7a37ad7b1219a898e67a83a`, chain 56)
- MorphoChainlinkOracleV2Factory (`0x2dc205f24bcb6b311e5cdf0745b0741648aebd3d`, chain 8453)
- MorphoMarketV1AdapterV2Factory (`0x32bb1c0d48d8b1b3363e86eeb9a0300bad61ccc1`, chain 1)
- MorphoOFTAdapter (`0x50d3d6fd7518682155e3c1b65fdd50e1b35649d9`, chain 1)
- MorphoToken (`0x9994e35db50125e0df82e4c2dde62496ce330999`, chain 1)
- MorphoVaultV1AdapterFactory (`0xd1b8e2dee25c2b89dcd2f98448a7ce87d6f63394`, chain 1)
- ParaswapAdapter (`0x03b5259bd204bfd4a616e5b79b0b786d90c6c38f`, chain 1)
- RegistryList (`0x3696c5eae4a7ffd04ea163564571e9cd8ed9364e`, chain 1)
- UniversalRewardsDistributor (`0x330eefa8a787552dc5cad3c3ca644844b1e61ddb`, chain 1)
- UrdFactory (`0x9baa51245cdd28d8d74afe8b3959b616e9ee7c8d`, chain 1)
- VaultV2Factory (`0xa1d94f746defa1928926b84fb2596c06926c0405`, chain 1)
- Wrapper (`0x9d03bb2092270648d7480049d0e58d2fcf0e5123`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 30; live-surface rows included: 30 (30 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 236/806 live.
- Detected codebases: aave-v2, compound-v2
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 16/30 (53.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 236 own, 8 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 151 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 15 standard proxy/library)
- Proxy deployments represented within implementation groups: 23
- Confirmed-live implementations: 236 of 395 unique; 159 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 16/181
- Verified + Unaudited implementations: 165
- Verified by bytecode match: 0
- Unverified implementations: 214
- Unique implementations: 395
- Raw deployments: 395
- Audits discovered: 30 (30 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 15
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 9 fresh, 9 aging, 11 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 16 match-unverified
- Tier 1 coverage: 53.3% (Certora, ChainSecurity, OpenZeppelin, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 13 | 7.2% | 2025-12 |
| OpenZeppelin | Tier 1 | 11 | 6.1% | 2025-01 |
| Blackthorn | Tier 2 | 2 | 1.1% | 2025-12 |
| Certora | Tier 1 | 2 | 1.1% | 2025-12 |
| ChainSecurity | Tier 1 | 2 | 1.1% | 2025-09 |
| Zellic | Tier 2 | 1 | 0.6% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV2MigrationBundler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249152 | `0xb3dcc75db379925edfd3007511a8ce0cb4aa8e76` | ✅ Audited |
| AaveV3MigrationBundler | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249710 | `0x98ccb155e86bb478d514a827d16f58c6912f9bdc` | ✅ Audited |
| AaveV3OptimizerMigrationBundler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248927 | `0x16f38d2e764e7bebf625a8e995b34968226d2f9c` | ✅ Audited |
| AdaptiveCurveIrm | unknown | project_anchor | own_supporting | 0 | base | unit-249640 | `0x46415998764c29ab2a25cbea6254146d50d22687` | ✅ Audited |
| CompoundV2MigrationBundler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248944 | `0x26bf52a84360ad3d01d7cdc28fc2ddc04d8c8647` | ✅ Audited |
| CompoundV3MigrationBundler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248976 | `0x3a0e2e9fb9c95fbc843daf166276c90b6c479558` | ✅ Audited |
| EthereumBundler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249128 | `0xa7995f71aa11525db02fc2473c37dee5dbf55107` | ✅ Audited |
| MetaMorphoFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249134 | `0xa9c3d3a366466fa809d1ae982fb2c46e5fc41101` | ✅ Audited |
| MetaMorphoV1_1Factory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248931 | `0x1897a8997241c1cd4bd0698647e4eb7213535c24` | ✅ Audited |
| Morpho | unknown | project_anchor | own_supporting | 0 | bsc | unit-249558 | `0x01b0bd309aa75547f7a37ad7b1219a898e67a83a` | ✅ Audited |
| MorphoMarketV1AdapterV2Factory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248966 | `0x32bb1c0d48d8b1b3363e86eeb9a0300bad61ccc1` | ✅ Audited |
| MorphoVaultV1AdapterFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249186 | `0xd1b8e2dee25c2b89dcd2f98448a7ce87d6f63394` | ✅ Audited |
| RegistryList | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248971 | `0x3696c5eae4a7ffd04ea163564571e9cd8ed9364e` | ✅ Audited |
| UniversalRewardsDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248967 | `0x330eefa8a787552dc5cad3c3ca644844b1e61ddb` | ✅ Audited |
| UrdFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249110 | `0x9baa51245cdd28d8d74afe8b3959b616e9ee7c8d` | ✅ Audited |
| VaultV2Factory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249118 | `0xa1d94f746defa1928926b84fb2596c06926c0405` | ✅ Audited |

### ⚠️ Verified + Unaudited (165)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV2MigrationAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248991 | `0x40288815c399709dfc0875a384b637ffe387961b` | ⚠️ Unaudited |
| AaveV3MigrationAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248952 | `0x2cc8d502a65824b4cf9a58db03490ba024bdb806` | ⚠️ Unaudited |
| AaveV3OptimizerMigrationAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249113 | `0x9e2ea2d5785598a163d569d795f286f5c55ad972` | ⚠️ Unaudited |
| AccessControlledAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00c7a37b03690fb9f41b5c5af8131735c7275446` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00260db07a22a6a5182213d8de1aba0705a6cd78` | ⚠️ Unaudited |
| Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b8b84d5f89378eb7f902031b6006dd6c0eeae4d` | ⚠️ Unaudited |
| AggregatorFacade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x010b33ce6fe3c65e8c873d91be0bcb3de36c0a67` | ⚠️ Unaudited |
| ArbitrumValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31982c9e5edd99bb923a948252167ea4bbc38ac1` | ⚠️ Unaudited |
| ArbMCBv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdb967d37651532dbac06ec3bcf8e548d43f2d7ca` | ⚠️ Unaudited |
| BulkerGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf99e3796f94000462f736925cf32162fea82c168` | ⚠️ Unaudited |
| Bundler3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249028 | `0x6566194141eefa99af43bb5aa71460ca2dc90245` | ⚠️ Unaudited |
| CallbackRegister | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3ce83753671e520751238785ea6648d1476e7a31` | ⚠️ Unaudited |
| CelerBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba20fb9d03e0e974fc54e37417c1f7f6a01622f2` | ⚠️ Unaudited |
| CErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x158079ee67fce2f58472a96584a73c7ab9ac95c1` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5d3a536e4d6dbd6114cc1ead35777bab948e3643` | ⚠️ Unaudited |
| CEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5` | ⚠️ Unaudited |
| Claimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x328f5db55ac2b280b1bdfd65b8ea4726452a3ad5` | ⚠️ Unaudited |
| CollateralPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x019234ee55a1fc89015d9b90d2777a9ce6ae6af3` | ⚠️ Unaudited |
| CollateralPoolAumReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c6a2809604c170f57dc8361915db97931a25747` | ⚠️ Unaudited |
| CollateralPoolEventEmitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x36abade2d25cd909718d45f513151374cc24242b` | ⚠️ Unaudited |
| CompoundV2MigrationAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249109 | `0x9b89c07f480df1945279031b5fc6ff241b8f1101` | ⚠️ Unaudited |
| CompoundV3MigrationAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249203 | `0xdba5bde29ea030bfa6a608592dfca1d02cb26773` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x178053c06006e67e09879c09ff012ff9d263df29` | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e1b5a40edc922bce489668b11749b8eabd67f6b` | ⚠️ Unaudited |
| CPoR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x575a16cd2305ad7171f5c1036c3506070df28c51` | ⚠️ Unaudited |
| DegenFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc6b1908c4995cacda30302c458f72ea395977216` | ⚠️ Unaudited |
| DelayedERC4626Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x363fffe9e293df351fec24bde69954c472c52321` | ⚠️ Unaudited |
| Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x138c39789be9a065d989d167441b3f9479d2de7d` | ⚠️ Unaudited |
| Diamond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x53b47240f9725c9baf4637a1196b1700cfbde744` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01ee7ac4dcd8e680b6a2223921bb9cdcd28e7f10` | ⚠️ Unaudited |
| DiamondInit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x040375a92da214e396205e95cb162213c574ecb3` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x146e291d96bf1a6a9178e18ee9d81133b129ebed` | ⚠️ Unaudited |
| Disperse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x081e9e52bba6575e0fd36c6db6dd3ae6de7cd4fe` | ⚠️ Unaudited |
| DualBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f2ceadda587491dd513a82cd0fecb896e2880f4` | ⚠️ Unaudited |
| DummyFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3866d726c204c0836e0677a31973c649888973d` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00a773bd2ce922f866bb43ab876009fb959d7c29` | ⚠️ Unaudited |
| ERC20WrapperAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249238 | `0xf83d17dfe160597b19e4fdd8ea61a23e9a87f962` | ⚠️ Unaudited |
| ERC4626Feed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d32736220291d20e927b891aba976c6fc89891f` | ⚠️ Unaudited |
| EthereumBundlerV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249709 | `0x4095f064b8d3c3548a3bebfd0bbfd04750e30077` | ⚠️ Unaudited |
| EthereumGeneralAdapter1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249002 | `0x4a6c312ec70e8747a587ee860a0353cd42be0ae0` | ⚠️ Unaudited |
| EventEmitter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x6c3a43eb0b374ca565f926d3e32e91e71ea48329` | ⚠️ Unaudited |
| Executor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72d2277c7242a4464d9b277cf682e350205e6938` | ⚠️ Unaudited |
| FacetClose | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0067eba29666801e93f925c09d52311c6a3d21ef` | ⚠️ Unaudited |
| FacetManagement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2fd65f6a2150b2648973645567e6c695052b1eff` | ⚠️ Unaudited |
| FacetMux3Owner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52162c310565868e76d60b3e1fc69cc4c0ad5189` | ⚠️ Unaudited |
| FacetOpen | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d5de4ca2413be62d73e68910c9d756aa04ab703` | ⚠️ Unaudited |
| FacetPositionAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0831319d1d4d717d0b21f78f61af90fb60b0d874` | ⚠️ Unaudited |
| FacetReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b552e5b71396fbdb2b370f012825ddbee37061f` | ⚠️ Unaudited |
| FacetTrade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2260b6bd2649c5a6fd2a5f3a3655b0b2b6424534` | ⚠️ Unaudited |
| FeedRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47fb2585d2c56fe188d0e6ec628a38b74fceeedf` | ⚠️ Unaudited |
| Firefighter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x213f30e50892dc90d8893618c656316b769ffb23` | ⚠️ Unaudited |
| Flags | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24ec8467ab20e0b3c11a0a3fa39ccba9ec3bdabf` | ⚠️ Unaudited |
| GainsReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39dd1bd008d2657e1b1c853f693fd4676f415d91` | ⚠️ Unaudited |
| GMORPHO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xda1c2c3c8fad503662e41e324fc644dc2c5e0ccd` | ⚠️ Unaudited |
| GmxAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x16e6006629f9c3be4d4b54972dd10f07b5864037` | ⚠️ Unaudited |
| GmxV2Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ce415cd823652954b3f5b8841d1bdf2919c2031` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5562024784cc914069d67d89a28e3201bf7b57e7` | ⚠️ Unaudited |
| JuniorBoostHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04b51ba79e7d19e011ef1db86bd340908a6e424b` | ⚠️ Unaudited |
| JuniorBoostHelperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x37c5da65017f35f172708f6cce3e850f279d5a80` | ⚠️ Unaudited |
| KeeperRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f75953c2661d3a0138fcd80551ea10b80dd08c7` | ⚠️ Unaudited |
| LendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x124dce3bfe55be7f9178c96cf6b5f928c409319e` | ⚠️ Unaudited |
| LibGmx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x11c0c4dd6ce692b2aa2d65da07aa38687f603bd9` | ⚠️ Unaudited |
| LibGmxV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb45dcbd209862d8f607862e719935f5c23329287` | ⚠️ Unaudited |
| LibLiquidity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2abad74605eff3d0c49fd70cd230d974afe2d206` | ⚠️ Unaudited |
| LibOrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05ec039f250b3df9088f60819bbef36eec2d262b` | ⚠️ Unaudited |
| LibOrderBook2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0035f6ca0417cd36eb62764bcbbe163e7d296059` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc88058aa7c210e23e6cc54baba7ba6c51479dd4d` | ⚠️ Unaudited |
| LiquidityPoolHop1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x245ba1e19e7a15dd903b6b9b2705d4bf308f481c` | ⚠️ Unaudited |
| LiquidityPoolHop2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32272d27e656446d64c880fa0d543b9c3dd9b5bc` | ⚠️ Unaudited |
| MarketEventUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x80c874e50017996106baf6d551ed9b0706e7587b` | ⚠️ Unaudited |
| MarketStoreUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x46ffa915d87bf915c2d01ac7d4c1c5338fa5acec` | ⚠️ Unaudited |
| MarketUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a2987c407e76782fc422a27240c9821206b8d9f` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf859a1ad94bcf445a406b892ef0d3082f4174088` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbeefc1cdafc5b4a649b54d07afc6bf0f75c6f4e2` | ⚠️ Unaudited |
| MetaOracleDeviationTimelockFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44d049eed4ad33807859c45bbd3a8eb47917a9f4` | ⚠️ Unaudited |
| Migration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x28f16eb86481066bf63bcbeb05c8474f7120a36c` | ⚠️ Unaudited |
| MlpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x085f5b8945426aa5e8239cd172070d0301fe33ba` | ⚠️ Unaudited |
| MockMux3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5857c758b3f40e99202a51710fc777ba78e4bd34` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95e85fef34b79f0030f41fb619733bf7e024bd87` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | unknown | project_anchor | own_supporting | 0 | base | unit-249636 | `0x2dc205f24bcb6b311e5cdf0745b0741648aebd3d` | ⚠️ Unaudited |
| MorphoHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dfcc04aa52b758c7a3b7ee0217e3d8b8f3d9329` | ⚠️ Unaudited |
| MorphoLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x526a27a974d8c8d4be6f34090d5025307d554661` | ⚠️ Unaudited |
| MorphoMarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68df94ff395729d537a9d2cdb72511cc7e93c61d` | ⚠️ Unaudited |
| MorphoOFTAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249007 | `0x50d3d6fd7518682155e3c1b65fdd50e1b35649d9` | ⚠️ Unaudited |
| MorphoReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16fc802c0d4b8076e69381e11308601b938b8cb5` | ⚠️ Unaudited |
| MorphoToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249104 | `0x9994e35db50125e0df82e4c2dde62496ce330999` | ⚠️ Unaudited |
| MorphoTokenEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4364fd2371b6318159366abfa51f190df5c24852` | ⚠️ Unaudited |
| Mux | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x454c4ea9e1593805c7d40f34e6e3c8c39ec20d8a` | ⚠️ Unaudited |
| Mux3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2c367d79d7c721a2c7a1e40bcf022b08ff252cd3` | ⚠️ Unaudited |
| Mux3FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x11a276fad46490052ecba26b9736441e9130bfd7` | ⚠️ Unaudited |
| Mux3OwnerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d9f0f2e21692bf154d5ca32eafa77b2d1903f8a` | ⚠️ Unaudited |
| Mux3POL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ef6d4b46c71f7ea0b8d0309f342100d3a5cf7a6` | ⚠️ Unaudited |
| Mux3RateProviderFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x162d7a2791d619a842940ddaa20bf4e3f52d8cb8` | ⚠️ Unaudited |
| MuxDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b3b6ea661e77059192e495400fda3ab92990f14` | ⚠️ Unaudited |
| MuxLpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03d05a176ce43ec164f7eb6d65a6685284e06235` | ⚠️ Unaudited |
| MuxRewardTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ff022d8ac086f7836c3226291ecfa73d380adb4` | ⚠️ Unaudited |
| MuxSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1560ed0c53c924595a4cf57ba622fd0a79e8a36e` | ⚠️ Unaudited |
| MuxTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x965a4597258f0cbb57b513846e0d89109300d7c5` | ⚠️ Unaudited |
| NativeUnwrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9de8733589921cf203e703d9e4330e83162aec33` | ⚠️ Unaudited |
| NCStableCoinInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x645e758796408efdd65bbbd877e8ebceeb231f4c` | ⚠️ Unaudited |
| NCStandardInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18b5b6696e6569f437f48b111734d72b225d14a7` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fc84ab084a08971e6f52a9da41bfae82b546ebe` | ⚠️ Unaudited |
| OrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x066ac24c6b4c19a5e5726c73129efbf9c8a31246` | ⚠️ Unaudited |
| OwnershipFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c38591445724c2c1c53a292ff9b663fdfbb8b2e` | ⚠️ Unaudited |
| ParaswapAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248909 | `0x03b5259bd204bfd4a616e5b79b0b786d90c6c38f` | ⚠️ Unaudited |
| POL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14d1e8ace06005f8abe4e0d526c93dca284d5cf3` | ⚠️ Unaudited |
| PositionsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4592e45e0c5dbee94a135720ccff2e4353dac6de` | ⚠️ Unaudited |
| PositionStoreUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1645e6a4e166ce4811f9fd559b895a9c3f94f8e` | ⚠️ Unaudited |
| PositionUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19b9ecd3fa2dc9272cd815ee05f300534b4f1d8b` | ⚠️ Unaudited |
| PriceConsumer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f7d995fc12752fe5df42134252e8b7a8922f242` | ⚠️ Unaudited |
| PriceOracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1653c07fa6ce103b43925dddb5e31ca568e53ba1` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67740dddea7a555c30af42536c786133c7e58508` | ⚠️ Unaudited |
| ProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0523467daeed5df174e178fee3c1777784cd4fbf` | ⚠️ Unaudited |
| PublicAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3df41890b6f4b723d9bb85f81d42990e0fca05c4` | ⚠️ Unaudited |
| Reader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e250d7fd315a55b0c53281dfd03a9b91327701f` | ⚠️ Unaudited |
| ReaderLite | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x436c9b6182e96b0526dd12f041730854756af525` | ⚠️ Unaudited |
| ReaderPricingUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf61da339230c4bb7cafa444bd7ffa4d5d5ec6c2c` | ⚠️ Unaudited |
| ReceiveAssets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89aa49caa1c7bdc0d6e7cc3f0540b1980f3fba91` | ⚠️ Unaudited |
| ReferralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x8020e9b7900a2001d3329237773eeea401d2f7dc` | ⚠️ Unaudited |
| Rescue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4857b45b7a0038b4df7f51ac4687bf2fac495780` | ⚠️ Unaudited |
| ReservoirLooper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f6b59f54087ace95cb1fdcb3d2af1aca7c87df4` | ⚠️ Unaudited |
| RewardController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x8b2e254bfbda1b722a78d14b2b7e08d3dd7cd1fc` | ⚠️ Unaudited |
| RouterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xacf98f9564fb6903104644537624cdc3661f43cf` | ⚠️ Unaudited |
| SavingsDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83f20f44975d03b1b09e64809b757c47f942beea` | ⚠️ Unaudited |
| SimpleReadAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a9d21b46810f69a02ac2d61f4bf1963de82700d` | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x641b698ad1c6e503470520b0eecb472c0589dfe6` | ⚠️ Unaudited |
| SuperToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x010700ab046dd8e92b0e3587842080df36364ed3` | ⚠️ Unaudited |
| SusdcOracleL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x179340fb5eb9c82b7c76a9a8f5512271b7cfb9c5` | ⚠️ Unaudited |
| SusdsOracleL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f1831be0c1ab4aa888884827abf79f68e1dfd50` | ⚠️ Unaudited |
| SwapperAngle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e8644d7e0c185f07ab33535ca73a8d3880d592e` | ⚠️ Unaudited |
| SwapperDaiUsds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99ce8de8737a1b05affd9539750c23255e29c873` | ⚠️ Unaudited |
| SwapperERC4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1193888325a82ff22603bd316ed7b5398c080e26` | ⚠️ Unaudited |
| SwapperMakerPSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0076af860630ea0337d4c932b986d68f32a41254` | ⚠️ Unaudited |
| SwapperRusd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x242db4438ba1686050d679680478da876a9dacee` | ⚠️ Unaudited |
| SwapperSimpleUniV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45241b97afbe5b9883b8439615d9f7e28033d54a` | ⚠️ Unaudited |
| SwapperWsteth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fa4443df3989ed5c51a4e6f436f1f51129dc868` | ⚠️ Unaudited |
| SwapPricingUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x985c24816385c4cce9fa48ca484fa174a279b89c` | ⚠️ Unaudited |
| TestReferralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x192a9edfca3b565ae78ff506345342b78af68769` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d903f6003cca6255d85cca4d3b5e5146dc33925` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x36f8d0d0573ae92326827c4a82fe4ce4c244cab6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x507fa343d0a90786d86c7cd885f5c49263a91ff4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x01afd1b17d3e42d3e0858aca8469e1d2e8ddea58` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x0241d1b85fd3b184bfe881162eee163f7b8fe3f7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x02fae054acd7fb1615471319c4e3029dfbc2b23c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x097c06a9a9568cdcd6d168a5a9fe02c81fefd1f1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x0a9bbf8299fed2441009a7bb44874ee453de8e5d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x18b930154300607538895dbe21359c8ae224695a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x198f152d3f34cb49a926333cd935d864d398753f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x2283026d4514bb14f09e644a4f5d457bd96d605b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x229df44fdbb4193c6c123bd9f2327163378589f5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x381200de35cd57810f5ab9a6273ead68917961e2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x3efe4639eb082e22209fee29aabaf14ade5bf82b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x6256dc556ee340952b8d8778f22608fd45592859` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x6fded16b69ca396e437af47bdad1d0352e4d2705` | ⚠️ Unaudited |
| UsycBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e33c1e80cf8fd074da6eb408f2059c2a9900c03` | ⚠️ Unaudited |
| UsycLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3858266579f2913cbba5eaa6381cddfc684728ce` | ⚠️ Unaudited |
| ValidatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x264bddfd9d93d48d759fbdb0670be1c6fdd50236` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x33261b56d71d8af545afcf255779149788ceed62` | ⚠️ Unaudited |
| Vester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21aef9afc97301c9db61e45179dff1115ca16e60` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x22f9fc4a8fff13180472c01c77663828c71b7232` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe384f1db840ddfac78ddd25e5fdb89a9a2411a72` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c159cfd11677a4f2fe4fd0278dd37a95b986069` | ⚠️ Unaudited |
| Wrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249111 | `0x9d03bb2092270648d7480049d0e58d2fcf0e5123` | ⚠️ Unaudited |
| WstethBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf14dc5bdfa8050a3ebf330092f71c54d3febd16b` | ⚠️ Unaudited |
| WstEthStEthExchangeRateChainlinkAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x905b7dabcd3ce6b792d874e303d336424cdb1421` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (214)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248979 | `0x3a7bb36ee3f3ee32a60e9f2b33c1e5f2e83ad766` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248990 | `0x4011dc6581fa05f9b0c7a12adcd676e2b1a59ca3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249018 | `0x58d97b57bb95320f9a05dc918aef65434969c2b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249077 | `0x870ac11d48b15db9a138cf899d20f13f79ba00bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249144 | `0xb09e40ebe31b738fbf20289270a397118707d475` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249166 | `0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249249 | `0xfd32fa2ca22c76dd6e550706ad913fc6ce91c75d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-249256 | `0x0d68a97324e602e02799cd83b42d337207b40658` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-249257 | `0x1ec408d4131686f727f3fd6245cf85bc5c9dad70` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-249259 | `0x31f539f4ed14fa1fd18781e93f6739249692adc5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-249262 | `0x3bb6a6a0bc85b367efe0a5bac81c5e52c892839a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-249266 | `0x6128b680b277bf4df80dfe9d8c55a498660870ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-249269 | `0x71b299bdb52b6396429cd1e11c418324502cb434` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-249270 | `0x79481c87f24a3c4332442a2e9faaf675e5f141f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-249274 | `0x8cd70a8f399428456b29546bc5dbe10ab6a06ef6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-249279 | `0xce95afbb8ea029495c66020883f87aae8864af92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-249280 | `0xd1346be260cd22eab9e6163010b0d5cbfaaad32b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-249284 | `0xe41aecb4570a7b68d15a4fb0a03acee421a21498` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-249286 | `0xee9f7c64dd827ed7b5caa2272936366faca00cf3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-249287 | `0xfbcd3c258feb131d8e038f2a3a670a7be0507c05` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-249435 | `0x05519a0835a1bfd90f110aa7ca46e9a5f81ed3b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-249436 | `0x1db002c086439d55b9f33e6c0693eb850f7c0607` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-249437 | `0x295e0ab80f8234398cd0e51c85d873ee69e5f0dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-249438 | `0x44b2c8e4474751ef2bbc57b92928afb99da785de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-249439 | `0x8840f99bb2d4f69fb02b2d019384c5c98a11746c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-249443 | `0xb1c59fe6a0dce25b804f6113c441bf4f3a4ab6bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-249445 | `0xca470cbbc3de56fde336466f2107cc969174d513` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-249446 | `0xdf9a1dc07e5dee5ccccabec35e446c70faf7434e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-249447 | `0xe39f6b5dd03f4ce8c201b946e662e653d94fa121` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-249448 | `0xea67e5566ca2c0176d9db172a7f9a1e1f22e9d3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-249451 | `0xfeabef95f3c937ff4d5fd70005cf3392f8ca02d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-249560 | `0x16d40b9df1497468195bfafeb2718e486e15bf91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-249564 | `0x7112d95cb5f6b13bf5f5b94a373bb3b2b381f979` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-249566 | `0x842beccf8ebc11006c4be96defe09b60326d0495` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-249567 | `0x87c93660ece6e68c6492eabbbbdbaafa102ae3a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-249571 | `0x92983687e672ca6d96530f9dbe11a196ce905d72` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-249575 | `0xbb12b012fa31f7fe418236caf625713edc852f82` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-249576 | `0xdf2035fc15919588526dbb5560863c812f135236` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-249289 | `0x2ac3ea771547926d4714078e807efbef70d0997f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-249290 | `0x6f3313a395fb09a56502710ab75cf69fb692270a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-249294 | `0x832625f5c0aad4bc14d39291156d37898a40973b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-249296 | `0x8ffd9e3a4b02d217c3ebb5e48e64f748d7476c32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-249297 | `0xae529333703c34b8976bab9d04af3f0b9cff05c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-249298 | `0xb74d4dd451e250bc325aff0556d717e4e2351c66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-249301 | `0xff3623eadb1dd8590b902fa23bacfab3c361bf68` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249326 | `0x43269546e1d586a1f7200a0ac07e26f9631f7539` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249332 | `0x617f8d7885cce689115af04576f7cb6f2534fa9a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249336 | `0x72cc7a247f389d327bc898420837477fb4a57cc4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249339 | `0x7dd85759182495af7f6757da75036d24a9b58bc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249343 | `0x8f5ae9cddb9f68de460c77730b018ae7e04a140a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249347 | `0x9a13bda35f98811fbacf097966b2c838f3f9c58c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249348 | `0x9a6061d51743b31d2c3be75d83781fa423f53f0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249355 | `0xaa870da2a9f611a3a53d0d2aee5664b3700a59c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249357 | `0xb0c9a107fa17c779b3378210a7a593e88938c7c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249362 | `0xb9130d2a87d7c60ed7e7e4b25bda6e3e6841becb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249365 | `0xc11329d19c2275c9e759867e879ecfceed7e30a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249367 | `0xc9b34c108014b44e5a189a830e7e04c56704a0c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249377 | `0xe9ede3929f43a7062a007c3e8652e4aca610bdc0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249381 | `0xf1ab9e885c0faa0cbced407498bba895537ad754` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-249396 | `0x1bf0c2541f820e775182832f06c0b7fc27a25f67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-249397 | `0x1ff7895eb842794c5d07c4c547b6730e61295215` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-249398 | `0x2d9c3a9e67c966c711208cc78b34fb9e9f8db589` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-249402 | `0x5f2617f12d1fdd1e43e72cb80c92dfce8124db8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-249411 | `0xa9c87dab340631c34bb738625c70499e29dddc98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-249412 | `0xb261b51938a9767406ef83bbfbaafe16691b7047` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-249413 | `0xb70a43821d2707fa9d0edd9511cc499f468ba564` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-249415 | `0xc0006f52b38625c283dd2f972dd9b779a5851dd0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-249416 | `0xc11a53ee9b1ecc7a068d8e40f8f17926584f97cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-249422 | `0xe675a2161d4a6e2de2eed70ac98eebf257fbf0b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-249424 | `0xeb174fea51da241eb3b516959b216e013de2888a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-249425 | `0xfac15aff53add2ff80c2962127c434e8615df0d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-249426 | `0xfc5be756236feaf4297d3279bf6532bf100f0ac9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-249427 | `0x0ce9e3512cb4df8ae7e265e62fb9258dc14f12e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-249428 | `0x31d5aee8d75eeab548cfa0d11c4f9843a5201eaf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-249429 | `0x6cef2edc70d87e8f1623f3096eff05d066e59b36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-249430 | `0x7da59fa482f1f49fadc486d8e47badc506feb86d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-249431 | `0xb06f1ad8c908b958e596c42973f67f2f1d9a9aff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-249432 | `0xd6c916eb7542d0ad3f18aed0fcbd50c582cfa95f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-249433 | `0xdefcf242226425f93d8dd0e314735c28517c473f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-249434 | `0xdfa21a9189425187ff6e44d7ebea19f64e8836ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-249693 | `0x517505be22d9068687334e69ae7a02fc77edf4fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-249694 | `0x68e37de8d93d3496ae143f2e900490f6280c57cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-249696 | `0x857b55ceb57da0c2a83ee08a8db529b931089aee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-249697 | `0xa3f50477afa601c771874260a3b34b40e244fa0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-249699 | `0xaeff6ef4b7bbfbaadb18b634a8f11392cbeb72be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-249701 | `0xd4a426f010986dcad727e8dd6eed44ca4a9b7483` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-249702 | `0xd7217e5687ff1071356c780b5fe4803d9d967da7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-249703 | `0xd7f48ade56613e8605863832b7b8a1985b934ae4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-249706 | `0xdf5202e29654e02011611a086f15477880580cac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-249707 | `0xeb476f124fad625178759d13557a72394a6f9af5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-249708 | `0xec051b19d654c48c357dc974376deb6272f24e53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-249385 | `0x02e0e71e145f254820b9d89c9e6068f08256f601` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-249386 | `0x4bd68c2ff3274207ec07ed281c915758b6f23f07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-249387 | `0x6efa8e3aa8279eb2fd46b6083a9e52da72ea56c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-249388 | `0x8dea49ec5bd5aeac8bcf96b3e187f59354118291` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-249389 | `0xc9cdac20fceaaf616f7eb0bb6cd2c69dcfa9094c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-249390 | `0xd878509446be2c601f0f032f501851001b159d6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-249391 | `0xf9457356f18a3349bb317ac144c3bcc62e5761ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-249614 | `0x27880b18ae04a05f1d603b87aeb2a27491ffaba9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-249616 | `0x3e89c1071814b2c4170c90260fcb60b903ad4602` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-249617 | `0x4d04c39ca604b560c50f4045c558378fd9aebcf4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-249621 | `0x8e36c2c6d7771820bf14a75f725f3cf0374a7823` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-249622 | `0xa4e2ba20fc64d721d95bd5a28ff71844c5bb5cf2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-249623 | `0xa8beebdca34d83c697c302a0594f3c41f3994cd2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-249625 | `0xf2aecd4a4d4c21d08770e34f392c4c271abd9144` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-249626 | `0xfca12228da5fba6e9c0b57a8e8322d0ebaca03bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249629 | `0x123f3167a416ca19365de03a65e0af3532af7223` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249631 | `0x1f8076e2eb6f10b12e6886f30d4909a91969f7da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249633 | `0x23055618898e202386e6c13955a58d3c68200bfb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249639 | `0x4501125508079a99ebbebce205dec9593c2b5857` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249642 | `0x5400dbb270c956e8985184335a1c62aca6ce1333` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249643 | `0x5c2531cbd2cf112cf687da3cd536708add7db10a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249644 | `0x6abe8abd0275e5564ed1336f0243a52c32562f71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249645 | `0x6bfd8137e702540e7a42b74178a4a49ba43920c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249647 | `0x7276454fc1cf9c408deeed722fd6b5e7a4ca25d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249649 | `0x85d4812ef92c040d4270ed8547b6835e41fbbb70` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249653 | `0x9a1b378c43ba535cdb89934230f0d3890c51c0eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249654 | `0xa090dd1a701408df1d4d0b85b716c87565f90467` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249659 | `0xa9c3d3a366466fa809d1ae982fb2c46e5fc41101` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249661 | `0xb27aa2a964ead5ed661d86974b37e4fb995b36f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249662 | `0xb98c948cfa24072e58935bc004a8a7b376ae746a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249663 | `0xbaa5cc21fd487b8fcc2f632f3f4e8d37262a0842` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249664 | `0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249668 | `0xcae2929babc60be34818eaa5f40bf69265677108` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249670 | `0xdeef55f0a7366cc3baf5e04313269389fe17e9ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249672 | `0xf42d9c36b34c9c2cf3bc30ed2a52a90eeb604642` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249674 | `0xff62a7c278c62ed665133147129245053bbf5918` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-249675 | `0x171b2807e8ce8fb853c37bc3c3b4805abf6f9896` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-249676 | `0x2ff74a46536f5c67ef5a42fd5b4e2ed8a2cee249` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-249677 | `0x42432f31d085ecb8d9c128092c84b084123c624e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-249679 | `0x5476aeee80d87649fdd8ee19ea65976f28525f7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-249680 | `0x69410429099018fa1586aab0afadc525314f5830` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-249681 | `0x6a7389f9d4fd199254479d6735aad7aa5d4db0ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-249685 | `0xb241753668f929eb78a0069330c31305c0c83255` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-249686 | `0xb41aa3e41131947f4cd070617c582c1f9604ed11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-249688 | `0xd7373d3597c26e7340b0612c938eefe6de02ab30` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-249689 | `0xec6f72cf30fb5d3d0f9bea8509b61902cf3b1e45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-249690 | `0xf37f73028b5b4ebadc055deb24b1cde271cf0f71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-249452 | `0x063a8f498b4a1423c62be360007b7d9d0c60c481` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-249457 | `0xae5b0884bfff430493d6c844b9fd052af7d79278` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-249460 | `0xd85ce6bd68487e0aafb0858fde1cd18c76840564` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-249461 | `0xe3d46ae190cb39cca3655e966dcef96b4eae1d1c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-249462 | `0xee868bf3359da30c10ea472eaebfc0a06e8f0120` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-249463 | `0xf53925b95cc409447066cd5c1a7756084b2ee0a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-249464 | `0xf9380f7898423bd7fde3c9fdd1b2671a2471f39d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-249465 | `0xfea0edfa081c8d5960ec9bf6684981db1834305d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249467 | `0x1923670d4f4eb7435d865e7477d28feaffa40c93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249468 | `0x1fa4431bc113d308bee1d46b0e98cb805fb48c13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249473 | `0x40bd670a58238e6e230c430bbb5ce6ec0d40df48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249474 | `0x66f30587fb8d4206918deb78eca7d5ebbafd06da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249475 | `0x6b46fa3cc9ebf8ab230abac664e37f2966bf7971` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249476 | `0x6c247b1f6182318877311737bac0844baa518f5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249478 | `0x769583af5e9d03589f159ebec31cc2c23e8c355e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249479 | `0x7b792ef7e91fbc78ef482e3bbb52193a73367fbf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249480 | `0x86ca77a4a37a9cdbe9bbf4975f6d69531b96444b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249481 | `0x878988f5f561081deea117717052164ea1ef0c82` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249484 | `0x98ce5d183dc0c176f54d37162f87e7ed7f2e41b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249485 | `0x9954afb60bb5a222714c478ac86990f221788b88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249487 | `0xaa5c30c1482c189ca0d56057d3ac4dd7af1e4726` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249490 | `0xc00eb3c7ad1ae986a7f05f5a9d71aca39c763c65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249496 | `0xd8fc8a85779551e78b516da9f74061cb3b086793` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249498 | `0xef84b1ecebe43283ec5af95d7a5c4d7de0a9859b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249499 | `0xfc3329363cd51adbbaa52e389bee389981ccaae0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-249502 | `0x3a4849b5174dc6828c6dc9bbd87e61ed1ebe9ffa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-249503 | `0x3e7544a07157d03a49359ee89f2fcac9a6467230` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-249504 | `0x3fe12193d178b76baf4e23a083a64e49acde3188` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-249505 | `0x683caaaddfa2f42e24880e202676526d501a5ded` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-249506 | `0x6870aa9f66c1e5efe8dbe8730e86e9e91f688275` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-249511 | `0xbd142f98f847c170d51d8b23e5febc51fc9a67d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-249512 | `0xd24ecdd8c1e0e57a4e26b1a7bbeaa3e95466a569` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-249514 | `0x0ed0478946e00ca8bcf65475e7c8dfaca4a30005` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-249518 | `0x66dc122cf454576684ad78a2800a8eb052b2e9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-249523 | `0x708e04d46d82d8f1d0a70a3aa0a780f27fcb3f92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-249527 | `0x895383274303aa19fe978afb4ac55c7f094f982c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-249528 | `0x8bcc016ab7334a16dccbee9ab3fd6e52feb29e96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-249530 | `0x9633d22bb8f42f6f70dbbbe34c11eb9209769b8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-249536 | `0xb6ac9477d574ee2a7bf32d2475b303fb70968aa4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-249540 | `0xf0c1299d44b3803243d7c1eec2042e9484db13f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-249543 | `0xf7b1d9e43baea3705f2b303693766acbcfec6a55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-249581 | `0x2884732d25b97090cab59d0d2b78cd9c85a83411` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-249582 | `0x3fffe273ee348b9e1ef89533025c7f165b17b439` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-249583 | `0x7db0f1e2bf1f47ec82220090f388d75d8b9bb6bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-249584 | `0x85416891752a6b81106c1c2999ae1af5d8cd3357` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-249585 | `0x857f3eefe8cbda3bc49367c996cd664a880d3042` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-249586 | `0x9515407b1512f53388ffe699524100e7270ee57b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-249587 | `0xb8b2addcde1cdc94aae18a0f8a19df03d8683610` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-249588 | `0xd3f39505d0c48afed3549d625982fdc38ea9904b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-249589 | `0x122ea8ff8888c29f8736665d576e3faef15d27d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-249590 | `0x1ee8ec299e8014760d50a4e3cfc3b44cc2242625` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-249592 | `0x2d4cf00e18d48fd030d9b1e2faae6e0384c7610b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-249594 | `0x3fff726062b03bfd5bc485eeeecc92cf1d8f0105` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-249595 | `0x454dab6ce9891245696b239b4845a1cdc268255d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-249596 | `0x5dc11cf8ba4c39d1194f91218d35008d9f52a5d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-249599 | `0x6b0d716ac0a45536172308e08fc2c40387262c9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-249600 | `0x6faf26dd640e22457ca4fd5da702ba3e169eed87` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-249604 | `0x85c2ef4bd69f42d7da19fb9dcdd7fb8d0f59cdee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-249605 | `0xa148a8223b622a72dc36472de1492abb5c089ba7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-249607 | `0xcab7c66f7191ad3ef1e7feeb67f3137bc975f8ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-249546 | `0x2d012edbadc37edc2bc62791b666f9193fdf5a55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-249547 | `0x56b65742ade55015e6480959808229ad6dbc9295` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-249548 | `0x60f9159d4dcd724e743212416fd57d8ac0b60768` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-249549 | `0x78f44e1ed61210952b6e23d09c930bfa64a359c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-249551 | `0x8a7f671e45e51de245649cf916ca0256fb8a9927` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-249553 | `0xa5ea7500a27c0079961d93366a6e93aaff18cb90` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-249554 | `0xb5961902e60b188b1c665b7b72ef616656a9e24e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-249556 | `0xd2780fae0869cdc06ee202152304a39653361525` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-249305 | `0x5481f54cacdf0aece9f71f2bb2c0a8e44b2d5d81` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-249306 | `0x8c5ddcd3f601c91d1bf51c8ec26066010acaba7c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-249307 | `0x98cbfe4053ad6778e0e3435943ac821f565d0b03` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-249309 | `0xa6c843fc53aaf6ef1d173c4710b26419667bf6cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-249310 | `0xb3fe2d5f8af90f194b01db546397058fcebb85d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-249311 | `0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-249313 | `0xd011ee229e7459ba1ddd22631ef7bf528d424a14` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-249315 | `0xe8ee811c7c9748de2db8c878dc5e32c9dd12dab3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Cantina Contest](https://cantina.xyz/competitions/523e1540-f8c3-45ae-9c5d-b6d35d3a326c) | Spearbit | Contest | 2025-07 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [Cantina Contest](https://cantina.xyz/competitions/d86b7f95-e574-4092-8ea2-78dcac2f54f1) | Spearbit | Contest | 2023-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 16 | high |
| [Cantina Contest](https://cantina.xyz/competitions/8409a0ce-6c21-4cc9-8ef2-bd77ce7425af) | Spearbit | Contest | 2023-12 | stale | Direct | contract_name | matched | 9 | 1 | 0 | 43 | high |
| [omniscia-report](https://omniscia.io/reports/morpho-specialized-token) | Omniscia | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Lexfo_250523.pdf](https://cdn.morpho.org/documents/Lexfo_250523.pdf) | Lexfo | Audit | 2023-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [MorphoDAO_Frontend_04042022.pdf](https://cdn.morpho.org/documents/MorphoDAO_Frontend_04042022.pdf) | Securing | Audit | 2022-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2025-05-19-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-05-19-spearbit.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [2025-07-15-competition.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-07-15-competition.pdf) | Competition | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [2025-07-15-zellic.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-07-15-zellic.pdf) | Zellic | Audit | 2025-07 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [2025-08-11-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-08-11-spearbit.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2025-09-15-blackthorn.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-blackthorn.pdf) | Blackthorn | Audit | 2025-09 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 23 | high |
| [2025-09-15-chainsecurity.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-chainsecurity.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 17 | high |
| [2025-09-15-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-spearbit.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2025-12-04-market-v1-adapter-v2-blackthorn.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-12-04-market-v1-adapter-v2-blackthorn.pdf) | Blackthorn | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [2025-12-04-market-v1-adapter-v2-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-12-04-market-v1-adapter-v2-spearbit.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2025-12-15-market-v1-adapter-v2-certora.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-12-15-market-v1-adapter-v2-certora.pdf) | Certora | Audit | 2025-12 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 13 | high |
| [2025-09-11-spearbit.pdf](https://github.com/morpho-org/vault-v2-adapter-registries/blob/main/audits/2025-09-11-spearbit.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 2 | medium |
| [2025-12-04-market-v1-adapter-v2-certora.pdf](https://github.com/morpho-org/vault-v2-adapter-registries/blob/main/audits/2025-12-04-market-v1-adapter-v2-certora.pdf) | Certora | Audit | 2025-12 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 13 | high |
| [2024-10-29-pre-liquidation-spearbit.pdf](https://github.com/morpho-org/pre-liquidation/blob/main/audits/2024-10-29-pre-liquidation-spearbit.pdf) | Spearbit | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [2024-11-01-pre-liquidation-ABDK-consulting.pdf](https://github.com/morpho-org/pre-liquidation/blob/main/audits/2024-11-01-pre-liquidation-ABDK-consulting.pdf) | ABDK | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [2023-11-14-metamorpho-cantina-managed-review.pdf (also discovered via alternate URL)](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2023-11-14-metamorpho-cantina-managed-review.pdf) | Spearbit | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [2023-11-16-morpho-blue-periphery-open-zeppelin.pdf (also discovered via alternate URL)](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2023-11-16-morpho-blue-periphery-open-zeppelin.pdf) | OpenZeppelin | Audit | 2023-11 | stale | Direct | contract_name | matched | 9 | 1 | 0 | 36 | high |
| [2024-01-05-periphery-cantina-competition.pdf (also discovered via alternate URL)](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2024-01-05-periphery-cantina-competition.pdf) | Spearbit | Audit | 2024-01 | stale | Direct | contract_name | matched | 5 | 1 | 0 | 4 | high |
| [2024-09-23-metamorpho-diff-cantina-managed-review.pdf](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2024-09-23-metamorpho-diff-cantina-managed-review.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-01-10-metamorpho-v1.1-open-zeppelin.pdf](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2025-01-10-metamorpho-v1.1-open-zeppelin.pdf) | OpenZeppelin | Audit | 2025-01 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [2025-02-20-metamorpho-v1.1-cantina-managed.pdf](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2025-02-20-metamorpho-v1.1-cantina-managed.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [2024-03-11-morpho-public-allocator-cantina-managed.pdf](https://github.com/morpho-org/public-allocator/blob/main/audits/2024-03-11-morpho-public-allocator-cantina-managed.pdf) | Spearbit | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf](https://github.com/morpho-org/morpho-blue/blob/main/audits/2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf) | OpenZeppelin | Audit | 2023-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 17 | high |
| [2023-11-13-morpho-blue-cantina-managed-review.pdf](https://github.com/morpho-org/morpho-blue/blob/main/audits/2023-11-13-morpho-blue-cantina-managed-review.pdf) | Spearbit | Audit | 2023-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 23 | high |
| [2024-01-05-morpho-blue-cantina-competition.pdf](https://github.com/morpho-org/morpho-blue/blob/main/audits/2024-01-05-morpho-blue-cantina-competition.pdf) | Spearbit | Audit | 2024-01 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17651] Cantina Contest — matched: Extracted from competition description and scope section. Repository and commit provided but no explicit file list; contracts inferred from documentation.
- [17652] Cantina Contest — matched: Scope table lists all files in src except mocks folder. Contract names extracted from file paths.
- [17653] Cantina Contest — matched: Extracted all contract names from the scope tables for each repository. The audit end date is December 7, 2023.
- [17654] omniscia-report — no match: Extracted 3 contracts from the 'Contracts Assessed' table. No audit date found in the provided text.
- [17655] Lexfo_250523.pdf — no match: The audit scope covers external assets (domains, GitHub repos, AWS config) but no smart contracts are listed. The report is a penetration test, not a smart contract audit.
- [17656] MorphoDAO_Frontend_04042022.pdf — no match: This is a frontend penetration test report, not a smart contract audit. No smart contracts are in scope.
- [17657] 2025-05-19-spearbit.pdf — no match: Extracted from the executive summary and findings sections. The report covers the morpho-vaults-v2 repository with commit 77aa7c5b. The audit timeline is May 20th to Jul 11th, but the report date is October 13, 2025.
- [17658] 2025-07-15-competition.pdf — no match: No explicit scope section found; contract names extracted from findings and context. Audit date from cover page: 'November5,2025'.
- [17659] 2025-07-15-zellic.pdf — matched: Extracted contracts from scope tables and file listings. Audit date from cover page and timeline.
- [17660] 2025-08-11-spearbit.pdf — no match: Extracted from the executive summary and findings sections. The report covers PR 723 and PR 724 of the vault-v2 repository. The main contracts are VaultV2, MorphoMarketV1Adapter, MorphoVaultV1Adapter, and MorphoMarketV1AdapterFactory.
- [17661] 2025-09-15-blackthorn.pdf — matched: All contracts listed in the scope section of the audit report. Date extracted from 'Date Audited: August13-August20,2025'.
- [17662] 2025-09-15-chainsecurity.pdf — matched: Extracted all contracts from scope table and renamed files. Audit date from cover page: September 16, 2025.
- [17663] 2025-09-15-spearbit.pdf — no match: Extracted from the report's Executive Summary and Findings sections. The report covers a fix review of the vault-v2 protocol, specifically the VaultV2 contract and two adapter implementations (MorphoMarketV1Adapter and MorphoVaultV1Adapter) plus the factory. The audit date is from the report cover page.
- [17664] 2025-12-04-market-v1-adapter-v2-blackthorn.pdf — no match: Scope section lists two repositories with specific files. Contract names extracted from file paths. Audit date from 'Date Audited: November24-November27,2025' using end date.
- [17665] 2025-12-04-market-v1-adapter-v2-spearbit.pdf — no match: Extracted 4 contracts from scope section and file paths. Audit date from cover page.
- [17666] 2025-12-15-market-v1-adapter-v2-certora.pdf — matched: Extracted 15 contract names from the scope table on page 3. Audit date inferred from work period end date (December 15, 2025).
- [17667] 2025-09-11-spearbit.pdf — matched: No explicit scope section; contracts inferred from findings and executive summary.
- [17668] 2025-12-04-market-v1-adapter-v2-certora.pdf — matched: Extracted 15 contract names from the scope section listing file paths. Audit date inferred from work period end date (December 15, 2025).
- [17669] 2024-10-29-pre-liquidation-spearbit.pdf — no match: No explicit scope section; contracts inferred from findings and context. Audit date from report header.
- [17670] 2024-11-01-pre-liquidation-ABDK-consulting.pdf — no match: Scope section lists files: PreLiquidation.sol, PreLiquidationFactory.sol, interfaces/IPreLiquidation.sol, IPreLiquidationCallback.sol, IPreLiquidationFactory.sol, libraries/periphery/PreLiquidationAddressLib.sol, libraries/ErrorsLib.sol, libraries/EventsLib.sol. Audit date from cover page: '1st November 2024'.
- [17671] 2023-11-14-metamorpho-cantina-managed-review.pdf — no match: The report does not have a dedicated scope section, but contract names are extracted from the report title, context references in findings, and file paths mentioned. The audit date is from the cover page: November 14, 2023.
- [17672] 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf — matched: Extracted all contracts from the scope section of the audit report, including interfaces and libraries. The audit date is from the cover page: 'November 16, 2023'.
- [17673] 2024-01-05-periphery-cantina-competition.pdf — matched: The report lists the audited repositories: morpho-blue-irm, morpho-blue-oracles, metamorpho, morpho-blue-bundlers, universal-rewards-distributor, erc20-permissioned. The findings reference specific contracts within these repos. The audit date is from the cover page: 'February 23, 2024'.
- [17674] 2024-09-23-metamorpho-diff-cantina-managed-review.pdf — no match: Only MetaMorpho contract is explicitly mentioned in scope. Other contracts (MorphoChainlinkOracleV2, PendingLib, Morpho) are referenced but not in scope.
- [17675] 2025-01-10-metamorpho-v1.1-open-zeppelin.pdf — matched: Scope section explicitly lists contracts and files under src/.
- [17676] 2025-02-20-metamorpho-v1.1-cantina-managed.pdf — no match: The report does not have a dedicated scope section or table listing contracts. The only contract name explicitly mentioned is MetaMorpho, which is the subject of the review. The date is from the cover page.
- [17677] 2024-03-11-morpho-public-allocator-cantina-managed.pdf — no match: No explicit scope section found; contracts inferred from report title and findings context. Audit date from cover page: March 11, 2024.
- [17678] 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf — matched: All contracts listed in the Scope section were extracted. The Irm contract is from a separate repository but included as in scope.
- [17679] 2023-11-13-morpho-blue-cantina-managed-review.pdf — matched: Extracted contract names from the audit report text, primarily from finding contexts and file references. The report does not have a dedicated scope section; instead, contracts are mentioned throughout. The audit date is from the cover page: April 22, 2024.
- [17680] 2024-01-05-morpho-blue-cantina-competition.pdf — matched: Extracted from report title page date and scope context in findings.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Cantina Contest | VaultV2Factory | own contract | VaultV2Factory (selected) `0xa1d94f746defa1928926b84fb2596c06926c0405` — deployed 2025-09-16 13:37:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Contest | VaultV2 | unmatched — not counted | — | main contract described in scope | no |
| Cantina Contest | MorphoMarketV1Adapter | unmatched — not counted | — | mentioned as example adapter in src/adapters folder | no |
| Cantina Contest | MorphoVaultV1Adapter | unmatched — not counted | — | mentioned as example adapter in src/adapters folder | no |
| Cantina Contest | SingleMorphoVaultV1Vic | unmatched — not counted | — | mentioned as VIC for single Vault v1 supply | no |
| Cantina Contest | ManualVic | unmatched — not counted | — | mentioned as flexible VIC | no |
| Cantina Contest | Morpho | own contract | Morpho (selected) `0x01b0bd309aa75547f7a37ad7b1219a898e67a83a` — deployed 2025-07-17 15:46:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Contest | IMorpho | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | MorphoBalancesLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | MorphoStorageLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | EventsLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | MorphoLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | ErrorsLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | MathLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | UtilsLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | SafeTransferLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | SharesMathLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IMorphoCallbacks | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | MarketParamsLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | ConstantsLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IIrm | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IOracle | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IERC20 | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | SpeedJumpIrm | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | MathLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | ErrorsLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | UtilsLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | ChainlinkOracle | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | ChainlinkDataFeedLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | AggregatorV3Interface | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | VaultLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IERC4626 | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | MetaMorpho | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IMetaMorpho | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | EventsLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | MetaMorphoFactory | own contract | MetaMorphoFactory (selected) `0xa9c3d3a366466fa809d1ae982fb2c46e5fc41101` — deployed 2024-01-03 11:15:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Contest | ConstantsLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IMorphoMarketParams | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IAaveV3 | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | MorphoBundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IAaveV2 | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IAaveV3Optimizer | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | ERC4626Bundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | CompoundV3MigrationBundler | own contract | CompoundV3MigrationBundler (selected) `0x3a0e2e9fb9c95fbc843daf166276c90b6c479558` — deployed 2024-01-03 17:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Contest | ICompoundV3 | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | AaveV3OptimizerMigrationBundler | own contract | AaveV3OptimizerMigrationBundler (selected) `0x16f38d2e764e7bebf625a8e995b34968226d2f9c` — deployed 2024-01-03 17:48:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Contest | CompoundV2MigrationBundler | own contract | CompoundV2MigrationBundler (selected) `0x26bf52a84360ad3d01d7cdc28fc2ddc04d8c8647` — deployed 2024-01-03 17:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Contest | StEthBundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | BaseBundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | TransferBundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | WNativeBundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IWstEth | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | UrdBundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | EthereumBundler | own contract | EthereumBundler (selected) `0xa7995f71aa11525db02fc2473c37dee5dbf55107` — deployed 2024-01-03 17:48:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Contest | Permit2Bundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | AaveV2MigrationBundler | own contract | AaveV2MigrationBundler (selected) `0xb3dcc75db379925edfd3007511a8ce0cb4aa8e76` — deployed 2024-01-03 17:48:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Contest | AaveV3MigrationBundler | own proxy deployment | AaveV3MigrationBundler (proxy) (selected) `0x98ccb155e86bb478d514a827d16f58c6912f9bdc` — deployed 2024-01-03 17:48:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Contest | MigrationBundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | EthereumPermitBundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | PermitBundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IDaiPermit | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IMorphoBundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | ICToken | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | ICEth | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IStEth | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | MainnetLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | AaveV2EthereumMigrationBundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IWNative | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | EthereumStEthBundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IMulticall | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IComptroller | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | UniversalRewardsDistributor | own contract | UniversalRewardsDistributor (selected) `0x330eefa8a787552dc5cad3c3ca644844b1e61ddb` — deployed 2024-03-10 18:00:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Contest | IUniversalRewardsDistributor | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | UrdFactory | own contract | UrdFactory (selected) `0x9baa51245cdd28d8d74afe8b3959b616e9ee7c8d` — deployed 2023-12-28 18:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Contest | ERC20PermissionedBase | unmatched — not counted | — | listed in scope table | no |
| omniscia-report | Auth | unmatched — not counted | — | listed in scope table | no |
| omniscia-report | RolesAuthority | unmatched — not counted | — | listed in scope table | no |
| omniscia-report | Token | unmatched — not counted | — | listed in scope table | no |
| 2025-05-19-spearbit.pdf | VaultV2 | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | MetaMorphoAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | MorphoBlueAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | ManualVic | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | IAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | IVaultV2 | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | IMetaMorphoAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | IMorphoBlueAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | IVic | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | IManualVic | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | IERC4626 | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | MorphoBlueAdapterFactory | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | MetaMorphoAdapterFactory | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | SafeERC20Lib | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | MathLib | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | ErrorsLib | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | EventsLib | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | MarketParamsLib | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | MorphoBalancesLib | unmatched — not counted | — | listed in scope | no |
| 2025-07-15-competition.pdf | VaultV2 | unmatched — not counted | — | mentioned in findings context and recommendation | no |
| 2025-07-15-competition.pdf | SingleMorphoVaultV1Vic | unmatched — not counted | — | explicitly named in finding 3.1.3 | no |
| 2025-07-15-competition.pdf | ManualVic | unmatched — not counted | — | mentioned in finding 3.1.1 and recommendation | no |
| 2025-07-15-competition.pdf | MorphoVaultV1Adapter | unmatched — not counted | — | mentioned in finding 3.1.2 and 3.1.3 | no |
| 2025-07-15-zellic.pdf | VaultV2 | unmatched — not counted | — | Listed in scope table and mentioned throughout report | no |
| 2025-07-15-zellic.pdf | VaultV2Factory | own contract | VaultV2Factory (selected) `0xa1d94f746defa1928926b84fb2596c06926c0405` — deployed 2025-09-16 13:37:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-07-15-zellic.pdf | MetaMorphoAdapter | unmatched — not counted | — | Listed in scope as adapters/*.sol and threat model section | no |
| 2025-07-15-zellic.pdf | MorphoBlueAdapter | unmatched — not counted | — | Listed in scope as adapters/*.sol and threat model section | no |
| 2025-07-15-zellic.pdf | ManualVic | unmatched — not counted | — | Listed in secondary review scope | no |
| 2025-07-15-zellic.pdf | ManualVicFactory | unmatched — not counted | — | Listed in secondary review scope | no |
| 2025-07-15-zellic.pdf | IManualVic | unmatched — not counted | — | Listed in secondary review scope | no |
| 2025-07-15-zellic.pdf | IManualVicFactory | unmatched — not counted | — | Listed in secondary review scope | no |
| 2025-07-15-zellic.pdf | ConstantsLib | unmatched — not counted | — | Mentioned in finding 3.2 as target | no |
| 2025-08-11-spearbit.pdf | VaultV2 | unmatched — not counted | — | mentioned in scope and findings | no |
| 2025-08-11-spearbit.pdf | MorphoMarketV1Adapter | unmatched — not counted | — | mentioned in scope and findings | no |
| 2025-08-11-spearbit.pdf | MorphoVaultV1Adapter | unmatched — not counted | — | mentioned in scope and findings | no |
| 2025-08-11-spearbit.pdf | MorphoMarketV1AdapterFactory | unmatched — not counted | — | mentioned in findings | no |
| 2025-09-15-blackthorn.pdf | IMorphoMarketV1AdapterFactory | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | IMorphoMarketV1Adapter | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | IMorphoVaultV1AdapterFactory | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | IMorphoVaultV1Adapter | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | MorphoMarketV1AdapterFactory | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | MorphoMarketV1Adapter | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | MorphoVaultV1AdapterFactory | own contract | MorphoVaultV1AdapterFactory (selected) `0xd1b8e2dee25c2b89dcd2f98448a7ce87d6f63394` — deployed 2025-09-16 13:37:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09-15-blackthorn.pdf | MorphoVaultV1Adapter | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | MetaMorphoImport | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | MetaMorphoV1_1Import | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | MorphoImport | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | IAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | IERC20 | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | IERC2612 | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | IERC4626 | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | IGate | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | IVaultV2Factory | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | IVaultV2 | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | ConstantsLib | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | ErrorsLib | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | EventsLib | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | MathLib | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | SafeERC20Lib | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | VaultV2Factory | own contract | VaultV2Factory (selected) `0xa1d94f746defa1928926b84fb2596c06926c0405` — deployed 2025-09-16 13:37:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09-15-blackthorn.pdf | VaultV2 | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-chainsecurity.pdf | VaultV2 | unmatched — not counted | — | listed in scope table | no |
| 2025-09-15-chainsecurity.pdf | VaultV2Factory | own contract | VaultV2Factory (selected) `0xa1d94f746defa1928926b84fb2596c06926c0405` — deployed 2025-09-16 13:37:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09-15-chainsecurity.pdf | MetaMorphoAdapter | unmatched — not counted | — | listed in scope table (later renamed to MorphoVaultV1Adapter) | no |
| 2025-09-15-chainsecurity.pdf | MetaMorphoAdapterFactory | unmatched — not counted | — | listed in scope table (later renamed to MorphoVaultV1AdapterFactory) | no |
| 2025-09-15-chainsecurity.pdf | MorphoBlueAdapter | unmatched — not counted | — | listed in scope table (later renamed to MorphoMarketV1Adapter) | no |
| 2025-09-15-chainsecurity.pdf | MorphoBlueAdapterFactory | unmatched — not counted | — | listed in scope table (later renamed to MorphoMarketV1AdapterFactory) | no |
| 2025-09-15-chainsecurity.pdf | MorphoImport | unmatched — not counted | — | listed in scope table | no |
| 2025-09-15-chainsecurity.pdf | ConstantsLib | unmatched — not counted | — | listed in scope table | no |
| 2025-09-15-chainsecurity.pdf | ErrorsLib | unmatched — not counted | — | listed in scope table | no |
| 2025-09-15-chainsecurity.pdf | EventsLib | unmatched — not counted | — | listed in scope table | no |
| 2025-09-15-chainsecurity.pdf | MathLib | unmatched — not counted | — | listed in scope table | no |
| 2025-09-15-chainsecurity.pdf | SafeERC20Lib | unmatched — not counted | — | listed in scope table | no |
| 2025-09-15-chainsecurity.pdf | VaultV2AddressLib | unmatched — not counted | — | listed in scope table (later deleted) | no |
| 2025-09-15-chainsecurity.pdf | ManualVic | unmatched — not counted | — | listed in scope table (later deleted) | no |
| 2025-09-15-chainsecurity.pdf | ManualVicFactory | unmatched — not counted | — | listed in scope table (later deleted) | no |
| 2025-09-15-chainsecurity.pdf | MorphoVaultV1Adapter | unmatched — not counted | — | renamed from MetaMorphoAdapter in scope update | no |
| 2025-09-15-chainsecurity.pdf | MorphoVaultV1AdapterFactory | own contract | MorphoVaultV1AdapterFactory (selected) `0xd1b8e2dee25c2b89dcd2f98448a7ce87d6f63394` — deployed 2025-09-16 13:37:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09-15-chainsecurity.pdf | MorphoMarketV1Adapter | unmatched — not counted | — | renamed from MorphoBlueAdapter in scope update | no |
| 2025-09-15-chainsecurity.pdf | MorphoMarketV1AdapterFactory | unmatched — not counted | — | renamed from MorphoBlueAdapterFactory in scope update | no |
| 2025-09-15-spearbit.pdf | VaultV2 | unmatched — not counted | — | Listed in scope context and findings | no |
| 2025-09-15-spearbit.pdf | MorphoMarketV1Adapter | unmatched — not counted | — | Listed in scope context and findings | no |
| 2025-09-15-spearbit.pdf | MorphoVaultV1Adapter | unmatched — not counted | — | Listed in scope context and findings | no |
| 2025-09-15-spearbit.pdf | MorphoMarketV1AdapterFactory | unmatched — not counted | — | Listed in scope context and findings | no |
| 2025-12-04-market-v1-adapter-v2-blackthorn.pdf | AdaptiveCurveIrmLib | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-blackthorn.pdf | IMorphoMarketV1AdapterFactory | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-blackthorn.pdf | IMorphoMarketV1Adapter | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-blackthorn.pdf | MorphoMarketV1AdapterFactory | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-blackthorn.pdf | MorphoMarketV1Adapter | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-spearbit.pdf | AdaptiveCurveIrmLib | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-spearbit.pdf | MorphoMarketV1Adapter | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-spearbit.pdf | MorphoMarketV1AdapterFactory | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-spearbit.pdf | AdaptiveCurveIrmImport | unmatched — not counted | — | listed in scope | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | MorphoMarketV1AdapterV2 | unmatched — not counted | — | listed in scope table | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | MorphoMarketV1AdapterV2Factory | own contract | MorphoMarketV1AdapterV2Factory (selected) `0x32bb1c0d48d8b1b3363e86eeb9a0300bad61ccc1` — deployed 2025-12-10 12:36:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | IMorphoMarketV1AdapterV2 | unmatched — not counted | — | listed in scope table | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | IMorphoMarketV1AdapterV2Factory | unmatched — not counted | — | listed in scope table | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | ErrorsLib | unmatched — not counted | — | listed in scope table | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | IERC4626 | unmatched — not counted | — | listed in scope table | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | AdaptiveCurveIrmLib | unmatched — not counted | — | listed in scope table | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | MorphoMarketV1Registry | unmatched — not counted | — | listed in scope table | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | MorphoMarketV1RegistryV2 | unmatched — not counted | — | listed in scope table | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | MorphoVaultV1Registry | unmatched — not counted | — | listed in scope table | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | RegistryList | own contract | RegistryList (selected) `0x3696c5eae4a7ffd04ea163564571e9cd8ed9364e` — deployed 2025-09-16 13:46:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | IMorphoMarketV1Registry | unmatched — not counted | — | listed in scope table | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | IMorphoMarketV1RegistryV2 | unmatched — not counted | — | listed in scope table | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | IMorphoVaultV1Registry | unmatched — not counted | — | listed in scope table | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | IRegistryList | unmatched — not counted | — | listed in scope table | no |
| 2025-09-11-spearbit.pdf | MorphoMarketV1Registry | unmatched — not counted | — | mentioned in finding context | no |
| 2025-09-11-spearbit.pdf | MorphoVaultV1Registry | unmatched — not counted | — | mentioned in finding context | no |
| 2025-09-11-spearbit.pdf | RegistryList | own contract | RegistryList (selected) `0x3696c5eae4a7ffd04ea163564571e9cd8ed9364e` — deployed 2025-09-16 13:46:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | MorphoMarketV1AdapterV2 | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | MorphoMarketV1AdapterV2Factory | own contract | MorphoMarketV1AdapterV2Factory (selected) `0x32bb1c0d48d8b1b3363e86eeb9a0300bad61ccc1` — deployed 2025-12-10 12:36:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | IMorphoMarketV1AdapterV2 | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | IMorphoMarketV1AdapterV2Factory | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | ErrorsLib | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | IERC4626 | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | AdaptiveCurveIrmLib | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | MorphoMarketV1Registry | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | MorphoMarketV1RegistryV2 | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | MorphoVaultV1Registry | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | RegistryList | own contract | RegistryList (selected) `0x3696c5eae4a7ffd04ea163564571e9cd8ed9364e` — deployed 2025-09-16 13:46:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | IMorphoMarketV1Registry | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | IMorphoMarketV1RegistryV2 | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | IMorphoVaultV1Registry | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | IRegistryList | unmatched — not counted | — | listed in scope | no |
| 2024-10-29-pre-liquidation-spearbit.pdf | PreLiquidation | unmatched — not counted | — | mentioned in findings context and executive summary | no |
| 2024-10-29-pre-liquidation-spearbit.pdf | PreLiquidationFactory | unmatched — not counted | — | mentioned in finding 5.2.3 | no |
| 2024-11-01-pre-liquidation-ABDK-consulting.pdf | PreLiquidation | unmatched — not counted | — | listed in scope section | no |
| 2024-11-01-pre-liquidation-ABDK-consulting.pdf | PreLiquidationFactory | unmatched — not counted | — | listed in scope section | no |
| 2024-11-01-pre-liquidation-ABDK-consulting.pdf | IPreLiquidation | unmatched — not counted | — | listed in scope section | no |
| 2024-11-01-pre-liquidation-ABDK-consulting.pdf | IPreLiquidationCallback | unmatched — not counted | — | listed in scope section | no |
| 2024-11-01-pre-liquidation-ABDK-consulting.pdf | IPreLiquidationFactory | unmatched — not counted | — | listed in scope section | no |
| 2024-11-01-pre-liquidation-ABDK-consulting.pdf | PreLiquidationAddressLib | unmatched — not counted | — | listed in scope section | no |
| 2024-11-01-pre-liquidation-ABDK-consulting.pdf | ErrorsLib | unmatched — not counted | — | listed in scope section | no |
| 2024-11-01-pre-liquidation-ABDK-consulting.pdf | EventsLib | unmatched — not counted | — | listed in scope section | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | MetaMorpho | unmatched — not counted | — | listed in scope and findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | IMetaMorpho | unmatched — not counted | — | listed in scope and findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | ErrorsLib | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | EventsLib | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | UtilsLib | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | MathLib | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | SharesMathLib | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | MorphoLib | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | MorphoBalancesLib | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | MarketParamsLib | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | SafeCast | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | SafeERC20 | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | ERC4626 | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | ConstantsLib | unmatched — not counted | — | listed in findings | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | BaseBundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | ERC4626Bundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | MorphoBundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | Permit2Bundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | PermitBundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | StEthBundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | TransferBundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | UrdBundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | WNativeBundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | EthereumBundler | own contract | EthereumBundler (selected) `0xa7995f71aa11525db02fc2473c37dee5dbf55107` — deployed 2024-01-03 17:48:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | EthereumPermitBundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | EthereumStEthBundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IDaiPermit | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | MainnetLib | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | AaveV2EthereumMigrationBundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IMorphoBundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IMulticall | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IStEth | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IWNative | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IWstEth | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | ConstantsLib | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | ErrorsLib | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | AaveV2MigrationBundler | own contract | AaveV2MigrationBundler (selected) `0xb3dcc75db379925edfd3007511a8ce0cb4aa8e76` — deployed 2024-01-03 17:48:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | AaveV3MigrationBundler | own proxy deployment | AaveV3MigrationBundler (proxy) (selected) `0x98ccb155e86bb478d514a827d16f58c6912f9bdc` — deployed 2024-01-03 17:48:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | AaveV3OptimizerMigrationBundler | own contract | AaveV3OptimizerMigrationBundler (selected) `0x16f38d2e764e7bebf625a8e995b34968226d2f9c` — deployed 2024-01-03 17:48:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | CompoundV2MigrationBundler | own contract | CompoundV2MigrationBundler (selected) `0x26bf52a84360ad3d01d7cdc28fc2ddc04d8c8647` — deployed 2024-01-03 17:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | CompoundV3MigrationBundler | own contract | CompoundV3MigrationBundler (selected) `0x3a0e2e9fb9c95fbc843daf166276c90b6c479558` — deployed 2024-01-03 17:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | MigrationBundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | ICEth | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | ICToken | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | ICompoundV3 | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IComptroller | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | UniversalRewardsDistributor | own contract | UniversalRewardsDistributor (selected) `0x330eefa8a787552dc5cad3c3ca644844b1e61ddb` — deployed 2024-03-10 18:00:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | UrdFactory | own contract | UrdFactory (selected) `0x9baa51245cdd28d8d74afe8b3959b616e9ee7c8d` — deployed 2023-12-28 18:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IUniversalRewardsDistributor | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | EventsLib | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | MetaMorpho | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | MetaMorphoFactory | own contract | MetaMorphoFactory (selected) `0xa9c3d3a366466fa809d1ae982fb2c46e5fc41101` — deployed 2024-01-03 11:15:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IMetaMorpho | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IMorphoMarketParams | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | ChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | AggregatorV3Interface | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IERC4626 | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | ChainlinkDataFeedLib | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | VaultLib | unmatched — not counted | — | listed in scope | no |
| 2024-01-05-periphery-cantina-competition.pdf | CompoundV2MigrationBundler | own contract | CompoundV2MigrationBundler (selected) `0x26bf52a84360ad3d01d7cdc28fc2ddc04d8c8647` — deployed 2024-01-03 17:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01-05-periphery-cantina-competition.pdf | ERC4626Bundler | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| 2024-01-05-periphery-cantina-competition.pdf | AaveV2MigrationBundler | own contract | AaveV2MigrationBundler (selected) `0xb3dcc75db379925edfd3007511a8ce0cb4aa8e76` — deployed 2024-01-03 17:48:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01-05-periphery-cantina-competition.pdf | AaveV3MigrationBundler | own proxy deployment | AaveV3MigrationBundler (proxy) (selected) `0x98ccb155e86bb478d514a827d16f58c6912f9bdc` — deployed 2024-01-03 17:48:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01-05-periphery-cantina-competition.pdf | AaveV3OptimizerMigrationBundler | own contract | AaveV3OptimizerMigrationBundler (selected) `0x16f38d2e764e7bebf625a8e995b34968226d2f9c` — deployed 2024-01-03 17:48:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01-05-periphery-cantina-competition.pdf | ConstantsLib | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| 2024-01-05-periphery-cantina-competition.pdf | MetaMorpho | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| 2024-01-05-periphery-cantina-competition.pdf | CompoundV3MigrationBundler | own contract | CompoundV3MigrationBundler (selected) `0x3a0e2e9fb9c95fbc843daf166276c90b6c479558` — deployed 2024-01-03 17:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01-05-periphery-cantina-competition.pdf | ERC20WrapperBundler | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| 2024-09-23-metamorpho-diff-cantina-managed-review.pdf | MetaMorpho | unmatched — not counted | — | Listed in scope and findings context | no |
| 2025-01-10-metamorpho-v1.1-open-zeppelin.pdf | MetaMorphoV1_1 | unmatched — not counted | — | listed in scope | no |
| 2025-01-10-metamorpho-v1.1-open-zeppelin.pdf | MetaMorphoV1_1Factory | own contract | MetaMorphoV1_1Factory (selected) `0x1897a8997241c1cd4bd0698647e4eb7213535c24` — deployed 2024-12-20 01:19:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-01-10-metamorpho-v1.1-open-zeppelin.pdf | IMetaMorpho | unmatched — not counted | — | listed in scope | no |
| 2025-01-10-metamorpho-v1.1-open-zeppelin.pdf | ConstantsLib | unmatched — not counted | — | listed in scope | no |
| 2025-01-10-metamorpho-v1.1-open-zeppelin.pdf | EventsLib | unmatched — not counted | — | listed in scope | no |
| 2025-02-20-metamorpho-v1.1-cantina-managed.pdf | MetaMorpho | unmatched — not counted | — | The report is a security review of 'metamorpho-v1.1' and mentions 'MetaMorpho vault' and 'MetaMorpho v1.0'. | no |
| 2024-03-11-morpho-public-allocator-cantina-managed.pdf | PublicAllocator | unmatched — not counted | — | Listed in scope and findings context | no |
| 2024-03-11-morpho-public-allocator-cantina-managed.pdf | MetaMorpho | unmatched — not counted | — | Listed in scope and findings context | no |
| 2024-03-11-morpho-public-allocator-cantina-managed.pdf | EventsLib | unmatched — not counted | — | Listed in findings context | no |
| 2024-03-11-morpho-public-allocator-cantina-managed.pdf | IPublicAllocator | unmatched — not counted | — | Listed in findings context | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | Morpho | own contract | Morpho (selected) `0x01b0bd309aa75547f7a37ad7b1219a898e67a83a` — deployed 2025-07-17 15:46:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | IERC20 | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | IIrm | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | IMorpho | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | IMorphoCallbacks | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | IOracle | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | ConstantsLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | ErrorsLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | MarketsParamsLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | MathLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | SafeTransferLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | SharesMathLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | EventsLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | UtilsLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | MorphoBalancesLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | MorphoLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | MorphoStorageLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | Irm | unmatched — not counted | — | mentioned as audited separately | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | MorphoBlue | unmatched — not counted | — | Main contract name in title and throughout report | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | Morpho | own contract | Morpho (selected) `0x01b0bd309aa75547f7a37ad7b1219a898e67a83a` — deployed 2025-07-17 15:46:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | IIrm | unmatched — not counted | — | Listed in context of findings (e.g., IIrm.sol#L14) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | IOracle | unmatched — not counted | — | Listed in context of findings (e.g., IOracle.sol#L9-L13) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | MathLib | unmatched — not counted | — | Listed in context of findings (e.g., MathLib.sol#L33) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | SharesMathLib | unmatched — not counted | — | Listed in context of findings (e.g., SharesMathLib.sol#L10-L11) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | UtilsLib | unmatched — not counted | — | Listed in context of findings (e.g., UtilsLib.sol) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | MorphoLib | unmatched — not counted | — | Listed in context of findings (e.g., MorphoLib.sol) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | MorphoBalancesLib | unmatched — not counted | — | Listed in context of findings (e.g., MorphoBalancesLib.sol#L94-L106) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | MorphoStorageLib | unmatched — not counted | — | Listed in context of findings (e.g., MorphoStorageLib.sol) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | EventsLib | unmatched — not counted | — | Listed in context of findings (e.g., EventsLib.sol#L85-L90) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | ConstantsLib | unmatched — not counted | — | Listed in context of findings (e.g., ConstantsLib.sol#L17) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | MarketParamsLib | unmatched — not counted | — | Listed in context of findings (e.g., MarketParamsLib.sol#L15-L16) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | SafeTransferLib | unmatched — not counted | — | Listed in context of findings (e.g., SafeTransferLib.sol) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | SpeedJumpIrm | unmatched — not counted | — | Listed in context of findings (e.g., SpeedJumpIrm.sol) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | IrmMock | unmatched — not counted | — | Mentioned in finding 3.5.2 as a mock IRM | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | IMorpho | unmatched — not counted | — | Listed in context of findings (e.g., IMorpho.sol) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | IMorphoCallbacks | unmatched — not counted | — | Listed in context of findings (e.g., IMorphoCallbacks.sol#L37-L41) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | IMorphoMarketStruct | unmatched — not counted | — | Listed in finding 3.5.8 | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | IMorphoLite | unmatched — not counted | — | Suggested rename in finding 3.5.8 | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | IMulticall | unmatched — not counted | — | Listed in finding 3.5.16 | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | IMorphoBundler | unmatched — not counted | — | Listed in finding 3.5.16 | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | EthereumPermitBundler | unmatched — not counted | — | Listed in finding 3.5.16 | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | ErrorsLib | unmatched — not counted | — | Referenced in findings (e.g., ErrorsLib.INSUFFICIENT_LIQUIDITY) | no |
| 2024-01-05-morpho-blue-cantina-competition.pdf | Morpho | own contract | Morpho (selected) `0x01b0bd309aa75547f7a37ad7b1219a898e67a83a` — deployed 2025-07-17 15:46:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01-05-morpho-blue-cantina-competition.pdf | SafeTransferLib | unmatched — not counted | — | listed in scope | no |
| 2024-01-05-morpho-blue-cantina-competition.pdf | ChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| 2024-01-05-morpho-blue-cantina-competition.pdf | AdaptiveCurveIrm | own contract | AdaptiveCurveIrm (selected) `0x46415998764c29ab2a25cbea6254146d50d22687` — deployed 2024-05-03 16:40:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01-05-morpho-blue-cantina-competition.pdf | SharesMathLib | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x40288815c399709dfc0875a384b637ffe387961b` | AaveV2MigrationAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2cc8d502a65824b4cf9a58db03490ba024bdb806` | AaveV3MigrationAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9e2ea2d5785598a163d569d795f286f5c55ad972` | AaveV3OptimizerMigrationAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6566194141eefa99af43bb5aa71460ca2dc90245` | Bundler3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9b89c07f480df1945279031b5fc6ff241b8f1101` | CompoundV2MigrationAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdba5bde29ea030bfa6a608592dfca1d02cb26773` | CompoundV3MigrationAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf83d17dfe160597b19e4fdd8ea61a23e9a87f962` | ERC20WrapperAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4095f064b8d3c3548a3bebfd0bbfd04750e30077` | EthereumBundlerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4a6c312ec70e8747a587ee860a0353cd42be0ae0` | EthereumGeneralAdapter1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2dc205f24bcb6b311e5cdf0745b0741648aebd3d` | MorphoChainlinkOracleV2Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x50d3d6fd7518682155e3c1b65fdd50e1b35649d9` | MorphoOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9994e35db50125e0df82e4c2dde62496ce330999` | MorphoToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x03b5259bd204bfd4a616e5b79b0b786d90c6c38f` | ParaswapAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9d03bb2092270648d7480049d0e58d2fcf0e5123` | Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 164 |
| upstream | 1 |
| standard_library | 16 |
| needs_review | 214 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 15
- Inherited remapped matches: 0
- Address-book scope dispositions: 40 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 300 unmatched
- Matched-own operational status: 40 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=23, low=2, medium=5
- Match method counts: unique_name=54

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
- [17677] 2024-03-11-morpho-public-allocator-cantina-managed.pdf

Fork inheritance lineage and inherited audits are included when available.
