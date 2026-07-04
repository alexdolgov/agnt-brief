# Agentic Audit Brief: Arbitrum Exchange

⚠️ Lifecycle status: DEAD - TVL dropped 18.5% over 90 days

## Project Overview

- Project: Arbitrum Exchange (`arbitrum-exchange`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-07-03T21:05:30.093Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: arbitrum
- Contract surface: 136 unique implementations (138 raw deployments)
- DeFi Llama TVL: $11,643.00
- On-chain TVL (included contracts): $3,206.49
- TVL by chain: Arbitrum $3,206.49

## Project Description

Structural profile: 22 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts are linked by 3 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 221; live-surface contracts included: 138 (8 live, 130 unknown).
- Excluded by liveness: 83 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/6 (50.0%)
- Deployed-live implementations: 6 of 136 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/6
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 130
- Unique implementations: 136
- Raw deployments: 138
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 50.0% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArxToken | token | arbitrum | n/a | 2 deployments: arbitrum [`0x94e0e9...002486`](./contracts/arbitrum-42161/0x94e0e99759753d4ad17e508cf7ee25d2ea002486/); arbitrum `0xd5954c...8aee84` | ✅ Audited |
| ARXPool | core_logic | arbitrum | n/a | [`0xee1d57...2fbfc8`](./contracts/arbitrum-42161/0xee1d57ace6350d70e8161632769d29d34b2fbfc8/) | ✅ Audited |
| MasterChef | unknown | arbitrum | n/a | [`0xd2bcfd...053a06`](./contracts/arbitrum-42161/0xd2bcfd6b84e778d2de5bb6a167ecbbef5d053a06/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArbiDexRouter | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x3e4829...914975`](./contracts/arbitrum-42161/0x3e48298a5fe88e4d62985dff65dee39a25914975/); arbitrum `0x7238fb...e57aac` | ⚠️ Unaudited |
| ArbiDexZapV1 | adapter | arbitrum | n/a | [`0x97c397...e85f21`](./contracts/arbitrum-42161/0x97c397b23836ebaa1f5602894caa469537e85f21/) | ⚠️ Unaudited |
| SmartChefInitializable | unknown | arbitrum | n/a | [`0x75bca5...30265a`](./contracts/arbitrum-42161/0x75bca51be93e97ff7d3198506f368b472730265a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (130)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x042eba...ad7a20` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x04ed47...8af243` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0b7690...0117e8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0ea166...2b57f6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x10cac6...3ac49b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x11646d...c6f732` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x16381b...37b5a0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x164eb6...e73d45` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x19b03f...9c068e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1a378e...a94224` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1bac1e...43af5f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1bbc0f...eae536` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1d58f2...586bf9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1f157f...23314b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1fbfb4...ce869f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x220767...04ba6e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x22919f...92073f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2462bc...7b23a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2546ff...20df9f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x28300f...e41e6e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x29a94d...4f535c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2b7142...1c2ab2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2d5133...f8faf1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2fe04f...433875` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x314e8d...2576b6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x31d2f5...711869` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x32012d...107fb7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x323423...c1cd49` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x345752...b152bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3480c9...9e77bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x34ff1d...9ca1b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x370820...f3f81c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x37f7df...3a2499` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x385e59...80ff24` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3a2de0...db6e1e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3bb65f...ea529a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3c89ba...c6f89a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3e05b5...077d25` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3ead89...339c97` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3eee2f...a8599d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x460971...ccb89b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4928c4...42a6ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4a1862...e83b44` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4eaf26...c02d73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4ef1a7...6923ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x518126...8a1ea0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x523ad4...9e21b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5294cd...75d095` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x54de45...0317f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5c9185...4398a0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5d14ef...3bc1e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5dd7cb...a16e24` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5edd20...53d04b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5f76c5...6ad4cc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x619e1f...83813b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x63cbd2...f8f52d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x661fff...12f6ea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6989ba...bc64ee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6ad800...6dd1c8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x734256...e5dc7a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x763fb9...e5e05c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x78db95...d4487e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7be633...1ded77` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7e38b1...ac9907` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7e6209...43bcf2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7f3728...ab3edb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7f7c41...19eebc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7fdcaa...f36b24` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x840ce1...73c3aa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x856cfd...39754e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8614e4...b0f46f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x87c3a3...8e7c1a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x883142...e74179` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a02e0...2f1655` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a56af...b90431` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8b7caf...15bea4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8e4cf6...0ca720` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8f147f...bd42ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x941fa3...e18eaa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x99445b...12671a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9a2eeb...d7b060` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9bf6a5...66d4c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9c6652...aa1f70` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9cb311...8be3f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9ce1e8...a7c261` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9d6996...bb7053` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9e6072...5b21c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9eb712...af5b0f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa00db0...e98abd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa491a9...2225c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa4fe93...acb869` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa634bf...08ce44` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa7a417...b95c56` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xacfa30...ba8ea8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xad4871...06a383` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xad7c6f...a58aaa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xafa76a...90fc1d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb20cd3...df3d12` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb2907e...7adec3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb357aa...56255a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb37178...67dd0f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb84300...692c79` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba99c1...f83a42` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbf21f5...a414f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc0ecec...a5d7f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc25a72...551e1b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc4f0b8...1acdb1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc77d0b...63344c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc90816...b529e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc9186b...1d1d44` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xca017c...4b1b3d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcd7d01...880852` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd0f9e9...e4dac3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd1685a...54f023` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd40956...beb7d7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd4acac...cb9caf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd75f0c...fcc27e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xda7338...f78378` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xddfa87...c00ae1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe2d77b...a5fa6b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe744c7...dff7a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7c233...f2c908` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xec81e4...212c1d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xedb745...906ba6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf088e3...23d769` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf0e8d8...3429c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf1fed2...103120` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf3069a...59f9dc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf3a306...afa3ab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfcd9d0...8a421f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ARBITRUM EXCHANGE Full AUDIT Report.pdf](https://github.com/Vital-block/Smart-Contract-Audit/blob/03c1a811a69f8e459264c22d140cba99b3a518da/ARBITRUM%20EXCHANGE%20Full%20AUDIT%20Report.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x3e4829...914975`](./contracts/arbitrum-42161/0x3e48298a5fe88e4d62985dff65dee39a25914975/) | ArbiDexRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x97c397...e85f21`](./contracts/arbitrum-42161/0x97c397b23836ebaa1f5602894caa469537e85f21/) | ArbiDexZapV1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x75bca5...30265a`](./contracts/arbitrum-42161/0x75bca51be93e97ff7d3198506f368b472730265a/) | SmartChefInitializable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 130 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Fork inheritance lineage and inherited audits are included when available.
