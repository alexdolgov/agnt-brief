# Agentic Audit Brief: SpiralDao

⚠️ Lifecycle status: DEAD - TVL dropped 15.0% over 90 days

## Project Overview

- Project: SpiralDao (`spiraldao`)
- Website: [https://spiral.farm](https://spiral.farm)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-05-23T11:31:30.621Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum, zksync-era
- Contract surface: 56 unique implementations (80 raw deployments)
- DeFi Llama TVL: $6,404,991.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

SpiralDao is a yield aggregation and liquid locker protocol that allows users to stake tokens, earn rewards, and lock governance tokens (MAV, SDT) to receive liquid locker tokens representing their locked positions.

### Architecture

The Main family provides foundational staking and reward infrastructure, while the locker families (MAV and SDT) extend it with liquid locking capabilities, sharing patterns like RewarderVault and proxy-based upgradeability. Governance is managed through GnosisSafe multisigs and ProxyAdmin contracts across families.

## Audit Coverage Summary

- Verified implementations audited: 11/25 (44.0%)
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 31
- Unique implementations: 56
- Raw deployments: 80
- Audits discovered: 3
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 7 | 28.0% | 2023-01 |
| Pessimistic | Tier 2 | 4 | 16.0% | 2023-10 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AuraAdapter | adapter | ethereum | [`0xcada31...ac9e51`](./contracts/ethereum-1/0xcada317426fc4c7e34daeaae36e3dd649bac9e51/) | ✅ Audited |
| AuraDelegate | unknown | ethereum | [`0x767609...c38f6f`](./contracts/ethereum-1/0x76760961b509f9337a7c03077becd23163c38f6f/) | ✅ Audited |
| Coil | unknown | ethereum | [`0x823e1b...1ce918`](./contracts/ethereum-1/0x823e1b82ce1dc147bbdb25a203f046afab1ce918/) | ✅ Audited |
| LiquidLockerMAV | unknown | ethereum | [`0xa2ab3f...dbb9d5`](./contracts/ethereum-1/0xa2ab3fd45a369da49308d086556cc0096fdbb9d5/) | ✅ Audited |
| LockerMaster | unknown | ethereum | 5 deployments: ethereum [`0x0b3bac...96952e`](./contracts/ethereum-1/0x0b3bacb08142d1e37e67033f1e16a388ae96952e/); ethereum `0x58587f...00341c`; ethereum `0xbdaf82...a10047`; ethereum `0xdd5f42...60b3ab`; ethereum `0xe68d41...6bc748` | ✅ Audited |
| LockerMasterSDT | unknown | ethereum | 2 deployments: ethereum [`0x4a6854...6748a1`](./contracts/ethereum-1/0x4a6854b88bfc87369cb9ca1a488e1a2cf76748a1/); ethereum `0x90a62d...6d41b9` | ✅ Audited |
| LockerStaking | unknown | ethereum | 2 deployments: ethereum [`0x601bd4...587dff`](./contracts/ethereum-1/0x601bd4f450e55b3b9e35e7455a822e89b8587dff/); ethereum `0xab0da8...df8451` | ✅ Audited |
| MasterMind | unknown | ethereum | 2 deployments: ethereum [`0x087fd5...d26804`](./contracts/ethereum-1/0x087fd5d07907f864285dbd94acef8cfb5bd26804/); ethereum `0xface8d...9df65e` | ✅ Audited |
| Rewarder | unknown | ethereum | 3 deployments: ethereum [`0x72614b...22b347`](./contracts/ethereum-1/0x72614b5d6f388b089f343723fcc3a5b4fc22b347/); ethereum `0xb194c9...c3a1f1`; ethereum `0xce3c96...298a44` | ✅ Audited |
| Spiral | unknown | ethereum | [`0x85b6ac...4b9180`](./contracts/ethereum-1/0x85b6acaba696b9e4247175274f8263f99b4b9180/) | ✅ Audited |
| SpiralStaking | token | ethereum | [`0x6701e7...4b4943`](./contracts/ethereum-1/0x6701e792b7cd344bae763f27099eeb314a4b4943/) | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| _ProxyAdmin | governance | ethereum | 3 deployments: ethereum [`0x3fe5ea...a0c59f`](./contracts/ethereum-1/0x3fe5ea9e3fd7533d6744d72670c48be22ba0c59f/); ethereum `0xae3f25...bf4f60`; ethereum `0xb6ab0d...902034` | ⚠️ Unaudited |
| Adapter | adapter | ethereum | [`0xfa2cc6...9a0ab0`](./contracts/ethereum-1/0xfa2cc610becc6cbacd4821a43650d52daf9a0ab0/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | 3 deployments: ethereum [`0xb04f5c...534cd6`](./contracts/ethereum-1/0xb04f5c8b1bced48aa7c744adca5429b693534cd6/); ethereum `0xc47ec7...209639`; ethereum `0xf14efc...361c38` | ⚠️ Unaudited |
| LiquidLockerMAVv2 | unknown | ethereum | 5 deployments: ethereum [`0x06d2d8...e790b8`](./contracts/ethereum-1/0x06d2d8e337a5106694f26e7989b07f693ce790b8/); ethereum `0x2b3088...a2eb44`; ethereum `0x4cf8b3...07c09d`; ethereum `0x78c056...e2b5a2`; ethereum `0xe0d341...bf5622` | ⚠️ Unaudited |
| LockerDistributor | operational_periphery | ethereum | 2 deployments: ethereum [`0x648868...e1e95a`](./contracts/ethereum-1/0x648868eea94177ab29152ea3246febfe77e1e95a/); ethereum `0x811c56...f08a9b` | ⚠️ Unaudited |
| LockerToken | token | ethereum | 2 deployments: ethereum [`0x488b7c...acfb62`](./contracts/ethereum-1/0x488b7c4b2731dc6a4121fc125439a025d7acfb62/); ethereum `0xc54ff2...3bf7d9` | ⚠️ Unaudited |
| LockerTokenWrapper | token | ethereum | 2 deployments: ethereum [`0xd93822...8f59dd`](./contracts/ethereum-1/0xd93822158a81106f0ee358f9b89749d5de8f59dd/); ethereum `0xea0c89...9dae4d` | ⚠️ Unaudited |
| Redemption | unknown | ethereum | [`0x0885ab...c14b42`](./contracts/ethereum-1/0x0885ab00fbb9a130dee612847ef40c01abc14b42/) | ⚠️ Unaudited |
| RewarderVault | core_logic | ethereum | 3 deployments: ethereum [`0x21fb75...2ec25f`](./contracts/ethereum-1/0x21fb7536afddaaaf59d65cc4f7336d4d812ec25f/); ethereum `0x31878e...6f415f`; ethereum `0xaee1ad...0d71fd` | ⚠️ Unaudited |
| RewardEscrow | operational_periphery | ethereum | 2 deployments: ethereum [`0x0c2149...fcf263`](./contracts/ethereum-1/0x0c2149a9db579d202a54f8ae999e74a093fcf263/); ethereum `0x886ac3...9fa19c` | ⚠️ Unaudited |
| SpiralMerkleDrop | operational_periphery | ethereum | [`0xa491d6...4edafe`](./contracts/ethereum-1/0xa491d60c12774dd78201fdf400a8dd81524edafe/) | ⚠️ Unaudited |
| SpiralRedeem | unknown | ethereum | [`0x4fe67f...9f3db3`](./contracts/ethereum-1/0x4fe67fd442889d158c311de734f45339ed9f3db3/) | ⚠️ Unaudited |
| SpiralRouterV1 | adapter | ethereum | 2 deployments: ethereum [`0x0340d9...058c3b`](./contracts/ethereum-1/0x0340d9491fe7740af9c643c3c2b4126d23058c3b/); ethereum `0xfb1371...0a50e8` | ⚠️ Unaudited |
| SpiralRouterV2 | adapter | ethereum | [`0x2280df...83e22b`](./contracts/ethereum-1/0x2280dfeeafdd9ebaf5868ded8f1267749883e22b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (31)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0a05fc...d61974` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x16b9de...90d216` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1a4621...7719a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4ad11a...df9b43` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x56cc0a...2cc91f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x56fc56...7fb80a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x59a544...4ee9d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6ae737...cbd6ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6b07d5...061ac5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7fc5f1...9ed55c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x899a79...3755e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x89c181...ed73af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8a8ae5...113293` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x943bde...0222fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa9362c...325bed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xab1789...271309` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb79fd7...a8f837` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc60879...a9c944` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcc242b...964bb1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xce0e97...55e8cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd8f03c...295015` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xec461f...2917a5` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x010067...f8a2ff` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x0bdb24...71df8d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x125049...14d4e1` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x1a4258...be9ee7` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x348a88...7fee22` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x6e2e85...8e5384` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x8320df...f4d70f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x9e7daf...6c1e25` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xea0c89...9dae4d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Spiral DAO Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/main/Spiral%20DAO%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2023-01 | stale | Direct | contract_name | 10 | high |
| [<table data-view="cards"><thead><tr><th></th><th></th><th></th><th data-hidden data-card-target data-type="content-ref"></th></tr></thead><tbody><tr><td></td><td> <strong>Spiral DAO audit</strong></td><td></td><td><a href="https://github.com/pessimistic-io/audits/blob/main/Spiral%20DAO%20Security%20Analysis%20by%20Pessimistic.pdf">https://github.com/pessimistic-io/audits/blob/main/Spiral%20DAO%20Security%20Analysis%20by%20Pessimistic.pdf</a></td></tr><tr><td></td><td> <strong>Spiral Lockers audit</strong></td><td></td><td><a href="">https://github.com/pessimistic-io/audits/blob/main/Spiral%20DAO%20Lockers%20Security%20Analysis%20by%20Pessimistic.pdf</a></td></tr></tbody></table>](https://github.com/pessimistic-io/audits/blob/main/Spiral%20DAO%20Lockers%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2023-10 | stale | Direct | contract_name | 8 | high |
| [Spiral DAO SDT Adapter Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/main/Spiral%20DAO%20SDT%20Adapter%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2023-09 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xfa2cc6...9a0ab0`](./contracts/ethereum-1/0xfa2cc610becc6cbacd4821a43650d52daf9a0ab0/) | Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06d2d8...e790b8`](./contracts/ethereum-1/0x06d2d8e337a5106694f26e7989b07f693ce790b8/) | LiquidLockerMAVv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x648868...e1e95a`](./contracts/ethereum-1/0x648868eea94177ab29152ea3246febfe77e1e95a/) | LockerDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x488b7c...acfb62`](./contracts/ethereum-1/0x488b7c4b2731dc6a4121fc125439a025d7acfb62/) | LockerToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd93822...8f59dd`](./contracts/ethereum-1/0xd93822158a81106f0ee358f9b89749d5de8f59dd/) | LockerTokenWrapper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0885ab...c14b42`](./contracts/ethereum-1/0x0885ab00fbb9a130dee612847ef40c01abc14b42/) | Redemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21fb75...2ec25f`](./contracts/ethereum-1/0x21fb7536afddaaaf59d65cc4f7336d4d812ec25f/) | RewarderVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c2149...fcf263`](./contracts/ethereum-1/0x0c2149a9db579d202a54f8ae999e74a093fcf263/) | RewardEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa491d6...4edafe`](./contracts/ethereum-1/0xa491d60c12774dd78201fdf400a8dd81524edafe/) | SpiralMerkleDrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fe67f...9f3db3`](./contracts/ethereum-1/0x4fe67fd442889d158c311de734f45339ed9f3db3/) | SpiralRedeem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0340d9...058c3b`](./contracts/ethereum-1/0x0340d9491fe7740af9c643c3c2b4126d23058c3b/) | SpiralRouterV1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2280df...83e22b`](./contracts/ethereum-1/0x2280dfeeafdd9ebaf5868ded8f1267749883e22b/) | SpiralRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 42 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=20

Fork inheritance lineage and inherited audits are included when available.
