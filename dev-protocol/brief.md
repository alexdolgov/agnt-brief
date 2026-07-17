# Agentic Audit Brief: Dev Protocol

## Project Overview

- Project: Dev Protocol (`dev-protocol`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.044Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum
- Contract surface: 56 unique implementations (85 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 50 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 16 common project-authored base contract(s) (dip1, usingconfig, lockupstorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 224; live-surface contracts included: 85 (40 live, 45 unknown).
- Excluded by liveness: 139 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/11 (27.3%)
- Deployed-live implementations: 11 of 56 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/11
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 45
- Unique implementations: 56
- Raw deployments: 85
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 3 | 27.3% | 2020-09 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Dev | unknown | ethereum | n/a | [`0x5caf454ba92e6f2c929df14667ee360ed9fd5b26`](./contracts/ethereum-1/0x5caf454ba92e6f2c929df14667ee360ed9fd5b26/) | ✅ Audited |
| Lockup | unknown | ethereum | n/a | 18 deployments: ethereum [`0x093ec4e2f80f8860a635ca6b4768a9d81911805e`](./contracts/ethereum-1/0x093ec4e2f80f8860a635ca6b4768a9d81911805e/); ethereum `0x1440ac02e0f8a8bbe1451d98a2a6b14b6f0179b7`; ethereum `0x24f114cd3aca5564b69e8725c4943d7d771942ad`; ethereum `0x2a2273dc6857be5043b328eb3c1dc87680e830bb`; ethereum `0x2c4f839f0be5728756c67b9ea86e46d844cb1b0d`; ethereum `0x34c64ad297630e9c7e322c7418c27511729eb6e2`; ethereum `0x474956cf9fab3f5792d4ab86ad6d59db27748ec2`; ethereum `0x54cb6a94d7191df4e4b6f9c6ce225427c0038593`; ethereum `0x70d1ed0d0546f99f3d220e9f5cf29940f2a80837`; ethereum `0x7b1104a2c5c1bb4b55e17e36d1831e4592e52dda`; ethereum `0x88b02acdea36255166fee91d5e6c98b8fc4c9983`; ethereum `0x945c25908c12c2db0c0632d58e13057fc9d53044`; ethereum `0x98ed669c30f06fefafdc2715c675ad02e3d0bfd3`; ethereum `0xb3007c1961497aa112d731157f8fc227d834ddb5`; ethereum `0xbd2a75e11de78af8d58595fb16181d505777804f`; ethereum `0xbd3ac1105a2a5175e259e9b91f8ce18fba8aea43`; ethereum `0xe1653f19cf36dc7dd315f5ec2cb39d722e92fe86`; ethereum `0xf022e7b91b819fbdcc1178bd1b3ce3cfa2fdd303` | ✅ Audited |
| Withdraw | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x1fd4cc54564f880d267d8cb75f60b04f4777843b`](./contracts/ethereum-1/0x1fd4cc54564f880d267d8cb75f60b04f4777843b/); ethereum `0x5f99f77ef4d976f946099741a860bb136f8bde19`; ethereum `0xeaabdb7db40eb720ae199875e13756a640d984bb` | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Decimals | unknown | ethereum | n/a | [`0x6190a479cfafcb1637f5485366bcbce418a68a4d`](./contracts/ethereum-1/0x6190a479cfafcb1637f5485366bcbce418a68a4d/) | ⚠️ Unaudited |
| EternalStorage | unknown | ethereum | n/a | [`0x8d643f228fdabf5eaf3dd97eb73e52635ea43463`](./contracts/ethereum-1/0x8d643f228fdabf5eaf3dd97eb73e52635ea43463/) | ⚠️ Unaudited |
| LockupStorage | unknown | ethereum | n/a | 5 deployments: ethereum [`0x46218adedfe50a6e9c9334fd40419b5624a65594`](./contracts/ethereum-1/0x46218adedfe50a6e9c9334fd40419b5624a65594/); ethereum `0x5376872a5882e828680979683388dc143c251ff2`; ethereum `0x6577adb85e955ef28cfb2a02ec1826a6e5923e8a`; ethereum `0xa029e82b7b396c85070e80a1b519b9a291357fe9`; ethereum `0xce45ee65ca2d3c8854190f87d21dea92c72cb233` | ⚠️ Unaudited |
| MarketFactory | unknown | ethereum | n/a | 4 deployments: ethereum [`0xb56a25a79a155849497426a5cb7a59c020732782`](./contracts/ethereum-1/0xb56a25a79a155849497426a5cb7a59c020732782/); ethereum `0xe47e6e0330538f0cca6b42dfee8d489c6a3100df`; ethereum `0xe91fbfd66136e693e8d4c9d58be827e798e68605`; ethereum `0xead290c1dc88709b3bf304fb56dc2b58970c278a` | ⚠️ Unaudited |
| MarketGroup | unknown | ethereum | n/a | [`0x54eeff7ad1e35f7395b1b4f4c86ec113eb66f242`](./contracts/ethereum-1/0x54eeff7ad1e35f7395b1b4f4c86ec113eb66f242/) | ⚠️ Unaudited |
| MigrateLockup | unknown | ethereum | n/a | [`0xe43d4734f7dc7184e6d4afe0ec54c73b0ed922c6`](./contracts/ethereum-1/0xe43d4734f7dc7184e6d4afe0ec54c73b0ed922c6/) | ⚠️ Unaudited |
| MigrateWithdraw | unknown | ethereum | n/a | [`0x09e989a431321fa953bf9167c215b50e3a90937f`](./contracts/ethereum-1/0x09e989a431321fa953bf9167c215b50e3a90937f/) | ⚠️ Unaudited |
| WithdrawStorage | unknown | ethereum | n/a | 4 deployments: ethereum [`0x6d4988238b6396d15a63ed675d96dd4d86a70f2f`](./contracts/ethereum-1/0x6d4988238b6396d15a63ed675d96dd4d86a70f2f/); ethereum `0x890275d5797963678bfff0944776c1646144830e`; ethereum `0xb207a28fbda1c0b2f7ae43c4f3eb1fcd5ebaacfc`; ethereum `0xf66145a19f2661a3e627c7dacf3c58898e946150` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (45)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0a8f97bfb90524395e3e60280bc2ae9743f3329c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x189815963867386d1ec439b4f0be6cfa37186b36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a2b49e10013c40aac9b6f9e785837bfd329e5e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2397b1143a1fefe1e621ae38e2750dc9921b1060` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24f5f2a31a4879c40469d3fb711bb74cf586258e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2fe0cd62135d56e3341101175f9833199b3cfa9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32533f5c8ef96efe442c89f8cb38e21125622740` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3590f2df8185c6e257e7e9c8e87530971dfa231d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d702d8c429101c299f7599e3883eae1c5e75f7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x42767b12d3f07be0d951a64ee6573b40ff165c4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45823863d452eb1e57d9b5e79baa0aa6d62a2cfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b1dbc880574d36772e5e138c0ed7718fe323bd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56ff6f36287ab1d9a8ffcb498e96ff1051b4fa0e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5862fb8c0d66310a836914dd1f164f28e5382845` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65b2b8fe3b232bebdd08599722a32b822e7b35cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x707846758598b3a61f41038501dcd17e5615bd36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72f06a3ee08d10c35c674b3a0c25cfe5ea2e17cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b0b23878a3b98a9839af1541e79ff44e8dfb599` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e026ea54f20e08d0149f4b16aa091297f09d96f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8140a5e33bcf648f7e2c2077da57e982f00ac073` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x926d9cb13bab3482836566c423cfe6a3bc910330` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0ee4125c2fe9683e86f423f4838bc94694237a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2d49ef868b3f8c9501ff9bc836f0679a45e121c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5577d1cec2583058a6bd6d5deac44797c205701` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9455c4de50cdb5db699cf76cfccaef5bda7ca2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac4143de0807e78c7a38274b525a11b021b2278a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf31dddaf0f48d2b89d3fb0de62adddfcb787ff6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0a2e675ef3b133acdeb2313800dea23d9df443b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3bbc4d13603b5696f5a257f5c6eaad62ea39695` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5f3e636f5e9376854457420d83bfb32281264de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb647021f19a99893bb35432d4c97fda31504a932` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb67405df6ce651f60f2764f0a53b44268d9f947a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba4ba49cef141a1469f92ff8f10541487cf85e15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb4b509f08da1ee4bc0d1cd1098a995d4fec392d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbef4deea3ae863739bd402e025c749536f491ffa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc02e330d211bd8b6d3264536fc3295104707671f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc758ea236c8c526b3d72f4b10df8f0e2142d11ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc90dd148c5065160734999fa3cd12cc25d723df5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdffe2707d47ce61f03ae4c59fe5fc1c46c406cc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe66d0ec72b9e9293996ccfa897784c9fee1051e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7a21c310c2344fff2272e5000533be76cd0c52a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe90a839fb1e1c4cbfdc716c3ce49a525b7cd80d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea518ab9551d3cd9ec4c74df1fa6946b18212178` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb2fee1cfb535da04054bcea7a1a4bcb52265925` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedcf7765b7be6415d02173e4645604bb1a377929` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit-report__quantstamp--sept-15-2020.pdf](https://github.com/dev-protocol/protocol/blob/main/docs/audit-report__quantstamp--sept-15-2020.pdf) | Quantstamp | Audit | 2020-09 | stale | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x6190a479cfafcb1637f5485366bcbce418a68a4d`](./contracts/ethereum-1/0x6190a479cfafcb1637f5485366bcbce418a68a4d/) | Decimals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d643f228fdabf5eaf3dd97eb73e52635ea43463`](./contracts/ethereum-1/0x8d643f228fdabf5eaf3dd97eb73e52635ea43463/) | EternalStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46218adedfe50a6e9c9334fd40419b5624a65594`](./contracts/ethereum-1/0x46218adedfe50a6e9c9334fd40419b5624a65594/) | LockupStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb56a25a79a155849497426a5cb7a59c020732782`](./contracts/ethereum-1/0xb56a25a79a155849497426a5cb7a59c020732782/) | MarketFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54eeff7ad1e35f7395b1b4f4c86ec113eb66f242`](./contracts/ethereum-1/0x54eeff7ad1e35f7395b1b4f4c86ec113eb66f242/) | MarketGroup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe43d4734f7dc7184e6d4afe0ec54c73b0ed922c6`](./contracts/ethereum-1/0xe43d4734f7dc7184e6d4afe0ec54c73b0ed922c6/) | MigrateLockup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09e989a431321fa953bf9167c215b50e3a90937f`](./contracts/ethereum-1/0x09e989a431321fa953bf9167c215b50e3a90937f/) | MigrateWithdraw | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d4988238b6396d15a63ed675d96dd4d86a70f2f`](./contracts/ethereum-1/0x6d4988238b6396d15a63ed675d96dd4d86a70f2f/) | WithdrawStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 45 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Fork inheritance lineage and inherited audits are included when available.
