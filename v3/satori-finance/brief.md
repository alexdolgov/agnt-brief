# Agentic Audit Brief: Satori Finance

## Project Overview

- Project: Satori Finance (`satori-finance`)
- Website: [https://satori.finance](https://satori.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:51.908Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, base, ethereum, linea, polygon-zkevm, scroll
- Contract surface: 168 unique implementations (277 raw deployments)
- DeFi Llama TVL: $914,426.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 150 project-authored contract(s) across 3 chain(s); 2 ERC4626 vaults, 53 ERC20 tokens, 1 ERC721 NFT, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 21 common project-authored base contract(s) (proxy, lockable, ynbase). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 423; live-surface contracts included: 241 (164 live, 77 unknown).
- Excluded by liveness: 182 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/102 (0.0%)
- Deployed-live implementations: 102 of 168 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/102
- Verified + Unaudited implementations: 102
- Verified by bytecode match: 0
- Unverified implementations: 66
- Unique implementations: 168
- Raw deployments: 277
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (102)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountingModule | unknown | ethereum | n/a | [`0x77fb6f...de469a`](./contracts/ethereum-1/0x77fb6fd121afe51c95fea53069686138b8de469a/) | ⚠️ Unaudited |
| AccountingToken | unknown | ethereum | n/a | [`0xb39822...071421`](./contracts/ethereum-1/0xb39822a4212b63c90c674a5e608cecbf4b071421/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2d8ba0...aafc4f`](./contracts/ethereum-1/0x2d8ba08c19ae55bb785ca5b3c720f78917aafc4f/); ethereum `0x3bfce3...d18c4f`; ethereum `0xb70f12...06bc74`; ethereum `0xe7e39d...b294ce` | ⚠️ Unaudited |
| AETH_R21 | unknown | ethereum | n/a | [`0xe95a20...c2c3cb`](./contracts/ethereum-1/0xe95a203b1a91a908f9b9ce46459d101078c2c3cb/) | ⚠️ Unaudited |
| aMATICb_R7 | unknown | ethereum | n/a | [`0x99534e...38ebfe`](./contracts/ethereum-1/0x99534ef705df1fff4e4bd7bbaaf9b0dff038ebfe/) | ⚠️ Unaudited |
| aMATICc_R4 | unknown | ethereum | n/a | [`0x26dcfb...c5480c`](./contracts/ethereum-1/0x26dcfbfa8bc267b250432c01c982eaf81cc5480c/) | ⚠️ Unaudited |
| AnkrTokenStaking | unknown | ethereum | n/a | [`0x5c87cc...85408c`](./contracts/ethereum-1/0x5c87cc2153d25f8d8b95ea3c04ab22583285408c/) | ⚠️ Unaudited |
| AnkrTokenStaking | unknown | ethereum | n/a | [`0xab15b0...1f9e7f`](./contracts/ethereum-1/0xab15b0bddc012092cb23f53953149a7f8c1f9e7f/) | ⚠️ Unaudited |
| AssetRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0734ca...904101`](./contracts/ethereum-1/0x0734ca72aa1b8f42e1364924c8ae01ffdb904101/); ethereum `0x54ab85...5bafce` | ⚠️ Unaudited |
| AssetRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x081755...20f4a9`](./contracts/ethereum-1/0x081755f41f20697cbabaef7315a964bf3620f4a9/); ethereum `0xedb597...f62576` | ⚠️ Unaudited |
| AssetRegistry | unknown | ethereum | n/a | [`0x323c93...4270fd`](./contracts/ethereum-1/0x323c933df2523d5b0c756210446eee0fb84270fd/) | ⚠️ Unaudited |
| AsyncWithdrawalLib | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa4ce33...16610c`](./contracts/ethereum-1/0xa4ce33a1e22c79330873ba8010e69f0bd016610c/); ethereum `0xee25e8...322684` | ⚠️ Unaudited |
| BaseRules | unknown | ethereum | n/a | [`0x3f582d...0d2410`](./contracts/ethereum-1/0x3f582d92e96cd5d61a29fac2badf8d1e4f0d2410/) | ⚠️ Unaudited |
| Beacon_R0 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x27ccac...37beb3`](./contracts/ethereum-1/0x27ccacc5eb28625d2be45c4ac29e5f1c3637beb3/); ethereum `0x429ce3...180ead` | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x892dff...6af3e8`](./contracts/ethereum-1/0x892dff5257b39f7afb7803dd7c81e8ecdb6af3e8/); ethereum `0x9fbc36...ffdc4c`; ethereum `0xe72fe6...938cb9` | ⚠️ Unaudited |
| Config | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcd3a6c...d1a42e`](./contracts/ethereum-1/0xcd3a6c3e9e823e7c13fb0ee71f9360bacdd1a42e/); ethereum `0xfaf36e...022886` | ⚠️ Unaudited |
| Connector | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc98dce...0919cb`](./contracts/ethereum-1/0xc98dce50f707f7563ec8ba0274b43bcf940919cb/); ethereum `0xd4f8cc...eb514d` | ⚠️ Unaudited |
| CrossChainBridge_R2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x00a7ac...605f3d`](./contracts/ethereum-1/0x00a7ac37c6b9a10e0c68051390695546a5605f3d/); ethereum `0xe7ac51...10b795` | ⚠️ Unaudited |
| EigenStrategyManager | unknown | ethereum | n/a | [`0x7390cd...5701e5`](./contracts/ethereum-1/0x7390cdfff38c8871ccb80e9b38ff88fe735701e5/) | ⚠️ Unaudited |
| EigenStrategyManager | unknown | ethereum | n/a | [`0x92d904...5a68fc`](./contracts/ethereum-1/0x92d904019a92b0cafce3492abb95577c285a68fc/) | ⚠️ Unaudited |
| EigenStrategyManager | unknown | ethereum | n/a | [`0xb1c635...36e94d`](./contracts/ethereum-1/0xb1c63581929d372f35c26327385e9ff6c636e94d/) | ⚠️ Unaudited |
| FETH_R20 | unknown | ethereum | n/a | [`0xd01ef7...62e5c6`](./contracts/ethereum-1/0xd01ef7c0a5d8c432fc2d1a85c66cf2327362e5c6/) | ⚠️ Unaudited |
| FlexStrategy | unknown | ethereum | n/a | [`0xf151b8...e29153`](./contracts/ethereum-1/0xf151b80d9be891fdc97279f373eefd6289e29153/) | ⚠️ Unaudited |
| FlexStrategyDeployer | unknown | ethereum | n/a | [`0x7f275b...d36938`](./contracts/ethereum-1/0x7f275b3c502f0b685ef477a1357093c88ed36938/) | ⚠️ Unaudited |
| FutureBondAVAX_R2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x30176c...b12216`](./contracts/ethereum-1/0x30176cecb6dbf0869d59493142925a0287b12216/); ethereum `0x53fbd9...44c725` | ⚠️ Unaudited |
| GlobalPool_R46 | unknown | ethereum | n/a | [`0x84db6e...936670`](./contracts/ethereum-1/0x84db6ee82b7cf3b47e8f19270abde5718b936670/) | ⚠️ Unaudited |
| Governance_R3 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc12ebc...109dae`](./contracts/ethereum-1/0xc12ebcedc914b3f52022cda98c92e3b95e109dae/); ethereum `0xed06c6...196a3a` | ⚠️ Unaudited |
| LSDRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x345f73...9f5b18`](./contracts/ethereum-1/0x345f73efd1cef9912340010e8f7e8192b49f5b18/); ethereum `0x3e30b4...4ea070` | ⚠️ Unaudited |
| LSDRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0xaedc83...5bba01`](./contracts/ethereum-1/0xaedc83f607126b4d2437f79285e2c635685bba01/); ethereum `0xb658cf...9f20d9` | ⚠️ Unaudited |
| LSDRateProvider | unknown | ethereum | n/a | [`0xc5ba40...e2d214`](./contracts/ethereum-1/0xc5ba40447f057d28442dc7d2ca7b2d7cf4e2d214/) | ⚠️ Unaudited |
| LSDWrapper | unknown | ethereum | n/a | [`0x99db76...1d6992`](./contracts/ethereum-1/0x99db7619c018d61dbc2822767b63240d311d6992/) | ⚠️ Unaudited |
| MainnetActors | unknown | ethereum | n/a | 6 deployments: ethereum [`0x447aad...d669c5`](./contracts/ethereum-1/0x447aaddf08d6b0d1daf8f0e8a99dc1a2f8d669c5/); ethereum `0x51ad86...401bc3`; ethereum `0x71635d...80393c`; ethereum `0xba4cc4...eb64fb`; ethereum `0xd9e79b...0adfa2`; ethereum `0xdd6f2c...7a9d0d` | ⚠️ Unaudited |
| MaxVaultViewer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0f2b81...bea74e`](./contracts/ethereum-1/0x0f2b81368781f1c846c8b2ad48bacb45a0bea74e/); ethereum `0xeed274...9e5c81` | ⚠️ Unaudited |
| OriginWithdrawalLib | unknown | ethereum | n/a | 2 deployments: ethereum [`0x24c870...d48061`](./contracts/ethereum-1/0x24c8706ee3ef603929cb0d4467268b83c2d48061/); ethereum `0xa68479...4783a4` | ⚠️ Unaudited |
| PolkadotPool_R1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x59f767...0f208e`](./contracts/ethereum-1/0x59f767ec659e9fe01ebcf930465e2ad4cc0f208e/); ethereum `0x88b44e...65d2b9` | ⚠️ Unaudited |
| PolygonPool_R8 | unknown | ethereum | n/a | [`0xcfd4b4...b3ce89`](./contracts/ethereum-1/0xcfd4b4bc15c8bf0fd820b0d4558c725727b3ce89/) | ⚠️ Unaudited |
| Provider | unknown | ethereum | n/a | 6 deployments: ethereum [`0x5a081b...38d7ff`](./contracts/ethereum-1/0x5a081b2a6094b7aaed74df2242e48f107b38d7ff/); ethereum `0x671698...a142b1`; ethereum `0x977ff7...e562d7`; ethereum `0xd5bf05...f3b01d`; ethereum `0xe141be...382d5a`; ethereum `0xeb4dbb...dac508` | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 11 deployments: ethereum [`0x0232fa...edf413`](./contracts/ethereum-1/0x0232fabaf9c6812534207ed34c5650b089edf413/); ethereum `0x06bc82...88b13c`; ethereum `0x105dde...ab0548`; ethereum `0x2a3e53...af0b3d`; ethereum `0x5e6bb1...2378f2`; ethereum `0xcc4e08...2cb392`; ethereum `0xf807b7...fbad30`; base `0xdcbc72...9c0982`; arbitrum `0x21ec83...0ac651`; linea `0xc99148...eeb63a`; linea `0xfa9b89...dad4b1` | ⚠️ Unaudited |
| ProxyUtils | unknown | ethereum | n/a | 5 deployments: ethereum [`0x08d8bc...23db89`](./contracts/ethereum-1/0x08d8bc0910e59ce30e2af151a67369cbbc23db89/); ethereum `0x39300e...3bf326`; ethereum `0x7b3922...a95ab9`; ethereum `0xc32ff5...217a63`; ethereum `0xe96221...504903` | ⚠️ Unaudited |
| RedemptionAssetsVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x73bc33...88d55e`](./contracts/ethereum-1/0x73bc33999c34a5126ca19dc900f22690c288d55e/); ethereum `0x9892a4...a6f14a` | ⚠️ Unaudited |
| ReferralDepositAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x41e60c...21c3d7`](./contracts/ethereum-1/0x41e60cf98075315e4d6133a9dc25a2847b21c3d7/); ethereum `0xd6bba2...68b4a1` | ⚠️ Unaudited |
| ReferralDepositAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x86149f...232e00`](./contracts/ethereum-1/0x86149f5a512c3b7ec123d081e5e6193a63232e00/); ethereum `0xe8edf9...bd8a37` | ⚠️ Unaudited |
| RewardsDistributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x306ebe...eb5f72`](./contracts/ethereum-1/0x306ebed66642867b94b29752be37b8f20feb5f72/); ethereum `0x40d5ff...652351` | ⚠️ Unaudited |
| RewardsDistributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x77b26a...9d6f99`](./contracts/ethereum-1/0x77b26a2ebb73ce9bdf5c8c44cb98e98f089d6f99/); ethereum `0xa469cd...74f2ec` | ⚠️ Unaudited |
| RewardsReceiver | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1d6b2a...95c12b`](./contracts/ethereum-1/0x1d6b2a11ffea5f9a8ed85a02581910b3d695c12b/); ethereum `0x863ba8...ff159b` | ⚠️ Unaudited |
| RewardsReceiver | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4975e6...7b7dc7`](./contracts/ethereum-1/0x4975e6c808ddb8fc6a9bc48f6dfd4398bf7b7dc7/); ethereum `0x5de8c7...29762c` | ⚠️ Unaudited |
| RewardsReceiver | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa98e86...b91582`](./contracts/ethereum-1/0xa98e8652daf2407839b18f4e215d86d88eb91582/); ethereum `0xe439fe...26536e` | ⚠️ Unaudited |
| RewardsReceiver | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd3e7e4...01de56`](./contracts/ethereum-1/0xd3e7e46c62b0fea4cd73920c65971b67ea01de56/); ethereum `0xd47b9c...0b17bf` | ⚠️ Unaudited |
| RewardsSweeper | unknown | ethereum | n/a | [`0xb94b57...5fbde5`](./contracts/ethereum-1/0xb94b57c8c0c3151e7a3fad815e10e358215fbde5/) | ⚠️ Unaudited |
| RSETH | token | ethereum | n/a | [`0xa1290d...99e5a7`](./contracts/ethereum-1/0xa1290d69c65a6fe4df752f95823fae25cb99e5a7/) | ⚠️ Unaudited |
| StakingConfig | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2d3f89...ce6aae`](./contracts/ethereum-1/0x2d3f893c7c45c2be3ec63cf5385deafd7ece6aae/); ethereum `0xd4f5ff...7c06d1` | ⚠️ Unaudited |
| StakingNodesManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x21e86b...0ea06d`](./contracts/ethereum-1/0x21e86b28b0afec2c3f570a924a8ec969fc0ea06d/); ethereum `0x540af4...43d5c8` | ⚠️ Unaudited |
| StakingNodesManager | unknown | ethereum | n/a | [`0x8c33a1...59cd7d`](./contracts/ethereum-1/0x8c33a1d6d062db7b51f79702355771d44359cd7d/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | 12 deployments: ethereum [`0x097162...5158f1`](./contracts/ethereum-1/0x0971628c7d3c6009d309165fedcc47a12e5158f1/); ethereum `0x24590b...65af94`; ethereum `0x3e469b...2edafe`; ethereum `0x4e1ba8...81a8a4`; ethereum `0x5671ae...b772c3`; ethereum `0x617ecc...4b2f70`; ethereum `0x67f1fc...5fcb9d`; ethereum `0x8735dd...96566b`; ethereum `0x8b25ae...deee73`; ethereum `0xbb73f8...1d017a`; ethereum `0xc6ca36...42d46b`; ethereum `0xfec7e2...62c2bf` | ⚠️ Unaudited |
| TokenStakingNodesManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x22417e...006310`](./contracts/ethereum-1/0x22417e36dd2290f5a36d50112790bf6b61006310/); ethereum `0x592d1e...4ec647` | ⚠️ Unaudited |
| TokenStakingNodesManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x40edd9...46def4`](./contracts/ethereum-1/0x40edd919c65373eed356d26c6d7561569346def4/); ethereum `0xb03146...88243f` | ⚠️ Unaudited |
| TokenStakingNodesManager | unknown | ethereum | n/a | [`0x6b566c...30a0c3`](./contracts/ethereum-1/0x6b566cb6cddf7d140c59f84594756a151030a0c3/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 7 deployments: ethereum [`0x237bc9...9a1119`](./contracts/ethereum-1/0x237bc92d4650fa44133dfe6369b5198da09a1119/); ethereum `0x686620...405dc2`; ethereum `0x8059c1...4d726e`; ethereum `0x97790d...98d0be`; ethereum `0xe7c675...9691b7`; ethereum `0xe7d43a...78a6fa`; ethereum `0xeafbb3...2ddf02` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4b8f58...2aafa3`](./contracts/ethereum-1/0x4b8f585d281eaaeb705f3f8710c30f071a2aafa3/); ethereum `0x9686cc...643726` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x514d0a...52f365`](./contracts/ethereum-1/0x514d0ac9bfaf631ac7b303564ba1c822bc52f365/); ethereum `0xcb45da...93cfce` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9633ff...15ee84`](./contracts/ethereum-1/0x9633ff38878a2dfe853cfc6067dd1a241015ee84/); ethereum `0xd56c14...56a4dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x7d61a7...25cbe7`](./contracts/base-8453/0x7d61a7c329d1a23b98471f63d6a8246ca725cbe7/); base `0x9d3ada...85a155` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x323967...2dc800`](./contracts/arbitrum-42161/0x3239678037d38865c25747e364660a0a3c2dc800/); arbitrum `0x7eb51e...93b84d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | linea | n/a | 2 deployments: linea [`0x028251...ef2275`](./contracts/linea-59144/0x0282515de1f3ba5953298a72f1357cfda6ef2275/); linea `0xc6a889...014b34` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | linea | n/a | 2 deployments: linea [`0x379869...4402e9`](./contracts/linea-59144/0x3798699893b3a459e80152b7aab9f4663b4402e9/); linea `0x5940a6...9765b7` | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | [`0x01ba69...4c15d8`](./contracts/ethereum-1/0x01ba69727e2860b37bc1a2bd56999c1afb4c15d8/) | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc1c5b1...bc62c8`](./contracts/ethereum-1/0xc1c5b18774d0282949331b719b5ea4a21cbc62c8/); ethereum `0xd91fe1...4e0402` | ⚠️ Unaudited |
| VaultLib | unknown | ethereum | n/a | 7 deployments: ethereum [`0x1894d6...ea9e11`](./contracts/ethereum-1/0x1894d6f986fcc8564b12f2fb2b8296531fea9e11/); ethereum `0x24024c...5b70f9`; ethereum `0x64096a...82c58b`; ethereum `0xb59f18...25c300`; ethereum `0xc6d480...0098d6`; ethereum `0xc89de4...35d8c6`; ethereum `0xe46adc...26a6b6` | ⚠️ Unaudited |
| WithdrawalQueueManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0bc9bc...0aa67b`](./contracts/ethereum-1/0x0bc9bc81ad379810b36ad5cc95387112990aa67b/); ethereum `0x6ac38a...2185cd` | ⚠️ Unaudited |
| WithdrawalQueueManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x42d3ee...9360a1`](./contracts/ethereum-1/0x42d3eeb30ca4abe004ca5214b3d4177d149360a1/); ethereum `0x60d812...d9dcf3` | ⚠️ Unaudited |
| WithdrawalQueueManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8face3...4d60b4`](./contracts/ethereum-1/0x8face3283e20b19d98a7a132274b69c1304d60b4/); ethereum `0xaac93a...0a5d64` | ⚠️ Unaudited |
| WithdrawalsProcessor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x131d4f...426643`](./contracts/ethereum-1/0x131d4f89b1e0387c0d2278e8c375f4c802426643/); ethereum `0x503895...e5b340` | ⚠️ Unaudited |
| WithdrawalsProcessor | unknown | ethereum | n/a | [`0x6d052c...6c5fba`](./contracts/ethereum-1/0x6d052cded3f64aea51f6051f33b68b42016c5fba/) | ⚠️ Unaudited |
| Withdrawer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1da2a0...b7e92b`](./contracts/ethereum-1/0x1da2a0fef0407974d00335ee623098082cb7e92b/); ethereum `0xea03aa...1e04fc` | ⚠️ Unaudited |
| Withdrawer | unknown | ethereum | n/a | [`0x2ad086...268fed`](./contracts/ethereum-1/0x2ad086e5e815bcb827336bd820bd39bf76268fed/) | ⚠️ Unaudited |
| Withdrawer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x352766...8e88d5`](./contracts/ethereum-1/0x3527663fa14f1799ffdf54fdc7e721d2fb8e88d5/); ethereum `0xe4d258...209cd7` | ⚠️ Unaudited |
| Withdrawer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3fc377...873b4a`](./contracts/ethereum-1/0x3fc3771cf29b96069644ea249f3f036069873b4a/); ethereum `0xa55dc4...9b44f7` | ⚠️ Unaudited |
| Withdrawer | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb64524...3deb54`](./contracts/ethereum-1/0xb64524af495465c7586337257259b0b2503deb54/); ethereum `0xe83289...75d6c7` | ⚠️ Unaudited |
| WithdrawerConfigurator | unknown | ethereum | n/a | 2 deployments: ethereum [`0xf2c5c0...3d427a`](./contracts/ethereum-1/0xf2c5c018c983dc9455efeba22e3a0150143d427a/); ethereum `0xf8dad4...35d9d1` | ⚠️ Unaudited |
| WithdrawerConfigurer | unknown | ethereum | n/a | [`0x0a4a9c...68cf89`](./contracts/ethereum-1/0x0a4a9c17e20bed3e9fedc52f600e07f2bd68cf89/) | ⚠️ Unaudited |
| WrappedToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3f574f...c31e58`](./contracts/ethereum-1/0x3f574ff13a9540c3e7844704e962b1b186c31e58/); ethereum `0xda7d20...28e574` | ⚠️ Unaudited |
| XReferralAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x80ff99...cb234b`](./contracts/ethereum-1/0x80ff998869294238dc2ae0b8c643a59b44cb234b/); ethereum `0xdb7aa0...8e3fc0` | ⚠️ Unaudited |
| YieldNestOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa96a27...2f1038`](./contracts/ethereum-1/0xa96a2716df5133b2fdc2ff367e51c609172f1038/); ethereum `0xf592cd...d4a59b` | ⚠️ Unaudited |
| ynEigen | unknown | ethereum | n/a | [`0x35ec69...42630c`](./contracts/ethereum-1/0x35ec69a77b79c255e5d47d5a3bdbefefe342630c/) | ⚠️ Unaudited |
| ynEigen | unknown | ethereum | n/a | [`0x5cc73a...05d222`](./contracts/ethereum-1/0x5cc73aaa18045cebb41d7611ac1ff6298105d222/) | ⚠️ Unaudited |
| ynEigen | unknown | ethereum | n/a | [`0xb06084...57d189`](./contracts/ethereum-1/0xb060841150adc3707e4cd37f9a7833a2a957d189/) | ⚠️ Unaudited |
| ynEigenDepositAdapter | unknown | ethereum | n/a | [`0x0027da...20f827`](./contracts/ethereum-1/0x0027da0545fe5e5d4fb80e8e6fc78091ab20f827/) | ⚠️ Unaudited |
| ynEigenDepositAdapter | unknown | ethereum | n/a | [`0x6254fa...6e30bd`](./contracts/ethereum-1/0x6254faa72a40d8c1f4051fed8b33689f8d6e30bd/) | ⚠️ Unaudited |
| ynEigenDepositAdapter | unknown | ethereum | n/a | [`0x9e7215...6753c0`](./contracts/ethereum-1/0x9e72155d301a6555dc565315be72d295c76753c0/) | ⚠️ Unaudited |
| ynEigenViewer | unknown | ethereum | n/a | [`0x9b933d...bef28f`](./contracts/ethereum-1/0x9b933d84fac0782f3b275d76b64a0dbf6fbef28f/) | ⚠️ Unaudited |
| ynEigenViewer | unknown | ethereum | n/a | [`0xc16fef...2e64da`](./contracts/ethereum-1/0xc16fef607b58bb8fa4a1433ceb09663c9c2e64da/) | ⚠️ Unaudited |
| ynEigenViewer | unknown | ethereum | n/a | [`0xc7cccf...a0ad29`](./contracts/ethereum-1/0xc7cccfebb13e1cabd716187aa6ce378d71a0ad29/) | ⚠️ Unaudited |
| ynETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x09db87...373a48`](./contracts/ethereum-1/0x09db87a538bd693e9d08544577d5ccfaa6373a48/); ethereum `0x87e2a5...43710a` | ⚠️ Unaudited |
| ynETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0f503d...8bf0b3`](./contracts/ethereum-1/0x0f503d3b3929d421b0a1c8b1fbf38e029f8bf0b3/); ethereum `0xcebdee...fff482` | ⚠️ Unaudited |
| ynETHRedemptionAssetsVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x151d63...27a936`](./contracts/ethereum-1/0x151d63b006516b2aa09771e94775cf10ff27a936/); ethereum `0xd64b76...390451` | ⚠️ Unaudited |
| ynETHRedemptionAssetsVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5d6e53...9c5caf`](./contracts/ethereum-1/0x5d6e53c42e3b37f82f693937bc508940769c5caf/); ethereum `0xe1a2a7...b0fed5` | ⚠️ Unaudited |
| YnETHx | unknown | ethereum | n/a | [`0xc46c1f...69299a`](./contracts/ethereum-1/0xc46c1f2d7b6c34ffd5c6cc92a071e1c7e069299a/) | ⚠️ Unaudited |
| YnETHxConfigurer | unknown | ethereum | n/a | [`0x3794d5...4ffb7b`](./contracts/ethereum-1/0x3794d53a890ee7e6b1515d7e053b2e51934ffb7b/) | ⚠️ Unaudited |
| ynLSD | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7fd558...e43790`](./contracts/ethereum-1/0x7fd55817a481b192ca34998624d0d8eabce43790/); ethereum `0xe42de0...d9cf03` | ⚠️ Unaudited |
| ynViewer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2cfab6...9ca36e`](./contracts/ethereum-1/0x2cfab6562507171bdc8294b156d3e1e5669ca36e/); ethereum `0x7ae221...3ed9f0` | ⚠️ Unaudited |
| ynViewer | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa40565...d982f0`](./contracts/ethereum-1/0xa405650964a6cadb7b439cf9c202436fe8d982f0/); ethereum `0xc70c9b...6952e0` | ⚠️ Unaudited |
| ynViewer | unknown | ethereum | n/a | [`0xf0207f...c93ecf`](./contracts/ethereum-1/0xf0207ffa0b793e009df9df62fee95b8fc6c93ecf/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (66)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnkrProtocol | unknown | ethereum | n/a | `0x4432fa...f1d784` | ❓ Unverified |
| EarnConfig | unknown | ethereum | n/a | `0x1edf13...2de12e` | ❓ Unverified |
| PayAsYouGo | unknown | ethereum | n/a | `0x3d0bb8...3cb70f` | ❓ Unverified |
| Proxy (impl: 0x093448dec118b189069e5e1dc37171888a5a2786) | unknown | ethereum | n/a | `0x77fca8...bdae14` | ❓ Unverified |
| Proxy (impl: 0x91b00b13368a807dda768fe20420641904cfb15b) | unknown | ethereum | n/a | `0x417449...627b05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x033464...725ebc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0857f8...cbffde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08a0c5...64e123` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11e6ec...df6618` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1af808...112765` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c9e85...bb76c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x315654...18a069` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a0a9c...32592f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ffff1...47f02e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b0737...c21939` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60ee80...394769` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x618772...39886d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x676777...2ed09a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x704906...394c94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7baa1e...0a836d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a2f83...2ce27a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f6b9e...a2ea4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x951fa1...a40949` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97dc5b...cfc367` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa39408...63fe40` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae754c...8ac475` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7dd60...325912` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc31432...25992f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce4315...2f66ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcee58d...7db09c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf36f2...4f27a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd2886c...0b864f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6239d...66190e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7207f...ff18b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd99955...b14ce4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeaa59b...671d5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7902e...fd8eba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf89516...b40351` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd0f61...6c34d6` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | 4 deployments: polygon-zkevm `0x0842b3...d0eee0`; polygon-zkevm `0x48756b...00c476`; polygon-zkevm `0x62e724...856940`; polygon-zkevm `0xa59a23...9c2abb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0f9144...25a02e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x10c3fc...579560` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x19492a...eb44ba` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3c3191...420e38` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4858c6...4fa405` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5ced5d...3ac33c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5f075a...17b595` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x658620...0a13b0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x668a97...4d5aed` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d3163...34f873` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcad4a9...ca0dec` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcdaf86...5c3db7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe9adb4...55b478` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf4038d...2f2ab8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf906a1...dcbcbb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5acceb...beeed7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xae9a83...fe9a03` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0f9144...25a02e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4858c6...4fa405` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x62f4cf...525535` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xce0930...e932dd` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe9adb4...55b478` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf96116...37c50a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfb371e...a18425` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xff5859...6a2020` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xf96116...37c50a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Satori_audit_report.pdf](https://github.com/satoridao/contract_audit_report/blob/main/Satori_audit_report.pdf) | unknown | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 168 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3129] Satori_audit_report.pdf

Fork inheritance lineage and inherited audits are included when available.
