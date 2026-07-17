# Agentic Audit Brief: QIAN

## Project Overview

- Project: QIAN (`qian`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.303Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: ethereum
- Contract surface: 101 unique implementations (101 raw deployments)
- DeFi Llama TVL: $3,610.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Synthetics. Structurally: 15 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 3 common project-authored base contract(s) (upgradeabilityproxy, proxy, versionedinitializable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 129; live-surface contracts included: 101 (3 live, 98 unknown).
- Excluded by liveness: 28 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 3 of 101 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 98
- Unique implementations: 101
- Raw deployments: 101
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | proxy | ethereum | n/a | [`0x5e60fcca904753a31f9df7d7f6b7856b6ec27aa9`](./contracts/ethereum-1/0x5e60fcca904753a31f9df7d7f6b7856b6ec27aa9/) | ⚠️ Unaudited |
| Coin | unknown | ethereum | n/a | [`0x59d4ccc94a9c4c3d3b4ba2aa343a9bdf95145dd1`](./contracts/ethereum-1/0x59d4ccc94a9c4c3d3b4ba2aa343a9bdf95145dd1/) | ⚠️ Unaudited |
| KUN | unknown | ethereum | n/a | [`0x65d9bc970aa9b2413027fa339f7f179b3f3f2604`](./contracts/ethereum-1/0x65d9bc970aa9b2413027fa339f7f179b3f3f2604/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (98)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x009d3a12ec18058a96f6f95e03fde34369c4a398` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x036c49306ce9f253c6f9d75dbb8566bfa42b3424` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04ae8e1a339b870d8bc66065f183a84c1a6794cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x057157982aa6076b95a27d350bc72a4fc812f6d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x05f607e3e521d5e1bc42af808a472ddc7cc589de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0fc3499605e03239b8507c80e96f53a83e5934f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0fee89a108a03f31c88702c450873bda75c35bc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10b3a39db06eaf6adc7206ea1c58976c81d3af45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14ea2c8f7e9b7c9766868e4ee86c1f806b813a43` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17ee9a1769aa73a6c7e11438a58f6d0fe0e3f432` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1983e3bed6e3359b7393e52b372511271475da73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a7ab68a6d6b07df73438610b614a2d8c7ceffdd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f437d4d6ce732a39e76c2d476eaf0b491340b3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x202610d54e53114d19563a3da2bc200a0568cf5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20eb9574e523f6543363ca75c18a4cce3eafdf2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x237ec503f5b8105970ea3daa463569e5de5ae122` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x263502b07b9ff9d0c10ec7bdaf977d372d3b4593` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27654053c13d5505e1275966cc0adae15354b8de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f24406cb62171b71e0418cb199fb7cff2562643` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f6359c2d47ab028721e5889cd369fd65cbff685` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3121247abf7898c84332a3b92cd6de82d9cd6f5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31dc34d79f85a85142696cc3512f7fcaba39da4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3610ac53bcccdb23e6d8dbbd0e38e7d0d1959940` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x368c9654626ecaf3a0fa726adbc2b50cd363bba8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b4f4d0b32778dc4f9073dafaca5cfd6720fbde0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x405c53aadfc8c90017743864dc1fc8b570e2f084` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44a3c3bf448f7156fe67d3728a6e97546379c0d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4baa11d5fcfa1ce5b37528b32095c3acc141db33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d51f440fa7f0dd57419b1d69c0a3590f8d0fd35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x515addee4621a218bbfbd357ad92b821902d2cb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x517c32173b10f2bcd81d963ce3eccb54062fa20a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x519b9d335f4bb4a1359fc17ef33ada284c497d83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5399789d019095163583da6941c27031e1dca77b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x555e5eb22ef6dd80b83ddb092c542dfd2fdb19f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55b4b5e116cf8362a68bedd56bc7da2f055ea289` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57a5c8d0a9a4660526c71a88de011a2e58810fc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a6660704c3eb7eb90364d23fecb0498c9358a1f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x617e526ddf766155b7053173c2ab0a656d455807` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61a0ac5b737866313399e621ea86797def0f6af1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68b37d89e1aed3dd348ad8b1cfc1e678539431d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69232952cd3d8e1b2eab462763d955973974e737` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6fd52d7e7af59b1267466667ff877318538fc442` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70383f63ae2ee0103b2cea0a60f56821f63de835` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x729e8269ab329c250a22c1b36e4b545fec8c4e48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x744de8dff1faef439d8b71fd2d478d3abceeccad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7658474c13fa4c1fe8c29ae5568a0b754801cb9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76b728fad01f90ba844c3790acb3225c7f37096e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7751fdfcb2af80ce626705eb4421f1dd8171cede` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x790fc831ce6d2aa3df149435b2af375f5bb5701d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bbe871ed2463feb91e926e16b4bfd0707113edc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f3ce4e43e007a900ef4568cdd26fe960f76a6bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82625b9b61f37bc673fedd3b853d77a48ef10c4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86310b8be941ae1eebb95c9fdef0e126cb82dae4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8733083466d1380ffe1993134a17e8f745e92a4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87b1ee8b50b72ad6a7c69607aaeee77360c309c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c71c3c2bed372dc681e541371a4ae08e7160674` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x900e46f88b3b3462a1f77070b6f2dd851bb18d46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x914cd4b2377e1d9def9fee4c25795f591b7cb5ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93b7d385835740073ccc4b85beb370ee9596317b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9aace35644eb07b585f918f527b4ca97eea6790e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c511d19ba6050082b3de82967b6cc5f07bff88a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fb384fa70535986b1c1f15be0025866d6a07ded` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0610c845106a0111a5a5ba101fd6f663b9edaef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa4036167b685ef2d23d216384065ee8c075f3761` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5433686c8b86014e57149692c39326b29abef70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa96c640c065e7d17c47eb0770b5d8f8725210747` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa55f810009b7a24c8ec6939432405562138f7ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab30d0b7d917b5b1a2993583c7bd4d2fac3a378d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae22bfa0eed4a915bde431290f67b767c0989f72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafdf3414aa04d91ea074046f9637f1e19e4d9f2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafdf6f6ab5a489951e9d292eb631c3d281e52df2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb069a2e8c3a0ac5bd09429af4b79e4d89f853cb1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8c540d00dd0bf76ea12e4b4b95efc90804f924e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe1365d3e6e36457aaafdcaf5ee70596672cdea9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbeb3e05c5143d509481ff79c93dea32796027671` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2245032df48ed03f2e1b87e2fa242c56931b975` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc228db0803b8294c5bab3bfbc9b5bdde2f7b85af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc30c04c073105a6c5e9f16b3a669e7f73411144c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4a4cd00bf6f266ae2dbc21841371c45c357c339` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc70ddd3627ebdbf26fe04e989405af774aa1f074` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8a648ffd7040ff5ea915b1744d62a187ac16c7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca25588e071f19f78385e62aa3339d511095a1c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcad76dcbba3a20d9a24ef4b55aff1b8270089c79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb245a1c7d1550e6547b106b1efc3e6cc99b68cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd26d0cd9227cdbd11f38c4f51796c683fb8a343e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd389aed208e6c354c47b39d2eb8a2f7cbd07796b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6e8d6e2b0a158c35303fc41e6b8ea52f450f35a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd92560eb598f15112db754ecbb6b7a6c074f12ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd72e142b3e37a3b8316f67b88f0b9daa48f761c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5409064f7cc19e9644dfa4df3e14df43cca034b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xebb16dc82de006c4e7d6012df1e322d58017cfad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef1f0060f5a7a260d982af130141159b175cca9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf077c11634ad9cc5bb17e52f05c6141bdde830ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2ce7df0f8d4443807a823a33fb61f1784981e35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3c9415b271a57aa115a73896b7d8d6598829eea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf832bf857f2f7b07979383ee45f7155880138fc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf90886b11defa5f2d7e628911a988ba81da91211` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff4a3c8d0ae7628264fae7e6353a8fac7efc875a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [qian.finance](https://expireddomains.com/domain/qian.finance?utm_source=redi) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x59d4ccc94a9c4c3d3b4ba2aa343a9bdf95145dd1`](./contracts/ethereum-1/0x59d4ccc94a9c4c3d3b4ba2aa343a9bdf95145dd1/) | Coin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x65d9bc970aa9b2413027fa339f7f179b3f3f2604`](./contracts/ethereum-1/0x65d9bc970aa9b2413027fa339f7f179b3f3f2604/) | KUN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 98 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13718] qian.finance

Fork inheritance lineage and inherited audits are included when available.
