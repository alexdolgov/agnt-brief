# Agentic Audit Brief: Dinari

⚠️ Lifecycle status: DECLINING - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Dinari (`dinari`)
- Website: [https://dinari.com](https://dinari.com)
- Lifecycle: declining (Tier 0, 81.9% below peak)
- Generated: 2026-06-10T22:55:38.917Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-03d9
- Chains: arbitrum, base, blast, ethereum
- Contract surface: 71 unique implementations (356 raw deployments)
- DeFi Llama TVL: $10,832,285.27
- On-chain TVL (included contracts): $36,599.31
- TVL by chain: Blast $23,478.66 | Ethereum $10,588.87 | Base $2,531.78

## Project Description

Dinari is a real-world asset tokenization platform focused on dShares: 1:1-backed tokenized U.S. stocks and ETFs that provide on-chain access to public securities through Dinari's API and related issuance, trading, and redemption infrastructure. USD+ should be described separately as a Treasuries-backed stablecoin product, not as the protocol's primary purpose.

### Architecture

All contracts belong to a single product family deployed by a single deployer cluster, sharing upgradeable proxy patterns (ERC1967Proxy, BeaconProxy) and beacon-based implementations. Core contracts like OrderProcessor, UsdPlusMinter, and CCIPWaypoint interact to facilitate the full lifecycle of RWA tokens, while supporting proxies and beacons provide upgradeability and access control.

## Audit Coverage Summary

- Verified implementations audited: 12/32 (37.5%)
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 1
- Unverified implementations: 39
- Unique implementations: 71
- Raw deployments: 356
- Audits discovered: 4
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $36,599.31
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 2 aging, 2 stale, 0 unknown
- Tier 1 coverage: 15.6% (Sherlock)
- Note: This protocol is classified as [declining]. ASD of $36,599.31 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 5 | 15.6% | 2024-12 |
| Sherlock | Tier 1 | 5 | 15.6% | 2023-08 |
| Hacken | Tier 2 | 3 | 9.4% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BridgedERC20 | operational_periphery | arbitrum | 13 deployments: arbitrum [`0x1ba13c...fe6c82`](./contracts/arbitrum-42161/0x1ba13cd81b018e06d7a7ead033d5131115fe6c82/); arbitrum `0x20f11c...8f8cdf`; arbitrum `0x2414fa...dc6636`; arbitrum `0x2888c0...6225c6`; arbitrum `0x58a8ee...e7eb3b`; arbitrum `0x5a8a18...7b860f`; arbitrum `0x6ae848...2f49d5`; arbitrum `0x707321...359cef`; arbitrum `0x9bd7a0...7668b4`; arbitrum `0x9f1f1b...832359`; arbitrum `0xa40c09...5b2e48`; arbitrum `0xf67e6e...3bb9cb`; arbitrum `0xfdc642...cf560a` | ✅ Audited |
| BuyOrderIssuer | unknown | arbitrum | 2 deployments: arbitrum [`0xc4b7b5...0d8f60`](./contracts/arbitrum-42161/0xc4b7b5740a72ee2d823c088e1d1455a4b10d8f60/); arbitrum `0xca1f1c...25d636` | ✅ Audited |
| DirectBuyIssuer | unknown | arbitrum | 2 deployments: arbitrum [`0x08d7b1...7e2290`](./contracts/arbitrum-42161/0x08d7b1e920780dc6e99da11de765b5c4067e2290/); arbitrum `0x34293f...7a173e` | ✅ Audited |
| DividendDistribution | unknown | arbitrum | 3 deployments: ethereum `0xec3b79...5560ce`; arbitrum [`0x7e66ea...38e7fc`](./contracts/arbitrum-42161/0x7e66ea8e425f0669f651373c85df8415eb38e7fc/); blast `0xa2fc79...02e5d0` | ✅ Audited |
| DShare | unknown | blast | 5 deployments: ethereum `0x8705e5...2fc10e`; base `0x458543...bda48a`; arbitrum `0x9a8e37...c7a5d1`; arbitrum `0xf23789...a54020`; blast [`0x036c44...9152af`](./contracts/blast-81457/0x036c44f2df0d7cfa7624b002bd7ef486449152af/) | ✅ Audited |
| SellOrderProcessor | unknown | arbitrum | 2 deployments: arbitrum [`0x17c01a...875792`](./contracts/arbitrum-42161/0x17c01a17eba2be1abe93d54b8a9c627cb0875792/); arbitrum `0xe279fd...286068` | ✅ Audited |
| TransferRestrictor | unknown | arbitrum | 13 deployments: ethereum `0x5b4680...b4c2f8`; ethereum `0x88b92c...84a701`; base `0x5b4680...b4c2f8`; base `0xe1b2fe...94611e`; arbitrum [`0x036c44...9152af`](./contracts/arbitrum-42161/0x036c44f2df0d7cfa7624b002bd7ef486449152af/); arbitrum `0x0fe85e...f28012`; arbitrum `0x4f4ef0...02118a`; arbitrum `0x86a68d...215c38`; arbitrum `0x9255d7...548698`; arbitrum `0xc63ac7...60e712`; arbitrum `0xead337...94bbf7`; arbitrum `0xeda6e4...b4aea3`; blast `0x5b4680...b4c2f8` | ✅ Audited |
| UsdPlus | unknown | base | 14 deployments: ethereum `0x3aa37e...f84885`; ethereum `0x585873...ea6d83`; ethereum `0x66c102...67d94c`; ethereum `0xc23caa...7d1fcb`; ethereum `0xef93fd...ac700c`; base [`0x036c44...9152af`](./contracts/base-8453/0x036c44f2df0d7cfa7624b002bd7ef486449152af/); base `0x87d8c2...96d390`; base `0x97869e...061781`; arbitrum `0x392740...8c6274`; arbitrum `0x51a6fd...562d1f`; arbitrum `0x5be5ca...585022`; arbitrum `0x6614ef...6593eb`; arbitrum `0x84e813...e57646`; arbitrum `0xe48bf1...788618` | ✅ Audited |
| UsdPlusMinter | unknown | ethereum | 26 deployments: ethereum [`0x01429f...f09db6`](./contracts/ethereum-1/0x01429f55dbef744acc24315bde3489005ef09db6/); ethereum `0x22ab2d...de728b`; ethereum `0x3fc7cb...b983fb`; ethereum `0x458543...bda48a`; ethereum `0x63cb58...51bc79`; ethereum `0x6594b9...47a53c`; ethereum `0x6aa1bd...b3c72a`; ethereum `0xa405d8...e38fde`; ethereum `0xb390f0...b32726`; ethereum `0xbe924d...c032b8`; base `0x2d16d0...564f5a`; base `0x34d8bb...b7a6b0`; base `0x459c9f...ec2637`; base `0x6a71a4...76b6a2`; base `0x736c9c...ac367b`; base `0xf427d1...186f90`; base `0xf83042...f6ffdc`; arbitrum `0x0421c7...c3dff5`; arbitrum `0x0d44bf...5bdb64`; arbitrum `0x223e33...2577d6`; arbitrum `0x4dc7e4...e18119`; arbitrum `0x71f341...b6116d`; arbitrum `0x77f98a...7dec2e`; arbitrum `0x8e22a4...c0da12`; arbitrum `0xc55099...77b3b0`; arbitrum `0xec447b...095dc3` | ✅ Audited |
| UsdPlusRedeemer | unknown | arbitrum | 37 deployments: ethereum `0x0356f2...da6743`; ethereum `0x106630...66f0da`; ethereum `0x13df9f...dae216`; ethereum `0x332a3e...504f25`; ethereum `0x5543f9...462167`; ethereum `0x65906a...14c6a9`; ethereum `0x6d55e5...aec0ae`; ethereum `0x6fc7cc...2b65a4`; ethereum `0x714861...0e6b40`; ethereum `0x8413b5...024cc2`; ethereum `0x87d17f...e91bb0`; ethereum `0xaa48c7...86985e`; ethereum `0xbb552f...9fcbba`; ethereum `0xfc7f79...942be1`; base `0x1f7802...978c31`; base `0x2ee055...3a6a07`; base `0x432e11...a34a23`; base `0x62ebe8...7a7f1f`; base `0x688512...7fad52`; base `0x7e2cee...8721c7`; base `0x869ae2...59c9c4`; base `0x8e0748...4dc7b7`; base `0x9a8e37...c7a5d1`; base `0x9cb881...1d3870`; arbitrum [`0x027cd9...9a3aa0`](./contracts/arbitrum-42161/0x027cd97d151067cbf3aa8480c6154c9cce9a3aa0/); arbitrum `0x126995...e08c8a`; arbitrum `0x2ee763...ef07f2`; arbitrum `0x4c042a...a23df9`; arbitrum `0x5d08c6...7ee72d`; arbitrum `0x7a64e7...47e753`; arbitrum `0x8a72fa...6eb462`; arbitrum `0x9ce85b...ddb7ed`; arbitrum `0xa2aaaa...fb03ff`; arbitrum `0xb48cfa...4d15f5`; arbitrum `0xd72f77...d0da93`; arbitrum `0xe9477d...d18083`; arbitrum `0xf2c65a...a50802` | ✅ Audited |
| WrappedUsdPlus | unknown | ethereum | 9 deployments: ethereum [`0x141170...6980f8`](./contracts/ethereum-1/0x14117088cbd2e0fb58fc9ab9818efd40c56980f8/); ethereum `0xf7c74a...091221`; ethereum `0xff5258...2a1bd5`; base `0xb47b9a...9d0d86`; base `0xe4bb76...99ca3e`; base `0xe5295e...5a877c`; arbitrum `0x9082e6...3b5537`; arbitrum `0xb5ca3f...7fccc1`; arbitrum `0xde4fd0...4c4214` | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Vault | core_logic | ethereum | 4 deployments: ethereum [`0x232ca1...f2b839`](./contracts/ethereum-1/0x232ca17c44185ba9099417cd500d2e5e96f2b839/); base `0x714861...0e6b40`; arbitrum `0x991cb3...57e471`; blast `0x6d55e5...aec0ae` | ⚠️ Unaudited |
| StakedUsdPlus | token | ethereum | 4 deployments: ethereum [`0x63914c...179e8e`](./contracts/ethereum-1/0x63914c467ea6c16ea85514dbc32b9ee2ae179e8e/); ethereum `0xe1b2fe...94611e`; ethereum `0xeda6e4...b4aea3`; arbitrum `0xeddf18...ea494c` | ⚠️ Unaudited |
| StakeRaise | core_logic | ethereum | 7 deployments: ethereum [`0x228e26...bcdd92`](./contracts/ethereum-1/0x228e26dfa9dd30b8aa8b2d2bc969f1784fbcdd92/); ethereum `0x376f23...d10a51`; ethereum `0x4ade36...651e81`; ethereum `0x500fdf...450760`; ethereum `0xd767ee...35e6f9`; ethereum `0xf1c32b...80d081`; ethereum `0xf4bd09...40a9d2` | ⚠️ Unaudited |
| BeaconProxy | registry | arbitrum | 70 deployments: arbitrum [`0x026fdf...7a5044`](./contracts/arbitrum-42161/0x026fdf3024953cb2e8982bc11c67d336f37a5044/); arbitrum `0x0b5ac0...070193`; arbitrum `0x0c2989...5ae6ad`; arbitrum `0x0c39b0...3534f1`; arbitrum `0x0c59f6...b1efa7`; arbitrum `0x0f11c5...d314ab`; arbitrum `0x118346...20d7ec`; arbitrum `0x14297b...2bdf8e`; arbitrum `0x182087...e7b803`; arbitrum `0x2824ef...7640c2`; arbitrum `0x2b7c64...979bff`; arbitrum `0x2f3990...fe1e82`; arbitrum `0x32c8fb...7c237e`; arbitrum `0x3619ca...356228`; arbitrum `0x36d37b...1bcf81`; arbitrum `0x3ad63b...89ecdc`; arbitrum `0x3c5beb...53451b`; arbitrum `0x3c9f23...1ff0c4`; arbitrum `0x407274...9d316d`; arbitrum `0x42112c...716964`; arbitrum `0x46b979...907fa1`; arbitrum `0x4c4c79...24920a`; arbitrum `0x4dafff...53ce5c`; arbitrum `0x4e63c4...421cff`; arbitrum `0x519062...39dca6`; arbitrum `0x57d7cb...a891b0`; arbitrum `0x5b4c01...e2d12f`; arbitrum `0x5b6424...d90d25`; arbitrum `0x5bf7d0...5cfd4b`; arbitrum `0x67bad4...7da43a`; arbitrum `0x6bb71b...4551f4`; arbitrum `0x769ff5...d52bdf`; arbitrum `0x77308f...9f8475`; arbitrum `0x7e8b16...428876`; arbitrum `0x8240af...52650b`; arbitrum `0x8821ab...69395a`; arbitrum `0x8e50d1...646410`; arbitrum `0x98cd82...ee28c5`; arbitrum `0x9c46e1...f6df3a`; arbitrum `0x9da913...4ed4b1`; arbitrum `0x9ea41f...6f5e07`; arbitrum `0xa6b1bc...a2d457`; arbitrum `0xa6f344...36b5fb`; arbitrum `0xadf3cd...720923`; arbitrum `0xb1284f...da5c69`; arbitrum `0xb5d096...f28599`; arbitrum `0xbac491...b64945`; arbitrum `0xbda5a1...c69514`; arbitrum `0xc1ba16...2b428c`; arbitrum `0xc52915...0837ab`; arbitrum `0xc9faf4...869c86`; arbitrum `0xcc3dc0...272f8a`; arbitrum `0xce38e1...d6c5a7`; arbitrum `0xd767ee...35e6f9`; arbitrum `0xd883bc...ca649e`; arbitrum `0xd8f728...7786c5`; arbitrum `0xdd92f0...c9968e`; arbitrum `0xe1624e...1640a9`; arbitrum `0xe744c9...f605e3`; arbitrum `0xeb0d13...090146`; arbitrum `0xeb4def...ceac02`; arbitrum `0xedebc5...5d3828`; arbitrum `0xee0d00...60ea02`; arbitrum `0xef8c9c...302c83`; arbitrum `0xf1f18f...6263fe`; arbitrum `0xf3d26a...c34287`; arbitrum `0xf4bd09...40a9d2`; arbitrum `0xf82f68...ac8d6f`; arbitrum `0xf8c652...d5bcef`; arbitrum `0xfe0fed...c31e9c` | ⚠️ Unaudited |
| BuyProcessor | unknown | arbitrum | [`0x4ec42a...165a67`](./contracts/arbitrum-42161/0x4ec42a1709e6245ff0bdd5ba605ba7147a165a67/) | ⚠️ Unaudited |
| BuyUnlockedProcessor | unknown | blast | 7 deployments: ethereum `0xca1f1c...25d636`; arbitrum `0x640d8f...bcd064`; arbitrum `0x910827...d49a8c`; arbitrum `0xb60014...0d4db0`; arbitrum `0xdd6da6...5ef2ab`; blast [`0x332a3e...504f25`](./contracts/blast-81457/0x332a3e403ff0d03076fdce768dafe032b7504f25/); blast `0xbce641...93bc4d` | ⚠️ Unaudited |
| CamelotTask | unknown | arbitrum | [`0xc19922...7993fe`](./contracts/arbitrum-42161/0xc19922c48e75be5c22777278b422eb1a0b7993fe/) | ⚠️ Unaudited |
| CCIPWaypoint | unknown | ethereum | 11 deployments: ethereum [`0x0785b9...16bc32`](./contracts/ethereum-1/0x0785b940c9ed5bc4538b5aea15d4e4150116bc32/); ethereum `0x4f6755...76c3c2`; ethereum `0x736c9c...ac367b`; ethereum `0xf83042...f6ffdc`; base `0x2e2a25...336890`; base `0x4528dd...012955`; base `0x7cedc2...50bffd`; arbitrum `0x362e20...1f15fd`; arbitrum `0x3a34b7...816907`; arbitrum `0xd1cc75...7d7869`; arbitrum `0xd878e0...c094e9` | ⚠️ Unaudited |
| DShareFactory | registry | base | 7 deployments: ethereum `0x8e7282...a1eed1`; ethereum `0xa0319c...98c329`; base [`0x332a3e...504f25`](./contracts/base-8453/0x332a3e403ff0d03076fdce768dafe032b7504f25/); arbitrum `0x6a285c...455826`; arbitrum `0x95bc50...053a96`; blast `0x458543...bda48a`; blast `0xa0319c...98c329` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | 15 deployments: ethereum `0x60b5e7...47c747`; ethereum `0x63088e...4c0c25`; ethereum `0x95b77a...a486b0`; ethereum `0x98c661...dd7dd3`; ethereum `0xecabf4...4d9a9e`; base [`0x0bfe52...05fdea`](./contracts/base-8453/0x0bfe520dccab40be814e8dc9eab9f1db6305fdea/); base `0x98c661...dd7dd3`; base `0xbce641...93bc4d`; base `0xbe1d52...1a02bf`; arbitrum `0x47910f...bb8915`; arbitrum `0x7e4d80...a7486b`; arbitrum `0xb4ca72...f603b8`; arbitrum `0xd8d541...b90a44`; arbitrum `0xfc9051...950cfa`; blast `0x6aa1bd...b3c72a` | ⚠️ Unaudited |
| Forwarder | unknown | ethereum | 6 deployments: ethereum [`0x08d7b1...7e2290`](./contracts/ethereum-1/0x08d7b1e920780dc6e99da11de765b5c4067e2290/); ethereum `0xb88f1c...d31d52`; arbitrum `0x14d349...8a33c8`; arbitrum `0xa3ed7c...68ed37`; arbitrum `0xb47b9a...9d0d86`; arbitrum `0xc498e2...748cc7` | ⚠️ Unaudited |
| ForwarderPyth | unknown | blast | [`0x3aa37e...f84885`](./contracts/blast-81457/0x3aa37e6a6852a483b7f85dc193c4723cf6f84885/) | ⚠️ Unaudited |
| FulfillmentRouter | adapter | ethereum | 7 deployments: ethereum [`0x462efb...f69c84`](./contracts/ethereum-1/0x462efb6a9519f93d9613ad613842e02417f69c84/); ethereum `0xb9030e...bb4c29`; base `0x63914c...179e8e`; arbitrum `0xc69778...6be797`; arbitrum `0xe4f65f...1114e4`; blast [`0x462efb...f69c84`](./contracts/blast-81457/0x462efb6a9519f93d9613ad613842e02417f69c84/); blast `0xf83042...f6ffdc` | ⚠️ Unaudited |
| OrderFees | unknown | arbitrum | 4 deployments: arbitrum [`0x106630...66f0da`](./contracts/arbitrum-42161/0x1066300660b49340cd28a8a97774b89ec866f0da/); arbitrum `0x2c5a99...85a7fa`; arbitrum `0x98c661...dd7dd3`; arbitrum `0xab309b...9bce95` | ⚠️ Unaudited |
| SellProcessor | unknown | arbitrum | [`0x70f2bd...9e4be3`](./contracts/arbitrum-42161/0x70f2bd91390df0a0662f7ba322d8c166e89e4be3/) | ⚠️ Unaudited |
| TokenLockCheck | token | arbitrum | 3 deployments: ethereum `0xc63ac7...60e712`; arbitrum [`0x57591e...316b2b`](./contracts/arbitrum-42161/0x57591e07eab6c2b3bee529586253217584316b2b/); blast `0x7e599c...b6a8fc` | ⚠️ Unaudited |
| TransferRestrictorLocked | unknown | arbitrum | [`0x5543b8...3111d2`](./contracts/arbitrum-42161/0x5543b845183efde539c4f4829569ad6c693111d2/) | ⚠️ Unaudited |
| UnityOracle | operational_periphery | ethereum | 7 deployments: ethereum [`0x2ad585...154481`](./contracts/ethereum-1/0x2ad58557d3e406e7249d9fd846b1697749154481/); ethereum `0x942ab4...04330f`; ethereum `0xa38705...2286a7`; base `0xba16ca...e0b945`; arbitrum `0x497d6c...7a8eda`; arbitrum `0x6a05db...bae81a`; arbitrum `0x854f67...dbeb19` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | arbitrum | 8 deployments: ethereum `0x4062d9...774f27`; ethereum `0x5ccb54...7e6835`; base `0x6aa1bd...b3c72a`; base `0x9b3e9d...817de5`; arbitrum [`0x154360...01dacb`](./contracts/arbitrum-42161/0x15436013850211acf89b656f34b426fdae01dacb/); arbitrum `0xad2060...3bc7f5`; blast `0x98c661...dd7dd3`; blast `0xe1b2fe...94611e` | ⚠️ Unaudited |
| WrappedDShare | unknown | arbitrum | 6 deployments: ethereum `0x43e165...b466af`; base `0x7e599c...b6a8fc`; arbitrum [`0x15616a...2c956c`](./contracts/arbitrum-42161/0x15616a647d6c5dd82132ada8970179fffc2c956c/); arbitrum `0x7eedcf...a340f0`; arbitrum `0x855c83...a43517`; blast `0x63914c...179e8e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| OrderProcessor | unknown | arbitrum | 20 deployments: ethereum `0x10448d...11a66f`; ethereum `0x2c5a99...85a7fa`; ethereum `0x6bb71b...4551f4`; ethereum `0x9f2c33...849863`; ethereum `0xa8a48c...ac79cb`; ethereum `0xcc3dc0...272f8a`; base `0x63ff43...e539c0`; base `0x9a17bb...851e09`; base `0xff6910...565eb3`; arbitrum [`0x0a0363...806242`](./contracts/arbitrum-42161/0x0a03632a634124ee3bba0e9e58f1a48fcf806242/); arbitrum `0x14d5ba...300deb`; arbitrum `0x4c3bd1...9ff8b3`; arbitrum `0x8ec4a0...01512f`; arbitrum `0xd9ab47...a32c04`; arbitrum `0xfa9224...e4131d`; blast `0x714861...0e6b40`; blast `0x9b3e9d...817de5`; blast `0x9f2c33...849863`; blast `0xa8a48c...ac79cb`; blast `0xeb458f...e5e5c6` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (39)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x4062d9cbf85da2913880a3a5641cf05e85774f27) | proxy | arbitrum | `0x43e165...b466af` | ❓ Unverified |
| Proxy (impl: 0x45854301aa075c62976c90cf6802a72dd4bda48a) | proxy | arbitrum | `0x6aa1bd...b3c72a` | ❓ Unverified |
| Proxy (impl: 0x58b1d890f38722dca6650f009578606e111d5c80) | proxy | arbitrum | `0xf03103...a11874` | ❓ Unverified |
| Proxy (impl: 0x5ccb5482dc15aadd36d6c02c0d44ce0e3e7e6835) | proxy | arbitrum | `0x8e7282...a1eed1` | ❓ Unverified |
| Proxy (impl: 0x63914c467ea6c16ea85514dbc32b9ee2ae179e8e) | proxy | arbitrum | `0xe1b2fe...94611e` | ❓ Unverified |
| Proxy (impl: 0x6bffd2fbd74fcbeb8ce8aa038a58165569b2a0af) | proxy | arbitrum | `0x736c9c...ac367b` | ❓ Unverified |
| Proxy (impl: 0x7e599c828c42758be0a6336dc32334b8afb6a8fc) | proxy | arbitrum | `0x9b3e9d...817de5` | ❓ Unverified |
| Proxy (impl: 0x88b92c99098f7a817df0392294b96f8ab284a701) | proxy | arbitrum | `0x8705e5...2fc10e` | ❓ Unverified |
| Proxy (impl: 0xf83042d4bbb1cb9c9e1042da4654585c60f6ffdc) | proxy | arbitrum | `0x1f7802...978c31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x036c44...9152af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x03d0d0...3184bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3ad63b...89ecdc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4d3347...6dda0a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x701ae6...14b335` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x91b715...1cc28e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb6a837...3b519f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x14297b...2bdf8e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5023c1...3b19bf` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc3c70b...4a0c9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x10448d...11a66f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x25135f...b97dc7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4062d9...774f27` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4530b1...02f3a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x458543...bda48a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4d8274...eba65e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x58b1d8...1d5c80` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5ccb54...7e6835` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x63914c...179e8e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6bffd2...b2a0af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7e599c...b6a8fc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8370ce...227593` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x88b92c...84a701` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xafc053...6902e8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xec3b79...5560ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xecabf4...4d9a9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf83042...f6ffdc` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x04f522...a95f6f` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x3d8037...1419d7` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x83f669...374472` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit_Sherlock_230811.pdf](https://assets.dinari.com/audits/Audit_Sherlock_230811.pdf) | Sherlock | Contest | 2023-08 | stale | Direct | contract_name | 39 | high |
| [Audit_Hacken_231212.pdf](https://assets.dinari.com/audits/Audit_Hacken_231212.pdf) | Hacken | Audit | 2023-12 | stale | Direct | contract_name | 21 | high |
| [Audit_Pashov_241224.pdf](https://assets.dinari.com/audits/Audit_Pashov_241224.pdf) | Pashov Audit Group | Audit | 2024-12 | aging | Direct | contract_name | 99 | high |
| [Audit_Hacken_241230.pdf](https://assets.dinari.com/audits/Audit_Hacken_241230.pdf) | Hacken | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x232ca1...f2b839`](./contracts/ethereum-1/0x232ca17c44185ba9099417cd500d2e5e96f2b839/) | Vault | core_logic | $27,593.66 | Verified native implementation with $27,593.66 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63914c...179e8e`](./contracts/ethereum-1/0x63914c467ea6c16ea85514dbc32b9ee2ae179e8e/) | StakedUsdPlus | token | $5,147.72 | Verified native implementation with $5,147.72 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x228e26...bcdd92`](./contracts/ethereum-1/0x228e26dfa9dd30b8aa8b2d2bc969f1784fbcdd92/) | StakeRaise | core_logic | $3,857.93 | Verified native implementation with $3,857.93 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4ec42a...165a67`](./contracts/arbitrum-42161/0x4ec42a1709e6245ff0bdd5ba605ba7147a165a67/) | BuyProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x332a3e...504f25`](./contracts/blast-81457/0x332a3e403ff0d03076fdce768dafe032b7504f25/) | BuyUnlockedProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0785b9...16bc32`](./contracts/ethereum-1/0x0785b940c9ed5bc4538b5aea15d4e4150116bc32/) | CCIPWaypoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x332a3e...504f25`](./contracts/base-8453/0x332a3e403ff0d03076fdce768dafe032b7504f25/) | DShareFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08d7b1...7e2290`](./contracts/ethereum-1/0x08d7b1e920780dc6e99da11de765b5c4067e2290/) | Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x3aa37e...f84885`](./contracts/blast-81457/0x3aa37e6a6852a483b7f85dc193c4723cf6f84885/) | ForwarderPyth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x462efb...f69c84`](./contracts/ethereum-1/0x462efb6a9519f93d9613ad613842e02417f69c84/) | FulfillmentRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x106630...66f0da`](./contracts/arbitrum-42161/0x1066300660b49340cd28a8a97774b89ec866f0da/) | OrderFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x70f2bd...9e4be3`](./contracts/arbitrum-42161/0x70f2bd91390df0a0662f7ba322d8c166e89e4be3/) | SellProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x57591e...316b2b`](./contracts/arbitrum-42161/0x57591e07eab6c2b3bee529586253217584316b2b/) | TokenLockCheck | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5543b8...3111d2`](./contracts/arbitrum-42161/0x5543b845183efde539c4f4829569ad6c693111d2/) | TransferRestrictorLocked | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ad585...154481`](./contracts/ethereum-1/0x2ad58557d3e406e7249d9fd846b1697749154481/) | UnityOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x15616a...2c956c`](./contracts/arbitrum-42161/0x15616a647d6c5dd82132ada8970179fffc2c956c/) | WrappedDShare | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 56 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=159

Zero-match audit list:

- [2052] Audit_Hacken_241230.pdf

Fork inheritance lineage and inherited audits are included when available.
