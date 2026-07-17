# Agentic Audit Brief: DackieSwap

## Project Overview

- Project: DackieSwap (`dackieswap`)
- Website: [https://dackieswap.xyz](https://dackieswap.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.774Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, base, blast, ethereum, linea, mode, optimism, unichain
- Contract surface: 113 unique implementations (205 raw deployments)
- DeFi Llama TVL: $48,846.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 78 project-authored contract(s) across 8 chain(s); 8 ERC20 tokens, 4 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 18 common project-authored base contract(s) (oft, oftcore, oapp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 325; live-surface contracts included: 198 (115 live, 83 unknown).
- Excluded by liveness: 127 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/40 (5.0%)
- Deployed-live implementations: 42 of 113 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/47
- Verified + Unaudited implementations: 45
- Verified by bytecode match: 0
- Unverified implementations: 66
- Unique implementations: 113
- Raw deployments: 205
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 4.3% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DackieNFT | token | base | n/a | [`0xebcec2e959bad4137925f9ddb68e163cca72242b`](./contracts/base-8453/0xebcec2e959bad4137925f9ddb68e163cca72242b/) | ✅ Audited |
| MasterChefV3 | unknown | base | n/a | 4 deployments: base [`0x3df41177096d1e18c1d4447fa16ecc12175fcbee`](./contracts/base-8453/0x3df41177096d1e18c1d4447fa16ecc12175fcbee/); base `0xf2890e09d21a30873ab04aa6e790ae1d78d83b6d`; mode `0x8817d540325f3680c59cf4ac6225f3e1173a4a99`; arbitrum `0xd1575b2e0c82fba9eddc3de9c9aaf923afa670cc` | ✅ Audited |

### ⚠️ Verified + Unaudited (45)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DackieFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0x3d237ac6d2f425d2e890cc99198818cc1fa48870`](./contracts/ethereum-1/0x3d237ac6d2f425d2e890cc99198818cc1fa48870/); unichain `0x507940c2469e6e3b33032f1d4ff8d123bdde2f5c`; mode `0x757cd583004400ee67e5cc3c7a60c6a62e3f6d30` | ⚠️ Unaudited |
| DackieFlexiblePool | core_logic | base | n/a | 2 deployments: base [`0x5cb90378614631b3d1baceddce6bc09e508b5b95`](./contracts/base-8453/0x5cb90378614631b3d1baceddce6bc09e508b5b95/); base `0xc845cc515335b7f9251a96d0cc4a64e65434a43b` | ⚠️ Unaudited |
| DackieOFT | unknown | mode | n/a | 4 deployments: mode [`0x36a0638f3c85261477a0b1d239df3c623f7f3d79`](./contracts/mode-34443/0x36a0638f3c85261477a0b1d239df3c623f7f3d79/); mode `0xf15578bcdb3ccba8585c563af9aae200c1413bca`; linea `0x507940c2469e6e3b33032f1d4ff8d123bdde2f5c`; linea `0x757cd583004400ee67e5cc3c7a60c6a62e3f6d30` | ⚠️ Unaudited |
| DackiePool | core_logic | base | n/a | 2 deployments: base [`0x4ad387bcb03b92a6e22a72391cc37493fc388b05`](./contracts/base-8453/0x4ad387bcb03b92a6e22a72391cc37493fc388b05/); base `0xf6c5b5df9bcee40cd474ccd6373f99b56dbcf5e5` | ⚠️ Unaudited |
| DackieRouter | adapter | ethereum | n/a | 6 deployments: ethereum [`0x2417036313b66eb0495f573f11142efdaead7f9b`](./contracts/ethereum-1/0x2417036313b66eb0495f573f11142efdaead7f9b/); unichain `0xe4efb979968ae4b85a166e5e083f7b166e70fe20`; base `0xca4eaa32e7081b0c4ba47e2bdf9b7163907fe56f`; mode `0x507940c2469e6e3b33032f1d4ff8d123bdde2f5c`; linea `0x79b3a60ccb3938042448c5576a23b8c325177cbb`; blast `0x5ba546a342bbee029a7729a7e8e0adb844a53802` | ⚠️ Unaudited |
| DackieSuperchain | unknown | base | n/a | [`0x73326b4d0225c429bed050c11c4422d91470aaf4`](./contracts/base-8453/0x73326b4d0225c429bed050c11c4422d91470aaf4/) | ⚠️ Unaudited |
| DackieToken | token | base | n/a | [`0xc2bc7a73613b9bd5f373fe10b55c59a69f4d617b`](./contracts/base-8453/0xc2bc7a73613b9bd5f373fe10b55c59a69f4d617b/) | ⚠️ Unaudited |
| DackieTokenMigrator | token | base | n/a | [`0x03d573c792a074ad71ddd9cd04ed93bac0b8050e`](./contracts/base-8453/0x03d573c792a074ad71ddd9cd04ed93bac0b8050e/) | ⚠️ Unaudited |
| DackieUSD | unknown | base | n/a | [`0x613ce28076289de255f1a6487437f03e37e4a71d`](./contracts/base-8453/0x613ce28076289de255f1a6487437f03e37e4a71d/) | ⚠️ Unaudited |
| DackieUSDOFT | unknown | optimism | n/a | 3 deployments: optimism [`0x1d01aae6ef5d13406fdabab0e6c12fb862e342c5`](./contracts/optimism-10/0x1d01aae6ef5d13406fdabab0e6c12fb862e342c5/); mode `0xddf7afe630c74bb82677b9afbc181e62410df8f0`; mode `0xfdf91d8289e30bbf9a34fb3e0246fd98d1914c2f` | ⚠️ Unaudited |
| DackieV3Factory | registry | unichain | n/a | [`0xb9010964301326160173da694c0697a2fce82f39`](./contracts/unichain-130/0xb9010964301326160173da694c0697a2fce82f39/) | ⚠️ Unaudited |
| DackieV3PoolDeployer | core_logic | unichain | n/a | 2 deployments: unichain [`0xc6f3966e5d08ced98ac30f8b65beab5882be54c7`](./contracts/unichain-130/0xc6f3966e5d08ced98ac30f8b65beab5882be54c7/); mode `0xe4efb979968ae4b85a166e5e083f7b166e70fe20` | ⚠️ Unaudited |
| DackieVault | core_logic | base | n/a | 2 deployments: base [`0x645d25cc63578096edbe941cb9ee56d20da5fc98`](./contracts/base-8453/0x645d25cc63578096edbe941cb9ee56d20da5fc98/); base `0xdd23df0df178ff0f25e8b4875fed6c814de67988` | ⚠️ Unaudited |
| DackieVaultReward | core_logic | base | n/a | [`0x4a911c7c98088a3e762273c9e962bf7456a4005c`](./contracts/base-8453/0x4a911c7c98088a3e762273c9e962bf7456a4005c/) | ⚠️ Unaudited |
| DonaswapV3Factory | unknown | mode | n/a | [`0xc6f3966e5d08ced98ac30f8b65beab5882be54c7`](./contracts/mode-34443/0xc6f3966e5d08ced98ac30f8b65beab5882be54c7/) | ⚠️ Unaudited |
| IDackieTier | unknown | base | n/a | 5 deployments: base [`0x319fbdf0a1c749a33fb54761b0d638878cc2e002`](./contracts/base-8453/0x319fbdf0a1c749a33fb54761b0d638878cc2e002/); base `0x729de4a888f6942d7bc4805533cfaaeb9e1a7d6d`; base `0x8cc9840e3cefa86d32107a0ddf87fe2cba99470c`; base `0xd98060e28842f0ccb0b207d508d96a1ac2c5f75a`; base `0xfc8f2a790e752773d6cac0eb6e7b651d574e8092` | ⚠️ Unaudited |
| KingDackieNFT | token | base | n/a | [`0x78f8142ea59ae08d81bc80b2fd415405628a48a0`](./contracts/base-8453/0x78f8142ea59ae08d81bc80b2fd415405628a48a0/) | ⚠️ Unaudited |
| MasterChefDACKIE | unknown | base | n/a | [`0x3905f0c724a284095353befafd932204ee6b94ad`](./contracts/base-8453/0x3905f0c724a284095353befafd932204ee6b94ad/) | ⚠️ Unaudited |
| MasterChefV2 | unknown | mode | n/a | 2 deployments: base `0x5083e8d08e1e154e1465b1f044ba3a524de67fa1`; mode [`0x07a2fb203e656e1d5cebe244b703c91bf3da5143`](./contracts/mode-34443/0x07a2fb203e656e1d5cebe244b703c91bf3da5143/) | ⚠️ Unaudited |
| MasterChefV3KeeperV1 | operational_periphery | base | n/a | [`0x6238e3549b253c7497d6e528dc9fdf6204ac4f5b`](./contracts/base-8453/0x6238e3549b253c7497d6e528dc9fdf6204ac4f5b/) | ⚠️ Unaudited |
| MasterChefV3KeeperV2 | unknown | mode | n/a | [`0x43ffd81f19e3fa4b774288eb9f7680619391f435`](./contracts/mode-34443/0x43ffd81f19e3fa4b774288eb9f7680619391f435/) | ⚠️ Unaudited |
| MasterChefV3ReceiverV2 | unknown | mode | n/a | [`0xdfd26cd5345323bbd1a98549546f05aa64953524`](./contracts/mode-34443/0xdfd26cd5345323bbd1a98549546f05aa64953524/) | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | blast | n/a | 3 deployments: optimism `0x6510e68561f04c1d111e616750dac2a063ff5055`; base `0xcd554fde84ef08a84d086f2917f8682c0cf39630`; blast [`0x1a4b306ba14d3fb8a49925675f8edb7ef607c422`](./contracts/blast-81457/0x1a4b306ba14d3fb8a49925675f8edb7ef607c422/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | [`0xcfb05ab06d338fd85bbf4486e69809d96a906b77`](./contracts/base-8453/0xcfb05ab06d338fd85bbf4486e69809d96a906b77/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | blast | n/a | 8 deployments: ethereum `0x6510e68561f04c1d111e616750dac2a063ff5055`; optimism `0x2d1b823962c401a7b229e1a9b38760d2f1715678`; unichain `0xa466ebcfa58848feb6d8022081f1c21a884889bb`; mode `0x88651e15a6f1ecff6bbc6390c16f6572bc285e84`; arbitrum `0x4f205d69834f9b101b9289f7affac9b77b3ff9b7`; linea `0x776c05325329c1de3242f55fc86ed591a7017f93`; blast [`0x11ca45eb43517d4a84b79671104654954535290d`](./contracts/blast-81457/0x11ca45eb43517d4a84b79671104654954535290d/); blast `0xf2890e09d21a30873ab04aa6e790ae1d78d83b6d` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcfb05ab06d338fd85bbf4486e69809d96a906b77`](./contracts/ethereum-1/0xcfb05ab06d338fd85bbf4486e69809d96a906b77/); ethereum `0xd1575b2e0c82fba9eddc3de9c9aaf923afa670cc` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | optimism | n/a | 2 deployments: optimism [`0x1a4b306ba14d3fb8a49925675f8edb7ef607c422`](./contracts/optimism-10/0x1a4b306ba14d3fb8a49925675f8edb7ef607c422/); optimism `0x3d237ac6d2f425d2e890cc99198818cc1fa48870` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | unichain | n/a | 2 deployments: unichain [`0x88651e15a6f1ecff6bbc6390c16f6572bc285e84`](./contracts/unichain-130/0x88651e15a6f1ecff6bbc6390c16f6572bc285e84/); unichain `0xaedc38bd52b0380b2af4980948925734fd54fbf4` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | base | n/a | 2 deployments: base [`0x1a4b306ba14d3fb8a49925675f8edb7ef607c422`](./contracts/base-8453/0x1a4b306ba14d3fb8a49925675f8edb7ef607c422/); base `0xf5190e64db4cbf7ee5e72b55cc5b2297e20264c2` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x88651e15a6f1ecff6bbc6390c16f6572bc285e84`](./contracts/arbitrum-42161/0x88651e15a6f1ecff6bbc6390c16f6572bc285e84/); arbitrum `0xc2bc7a73613b9bd5f373fe10b55c59a69f4d617b` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | linea | n/a | 2 deployments: linea [`0x10809f05f3582923585353270218ffda72941ab9`](./contracts/linea-59144/0x10809f05f3582923585353270218ffda72941ab9/); linea `0x300b889a782594317245b8219d299141cf92c0f8` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | blast | n/a | 5 deployments: blast [`0x126045d03160ee1edd9b3dfc0b3e7facb3086903`](./contracts/blast-81457/0x126045d03160ee1edd9b3dfc0b3e7facb3086903/); blast `0x88651e15a6f1ecff6bbc6390c16f6572bc285e84`; blast `0xaedc38bd52b0380b2af4980948925734fd54fbf4`; blast `0xbe7cff2963b38ef8452549c7a1901ac736f6fb3d`; blast `0xef9ed1a8f6197d9cbbc3c41381bdddbaa87576ea` | ⚠️ Unaudited |
| PancakeV3Factory | registry | ethereum | n/a | [`0x2d1b823962c401a7b229e1a9b38760d2f1715678`](./contracts/ethereum-1/0x2d1b823962c401a7b229e1a9b38760d2f1715678/) | ⚠️ Unaudited |
| PancakeV3PoolDeployer | core_logic | ethereum | n/a | [`0x1a4b306ba14d3fb8a49925675f8edb7ef607c422`](./contracts/ethereum-1/0x1a4b306ba14d3fb8a49925675f8edb7ef607c422/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | optimism | n/a | 8 deployments: ethereum `0x5ba546a342bbee029a7729a7e8e0adb844a53802`; optimism [`0x2417036313b66eb0495f573f11142efdaead7f9b`](./contracts/optimism-10/0x2417036313b66eb0495f573f11142efdaead7f9b/); unichain `0xa0e595e31e78659c1c64825a5cbb7f6b93d10291`; base `0x2d1b823962c401a7b229e1a9b38760d2f1715678`; mode `0xaedc38bd52b0380b2af4980948925734fd54fbf4`; arbitrum `0xa466ebcfa58848feb6d8022081f1c21a884889bb`; linea `0xc8613899117cc6ea464fdc717a9e2b7ccd23d139`; blast `0xa0e595e31e78659c1c64825a5cbb7f6b93d10291` | ⚠️ Unaudited |
| QuackOFT | unknown | mode | n/a | [`0xd2ecb0cb0a65479d18b291c3c0f18130e7973c35`](./contracts/mode-34443/0xd2ecb0cb0a65479d18b291c3c0f18130e7973c35/) | ⚠️ Unaudited |
| QuackToken | token | base | n/a | 2 deployments: base [`0x0c6a5070c9ec83399770f20685add0754e789c9d`](./contracts/base-8453/0x0c6a5070c9ec83399770f20685add0754e789c9d/); base `0x639c0d019c257966c4907bd4e68e3f349bb58109` | ⚠️ Unaudited |
| QuoterV2 | periphery | unichain | n/a | 3 deployments: ethereum `0xef9ed1a8f6197d9cbbc3c41381bdddbaa87576ea`; unichain [`0x4f205d69834f9b101b9289f7affac9b77b3ff9b7`](./contracts/unichain-130/0x4f205d69834f9b101b9289f7affac9b77b3ff9b7/); mode `0xc2bc7a73613b9bd5f373fe10b55c59a69f4d617b` | ⚠️ Unaudited |
| SmartRouter | unknown | blast | n/a | 9 deployments: optimism `0xd1575b2e0c82fba9eddc3de9c9aaf923afa670cc`; unichain `0x2417036313b66eb0495f573f11142efdaead7f9b`; base `0x195fbc5b8fbd5ac739c1ba57d4ef6d5a704f34f7`; base `0x6f887c0bee01fafaca39e46ca14cc1d48e28090f`; mode `0x3d237ac6d2f425d2e890cc99198818cc1fa48870`; linea `0x7b6602ceab4672561ba4b2eef8eca4d302f6ca3c`; blast [`0x0f7fb3bb52a41288fe3250f0f90b9c26676d8872`](./contracts/blast-81457/0x0f7fb3bb52a41288fe3250f0f90b9c26676d8872/); blast `0x2417036313b66eb0495f573f11142efdaead7f9b`; blast `0xe5535dc64e0b305b4769e5bfa99a1522c2708159` | ⚠️ Unaudited |
| SmartRouterHelper | unknown | base | n/a | 9 deployments: optimism `0x5ba546a342bbee029a7729a7e8e0adb844a53802`; unichain `0x3d237ac6d2f425d2e890cc99198818cc1fa48870`; base [`0x002fab86692e4807782136ea470d587fbdb16cf0`](./contracts/base-8453/0x002fab86692e4807782136ea470d587fbdb16cf0/); base `0x6510e68561f04c1d111e616750dac2a063ff5055`; mode `0x4f205d69834f9b101b9289f7affac9b77b3ff9b7`; linea `0x0f6fc9e2e38c5c672f21ed6a2410abe95ccf0105`; blast `0x3d237ac6d2f425d2e890cc99198818cc1fa48870`; blast `0xc4dfd83800942d4e3cda9b20d4167eac05cd9874`; blast `0xd53e4377e27e927fba3b99306b0be2c2b1e7194b` | ⚠️ Unaudited |
| SmartStakingDackieUSD | unknown | base | n/a | [`0x18fb8d5227e71dd8d8bad69f9f32026f3e3de9af`](./contracts/base-8453/0x18fb8d5227e71dd8d8bad69f9f32026f3e3de9af/) | ⚠️ Unaudited |
| SmartStakingNFTPoolV1 | unknown | base | n/a | 5 deployments: optimism `0x50eef105100209976392c743d3185e256d554046`; base [`0x35603541ddad16c752605cd61dd235bc285c4f44`](./contracts/base-8453/0x35603541ddad16c752605cd61dd235bc285c4f44/); base `0x607c0a5d885bbd092336906380b1936f86ae6772`; base `0xc02ee6c231c74bf806cf246406def16a0c06738f`; base `0xf19e42727be0beca8846bee4374db15a56455bfd` | ⚠️ Unaudited |
| SmartStakingPoolV1 | unknown | base | n/a | 20 deployments: optimism `0x7527463e29bf23efe425aff996425c3a75ab70a6`; optimism `0x7b4fdc4ed00cfffcae61f6411b864bafa00d5377`; base [`0x12e11e7c81a49d0f0b2f80ef00a3cd3efb151a2b`](./contracts/base-8453/0x12e11e7c81a49d0f0b2f80ef00a3cd3efb151a2b/); base `0x13642860ba5649d74588c7c0b519af9fe1057b98`; base `0x1ce2f909c039a85a5ea6dac0deb7e5737fabc2b0`; base `0x2150a32d02780aeb5a11c2e8ddcdf17381870ff4`; base `0x2f7204205b605668950634631c8058c2b0bfca86`; base `0x328f28a9c077e9555122d94904b27417d44434c6`; base `0x4064156b6c3b48d67d31182b6594f0c658226ffd`; base `0x4ad57dee33d31ba3c45dc5771b03cf37bc3d4dc5`; base `0x57782cec483ef0ab633a350c69a45dc78b364042`; base `0x9b48d99ba3bacff8d8e7a326e3fe1f9c9a08f19a`; base `0xa4aef5563d0436a7d1275b8d87041e7cdaac14c7`; base `0xacb4d7cb35afaa4024e0eda21e7ac8a3ad0807aa`; base `0xb5131d689c5fd93d72502c0fc0d3bd0f7b7f91cc`; base `0xbc905e3067fd40aa5c9ae714b7b0b947b7d0c1bc`; base `0xc55c947a4ec4237d9a79bf3dff28203d4f040db6`; base `0xc8042bc0bdb08a2ec55be7c1c1d0b726c12a7da6`; base `0xe420b232a317578c2bd77aa86375ba9a99d35d4a`; base `0xf76a8b5e904345fa17f739c5b1b2e0f582aef442` | ⚠️ Unaudited |
| SoneiumV3LmPoolDeployer | unknown | mode | n/a | [`0xfa564e0131730498be55bfb98aa0ea443fc4369f`](./contracts/mode-34443/0xfa564e0131730498be55bfb98aa0ea443fc4369f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mode | n/a | [`0xa0e595e31e78659c1c64825a5cbb7f6b93d10291`](./contracts/mode-34443/0xa0e595e31e78659c1c64825a5cbb7f6b93d10291/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0xd592e2c815e0cf4b62169e09934faab28299708e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2890e09d21a30873ab04aa6e790ae1d78d83b6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf74b821beca5301308d94c1eaa4be934223029e5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x38cef896b6ac4c6af80c7e72841dc6f7989216cf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x77f0e2903ad385f48b8cbf51b722e85996b2839d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc4dfd83800942d4e3cda9b20d4167eac05cd9874` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x1a4b306ba14d3fb8a49925675f8edb7ef607c422` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x73326b4d0225c429bed050c11c4422d91470aaf4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x04f988bbb6ce935f10a8392b959632dce171658c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0a961d384afbba97271c57fafc2b24384219d72f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1b053dbc557f3e488204425f628686e39f09d0b7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x213c1821fd46909391566912d202f404902ca8dc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x261565bfce1f40d21a8b6d7be2fcdf628a973e36` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2e195766a7751196ff5c59ec1467253f9ceccde3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x30637453767e5264a41c3fece8f3b8357818ba14` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4a553336dc52c58e6a66a8ccc54cd7dfffd02d68` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x53cb8071cee0597ee4d39bd7dcf20fb09b16f35e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x578e36a36aff64097b9a6819d010036f34b3c787` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6292bea910fa35e380661b3270c2cb8ccd3d0447` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6a6fb3998edf849b91d3fbb669a5d898c3743898` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x775ffc39779776a72e0f13516829cf705b4e4bc9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x81b421e3422b6571ef81978252fea5a2941207c0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x88c7d4651173475872ddad304e6f3c60e966c41b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f0e085eb4cdff913479790065f25b270b05b2a1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa824fa499ccfdb538dc58f11a202a4ecd795a1d0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa9f4380f2140547a85d08d21889d116f9da70205` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac4893796e6786cc224cada4a475eb49acfdb3f1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xae6ae9b8dc9a1d2be3ac58be975a6e7030b4e6fa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb63dcbeba318946f5c849996a76677104a031a42` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc86103fd17c0591b6532dd50b80ad91e3c28e5ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd19e9d4be38017d30e9d613860682472e3a92b2f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd2971ed668bf040c995f2b2f67a54cd54480bdb7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd3cd1d6ebbacbaa362c3bdb1be45becbb22f1ad1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd7c64d5505fcb8d3559d660455b5515cd70d87ac` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xddea262b72e95f483bf55505db7ea6c562a5b102` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe26a41507e8a1f1b25c5a716a7d3ba36b68e2a65` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xef9ed1a8f6197d9cbbc3c41381bdddbaa87576ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf2b349961e64f9e368fb1ed021939e690a46d636` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf870cb4f72c977ad91ad44c0df130d72310ab58c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfb107fee669e034355f24217bafca9218d222a64` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfe0398232a2492dcc3f9bec1b9680844e4af3868` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xff279064856eadc020ed3809418f716f1e784348` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x2417036313b66eb0495f573f11142efdaead7f9b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xcfb05ab06d338fd85bbf4486e69809d96a906b77` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf79a36f6f440392c63ad61252a64d5d3c43f860d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1a4b306ba14d3fb8a49925675f8edb7ef607c422` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2d1b823962c401a7b229e1a9b38760d2f1715678` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x711b771c7c443ebb695e4b3495c337fdaf37be11` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xab7f30c3d8216d39f00ae794c9b1ec19713e7f02` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbdc0ad20cdbbb835e657efef895e699eb031b33e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcdac82805097a2b32586675a74f22729d9958f96` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe5535dc64e0b305b4769e5bfa99a1522c2708159` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xef9ed1a8f6197d9cbbc3c41381bdddbaa87576ea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf5190e64db4cbf7ee5e72b55cc5b2297e20264c2` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x537d0d4572b28b5a4017163c1d5d481b7a7e5ce2` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc739a654743c2d639c3925455a20c1990d8b9f19` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xdced111abe9edd96eed74e31c41a574e2ddc32b4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe4e23688c99d9a223ff7606af87f3ba4869f9cbe` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe8ff69d16185aed8859920e04121161b3ee57e63` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfd7353c0bcbe8eadafe31e5256e3d4f04792a374` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x711b771c7c443ebb695e4b3495c337fdaf37be11` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x79644ba939b754bcbe0f38080b9ac0243b312e6d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x81db3f0dae97174dd75953c1fc004c0b01a36b51` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa0fff4b63602ef181d1e13369c959d92b5a92834` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbd9aa882f5a9423b515721d84e9ead5ac40ae3de` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf53c57338a304558709ef69fe53b518c5f62733e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-DackieSwap-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-DackieSwap-v1.0.pdf) | PeckShield | Audit | 2023-08 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x3d237ac6d2f425d2e890cc99198818cc1fa48870`](./contracts/ethereum-1/0x3d237ac6d2f425d2e890cc99198818cc1fa48870/) | DackieFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5cb90378614631b3d1baceddce6bc09e508b5b95`](./contracts/base-8453/0x5cb90378614631b3d1baceddce6bc09e508b5b95/) | DackieFlexiblePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x36a0638f3c85261477a0b1d239df3c623f7f3d79`](./contracts/mode-34443/0x36a0638f3c85261477a0b1d239df3c623f7f3d79/) | DackieOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4ad387bcb03b92a6e22a72391cc37493fc388b05`](./contracts/base-8453/0x4ad387bcb03b92a6e22a72391cc37493fc388b05/) | DackiePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2417036313b66eb0495f573f11142efdaead7f9b`](./contracts/ethereum-1/0x2417036313b66eb0495f573f11142efdaead7f9b/) | DackieRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x73326b4d0225c429bed050c11c4422d91470aaf4`](./contracts/base-8453/0x73326b4d0225c429bed050c11c4422d91470aaf4/) | DackieSuperchain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc2bc7a73613b9bd5f373fe10b55c59a69f4d617b`](./contracts/base-8453/0xc2bc7a73613b9bd5f373fe10b55c59a69f4d617b/) | DackieToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x03d573c792a074ad71ddd9cd04ed93bac0b8050e`](./contracts/base-8453/0x03d573c792a074ad71ddd9cd04ed93bac0b8050e/) | DackieTokenMigrator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x613ce28076289de255f1a6487437f03e37e4a71d`](./contracts/base-8453/0x613ce28076289de255f1a6487437f03e37e4a71d/) | DackieUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1d01aae6ef5d13406fdabab0e6c12fb862e342c5`](./contracts/optimism-10/0x1d01aae6ef5d13406fdabab0e6c12fb862e342c5/) | DackieUSDOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0xb9010964301326160173da694c0697a2fce82f39`](./contracts/unichain-130/0xb9010964301326160173da694c0697a2fce82f39/) | DackieV3Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0xc6f3966e5d08ced98ac30f8b65beab5882be54c7`](./contracts/unichain-130/0xc6f3966e5d08ced98ac30f8b65beab5882be54c7/) | DackieV3PoolDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x645d25cc63578096edbe941cb9ee56d20da5fc98`](./contracts/base-8453/0x645d25cc63578096edbe941cb9ee56d20da5fc98/) | DackieVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4a911c7c98088a3e762273c9e962bf7456a4005c`](./contracts/base-8453/0x4a911c7c98088a3e762273c9e962bf7456a4005c/) | DackieVaultReward | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xc6f3966e5d08ced98ac30f8b65beab5882be54c7`](./contracts/mode-34443/0xc6f3966e5d08ced98ac30f8b65beab5882be54c7/) | DonaswapV3Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x319fbdf0a1c749a33fb54761b0d638878cc2e002`](./contracts/base-8453/0x319fbdf0a1c749a33fb54761b0d638878cc2e002/) | IDackieTier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x78f8142ea59ae08d81bc80b2fd415405628a48a0`](./contracts/base-8453/0x78f8142ea59ae08d81bc80b2fd415405628a48a0/) | KingDackieNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3905f0c724a284095353befafd932204ee6b94ad`](./contracts/base-8453/0x3905f0c724a284095353befafd932204ee6b94ad/) | MasterChefDACKIE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x07a2fb203e656e1d5cebe244b703c91bf3da5143`](./contracts/mode-34443/0x07a2fb203e656e1d5cebe244b703c91bf3da5143/) | MasterChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6238e3549b253c7497d6e528dc9fdf6204ac4f5b`](./contracts/base-8453/0x6238e3549b253c7497d6e528dc9fdf6204ac4f5b/) | MasterChefV3KeeperV1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x43ffd81f19e3fa4b774288eb9f7680619391f435`](./contracts/mode-34443/0x43ffd81f19e3fa4b774288eb9f7680619391f435/) | MasterChefV3KeeperV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xdfd26cd5345323bbd1a98549546f05aa64953524`](./contracts/mode-34443/0xdfd26cd5345323bbd1a98549546f05aa64953524/) | MasterChefV3ReceiverV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x1a4b306ba14d3fb8a49925675f8edb7ef607c422`](./contracts/blast-81457/0x1a4b306ba14d3fb8a49925675f8edb7ef607c422/) | MixedRouteQuoterV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcfb05ab06d338fd85bbf4486e69809d96a906b77`](./contracts/base-8453/0xcfb05ab06d338fd85bbf4486e69809d96a906b77/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x11ca45eb43517d4a84b79671104654954535290d`](./contracts/blast-81457/0x11ca45eb43517d4a84b79671104654954535290d/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcfb05ab06d338fd85bbf4486e69809d96a906b77`](./contracts/ethereum-1/0xcfb05ab06d338fd85bbf4486e69809d96a906b77/) | NonfungibleTokenPositionDescriptorOffChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1a4b306ba14d3fb8a49925675f8edb7ef607c422`](./contracts/optimism-10/0x1a4b306ba14d3fb8a49925675f8edb7ef607c422/) | NonfungibleTokenPositionDescriptorOffChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x88651e15a6f1ecff6bbc6390c16f6572bc285e84`](./contracts/unichain-130/0x88651e15a6f1ecff6bbc6390c16f6572bc285e84/) | NonfungibleTokenPositionDescriptorOffChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1a4b306ba14d3fb8a49925675f8edb7ef607c422`](./contracts/base-8453/0x1a4b306ba14d3fb8a49925675f8edb7ef607c422/) | NonfungibleTokenPositionDescriptorOffChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x88651e15a6f1ecff6bbc6390c16f6572bc285e84`](./contracts/arbitrum-42161/0x88651e15a6f1ecff6bbc6390c16f6572bc285e84/) | NonfungibleTokenPositionDescriptorOffChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x10809f05f3582923585353270218ffda72941ab9`](./contracts/linea-59144/0x10809f05f3582923585353270218ffda72941ab9/) | NonfungibleTokenPositionDescriptorOffChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x126045d03160ee1edd9b3dfc0b3e7facb3086903`](./contracts/blast-81457/0x126045d03160ee1edd9b3dfc0b3e7facb3086903/) | NonfungibleTokenPositionDescriptorOffChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d1b823962c401a7b229e1a9b38760d2f1715678`](./contracts/ethereum-1/0x2d1b823962c401a7b229e1a9b38760d2f1715678/) | PancakeV3Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a4b306ba14d3fb8a49925675f8edb7ef607c422`](./contracts/ethereum-1/0x1a4b306ba14d3fb8a49925675f8edb7ef607c422/) | PancakeV3PoolDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xd2ecb0cb0a65479d18b291c3c0f18130e7973c35`](./contracts/mode-34443/0xd2ecb0cb0a65479d18b291c3c0f18130e7973c35/) | QuackOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0c6a5070c9ec83399770f20685add0754e789c9d`](./contracts/base-8453/0x0c6a5070c9ec83399770f20685add0754e789c9d/) | QuackToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x4f205d69834f9b101b9289f7affac9b77b3ff9b7`](./contracts/unichain-130/0x4f205d69834f9b101b9289f7affac9b77b3ff9b7/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x0f7fb3bb52a41288fe3250f0f90b9c26676d8872`](./contracts/blast-81457/0x0f7fb3bb52a41288fe3250f0f90b9c26676d8872/) | SmartRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x002fab86692e4807782136ea470d587fbdb16cf0`](./contracts/base-8453/0x002fab86692e4807782136ea470d587fbdb16cf0/) | SmartRouterHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x18fb8d5227e71dd8d8bad69f9f32026f3e3de9af`](./contracts/base-8453/0x18fb8d5227e71dd8d8bad69f9f32026f3e3de9af/) | SmartStakingDackieUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x35603541ddad16c752605cd61dd235bc285c4f44`](./contracts/base-8453/0x35603541ddad16c752605cd61dd235bc285c4f44/) | SmartStakingNFTPoolV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x12e11e7c81a49d0f0b2f80ef00a3cd3efb151a2b`](./contracts/base-8453/0x12e11e7c81a49d0f0b2f80ef00a3cd3efb151a2b/) | SmartStakingPoolV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xfa564e0131730498be55bfb98aa0ea443fc4369f`](./contracts/mode-34443/0xfa564e0131730498be55bfb98aa0ea443fc4369f/) | SoneiumV3LmPoolDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 45 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 66 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
