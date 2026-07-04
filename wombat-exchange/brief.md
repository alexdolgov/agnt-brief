# Agentic Audit Brief: Wombat Exchange

## Project Overview

- Project: Wombat Exchange (`wombat-exchange`)
- Website: [https://www.wombat.exchange/](https://www.wombat.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:10.284Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: arbitrum, avalanche, base, bsc, ethereum, optimism, scroll
- Contract surface: 544 unique implementations (665 raw deployments)
- DeFi Llama TVL: $1,497,111.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 32 project-authored contract(s) across 6 chain(s); 21 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 4 common project-authored base contract(s) (dynamicasset, asset, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 665; live-surface contracts included: 665 (147 live, 518 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/23 (30.4%)
- Deployed-live implementations: 27 of 544 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/28
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 516
- Unique implementations: 544
- Raw deployments: 665
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 11 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: 4.3% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 6 | 21.4% | 2024-08 |
| Zokyo | Tier 2 | 3 | 10.7% | 2023-09 |
| SlowMist | Tier 1 | 2 | 7.1% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Asset | unknown | optimism | n/a | 87 deployments: ethereum `0x3f90a5...3d2d9d`; ethereum `0x5dace2...c7bea7`; ethereum `0x696655...49c7d3`; ethereum `0x752945...601c95`; optimism [`0x0321d1...740f86`](./contracts/optimism-10/0x0321d1d769cc1e81ba21a157992b635363740f86/); optimism `0x124911...ed89d3`; optimism `0x20d7ee...7302f1`; optimism `0x2943f5...72936e`; optimism `0x49db5f...523330`; optimism `0x8f5e6f...3b62de`; optimism `0x96b1b2...69f197`; optimism `0xe314d3...7f9b2c`; optimism `0xe933e2...0f762e`; optimism `0xee9b42...9750cd`; bsc `0x082059...8c9078`; bsc `0x17aded...163500`; bsc `0x184eb7...d96f75`; bsc `0x1f502f...f6723e`; bsc `0x1fa71d...e0d38b`; bsc `0x24a70c...2ba073`; bsc `0x34e109...390b57`; bsc `0x3a29df...de962d`; bsc `0x3ac762...86b490`; bsc `0x3c42e4...78d688`; bsc `0x3c8e74...a05367`; bsc `0x47ab51...c371eb`; bsc `0x4968e2...05d2e6`; bsc `0x4f95fe...b988f7`; bsc `0x591ccb...70ef87`; bsc `0x61e338...345752`; bsc `0x681124...3cd685`; bsc `0x6b6006...a1cc95`; bsc `0x77f645...927391`; bsc `0x791b24...5d7946`; bsc `0x7ff1ae...905e8f`; bsc `0x87073b...c120e4`; bsc `0x8df8b5...67b3ce`; bsc `0x93012a...98abbc`; bsc `0x9d0a46...15dd84`; bsc `0x9f9cea...8fda82`; bsc `0xa393d6...2f1a6e`; bsc `0xa45c0a...ba3800`; bsc `0xa649be...661c1a`; bsc `0xa6ef6c...1603e5`; bsc `0xb43ee2...00b8e2`; bsc `0xb5c936...48bcf8`; bsc `0xc74a9d...1133cb`; bsc `0xcec37c...62279b`; bsc `0xcf4349...efb015`; bsc `0xd55d01...87a521`; bsc `0xeaba29...e68ac2`; bsc `0xf31994...25745a`; bsc `0xf9bdc8...653cac`; base `0x375883...9ac624`; base `0xd05cf2...11e47b`; base `0xe2a60c...9dbc67`; arbitrum `0x06228b...2e48b5`; arbitrum `0x0fa7b7...e73055`; arbitrum `0x2977b0...66cfd9`; arbitrum `0x35876f...dc6563`; arbitrum `0x4552e8...e65c1f`; arbitrum `0x502a88...abd3a2`; arbitrum `0x59d8dc...350769`; arbitrum `0x5ad0b6...b01266`; arbitrum `0x6add07...bf42c8`; arbitrum `0x6b7c9d...18c7b2`; arbitrum `0x75eaa8...6235fe`; arbitrum `0x7a8ce2...d1a59a`; arbitrum `0x85cebd...6af003`; arbitrum `0x878004...5ed525`; arbitrum `0x9121af...3c6be2`; arbitrum `0x9a2405...3e975d`; arbitrum `0xb1ad5c...06c3d9`; arbitrum `0xb4beb0...c336fb`; arbitrum `0xb75ed9...aa0fd9`; arbitrum `0xbcd5e8...1ebd6e`; arbitrum `0xbcf4c3...47a661`; arbitrum `0xc74a9d...1133cb`; arbitrum `0xdce5e1...cf3816`; arbitrum `0xdddc78...900145`; arbitrum `0xe5232c...fb2e43`; arbitrum `0xef9187...df2486`; arbitrum `0xf4b72e...2e4505`; avalanche `0x375883...9ac624`; avalanche `0xd05cf2...11e47b`; scroll `0xe2a60c...9dbc67`; scroll `0xe43c16...553c21` | ✅ Audited |
| GovernedPriceFeed | operational_periphery | arbitrum | n/a | 3 deployments: optimism `0xb98ab9...bc04af`; bsc `0xdd29f2...73fa01`; arbitrum [`0x1d15c4...918797`](./contracts/arbitrum-42161/0x1d15c46e75cc006490c356d29ff357a647918797/) | ✅ Audited |
| PriceFeedAsset | operational_periphery | arbitrum | n/a | 2 deployments: bsc `0xa9a081...cd23cc`; arbitrum [`0x2a2020...346aaa`](./contracts/arbitrum-42161/0x2a20202a6f740200ba188f6d72fa72a08a346aaa/) | ✅ Audited |
| SkimmableAsset | unknown | bsc | n/a | 4 deployments: bsc [`0x88beb1...b87117`](./contracts/bsc-56/0x88beb144352bd3109c79076202fac2bceab87117/); bsc `0xbd459e...c273b1`; arbitrum `0xbd7568...fa35f0`; arbitrum `0xf9c235...82a274` | ✅ Audited |
| VeWom | unknown | bsc | n/a | [`0x3da628...b5b0cc`](./contracts/bsc-56/0x3da62816dd31c56d9cdf22c6771ddb892cb5b0cc/) | ✅ Audited |
| WombatERC20 | token | bsc | n/a | [`0xad6742...b94fb1`](./contracts/bsc-56/0xad6742a35fb341a9cc6ad674738dd8da98b94fb1/) | ✅ Audited |
| WombatRouter | adapter | scroll | n/a | 7 deployments: ethereum `0x6bb82a...a0f919`; optimism `0x35d531...8bdf79`; bsc `0x19609b...a4add7`; base `0x4a88c4...df76cd`; arbitrum `0xc4b2f9...580668`; avalanche `0x4a88c4...df76cd`; scroll [`0x010931...f78959`](./contracts/scroll-534352/0x010931d4d82ff3f5ae8bd94e0752570711f78959/) | ✅ Audited |
| WormholeAdaptor | unknown | optimism | n/a | [`0x3ccc0d...ff463e`](./contracts/optimism-10/0x3ccc0dc754e380cda16ef94292f278bbc4ff463e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ABnbcAsset | unknown | bsc | n/a | 2 deployments: bsc [`0x9d2dea...96406b`](./contracts/bsc-56/0x9d2dead9547eb65aa78e239647a0c783f296406b/); bsc `0xb6d83f...f8855f` | ⚠️ Unaudited |
| AnkrStakingAsset | unknown | bsc | n/a | 2 deployments: bsc [`0x128fa2...08228b`](./contracts/bsc-56/0x128fa2c0708bd0e357cd97eadaafa3bc9608228b/); arbitrum `0x229028...f3f2c4` | ⚠️ Unaudited |
| BnbxAsset | unknown | bsc | n/a | 3 deployments: bsc [`0x10f7c6...1fc24f`](./contracts/bsc-56/0x10f7c62f47f19e3ce08fef38f74e3c0bb31fc24f/); bsc `0x16b372...a509a7`; bsc `0x5d64ed...060f4a` | ⚠️ Unaudited |
| DynamicAsset | unknown | bsc | n/a | 18 deployments: bsc [`0x0321d1...740f86`](./contracts/bsc-56/0x0321d1d769cc1e81ba21a157992b635363740f86/); bsc `0x0e99fb...cc5760`; bsc `0x4447de...8a5ac6`; bsc `0x4d41e9...b8e67e`; bsc `0x5a65cb...d2de8b`; bsc `0x5d38a3...91df38`; bsc `0x6c7b40...d378ce`; bsc `0x74f019...092c5b`; bsc `0x90f6f0...2b5201`; bsc `0xd67ede...7e5bb9`; bsc `0xdfde04...b2a9b3`; bsc `0xe0e763...ba83ec`; arbitrum `0x35c462...1bc6ac`; arbitrum `0x468830...350978`; arbitrum `0x696655...49c7d3`; arbitrum `0x909715...f19108`; arbitrum `0xe62880...be798d`; avalanche `0x29eeb2...18ec91` | ⚠️ Unaudited |
| ERC4626Asset | unknown | ethereum | n/a | [`0x25c9dd...04c914`](./contracts/ethereum-1/0x25c9dd8a3774ef7c918cd28ff59cf9e29504c914/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0x5781b4...b353b1`](./contracts/ethereum-1/0x5781b4fe4fadb61ea2483eedd9498388f9b353b1/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | n/a | [`0xc37a89...aadf48`](./contracts/bsc-56/0xc37a89cdb064ac2921fcc8b3538ac0d6a3aadf48/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | n/a | [`0xc37a89...aadf48`](./contracts/arbitrum-42161/0xc37a89cdb064ac2921fcc8b3538ac0d6a3aadf48/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | scroll | n/a | 2 deployments: scroll [`0x15dcc2...b1a17f`](./contracts/scroll-534352/0x15dcc2da1a73194c9c5bb83ecda86251f0b1a17f/); scroll `0x80f088...7337ce` | ⚠️ Unaudited |
| rBNBAsset | unknown | bsc | n/a | [`0x56177d...16410c`](./contracts/bsc-56/0x56177d9f2cb78422610ee8263fe9b7231216410c/) | ⚠️ Unaudited |
| sAVAXAsset | unknown | avalanche | n/a | [`0xc096ff...a5a9fa`](./contracts/avalanche-43114/0xc096ff2606152ed2a06dd12f15a3c0466aa5a9fa/) | ⚠️ Unaudited |
| SnBNBAsset | unknown | bsc | n/a | [`0xaa0811...148ee8`](./contracts/bsc-56/0xaa0811aff60fbe2d7d7d0a18f26e584b8c148ee8/) | ⚠️ Unaudited |
| StkbnbAsset | unknown | bsc | n/a | 2 deployments: bsc [`0x0e202a...d0679f`](./contracts/bsc-56/0x0e202a0bcad2712d1fdeeb94ec98c58beed0679f/); bsc `0xc496f4...e0d17f` | ⚠️ Unaudited |
| TokenBridge | operational_periphery | avalanche | n/a | [`0xa15e45...3b3382`](./contracts/avalanche-43114/0xa15e4544d141aa98c4581a1ea10eb9048c3b3382/) | ⚠️ Unaudited |
| TokenImplementation | token | ethereum | n/a | [`0xc0b314...540cfb`](./contracts/ethereum-1/0xc0b314a8c08637685fc3dafc477b92028c540cfb/) | ⚠️ Unaudited |
| TokenImplementation | token | optimism | n/a | [`0xd2612b...13a668`](./contracts/optimism-10/0xd2612b256f6f76fea8c6fbca0bf3166d0d13a668/) | ⚠️ Unaudited |
| TokenImplementation | token | base | n/a | [`0xd9541b...235d64`](./contracts/base-8453/0xd9541b08b375d58ae104ec247d7443d2d7235d64/) | ⚠️ Unaudited |
| TokenImplementation | token | arbitrum | n/a | [`0x7b5eb3...9ddf96`](./contracts/arbitrum-42161/0x7b5eb3940021ec0e8e463d5dbb4b7b09a89ddf96/) | ⚠️ Unaudited |
| WBETHAsset | unknown | bsc | n/a | [`0x975693...51d57f`](./contracts/bsc-56/0x975693afe5bb69088a716e3a7f9bff77ec51d57f/) | ⚠️ Unaudited |
| WstETHAsset | unknown | arbitrum | n/a | [`0xeb7e2f...5f7465`](./contracts/arbitrum-42161/0xeb7e2f8efac7ab8079837417b65cd927f05f7465/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (516)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0020a8...680db6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04d4e1...8d563d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x124911...ed89d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f0ae4...4b09b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3161f4...16e854` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32a936...09442c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4705b4...b46134` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x49db5f...523330` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a8686...5296e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51abd2...ef52bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51e073...769606` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5fabce...376454` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62a83c...b6b6f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x647cc8...d5ac81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x724515...548068` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75eaa8...6235fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x820eac...5c1c45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8843b0...345efb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8df112...1adbae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92e8b5...870dcb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93d911...ce6dea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94019d...760524` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x986237...e23bfb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c02ea...df25cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0e74f...61025a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa12ba2...695502` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2cbe3...ad2f40` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa45c0a...ba3800` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa67423...97897a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaceb58...3419ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb239b9...1538c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc096ff...a5a9fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc693f3...113c82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6bc78...ba6cd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9bfc3...7e5d1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd69ca...19e8fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdaa336...0a7efa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddc2c2...ed13d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7e02c...6f9cb0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe85f62...5e0c73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9e88b...1df733` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef0b4d...6aaf94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf84c59...5cc9de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8e32c...160734` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x06228b...2e48b5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0700ad...4eb4a4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1414cd...b4f8f8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x160ee9...511a97` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1790f9...19919b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1a0231...0c6fbd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x25c9dd...04c914` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2bb4ea...90e29c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x34e2f9...37f873` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x375883...9ac624` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4705b4...b46134` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x489818...ad3d01` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4d1cc8...087053` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4f0ef2...c50122` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x50a39b...c5bd10` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x51abd2...ef52bd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x51e073...769606` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6373d1...558741` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6bb82a...a0f919` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6e2db1...f2d83d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6f8ad3...bb266b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7b1f9c...839623` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7b74ab...d15ea5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x820eac...5c1c45` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8240aa...f6ac24` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x82e62f...541518` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x85cebd...6af003` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x983ce4...1b1372` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9a6578...f2735d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9ed3de...656d5c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa1acc6...fa2acf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb86ba6...8fcafa` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc6bc78...ba6cd1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc9bfc3...7e5d1a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcaa5a9...848555` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcd69ca...19e8fe` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd0599d...c83786` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd05cf2...11e47b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd119d8...faca20` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xdaa336...0a7efa` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe5e368...62e44c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe85f62...5e0c73` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe91cfd...fca279` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xef0b4d...6aaf94` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xfa9576...f69bfb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0020a8...680db6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0029b7...9d4183` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x015542...bece5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x024d75...b1f29b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x04299f...15ffa4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x048dc3...118047` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x04d4e1...8d563d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x052045...fc74b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x053cd9...19435f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0553f2...c2bd73` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x059208...ccc348` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x05f727...ead09a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06228b...2e48b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x083640...2f9f55` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x08401f...8880ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x09da88...6705f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0aadde...d4744f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0bd067...ec28cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c735f...6c41de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1028a4...1970ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x108c99...9b3c02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x129021...f26abb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x141298...561e98` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x18022e...229c51` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x191601...ad205b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1a4557...56dce7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1b507b...276d35` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1cbb0f...ef4497` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e8cbd...8f7fed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e9c11...23ea23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1ee156...754bef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f7701...efbd3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1ff949...179503` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x20d7b9...a6ecd1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2120c8...9436b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24591d...5b5595` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x251577...7a5c9b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26d67a...1a1933` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x27306b...7ece80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x277e77...33c903` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x28edda...5f95af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x297622...534fd9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x299642...143b6b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2b1878...44984f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2c0d2b...207d86` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2c3c34...bebd20` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2c5464...fd7955` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d334b...4d0194` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2dc5c0...a27501` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2e14e0...d7e3bc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2ea772...ac5da4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2fff85...90ecc0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x312bc7...055fb0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x322412...f7a986` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x32816b...376dbb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x342126...1f175b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x35560d...d60482` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36d775...f2e47f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37fa82...fc6698` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3c64d9...61b453` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d64a3...b6ebf8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f9ec2...7e61c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3fef8c...d75d00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x401384...71b804` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x408411...9892a1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x414d1a...b53976` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x437ddb...51d0de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x440897...c5f52a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44b597...7068e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x45a51a...687d29` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47a881...887d6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x489833...c95830` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x48f6a8...9f2a14` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x49ecc3...2f1056` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4c2542...8bb1b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d1ba7...0e2113` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d210b...82945c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d3f5c...900e17` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4dfa92...7b7e12` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4e811c...dca968` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f5fa1...4fc467` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x51655b...fa0101` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x51abd2...ef52bd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x52eb70...b2e3d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54ed8b...b37610` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x55e4ac...57fe7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ab8f0...c6a62d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ad0b6...b01266` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5cc2cb...24031a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d0f17...8408e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d2390...524572` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5e5dcb...d3092a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f027a...26653c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x60aca4...52e1bd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x624be6...eb1e26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x644c27...44af5d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x64907b...056870` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6521a5...86cd7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6569dd...8940f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x65b5a2...41916d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x683cd0...872dcf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6aa55c...10e046` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6adb50...a7ebf5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b98d2...3d1b8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c528b...71ee9e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6cff94...88fe8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6dd711...782b0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6f1c68...ad5bfa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x71e41c...03e623` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x724515...548068` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x75eaa8...6235fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x790328...bfd46f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79c8e1...ce5993` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7a8faa...c6e38e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7cb260...17e154` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7db1b5...d3a1c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7dc7e9...489649` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7e10ff...a2feff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7e9fab...adab55` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f95d3...2202c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x804585...b658f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x810287...c67e4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x83bc71...7d20f8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x861c50...fe2320` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x866f96...7e1a18` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8779d3...a301b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ad47d...a49da2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8b892b...cde060` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8dc7b0...e87b47` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8df112...1adbae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e4a50...fcb182` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e926c...167826` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x90aea5...f7898d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x915c87...ad24bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x92e8b5...870dcb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x934d5c...3b7211` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x93cbcf...eb3827` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x946207...e84a98` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x949856...6c201c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x966c37...e71c01` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x96ed73...c54e82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x98e6e3...d3b246` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x99f76c...70c486` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9a39f4...5f3d28` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9a59f5...c73ba6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9a5d0d...a510e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d4816...f88ba2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9da4ed...ea5725` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e22bd...0c6e03` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ea89d...35cd36` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9f3f1e...140655` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa12ba2...695502` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa2ccca...642d96` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3f645...c14f6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa61dcc...9b8c27` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa75f18...7e013b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa8202e...4db947` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa874c8...c7c7f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab7700...3ab145` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaceb58...3419ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad87cb...d930d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb0219a...01edb0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb06b2e...1828b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb0d508...801043` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb268c3...1656e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2a48d...a655bc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb7526e...140a84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb7df4a...2db80f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb8b1b7...f9f684` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb94667...76ad6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd28fb...315f0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd4420...ec77de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd7568...fa35f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbda432...c558a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbed9b7...297b80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbefb02...6f6091` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc007e8...73676f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc26b7c...945a2c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc2c94d...f21da0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4992f...74afaf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4b2f9...580668` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5fb02...90fe13` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc609e2...99fa14` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7a628...f38e43` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7a6ba...431974` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7fbef...cfcd6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc897a2...914a9f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc9bfc3...7e5d1a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc24ac...257838` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd3227...3cda5c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd69ca...19e8fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcf2e56...2f0536` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd05cf2...11e47b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd29b3e...10ca01` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd2d1e5...27207b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd3ef6c...f3ee08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd570f7...3d53dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd61c53...71b591` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd66fe4...2e717d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd7d1b4...b1d2ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd80356...382915` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd8e4fd...f22c10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xda231d...81c93e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdaa336...0a7efa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde509f...626dae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdea158...900ada` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdfba6a...b20f1d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe23753...a0c1cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe2a60c...9dbc67` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe2c07d...31f9c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe40048...bc199c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4fd5d...6c76bd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe61f78...2fd5d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe8a3d6...4388ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea6cdd...fa7892` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb22c7...7d3965` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xebb710...66b874` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xede96f...a48ab3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xee48cc...3e715f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeeb5a7...67ce2e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xefdec2...d5fc5f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf1e604...bf3fef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf2fd53...b36b68` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf3acb2...d80b14` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf53811...4dabdb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7ab0d...6559d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf80722...8de4d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf81216...2bc77d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf84c59...5cc9de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf9cdc1...8cfcf6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa5b5b...495035` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfcd11c...038d46` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1414cd...b4f8f8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x20d7b9...a6ecd1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2722fe...3de182` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x34e2f9...37f873` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x489833...c95830` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x640e7e...f78f47` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6521a5...86cd7b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8240aa...f6ac24` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9a59f5...c73ba6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9a6578...f2735d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa1acc6...fa2acf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc6bc78...ba6cd1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc9bfc3...7e5d1a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd0599d...c83786` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd673f3...c70fb8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe07829...2036d8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe5e368...62e44c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe85f62...5e0c73` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf8e32c...160734` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x08c6e9...d3fd4d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x096f99...4d7b24` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0b041d...bf6f27` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0e2d70...a78278` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0f959d...6d4d2d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x10c13d...bd58bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1242fb...4837d0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x12d6a5...73bf7e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x12fa5a...0af978` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x153e4b...b17252` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x191601...ad205b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x19f477...13d3b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1bd8ce...a18eeb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1c18aa...ba7dfe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1edfa9...15bf03` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x201872...e22c8a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x20d7ee...7302f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2201ea...e0c138` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x259ccd...1a33ee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x25e08a...a6f3e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2722fe...3de182` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2740f3...7fbe09` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x278c01...ad9d07` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2980fc...87cee1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x29eeb2...18ec91` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2badcc...2020f2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x30e27c...1f554c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3257ea...27a3b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x332430...7ae41e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x34e2f9...37f873` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x381692...58b54c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x38d225...36d5ad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3cc8c8...044d4b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3ccc0d...ff463e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3dbf3e...7110fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3f90a5...3d2d9d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3fa1af...e2099b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x423fa1...0628a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x44a0e2...a3a642` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x479be5...8706a4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x488b34...2d3efc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x49ea55...3eac51` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4a8686...5296e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4a88c4...df76cd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4ce537...7a08ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d1cc8...087053` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4e811c...dca968` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4f7f9b...b52ac2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x51880c...025d0a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x51e073...769606` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5a65cb...d2de8b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5c85ed...9b9a41` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5d5b2b...b9ba76` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5fb522...562f54` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6001f4...631bb9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x625b37...01f08b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x62a83c...b6b6f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6521a5...86cd7b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6569dd...8940f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6a4b59...61f5e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6b6006...a1cc95` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6f70c8...6ae695` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x71cea3...e34cbc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x72b46b...ecb2ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x75196f...3f084b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7585ba...59c11b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x765fda...075543` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7b6041...5b7c64` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7c9b17...bc11ad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7cb260...17e154` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7e2957...7458bc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x810287...c67e4a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x82e62f...541518` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8b892b...cde060` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8cd967...6980de` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8e16b6...7f8561` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8e537f...4f3f74` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8f5e6f...3b62de` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x90ecdd...a338b6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x917caf...214c1a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x956454...370401` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x96412c...a3791a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x97e4f5...91d81f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9a6578...f2735d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9ad594...22b689` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9cbee5...105dee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9da4ed...ea5725` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f3f1e...140655` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa1fdb8...692979` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa2cbe3...ad2f40` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa45c0a...ba3800` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa6ef6c...1603e5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa9a081...cd23cc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaded24...59efdc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xae5e81...5ecbdc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb02035...8d481d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb29ff5...0fb826` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb5952a...681260` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb789d4...6273db` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb8fe07...a1abdd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb9bdfe...5db77b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb9e272...f5612b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbed050...c7927d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc06a59...e4f8b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc096ff...a5a9fa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc6bc78...ba6cd1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc7a6ba...431974` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xce2bb4...38549a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcf20fd...9e4849` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd2592e...e95835` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd58d5e...b163ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd64816...8305f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd6d42c...d5d82d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdaa191...170211` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdab44b...0335bc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdc82b7...419d5f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdd29e6...e0cbab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xde509f...626dae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe14302...9358d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe1c846...f1f454` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe3c747...5b8e17` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7159f...c56f48` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe78876...1b1145` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe933e2...0f762e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeb87bf...8bc480` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xee88c3...b0dea9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xee9b42...9750cd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf01d86...5ff081` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf1db5b...7de18d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf2bd16...7099e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf37f78...d88836` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf76009...9b35d0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf9cdc1...8cfcf6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xffc6e8...1932f1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x15dcc2...b1a17f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x164564...722357` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x193c8a...b58e44` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2086dd...c17aa7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x23db5d...8fae77` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2722fe...3de182` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2ddfdd...39f37e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x337d06...849453` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x34e2f9...37f873` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x389efa...d8c6bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x39a2f5...850b1e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x41571e...31bc7b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x489833...c95830` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5fabce...376454` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x616264...981d06` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x640e7e...f78f47` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x64cb6d...b1aa85` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6521a5...86cd7b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x74163b...b739e9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8240aa...f6ac24` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x84a14a...183d7a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x84d090...66928e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x89b88a...ccaf95` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x911a98...c4223b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x960c66...ace306` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9a6578...f2735d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9f8519...471736` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb2d951...22094f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb91e5a...932c89` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb9e267...6aa520` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbba437...7aeb77` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc12c0c...f362d0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc6bc78...ba6cd1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc9bfc3...7e5d1a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd0599d...c83786` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd673f3...c70fb8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd9e494...387911` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd9ffee...48e576` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe3abc2...069d87` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe5e368...62e44c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe85f62...5e0c73` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xefec1c...7169c7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Wombat-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Wombat-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | 2 | n/a |
| [hacken.io/audits/wombat-exchange/sca-wombat-exchange-erc20-staking-apr2022](https://hacken.io/audits/wombat-exchange/sca-wombat-exchange-erc20-staking-apr2022) | Hacken | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-WombatV2-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WombatV2-v1.0.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | contract_name | 1 | n/a |
| [PeckShield-Audit-Report-WombatV3-v1.1.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WombatV3-v1.1.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [SlowMist Audit Report - WombatExchange_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20WombatExchange_en-us.pdf) | SlowMist | Audit | 2023-05 | stale | Direct | contract_name | 2 | n/a |
| [2023-Sep-Wombat_audit_report.pdf](https://github.com/wombat-exchange/v1-core/blob/master/audits/zokyo/2023-Sep-Wombat_audit_report.pdf) | Zokyo | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-WombatV3-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WombatV3-v1.0.pdf) | PeckShield | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-WombatV4-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WombatV4-v1.0.pdf) | PeckShield | Audit | 2023-04 | stale | Direct | contract_name | 3 | n/a |
| [PeckShield-Audit-Report-Wombat-VolatilePool-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Wombat-VolatilePool-v1.0.pdf) | PeckShield | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [2023-Jun-Wombat_Exchange_Zokyo_audit_report_a68b1ad465.pdf](https://github.com/wombat-exchange/v1-core/blob/master/audits/zokyo/2023-Jun-Wombat_Exchange_Zokyo_audit_report_a68b1ad465.pdf) | Zokyo | Audit | 2023-06 | stale | Direct | contract_name | 1 | n/a |
| [zokyo_wombat_audit_report.pdf](https://github.com/wombat-exchange/v1-core/blob/master/audits/zokyo/zokyo_wombat_audit_report.pdf) | Zokyo | Audit | 2022-04 | stale | Direct | contract_name | 2 | n/a |
| [hacken.io/audits](https://hacken.io/audits) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DIP001_audit_report_2020_03_en_1_0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/DIP001_audit_report_2020_03_en_1_0.pdf) | PeckShield | Audit | 2020-03 | stale | Direct | n/a | 0 | n/a |
| [BitFi - BFBTC - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/BitFi%20-%20BFBTC%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x9d2dea...96406b`](./contracts/bsc-56/0x9d2dead9547eb65aa78e239647a0c783f296406b/) | ABnbcAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x128fa2...08228b`](./contracts/bsc-56/0x128fa2c0708bd0e357cd97eadaafa3bc9608228b/) | AnkrStakingAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x10f7c6...1fc24f`](./contracts/bsc-56/0x10f7c62f47f19e3ce08fef38f74e3c0bb31fc24f/) | BnbxAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0321d1...740f86`](./contracts/bsc-56/0x0321d1d769cc1e81ba21a157992b635363740f86/) | DynamicAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25c9dd...04c914`](./contracts/ethereum-1/0x25c9dd8a3774ef7c918cd28ff59cf9e29504c914/) | ERC4626Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x15dcc2...b1a17f`](./contracts/scroll-534352/0x15dcc2da1a73194c9c5bb83ecda86251f0b1a17f/) | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x56177d...16410c`](./contracts/bsc-56/0x56177d9f2cb78422610ee8263fe9b7231216410c/) | rBNBAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc096ff...a5a9fa`](./contracts/avalanche-43114/0xc096ff2606152ed2a06dd12f15a3c0466aa5a9fa/) | sAVAXAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xaa0811...148ee8`](./contracts/bsc-56/0xaa0811aff60fbe2d7d7d0a18f26e584b8c148ee8/) | SnBNBAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0e202a...d0679f`](./contracts/bsc-56/0x0e202a0bcad2712d1fdeeb94ec98c58beed0679f/) | StkbnbAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa15e45...3b3382`](./contracts/avalanche-43114/0xa15e4544d141aa98c4581a1ea10eb9048c3b3382/) | TokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0b314...540cfb`](./contracts/ethereum-1/0xc0b314a8c08637685fc3dafc477b92028c540cfb/) | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xd2612b...13a668`](./contracts/optimism-10/0xd2612b256f6f76fea8c6fbca0bf3166d0d13a668/) | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd9541b...235d64`](./contracts/base-8453/0xd9541b08b375d58ae104ec247d7443d2d7235d64/) | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7b5eb3...9ddf96`](./contracts/arbitrum-42161/0x7b5eb3940021ec0e8e463d5dbb4b7b09a89ddf96/) | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x975693...51d57f`](./contracts/bsc-56/0x975693afe5bb69088a716e3a7f9bff77ec51d57f/) | WBETHAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xeb7e2f...5f7465`](./contracts/arbitrum-42161/0xeb7e2f8efac7ab8079837417b65cd927f05f7465/) | WstETHAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 516 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=11

Zero-match audit list:

- [3005] hacken.io/audits/wombat-exchange/sca-wombat-exchange-erc20-staking-apr2022
- [3007] PeckShield-Audit-Report-WombatV3-v1.1.pdf
- [3010] 2023-Sep-Wombat_audit_report.pdf
- [3011] PeckShield-Audit-Report-WombatV3-v1.0.pdf
- [3013] PeckShield-Audit-Report-Wombat-VolatilePool-v1.0.pdf
- [15386] hacken.io/audits
- [15394] DIP001_audit_report_2020_03_en_1_0.pdf
- [15397] BitFi - BFBTC - SlowMist Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
