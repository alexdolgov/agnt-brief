# Agentic Audit Brief: SquadSwap

## Project Overview

- Project: SquadSwap (`squadswap`)
- Website: [https://squadswap.com/](https://squadswap.com/)
- Lifecycle: active (Tier 0, 93.6% below peak)
- Generated: 2026-06-18T18:31:02.807Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-748f
- Chains: base, blast, bsc
- Contract surface: 96 unique implementations (139 raw deployments)
- DeFi Llama TVL: $1,361,546.00
- On-chain TVL (included contracts): $13,394,210.64
- TVL by chain: Bsc $13,394,210.64

## Project Description

SquadSwap is a multi-chain decentralized exchange (DEX) protocol that enables users to swap tokens, provide liquidity, and earn yield through farming. It supports automated market-making (AMM) with concentrated liquidity (V3) and classic AMM (V2) pools, along with staking and yield optimization features.

### Architecture

SquadSwap V3 and V2 families share common farming infrastructure (MasterChefV2/V3) and token descriptors, while SquadSwap Dynamo is a separate V2 instance with its own factory and token. All families operate independently but may share peripheral contracts like routers and multicall interfaces across deployments.

## Contract Surface Quality

- Indexed contracts: 737; live-surface contracts included: 139 (136 live, 3 unknown).
- Excluded by liveness: 547 inactive, 51 singleton, 0 uninitialized.
- Deployment units: 2/15 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 1/14.

## Audit Coverage Summary

- Verified implementations audited: 18/30 (60.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 66
- Unique implementations: 96
- Raw deployments: 139
- Audits discovered: 5
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $353,333.64
- Latest audit: 2025-02 (aging)
- Staleness: 0 fresh, 1 aging, 4 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 17 | 56.7% | 2023-12 |
| PeckShield | Tier 2 | 5 | 16.7% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SquadToken | token | bsc | n/a | [`0x2d2567...2e310c`](./contracts/bsc-56/0x2d2567dec25c9795117228adc7fd58116d2e310c/) | ✅ Audited |
| FeeManager | governance | bsc | n/a | 3 deployments: bsc [`0x5af85b...424b00`](./contracts/bsc-56/0x5af85b993645af4e530f93721653fb9b6a424b00/); bsc `0x9d8b42...cafb3c`; base `0xc639f1...8d90e2` | ✅ Audited |
| MasterChefV2 | unknown | bsc | n/a | 5 deployments: bsc [`0x2e881a...4879b4`](./contracts/bsc-56/0x2e881a10f682a3b2cbaaf8fc5a9a94e98d4879b4/); bsc `0xec6743...7a76ca`; base `0xb3a209...dd529e`; base `0xb61715...2ebb48`; base `0xc49f63...71d25c` | ✅ Audited |
| MasterChefV3 | unknown | bsc | n/a | 3 deployments: bsc [`0x2ca14a...f96868`](./contracts/bsc-56/0x2ca14af00e6847c0600067f94a8b7cbfaff96868/); base `0x87b104...749d09`; base `0x89c061...266711` | ✅ Audited |
| NonfungiblePositionManager | governance | bsc | unit-38721 | [`0x501535...1db7b4`](./contracts/bsc-56/0x501535ef0b92ee1df5c12f47720f1e479b1db7b4/) | ✅ Audited |
| NonfungiblePositionManager | governance | blast | n/a | 3 deployments: bsc `0x4f0ece...eda1b8`; base `0x933f97...a409b9`; blast [`0x03439c...c8f7bb`](./contracts/blast-81457/0x03439c1f8161c37e37202ab7fa9f390e01c8f7bb/) | ✅ Audited |
| QuoterV2 | periphery | base | n/a | 2 deployments: base [`0x144403...cf27fc`](./contracts/base-8453/0x1444037d01234cb4d0c36dadb0cd0534b7cf27fc/); base `0xb00152...288fa2` | ✅ Audited |
| SmartChefFactory | registry | bsc | n/a | 2 deployments: bsc [`0x642782...52ec16`](./contracts/bsc-56/0x6427824d446e5be25326ab1b88c8102f0d52ec16/); base `0x7171ea...fea1a7` | ✅ Audited |
| SmartRouter | adapter | blast | n/a | 5 deployments: bsc `0x8b0c61...cc727b`; bsc `0xfb96f5...0b8b5b`; base `0xe55d12...524377`; base `0xf48d22...facacc`; blast [`0x152176...2c53dd`](./contracts/blast-81457/0x152176a1e3c112d96aa305fa1f5ac6997b2c53dd/) | ✅ Audited |
| SmartRouterHelper | adapter | base | n/a | [`0x369967...78d279`](./contracts/base-8453/0x369967bd0bd3b7550b16d251d42def66fc78d279/) | ✅ Audited |
| SquadInterfaceMulticall | periphery | base | n/a | [`0xdee103...673063`](./contracts/base-8453/0xdee10310e729c36a560c72c0e8e3be0e46673063/) | ✅ Audited |
| SquadswapFactory | registry | base | n/a | 3 deployments: base [`0x11b701...be7d99`](./contracts/base-8453/0x11b7018204cb458741b56725422bc64cf7be7d99/); base `0x1bc323...bb70e7`; base `0xd6bd39...a83e64` | ✅ Audited |
| SquadswapRouter02 | adapter | base | n/a | 6 deployments: bsc `0x850774...55611c`; bsc `0xcf870c...5ee48d`; base [`0x3767e2...66aa9f`](./contracts/base-8453/0x3767e2bc3e9c5ceb8be25513ae2e6937df66aa9f/); base `0x95e801...9fe902`; base `0xd60507...b713aa`; blast `0xa3f309...4e395c` | ✅ Audited |
| SquadV3Factory | registry | bsc | n/a | 2 deployments: bsc [`0x10d861...6bc07b`](./contracts/bsc-56/0x10d8612d9d8269e322ab551c18a307cb4d6bc07b/); base `0x829ce7...464aee` | ✅ Audited |
| SquadV3PoolDeployer | core_logic | base | n/a | [`0x110909...bc1abf`](./contracts/base-8453/0x110909bc7d16465d1d0fa76c3fcd498830bc1abf/) | ✅ Audited |
| SwapRouter | adapter | bsc | n/a | 3 deployments: bsc [`0x56956a...38ef70`](./contracts/bsc-56/0x56956af389c6bc07f4c57837b49dd03b4238ef70/); bsc `0xaf4b33...0bcbc0`; base `0x6daafc...acf576` | ✅ Audited |
| TickLens | periphery | base | n/a | [`0x633faf...4714dc`](./contracts/base-8453/0x633faf3dac3677b51ea7a53a81b79aee944714dc/) | ✅ Audited |
| V3Migrator | periphery | base | n/a | [`0x6d3a3a...c8fd75`](./contracts/base-8453/0x6d3a3ac01e7adad98480b5d4951a83b141c8fd75/) | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SquadV3Pool | core_logic | bsc | n/a | 5 deployments: bsc [`0x606d6f...534955`](./contracts/bsc-56/0x606d6f19081fe3db277c3400cdbfed2ea0534955/); bsc `0x9fb981...d0bd33`; bsc `0xa95d87...746dae`; bsc `0xb6bb74...3b577f`; bsc `0xefcb55...839f0d` | ⚠️ Unaudited |
| BinFeeManagerHook | governance | bsc | n/a | 4 deployments: bsc [`0x0ec6a9...60ab86`](./contracts/bsc-56/0x0ec6a90be27728272796d456656e05989860ab86/); bsc `0x73e5fd...a58113`; base `0xd4db07...c6abdd`; base `0xda3eb4...019426` | ⚠️ Unaudited |
| CLFeeManagerHook | governance | bsc | n/a | 4 deployments: bsc [`0x73c5c8...255c0a`](./contracts/bsc-56/0x73c5c84703540ed1f1f279614853a302cc255c0a/); bsc `0x79a4be...4b0b18`; base `0x84863e...0a2598`; base `0xf397f1...e86c97` | ⚠️ Unaudited |
| FarmBooster | core_logic | bsc | n/a | 4 deployments: bsc [`0x52e2f8...cda89e`](./contracts/bsc-56/0x52e2f8f52e27918aeb3995b5e49da38ce9cda89e/); bsc `0x672d60...08c9ca`; base `0x7f5f5a...6fd4cf`; base `0xc589b6...c6061e` | ⚠️ Unaudited |
| IFODeployerV10 | unknown | bsc | n/a | 2 deployments: bsc [`0x05fff7...c5fb39`](./contracts/bsc-56/0x05fff74251a29dac98e10a4314ecf05031c5fb39/); base `0x143bc7...7d94d9` | ⚠️ Unaudited |
| SquadLimitOrder | unknown | bsc | n/a | [`0x62490b...56aab9`](./contracts/bsc-56/0x62490b11b335f3b27fc3fbadc29ccdaf7b56aab9/) | ⚠️ Unaudited |
| SquadOFT | unknown | base | n/a | 2 deployments: base [`0x08ccb8...a68b7e`](./contracts/base-8453/0x08ccb86a31270fd97d927a4e17934c6262a68b7e/); blast [`0x08ccb8...a68b7e`](./contracts/blast-81457/0x08ccb86a31270fd97d927a4e17934c6262a68b7e/) | ⚠️ Unaudited |
| SquadswapInterfaceMulticallV2 | periphery | bsc | n/a | [`0xa4843b...67592d`](./contracts/bsc-56/0xa4843b1247460dd9a66a70386cb9a5934f67592d/) | ⚠️ Unaudited |
| SquadSwapNftStake | token | bsc | unit-38723 | [`0xb216ab...ac7e41`](./contracts/bsc-56/0xb216abd79263ec6c85dd243928c7beaaffac7e41/) | ⚠️ Unaudited |
| SquadswapPair | unknown | bsc | n/a | [`0xa773b9...4440d1`](./contracts/bsc-56/0xa773b9f08643816524fd614db7f8a74f674440d1/) | ⚠️ Unaudited |
| SquadV3PoolManager | core_logic | bsc | n/a | 2 deployments: bsc [`0x391eaa...782ef5`](./contracts/bsc-56/0x391eaa90f931c6330132efe6c73ebdf77d782ef5/); base `0x9cbb06...a41691` | ⚠️ Unaudited |
| UnsupportedProtocol | unknown | base | n/a | 2 deployments: bsc `0x27f233...d8cfaa`; base [`0x13efb0...41560b`](./contracts/base-8453/0x13efb07140ce67f45256f8ceb230563fc041560b/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x056ca1...ead913` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x120bc1...844fd9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1ae30b...8e05bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24b70e...506b95` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x252b2a...e720cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x27ee18...812965` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x286c0d...161bc8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2cb040...57f6d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2edc98...548e5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2fe498...dce453` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37ddd0...8b6b23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4123e9...53126a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46680d...dbcc6b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b937c...81a94b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x511530...aaeac1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x60efb4...99d0f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61ef63...a348c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x630f58...16c08b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6fd3de...080981` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x739d61...24ef08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7473fa...d21313` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x831355...18c9d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86eb5e...0ce9bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x983942...94f740` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xade16f...8c08b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb3ba27...188c22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb793db...089955` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb9b1a1...6b8f0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd6f94...b0e7a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd9511...677442` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xce03c2...bb5847` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5ddc0...c7652c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6ceae...1374a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd81414...54082f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf58290...afbec0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf9b3a7...82d695` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd399f...7852bd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x061856...186a3d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0bd703...6dcfbc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x145e6b...874b76` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1f2436...bed21f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1f8939...773b7e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2ec163...e12e10` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x31b8c6...662841` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x340a67...d7b911` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x34bc76...61f2b9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3a5800...982286` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x51c97e...fe03a5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x579da7...1867ac` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x58f001...1c1374` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5d202a...122f5c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5dbbf7...53312f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x67ccdf...3a9538` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8b39a3...ce2b0e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x93c8b2...119f1a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9627ea...236a0a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x97f426...169fc7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f4b97...1fdf5c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa2a1e6...482878` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac47c0...cfed58` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcc6c58...4596eb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcd32cd...e1c49b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd39f3c...8659e3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd9d71b...f5d10f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdeb0bf...2870c0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xff29b1...27c261` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf) | PeckShield | Audit | 2025-02 | aging | Direct | contract_name | 10 | high |
| [DL audit link](https://www.cyberscope.io/audits/squadswap) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 7 | high |
| [squadswap.pdf](https://github.com/cyberscope-io/audits/blob/main/squadswap/squadswap.pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | 7 | high |
| [audit.pdf (also discovered via alternate URL)](https://github.com/cyberscope-io/audits/blob/main/squadswap/v1/audit.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 36 | high |
| [PeckShield Audit Report](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SquadSwap-v1.0.pdf) | PeckShield | Audit | 2024-02 | stale | Direct | contract_name | 14 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x606d6f...534955`](./contracts/bsc-56/0x606d6f19081fe3db277c3400cdbfed2ea0534955/) | SquadV3Pool | core_logic | $353,333.64 | Verified native implementation with $353,333.64 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0ec6a9...60ab86`](./contracts/bsc-56/0x0ec6a90be27728272796d456656e05989860ab86/) | BinFeeManagerHook | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x73c5c8...255c0a`](./contracts/bsc-56/0x73c5c84703540ed1f1f279614853a302cc255c0a/) | CLFeeManagerHook | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x52e2f8...cda89e`](./contracts/bsc-56/0x52e2f8f52e27918aeb3995b5e49da38ce9cda89e/) | FarmBooster | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x05fff7...c5fb39`](./contracts/bsc-56/0x05fff74251a29dac98e10a4314ecf05031c5fb39/) | IFODeployerV10 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x62490b...56aab9`](./contracts/bsc-56/0x62490b11b335f3b27fc3fbadc29ccdaf7b56aab9/) | SquadLimitOrder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x08ccb8...a68b7e`](./contracts/base-8453/0x08ccb86a31270fd97d927a4e17934c6262a68b7e/) | SquadOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa4843b...67592d`](./contracts/bsc-56/0xa4843b1247460dd9a66a70386cb9a5934f67592d/) | SquadswapInterfaceMulticallV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa773b9...4440d1`](./contracts/bsc-56/0xa773b9f08643816524fd614db7f8a74f674440d1/) | SquadswapPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x391eaa...782ef5`](./contracts/bsc-56/0x391eaa90f931c6330132efe6c73ebdf77d782ef5/) | SquadV3PoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 37 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 58 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: extraction_exact=601

Fork inheritance lineage and inherited audits are included when available.
