# Agentic Audit Brief: Merchant Moe

## Project Overview

- Project: Merchant Moe (`merchant-moe`)
- Website: [https://merchantmoe.com/](https://merchantmoe.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.607Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: mantle
- Contract surface: 43 unique implementations (59 raw deployments)
- DeFi Llama TVL: $19,069,354.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 46 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 10 common project-authored base contract(s) (moeerc20, clone, ownable2stepupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 139; live-surface contracts included: 54 (29 live, 25 unknown).
- Excluded by liveness: 85 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/17 (29.4%)
- Deployed-live implementations: 18 of 43 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/18
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 25
- Unique implementations: 43
- Raw deployments: 59
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 5 | 27.8% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MasterChef | unknown | mantle | n/a | [`0xa756f7d419e1a5cbd656a438443011a7de1955b5`](./contracts/mantle-5000/0xa756f7d419e1a5cbd656a438443011a7de1955b5/) | ✅ Audited |
| Moe | unknown | mantle | n/a | [`0x4515a45337f461a11ff0fe8abf3c606ae5dc00c9`](./contracts/mantle-5000/0x4515a45337f461a11ff0fe8abf3c606ae5dc00c9/) | ✅ Audited |
| MoeRouter | adapter | mantle | n/a | [`0xeaee7ee68874218c3558b40063c42b82d3e7232a`](./contracts/mantle-5000/0xeaee7ee68874218c3558b40063c42b82d3e7232a/) | ✅ Audited |
| VeMoe | unknown | mantle | n/a | [`0x55160b0f39848a7b844f3a562210489df301dee7`](./contracts/mantle-5000/0x55160b0f39848a7b844f3a562210489df301dee7/) | ✅ Audited |
| VestingContract | operational_periphery | mantle | n/a | 11 deployments: mantle [`0x1549de86b2de4f619663841b276b1a62002a14f6`](./contracts/mantle-5000/0x1549de86b2de4f619663841b276b1a62002a14f6/); mantle `0x3152999f15a1e3edccdd05eed143b02d7905a8c5`; mantle `0x3905f58e6cf1d43b113ec29f89b679ac87c157cd`; mantle `0x55d86a8f06856a902e2724cb8467c61bff7bb554`; mantle `0x55e5838e92fc2d6fb46eeae211c0bfa93783b689`; mantle `0x55edc7181ff91b877831955e44af9694f3993fbb`; mantle `0x78bb8f32bbcf2fb36d66508361a5f003fe02894f`; mantle `0x9208032889f9379b0b34ad10f31dc88dd0a925da`; mantle `0x9b86c2338ede1722a0dd4941561cd8e19080300f`; mantle `0xb9e9dc0f31f6756558686a8f6948bdbd1798f4c4`; mantle `0xffdeab5342e5370773a88b4fe0a6016c0f741602` | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FeeManager | governance | mantle | n/a | [`0x982ce53ab2c9d7b841af04d8df87879f73929b12`](./contracts/mantle-5000/0x982ce53ab2c9d7b841af04d8df87879f73929b12/) | ⚠️ Unaudited |
| JoeDexLens | unknown | mantle | n/a | 2 deployments: mantle [`0x0f60a665d2f1002b58e7c43a91953138fa61effa`](./contracts/mantle-5000/0x0f60a665d2f1002b58e7c43a91953138fa61effa/); mantle `0x511914365607075c12696b713f3eda20f27a86b3` | ⚠️ Unaudited |
| JoeStaking | unknown | mantle | n/a | 2 deployments: mantle [`0x79f316c45e9b62638a8304ffffa9806439b69d44`](./contracts/mantle-5000/0x79f316c45e9b62638a8304ffffa9806439b69d44/); mantle `0x7fb0fc8514d817c655276a2895307176f253d303` | ⚠️ Unaudited |
| LBFactory | registry | mantle | n/a | [`0xa6630671775c4ea2743840f9a5016dcf2a104054`](./contracts/mantle-5000/0xa6630671775c4ea2743840f9a5016dcf2a104054/) | ⚠️ Unaudited |
| LBRouter | adapter | mantle | n/a | [`0x013e138ef6008ae5fdfde29700e3f2bc61d21e3a`](./contracts/mantle-5000/0x013e138ef6008ae5fdfde29700e3f2bc61d21e3a/) | ⚠️ Unaudited |
| MoeStaking | unknown | mantle | n/a | 2 deployments: mantle [`0xb3938e6ee233e7847a5f17bb843e9bd0aa07e116`](./contracts/mantle-5000/0xb3938e6ee233e7847a5f17bb843e9bd0aa07e116/); mantle `0xe92249760e1443fbbea45b03f607ba84471fa793` | ⚠️ Unaudited |
| OdosRouterV2 | adapter | mantle | n/a | [`0xd9f4e85489adcd0baf0cd63b4231c6af58c26745`](./contracts/mantle-5000/0xd9f4e85489adcd0baf0cd63b4231c6af58c26745/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | mantle | n/a | [`0x7dc21ae1572350bf17e89f9e44e1b8b59240c579`](./contracts/mantle-5000/0x7dc21ae1572350bf17e89f9e44e1b8b59240c579/) | ⚠️ Unaudited |
| ProxyAdmin2Step | unknown | mantle | n/a | 2 deployments: mantle [`0x886523e92c7624825307626bdf5cbabc6ff6af2a`](./contracts/mantle-5000/0x886523e92c7624825307626bdf5cbabc6ff6af2a/); mantle `0xc96543130015b69ec282668f0f82195a87c06429` | ⚠️ Unaudited |
| RewarderFactory | unknown | mantle | n/a | 2 deployments: mantle [`0x18d3f4df4959503c5f2c8b562da3118939890025`](./contracts/mantle-5000/0x18d3f4df4959503c5f2c8b562da3118939890025/); mantle `0xe283db759720982094de7fc6edc49d3adf848943` | ⚠️ Unaudited |
| Router | adapter | mantle | n/a | [`0x45a62b090df48243f12a21897e7ed91863e2c86b`](./contracts/mantle-5000/0x45a62b090df48243f12a21897e7ed91863e2c86b/) | ⚠️ Unaudited |
| RouterLogic | adapter | mantle | n/a | [`0x4e2abccf08bb2103f5dc9c6517fcf34cc163ff20`](./contracts/mantle-5000/0x4e2abccf08bb2103f5dc9c6517fcf34cc163ff20/) | ⚠️ Unaudited |
| StableMoe | unknown | mantle | n/a | 2 deployments: mantle [`0x5ab84d68892e565a8bf077a39481d5f69edaac02`](./contracts/mantle-5000/0x5ab84d68892e565a8bf077a39481d5f69edaac02/); mantle `0xb5bd280567c5a62df1a5570c88e63a5670cba22d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (25)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | mantle | n/a | `0x0318394084c5da8c35a6a2d274518a4a1eb89eef` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x0980d129a85659cc4e40e5db6d9926472e658aa6` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1f8642a8bc400385f6b8888b2568207c38a0bf68` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x227dfd9fa88bfe186682f3a45597bac051742e5f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x28104d4f703ee5b5011cefe106f54efd56f33f95` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2d8879046f1559e53eb052e949e9544bcb72f414` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4e3288c9ca110bcc82bf38f09a7b425c095d92bf` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4e90421bc4ab6cb764824ca3126ffa95bcb1f5a7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x5cf0dc0fd208f8f1b386792eeb22125c2ec0049e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x654677554c9b81263b638c2d6d78d6b7322944c1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x7097f097ca0e3a3ed7ba23116b8ba14c37e61476` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x794373811a81a25afe479171486e65d6eb941579` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x7d2b63a9ab475397d9c247468803f25cf6523b76` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x85bd14359cb96fd8e308262726ba6b1aee5fdba9` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x88de50b233052e4fb783d4f6db78cc34fea3e9fc` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x8c5ee215d665fc2cc8e2b96a22b9d44912af58ab` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x8d3d65f675f096db9f27fc4162757a5162ef103a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x926faafce6148884cd5cf98cd1878f865e8911bf` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xa669e7a0d4b3e4fa48af2de86bd4cd7126be4e13` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xac041df48df9791b0654f1dbbf2cc8450c5f2e9d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xca423977156bb05b13a2ba3b76bc5419e2fe9680` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xcefcc8fd00d874522edbe25a2cdc9178f4ca9159` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xcf5540fffcdc3d510b18bfca6d2b9987b0772559` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xcfe3d300a9f9c7e3dd74007f8a46055efc493e5e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xd804ba88371a3f00ddaca03cbc2b6c47f38105fc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [paladinsec.co/projects/merchant-moe](https://paladinsec.co/projects/merchant-moe) | Paladin | Audit | 2023-12 | stale | Direct | contract_name | 5 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mantle | [`0x982ce53ab2c9d7b841af04d8df87879f73929b12`](./contracts/mantle-5000/0x982ce53ab2c9d7b841af04d8df87879f73929b12/) | FeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x0f60a665d2f1002b58e7c43a91953138fa61effa`](./contracts/mantle-5000/0x0f60a665d2f1002b58e7c43a91953138fa61effa/) | JoeDexLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x79f316c45e9b62638a8304ffffa9806439b69d44`](./contracts/mantle-5000/0x79f316c45e9b62638a8304ffffa9806439b69d44/) | JoeStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xa6630671775c4ea2743840f9a5016dcf2a104054`](./contracts/mantle-5000/0xa6630671775c4ea2743840f9a5016dcf2a104054/) | LBFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x013e138ef6008ae5fdfde29700e3f2bc61d21e3a`](./contracts/mantle-5000/0x013e138ef6008ae5fdfde29700e3f2bc61d21e3a/) | LBRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xb3938e6ee233e7847a5f17bb843e9bd0aa07e116`](./contracts/mantle-5000/0xb3938e6ee233e7847a5f17bb843e9bd0aa07e116/) | MoeStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xd9f4e85489adcd0baf0cd63b4231c6af58c26745`](./contracts/mantle-5000/0xd9f4e85489adcd0baf0cd63b4231c6af58c26745/) | OdosRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x886523e92c7624825307626bdf5cbabc6ff6af2a`](./contracts/mantle-5000/0x886523e92c7624825307626bdf5cbabc6ff6af2a/) | ProxyAdmin2Step | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x18d3f4df4959503c5f2c8b562da3118939890025`](./contracts/mantle-5000/0x18d3f4df4959503c5f2c8b562da3118939890025/) | RewarderFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x45a62b090df48243f12a21897e7ed91863e2c86b`](./contracts/mantle-5000/0x45a62b090df48243f12a21897e7ed91863e2c86b/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x4e2abccf08bb2103f5dc9c6517fcf34cc163ff20`](./contracts/mantle-5000/0x4e2abccf08bb2103f5dc9c6517fcf34cc163ff20/) | RouterLogic | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x5ab84d68892e565a8bf077a39481d5f69edaac02`](./contracts/mantle-5000/0x5ab84d68892e565a8bf077a39481d5f69edaac02/) | StableMoe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 25 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=5

Fork inheritance lineage and inherited audits are included when available.
