# Agentic Audit Brief: Kalax

## Project Overview

- Project: Kalax (`kalax`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:19.146Z
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
| KalaxMultiRewardV2Farm | unknown | blast | n/a | 4 deployments: blast [`0x1cb8f6...6c9115`](./contracts/blast-81457/0x1cb8f6cecf7c8fbb9863417f8371cb2a076c9115/); blast `0x528e67...3c712e`; blast `0xe63153...aef5a1`; blast `0xfe8994...9142a5` | ⚠️ Unaudited |
| Token | token | blast | n/a | [`0x2f67f5...7e606d`](./contracts/blast-81457/0x2f67f59b3629bf24962290db9ede0cd4127e606d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | blast | n/a | 2 deployments: blast [`0x0676e7...8b3598`](./contracts/blast-81457/0x0676e706cbed7263753ba948a1a4a3a2948b3598/); blast `0xb99aed...8980ed` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | blast | n/a | 7 deployments: blast [`0x14421b...4ace1a`](./contracts/blast-81457/0x14421b2f062c1e7a66d52e10a9c8a67e974ace1a/); blast `0x31dd65...244adb`; blast `0x32066b...9a1b56`; blast `0x87a894...147a44`; blast `0x8d171d...1bfae1`; blast `0xbdf9ad...ed644f`; blast `0xd834c6...6467fc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | blast | n/a | 2 deployments: blast [`0x14ed42...880b4b`](./contracts/blast-81457/0x14ed42c74108cd77e52870470dddda6e5d880b4b/); blast `0x8ab2a0...59f536` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | blast | n/a | 3 deployments: blast [`0x2bb41a...7cb513`](./contracts/blast-81457/0x2bb41a5b807b7c4f8054587d7294beb8777cb513/); blast `0x4fbd0d...2a3166`; blast `0x9a8c08...2c6134` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | blast | n/a | 5 deployments: blast [`0x3b4733...22304a`](./contracts/blast-81457/0x3b47335b2946f3282d74bc75ba864b64e922304a/); blast `0x87228e...9b0a05`; blast `0x8ac156...721e4a`; blast `0xa0fc27...191985`; blast `0xed3897...5a9f4f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | blast | n/a | 3 deployments: blast [`0x41ed90...d87059`](./contracts/blast-81457/0x41ed907e4b304291680ded38e62dd50ab3d87059/); blast `0x98ae4a...b4340a`; blast `0xa6bb88...ee638c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | blast | n/a | 2 deployments: blast [`0x4c0013...4ae2db`](./contracts/blast-81457/0x4c001391c88dfc9b5aed53dd752ce9ad5d4ae2db/); blast `0x552414...191ced` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | blast | n/a | 2 deployments: blast [`0x67fb1a...bda10e`](./contracts/blast-81457/0x67fb1a853d8612d2862c66dad242490253bda10e/); blast `0x70591e...da132d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | blast | n/a | 2 deployments: blast [`0x7e0eae...de4d57`](./contracts/blast-81457/0x7e0eae5c2354c5a178fedfbfb1ad66561cde4d57/); blast `0xffeca8...5875b8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | blast | n/a | 2 deployments: blast [`0x8273d9...9cdc80`](./contracts/blast-81457/0x8273d96954c5cfb35aa6372e66f0ceede69cdc80/); blast `0x8f0968...f2211b` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | blast | n/a | `0x1aa622...fee02e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1f4f17...9f934a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6bf073...07cf86` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Kalax_202405211051.pdf](https://beosin.com/audits/Kalax_202405211051.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 15 |

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
