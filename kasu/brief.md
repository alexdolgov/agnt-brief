# Agentic Audit Brief: Kasu

## Project Overview

- Project: Kasu (`kasu`)
- Website: [https://kasu.finance/](https://kasu.finance/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-12T22:37:07.779Z
- Pipeline run: v2-pipeline-2026-06-12-546062-9d5a
- Chains: base
- Contract surface: 22 unique implementations (61 raw deployments)
- DeFi Llama TVL: $10,553,837.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Kasu is a multi-chain real-world asset (RWA) and private-credit lending protocol with TVL on Base and XDC. It enables users to deposit funds into lending pools and earn yield from off-chain credit facilities, with loan origination, clearing, and rewards managed through upgradeable smart contracts. The currently captured contract surface appears to cover Base deployments only; XDC and any other chain deployments should be treated as out of scope unless separately indexed.

### Architecture

All contracts belong to a single product family and share infrastructure through the KasuController, which likely governs access and configuration. The LendingPoolFactory deploys LendingPool and LendingPoolTranche instances, while the ClearingCoordinator and AcceptedRequestsCalculation handle loan settlement, and the KSU token with its locking and bonus contracts manages incentives.

## Audit Coverage Summary

- Verified implementations audited: 20/20 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 22
- Raw deployments: 61
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Staleness: 0 fresh, 1 aging, 1 stale, 0 unknown
- Tier 1 coverage: 100.0% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 20 | 100.0% | 2024-10 |
| 0xCommit | Tier 2 | 1 | 5.0% | 2024-06 |

## Contract Surface

### ✅ Verified + Audited (20)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AcceptedRequestsCalculation | unknown | base | 2 deployments: base [`0x0133c2...b3307a`](./contracts/base-8453/0x0133c2ec8a72dec51a9373e4003a2ccf09b3307a/); base `0x1e69dd...58bd0e` | ✅ Audited |
| ClearingCoordinator | unknown | base | 4 deployments: base [`0x273597...0b556c`](./contracts/base-8453/0x273597f8cc3a0d87f9e57af1144ca02ca20b556c/); base `0x2889ea...175ed1`; base `0x2cf12a...f57de2`; base `0x8d38a2...1737b7` | ✅ Audited |
| FeeManager | governance | base | 2 deployments: base [`0xe2accc...227016`](./contracts/base-8453/0xe2accc83a41f8d5f4baf57be42e9856091227016/); base `0xef956c...39b6b9` | ✅ Audited |
| FixedTermDeposit | unknown | base | 2 deployments: base [`0x1617b7...c0f833`](./contracts/base-8453/0x1617b79c57e00c862941eb578fd134c4d1c0f833/); base `0x757ab3...ae5ed3` | ✅ Audited |
| KasuAllowList | unknown | base | 2 deployments: base [`0x6fd19b...c479bd`](./contracts/base-8453/0x6fd19b47c857640428ba011ff1dc454c5ec479bd/); base `0x807a7e...cbf8bb` | ✅ Audited |
| KasuController | governance | base | 2 deployments: base [`0xb0d7eb...5d2868`](./contracts/base-8453/0xb0d7eb2d5036fb85a231d0e243a5b723ba5d2868/); base `0xe768e5...60b052` | ✅ Audited |
| KasuPoolExternalTVL | core_logic | base | 2 deployments: base [`0x662379...9f3c9f`](./contracts/base-8453/0x662379febb3e4f91400b5f7d4f7f7ce4699f3c9f/); base `0xe477a8...2cb191` | ✅ Audited |
| KSU | unknown | base | 2 deployments: base [`0x5d9b87...ceadba`](./contracts/base-8453/0x5d9b878744dbe721a3f33a60a6b102e289ceadba/); base `0x792383...acf693` | ✅ Audited |
| KSULockBonus | unknown | base | 2 deployments: base [`0x39a4e4...89e41a`](./contracts/base-8453/0x39a4e4df478a792afaa9ff56ca7cd5327a89e41a/); base `0xeede30...e20b40` | ✅ Audited |
| KSULocking | unknown | base | 3 deployments: base [`0x0b98f5...397931`](./contracts/base-8453/0x0b98f531754c55c2c2a084e0ec1647ccee397931/); base `0x601eab...c3d1ef`; base `0xb145c0...553ce1` | ✅ Audited |
| LendingPool | core_logic | base | 5 deployments: base [`0x2af3eb...d7ab31`](./contracts/base-8453/0x2af3eb5945a524e1c23dc2fb2b3b37a5cad7ab31/); base `0x8855ec...926e8f`; base `0x9b9ec3...efa621`; base `0xb6deab...9c04fe`; base `0xcdc9b9...a1de99` | ✅ Audited |
| LendingPoolFactory | registry | base | 3 deployments: base [`0x263b5d...ab05a8`](./contracts/base-8453/0x263b5d074584118ff2b65b0125ac8a4529ab05a8/); base `0x617b6e...03f9f3`; base `0xd8c77e...905190` | ✅ Audited |
| LendingPoolManager | core_logic | base | 5 deployments: base [`0x2cce4a...48e955`](./contracts/base-8453/0x2cce4a6d835c60ae98aa2914f0153c354d48e955/); base `0x4ae8ef...5dacfc`; base `0xc94216...67ebff`; base `0xd2812f...80c229`; base `0xe1be32...2096b5` | ✅ Audited |
| LendingPoolTranche | core_logic | base | 6 deployments: base [`0x31b186...bac13f`](./contracts/base-8453/0x31b186049085e7bf5b68c27657bd73b5a5bac13f/); base `0x8f2b35...467f12`; base `0x94a699...00f3f9`; base `0xa2e999...4fb1d0`; base `0xec9980...d9c899`; base `0xef5d12...3033be` | ✅ Audited |
| ManualKsuPrice | operational_periphery | base | 2 deployments: base [`0x221a54...4e5c1b`](./contracts/base-8453/0x221a54cbbd5f490bd8e77cf36acba4b1304e5c1b/); base `0xb82992...ca4dc6` | ✅ Audited |
| PendingPool | core_logic | base | 5 deployments: base [`0x080238...e05e1d`](./contracts/base-8453/0x08023888ffb36f007679d1ec64a4f22f54e05e1d/); base `0x0c5554...c7f4cc`; base `0x3cf856...c7dbf4`; base `0x6ecd74...c8e2e0`; base `0xc17f46...03e3a9` | ✅ Audited |
| Swapper | adapter | base | 2 deployments: base [`0x1ca11e...261cf3`](./contracts/base-8453/0x1ca11edb8d8a57b239925c46be878dc2c9261cf3/); base `0xe593ed...baa6d2` | ✅ Audited |
| SystemVariables | unknown | base | 3 deployments: base [`0x193bb0...c41f69`](./contracts/base-8453/0x193bb02a24f5562b58feb86550e6f09bb6c41f69/); base `0x666b58...e0eb52`; base `0xe91994...a3cd4a` | ✅ Audited |
| UserLoyaltyRewards | unknown | base | 2 deployments: base [`0xb4784f...19d635`](./contracts/base-8453/0xb4784f69bb1f1076f50907cb0a815908a719d635/); base `0xf0e92a...364be9` | ✅ Audited |
| UserManager | governance | base | 3 deployments: base [`0x5dc8d3...3c93f3`](./contracts/base-8453/0x5dc8d315a80fd99abef0f327b9a52a3fbc3c93f3/); base `0xaa81b5...7a5436`; base `0xcdb16b...48fed0` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | base | `0x59c8ea...d0eedc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xafb296...3a7765` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Kasu_0xCommit.pdf](https://github.com/Kasu-Finance/security/blob/main/audits/Kasu_0xCommit.pdf) | 0xCommit | Audit | 2024-06 | stale | Direct | contract_name | 2 | medium |
| [Kasu_ChainSecurity.pdf](https://github.com/Kasu-Finance/security/blob/main/audits/Kasu_ChainSecurity.pdf) | ChainSecurity | Audit | 2024-10 | aging | Direct | contract_name | 54 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 9 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: extraction_exact=56

Fork inheritance lineage and inherited audits are included when available.
