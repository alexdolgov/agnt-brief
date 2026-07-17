# Agentic Audit Brief: Gro

## Project Overview

- Project: Gro (`gro`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.052Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: avalanche, ethereum
- Contract surface: 111 unique implementations (122 raw deployments)
- DeFi Llama TVL: $4,661,036.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 69 project-authored contract(s) across 2 chain(s); 4 ERC4626 vaults, 10 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 13 common project-authored base contract(s) (grobasevesting, constants, strategyqueue). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 294; live-surface contracts included: 122 (29 live, 93 unknown).
- Excluded by liveness: 172 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/17 (0.0%)
- Deployed-live implementations: 18 of 111 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/18
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 93
- Unique implementations: 111
- Raw deployments: 122
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GMerkleVestor | operational_periphery | ethereum | n/a | [`0x02c133b9fbffb8d2e8cb7b7a94c7c880b331c720`](./contracts/ethereum-1/0x02c133b9fbffb8d2e8cb7b7a94c7c880b331c720/) | ⚠️ Unaudited |
| GMigration | unknown | ethereum | n/a | [`0xd883e0e09bf3c4a54eadc404e12fa71605a30f0c`](./contracts/ethereum-1/0xd883e0e09bf3c4a54eadc404e12fa71605a30f0c/) | ⚠️ Unaudited |
| GROToken | token | ethereum | n/a | [`0x3ec8798b81485a254928b70cda1cf0a2bb0b74d7`](./contracts/ethereum-1/0x3ec8798b81485a254928b70cda1cf0a2bb0b74d7/) | ⚠️ Unaudited |
| GRouter | unknown | ethereum | n/a | 3 deployments: ethereum [`0xb732473b9b1e56f8d1e68bc3fd8bb65e9a338e03`](./contracts/ethereum-1/0xb732473b9b1e56f8d1e68bc3fd8bb65e9a338e03/); ethereum `0xd4139e090e43ff77172d9dd8ba449d2a9683790d`; ethereum `0xf1e803c90ccbe6a07ba482bf8525954a9c3ec38b` | ⚠️ Unaudited |
| GROVesting | operational_periphery | ethereum | n/a | [`0x748218256afe0a19a88ebeb2e0c5ce86d2178360`](./contracts/ethereum-1/0x748218256afe0a19a88ebeb2e0c5ce86d2178360/) | ⚠️ Unaudited |
| GStrategyGuard | unknown | ethereum | n/a | 2 deployments: ethereum [`0x72ad58f0917deb04ec8b6ada584abd0dbe502128`](./contracts/ethereum-1/0x72ad58f0917deb04ec8b6ada584abd0dbe502128/); ethereum `0xf1e389c7824837140f29c00c0d048cf2072e4732` | ⚠️ Unaudited |
| GTranche | unknown | ethereum | n/a | 3 deployments: ethereum [`0x19a07afe97279cb6de1c9e73a13b7b0b63f7e67a`](./contracts/ethereum-1/0x19a07afe97279cb6de1c9e73a13b7b0b63f7e67a/); ethereum `0x23e8d5c2b26a4a05dc94ea79807272fb664721de`; ethereum `0x5c08069e456407356c391f87d37d28a08a83c6bb` | ⚠️ Unaudited |
| GVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1402c1caa002354fc2c4a4cd2b4045a5b9625ef3`](./contracts/ethereum-1/0x1402c1caa002354fc2c4a4cd2b4045a5b9625ef3/); ethereum `0x4d9c9760ad1597c7c68cc4cde21f9c43e62d82db`; ethereum `0xae013d9bfa88f54a825831f969cb44ee020872d8` | ⚠️ Unaudited |
| LPTokenStaker | core_logic | ethereum | n/a | [`0x2e32bad45a1c29c1ea27cf4dd588df9e68ed376c`](./contracts/ethereum-1/0x2e32bad45a1c29c1ea27cf4dd588df9e68ed376c/) | ⚠️ Unaudited |
| NonRebasingGToken | token | ethereum | n/a | [`0x3adb04e127b9c0a5d36094125669d4603ac52a0c`](./contracts/ethereum-1/0x3adb04e127b9c0a5d36094125669d4603ac52a0c/) | ⚠️ Unaudited |
| RebasingGToken | token | ethereum | n/a | [`0xf0a93d4994b3d98fb5e3a2f90dbc2d69073cb86b`](./contracts/ethereum-1/0xf0a93d4994b3d98fb5e3a2f90dbc2d69073cb86b/) | ⚠️ Unaudited |
| RedemptionPool | core_logic | ethereum | n/a | [`0x204d9de758217a39149767731a87bcc32427b6ef`](./contracts/ethereum-1/0x204d9de758217a39149767731a87bcc32427b6ef/) | ⚠️ Unaudited |
| RouterOracle | unknown | ethereum | n/a | 3 deployments: ethereum [`0xbd5ff7ec8fe734eae41204d2cd0122cae22eec41`](./contracts/ethereum-1/0xbd5ff7ec8fe734eae41204d2cd0122cae22eec41/); ethereum `0xf66bbaf6e6bf9d9440c4be06b824343380100af9`; ethereum `0xfe620d20b3ed77ec0934fbe9df2147f6f3c62599` | ⚠️ Unaudited |
| SeniorTranche | unknown | ethereum | n/a | 2 deployments: ethereum [`0x77fbd7d2cddce76573001a48c90fa46aefb0a8a0`](./contracts/ethereum-1/0x77fbd7d2cddce76573001a48c90fa46aefb0a8a0/); ethereum `0xf0e00481d623fa7adf06b3453182418b7d0cf233` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | 2 deployments: ethereum [`0x21c5918ccb42d20a2368bdca8feda0399ebfd2f6`](./contracts/ethereum-1/0x21c5918ccb42d20a2368bdca8feda0399ebfd2f6/); ethereum `0x2ac5bc9dda37601edb1a5e29699deb0a5b67e9bb` | ⚠️ Unaudited |
| VaultAdaptorMK2 | core_logic | avalanche | n/a | [`0x6063597b9356b246e706fd6a48c780f897e3ef55`](./contracts/avalanche-43114/0x6063597b9356b246e706fd6a48c780f897e3ef55/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0xbcb91e689114b9cc865ad7871845c95241df4105`](./contracts/ethereum-1/0xbcb91e689114b9cc865ad7871845c95241df4105/) | ⚠️ Unaudited |
| WeightedPool | core_logic | ethereum | n/a | [`0x702605f43471183158938c1a3e5f5a359d7b31ba`](./contracts/ethereum-1/0x702605f43471183158938c1a3e5f5a359d7b31ba/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (93)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x05acf686eee0cbdcea1328e759402ab4ae01372f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x062be16e83337f326ab69b900b031219953cafe0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x085873b5fb1bc6833ce995a4cd856d0cc6c95748` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0aeee4c5ea2c7399af18f97e783fec6d3539fee0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0eee1ef4b178262b0c7e95400dc110e84871488d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x109c462ee2d818ac459e510bcc041f884494f752` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10d415dc03ee189a8fae0cea176000b8db2465de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11a2f8ee421603013c148bba8f7b307d1b2a4a08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1571d870b0dc12129aba430e3bd5c09a770029f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a4b5080f626451424050d0d2677fbbdf9411a38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b1ee90cce300ebef256e08883c17edab79816aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f1f42dedd15f118f38f45db30353de08ef9fb7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2990017de7e10fc8c1e4b4e86eb0895dc3177846` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a4e5cb592d254f21665b709a6e4e0f4a75cd1a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d63b9a5b6aee714448d5c1476a34c4975ef4139` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33f5e1f2c98d1b9e547939e82bbe18f524f9df65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34f484c7d29974f48efd85d3f38b83f9d43899cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39bf325c7895bfae171a5f93c8dc8a9a1cd4a2b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bc1baa5d220aafc334dc92c8495a7ab64c0a791` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x400ea1f2dbd88a5ac10c142811967b1c968793d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4232e88e255de350a295434c73e5e19b61d165d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x437e8f2f12c9c8463e0c028d717c6cdb6cf716c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x43b6c0c8f1495ca671edc74999b75965ab290e50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44a0a49b3116a04eef0341ae78ee26a2816caea6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48cb6fd436d34a909523a74de8f82d6bf59e6a3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b05a9ee3cc58a968d133b0e8f5bed9b96a8855a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c4a81298cc85c5bbf8092bd241fcc5dd6ec3f74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4da038a96f5f5594ce907a023a4a2cd4c21461eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x514c3230f0b1c93e29ea59fe8da3cef0d4f1e0b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51e6cf7dc98828e1b188d2bcf3f63e294281fbed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x549e70c14e9bea60e4646264f0ff5992292498c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59b6b763509198d07cf8f13a2dc6f2df98cb0a1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b4042018b4e03cfe2892f27d84e07ac5cca4113` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ebdf8aad66aa9b0740c2cd1da83d30feca6cead` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ec72087e06cac89505ac30ee203745241d504e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60e2d922cb9d7fb8585b443a9df5424b377245d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x651cdc0863779a7d1a0655c168aca5403987a335` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d1e68d2cc52696241fa17ae198f41ce84078328` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d4c2e0709bc8da0e20b2d2bf28011062f234188` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f15b69ac756dde0c716d0c0e4900c6cdbaf29bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x715b548ed664488bdc6429122dc5c86a0f6173cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x720e5ecfe240a65ca236e5ec626f91036ecc260d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x732a3a2e00362802c422cdad0343efb2e1a37a8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78ed7ad7886ae2c2e27797989cb249f9165244d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x791e9531afd72f2c1e8c265f4c5e61447ebf5d64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79b14d909381d79b655c0700d0fdc2c7054635b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b4b446f42016c12b47899cec35f417cb290524f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x815d0e4ada37a1f4cc9bfd029dedba1afc51f0ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83cfa7282ad906207d90324405cb6dfe1cfc3e3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84598273630781c2a0ed4e5801d858557b93df6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b958d88ca8002c063d91db92ed061c273cd4f59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f4b3eed7febdd7b85d930aee59b1ef34bb3af2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92472c99993ac32403f044ab26bb22121965094b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x935f5bff123ce7ae2fb74be3e237d3f5210be04a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95d30dbb2f8473acd7bc24343503b6c8b9f58012` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96527d13b943b404fb1019e4767048f5a24b0c17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9741f6f00513af4cc705a3f0240df279e5690694` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9da6ad743f4f2a247a56350703a4b501c7f2c224` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ff07c7e476829235021debe32d5db656a11ddf0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa18af2d39a7b5e582339cc23b01fe3a37ad15a81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa69f301876a55f3e3d4a84664c98fb7c7bc0615b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabac9217005efcf9a17563326e47b2cbaa8ad3db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xacc4d9cfeca661ef5eee226aa8f25eed3f730722` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad393de40068a71907d678db55ca48aa99d2448a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6b16332d6105438d7573a603a9c26599f0f7dd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb90efd9b22dd5a84fb8d93585f6f88da5bf68801` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc118f2eb1291f9bc0c2a4c2d61b59f1785b047b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc36dec6be563a59d3fd4b70a720dbddd617b202a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8f64799c1cdf2c40161b98df86e36ee6a8f1275` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc94ddeacff69bd206ceddfe2b601a277225d23d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb1f75c20f1df51aa86d3db3c7fe1d7b355e55fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbbcc56f9f8883992ca21bbda2b8c0ed293b4c9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcded5e77d6395d82f1c4f97825aeb5f5740ec165` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce5dc119c97541cdc969ef238689d5335bf285b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce6e6ce4d30f51ae45d9dd0fef1b7e9d936e5866` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7e72680ec1ed15a8510e175c65eadf6f6e610c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd89512bdf570476310de854ef69d715e0e85b09f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbcf4f419b0364c81f337eeceb47ba76e1404af9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc0c531f3de114d592f7423630bd00cb8f0db43b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdcbcc3c3aac87ad3d445bbc97ff905440d0f7232` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf1ebf04518d08812c899b72272c074e36b49020` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe274ecf4ab31363a1ad7dacb663cbb4fdeee49b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe664b73ce29ba81666a137ae577797a0de230682` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec7ff0ebdc8414e8c0fb057fabde1555a978ac28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xecd7a2814de400fce7ca39b38c4a562bf5a25ad4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4d352d2e2fb8fd804dd2e8473d453edfb12c0d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf58aa7ec0c182e8b84e4afedf4855fcbe9e711c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6a028be84ca4cd70a210380084ed5571afb3da4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe1dc5d17827565a32b7f9e8601b9c21c1343476` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3b4c9071467422e4bcb6095ba8db1972d718380f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3fb230a48fa558058c313ef059d87be862b73066` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4801de71ecabf5b85d3a51c461fce657aa93f50f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb31b81ffa8c8455fc81c981ecf38ea2d5e8197d2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x02c133b9fbffb8d2e8cb7b7a94c7c880b331c720`](./contracts/ethereum-1/0x02c133b9fbffb8d2e8cb7b7a94c7c880b331c720/) | GMerkleVestor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd883e0e09bf3c4a54eadc404e12fa71605a30f0c`](./contracts/ethereum-1/0xd883e0e09bf3c4a54eadc404e12fa71605a30f0c/) | GMigration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ec8798b81485a254928b70cda1cf0a2bb0b74d7`](./contracts/ethereum-1/0x3ec8798b81485a254928b70cda1cf0a2bb0b74d7/) | GROToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb732473b9b1e56f8d1e68bc3fd8bb65e9a338e03`](./contracts/ethereum-1/0xb732473b9b1e56f8d1e68bc3fd8bb65e9a338e03/) | GRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x748218256afe0a19a88ebeb2e0c5ce86d2178360`](./contracts/ethereum-1/0x748218256afe0a19a88ebeb2e0c5ce86d2178360/) | GROVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72ad58f0917deb04ec8b6ada584abd0dbe502128`](./contracts/ethereum-1/0x72ad58f0917deb04ec8b6ada584abd0dbe502128/) | GStrategyGuard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19a07afe97279cb6de1c9e73a13b7b0b63f7e67a`](./contracts/ethereum-1/0x19a07afe97279cb6de1c9e73a13b7b0b63f7e67a/) | GTranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1402c1caa002354fc2c4a4cd2b4045a5b9625ef3`](./contracts/ethereum-1/0x1402c1caa002354fc2c4a4cd2b4045a5b9625ef3/) | GVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e32bad45a1c29c1ea27cf4dd588df9e68ed376c`](./contracts/ethereum-1/0x2e32bad45a1c29c1ea27cf4dd588df9e68ed376c/) | LPTokenStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3adb04e127b9c0a5d36094125669d4603ac52a0c`](./contracts/ethereum-1/0x3adb04e127b9c0a5d36094125669d4603ac52a0c/) | NonRebasingGToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0a93d4994b3d98fb5e3a2f90dbc2d69073cb86b`](./contracts/ethereum-1/0xf0a93d4994b3d98fb5e3a2f90dbc2d69073cb86b/) | RebasingGToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x204d9de758217a39149767731a87bcc32427b6ef`](./contracts/ethereum-1/0x204d9de758217a39149767731a87bcc32427b6ef/) | RedemptionPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbd5ff7ec8fe734eae41204d2cd0122cae22eec41`](./contracts/ethereum-1/0xbd5ff7ec8fe734eae41204d2cd0122cae22eec41/) | RouterOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77fbd7d2cddce76573001a48c90fa46aefb0a8a0`](./contracts/ethereum-1/0x77fbd7d2cddce76573001a48c90fa46aefb0a8a0/) | SeniorTranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6063597b9356b246e706fd6a48c780f897e3ef55`](./contracts/avalanche-43114/0x6063597b9356b246e706fd6a48c780f897e3ef55/) | VaultAdaptorMK2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbcb91e689114b9cc865ad7871845c95241df4105`](./contracts/ethereum-1/0xbcb91e689114b9cc865ad7871845c95241df4105/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x702605f43471183158938c1a3e5f5a359d7b31ba`](./contracts/ethereum-1/0x702605f43471183158938c1a3e5f5a359d7b31ba/) | WeightedPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 93 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
