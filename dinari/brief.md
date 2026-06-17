# Agentic Audit Brief: Dinari

⚠️ Lifecycle status: DECLINING - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Dinari (`dinari`)
- Website: [https://dinari.com](https://dinari.com)
- Lifecycle: declining (Tier 0, 81.9% below peak)
- Generated: 2026-06-17T07:00:49.515Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, blast, ethereum
- Contract surface: 64 unique implementations (197 raw deployments)
- DeFi Llama TVL: $10,832,284.10
- On-chain TVL (included contracts): $27,593.66
- TVL by chain: Blast $23,478.66 | Base $2,531.78 | Ethereum $1,583.22

## Project Description

Dinari is a real-world asset tokenization platform focused on dShares: 1:1-backed tokenized U.S. stocks and ETFs that provide on-chain access to public securities through Dinari's API and related issuance, trading, and redemption infrastructure. USD+ should be described separately as a Treasuries-backed stablecoin product, not as the protocol's primary purpose.

### Architecture

All contracts belong to a single product family deployed by a single deployer cluster, sharing upgradeable proxy patterns (ERC1967Proxy, BeaconProxy) and beacon-based implementations. Core contracts like OrderProcessor, UsdPlusMinter, and CCIPWaypoint interact to facilitate the full lifecycle of RWA tokens, while supporting proxies and beacons provide upgradeability and access control.

## Contract Surface Quality

- Indexed contracts: 356; live-surface contracts included: 197 (30 live, 167 unknown).
- Excluded by liveness: 51 inactive, 108 singleton, 0 uninitialized.
- Deployment units: 8/61 live.
- Detected codebases: none
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 12/49 (24.5%)
- Verified + Unaudited implementations: 37
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 64
- Raw deployments: 197
- Audits discovered: 4
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $27,593.66
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 2 aging, 2 stale, 0 unknown
- Tier 1 coverage: 10.2% (Sherlock)
- Note: This protocol is classified as [declining]. ASD of $27,593.66 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 5 | 10.2% | 2024-12 |
| Sherlock | Tier 1 | 5 | 10.2% | 2023-08 |
| Hacken | Tier 2 | 3 | 6.1% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgedERC20 | operational_periphery | arbitrum | n/a | 13 deployments: arbitrum [`0x1ba13c...fe6c82`](./contracts/arbitrum-42161/0x1ba13cd81b018e06d7a7ead033d5131115fe6c82/); arbitrum `0x20f11c...8f8cdf`; arbitrum `0x2414fa...dc6636`; arbitrum `0x2888c0...6225c6`; arbitrum `0x58a8ee...e7eb3b`; arbitrum `0x5a8a18...7b860f`; arbitrum `0x6ae848...2f49d5`; arbitrum `0x707321...359cef`; arbitrum `0x9bd7a0...7668b4`; arbitrum `0x9f1f1b...832359`; arbitrum `0xa40c09...5b2e48`; arbitrum `0xf67e6e...3bb9cb`; arbitrum `0xfdc642...cf560a` | ✅ Audited |
| DividendDistribution | unknown | arbitrum | n/a | 3 deployments: ethereum `0xec3b79...5560ce`; arbitrum [`0x7e66ea...38e7fc`](./contracts/arbitrum-42161/0x7e66ea8e425f0669f651373c85df8415eb38e7fc/); blast `0xa2fc79...02e5d0` | ✅ Audited |
| DShare | unknown | base | n/a | 3 deployments: base [`0x458543...bda48a`](./contracts/base-8453/0x45854301aa075c62976c90cf6802a72dd4bda48a/); arbitrum `0x9a8e37...c7a5d1`; arbitrum `0xf23789...a54020` | ✅ Audited |
| OrderProcessor | unknown | ethereum | unit-29836 | [`0xa8a48c...ac79cb`](./contracts/ethereum-1/0xa8a48c202af4e73ad19513d37158a872a4ac79cb/) | ✅ Audited |
| OrderProcessor | unknown | base | unit-29844 | [`0x63ff43...e539c0`](./contracts/base-8453/0x63ff43009f9ba3584af2ddfc3d5fe2cb8ae539c0/) | ✅ Audited |
| OrderProcessor | unknown | arbitrum | n/a | 5 deployments: base `0x9a17bb...851e09`; base `0xff6910...565eb3`; arbitrum [`0x14d5ba...300deb`](./contracts/arbitrum-42161/0x14d5ba979b3faf24823c80bb3be228b543300deb/); arbitrum `0x8ec4a0...01512f`; arbitrum `0xd9ab47...a32c04` | ✅ Audited |
| OrderProcessor | unknown | arbitrum | unit-29880 | [`0xfa9224...e4131d`](./contracts/arbitrum-42161/0xfa922457873f750244d93679df0d810881e4131d/) | ✅ Audited |
| TransferRestrictor | unknown | arbitrum | n/a | 12 deployments: ethereum `0x88b92c...84a701`; base `0x5b4680...b4c2f8`; base `0xe1b2fe...94611e`; arbitrum [`0x036c44...9152af`](./contracts/arbitrum-42161/0x036c44f2df0d7cfa7624b002bd7ef486449152af/); arbitrum `0x0fe85e...f28012`; arbitrum `0x4f4ef0...02118a`; arbitrum `0x86a68d...215c38`; arbitrum `0x9255d7...548698`; arbitrum `0xc63ac7...60e712`; arbitrum `0xead337...94bbf7`; arbitrum `0xeda6e4...b4aea3`; blast `0x5b4680...b4c2f8` | ✅ Audited |
| UsdPlus | unknown | base | n/a | 9 deployments: base [`0x036c44...9152af`](./contracts/base-8453/0x036c44f2df0d7cfa7624b002bd7ef486449152af/); base `0x87d8c2...96d390`; base `0x97869e...061781`; arbitrum `0x392740...8c6274`; arbitrum `0x51a6fd...562d1f`; arbitrum `0x5be5ca...585022`; arbitrum `0x6614ef...6593eb`; arbitrum `0x84e813...e57646`; arbitrum `0xe48bf1...788618` | ✅ Audited |
| UsdPlusMinter | unknown | arbitrum | n/a | 10 deployments: base `0x2d16d0...564f5a`; base `0x34d8bb...b7a6b0`; base `0x459c9f...ec2637`; base `0x6a71a4...76b6a2`; base `0xf427d1...186f90`; arbitrum [`0x0421c7...c3dff5`](./contracts/arbitrum-42161/0x0421c7882538d41ec44ed661a5b140fc28c3dff5/); arbitrum `0x4dc7e4...e18119`; arbitrum `0x71f341...b6116d`; arbitrum `0x8e22a4...c0da12`; arbitrum `0xec447b...095dc3` | ✅ Audited |
| UsdPlusRedeemer | unknown | arbitrum | n/a | 21 deployments: base `0x1f7802...978c31`; base `0x2ee055...3a6a07`; base `0x432e11...a34a23`; base `0x62ebe8...7a7f1f`; base `0x688512...7fad52`; base `0x7e2cee...8721c7`; base `0x869ae2...59c9c4`; base `0x8e0748...4dc7b7`; base `0x9a8e37...c7a5d1`; base `0x9cb881...1d3870`; arbitrum [`0x027cd9...9a3aa0`](./contracts/arbitrum-42161/0x027cd97d151067cbf3aa8480c6154c9cce9a3aa0/); arbitrum `0x126995...e08c8a`; arbitrum `0x2ee763...ef07f2`; arbitrum `0x4c042a...a23df9`; arbitrum `0x5d08c6...7ee72d`; arbitrum `0x7a64e7...47e753`; arbitrum `0x8a72fa...6eb462`; arbitrum `0x9ce85b...ddb7ed`; arbitrum `0xa2aaaa...fb03ff`; arbitrum `0xb48cfa...4d15f5`; arbitrum `0xd72f77...d0da93` | ✅ Audited |
| WrappedUsdPlus | unknown | arbitrum | n/a | 2 deployments: base `0xe4bb76...99ca3e`; arbitrum [`0xb5ca3f...7fccc1`](./contracts/arbitrum-42161/0xb5ca3fa454c74927eca3f47f49516402f87fccc1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (37)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x232ca1...f2b839`](./contracts/ethereum-1/0x232ca17c44185ba9099417cd500d2e5e96f2b839/); base `0x714861...0e6b40`; arbitrum `0x991cb3...57e471`; blast `0x6d55e5...aec0ae` | ⚠️ Unaudited |
| BeaconProxy | registry | arbitrum | unit-29852 (35 proxies) | 35 deployments: arbitrum [`0x026fdf...7a5044`](./contracts/arbitrum-42161/0x026fdf3024953cb2e8982bc11c67d336f37a5044/); arbitrum `0x0b5ac0...070193`; arbitrum `0x0c2989...5ae6ad`; arbitrum `0x0c59f6...b1efa7`; arbitrum `0x118346...20d7ec`; arbitrum `0x14297b...2bdf8e`; arbitrum `0x182087...e7b803`; arbitrum `0x2824ef...7640c2`; arbitrum `0x2b7c64...979bff`; arbitrum `0x3619ca...356228`; arbitrum `0x36d37b...1bcf81`; arbitrum `0x3ad63b...89ecdc`; arbitrum `0x3c9f23...1ff0c4`; arbitrum `0x46b979...907fa1`; arbitrum `0x4dafff...53ce5c`; arbitrum `0x519062...39dca6`; arbitrum `0x5b6424...d90d25`; arbitrum `0x67bad4...7da43a`; arbitrum `0x769ff5...d52bdf`; arbitrum `0x77308f...9f8475`; arbitrum `0x8240af...52650b`; arbitrum `0x8e50d1...646410`; arbitrum `0x9c46e1...f6df3a`; arbitrum `0x9da913...4ed4b1`; arbitrum `0xa6f344...36b5fb`; arbitrum `0xb1284f...da5c69`; arbitrum `0xc1ba16...2b428c`; arbitrum `0xc52915...0837ab`; arbitrum `0xce38e1...d6c5a7`; arbitrum `0xd883bc...ca649e`; arbitrum `0xd8f728...7786c5`; arbitrum `0xdd92f0...c9968e`; arbitrum `0xeb0d13...090146`; arbitrum `0xf1f18f...6263fe`; arbitrum `0xf4bd09...40a9d2` | ⚠️ Unaudited |
| BuyProcessor | unknown | arbitrum | n/a | [`0x4ec42a...165a67`](./contracts/arbitrum-42161/0x4ec42a1709e6245ff0bdd5ba605ba7147a165a67/) | ⚠️ Unaudited |
| BuyUnlockedProcessor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x640d8f...bcd064`](./contracts/arbitrum-42161/0x640d8f1cc10737b48dfcb52f7fc2bbaf17bcd064/); arbitrum `0xdd6da6...5ef2ab` | ⚠️ Unaudited |
| CamelotTask | unknown | arbitrum | n/a | [`0xc19922...7993fe`](./contracts/arbitrum-42161/0xc19922c48e75be5c22777278b422eb1a0b7993fe/) | ⚠️ Unaudited |
| CCIPWaypoint | unknown | base | n/a | 3 deployments: base [`0x2e2a25...336890`](./contracts/base-8453/0x2e2a2516898e52560d421a2e46a5e7c534336890/); arbitrum `0x362e20...1f15fd`; arbitrum `0xd878e0...c094e9` | ⚠️ Unaudited |
| DShareFactory | registry | base | n/a | 3 deployments: base [`0x332a3e...504f25`](./contracts/base-8453/0x332a3e403ff0d03076fdce768dafe032b7504f25/); arbitrum `0x6a285c...455826`; arbitrum `0x95bc50...053a96` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | unit-29832 | [`0x60b5e7...47c747`](./contracts/ethereum-1/0x60b5e7eecb2aee0382db86491b8cffa39347c747/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | unit-29833 (3 proxies) | 3 deployments: ethereum [`0x63088e...4c0c25`](./contracts/ethereum-1/0x63088ebebc9aaa8f774c02e025098b97364c0c25/); ethereum `0x95b77a...a486b0`; ethereum `0x98c661...dd7dd3` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | unit-29842 | [`0x0bfe52...05fdea`](./contracts/base-8453/0x0bfe520dccab40be814e8dc9eab9f1db6305fdea/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | unit-29846 | [`0x98c661...dd7dd3`](./contracts/base-8453/0x98c6616f1cc0d3e938a16200830dd55663dd7dd3/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | unit-29849 | [`0xbce641...93bc4d`](./contracts/base-8453/0xbce6410a175a1c9b1a25d38d7e1a900f8393bc4d/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | unit-29850 | [`0xbe1d52...1a02bf`](./contracts/base-8453/0xbe1d52375496f944af615ef133c24dc8fa1a02bf/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | arbitrum | unit-29866 | [`0x7e4d80...a7486b`](./contracts/arbitrum-42161/0x7e4d801e961a0db81938a29efec10d2179a7486b/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | arbitrum | unit-29873 | [`0xb4ca72...f603b8`](./contracts/arbitrum-42161/0xb4ca72ea4d072c779254269fd56093d3adf603b8/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | arbitrum | unit-29876 | [`0xd8d541...b90a44`](./contracts/arbitrum-42161/0xd8d541427ad7ce0f4c6de2b21c8a8596cbb90a44/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | arbitrum | unit-29881 | [`0xfc9051...950cfa`](./contracts/arbitrum-42161/0xfc90518d5136585ba45e34ed5e1d108bd3950cfa/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | blast | unit-29882 | [`0x6aa1bd...b3c72a`](./contracts/blast-81457/0x6aa1bda7e764bc62589e64f371a4022b80b3c72a/) | ⚠️ Unaudited |
| Forwarder | unknown | arbitrum | unit-29855 | [`0x14d349...8a33c8`](./contracts/arbitrum-42161/0x14d3498e4816c2b8f017677356dca051e28a33c8/) | ⚠️ Unaudited |
| Forwarder | unknown | arbitrum | n/a | 4 deployments: ethereum `0xb88f1c...d31d52`; arbitrum [`0xa3ed7c...68ed37`](./contracts/arbitrum-42161/0xa3ed7cd9ad3e0910e3fa355813f763634568ed37/); arbitrum `0xb47b9a...9d0d86`; arbitrum `0xc498e2...748cc7` | ⚠️ Unaudited |
| ForwarderPyth | unknown | blast | n/a | [`0x3aa37e...f84885`](./contracts/blast-81457/0x3aa37e6a6852a483b7f85dc193c4723cf6f84885/) | ⚠️ Unaudited |
| FulfillmentRouter | adapter | ethereum | n/a | 7 deployments: ethereum [`0x462efb...f69c84`](./contracts/ethereum-1/0x462efb6a9519f93d9613ad613842e02417f69c84/); ethereum `0xb9030e...bb4c29`; base `0x63914c...179e8e`; arbitrum `0xc69778...6be797`; arbitrum `0xe4f65f...1114e4`; blast [`0x462efb...f69c84`](./contracts/blast-81457/0x462efb6a9519f93d9613ad613842e02417f69c84/); blast `0xf83042...f6ffdc` | ⚠️ Unaudited |
| OrderFees | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x106630...66f0da`](./contracts/arbitrum-42161/0x1066300660b49340cd28a8a97774b89ec866f0da/); arbitrum `0x2c5a99...85a7fa`; arbitrum `0x98c661...dd7dd3`; arbitrum `0xab309b...9bce95` | ⚠️ Unaudited |
| SellProcessor | unknown | arbitrum | n/a | [`0x70f2bd...9e4be3`](./contracts/arbitrum-42161/0x70f2bd91390df0a0662f7ba322d8c166e89e4be3/) | ⚠️ Unaudited |
| StakedUsdPlus | token | arbitrum | n/a | [`0xeddf18...ea494c`](./contracts/arbitrum-42161/0xeddf183fecd60cdbae59dc965902aaee93ea494c/) | ⚠️ Unaudited |
| TokenLockCheck | token | arbitrum | n/a | 3 deployments: ethereum `0xc63ac7...60e712`; arbitrum [`0x57591e...316b2b`](./contracts/arbitrum-42161/0x57591e07eab6c2b3bee529586253217584316b2b/); blast `0x7e599c...b6a8fc` | ⚠️ Unaudited |
| TransferRestrictorLocked | unknown | arbitrum | n/a | [`0x5543b8...3111d2`](./contracts/arbitrum-42161/0x5543b845183efde539c4f4829569ad6c693111d2/) | ⚠️ Unaudited |
| UnityOracle | operational_periphery | arbitrum | n/a | 4 deployments: base `0xba16ca...e0b945`; arbitrum [`0x497d6c...7a8eda`](./contracts/arbitrum-42161/0x497d6cede7c59cb97bf1593a742c43bb647a8eda/); arbitrum `0x6a05db...bae81a`; arbitrum `0x854f67...dbeb19` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | ethereum | unit-29829 | [`0x4062d9...774f27`](./contracts/ethereum-1/0x4062d9cbf85da2913880a3a5641cf05e85774f27/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | ethereum | unit-29831 | [`0x5ccb54...7e6835`](./contracts/ethereum-1/0x5ccb5482dc15aadd36d6c02c0d44ce0e3e7e6835/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | base | unit-29845 | [`0x6aa1bd...b3c72a`](./contracts/base-8453/0x6aa1bda7e764bc62589e64f371a4022b80b3c72a/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | base | unit-29847 | [`0x9b3e9d...817de5`](./contracts/base-8453/0x9b3e9d3fb6849c9f0edcb2a9ebb6af83b7817de5/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | arbitrum | unit-29856 | [`0x154360...01dacb`](./contracts/arbitrum-42161/0x15436013850211acf89b656f34b426fdae01dacb/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | arbitrum | unit-29872 | [`0xad2060...3bc7f5`](./contracts/arbitrum-42161/0xad20601c7a3212c7bbf2acdfedbad99d803bc7f5/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | blast | unit-29884 | [`0x98c661...dd7dd3`](./contracts/blast-81457/0x98c6616f1cc0d3e938a16200830dd55663dd7dd3/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | blast | unit-29887 | [`0xe1b2fe...94611e`](./contracts/blast-81457/0xe1b2feede3ffe7e63a89a669a08688951c94611e/) | ⚠️ Unaudited |
| WrappedDShare | unknown | arbitrum | n/a | 4 deployments: base `0x7e599c...b6a8fc`; arbitrum [`0x15616a...2c956c`](./contracts/arbitrum-42161/0x15616a647d6c5dd82132ada8970179fffc2c956c/); arbitrum `0x7eedcf...a340f0`; arbitrum `0x855c83...a43517` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x03d0d0...3184bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91b715...1cc28e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6a837...3b519f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x14297b...2bdf8e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5023c1...3b19bf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc3c70b...4a0c9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x10448d...11a66f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x25135f...b97dc7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4530b1...02f3a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d8274...eba65e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xec3b79...5560ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xecabf4...4d9a9e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x04f522...a95f6f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3d8037...1419d7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x83f669...374472` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit_Sherlock_230811.pdf](https://assets.dinari.com/audits/Audit_Sherlock_230811.pdf) | Sherlock | Contest | 2023-08 | stale | Direct | contract_name | 21 | high |
| [Audit_Hacken_231212.pdf](https://assets.dinari.com/audits/Audit_Hacken_231212.pdf) | Hacken | Audit | 2023-12 | stale | Direct | contract_name | 18 | high |
| [Audit_Pashov_241224.pdf](https://assets.dinari.com/audits/Audit_Pashov_241224.pdf) | Pashov Audit Group | Audit | 2024-12 | aging | Direct | contract_name | 54 | high |
| [Audit_Hacken_241230.pdf](https://assets.dinari.com/audits/Audit_Hacken_241230.pdf) | Hacken | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x232ca1...f2b839`](./contracts/ethereum-1/0x232ca17c44185ba9099417cd500d2e5e96f2b839/) | Vault | core_logic | $27,593.66 | Verified native implementation with $27,593.66 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4ec42a...165a67`](./contracts/arbitrum-42161/0x4ec42a1709e6245ff0bdd5ba605ba7147a165a67/) | BuyProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x640d8f...bcd064`](./contracts/arbitrum-42161/0x640d8f1cc10737b48dfcb52f7fc2bbaf17bcd064/) | BuyUnlockedProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x332a3e...504f25`](./contracts/base-8453/0x332a3e403ff0d03076fdce768dafe032b7504f25/) | DShareFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x14d349...8a33c8`](./contracts/arbitrum-42161/0x14d3498e4816c2b8f017677356dca051e28a33c8/) | Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa3ed7c...68ed37`](./contracts/arbitrum-42161/0xa3ed7cd9ad3e0910e3fa355813f763634568ed37/) | Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x3aa37e...f84885`](./contracts/blast-81457/0x3aa37e6a6852a483b7f85dc193c4723cf6f84885/) | ForwarderPyth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x462efb...f69c84`](./contracts/ethereum-1/0x462efb6a9519f93d9613ad613842e02417f69c84/) | FulfillmentRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x106630...66f0da`](./contracts/arbitrum-42161/0x1066300660b49340cd28a8a97774b89ec866f0da/) | OrderFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x70f2bd...9e4be3`](./contracts/arbitrum-42161/0x70f2bd91390df0a0662f7ba322d8c166e89e4be3/) | SellProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xeddf18...ea494c`](./contracts/arbitrum-42161/0xeddf183fecd60cdbae59dc965902aaee93ea494c/) | StakedUsdPlus | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x57591e...316b2b`](./contracts/arbitrum-42161/0x57591e07eab6c2b3bee529586253217584316b2b/) | TokenLockCheck | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5543b8...3111d2`](./contracts/arbitrum-42161/0x5543b845183efde539c4f4829569ad6c693111d2/) | TransferRestrictorLocked | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x497d6c...7a8eda`](./contracts/arbitrum-42161/0x497d6cede7c59cb97bf1593a742c43bb647a8eda/) | UnityOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x15616a...2c956c`](./contracts/arbitrum-42161/0x15616a647d6c5dd82132ada8970179fffc2c956c/) | WrappedDShare | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 1 |
| standard_library | 23 |
| needs_review | 4 |

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
