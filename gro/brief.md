# Agentic Audit Brief: Gro

⚠️ Lifecycle status: DECLINING - TVL changed 0.1% over 90 days

## Project Overview

- Project: Gro (`gro`)
- Lifecycle: declining (Tier 0, 97.4% below peak)
- Generated: 2026-05-23T20:20:58.828Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 124 unique implementations (161 raw deployments)
- DeFi Llama TVL: $4,661,036.80
- On-chain TVL (included contracts): $2,925,656.52
- TVL by chain: Ethereum $2,925,656.52

## Project Description

Gro is a yield optimization protocol that offers users exposure to stablecoin and DeFi yields through tokenized vault products. It provides both rebasing and non-rebasing tokens representing shares in yield-generating strategies.

### Architecture

The Gro family integrates yield-bearing tokens (RebasingGToken, NonRebasingGToken) with staking contracts (LPTokenStaker) for the governance token (GROToken), while liquidity pools (UniswapV2Pair, WeightedPool) facilitate trading and deeper liquidity for the ecosystem.

## Audit Coverage Summary

- Verified implementations audited: 0/36 (0.0%)
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 88
- Unique implementations: 124
- Raw deployments: 161
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,925,656.52
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $2,925,656.52 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| RebasingGToken | token | ethereum | [`0xf0a93d...3cb86b`](./contracts/ethereum-1/0xf0a93d4994b3d98fb5e3a2f90dbc2d69073cb86b/) | ⚠️ Unaudited |
| GROToken | token | ethereum | 3 deployments: ethereum [`0x3ec879...0b74d7`](./contracts/ethereum-1/0x3ec8798b81485a254928b70cda1cf0a2bb0b74d7/); ethereum `0x44e9ed...dbfb29`; ethereum `0xeed443...e18c04` | ⚠️ Unaudited |
| NonRebasingGToken | token | ethereum | [`0x3adb04...c52a0c`](./contracts/ethereum-1/0x3adb04e127b9c0a5d36094125669d4603ac52a0c/) | ⚠️ Unaudited |
| AirDrop | operational_periphery | ethereum | 2 deployments: ethereum [`0x6b1bff...206dda`](./contracts/ethereum-1/0x6b1bff72f00cc147b5dc7a5b156fe7a6fd206dda/); ethereum `0xf3d39a...e2c561` | ⚠️ Unaudited |
| Allocation | unknown | ethereum | [`0x167bcc...22a99a`](./contracts/ethereum-1/0x167bcca89b1527e015b8aad7bd6130707922a99a/) | ⚠️ Unaudited |
| Buoy3Pool | core_logic | ethereum | 3 deployments: ethereum [`0x7d17c9...a59421`](./contracts/ethereum-1/0x7d17c9b9b154b1b31add5115f5f519ec50a59421/); ethereum `0x952df3...75387c`; ethereum `0xbf8c81...23f5fe` | ⚠️ Unaudited |
| Controller | governance | ethereum | [`0xcc5c60...efb8f4`](./contracts/ethereum-1/0xcc5c60a319d33810b9eab9764717eef84defb8f4/) | ⚠️ Unaudited |
| DepositHandler | unknown | ethereum | [`0xb7207e...a44f40`](./contracts/ethereum-1/0xb7207ea9446dca1dec1c1fc93c6fcdf8b4a44f40/) | ⚠️ Unaudited |
| EmergencyHandler | unknown | ethereum | [`0xc535cf...76ee76`](./contracts/ethereum-1/0xc535cfe245d8f969e647b3dd8be1255ec076ee76/) | ⚠️ Unaudited |
| Exposure | unknown | ethereum | [`0x2344db...953444`](./contracts/ethereum-1/0x2344dba0a1de9acf22b7c9936c6693f20b953444/) | ⚠️ Unaudited |
| GenericCream | adapter | ethereum | 3 deployments: ethereum [`0x9645ce...80bb0f`](./contracts/ethereum-1/0x9645cee8d720a70e2d79b7d7c7070dc7a580bb0f/); ethereum `0xa699d9...bf18e8`; ethereum `0xb74bac...d00921` | ⚠️ Unaudited |
| GenericLevComp | unknown | ethereum | 2 deployments: ethereum [`0x63d337...28a952`](./contracts/ethereum-1/0x63d3376aabddd618daafbb29d8f27ce47a28a952/); ethereum `0x6a23a7...f1426e` | ⚠️ Unaudited |
| GROBurner | unknown | ethereum | 2 deployments: ethereum [`0x1f09e3...6b8880`](./contracts/ethereum-1/0x1f09e308bb18795f62ea7b114041e12b426b8880/); ethereum `0x783c75...a8babe` | ⚠️ Unaudited |
| GRODaoVesting | operational_periphery | ethereum | [`0x63d962...a247de`](./contracts/ethereum-1/0x63d96236fd0e1c395d3e464a38f46b1adca247de/) | ⚠️ Unaudited |
| GRODistributer | unknown | ethereum | 6 deployments: ethereum [`0x3c5ced...e735d4`](./contracts/ethereum-1/0x3c5ced8498ca1f8489ee3db32a86087a53e735d4/); ethereum `0x4c6484...e3bb4c`; ethereum `0x54acb7...0877c3`; ethereum `0x88e82d...990b2d`; ethereum `0xb2a54e...fb544d`; ethereum `0xe16471...4eb947` | ⚠️ Unaudited |
| GROEmpVesting | operational_periphery | ethereum | 2 deployments: ethereum [`0xca71e6...8f33c7`](./contracts/ethereum-1/0xca71e66866eb9ae67bd5f3ab50b06abd188f33c7/); ethereum `0xd6c455...6a91ce` | ⚠️ Unaudited |
| GROHodler | unknown | ethereum | 2 deployments: ethereum [`0x8b4a30...e61397`](./contracts/ethereum-1/0x8b4a30c8884ca4aff1e4c82cce79802a63e61397/); ethereum `0xef10ea...a8f927` | ⚠️ Unaudited |
| GROInvVesting | operational_periphery | ethereum | 2 deployments: ethereum [`0x0537d3...ab80f1`](./contracts/ethereum-1/0x0537d3da1ed1dd7350ff1f3b92b727dfdbab80f1/); ethereum `0x90d589...e2ad7b` | ⚠️ Unaudited |
| GROTeamVesting | operational_periphery | ethereum | 3 deployments: ethereum [`0x452c21...6cb397`](./contracts/ethereum-1/0x452c21ed6fe22cd2dbff22a89d507cc6b16cb397/); ethereum `0x82bbee...f0b85c`; ethereum `0xf43c6b...e28644` | ⚠️ Unaudited |
| GROVesting | operational_periphery | ethereum | 2 deployments: ethereum [`0x748218...178360`](./contracts/ethereum-1/0x748218256afe0a19a88ebeb2e0c5ce86d2178360/); ethereum `0xa28693...a3730b` | ⚠️ Unaudited |
| Insurance | unknown | ethereum | [`0x8a0703...cd050e`](./contracts/ethereum-1/0x8a070363f6db6a74caaf486dde6da013e5cd050e/) | ⚠️ Unaudited |
| LifeGuard3Pool | core_logic | ethereum | 2 deployments: ethereum [`0x5d3ab5...fb8126`](./contracts/ethereum-1/0x5d3ab53b6b66f86bbfabc2a58c0f26ea7dfb8126/); ethereum `0x8c2f20...f5f889` | ⚠️ Unaudited |
| LPTokenStaker | core_logic | ethereum | 3 deployments: ethereum [`0x001c24...c7aad7`](./contracts/ethereum-1/0x001c249c09090d79dc350a286247479f08c7aad7/); ethereum `0x2e32ba...ed376c`; ethereum `0xf63c9d...9b8eb5` | ⚠️ Unaudited |
| MultiSend | unknown | ethereum | [`0x7d39ee...d45380`](./contracts/ethereum-1/0x7d39eeab3bf514b4896b520d3035ce034ed45380/) | ⚠️ Unaudited |
| PnL | unknown | ethereum | [`0xf67a42...48096d`](./contracts/ethereum-1/0xf67a426e110c74c566174a37c9269780fb48096d/) | ⚠️ Unaudited |
| Registry | registry | ethereum | [`0x3f9062...2bb941`](./contracts/ethereum-1/0x3f90622f3df1fe37e6233a8446a835ab032bb941/) | ⚠️ Unaudited |
| StrategyHarvestStable | operational_periphery | ethereum | 3 deployments: ethereum [`0x14a098...be0ec4`](./contracts/ethereum-1/0x14a0982c6ceb2ac27f404f0dff97aaf908be0ec4/); ethereum `0xbd49a8...13b455`; ethereum `0xf03ef5...31246e` | ⚠️ Unaudited |
| StrategyIdle | core_logic | ethereum | [`0x3c3d92...7ddee1`](./contracts/ethereum-1/0x3c3d9228ef8d9750d9c43f9155315dede57ddee1/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | 2 deployments: ethereum [`0x1aebe9...539824`](./contracts/ethereum-1/0x1aebe9147766936906ab56ec0693306da3539824/); ethereum `0xdc9540...79ac77` | ⚠️ Unaudited |
| tokenCounter | token | ethereum | 2 deployments: ethereum [`0xa64610...d21f90`](./contracts/ethereum-1/0xa646109d183f83225e861c0acb7fe53e78d21f90/); ethereum `0xaffbd0...f26ad7` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | 2 deployments: ethereum [`0x21c591...bfd2f6`](./contracts/ethereum-1/0x21c5918ccb42d20a2368bdca8feda0399ebfd2f6/); ethereum `0x2ac5bc...67e9bb` | ⚠️ Unaudited |
| VoteAggregator | unknown | ethereum | 3 deployments: ethereum [`0x156d9a...0d6953`](./contracts/ethereum-1/0x156d9aad5975ec9aa9e2c621f408c8469d0d6953/); ethereum `0x2c57f9...a91c2d`; ethereum `0x519a27...60651c` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | 5 deployments: ethereum [`0x03b298...d7cc8e`](./contracts/ethereum-1/0x03b298d27b0426758cb70c4add6523927bd7cc8e/); ethereum `0x6a01bc...9aac85`; ethereum `0x802915...80f548`; ethereum `0x9cd696...a86d79`; ethereum `0xbcb91e...df4105` | ⚠️ Unaudited |
| WeightedPool | core_logic | ethereum | [`0x702605...7b31ba`](./contracts/ethereum-1/0x702605f43471183158938c1a3e5f5a359d7b31ba/) | ⚠️ Unaudited |
| WithdrawHandler | operational_periphery | ethereum | [`0x641bef...268fe7`](./contracts/ethereum-1/0x641befa4db601578a64f0fc1f4e89e9869268fe7/) | ⚠️ Unaudited |
| xGro | unknown | ethereum | 4 deployments: ethereum [`0x0f6788...40442d`](./contracts/ethereum-1/0x0f6788b45b282d7e77f1facdc69803e51440442d/); ethereum `0xbd3535...11477c`; ethereum `0xd561d5...9c6646`; ethereum `0xfac5bb...708f03` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (88)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x05acf6...01372f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x062be1...3cafe0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x085873...c95748` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0aeee4...39fee0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0eee1e...71488d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x109c46...94f752` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x10d415...2465de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x11a2f8...2a4a08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1571d8...0029f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1a4b50...411a38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1b1ee9...9816aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1f1f42...f9fb7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x299001...177846` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2a4e5c...5cd1a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2d63b9...ef4139` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x33f5e1...f9df65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x34f484...3899cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x39bf32...d4a2b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3bc1ba...c0a791` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x400ea1...8793d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4232e8...d165d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x437e8f...f716c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x44a0a4...6caea6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x48cb6f...9e6a3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4b05a9...a8855a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4c4a81...ec3f74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4da038...1461eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x514c32...f1e0b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x51e6cf...81fbed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x549e70...2498c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x59b6b7...cb0a1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5b4042...ca4113` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5ebdf8...a6cead` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5ec720...d504e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x60e2d9...7245d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x651cdc...87a335` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6d1e68...078328` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6d4c2e...234188` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6f15b6...af29bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x715b54...6173cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x720e5e...cc260d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x732a3a...a37a8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x78ed7a...5244d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x791e95...bf5d64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x79b14d...4635b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7b4b44...90524f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x815d0e...51f0ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x83cfa7...fc3e3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x845982...93df6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8b958d...cd4f59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8f4b3e...b3af2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x92472c...65094b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x935f5b...0be04a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x95d30d...f58012` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x96527d...4b0c17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9741f6...690694` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9da6ad...f2c224` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9ff07c...11ddf0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa18af2...d15a81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa69f30...c0615b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xabac92...8ad3db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xacc4d9...730722` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xad393d...d2448a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb6b163...0f7dd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb90efd...f68801` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc118f2...b047b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc36dec...7b202a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc8f647...8f1275` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc94dde...5d23d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcb1f75...5e55fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcbbcc5...3b4c9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcded5e...0ec165` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xce5dc1...f285b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xce6e6c...6e5866` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd7e726...e610c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd89512...85b09f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdbcf4f...404af9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdc0c53...0db43b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdcbcc3...0f7232` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdf1ebf...b49020` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe274ec...ee49b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe664b7...230682` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xec7ff0...78ac28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xecd7a2...a25ad4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf4d352...12c0d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf58aa7...e711c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf6a028...fb3da4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfe1dc5...343476` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xf0a93d...3cb86b`](./contracts/ethereum-1/0xf0a93d4994b3d98fb5e3a2f90dbc2d69073cb86b/) | RebasingGToken | token | $1,758,331.88 | Verified native implementation with $1,758,331.88 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ec879...0b74d7`](./contracts/ethereum-1/0x3ec8798b81485a254928b70cda1cf0a2bb0b74d7/) | GROToken | token | $841,338.88 | Verified native implementation with $841,338.88 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3adb04...c52a0c`](./contracts/ethereum-1/0x3adb04e127b9c0a5d36094125669d4603ac52a0c/) | NonRebasingGToken | token | $325,985.76 | Verified native implementation with $325,985.76 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b1bff...206dda`](./contracts/ethereum-1/0x6b1bff72f00cc147b5dc7a5b156fe7a6fd206dda/) | AirDrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x167bcc...22a99a`](./contracts/ethereum-1/0x167bcca89b1527e015b8aad7bd6130707922a99a/) | Allocation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d17c9...a59421`](./contracts/ethereum-1/0x7d17c9b9b154b1b31add5115f5f519ec50a59421/) | Buoy3Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc5c60...efb8f4`](./contracts/ethereum-1/0xcc5c60a319d33810b9eab9764717eef84defb8f4/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7207e...a44f40`](./contracts/ethereum-1/0xb7207ea9446dca1dec1c1fc93c6fcdf8b4a44f40/) | DepositHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc535cf...76ee76`](./contracts/ethereum-1/0xc535cfe245d8f969e647b3dd8be1255ec076ee76/) | EmergencyHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2344db...953444`](./contracts/ethereum-1/0x2344dba0a1de9acf22b7c9936c6693f20b953444/) | Exposure | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f09e3...6b8880`](./contracts/ethereum-1/0x1f09e308bb18795f62ea7b114041e12b426b8880/) | GROBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63d962...a247de`](./contracts/ethereum-1/0x63d96236fd0e1c395d3e464a38f46b1adca247de/) | GRODaoVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c5ced...e735d4`](./contracts/ethereum-1/0x3c5ced8498ca1f8489ee3db32a86087a53e735d4/) | GRODistributer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca71e6...8f33c7`](./contracts/ethereum-1/0xca71e66866eb9ae67bd5f3ab50b06abd188f33c7/) | GROEmpVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b4a30...e61397`](./contracts/ethereum-1/0x8b4a30c8884ca4aff1e4c82cce79802a63e61397/) | GROHodler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0537d3...ab80f1`](./contracts/ethereum-1/0x0537d3da1ed1dd7350ff1f3b92b727dfdbab80f1/) | GROInvVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x452c21...6cb397`](./contracts/ethereum-1/0x452c21ed6fe22cd2dbff22a89d507cc6b16cb397/) | GROTeamVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x748218...178360`](./contracts/ethereum-1/0x748218256afe0a19a88ebeb2e0c5ce86d2178360/) | GROVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a0703...cd050e`](./contracts/ethereum-1/0x8a070363f6db6a74caaf486dde6da013e5cd050e/) | Insurance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d3ab5...fb8126`](./contracts/ethereum-1/0x5d3ab53b6b66f86bbfabc2a58c0f26ea7dfb8126/) | LifeGuard3Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x001c24...c7aad7`](./contracts/ethereum-1/0x001c249c09090d79dc350a286247479f08c7aad7/) | LPTokenStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf67a42...48096d`](./contracts/ethereum-1/0xf67a426e110c74c566174a37c9269780fb48096d/) | PnL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f9062...2bb941`](./contracts/ethereum-1/0x3f90622f3df1fe37e6233a8446a835ab032bb941/) | Registry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c3d92...7ddee1`](./contracts/ethereum-1/0x3c3d9228ef8d9750d9c43f9155315dede57ddee1/) | StrategyIdle | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa64610...d21f90`](./contracts/ethereum-1/0xa646109d183f83225e861c0acb7fe53e78d21f90/) | tokenCounter | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x156d9a...0d6953`](./contracts/ethereum-1/0x156d9aad5975ec9aa9e2c621f408c8469d0d6953/) | VoteAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03b298...d7cc8e`](./contracts/ethereum-1/0x03b298d27b0426758cb70c4add6523927bd7cc8e/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x641bef...268fe7`](./contracts/ethereum-1/0x641befa4db601578a64f0fc1f4e89e9869268fe7/) | WithdrawHandler | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f6788...40442d`](./contracts/ethereum-1/0x0f6788b45b282d7e77f1facdc69803e51440442d/) | xGro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 48 |
| upstream | 3 |
| standard_library | 2 |
| needs_review | 71 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
