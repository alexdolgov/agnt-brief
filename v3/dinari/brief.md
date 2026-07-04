# Agentic Audit Brief: Dinari

## Project Overview

- Project: Dinari (`dinari`)
- Website: [https://dinari.com](https://dinari.com)
- Lifecycle: unknown
- Generated: 2026-07-04T11:05:40.887Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, base, blast, ethereum, hyperliquid
- Contract surface: 94 unique implementations (256 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 98 project-authored contract(s) across 4 chain(s); 8 ERC4626 vaults, 14 ERC20 tokens, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 27 common project-authored base contract(s) (accesscontroldefaultadminrulesupgradeable, accesscontrolupgradeable, contextupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 357; live-surface contracts included: 240 (196 live, 44 unknown).
- Excluded by liveness: 117 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/66 (7.6%)
- Deployed-live implementations: 66 of 94 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/66
- Verified + Unaudited implementations: 61
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 94
- Raw deployments: 256
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 4.5% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 3 | 4.5% | 2023-08 |
| Hacken | Tier 2 | 2 | 3.0% | 2024-12 |
| Pashov Audit Group | Tier 2 | 1 | 1.5% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DividendDistribution | unknown | base | n/a | 4 deployments: ethereum `0xec3b79...5560ce`; base [`0x4f94cb...f85fc8`](./contracts/base-8453/0x4f94cb235e88779d6a0bbc6165fb67861ef85fc8/); arbitrum `0x7e66ea...38e7fc`; blast `0xa2fc79...02e5d0` | ✅ Audited |
| OrderProcessor | unknown | ethereum | n/a | [`0xa8a48c...ac79cb`](./contracts/ethereum-1/0xa8a48c202af4e73ad19513d37158a872a4ac79cb/) | ✅ Audited |
| OrderProcessor | unknown | base | n/a | [`0x63ff43...e539c0`](./contracts/base-8453/0x63ff43009f9ba3584af2ddfc3d5fe2cb8ae539c0/) | ✅ Audited |
| OrderProcessor | unknown | arbitrum | n/a | [`0xfa9224...e4131d`](./contracts/arbitrum-42161/0xfa922457873f750244d93679df0d810881e4131d/) | ✅ Audited |
| TransferRestrictor | unknown | arbitrum | n/a | 13 deployments: ethereum `0x5b4680...b4c2f8`; ethereum `0x88b92c...84a701`; base `0x5b4680...b4c2f8`; base `0xe1b2fe...94611e`; arbitrum [`0x036c44...9152af`](./contracts/arbitrum-42161/0x036c44f2df0d7cfa7624b002bd7ef486449152af/); arbitrum `0x0fe85e...f28012`; arbitrum `0x4f4ef0...02118a`; arbitrum `0x86a68d...215c38`; arbitrum `0x9255d7...548698`; arbitrum `0xc63ac7...60e712`; arbitrum `0xead337...94bbf7`; arbitrum `0xeda6e4...b4aea3`; blast `0x5b4680...b4c2f8` | ✅ Audited |

### ⚠️ Verified + Unaudited (61)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BeaconProxy | registry | arbitrum | n/a | 35 deployments: arbitrum [`0x026fdf...7a5044`](./contracts/arbitrum-42161/0x026fdf3024953cb2e8982bc11c67d336f37a5044/); arbitrum `0x0b5ac0...070193`; arbitrum `0x0c2989...5ae6ad`; arbitrum `0x0c59f6...b1efa7`; arbitrum `0x118346...20d7ec`; arbitrum `0x14297b...2bdf8e`; arbitrum `0x182087...e7b803`; arbitrum `0x2824ef...7640c2`; arbitrum `0x2b7c64...979bff`; arbitrum `0x3619ca...356228`; arbitrum `0x36d37b...1bcf81`; arbitrum `0x3ad63b...89ecdc`; arbitrum `0x3c9f23...1ff0c4`; arbitrum `0x46b979...907fa1`; arbitrum `0x4dafff...53ce5c`; arbitrum `0x519062...39dca6`; arbitrum `0x5b6424...d90d25`; arbitrum `0x67bad4...7da43a`; arbitrum `0x769ff5...d52bdf`; arbitrum `0x77308f...9f8475`; arbitrum `0x8240af...52650b`; arbitrum `0x8e50d1...646410`; arbitrum `0x9c46e1...f6df3a`; arbitrum `0x9da913...4ed4b1`; arbitrum `0xa6f344...36b5fb`; arbitrum `0xb1284f...da5c69`; arbitrum `0xc1ba16...2b428c`; arbitrum `0xc52915...0837ab`; arbitrum `0xce38e1...d6c5a7`; arbitrum `0xd883bc...ca649e`; arbitrum `0xd8f728...7786c5`; arbitrum `0xdd92f0...c9968e`; arbitrum `0xeb0d13...090146`; arbitrum `0xf1f18f...6263fe`; arbitrum `0xf4bd09...40a9d2` | ⚠️ Unaudited |
| BeaconProxy | unknown | arbitrum | n/a | 36 deployments: arbitrum [`0x0c39b0...3534f1`](./contracts/arbitrum-42161/0x0c39b0146f774fe4aebc62e1ddde7aa03a3534f1/); arbitrum `0x0f11c5...d314ab`; arbitrum `0x2f3990...fe1e82`; arbitrum `0x32c8fb...7c237e`; arbitrum `0x3c5beb...53451b`; arbitrum `0x407274...9d316d`; arbitrum `0x42112c...716964`; arbitrum `0x4c4c79...24920a`; arbitrum `0x4e63c4...421cff`; arbitrum `0x57d7cb...a891b0`; arbitrum `0x5b4c01...e2d12f`; arbitrum `0x5bf7d0...5cfd4b`; arbitrum `0x6bb71b...4551f4`; arbitrum `0x7e8b16...428876`; arbitrum `0x8370ce...227593`; arbitrum `0x8821ab...69395a`; arbitrum `0x98cd82...ee28c5`; arbitrum `0x9ea41f...6f5e07`; arbitrum `0xa6b1bc...a2d457`; arbitrum `0xadf3cd...720923`; arbitrum `0xb5d096...f28599`; arbitrum `0xbac491...b64945`; arbitrum `0xbda5a1...c69514`; arbitrum `0xc9faf4...869c86`; arbitrum `0xcc3dc0...272f8a`; arbitrum `0xd767ee...35e6f9`; arbitrum `0xe1624e...1640a9`; arbitrum `0xe744c9...f605e3`; arbitrum `0xeb4def...ceac02`; arbitrum `0xedebc5...5d3828`; arbitrum `0xee0d00...60ea02`; arbitrum `0xef8c9c...302c83`; arbitrum `0xf3d26a...c34287`; arbitrum `0xf82f68...ac8d6f`; arbitrum `0xf8c652...d5bcef`; arbitrum `0xfe0fed...c31e9c` | ⚠️ Unaudited |
| BuyOrderIssuer | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xc4b7b5...0d8f60`](./contracts/arbitrum-42161/0xc4b7b5740a72ee2d823c088e1d1455a4b10d8f60/); arbitrum `0xca1f1c...25d636` | ⚠️ Unaudited |
| BuyProcessor | unknown | arbitrum | n/a | [`0x4ec42a...165a67`](./contracts/arbitrum-42161/0x4ec42a1709e6245ff0bdd5ba605ba7147a165a67/) | ⚠️ Unaudited |
| BuyUnlockedProcessor | unknown | arbitrum | n/a | 3 deployments: ethereum `0xca1f1c...25d636`; arbitrum [`0x640d8f...bcd064`](./contracts/arbitrum-42161/0x640d8f1cc10737b48dfcb52f7fc2bbaf17bcd064/); arbitrum `0xdd6da6...5ef2ab` | ⚠️ Unaudited |
| BuyUnlockedProcessor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x910827...d49a8c`](./contracts/arbitrum-42161/0x9108270b3537933a9c68e87dc129a43433d49a8c/); arbitrum `0xb60014...0d4db0` | ⚠️ Unaudited |
| BuyUnlockedProcessor | unknown | blast | n/a | 2 deployments: blast [`0x332a3e...504f25`](./contracts/blast-81457/0x332a3e403ff0d03076fdce768dafe032b7504f25/); blast `0xbce641...93bc4d` | ⚠️ Unaudited |
| CCIPWaypoint | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4f6755...76c3c2`](./contracts/ethereum-1/0x4f6755260a6208b59440cb01efde04beec76c3c2/); ethereum `0xf83042...f6ffdc` | ⚠️ Unaudited |
| CCIPWaypoint | unknown | base | n/a | 2 deployments: base [`0x4528dd...012955`](./contracts/base-8453/0x4528ddb6df3b726ca25e1c262cf5548627012955/); base `0x7cedc2...50bffd` | ⚠️ Unaudited |
| CCIPWaypoint | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3a34b7...816907`](./contracts/arbitrum-42161/0x3a34b7fa417b51af57936f72b8234c824f816907/); arbitrum `0xd1cc75...7d7869` | ⚠️ Unaudited |
| DirectBuyIssuer | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x08d7b1...7e2290`](./contracts/arbitrum-42161/0x08d7b1e920780dc6e99da11de765b5c4067e2290/); arbitrum `0x34293f...7a173e` | ⚠️ Unaudited |
| DShare | registry | ethereum | n/a | [`0x4062d9...774f27`](./contracts/ethereum-1/0x4062d9cbf85da2913880a3a5641cf05e85774f27/) | ⚠️ Unaudited |
| DShare | registry | base | n/a | [`0x6aa1bd...b3c72a`](./contracts/base-8453/0x6aa1bda7e764bc62589e64f371a4022b80b3c72a/) | ⚠️ Unaudited |
| DShare | registry | arbitrum | n/a | [`0x154360...01dacb`](./contracts/arbitrum-42161/0x15436013850211acf89b656f34b426fdae01dacb/) | ⚠️ Unaudited |
| DShare | unknown | blast | n/a | 5 deployments: ethereum `0x8705e5...2fc10e`; base `0x458543...bda48a`; arbitrum `0x9a8e37...c7a5d1`; arbitrum `0xf23789...a54020`; blast [`0x036c44...9152af`](./contracts/blast-81457/0x036c44f2df0d7cfa7624b002bd7ef486449152af/) | ⚠️ Unaudited |
| DShareFactory | unknown | base | n/a | 7 deployments: ethereum `0x8e7282...a1eed1`; ethereum `0xa0319c...98c329`; base [`0x332a3e...504f25`](./contracts/base-8453/0x332a3e403ff0d03076fdce768dafe032b7504f25/); arbitrum `0x6a285c...455826`; arbitrum `0x95bc50...053a96`; blast `0x458543...bda48a`; blast `0xa0319c...98c329` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | n/a | [`0x60b5e7...47c747`](./contracts/ethereum-1/0x60b5e7eecb2aee0382db86491b8cffa39347c747/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | n/a | 3 deployments: ethereum [`0x63088e...4c0c25`](./contracts/ethereum-1/0x63088ebebc9aaa8f774c02e025098b97364c0c25/); ethereum `0x95b77a...a486b0`; ethereum `0x98c661...dd7dd3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x701ae6...14b335`](./contracts/ethereum-1/0x701ae65663f3711d55dbc5d8473f10ca8f14b335/); ethereum `0xecabf4...4d9a9e` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | n/a | [`0x0bfe52...05fdea`](./contracts/base-8453/0x0bfe520dccab40be814e8dc9eab9f1db6305fdea/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | n/a | [`0x98c661...dd7dd3`](./contracts/base-8453/0x98c6616f1cc0d3e938a16200830dd55663dd7dd3/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | n/a | [`0xbce641...93bc4d`](./contracts/base-8453/0xbce6410a175a1c9b1a25d38d7e1a900f8393bc4d/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | n/a | [`0xbe1d52...1a02bf`](./contracts/base-8453/0xbe1d52375496f944af615ef133c24dc8fa1a02bf/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x47910f...bb8915`](./contracts/arbitrum-42161/0x47910f43eca6a2355e8b1ff5f60923939fbb8915/); arbitrum `0xafc053...6902e8` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | arbitrum | n/a | [`0x7e4d80...a7486b`](./contracts/arbitrum-42161/0x7e4d801e961a0db81938a29efec10d2179a7486b/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | arbitrum | n/a | [`0xb4ca72...f603b8`](./contracts/arbitrum-42161/0xb4ca72ea4d072c779254269fd56093d3adf603b8/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | arbitrum | n/a | [`0xd8d541...b90a44`](./contracts/arbitrum-42161/0xd8d541427ad7ce0f4c6de2b21c8a8596cbb90a44/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | arbitrum | n/a | [`0xfc9051...950cfa`](./contracts/arbitrum-42161/0xfc90518d5136585ba45e34ed5e1d108bd3950cfa/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | blast | n/a | [`0x6aa1bd...b3c72a`](./contracts/blast-81457/0x6aa1bda7e764bc62589e64f371a4022b80b3c72a/) | ⚠️ Unaudited |
| Forwarder | unknown | ethereum | n/a | 5 deployments: ethereum [`0x08d7b1...7e2290`](./contracts/ethereum-1/0x08d7b1e920780dc6e99da11de765b5c4067e2290/); ethereum `0xb88f1c...d31d52`; arbitrum `0xa3ed7c...68ed37`; arbitrum `0xb47b9a...9d0d86`; arbitrum `0xc498e2...748cc7` | ⚠️ Unaudited |
| Forwarder | unknown | arbitrum | n/a | [`0x14d349...8a33c8`](./contracts/arbitrum-42161/0x14d3498e4816c2b8f017677356dca051e28a33c8/) | ⚠️ Unaudited |
| ForwarderPyth | unknown | blast | n/a | [`0x3aa37e...f84885`](./contracts/blast-81457/0x3aa37e6a6852a483b7f85dc193c4723cf6f84885/) | ⚠️ Unaudited |
| FulfillmentRouter | adapter | ethereum | n/a | 7 deployments: ethereum [`0x462efb...f69c84`](./contracts/ethereum-1/0x462efb6a9519f93d9613ad613842e02417f69c84/); ethereum `0xb9030e...bb4c29`; base `0x63914c...179e8e`; arbitrum `0xc69778...6be797`; arbitrum `0xe4f65f...1114e4`; blast [`0x462efb...f69c84`](./contracts/blast-81457/0x462efb6a9519f93d9613ad613842e02417f69c84/); blast `0xf83042...f6ffdc` | ⚠️ Unaudited |
| OrderProcessor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x10448d...11a66f`](./contracts/ethereum-1/0x10448db0dcfddd75dd3e48ef2c116d4d2f11a66f/); ethereum `0x6bb71b...4551f4` | ⚠️ Unaudited |
| OrderProcessor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0a0363...806242`](./contracts/arbitrum-42161/0x0a03632a634124ee3bba0e9e58f1a48fcf806242/); arbitrum `0x4c3bd1...9ff8b3` | ⚠️ Unaudited |
| OrderProcessor | unknown | arbitrum | n/a | 9 deployments: ethereum `0x2c5a99...85a7fa`; ethereum `0x9f2c33...849863`; ethereum `0xcc3dc0...272f8a`; base `0x9a17bb...851e09`; base `0xff6910...565eb3`; arbitrum [`0x14d5ba...300deb`](./contracts/arbitrum-42161/0x14d5ba979b3faf24823c80bb3be228b543300deb/); arbitrum `0x8ec4a0...01512f`; arbitrum `0xd9ab47...a32c04`; blast `0x9b3e9d...817de5` | ⚠️ Unaudited |
| OrderProcessor | unknown | blast | n/a | 2 deployments: blast [`0x714861...0e6b40`](./contracts/blast-81457/0x7148617fcd0258202747f2f65b4fe561dc0e6b40/); blast `0xeb458f...e5e5c6` | ⚠️ Unaudited |
| OrderProcessor | unknown | blast | n/a | 2 deployments: blast [`0x9f2c33...849863`](./contracts/blast-81457/0x9f2c338186cca45d6ae668ff5a37459860849863/); blast `0xa8a48c...ac79cb` | ⚠️ Unaudited |
| SellOrderProcessor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x17c01a...875792`](./contracts/arbitrum-42161/0x17c01a17eba2be1abe93d54b8a9c627cb0875792/); arbitrum `0xe279fd...286068` | ⚠️ Unaudited |
| SellProcessor | unknown | arbitrum | n/a | [`0x70f2bd...9e4be3`](./contracts/arbitrum-42161/0x70f2bd91390df0a0662f7ba322d8c166e89e4be3/) | ⚠️ Unaudited |
| StakedUsdPlus | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe1b2fe...94611e`](./contracts/ethereum-1/0xe1b2feede3ffe7e63a89a669a08688951c94611e/); ethereum `0xeda6e4...b4aea3` | ⚠️ Unaudited |
| StakeRaise | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4ade36...651e81`](./contracts/ethereum-1/0x4ade36703451f976964a0995c77ccf6352651e81/); ethereum `0xd767ee...35e6f9` | ⚠️ Unaudited |
| StakeRaise | unknown | ethereum | n/a | 2 deployments: ethereum [`0xf1c32b...80d081`](./contracts/ethereum-1/0xf1c32b758a6495aa6060d88e70da697c9f80d081/); ethereum `0xf4bd09...40a9d2` | ⚠️ Unaudited |
| TokenLockCheck | token | arbitrum | n/a | 3 deployments: ethereum `0xc63ac7...60e712`; arbitrum [`0x57591e...316b2b`](./contracts/arbitrum-42161/0x57591e07eab6c2b3bee529586253217584316b2b/); blast `0x7e599c...b6a8fc` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | ethereum | n/a | [`0x5ccb54...7e6835`](./contracts/ethereum-1/0x5ccb5482dc15aadd36d6c02c0d44ce0e3e7e6835/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | base | n/a | [`0x9b3e9d...817de5`](./contracts/base-8453/0x9b3e9d3fb6849c9f0edcb2a9ebb6af83b7817de5/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | arbitrum | n/a | [`0xad2060...3bc7f5`](./contracts/arbitrum-42161/0xad20601c7a3212c7bbf2acdfedbad99d803bc7f5/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | blast | n/a | [`0x98c661...dd7dd3`](./contracts/blast-81457/0x98c6616f1cc0d3e938a16200830dd55663dd7dd3/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | blast | n/a | [`0xe1b2fe...94611e`](./contracts/blast-81457/0xe1b2feede3ffe7e63a89a669a08688951c94611e/) | ⚠️ Unaudited |
| UsdPlusMinter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x22ab2d...de728b`](./contracts/ethereum-1/0x22ab2d1b21f4074403020c9d37080dbe07de728b/); ethereum `0x6594b9...47a53c` | ⚠️ Unaudited |
| UsdPlusMinter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x458543...bda48a`](./contracts/ethereum-1/0x45854301aa075c62976c90cf6802a72dd4bda48a/); ethereum `0x6aa1bd...b3c72a` | ⚠️ Unaudited |
| UsdPlusMinter | unknown | base | n/a | 2 deployments: base [`0x736c9c...ac367b`](./contracts/base-8453/0x736c9c0669ab472cbcda632e9ab8d5834cac367b/); base `0xf83042...f6ffdc` | ⚠️ Unaudited |
| UsdPlusMinter | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0d44bf...5bdb64`](./contracts/arbitrum-42161/0x0d44bfda6958f662a5a112190dd8cbab1a5bdb64/); arbitrum `0xc55099...77b3b0` | ⚠️ Unaudited |
| UsdPlusMinter | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x223e33...2577d6`](./contracts/arbitrum-42161/0x223e3345698d7027e9fd85064c5aaac33e2577d6/); arbitrum `0x77f98a...7dec2e` | ⚠️ Unaudited |
| UsdPlusRedeemer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x332a3e...504f25`](./contracts/ethereum-1/0x332a3e403ff0d03076fdce768dafe032b7504f25/); ethereum `0x6d55e5...aec0ae` | ⚠️ Unaudited |
| UsdPlusRedeemer | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xe9477d...d18083`](./contracts/arbitrum-42161/0xe9477d7c207ec0004fc7d6221dbb6a29b8d18083/); arbitrum `0xf2c65a...a50802` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x232ca1...f2b839`](./contracts/ethereum-1/0x232ca17c44185ba9099417cd500d2e5e96f2b839/); base `0x714861...0e6b40`; arbitrum `0x991cb3...57e471`; blast `0x6d55e5...aec0ae` | ⚠️ Unaudited |
| WrappedDShare | unknown | arbitrum | n/a | 6 deployments: ethereum `0x43e165...b466af`; base `0x7e599c...b6a8fc`; arbitrum [`0x15616a...2c956c`](./contracts/arbitrum-42161/0x15616a647d6c5dd82132ada8970179fffc2c956c/); arbitrum `0x7eedcf...a340f0`; arbitrum `0x855c83...a43517`; blast `0x63914c...179e8e` | ⚠️ Unaudited |
| WrappedUsdPlus | unknown | ethereum | n/a | 2 deployments: ethereum [`0x141170...6980f8`](./contracts/ethereum-1/0x14117088cbd2e0fb58fc9ab9818efd40c56980f8/); ethereum `0xff5258...2a1bd5` | ⚠️ Unaudited |
| WrappedUsdPlus | unknown | base | n/a | 2 deployments: base [`0xb47b9a...9d0d86`](./contracts/base-8453/0xb47b9a05fc45eec35d9ecbb34aee16d8ac9d0d86/); base `0xe5295e...5a877c` | ⚠️ Unaudited |
| WrappedUsdPlus | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x9082e6...3b5537`](./contracts/arbitrum-42161/0x9082e69d2fd257561a542aaca2221054fb3b5537/); arbitrum `0xde4fd0...4c4214` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x88b92c99098f7a817df0392294b96f8ab284a701) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x8705e5...2fc10e`; arbitrum `0x88b92c...84a701` | ❓ Unverified |
| Proxy (impl: 0xf83042d4bbb1cb9c9e1042da4654585c60f6ffdc) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x1f7802...978c31`; arbitrum `0xf83042...f6ffdc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x036c44...9152af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03d0d0...3184bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ad63b...89ecdc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d3347...6dda0a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91b715...1cc28e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6a837...3b519f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x14297b...2bdf8e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5023c1...3b19bf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc3c70b...4a0c9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x10448d...11a66f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x25135f...b97dc7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x4062d9...774f27`; arbitrum `0x43e165...b466af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4530b1...02f3a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x458543...bda48a`; arbitrum `0x6aa1bd...b3c72a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d8274...eba65e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x58b1d8...1d5c80`; arbitrum `0xf03103...a11874` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x5ccb54...7e6835`; arbitrum `0x8e7282...a1eed1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x63914c...179e8e`; arbitrum `0xe1b2fe...94611e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x6bffd2...b2a0af`; arbitrum `0x736c9c...ac367b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x7e599c...b6a8fc`; arbitrum `0x9b3e9d...817de5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xec3b79...5560ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xecabf4...4d9a9e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x04f522...a95f6f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3d8037...1419d7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x83f669...374472` | ❓ Unverified |
| WrappedDShare | unknown | hyperliquid | n/a | `0x956875...8ae763` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit_Sherlock_230811.pdf](https://assets.dinari.com/audits/Audit_Sherlock_230811.pdf) | Sherlock | Contest | 2023-08 | stale | Direct | contract_name | 3 | n/a |
| [Audit_Hacken_231212.pdf](https://assets.dinari.com/audits/Audit_Hacken_231212.pdf) | Hacken | Audit | 2023-12 | stale | Direct | contract_name | 2 | n/a |
| [Audit_Pashov_241224.pdf](https://assets.dinari.com/audits/Audit_Pashov_241224.pdf) | Pashov Audit Group | Audit | 2024-12 | aging | Direct | contract_name | 1 | n/a |
| [Audit_Hacken_241230.pdf](https://assets.dinari.com/audits/Audit_Hacken_241230.pdf) | Hacken | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 94 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=6

Zero-match audit list:

- [2052] Audit_Hacken_241230.pdf

Fork inheritance lineage and inherited audits are included when available.
