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
| GMerkleVestor | operational_periphery | ethereum | n/a | [`0x02c133...31c720`](./contracts/ethereum-1/0x02c133b9fbffb8d2e8cb7b7a94c7c880b331c720/) | ⚠️ Unaudited |
| GMigration | unknown | ethereum | n/a | [`0xd883e0...a30f0c`](./contracts/ethereum-1/0xd883e0e09bf3c4a54eadc404e12fa71605a30f0c/) | ⚠️ Unaudited |
| GROToken | token | ethereum | n/a | [`0x3ec879...0b74d7`](./contracts/ethereum-1/0x3ec8798b81485a254928b70cda1cf0a2bb0b74d7/) | ⚠️ Unaudited |
| GRouter | unknown | ethereum | n/a | 3 deployments: ethereum [`0xb73247...338e03`](./contracts/ethereum-1/0xb732473b9b1e56f8d1e68bc3fd8bb65e9a338e03/); ethereum `0xd4139e...83790d`; ethereum `0xf1e803...3ec38b` | ⚠️ Unaudited |
| GROVesting | operational_periphery | ethereum | n/a | [`0x748218...178360`](./contracts/ethereum-1/0x748218256afe0a19a88ebeb2e0c5ce86d2178360/) | ⚠️ Unaudited |
| GStrategyGuard | unknown | ethereum | n/a | 2 deployments: ethereum [`0x72ad58...502128`](./contracts/ethereum-1/0x72ad58f0917deb04ec8b6ada584abd0dbe502128/); ethereum `0xf1e389...2e4732` | ⚠️ Unaudited |
| GTranche | unknown | ethereum | n/a | 3 deployments: ethereum [`0x19a07a...f7e67a`](./contracts/ethereum-1/0x19a07afe97279cb6de1c9e73a13b7b0b63f7e67a/); ethereum `0x23e8d5...4721de`; ethereum `0x5c0806...83c6bb` | ⚠️ Unaudited |
| GVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1402c1...625ef3`](./contracts/ethereum-1/0x1402c1caa002354fc2c4a4cd2b4045a5b9625ef3/); ethereum `0x4d9c97...2d82db`; ethereum `0xae013d...0872d8` | ⚠️ Unaudited |
| LPTokenStaker | core_logic | ethereum | n/a | [`0x2e32ba...ed376c`](./contracts/ethereum-1/0x2e32bad45a1c29c1ea27cf4dd588df9e68ed376c/) | ⚠️ Unaudited |
| NonRebasingGToken | token | ethereum | n/a | [`0x3adb04...c52a0c`](./contracts/ethereum-1/0x3adb04e127b9c0a5d36094125669d4603ac52a0c/) | ⚠️ Unaudited |
| RebasingGToken | token | ethereum | n/a | [`0xf0a93d...3cb86b`](./contracts/ethereum-1/0xf0a93d4994b3d98fb5e3a2f90dbc2d69073cb86b/) | ⚠️ Unaudited |
| RedemptionPool | core_logic | ethereum | n/a | [`0x204d9d...27b6ef`](./contracts/ethereum-1/0x204d9de758217a39149767731a87bcc32427b6ef/) | ⚠️ Unaudited |
| RouterOracle | unknown | ethereum | n/a | 3 deployments: ethereum [`0xbd5ff7...2eec41`](./contracts/ethereum-1/0xbd5ff7ec8fe734eae41204d2cd0122cae22eec41/); ethereum `0xf66bba...100af9`; ethereum `0xfe620d...c62599` | ⚠️ Unaudited |
| SeniorTranche | unknown | ethereum | n/a | 2 deployments: ethereum [`0x77fbd7...b0a8a0`](./contracts/ethereum-1/0x77fbd7d2cddce76573001a48c90fa46aefb0a8a0/); ethereum `0xf0e004...0cf233` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | 2 deployments: ethereum [`0x21c591...bfd2f6`](./contracts/ethereum-1/0x21c5918ccb42d20a2368bdca8feda0399ebfd2f6/); ethereum `0x2ac5bc...67e9bb` | ⚠️ Unaudited |
| VaultAdaptorMK2 | core_logic | avalanche | n/a | [`0x606359...e3ef55`](./contracts/avalanche-43114/0x6063597b9356b246e706fd6a48c780f897e3ef55/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0xbcb91e...df4105`](./contracts/ethereum-1/0xbcb91e689114b9cc865ad7871845c95241df4105/) | ⚠️ Unaudited |
| WeightedPool | core_logic | ethereum | n/a | [`0x702605...7b31ba`](./contracts/ethereum-1/0x702605f43471183158938c1a3e5f5a359d7b31ba/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x05acf6...01372f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x062be1...3cafe0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x085873...c95748` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0aeee4...39fee0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0eee1e...71488d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x109c46...94f752` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10d415...2465de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11a2f8...2a4a08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1571d8...0029f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a4b50...411a38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b1ee9...9816aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f1f42...f9fb7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x299001...177846` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a4e5c...5cd1a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d63b9...ef4139` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33f5e1...f9df65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34f484...3899cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39bf32...d4a2b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bc1ba...c0a791` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x400ea1...8793d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4232e8...d165d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x437e8f...f716c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x43b6c0...290e50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44a0a4...6caea6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48cb6f...9e6a3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b05a9...a8855a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c4a81...ec3f74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4da038...1461eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x514c32...f1e0b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51e6cf...81fbed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x549e70...2498c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59b6b7...cb0a1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b4042...ca4113` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ebdf8...a6cead` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ec720...d504e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60e2d9...7245d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x651cdc...87a335` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d1e68...078328` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d4c2e...234188` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f15b6...af29bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x715b54...6173cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x720e5e...cc260d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x732a3a...a37a8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78ed7a...5244d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x791e95...bf5d64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79b14d...4635b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b4b44...90524f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x815d0e...51f0ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83cfa7...fc3e3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x845982...93df6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b958d...cd4f59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f4b3e...b3af2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92472c...65094b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x935f5b...0be04a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95d30d...f58012` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96527d...4b0c17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9741f6...690694` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9da6ad...f2c224` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ff07c...11ddf0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa18af2...d15a81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa69f30...c0615b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabac92...8ad3db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xacc4d9...730722` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad393d...d2448a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6b163...0f7dd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb90efd...f68801` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc118f2...b047b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc36dec...7b202a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8f647...8f1275` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc94dde...5d23d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb1f75...5e55fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbbcc5...3b4c9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcded5e...0ec165` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce5dc1...f285b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce6e6c...6e5866` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7e726...e610c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd89512...85b09f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbcf4f...404af9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc0c53...0db43b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdcbcc3...0f7232` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf1ebf...b49020` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe274ec...ee49b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe664b7...230682` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec7ff0...78ac28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xecd7a2...a25ad4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4d352...12c0d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf58aa7...e711c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6a028...fb3da4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe1dc5...343476` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3b4c90...18380f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3fb230...b73066` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4801de...93f50f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb31b81...8197d2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x02c133...31c720`](./contracts/ethereum-1/0x02c133b9fbffb8d2e8cb7b7a94c7c880b331c720/) | GMerkleVestor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd883e0...a30f0c`](./contracts/ethereum-1/0xd883e0e09bf3c4a54eadc404e12fa71605a30f0c/) | GMigration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ec879...0b74d7`](./contracts/ethereum-1/0x3ec8798b81485a254928b70cda1cf0a2bb0b74d7/) | GROToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb73247...338e03`](./contracts/ethereum-1/0xb732473b9b1e56f8d1e68bc3fd8bb65e9a338e03/) | GRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x748218...178360`](./contracts/ethereum-1/0x748218256afe0a19a88ebeb2e0c5ce86d2178360/) | GROVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72ad58...502128`](./contracts/ethereum-1/0x72ad58f0917deb04ec8b6ada584abd0dbe502128/) | GStrategyGuard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19a07a...f7e67a`](./contracts/ethereum-1/0x19a07afe97279cb6de1c9e73a13b7b0b63f7e67a/) | GTranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1402c1...625ef3`](./contracts/ethereum-1/0x1402c1caa002354fc2c4a4cd2b4045a5b9625ef3/) | GVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e32ba...ed376c`](./contracts/ethereum-1/0x2e32bad45a1c29c1ea27cf4dd588df9e68ed376c/) | LPTokenStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3adb04...c52a0c`](./contracts/ethereum-1/0x3adb04e127b9c0a5d36094125669d4603ac52a0c/) | NonRebasingGToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0a93d...3cb86b`](./contracts/ethereum-1/0xf0a93d4994b3d98fb5e3a2f90dbc2d69073cb86b/) | RebasingGToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x204d9d...27b6ef`](./contracts/ethereum-1/0x204d9de758217a39149767731a87bcc32427b6ef/) | RedemptionPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbd5ff7...2eec41`](./contracts/ethereum-1/0xbd5ff7ec8fe734eae41204d2cd0122cae22eec41/) | RouterOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77fbd7...b0a8a0`](./contracts/ethereum-1/0x77fbd7d2cddce76573001a48c90fa46aefb0a8a0/) | SeniorTranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x606359...e3ef55`](./contracts/avalanche-43114/0x6063597b9356b246e706fd6a48c780f897e3ef55/) | VaultAdaptorMK2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbcb91e...df4105`](./contracts/ethereum-1/0xbcb91e689114b9cc865ad7871845c95241df4105/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x702605...7b31ba`](./contracts/ethereum-1/0x702605f43471183158938c1a3e5f5a359d7b31ba/) | WeightedPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
