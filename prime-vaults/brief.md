# Agentic Audit Brief: Prime Vaults

⚠️ Lifecycle status: SUNSETTING - TVL dropped 98.3% over 90 days

## Project Overview

- Project: Prime Vaults (`prime-vaults`)
- Website: [https://app.primevaults.finance](https://app.primevaults.finance)
- Lifecycle: sunsetting (Tier 1, sunsetting)
- Generated: 2026-06-19T22:28:10.159Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: berachain
- Contract surface: 45 unique implementations (59 raw deployments)
- DeFi Llama TVL: $11,031.83
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Prime Vaults is an onchain capital allocator that manages yield-bearing vaults on Berachain. It automates deposit routing and accounting to optimize returns for users.

### Architecture

The unnamed core contracts likely represent vault logic and strategy management, while AccountantProviders handle fee and performance accounting. ArcticArchitectureLens serves as a read-only lens into the system, and all contracts are deployed from a single cluster, indicating a unified, self-contained architecture.

## Contract Surface Quality

- Indexed contracts: 59; live-surface contracts included: 59 (58 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Unverified dependencies: 15/19.

## Audit Coverage Summary

- Verified implementations audited: 3/4 (75.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 41
- Unique implementations: 45
- Raw deployments: 59
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Staleness: 2 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [sunsetting]. ASD of n/a represents exposure in a protocol with sunsetting activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 75.0% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountantProviders | operational_periphery | berachain | n/a | 6 deployments: berachain [`0x1d76ae...72b1f7`](./contracts/berachain-80094/0x1d76aebde11cc3f5dbf944fcb68f63212a72b1f7/); berachain `0x1d7e0b...1543d6`; berachain `0x1e3117...b295db`; berachain `0x71a816...ffc47c`; berachain `0x7c6c45...942a31`; berachain `0xd0e956...dcce1b` | ✅ Audited |
| Distributor | operational_periphery | berachain | n/a | 5 deployments: berachain [`0x01867f...9b82a8`](./contracts/berachain-80094/0x01867f25a7a285de5a19c2a3655ded09609b82a8/); berachain `0x7b7944...c2d3a1`; berachain `0x96a9c4...5d38f6`; berachain `0xac1ff4...53f655`; berachain `0xde7603...db4672` | ✅ Audited |
| TellerWithBuffer | core_logic | berachain | n/a | 6 deployments: berachain [`0x01e136...48d9b4`](./contracts/berachain-80094/0x01e1360515aea5007e8b9ec3327223bf6548d9b4/); berachain `0x04004e...f02a2a`; berachain `0x1936a7...654e96`; berachain `0x8176e3...95d94b`; berachain `0x819823...3eb2ed`; berachain `0xd77cb8...4fc5cc` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArcticArchitectureLens | periphery | berachain | n/a | [`0x5232bc...f94a1b`](./contracts/berachain-80094/0x5232bc0f5999f8da604c42e1748a13a170f94a1b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (41)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | berachain | n/a | `0x010efc...2bab90` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x0c9169...f349e8` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x12a06c...7cdf26` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x1442af...3c33d2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x19311b...4a4e53` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x30d25d...201fbe` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x3af6cb...65e783` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x66cd77...44c6ab` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x729ab2...363b7a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x74d58c...f3d67a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x88a164...172e03` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x8ad14b...23eae8` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x8ba1ae...c50dd2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x8f9f3e...95e315` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x9b1dd3...f25260` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xa4cd06...6c6758` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xa607e6...514ae4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xaa8233...00d9af` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xaed960...6cf76a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb1585c...019881` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb24286...5266b3` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb9179d...70f284` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb96b47...acf6a2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xbd4278...c8f168` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xccee5d...720660` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd261cb...d9f797` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd4c143...7aa1c6` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd4c927...d3308b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd57c84...a95837` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xdb1f0f...a53d56` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xde5608...03ef3d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xdf1f53...24b2fb` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xe68cb1...61717c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xea1def...da532c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf0fc03...974774` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf1b346...66a11c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf2adcb...a114d3` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf3e33e...30860b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf4e20b...cfd3e5` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf52405...56f8cb` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xfb714e...b14c09` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Prime-Vaults-Security-Review.pdf](https://github.com/shieldify-security/audits-portfolio/blob/main/reports/Prime-Vaults-Security-Review.pdf) | unknown | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [Prime-vault_audit_report_2025-12-22.pdf](https://github.com/Salusec/Salus-audit/blob/main/2025/Prime-vault_audit_report_2025-12-22.pdf) | unknown | Audit | 2025-12 | fresh | Direct | contract_name | 17 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | [`0x5232bc...f94a1b`](./contracts/berachain-80094/0x5232bc0f5999f8da604c42e1748a13a170f94a1b/) | ArcticArchitectureLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 45 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=17

Zero-match audit list:

- [13696] Prime-Vaults-Security-Review.pdf

Fork inheritance lineage and inherited audits are included when available.
