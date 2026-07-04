# Agentic Audit Brief: Shield

## Project Overview

- Project: Shield (`shield`)
- Website: [https://shieldex.io](https://shieldex.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:54.105Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: bsc
- Contract surface: 123 unique implementations (123 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Options. Structurally: 4 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 128; live-surface contracts included: 123 (2 live, 121 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/2 (50.0%)
- Deployed-live implementations: 2 of 123 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 121
- Unique implementations: 123
- Raw deployments: 123
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 50.0% | 2021-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SLDOption | unknown | bsc | n/a | [`0x9b2801...dcd6ba`](./contracts/bsc-56/0x9b2801545d58c5167427b2b24188a5cef3dcd6ba/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ShieldEX | unknown | bsc | n/a | [`0x1ef6a7...95a084`](./contracts/bsc-56/0x1ef6a7e2c966fb7c5403efefde38338b1a95a084/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (121)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x01d114...16c7b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x02988d...a28877` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x045bb2...6a3b39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x083250...3f4ed8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x08648b...5f64b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a59fb...8bd2f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0bcbd9...619bb0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0d3912...bd6ad1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x10045c...e74fc4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x124b8c...43fab7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1477d9...f4f037` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14fef4...eb61c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x17237c...5a43d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x19d045...dad3a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1a2f45...800700` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1a8d70...b066ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1b9401...85683b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d13fa...f852f2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1eaa8d...ad0836` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x256c23...d8909c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x257d34...e90fd3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x27c116...48a173` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x29f7e7...a30907` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2a9f37...1a9d67` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2b821c...5068a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2c1645...49a1dc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d8c92...90ea58` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3252f6...738494` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x363232...ba74cd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a63d3...93dbea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3cdbed...dc65fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3db7eb...cdfba1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x414de2...82c1aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4366b9...357001` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44153c...e1e104` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b3f3d...15006a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4ba89d...c28dad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f46fa...1b5681` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x515040...a5f9e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x56e7bc...02d916` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b6836...c3c9b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c2928...6c809e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d45e7...4fd762` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f6ae5...383120` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x620448...6ad371` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x647ce2...9f09f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6891df...1036bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x69d7af...f8bfb7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x69e410...5fa1b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6af059...bf1eb7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ffbec...f3463b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x722bab...a32ce2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x75c5a4...cd46ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x75fc2d...ddc275` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b02d4...b94fde` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ca423...e2437b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d3e93...bffec3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7e81d5...80260f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x803cfe...eb42a1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x80611d...d4003b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x82c51a...b82ae3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x857d42...0223a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x85ddbc...d13c34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x860fe5...4fb388` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x876653...1efd7e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x87b627...8a5afb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x87cfa6...0a08c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a2408...deaa2c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8cf2a8...5e7844` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8dfd09...6890f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x93de65...b7b86d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x985993...d4d2f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ae66f...4edeac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9bdcdf...a2dc59` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa13677...43ec02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa1c7cd...ef254e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa51e02...de778a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa992d9...7b1668` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab2250...81cfdf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab2cc8...de4400` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xabb349...4df0aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac16a1...d68728` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad46da...8367bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaff68d...7bdc7d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb17908...9e9ed6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2ed37...c9a829` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb52399...3e3ac0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb5379a...c4e587` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb73bfa...686999` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc093e9...607796` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc0b869...62a2b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc15b31...cb1d34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc35f33...3b251d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc67f6d...fc458d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc79493...ae8d43` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc888ac...24a25a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc98ef4...29af26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xccfb97...7ea160` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd30a4f...18bf0e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd32f58...006206` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd76fdd...1eec0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdad048...17ed0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdea2ab...d7db42` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe217b1...4fe25d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe58b8f...61cc62` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6e3bd...9a80ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe83890...361214` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe9c6aa...e5d3f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xebf472...67593c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec7072...6b9ed7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf07900...8cf9e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf146f7...9fba57` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf3cf3c...666fe3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf606e1...41a6f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7bf13...85c121` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf8d56b...4ac9d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf9690a...17e05f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa4e13...4ef189` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc34f1...bb351b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe06a5...335957` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfee0ba...1af735` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Smart Contract Security Audit Report - Shield.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report/Smart%20Contract%20Security%20Audit%20Report%20-%20Shield.pdf) | yAudit | Audit | 2021-04 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Shield-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Shield-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Shield-v1.0.1.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Shield-v1.0.1.pdf) | PeckShield | Audit | 2021-11 | stale | Direct | contract_name | 1 | high |
| [skynet.certik.com/projects/shield-protocol](https://skynet.certik.com/projects/shield-protocol) | CertiK | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [Secure3_Shield_SSVault_security_audit_report.pdf](https://github.com/Secure3Audit/Shield_SSVault_Audit_Contest/blob/main/audit_report/Secure3_Shield_SSVault_security_audit_report.pdf) | Secure3 | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [Shield_mvault_final_Secure3_Audit_Report.pdf](https://github.com/Secure3Audit/Shield_MVault_Audit_Contest/blob/main/audit_report/Shield_mvault_final_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 123 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [13829] Smart Contract Security Audit Report - Shield.pdf
- [13830] PeckShield-Audit-Report-Shield-v1.0.pdf
- [13832] skynet.certik.com/projects/shield-protocol
- [13833] Secure3_Shield_SSVault_security_audit_report.pdf
- [13834] Shield_mvault_final_Secure3_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
