# Agentic Audit Brief: Kalax

## Project Overview

- Project: Kalax (`kalax`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:28.986Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: blast
- Contract surface: 15 unique implementations (38 raw deployments)
- DeFi Llama TVL: $125,248.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 3 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 38; live-surface contracts included: 37 (24 live, 13 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/12 (0.0%)
- Deployed-live implementations: 12 of 15 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/12
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 15
- Raw deployments: 38
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

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| KalaxMultiRewardV2Farm | unknown | blast | n/a | 4 deployments: blast [`0x1cb8f6cecf7c8fbb9863417f8371cb2a076c9115`](./contracts/blast-81457/0x1cb8f6cecf7c8fbb9863417f8371cb2a076c9115/); blast `0x528e67af2e4343dfaf7b63101db7b4a04b3c712e`; blast `0xe63153c3360aca0f4e7ca7a1fc61c2215faef5a1`; blast `0xfe899401a1d86cc1113020fb40878c76239142a5` | ⚠️ Unaudited |
| Token | token | blast | n/a | [`0x2f67f59b3629bf24962290db9ede0cd4127e606d`](./contracts/blast-81457/0x2f67f59b3629bf24962290db9ede0cd4127e606d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | blast | n/a | 2 deployments: blast [`0x0676e706cbed7263753ba948a1a4a3a2948b3598`](./contracts/blast-81457/0x0676e706cbed7263753ba948a1a4a3a2948b3598/); blast `0xb99aedd16714a7393768273f9abff4c4f48980ed` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | blast | n/a | 7 deployments: blast [`0x14421b2f062c1e7a66d52e10a9c8a67e974ace1a`](./contracts/blast-81457/0x14421b2f062c1e7a66d52e10a9c8a67e974ace1a/); blast `0x31dd65f845592199d5949ef1ce15d10891244adb`; blast `0x32066b17b14f65e9caa2e72bdca91683959a1b56`; blast `0x87a8943d8000a90511b47c891ff6a073d3147a44`; blast `0x8d171dd9b989350df7e3259a172501d1f41bfae1`; blast `0xbdf9adebf2bbad4971f412c608a5ae8b10ed644f`; blast `0xd834c6ab94af589034011ac921c5ef40f76467fc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | blast | n/a | 2 deployments: blast [`0x14ed42c74108cd77e52870470dddda6e5d880b4b`](./contracts/blast-81457/0x14ed42c74108cd77e52870470dddda6e5d880b4b/); blast `0x8ab2a060cdab77ed73f49116a55d3e437759f536` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | blast | n/a | 3 deployments: blast [`0x2bb41a5b807b7c4f8054587d7294beb8777cb513`](./contracts/blast-81457/0x2bb41a5b807b7c4f8054587d7294beb8777cb513/); blast `0x4fbd0d19ff17756612c5993293ad1c7ab22a3166`; blast `0x9a8c0857ccd4da52eb18020fc62bf9d8992c6134` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | blast | n/a | 5 deployments: blast [`0x3b47335b2946f3282d74bc75ba864b64e922304a`](./contracts/blast-81457/0x3b47335b2946f3282d74bc75ba864b64e922304a/); blast `0x87228e4511cd1a3d1331a2d8e3f86411069b0a05`; blast `0x8ac1562aa49d80c177136cbbc79b7d2425721e4a`; blast `0xa0fc272440ac7584cd9c19f769200bf9d2191985`; blast `0xed38977a8980d4571563c58fde25e8dcfa5a9f4f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | blast | n/a | 3 deployments: blast [`0x41ed907e4b304291680ded38e62dd50ab3d87059`](./contracts/blast-81457/0x41ed907e4b304291680ded38e62dd50ab3d87059/); blast `0x98ae4a9ab5a8129de9680c11a8f7a55252b4340a`; blast `0xa6bb888ea83780ee1096094dd9cc930c25ee638c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | blast | n/a | 2 deployments: blast [`0x4c001391c88dfc9b5aed53dd752ce9ad5d4ae2db`](./contracts/blast-81457/0x4c001391c88dfc9b5aed53dd752ce9ad5d4ae2db/); blast `0x552414fdf2d3ebe59b120ae67bfba6ec43191ced` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | blast | n/a | 2 deployments: blast [`0x67fb1a853d8612d2862c66dad242490253bda10e`](./contracts/blast-81457/0x67fb1a853d8612d2862c66dad242490253bda10e/); blast `0x70591e02a6ab22c665517c5a73aca9a33bda132d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | blast | n/a | 2 deployments: blast [`0x7e0eae5c2354c5a178fedfbfb1ad66561cde4d57`](./contracts/blast-81457/0x7e0eae5c2354c5a178fedfbfb1ad66561cde4d57/); blast `0xffeca8a7071520bd22ed7837c2f95d60a95875b8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | blast | n/a | 2 deployments: blast [`0x8273d96954c5cfb35aa6372e66f0ceede69cdc80`](./contracts/blast-81457/0x8273d96954c5cfb35aa6372e66f0ceede69cdc80/); blast `0x8f0968b1c21e7c94067e64b3687490f88ff2211b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | blast | n/a | `0x1aa6226f7100835aaafdff7f79ba6ffd12fee02e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1f4f171676f8cb3b1c3fd38867b3b160679f934a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6bf073f969ca60a6f0e97b0ec07806080807cf86` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Kalax_202405211051.pdf](https://beosin.com/audits/Kalax_202405211051.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | [`0x1cb8f6cecf7c8fbb9863417f8371cb2a076c9115`](./contracts/blast-81457/0x1cb8f6cecf7c8fbb9863417f8371cb2a076c9115/) | KalaxMultiRewardV2Farm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x2f67f59b3629bf24962290db9ede0cd4127e606d`](./contracts/blast-81457/0x2f67f59b3629bf24962290db9ede0cd4127e606d/) | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13326] Kalax_202405211051.pdf

Fork inheritance lineage and inherited audits are included when available.
