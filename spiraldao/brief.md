# Agentic Audit Brief: SpiralDao

⚠️ Lifecycle status: DEAD - TVL dropped 15.0% over 90 days

## Project Overview

- Project: SpiralDao (`spiraldao`)
- Website: [https://spiral.farm](https://spiral.farm)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-19T06:14:42.031Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: ethereum, zksync-era
- Contract surface: 11 unique implementations (11 raw deployments)
- DeFi Llama TVL: $6,422,529.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

SpiralDao is a yield aggregation and liquid locker protocol that allows users to stake tokens, earn rewards, and lock governance tokens (MAV, SDT) to receive liquid locker tokens representing their locked positions.

### Architecture

The Main family provides foundational staking and reward infrastructure, while the locker families (MAV and SDT) extend it with liquid locking capabilities, sharing patterns like RewarderVault and proxy-based upgradeability. Governance is managed through GnosisSafe multisigs and ProxyAdmin contracts across families.

## Contract Surface Quality

- Indexed contracts: 79; live-surface contracts included: 11 (9 live, 2 unknown).
- Excluded by liveness: 62 inactive, 6 singleton, 0 uninitialized.
- Deployment units: 0/4 live.
- Detected codebases: none
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/6 (50.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 11
- Raw deployments: 11
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 50.0% | 2023-01 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Coil | unknown | ethereum | n/a | [`0x823e1b...1ce918`](./contracts/ethereum-1/0x823e1b82ce1dc147bbdb25a203f046afab1ce918/) | ✅ Audited |
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

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x7fc5f1...9ed55c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce0e97...55e8cb` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x348a88...7fee22` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x9e7daf...6c1e25` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xea0c89...9dae4d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Spiral DAO Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/main/Spiral%20DAO%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2023-01 | stale | Direct | contract_name | 3 | high |
| [<table data-view="cards"><thead><tr><th></th><th></th><th></th><th data-hidden data-card-target data-type="content-ref"></th></tr></thead><tbody><tr><td></td><td> <strong>Spiral DAO audit</strong></td><td></td><td><a href="https://github.com/pessimistic-io/audits/blob/main/Spiral%20DAO%20Security%20Analysis%20by%20Pessimistic.pdf">https://github.com/pessimistic-io/audits/blob/main/Spiral%20DAO%20Security%20Analysis%20by%20Pessimistic.pdf</a></td></tr><tr><td></td><td> <strong>Spiral Lockers audit</strong></td><td></td><td><a href="">https://github.com/pessimistic-io/audits/blob/main/Spiral%20DAO%20Lockers%20Security%20Analysis%20by%20Pessimistic.pdf</a></td></tr></tbody></table>](https://github.com/pessimistic-io/audits/blob/main/Spiral%20DAO%20Lockers%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2023-10 | stale | Direct | contract_name | 0 | n/a |
| [Spiral DAO SDT Adapter Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/main/Spiral%20DAO%20SDT%20Adapter%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2023-09 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xc54ff2...3bf7d9`](./contracts/ethereum-1/0xc54ff26fd5564ff46b14d9825a2259a0d53bf7d9/) | LockerToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea0c89...9dae4d`](./contracts/ethereum-1/0xea0c89f6c7c4a929a426fe9bffaf11f3da9dae4d/) | LockerTokenWrapper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2280df...83e22b`](./contracts/ethereum-1/0x2280dfeeafdd9ebaf5868ded8f1267749883e22b/) | SpiralRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=20

Zero-match audit list:

- [2262] <table data-view="cards"><thead><tr><th></th><th></th><th></th><th data-hidden data-card-target data-type="content-ref"></th></tr></thead><tbody><tr><td></td><td> <strong>Spiral DAO audit</strong></td><td></td><td><a href="https://github.com/pessimistic-io/audits/blob/main/Spiral%20DAO%20Security%20Analysis%20by%20Pessimistic.pdf">https://github.com/pessimistic-io/audits/blob/main/Spiral%20DAO%20Security%20Analysis%20by%20Pessimistic.pdf</a></td></tr><tr><td></td><td> <strong>Spiral Lockers audit</strong></td><td></td><td><a href="">https://github.com/pessimistic-io/audits/blob/main/Spiral%20DAO%20Lockers%20Security%20Analysis%20by%20Pessimistic.pdf</a></td></tr></tbody></table>
- [2263] Spiral DAO SDT Adapter Security Analysis by Pessimistic.pdf

Fork inheritance lineage and inherited audits are included when available.
