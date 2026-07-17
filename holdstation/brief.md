# Agentic Audit Brief: Holdstation

## Project Overview

- Project: Holdstation (`holdstation`)
- Website: [https://holdstation.com/](https://holdstation.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.541Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: berachain, bsc, zksync-era
- Contract surface: 58 unique implementations (77 raw deployments)
- DeFi Llama TVL: $24,231.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 2 project-authored contract(s) across 2 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 78; live-surface contracts included: 77 (24 live, 53 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/18 (5.6%)
- Deployed-live implementations: 21 of 58 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/21
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 37
- Unique implementations: 58
- Raw deployments: 77
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Verichains | Tier 2 | 1 | 4.8% | 2024-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HoldToken | token | berachain | n/a | [`0xff0a636dfc44bb0129b631cdd38d21b613290c98`](./contracts/berachain-80094/0xff0a636dfc44bb0129b631cdd38d21b613290c98/) | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GodLikesElephants | unknown | bsc | n/a | [`0x7470c48fbf23067f6f8ef63f7d9b4a2aa5d0afef`](./contracts/bsc-56/0x7470c48fbf23067f6f8ef63f7d9b4a2aa5d0afef/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | berachain | n/a | 3 deployments: berachain [`0x655407a96f211073bd193a21d774f06880db33c9`](./contracts/berachain-80094/0x655407a96f211073bd193a21d774f06880db33c9/); berachain `0x98a7d495ae2065d5befd852a51edc9073ec94f12`; berachain `0xd4213dc57eadf50f88100bde1cf2d4696d39a660` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 2 deployments: berachain [`0x172fc7e6e424062486e7564269c6b1e05abebab9`](./contracts/berachain-80094/0x172fc7e6e424062486e7564269c6b1e05abebab9/); berachain `0xf99373c2056f8eab9322cefb85dc6af942059c34` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 2 deployments: berachain [`0x195bfdbdf08434abebb5c6062f30dbf2ea58cf89`](./contracts/berachain-80094/0x195bfdbdf08434abebb5c6062f30dbf2ea58cf89/); berachain `0x6b659fe25c19fed0ce992133ce6da25b1b2d0d5a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 2 deployments: berachain [`0x1c6e0e90f456530e2c9c8bed7e4fc55fb4d1ed09`](./contracts/berachain-80094/0x1c6e0e90f456530e2c9c8bed7e4fc55fb4d1ed09/); berachain `0xaa855e714732dc4d0feb2b4ff373b3d6838d66b2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 2 deployments: berachain [`0x239b4dbf964df383ae79c4fae2bbd92438ceb1ad`](./contracts/berachain-80094/0x239b4dbf964df383ae79c4fae2bbd92438ceb1ad/); berachain `0x68bc70e18d9e5e833a6ab08118c9894d2bc3189a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 2 deployments: berachain [`0x2739a4c73093d4175b4890cac5fd8ae75168df0b`](./contracts/berachain-80094/0x2739a4c73093d4175b4890cac5fd8ae75168df0b/); berachain `0x34338ad7392f2e522ad5acd6e87f8197590175bb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 2 deployments: berachain [`0x40fdb2a27f950f752f8b926b1c1560cb81ab07a3`](./contracts/berachain-80094/0x40fdb2a27f950f752f8b926b1c1560cb81ab07a3/); berachain `0x78f730f7a44b6872dd3ad86570bc873a53cf57a0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 2 deployments: berachain [`0x4e1de40322ebfd0ce5faeb152a9fdaa2761a30e5`](./contracts/berachain-80094/0x4e1de40322ebfd0ce5faeb152a9fdaa2761a30e5/); berachain `0x568a2f66dfa1455677e2dfe87c5743ae3a08dc91` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 2 deployments: berachain [`0x5010dfd6cbe55e424f7841bf87be572a368529d6`](./contracts/berachain-80094/0x5010dfd6cbe55e424f7841bf87be572a368529d6/); berachain `0x6f47f5ed12373ed3486d852b323fd2246ff52aba` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 2 deployments: berachain [`0x5705554baa86da01ff4a82d29a1598c5b3a8b476`](./contracts/berachain-80094/0x5705554baa86da01ff4a82d29a1598c5b3a8b476/); berachain `0x8ffcdc2cc5929889660a96ffadf54dd1f25acd55` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 2 deployments: berachain [`0x5e2d894b134756ec9aae55f60c58eef5acd23632`](./contracts/berachain-80094/0x5e2d894b134756ec9aae55f60c58eef5acd23632/); berachain `0x98fbbda3898e61f5175635a95509c1f8978a1c14` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 3 deployments: berachain [`0x6a6e4ad4a5ca14b940cd6949b1a90f947ae21c19`](./contracts/berachain-80094/0x6a6e4ad4a5ca14b940cd6949b1a90f947ae21c19/); berachain `0x8e77fb9df0523d8267fbb57f00c0ad65d8126a67`; berachain `0xdd560bc2c98bc3fa39fcafe256249707f9b83b3c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 2 deployments: berachain [`0x76711d7bd2194192911e968f23a8a5aa6315e296`](./contracts/berachain-80094/0x76711d7bd2194192911e968f23a8a5aa6315e296/); berachain `0xb1e33bb4e70aabb2c2fc8c5484ee84a928377a48` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 2 deployments: berachain [`0x948a1354959a522198716ac339c9d8b2cddb6b0f`](./contracts/berachain-80094/0x948a1354959a522198716ac339c9d8b2cddb6b0f/); berachain `0xb97cd97dd000fb29723c24b918374a2a4e72414f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 2 deployments: berachain [`0x95c60ffa1b471ad5cf9d1856def48150494caffc`](./contracts/berachain-80094/0x95c60ffa1b471ad5cf9d1856def48150494caffc/); berachain `0xc9645bb69d8a54c4cb26352c1a4094550d35314f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 2 deployments: berachain [`0x99c24cf8253be59f067a2902c4ea9a0e8e02cd41`](./contracts/berachain-80094/0x99c24cf8253be59f067a2902c4ea9a0e8e02cd41/); berachain `0xef9d6597213f9cd2a84717b9b268892fc1d59993` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | [`0xa30a406030fbe7a9e24bf225273fb17a72ac6bdc`](./contracts/berachain-80094/0xa30a406030fbe7a9e24bf225273fb17a72ac6bdc/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | berachain | n/a | [`0xa8dba750a2d76586a234efb7bdf1d34fdcc48e14`](./contracts/berachain-80094/0xa8dba750a2d76586a234efb7bdf1d34fdcc48e14/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 2 deployments: berachain [`0xee3cdd07401baa7b6f5bb16f252357cf7e1275fb`](./contracts/berachain-80094/0xee3cdd07401baa7b6f5bb16f252357cf7e1275fb/); berachain `0xf61069e9bb7540c162ff58bf1a4b18d84ee16fc6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (37)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | zksync-era | n/a | `0xed4040fd47629e7c8fbb7da76bb50b3e7695f0f2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x09781d7ac8ad7f3748ad88d84d6f08341efcf193` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x0e35ad83709fdc2eace894ff5c764b7c6e949473` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x1018440f4c2ff19c9e123d776419c56ff41f6ad9` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x12e938136520b7560323ac2fea4e614b142135a2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x171cdc70b6adb1212d407a24d03b49c8f4f2a93c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x1a70116cca8c5ac2f63601005a837adb1aa6791e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x27c6965bec88a3aee9f795be93760cc8ae5bc266` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x2e6d6a604465cc9442258999e32a034a0518610f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x2ead5034f6c4bedbdd49ac4dde1a968ee8c17448` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x39b9ec828ff9c2ea5b76a2468bd8c2a324177edd` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x435ef02cf3a6849abc2eee15f32c9ead1f80e977` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x46e7198a0909feacc3e8bc6bbb6b55b4a31627b1` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x47954b0fef4d1c9569ecfb43d4617b27beca0558` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x52239763a12d83626fac11b188bc32cf4fe029ab` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x593b89241005738f061d20f50f23364fc85e4ccb` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x5fe8fbd451167e9427a60ded168c65f5f7232de1` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x604d5ffbc90d3649e31c1a46de2016b10c2d3a31` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x61c11be56dd1891cb09883339bcc609e7cff075b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x6795d7b780dda526639a8aa6bda72e2f3e6b2ff7` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x69c7e954d5a06958026b1e699aae5d5a5eb1a093` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x6cbd0ee0557dd891e85acb6f6087f5c5e8b71453` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x7553b039ea86828c0559ae47493874763572ad53` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x7555ededc960bd15d5b191f6a2645c5c912b4126` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x77c99d471ccdd8898daaf63ff9044f204065bb35` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x95ddfc638824bf0bbb9a14e166ddd261a248fa87` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x9bd647b2c8fed689add2e7aa8b428d3ed12f75cb` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x9fdc011ea68413336454cd1d2f22b99ea086605e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb07cf373c7548ac3bba67606f8940345fe7588e5` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb1048b47a60c5d695cdd86550f2bd24d1d010ee3` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd8afa780eaa199ebabb9f8f1187c15a07740b685` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xde605a918c466e74a2a12865efe616d51391312a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xdfd5c6b0a3510e2da8012b5eba649f1f43bb8ff6` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xe755545ce968f82a42031e32be1db8b524d24034` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf4d05061ee7d3787cc0573c7c1c8edbc2a5b1831` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xfc428cf1232fc7bc42d0a3264926d4fde59cd4b1` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xff0fce925205282913c68438665b700d251b1fa3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Verichains Draft Audit Report - HoldStation Dex - v1.0.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Draft%20Audit%20Report%20-%20HoldStation%20Dex%20-%20v1.0.pdf) | unknown | Audit | 2023-05 | stale | Direct | contract_name | 0 | n/a |
| [PeckShield-Audit-Report-Holdstation-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Holdstation-v1.0.pdf?ref=blog.holdstation.com) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [skynet.certik.com/projects/holdstation](https://skynet.certik.com/projects/holdstation) | CertiK | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [Verichains Public Audit Report - Holdstation Mobile Wallet - v1.0.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20Holdstation%20Mobile%20Wallet%20-%20v1.0.pdf) | CertiK | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [Verichains Public Audit Report - HoldStation Defutures - v1.4.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20HoldStation%20Defutures%20-%20v1.4.pdf) | Verichains | Audit | 2023-08 | stale | Direct | contract_name | 0 | n/a |
| [Verichains Public Audit Report - Holdstation Launchpad - v1.1.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20Holdstation%20Launchpad%20-%20v1.1.pdf) | Verichains | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [Verichains Public Audit Report - Holdstation Dex - v1.0.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20Holdstation%20Dex%20-%20v1.0.pdf) | Verichains | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [Verichains Public Audit Report - Holdstation Token - v1.0.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20Holdstation%20Token%20-%20v1.0.pdf) | Verichains | Audit | 2023-10 | stale | Direct | contract_name | 1 | n/a |
| [DIP001_audit_report_2020_03_en_1_0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/DIP001_audit_report_2020_03_en_1_0.pdf) | PeckShield | Audit | 2020-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x7470c48fbf23067f6f8ef63f7d9b4a2aa5d0afef`](./contracts/bsc-56/0x7470c48fbf23067f6f8ef63f7d9b4a2aa5d0afef/) | GodLikesElephants | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 13 |
| needs_review | 43 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1, extraction_exact=2

Zero-match audit list:

- [13229] Verichains Draft Audit Report - HoldStation Dex - v1.0.pdf
- [13230] PeckShield-Audit-Report-Holdstation-v1.0.pdf
- [13231] skynet.certik.com/projects/holdstation
- [13232] Verichains Public Audit Report - Holdstation Mobile Wallet - v1.0.pdf
- [13233] Verichains Public Audit Report - HoldStation Defutures - v1.4.pdf
- [13234] Verichains Public Audit Report - Holdstation Launchpad - v1.1.pdf
- [13235] Verichains Public Audit Report - Holdstation Dex - v1.0.pdf
- [13237] DIP001_audit_report_2020_03_en_1_0.pdf

Fork inheritance lineage and inherited audits are included when available.
