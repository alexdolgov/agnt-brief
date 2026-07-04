# Agentic Audit Brief: DAO Maker

## Project Overview

- Project: DAO Maker (`dao-maker`)
- Website: [https://daomaker.com/](https://daomaker.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.786Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: bsc, ethereum
- Contract surface: 17 unique implementations (17 raw deployments)
- DeFi Llama TVL: $1,351,374.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 6 project-authored contract(s) across 2 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (globalsandutility). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 25; live-surface contracts included: 17 (3 live, 14 unknown).
- Excluded by liveness: 8 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 3 of 17 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 17
- Raw deployments: 17
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 7 unknown
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
| DAOFarm | unknown | bsc | n/a | [`0x598ca7...a22781`](./contracts/bsc-56/0x598ca79eee092a084b5f168c4196edb80ea22781/) | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0xd07e86...d6a847`](./contracts/ethereum-1/0xd07e86f68c7b9f9b215a3ca3e79e74bf94d6a847/) | ⚠️ Unaudited |
| Token | token | ethereum | n/a | [`0x0f51bb...6b09ad`](./contracts/ethereum-1/0x0f51bb10119727a7e5ea3538074fb341f56b09ad/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x30e8de...2747bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47617f...669f42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fa001...d87cf8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x608926...58d856` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6347d8...1f5bf8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a45b5...4182f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b03e2...079e0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7db84c...f9357f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8fed6d...2d302c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7301d...7cc23d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf5180...3b0490` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddde91...fdb351` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe55c9a...b0dde5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xecb621...b1f74a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [drive.google.com/file/d/18Anm53T_BbcRQLWHMthkQgvtLC6CDGW0/view](https://drive.google.com/file/d/18Anm53T_BbcRQLWHMthkQgvtLC6CDGW0/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1LCgxsQCz7vCDKK1AFxsInpKkVt_1q3q1/view](https://drive.google.com/file/d/1LCgxsQCz7vCDKK1AFxsInpKkVt_1q3q1/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1OpTWnZmhKu04kKYgFx89Nrh2Y68mhlv_/view](https://drive.google.com/file/d/1OpTWnZmhKu04kKYgFx89Nrh2Y68mhlv_/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1v78FH681imjrnXzjc4Ci_F4bW8oI19q5/view](https://drive.google.com/file/d/1v78FH681imjrnXzjc4Ci_F4bW8oI19q5/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/17qQwtqSe6uqLKfKYgLQHGc4GyImVx3iM/view](https://drive.google.com/file/d/17qQwtqSe6uqLKfKYgLQHGc4GyImVx3iM/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/17AwrRDy7Fh8wEjOIAQr3R-oqLWeYC_DD/view](https://drive.google.com/file/d/17AwrRDy7Fh8wEjOIAQr3R-oqLWeYC_DD/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1OPanooD8QD13kOx210QTz19RyS8yTj80/view](https://drive.google.com/file/d/1OPanooD8QD13kOx210QTz19RyS8yTj80/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x598ca7...a22781`](./contracts/bsc-56/0x598ca79eee092a084b5f168c4196edb80ea22781/) | DAOFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd07e86...d6a847`](./contracts/ethereum-1/0xd07e86f68c7b9f9b215a3ca3e79e74bf94d6a847/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f51bb...6b09ad`](./contracts/ethereum-1/0x0f51bb10119727a7e5ea3538074fb341f56b09ad/) | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2919] drive.google.com/file/d/18Anm53T_BbcRQLWHMthkQgvtLC6CDGW0/view
- [2920] drive.google.com/file/d/1LCgxsQCz7vCDKK1AFxsInpKkVt_1q3q1/view
- [2921] drive.google.com/file/d/1OpTWnZmhKu04kKYgFx89Nrh2Y68mhlv_/view
- [2922] drive.google.com/file/d/1v78FH681imjrnXzjc4Ci_F4bW8oI19q5/view
- [2923] drive.google.com/file/d/17qQwtqSe6uqLKfKYgLQHGc4GyImVx3iM/view
- [2924] drive.google.com/file/d/17AwrRDy7Fh8wEjOIAQr3R-oqLWeYC_DD/view
- [2925] drive.google.com/file/d/1OPanooD8QD13kOx210QTz19RyS8yTj80/view

Fork inheritance lineage and inherited audits are included when available.
