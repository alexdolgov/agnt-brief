# Agentic Audit Brief: Sierra Protocol

## Project Overview

- Project: Sierra Protocol (`sierra-protocol`)
- Website: [https://sierra.money/](https://sierra.money/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:56.161Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: avalanche, ethereum
- Contract surface: 107 unique implementations (144 raw deployments)
- DeFi Llama TVL: $40,235,043.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 36 project-authored contract(s) across 2 chain(s); 3 ERC4626 vaults, 8 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 9 common project-authored base contract(s) (beaconimplementation, deployeruupsupgradeable, beaconproxyfactory). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 208; live-surface contracts included: 144 (37 live, 107 unknown).
- Excluded by liveness: 64 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/11 (0.0%)
- Deployed-live implementations: 11 of 107 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 92
- Unique implementations: 107
- Raw deployments: 144
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DepositAddressRegistry | unknown | avalanche | n/a | 2 deployments: avalanche [`0x194951b1f48b8145d0672b0b606337fab615bec2`](./contracts/avalanche-43114/0x194951b1f48b8145d0672b0b606337fab615bec2/); avalanche `0x616c3d07ec9780d40eaac97d2b71bbfb5c07239d` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | avalanche | n/a | [`0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e`](./contracts/avalanche-43114/0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e/) | ⚠️ Unaudited |
| LytPoolOFT | core_logic | ethereum | n/a | [`0x6bf7788eaa948d9ffba7e9bb386e2d3c9810e0fc`](./contracts/ethereum-1/0x6bf7788eaa948d9ffba7e9bb386e2d3c9810e0fc/) | ⚠️ Unaudited |
| LytPoolOFTAdapter | adapter | avalanche | n/a | [`0xc472d3a47719de5f9d808ca91d7b70bd2138bcaa`](./contracts/avalanche-43114/0xc472d3a47719de5f9d808ca91d7b70bd2138bcaa/) | ⚠️ Unaudited |
| PoolControllerFactory | unknown | avalanche | n/a | [`0x95577109dd671ee73e9c867183de9f9b95a0ce25`](./contracts/avalanche-43114/0x95577109dd671ee73e9c867183de9f9b95a0ce25/) | ⚠️ Unaudited |
| PoolControllerFactoryFlex | registry | ethereum | n/a | 2 deployments: ethereum [`0x447239a5c9940ccafa566977c91f17f5d797dbf4`](./contracts/ethereum-1/0x447239a5c9940ccafa566977c91f17f5d797dbf4/); ethereum `0x6f3cab9436ed7a416e00e43fbe029a95240b0dcc` | ⚠️ Unaudited |
| PoolControllerFlex | core_logic | ethereum | n/a | 12 deployments: ethereum [`0x0264f33c7716d93053a28efec730bb5e7412c547`](./contracts/ethereum-1/0x0264f33c7716d93053a28efec730bb5e7412c547/); ethereum `0x266a75b3a6c1b5193fda2c465e2e77e4b098d5d7`; ethereum `0x34bf31426e8f9f9411e68c53b833b126a171596b`; ethereum `0x4d827615812145983e88476376a7015fca402b99`; ethereum `0x6ac59194f77195e12a8d7f017a1195bed62b3d93`; ethereum `0x70b66190bd139e97ff894d6a3a4c285e17f1d2c3`; ethereum `0x758859d2d3131a313bc9db2a5a26c11cbe147ec8`; ethereum `0x912849c586ce05a225de2075e509686aa26953db`; ethereum `0xb7160ed4d0eddb165d5e3d05493bcc8c86a86529`; ethereum `0xea12f3f15c65f170c8f6e571dd1a9c0d50f33c6d`; avalanche `0x4d468f45eeb249d3cedefd8db8b30149159f3ae5`; avalanche `0x5523dfa5d34e58f8fc662c9ac555690b47bc3f02` | ⚠️ Unaudited |
| PoolControllerFlex | unknown | avalanche | n/a | 2 deployments: avalanche [`0x67228cdec83c012cd4dd62c15f07e7f9f94b9e02`](./contracts/avalanche-43114/0x67228cdec83c012cd4dd62c15f07e7f9f94b9e02/); avalanche `0xb7160ed4d0eddb165d5e3d05493bcc8c86a86529` | ⚠️ Unaudited |
| PoolFlex | unknown | avalanche | n/a | 4 deployments: ethereum `0xdd496f2b977057e56a06eb3ac9f6552fbe96445e`; ethereum `0xea8ae2cb0c379d2847a5a8c27a7ce8cbe46fd0d4`; ethereum `0xf6e658a3c792dd1a71aec72ea766d8a08bb402e9`; avalanche [`0xc85d9b69a3cfd606cf4564fcad85f9f04c41ea40`](./contracts/avalanche-43114/0xc85d9b69a3cfd606cf4564fcad85f9f04c41ea40/) | ⚠️ Unaudited |
| PoolLibFlex | unknown | ethereum | n/a | 3 deployments: ethereum [`0x78bfc8a7197abfb81d4774e7936a76092be2e169`](./contracts/ethereum-1/0x78bfc8a7197abfb81d4774e7936a76092be2e169/); ethereum `0xeadeacd7c003bbacb171597889c1271a6791865b`; avalanche `0xb19b8f2e7a65c0ed7ab8bc3eab2a6551429ef4bf` | ⚠️ Unaudited |
| ServiceConfigurationV6 | unknown | avalanche | n/a | 16 deployments: ethereum `0x0c583a7926635301ddbc3cc9fd613df156206611`; ethereum `0x2f6d91b78a1514568e82cb0f21027f4e2c4853ce`; ethereum `0x51e8bb8d7dec46a889b550a170dbc168c6e356f6`; ethereum `0x673897505cf2c7d01ab698a2e6b619c7089d226f`; ethereum `0xbca5cf284c6d1efd7c8a5fd17556a28aed8990b2`; ethereum `0xc5524dc494dee139b9cd93efafcf07869d187380`; ethereum `0xde6bf117c5e0241f1ba38f395fb76504edf60aaa`; ethereum `0xe958bb2a865e523ee8029aabc5643ec2386e3c1b`; avalanche [`0x061e680724a10c24ffb87b6f74c0805c64087605`](./contracts/avalanche-43114/0x061e680724a10c24ffb87b6f74c0805c64087605/); avalanche `0x45b5eda11f4a4079fbdf87c0fa01c5d182d70f69`; avalanche `0x566d58557734ca2b49cdd26d01cee3c13515601a`; avalanche `0x8df52365b04215ec20b916e45893dec784fedddf`; avalanche `0xa550b278cb6d0ce393f80cf3e387e6f8badd2ae0`; avalanche `0xc3016303096b07583ecc675eda0c7c52aa11fa4e`; avalanche `0xccbde093d2fbc50d5adb705253ded33ad20d4a1b`; avalanche `0xd66d333d591114662aa2f9a619ab6aa97dd52c41` | ⚠️ Unaudited |
| VaultFactory | unknown | avalanche | n/a | 2 deployments: avalanche [`0x72bd1f7d7121327a597cca3d59b8b363b1e21e97`](./contracts/avalanche-43114/0x72bd1f7d7121327a597cca3d59b8b363b1e21e97/); avalanche `0xe5db4859f45823e424f9c0dad1d13d4d1783957c` | ⚠️ Unaudited |
| WithdrawControllerFactory | unknown | avalanche | n/a | [`0x8fb0a9351d8d976a030dbbcf34536e8f9bf22679`](./contracts/avalanche-43114/0x8fb0a9351d8d976a030dbbcf34536e8f9bf22679/) | ⚠️ Unaudited |
| WithdrawDepositControllerFactoryFlex | unknown | ethereum | n/a | [`0x616c3d07ec9780d40eaac97d2b71bbfb5c07239d`](./contracts/ethereum-1/0x616c3d07ec9780d40eaac97d2b71bbfb5c07239d/) | ⚠️ Unaudited |
| WithdrawDepositControllerFlex | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0e02665b9c537822b99a2ff07cf854fcefdd7400`](./contracts/ethereum-1/0x0e02665b9c537822b99a2ff07cf854fcefdd7400/); ethereum `0x4d468f45eeb249d3cedefd8db8b30149159f3ae5`; avalanche `0x624de5bedfb47fc29fb300a731ebd973dc9d43a9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (92)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DepositAddressRegistry | unknown | ethereum | n/a | `0x9bbbd0f71365aee2b7165d59d2ff373647f02789` | ❓ Unverified |
| Pool | unknown | ethereum | n/a | `0xc472d3a47719de5f9d808ca91d7b70bd2138bcaa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03827567b51bd38a0340f31ed20e321e4d9a5fda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x038b5e49a74ed0eaddeac0e639e258b2353136b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06dc12e7df8d50e40decdaa1dd7c01203c835002` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0eba83c7b2122e347eeafdc37edf9ed856f0ac46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d742d56b8b5c6b489d9b57f5d6fd461782e84a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29c978a11044ea24d01f45a5dcfcd531bc1b95d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f973089d86a0c807210f1973898274001f1e2a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x312ee7318242f81b9a8406a6b098c65d4f43035e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34deae06f86ced748a743588ebe146399fed4de0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3548ee23e489112a2207af2a068a5ec03b3a52bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d7e4a8f9bf0e84608c99b5ab85adbdaf6500c57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x436e490c9808a2def2ff68b560cdebebe8ef4e60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x450b94db0efb1261e685839c2c4672360c1fffc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x483a8fd1335e87b47875f9247f3130c8a15e060a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4bcac50a81ea5e0853503ef9286dea6ac24b6dfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51496cce586b1b89593c6341474a0ef541acf74b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x518f65bfdb6494903cd0340871da7cab1fd5f7ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5523dfa5d34e58f8fc662c9ac555690b47bc3f02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x560f4c0c25e7e8ae7f07c9b46a82ca63c40703e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6085f4e4dd40276bb1fe95b8a371961b0ea4cbd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6320ee08fbcdfdfedb3bab1ea55fa01023731671` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66be61e109ecff0e829313b605904cddeb88fff8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67228cdec83c012cd4dd62c15f07e7f9f94b9e02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6eb641e59302377da329237b6849e859612b3432` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x746253d0aeefeee00ae9295434db4851b48a1a9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x785b01f10496ec28aacec6fb19aec8a191199a18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8035c1e2ca27c2a9b6d0ed1cfb378e5ff0d2b2da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82c5b93f215d7f82a6dd288a4fdf7949cfc22115` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b0377afe529c7158d1db7114a1bce00098388ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8bbd988fd507143f3d4aeb8d694c3b22f8699a61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8fb0a9351d8d976a030dbbcf34536e8f9bf22679` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96b5da21af1d345c5d6bad90fa4dbcaecb7254c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a22f57f2e230da6a190f3b5f4054bed893d425d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa26791f5a6b233dfbacdb111638c3f26ca730559` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3be07c2734ed1ce269cf026cbe8d09d146014e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabf5beb8b2503811017a8fb4062145ac93748010` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1046d9fdbba300d2caf307adda195fbeaf624b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb19b8f2e7a65c0ed7ab8bc3eab2a6551429ef4bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb424e26df6dabc91eb888b8aef9d539176db103f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe22ff4f24752130154b255e9ba719e5b8b550af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc020909c7df088474e14972b2b5aa1e3874c641f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2d68d2c802c55b39d961f778b73954f8c0bcca3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2df5cf00aa31073113af2d6818a404218250f39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc641de59d9a55b6657e4bca9bb62822c8bb09ed3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6a01485cc4a054208c9532197ac79a58357e01d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbc913ba4a386fa243b6a135acc2913b5d15567e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf0d36b612b6b126925edd90d9d8696f05325d1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5db4859f45823e424f9c0dad1d13d4d1783957c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe946a01c2e82d665a155931da325f123595c5121` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed6171d2af614d4cf41e03ed4954f6ed43a14cde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef2b7b20c4008fc6e7db4395f771d04faaf444ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf26b44be015f169f41357a9d56e87ead54560d0a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4f3c127e79f99027b69d74a31f35e5678a5626a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x038b5e49a74ed0eaddeac0e639e258b2353136b9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x06dc12e7df8d50e40decdaa1dd7c01203c835002` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0e610a503f541ff58a170a647426c89bba057733` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1d742d56b8b5c6b489d9b57f5d6fd461782e84a7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1fe74ca6c66a33b8b619d799af110741fb6d20e3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x29c978a11044ea24d01f45a5dcfcd531bc1b95d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2f973089d86a0c807210f1973898274001f1e2a8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x34deae06f86ced748a743588ebe146399fed4de0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3d3f8fe9cce16e1c2743d5ace99f027df866c6bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3f4d27e9e83d82c971f1fc8c4b864b8a580b5e8b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x436e490c9808a2def2ff68b560cdebebe8ef4e60` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4a2d60cf33ca8f72d7839435859f573d03cd4dae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4bcac50a81ea5e0853503ef9286dea6ac24b6dfd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4c90c8a368f7d1f4a57906139bac23c72f38f4cf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x518f65bfdb6494903cd0340871da7cab1fd5f7ff` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6085f4e4dd40276bb1fe95b8a371961b0ea4cbd0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6320ee08fbcdfdfedb3bab1ea55fa01023731671` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6848a054f3a5de4201c3817521ab9fdb54f584b5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6eb641e59302377da329237b6849e859612b3432` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7f2239511051b875ccf84dab02d5a307adcd51c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8035c1e2ca27c2a9b6d0ed1cfb378e5ff0d2b2da` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x82c5b93f215d7f82a6dd288a4fdf7949cfc22115` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8bbd988fd507143f3d4aeb8d694c3b22f8699a61` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9a22f57f2e230da6a190f3b5f4054bed893d425d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xabf5beb8b2503811017a8fb4062145ac93748010` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb1046d9fdbba300d2caf307adda195fbeaf624b8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb2a69a87fbaa0e2ab4b0fdae15b1a4e79f30d752` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb5dc6671e7cdaaa2386536295bf63a221b67311a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbe22ff4f24752130154b255e9ba719e5b8b550af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc2df5cf00aa31073113af2d6818a404218250f39` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcbc913ba4a386fa243b6a135acc2913b5d15567e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdf0d36b612b6b126925edd90d9d8696f05325d1d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe288827a6e605209c8616a30537367d2e3249247` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xec4f65e0a0268ff38ecec711ad5159b96dabab98` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xecc6ad0608e1e3fc6b314df221cf10ea07ae08d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xed6171d2af614d4cf41e03ed4954f6ed43a14cde` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xef2b7b20c4008fc6e7db4395f771d04faaf444ea` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [cantina.xyz/portfolio/967eeb2b-b6f6-4b17-b819-9bfb450876ca](https://cantina.xyz/portfolio/967eeb2b-b6f6-4b17-b819-9bfb450876ca) | Spearbit | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x194951b1f48b8145d0672b0b606337fab615bec2`](./contracts/avalanche-43114/0x194951b1f48b8145d0672b0b606337fab615bec2/) | DepositAddressRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e`](./contracts/avalanche-43114/0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bf7788eaa948d9ffba7e9bb386e2d3c9810e0fc`](./contracts/ethereum-1/0x6bf7788eaa948d9ffba7e9bb386e2d3c9810e0fc/) | LytPoolOFT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc472d3a47719de5f9d808ca91d7b70bd2138bcaa`](./contracts/avalanche-43114/0xc472d3a47719de5f9d808ca91d7b70bd2138bcaa/) | LytPoolOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x95577109dd671ee73e9c867183de9f9b95a0ce25`](./contracts/avalanche-43114/0x95577109dd671ee73e9c867183de9f9b95a0ce25/) | PoolControllerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x447239a5c9940ccafa566977c91f17f5d797dbf4`](./contracts/ethereum-1/0x447239a5c9940ccafa566977c91f17f5d797dbf4/) | PoolControllerFactoryFlex | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0264f33c7716d93053a28efec730bb5e7412c547`](./contracts/ethereum-1/0x0264f33c7716d93053a28efec730bb5e7412c547/) | PoolControllerFlex | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x67228cdec83c012cd4dd62c15f07e7f9f94b9e02`](./contracts/avalanche-43114/0x67228cdec83c012cd4dd62c15f07e7f9f94b9e02/) | PoolControllerFlex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc85d9b69a3cfd606cf4564fcad85f9f04c41ea40`](./contracts/avalanche-43114/0xc85d9b69a3cfd606cf4564fcad85f9f04c41ea40/) | PoolFlex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78bfc8a7197abfb81d4774e7936a76092be2e169`](./contracts/ethereum-1/0x78bfc8a7197abfb81d4774e7936a76092be2e169/) | PoolLibFlex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x061e680724a10c24ffb87b6f74c0805c64087605`](./contracts/avalanche-43114/0x061e680724a10c24ffb87b6f74c0805c64087605/) | ServiceConfigurationV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x72bd1f7d7121327a597cca3d59b8b363b1e21e97`](./contracts/avalanche-43114/0x72bd1f7d7121327a597cca3d59b8b363b1e21e97/) | VaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x8fb0a9351d8d976a030dbbcf34536e8f9bf22679`](./contracts/avalanche-43114/0x8fb0a9351d8d976a030dbbcf34536e8f9bf22679/) | WithdrawControllerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x616c3d07ec9780d40eaac97d2b71bbfb5c07239d`](./contracts/ethereum-1/0x616c3d07ec9780d40eaac97d2b71bbfb5c07239d/) | WithdrawDepositControllerFactoryFlex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e02665b9c537822b99a2ff07cf854fcefdd7400`](./contracts/ethereum-1/0x0e02665b9c537822b99a2ff07cf854fcefdd7400/) | WithdrawDepositControllerFlex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 92 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3990] cantina.xyz/portfolio/967eeb2b-b6f6-4b17-b819-9bfb450876ca

Fork inheritance lineage and inherited audits are included when available.
