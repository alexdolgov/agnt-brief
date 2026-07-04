# Agentic Audit Brief: DackieSwap

## Project Overview

- Project: DackieSwap (`dackieswap`)
- Website: [https://dackieswap.xyz](https://dackieswap.xyz)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.451Z
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

- Coverage of deployed-live implementations: 2/42 (4.8%)
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
| DackieNFT | token | base | n/a | [`0xebcec2...72242b`](./contracts/base-8453/0xebcec2e959bad4137925f9ddb68e163cca72242b/) | ✅ Audited |
| MasterChefV3 | unknown | base | n/a | 4 deployments: base [`0x3df411...5fcbee`](./contracts/base-8453/0x3df41177096d1e18c1d4447fa16ecc12175fcbee/); base `0xf2890e...d83b6d`; mode `0x8817d5...3a4a99`; arbitrum `0xd1575b...a670cc` | ✅ Audited |

### ⚠️ Verified + Unaudited (45)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DackieFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0x3d237a...a48870`](./contracts/ethereum-1/0x3d237ac6d2f425d2e890cc99198818cc1fa48870/); unichain `0x507940...de2f5c`; mode `0x757cd5...3f6d30` | ⚠️ Unaudited |
| DackieFlexiblePool | core_logic | base | n/a | 2 deployments: base [`0x5cb903...8b5b95`](./contracts/base-8453/0x5cb90378614631b3d1baceddce6bc09e508b5b95/); base `0xc845cc...34a43b` | ⚠️ Unaudited |
| DackieOFT | unknown | mode | n/a | 4 deployments: mode [`0x36a063...7f3d79`](./contracts/mode-34443/0x36a0638f3c85261477a0b1d239df3c623f7f3d79/); mode `0xf15578...413bca`; linea `0x507940...de2f5c`; linea `0x757cd5...3f6d30` | ⚠️ Unaudited |
| DackiePool | core_logic | base | n/a | 2 deployments: base [`0x4ad387...388b05`](./contracts/base-8453/0x4ad387bcb03b92a6e22a72391cc37493fc388b05/); base `0xf6c5b5...bcf5e5` | ⚠️ Unaudited |
| DackieRouter | adapter | ethereum | n/a | 6 deployments: ethereum [`0x241703...ad7f9b`](./contracts/ethereum-1/0x2417036313b66eb0495f573f11142efdaead7f9b/); unichain `0xe4efb9...70fe20`; base `0xca4eaa...7fe56f`; mode `0x507940...de2f5c`; linea `0x79b3a6...177cbb`; blast `0x5ba546...a53802` | ⚠️ Unaudited |
| DackieSuperchain | unknown | base | n/a | [`0x73326b...70aaf4`](./contracts/base-8453/0x73326b4d0225c429bed050c11c4422d91470aaf4/) | ⚠️ Unaudited |
| DackieToken | token | base | n/a | [`0xc2bc7a...4d617b`](./contracts/base-8453/0xc2bc7a73613b9bd5f373fe10b55c59a69f4d617b/) | ⚠️ Unaudited |
| DackieTokenMigrator | token | base | n/a | [`0x03d573...b8050e`](./contracts/base-8453/0x03d573c792a074ad71ddd9cd04ed93bac0b8050e/) | ⚠️ Unaudited |
| DackieUSD | unknown | base | n/a | [`0x613ce2...e4a71d`](./contracts/base-8453/0x613ce28076289de255f1a6487437f03e37e4a71d/) | ⚠️ Unaudited |
| DackieUSDOFT | unknown | optimism | n/a | 3 deployments: optimism [`0x1d01aa...e342c5`](./contracts/optimism-10/0x1d01aae6ef5d13406fdabab0e6c12fb862e342c5/); mode `0xddf7af...0df8f0`; mode `0xfdf91d...914c2f` | ⚠️ Unaudited |
| DackieV3Factory | registry | unichain | n/a | [`0xb90109...e82f39`](./contracts/unichain-130/0xb9010964301326160173da694c0697a2fce82f39/) | ⚠️ Unaudited |
| DackieV3PoolDeployer | core_logic | unichain | n/a | 2 deployments: unichain [`0xc6f396...be54c7`](./contracts/unichain-130/0xc6f3966e5d08ced98ac30f8b65beab5882be54c7/); mode `0xe4efb9...70fe20` | ⚠️ Unaudited |
| DackieVault | core_logic | base | n/a | 2 deployments: base [`0x645d25...a5fc98`](./contracts/base-8453/0x645d25cc63578096edbe941cb9ee56d20da5fc98/); base `0xdd23df...e67988` | ⚠️ Unaudited |
| DackieVaultReward | core_logic | base | n/a | [`0x4a911c...a4005c`](./contracts/base-8453/0x4a911c7c98088a3e762273c9e962bf7456a4005c/) | ⚠️ Unaudited |
| DonaswapV3Factory | unknown | mode | n/a | [`0xc6f396...be54c7`](./contracts/mode-34443/0xc6f3966e5d08ced98ac30f8b65beab5882be54c7/) | ⚠️ Unaudited |
| IDackieTier | unknown | base | n/a | 5 deployments: base [`0x319fbd...c2e002`](./contracts/base-8453/0x319fbdf0a1c749a33fb54761b0d638878cc2e002/); base `0x729de4...1a7d6d`; base `0x8cc984...99470c`; base `0xd98060...c5f75a`; base `0xfc8f2a...4e8092` | ⚠️ Unaudited |
| KingDackieNFT | token | base | n/a | [`0x78f814...8a48a0`](./contracts/base-8453/0x78f8142ea59ae08d81bc80b2fd415405628a48a0/) | ⚠️ Unaudited |
| MasterChefDACKIE | unknown | base | n/a | [`0x3905f0...6b94ad`](./contracts/base-8453/0x3905f0c724a284095353befafd932204ee6b94ad/) | ⚠️ Unaudited |
| MasterChefV2 | unknown | mode | n/a | 2 deployments: base `0x5083e8...e67fa1`; mode [`0x07a2fb...da5143`](./contracts/mode-34443/0x07a2fb203e656e1d5cebe244b703c91bf3da5143/) | ⚠️ Unaudited |
| MasterChefV3KeeperV1 | operational_periphery | base | n/a | [`0x6238e3...ac4f5b`](./contracts/base-8453/0x6238e3549b253c7497d6e528dc9fdf6204ac4f5b/) | ⚠️ Unaudited |
| MasterChefV3KeeperV2 | unknown | mode | n/a | [`0x43ffd8...91f435`](./contracts/mode-34443/0x43ffd81f19e3fa4b774288eb9f7680619391f435/) | ⚠️ Unaudited |
| MasterChefV3ReceiverV2 | unknown | mode | n/a | [`0xdfd26c...953524`](./contracts/mode-34443/0xdfd26cd5345323bbd1a98549546f05aa64953524/) | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | blast | n/a | 3 deployments: optimism `0x6510e6...ff5055`; base `0xcd554f...f39630`; blast [`0x1a4b30...07c422`](./contracts/blast-81457/0x1a4b306ba14d3fb8a49925675f8edb7ef607c422/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | [`0xcfb05a...906b77`](./contracts/base-8453/0xcfb05ab06d338fd85bbf4486e69809d96a906b77/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | blast | n/a | 8 deployments: ethereum `0x6510e6...ff5055`; optimism `0x2d1b82...715678`; unichain `0xa466eb...4889bb`; mode `0x88651e...285e84`; arbitrum `0x4f205d...3ff9b7`; linea `0x776c05...017f93`; blast [`0x11ca45...35290d`](./contracts/blast-81457/0x11ca45eb43517d4a84b79671104654954535290d/); blast `0xf2890e...d83b6d` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcfb05a...906b77`](./contracts/ethereum-1/0xcfb05ab06d338fd85bbf4486e69809d96a906b77/); ethereum `0xd1575b...a670cc` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | optimism | n/a | 2 deployments: optimism [`0x1a4b30...07c422`](./contracts/optimism-10/0x1a4b306ba14d3fb8a49925675f8edb7ef607c422/); optimism `0x3d237a...a48870` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | unichain | n/a | 2 deployments: unichain [`0x88651e...285e84`](./contracts/unichain-130/0x88651e15a6f1ecff6bbc6390c16f6572bc285e84/); unichain `0xaedc38...54fbf4` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | base | n/a | 2 deployments: base [`0x1a4b30...07c422`](./contracts/base-8453/0x1a4b306ba14d3fb8a49925675f8edb7ef607c422/); base `0xf5190e...0264c2` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x88651e...285e84`](./contracts/arbitrum-42161/0x88651e15a6f1ecff6bbc6390c16f6572bc285e84/); arbitrum `0xc2bc7a...4d617b` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | linea | n/a | 2 deployments: linea [`0x10809f...941ab9`](./contracts/linea-59144/0x10809f05f3582923585353270218ffda72941ab9/); linea `0x300b88...92c0f8` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | blast | n/a | 5 deployments: blast [`0x126045...086903`](./contracts/blast-81457/0x126045d03160ee1edd9b3dfc0b3e7facb3086903/); blast `0x88651e...285e84`; blast `0xaedc38...54fbf4`; blast `0xbe7cff...f6fb3d`; blast `0xef9ed1...7576ea` | ⚠️ Unaudited |
| PancakeV3Factory | registry | ethereum | n/a | [`0x2d1b82...715678`](./contracts/ethereum-1/0x2d1b823962c401a7b229e1a9b38760d2f1715678/) | ⚠️ Unaudited |
| PancakeV3PoolDeployer | core_logic | ethereum | n/a | [`0x1a4b30...07c422`](./contracts/ethereum-1/0x1a4b306ba14d3fb8a49925675f8edb7ef607c422/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | optimism | n/a | 8 deployments: ethereum `0x5ba546...a53802`; optimism [`0x241703...ad7f9b`](./contracts/optimism-10/0x2417036313b66eb0495f573f11142efdaead7f9b/); unichain `0xa0e595...d10291`; base `0x2d1b82...715678`; mode `0xaedc38...54fbf4`; arbitrum `0xa466eb...4889bb`; linea `0xc86138...23d139`; blast `0xa0e595...d10291` | ⚠️ Unaudited |
| QuackOFT | unknown | mode | n/a | [`0xd2ecb0...973c35`](./contracts/mode-34443/0xd2ecb0cb0a65479d18b291c3c0f18130e7973c35/) | ⚠️ Unaudited |
| QuackToken | token | base | n/a | 2 deployments: base [`0x0c6a50...789c9d`](./contracts/base-8453/0x0c6a5070c9ec83399770f20685add0754e789c9d/); base `0x639c0d...b58109` | ⚠️ Unaudited |
| QuoterV2 | periphery | unichain | n/a | 3 deployments: ethereum `0xef9ed1...7576ea`; unichain [`0x4f205d...3ff9b7`](./contracts/unichain-130/0x4f205d69834f9b101b9289f7affac9b77b3ff9b7/); mode `0xc2bc7a...4d617b` | ⚠️ Unaudited |
| SmartRouter | unknown | blast | n/a | 9 deployments: optimism `0xd1575b...a670cc`; unichain `0x241703...ad7f9b`; base `0x195fbc...4f34f7`; base `0x6f887c...28090f`; mode `0x3d237a...a48870`; linea `0x7b6602...f6ca3c`; blast [`0x0f7fb3...6d8872`](./contracts/blast-81457/0x0f7fb3bb52a41288fe3250f0f90b9c26676d8872/); blast `0x241703...ad7f9b`; blast `0xe5535d...708159` | ⚠️ Unaudited |
| SmartRouterHelper | unknown | base | n/a | 9 deployments: optimism `0x5ba546...a53802`; unichain `0x3d237a...a48870`; base [`0x002fab...b16cf0`](./contracts/base-8453/0x002fab86692e4807782136ea470d587fbdb16cf0/); base `0x6510e6...ff5055`; mode `0x4f205d...3ff9b7`; linea `0x0f6fc9...cf0105`; blast `0x3d237a...a48870`; blast `0xc4dfd8...cd9874`; blast `0xd53e43...e7194b` | ⚠️ Unaudited |
| SmartStakingDackieUSD | unknown | base | n/a | [`0x18fb8d...3de9af`](./contracts/base-8453/0x18fb8d5227e71dd8d8bad69f9f32026f3e3de9af/) | ⚠️ Unaudited |
| SmartStakingNFTPoolV1 | unknown | base | n/a | 5 deployments: optimism `0x50eef1...554046`; base [`0x356035...5c4f44`](./contracts/base-8453/0x35603541ddad16c752605cd61dd235bc285c4f44/); base `0x607c0a...ae6772`; base `0xc02ee6...06738f`; base `0xf19e42...455bfd` | ⚠️ Unaudited |
| SmartStakingPoolV1 | unknown | base | n/a | 20 deployments: optimism `0x752746...ab70a6`; optimism `0x7b4fdc...0d5377`; base [`0x12e11e...151a2b`](./contracts/base-8453/0x12e11e7c81a49d0f0b2f80ef00a3cd3efb151a2b/); base `0x136428...057b98`; base `0x1ce2f9...abc2b0`; base `0x2150a3...870ff4`; base `0x2f7204...bfca86`; base `0x328f28...4434c6`; base `0x406415...226ffd`; base `0x4ad57d...3d4dc5`; base `0x57782c...364042`; base `0x9b48d9...08f19a`; base `0xa4aef5...ac14c7`; base `0xacb4d7...0807aa`; base `0xb5131d...7f91cc`; base `0xbc905e...d0c1bc`; base `0xc55c94...040db6`; base `0xc8042b...2a7da6`; base `0xe420b2...d35d4a`; base `0xf76a8b...aef442` | ⚠️ Unaudited |
| SoneiumV3LmPoolDeployer | unknown | mode | n/a | [`0xfa564e...c4369f`](./contracts/mode-34443/0xfa564e0131730498be55bfb98aa0ea443fc4369f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mode | n/a | [`0xa0e595...d10291`](./contracts/mode-34443/0xa0e595e31e78659c1c64825a5cbb7f6b93d10291/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0xd592e2...99708e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2890e...d83b6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf74b82...3029e5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x38cef8...9216cf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x77f0e2...b2839d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc4dfd8...cd9874` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x1a4b30...07c422` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x73326b...70aaf4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x04f988...71658c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0a961d...19d72f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1b053d...09d0b7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x213c18...2ca8dc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x261565...973e36` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2e1957...eccde3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x306374...18ba14` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4a5533...d02d68` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x53cb80...16f35e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x578e36...b3c787` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6292be...3d0447` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6a6fb3...743898` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x775ffc...4e4bc9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x81b421...1207c0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x88c7d4...66c41b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f0e08...05b2a1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa824fa...95a1d0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa9f438...a70205` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac4893...fdb3f1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xae6ae9...b4e6fa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb63dcb...031a42` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc86103...28e5ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd19e9d...a92b2f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd2971e...80bdb7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd3cd1d...2f1ad1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd7c64d...0d87ac` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xddea26...a5b102` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe26a41...8e2a65` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xef9ed1...7576ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf2b349...46d636` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf870cb...0ab58c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfb107f...222a64` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfe0398...af3868` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xff2790...784348` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x241703...ad7f9b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xcfb05a...906b77` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf79a36...3f860d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1a4b30...07c422` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2d1b82...715678` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x711b77...37be11` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xab7f30...3e7f02` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbdc0ad...31b33e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcdac82...958f96` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe5535d...708159` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xef9ed1...7576ea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf5190e...0264c2` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x537d0d...7e5ce2` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc739a6...8b9f19` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xdced11...dc32b4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe4e236...9f9cbe` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe8ff69...e57e63` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfd7353...92a374` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x711b77...37be11` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x79644b...312e6d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x81db3f...a36b51` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa0fff4...a92834` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbd9aa8...0ae3de` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf53c57...62733e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-DackieSwap-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-DackieSwap-v1.0.pdf) | PeckShield | Audit | 2023-08 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 113 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
