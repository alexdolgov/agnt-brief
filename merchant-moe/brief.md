# Agentic Audit Brief: Merchant Moe

⚠️ Lifecycle status: UNKNOWN - TVL dropped 37.3% over 90 days

## Project Overview

- Project: Merchant Moe (`merchant-moe`)
- Website: [https://merchantmoe.com/](https://merchantmoe.com/)
- Lifecycle: unknown (Tier 0, 78.4% below peak)
- Generated: 2026-05-26T15:43:31.482Z
- Pipeline run: v2-pipeline-2026-05-26-695c23-aaf8
- Chains: mantle
- Contract surface: 53 unique implementations (133 raw deployments)
- DeFi Llama TVL: $37,263,684.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Merchant Moe is a decentralized exchange (DEX) on Mantle that uses a Liquidity Book model for efficient trading. It also offers staking and yield farming through its MOE token and related contracts.

### Architecture

The LBFactory creates and manages liquidity pools, while the Moe token is used for governance and incentives. Staking and farming contracts (MasterChef, MoeStaking, VeMoe) interact with the Moe token to distribute rewards, and the JoeDexLens provides on-chain data for the DEX.

## Audit Coverage Summary

- Verified implementations audited: 14/28 (50.0%)
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 2
- Unverified implementations: 25
- Unique implementations: 53
- Raw deployments: 133
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 14 | 50.0% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| JoeStaking | unknown | mantle | [`0x7fb0fc...53d303`](./contracts/mantle-5000/0x7fb0fc8514d817c655276a2895307176f253d303/) | ✅ Audited |
| JoeStakingRewarder | unknown | mantle | [`0x1d1632...f08dd6`](./contracts/mantle-5000/0x1d16326ba904546b4da88d357dd556ebe1f08dd6/) | ✅ Audited |
| MasterChef | unknown | mantle | 5 deployments: mantle [`0x10cc20...a3e9e6`](./contracts/mantle-5000/0x10cc20df4f69bfeca8283d68c48fa5b1d4a3e9e6/); mantle `0x76d8d0...9b0cb5`; mantle `0xa756f7...1955b5`; mantle `0xd4bd5e...523dcc`; mantle `0xeb1d08...73ce2a` | ✅ Audited |
| MasterChefRewarder | unknown | mantle | 8 deployments: mantle [`0x2759a5...0a2678`](./contracts/mantle-5000/0x2759a51fc109bc7c4d227e526e148e22f90a2678/); mantle `0x3b3a66...9a5181`; mantle `0x4141be...11b61a`; mantle `0x6b9b71...132b33`; mantle `0x75f0d0...5a0875`; mantle `0xb02e02...7167fd`; mantle `0xcc076c...d2e938`; mantle `0xf5d738...310012` | ✅ Audited |
| Moe | unknown | mantle | 2 deployments: mantle [`0x4515a4...dc00c9`](./contracts/mantle-5000/0x4515a45337f461a11ff0fe8abf3c606ae5dc00c9/); mantle `0x8764ab...161494` | ✅ Audited |
| MoeFactory | registry | mantle | 3 deployments: mantle [`0x5bef01...4bedec`](./contracts/mantle-5000/0x5bef015ca9424a7c07b68490616a4c1f094bedec/); mantle `0xc850df...92c5d2`; mantle `0xea2a8c...6846e0` | ✅ Audited |
| MoePair | unknown | mantle | 2 deployments: mantle [`0x08477e...69c28b`](./contracts/mantle-5000/0x08477e01a19d44c31e4c11dc2ac86e3bbe69c28b/); mantle `0xcb61a1...c8468b` | ✅ Audited |
| MoeRouter | adapter | mantle | 3 deployments: mantle [`0xaf6278...ffdeb8`](./contracts/mantle-5000/0xaf627839850143043415925bc77c00c01effdeb8/); mantle `0xeaee7e...e7232a`; mantle `0xf311d5...376ce5` | ✅ Audited |
| MoeStaking | unknown | mantle | 2 deployments: mantle [`0xb3938e...07e116`](./contracts/mantle-5000/0xb3938e6ee233e7847a5f17bb843e9bd0aa07e116/); mantle `0xe92249...1fa793` | ✅ Audited |
| RewarderFactory | registry | mantle | 2 deployments: mantle [`0x18d3f4...890025`](./contracts/mantle-5000/0x18d3f4df4959503c5f2c8b562da3118939890025/); mantle `0xe283db...848943` | ✅ Audited |
| StableMoe | unknown | mantle | 2 deployments: mantle [`0x5ab84d...daac02`](./contracts/mantle-5000/0x5ab84d68892e565a8bf077a39481d5f69edaac02/); mantle `0xb5bd28...cba22d` | ✅ Audited |
| VeMoeRewarder | unknown | mantle | 7 deployments: mantle [`0x151b82...d6aea8`](./contracts/mantle-5000/0x151b82ca3a0c9da9dfde200f9c527cd89dd6aea8/); mantle `0x247af2...bfdcf1`; mantle `0x7399aa...55b1e5`; mantle `0x8eb084...1ee254`; mantle `0xa3a1a6...2daaa5`; mantle `0xbbf381...28136c`; mantle `0xda781a...84f2c4` | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| FeeCollector | unknown | mantle | [`0x97c62c...658b63`](./contracts/mantle-5000/0x97c62c289e3a76104f0e73db62bfa05fb9658b63/) | ⚠️ Unaudited |
| FeeConverterOdos | unknown | mantle | 2 deployments: mantle [`0xae6321...307298`](./contracts/mantle-5000/0xae63213b0c22f0e7fff46c1b1cdf9d07ed307298/); mantle `0xf4a929...124e8c` | ⚠️ Unaudited |
| FeeManager | governance | mantle | [`0x982ce5...929b12`](./contracts/mantle-5000/0x982ce53ab2c9d7b841af04d8df87879f73929b12/) | ⚠️ Unaudited |
| ForwarderLogic | unknown | mantle | 2 deployments: mantle [`0xb07877...83c146`](./contracts/mantle-5000/0xb0787776ff90881cec3a0b8e3e91973e6183c146/); mantle `0xc04f29...ce8430` | ⚠️ Unaudited |
| LBFactory | registry | mantle | [`0xa66306...104054`](./contracts/mantle-5000/0xa6630671775c4ea2743840f9a5016dcf2a104054/) | ⚠️ Unaudited |
| LBQuoter | periphery | mantle | [`0x501b8a...316c85`](./contracts/mantle-5000/0x501b8afd35df20f531ff45f6f695793ac3316c85/) | ⚠️ Unaudited |
| LBRouter | adapter | mantle | [`0x013e13...d21e3a`](./contracts/mantle-5000/0x013e138ef6008ae5fdfde29700e3f2bc61d21e3a/) | ⚠️ Unaudited |
| MoeHelper | periphery | mantle | 2 deployments: mantle [`0x3f0e20...78ca90`](./contracts/mantle-5000/0x3f0e209213d93508a451d521fd758cbc3b78ca90/); mantle `0xfe8b6a...2d2d7a` | ⚠️ Unaudited |
| MoeLens | periphery | mantle | 3 deployments: mantle [`0x768571...c8de7a`](./contracts/mantle-5000/0x768571ab818d5fae3bf7b137f7364e6148c8de7a/); mantle `0xaa61e8...7698ba`; mantle `0xdab599...da1f55` | ⚠️ Unaudited |
| MoeQuoter | periphery | mantle | 3 deployments: mantle [`0x1d0657...5be1a4`](./contracts/mantle-5000/0x1d0657af320b7108919e4ef0616ef6cd005be1a4/); mantle `0x1e47b3...31e99d`; mantle `0x72b507...2b59f4` | ⚠️ Unaudited |
| OdosRouterV2 | adapter | mantle | [`0xd9f4e8...c26745`](./contracts/mantle-5000/0xd9f4e85489adcd0baf0cd63b4231c6af58c26745/) | ⚠️ Unaudited |
| ProxyAdmin2Step | governance | mantle | 2 deployments: mantle [`0x886523...f6af2a`](./contracts/mantle-5000/0x886523e92c7624825307626bdf5cbabc6ff6af2a/); mantle `0xc96543...c06429` | ⚠️ Unaudited |
| Router | adapter | mantle | [`0x45a62b...e2c86b`](./contracts/mantle-5000/0x45a62b090df48243f12a21897e7ed91863e2c86b/) | ⚠️ Unaudited |
| RouterLogic | adapter | mantle | 2 deployments: mantle [`0x4e2abc...63ff20`](./contracts/mantle-5000/0x4e2abccf08bb2103f5dc9c6517fcf34cc163ff20/); mantle `0xb35033...dff9cf` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| VeMoe | unknown | mantle | 4 deployments: mantle [`0x240616...f14ef1`](./contracts/mantle-5000/0x240616e2448e078934863fb6eb5133834bf14ef1/); mantle `0x4ceabd...920e4c`; mantle `0x55160b...01dee7`; mantle `0x79f316...b69d44` | ✅ Audited (bytecode match) |
| VestingContract | operational_periphery | mantle | 43 deployments: mantle [`0x057b2f...d47494`](./contracts/mantle-5000/0x057b2f6cc9b17497613435c6590d2e601ad47494/); mantle `0x0a7a82...712048`; mantle `0x1549de...2a14f6`; mantle `0x183d63...c1b02c`; mantle `0x1c6c83...0c87e8`; mantle `0x1fbfc1...1e9fec`; mantle `0x315299...05a8c5`; mantle `0x3905f5...c157cd`; mantle `0x3f6cc1...eec185`; mantle `0x428177...deb515`; mantle `0x4a984b...e8cb8e`; mantle `0x4d46b8...70f0b5`; mantle `0x50554c...c62fe7`; mantle `0x55d86a...7bb554`; mantle `0x55e583...83b689`; mantle `0x55edc7...993fbb`; mantle `0x60fded...332d7c`; mantle `0x62fb9b...314a75`; mantle `0x70cd9e...be6c2f`; mantle `0x7520ae...267c85`; mantle `0x78bb8f...02894f`; mantle `0x7c7018...02dd8b`; mantle `0x82e8ae...d6855b`; mantle `0x83d76d...e64d0b`; mantle `0x8d8d3b...1b00ce`; mantle `0x920803...a925da`; mantle `0x9b5b4c...93de31`; mantle `0x9b86c2...80300f`; mantle `0xa0e97c...89dde1`; mantle `0xb342bf...695554`; mantle `0xb9e9dc...98f4c4`; mantle `0xb9f72c...512295`; mantle `0xc20ba4...43dc9f`; mantle `0xd9ecef...726ef0`; mantle `0xe273bf...6f9c22`; mantle `0xe4d55a...b9c747`; mantle `0xe660b7...d544a9`; mantle `0xe88778...5d2948`; mantle `0xeff8ee...047c1c`; mantle `0xfbdd09...8161f0`; mantle `0xfd0adb...01a291`; mantle `0xfd4085...4afde3`; mantle `0xffdeab...741602` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (25)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | mantle | `0x031839...b89eef` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x0980d1...658aa6` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x1f8642...a0bf68` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x227dfd...742e5f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x28104d...f33f95` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x2d8879...72f414` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x4e3288...5d92bf` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x4e9042...b1f5a7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x5cf0dc...c0049e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x654677...2944c1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x7097f0...e61476` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x794373...941579` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x7d2b63...523b76` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x85bd14...5fdba9` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x88de50...a3e9fc` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x8c5ee2...af58ab` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x8d3d65...ef103a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x926faa...8911bf` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xa669e7...be4e13` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xac041d...5f2e9d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xca4239...fe9680` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xcefcc8...ca9159` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xcf5540...772559` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xcfe3d3...493e5e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xd804ba...8105fc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Merchant Moe Audit Report](https://paladinsec.co/projects/merchant-moe) | Paladin | Audit | 2023-12 | stale | Direct | contract_name | 83 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mantle | [`0x97c62c...658b63`](./contracts/mantle-5000/0x97c62c289e3a76104f0e73db62bfa05fb9658b63/) | FeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x982ce5...929b12`](./contracts/mantle-5000/0x982ce53ab2c9d7b841af04d8df87879f73929b12/) | FeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xb07877...83c146`](./contracts/mantle-5000/0xb0787776ff90881cec3a0b8e3e91973e6183c146/) | ForwarderLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xa66306...104054`](./contracts/mantle-5000/0xa6630671775c4ea2743840f9a5016dcf2a104054/) | LBFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x501b8a...316c85`](./contracts/mantle-5000/0x501b8afd35df20f531ff45f6f695793ac3316c85/) | LBQuoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x013e13...d21e3a`](./contracts/mantle-5000/0x013e138ef6008ae5fdfde29700e3f2bc61d21e3a/) | LBRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x3f0e20...78ca90`](./contracts/mantle-5000/0x3f0e209213d93508a451d521fd758cbc3b78ca90/) | MoeHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x768571...c8de7a`](./contracts/mantle-5000/0x768571ab818d5fae3bf7b137f7364e6148c8de7a/) | MoeLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x1d0657...5be1a4`](./contracts/mantle-5000/0x1d0657af320b7108919e4ef0616ef6cd005be1a4/) | MoeQuoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x45a62b...e2c86b`](./contracts/mantle-5000/0x45a62b090df48243f12a21897e7ed91863e2c86b/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x4e2abc...63ff20`](./contracts/mantle-5000/0x4e2abccf08bb2103f5dc9c6517fcf34cc163ff20/) | RouterLogic | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=83

Fork inheritance lineage and inherited audits are included when available.
