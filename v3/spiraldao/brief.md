# Agentic Audit Brief: SpiralDao

## Project Overview

- Project: SpiralDao (`spiraldao`)
- Website: [https://spiral.farm](https://spiral.farm)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:56.466Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: ethereum, zksync-era
- Contract surface: 35 unique implementations (39 raw deployments)
- DeFi Llama TVL: $6,375,050.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 26 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Contracts are linked by 4 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 68; live-surface contracts included: 39 (14 live, 25 unknown).
- Excluded by liveness: 29 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/10 (70.0%)
- Deployed-live implementations: 10 of 35 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/10
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 25
- Unique implementations: 35
- Raw deployments: 39
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pessimistic | Tier 2 | 4 | 40.0% | 2023-10 |
| unknown | Tier 2 | 3 | 30.0% | 2023-01 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Coil | unknown | ethereum | n/a | [`0x823e1b...1ce918`](./contracts/ethereum-1/0x823e1b82ce1dc147bbdb25a203f046afab1ce918/) | ✅ Audited |
| LockerMaster | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0b3bac...96952e`](./contracts/ethereum-1/0x0b3bacb08142d1e37e67033f1e16a388ae96952e/); ethereum `0x58587f...00341c` | ✅ Audited |
| LockerMaster | unknown | ethereum | n/a | 3 deployments: ethereum [`0xbdaf82...a10047`](./contracts/ethereum-1/0xbdaf82467779c2bb98229f90e73fb07d7fa10047/); ethereum `0xdd5f42...60b3ab`; ethereum `0xe68d41...6bc748` | ✅ Audited |
| LockerMasterSDT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4a6854...6748a1`](./contracts/ethereum-1/0x4a6854b88bfc87369cb9ca1a488e1a2cf76748a1/); ethereum `0x90a62d...6d41b9` | ✅ Audited |
| LockerStaking | unknown | ethereum | n/a | [`0xab0da8...df8451`](./contracts/ethereum-1/0xab0da8b992fe8dab24d7d024865bf9e004df8451/) | ✅ Audited |
| Spiral | unknown | ethereum | n/a | [`0x85b6ac...4b9180`](./contracts/ethereum-1/0x85b6acaba696b9e4247175274f8263f99b4b9180/) | ✅ Audited |
| SpiralStaking | token | ethereum | n/a | [`0x6701e7...4b4943`](./contracts/ethereum-1/0x6701e792b7cd344bae763f27099eeb314a4b4943/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LockerToken | token | ethereum | n/a | [`0xc54ff2...3bf7d9`](./contracts/ethereum-1/0xc54ff26fd5564ff46b14d9825a2259a0d53bf7d9/) | ⚠️ Unaudited |
| LockerTokenWrapper | token | ethereum | n/a | [`0xea0c89...9dae4d`](./contracts/ethereum-1/0xea0c89f6c7c4a929a426fe9bffaf11f3da9dae4d/) | ⚠️ Unaudited |
| SpiralRouterV2 | adapter | ethereum | n/a | [`0x2280df...83e22b`](./contracts/ethereum-1/0x2280dfeeafdd9ebaf5868ded8f1267749883e22b/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x0a05fc...d61974` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16b9de...90d216` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a4621...7719a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ad11a...df9b43` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56cc0a...2cc91f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56fc56...7fb80a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59a544...4ee9d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ae737...cbd6ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b07d5...061ac5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7fc5f1...9ed55c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x899a79...3755e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89c181...ed73af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a8ae5...113293` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x943bde...0222fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9362c...325bed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab1789...271309` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb79fd7...a8f837` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc60879...a9c944` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc242b...964bb1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce0e97...55e8cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8f03c...295015` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec461f...2917a5` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x348a88...7fee22` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x9e7daf...6c1e25` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xea0c89...9dae4d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Spiral DAO Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/main/Spiral%20DAO%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2023-01 | stale | Direct | contract_name | 3 | n/a |
| [Spiral DAO Lockers Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/main/Spiral%20DAO%20Lockers%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2023-10 | stale | Direct | contract_name | 6 | high |
| [Spiral DAO SDT Adapter Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/main/Spiral%20DAO%20SDT%20Adapter%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2023-09 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 35 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=3, extraction_exact=8

Fork inheritance lineage and inherited audits are included when available.
