# Agentic Audit Brief: Kasu

## Project Overview

- Project: Kasu (`kasu`)
- Website: [https://kasu.finance/](https://kasu.finance/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-05-23T04:06:56.040Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: base
- Contract surface: 22 unique implementations (56 raw deployments)
- DeFi Llama TVL: $10,284,767.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Kasu is a real-world asset (RWA) lending protocol on Base that enables users to deposit funds into lending pools and earn yield from off-chain credit facilities. It manages loan origination, clearing, and rewards through a system of upgradeable smart contracts.

### Architecture

All contracts belong to a single product family and share infrastructure through the KasuController, which likely governs access and configuration. The LendingPoolFactory deploys LendingPool and LendingPoolTranche instances, while the ClearingCoordinator and AcceptedRequestsCalculation handle loan settlement, and the KSU token with its locking and bonus contracts manages incentives.

## Audit Coverage Summary

- Verified implementations audited: 0/20 (0.0%)
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 22
- Raw deployments: 56
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AcceptedRequestsCalculation | unknown | base | 2 deployments: base [`0x0133c2...b3307a`](./contracts/base-8453/0x0133c2ec8a72dec51a9373e4003a2ccf09b3307a/); base `0x1e69dd...58bd0e` | ⚠️ Unaudited |
| ClearingCoordinator | unknown | base | 4 deployments: base [`0x273597...0b556c`](./contracts/base-8453/0x273597f8cc3a0d87f9e57af1144ca02ca20b556c/); base `0x2889ea...175ed1`; base `0x2cf12a...f57de2`; base `0x8d38a2...1737b7` | ⚠️ Unaudited |
| FeeManager | governance | base | 2 deployments: base [`0xe2accc...227016`](./contracts/base-8453/0xe2accc83a41f8d5f4baf57be42e9856091227016/); base `0xef956c...39b6b9` | ⚠️ Unaudited |
| FixedTermDeposit | unknown | base | 2 deployments: base [`0x1617b7...c0f833`](./contracts/base-8453/0x1617b79c57e00c862941eb578fd134c4d1c0f833/); base `0x757ab3...ae5ed3` | ⚠️ Unaudited |
| KasuAllowList | unknown | base | 2 deployments: base [`0x6fd19b...c479bd`](./contracts/base-8453/0x6fd19b47c857640428ba011ff1dc454c5ec479bd/); base `0x807a7e...cbf8bb` | ⚠️ Unaudited |
| KasuController | governance | base | 2 deployments: base [`0xb0d7eb...5d2868`](./contracts/base-8453/0xb0d7eb2d5036fb85a231d0e243a5b723ba5d2868/); base `0xe768e5...60b052` | ⚠️ Unaudited |
| KasuPoolExternalTVL | core_logic | base | 2 deployments: base [`0x662379...9f3c9f`](./contracts/base-8453/0x662379febb3e4f91400b5f7d4f7f7ce4699f3c9f/); base `0xe477a8...2cb191` | ⚠️ Unaudited |
| KSU | unknown | base | 2 deployments: base [`0x5d9b87...ceadba`](./contracts/base-8453/0x5d9b878744dbe721a3f33a60a6b102e289ceadba/); base `0x792383...acf693` | ⚠️ Unaudited |
| KSULockBonus | unknown | base | 2 deployments: base [`0x39a4e4...89e41a`](./contracts/base-8453/0x39a4e4df478a792afaa9ff56ca7cd5327a89e41a/); base `0xeede30...e20b40` | ⚠️ Unaudited |
| KSULocking | unknown | base | 3 deployments: base [`0x0b98f5...397931`](./contracts/base-8453/0x0b98f531754c55c2c2a084e0ec1647ccee397931/); base `0x601eab...c3d1ef`; base `0xb145c0...553ce1` | ⚠️ Unaudited |
| LendingPool | core_logic | base | 4 deployments: base [`0x2af3eb...d7ab31`](./contracts/base-8453/0x2af3eb5945a524e1c23dc2fb2b3b37a5cad7ab31/); base `0x8855ec...926e8f`; base `0x9b9ec3...efa621`; base `0xcdc9b9...a1de99` | ⚠️ Unaudited |
| LendingPoolFactory | registry | base | 3 deployments: base [`0x263b5d...ab05a8`](./contracts/base-8453/0x263b5d074584118ff2b65b0125ac8a4529ab05a8/); base `0x617b6e...03f9f3`; base `0xd8c77e...905190` | ⚠️ Unaudited |
| LendingPoolManager | core_logic | base | 4 deployments: base [`0x2cce4a...48e955`](./contracts/base-8453/0x2cce4a6d835c60ae98aa2914f0153c354d48e955/); base `0xc94216...67ebff`; base `0xd2812f...80c229`; base `0xe1be32...2096b5` | ⚠️ Unaudited |
| LendingPoolTranche | core_logic | base | 5 deployments: base [`0x31b186...bac13f`](./contracts/base-8453/0x31b186049085e7bf5b68c27657bd73b5a5bac13f/); base `0x8f2b35...467f12`; base `0xa2e999...4fb1d0`; base `0xec9980...d9c899`; base `0xef5d12...3033be` | ⚠️ Unaudited |
| ManualKsuPrice | operational_periphery | base | 2 deployments: base [`0x221a54...4e5c1b`](./contracts/base-8453/0x221a54cbbd5f490bd8e77cf36acba4b1304e5c1b/); base `0xb82992...ca4dc6` | ⚠️ Unaudited |
| PendingPool | core_logic | base | 4 deployments: base [`0x0c5554...c7f4cc`](./contracts/base-8453/0x0c5554058118dba2da4a3ca2a448c5a61bc7f4cc/); base `0x3cf856...c7dbf4`; base `0x6ecd74...c8e2e0`; base `0xc17f46...03e3a9` | ⚠️ Unaudited |
| Swapper | adapter | base | 2 deployments: base [`0x1ca11e...261cf3`](./contracts/base-8453/0x1ca11edb8d8a57b239925c46be878dc2c9261cf3/); base `0xe593ed...baa6d2` | ⚠️ Unaudited |
| SystemVariables | unknown | base | 2 deployments: base [`0x193bb0...c41f69`](./contracts/base-8453/0x193bb02a24f5562b58feb86550e6f09bb6c41f69/); base `0xe91994...a3cd4a` | ⚠️ Unaudited |
| UserLoyaltyRewards | unknown | base | 2 deployments: base [`0xb4784f...19d635`](./contracts/base-8453/0xb4784f69bb1f1076f50907cb0a815908a719d635/); base `0xf0e92a...364be9` | ⚠️ Unaudited |
| UserManager | governance | base | 3 deployments: base [`0x5dc8d3...3c93f3`](./contracts/base-8453/0x5dc8d315a80fd99abef0f327b9a52a3fbc3c93f3/); base `0xaa81b5...7a5436`; base `0xcdb16b...48fed0` | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x273597...0b556c`](./contracts/base-8453/0x273597f8cc3a0d87f9e57af1144ca02ca20b556c/) | ClearingCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe2accc...227016`](./contracts/base-8453/0xe2accc83a41f8d5f4baf57be42e9856091227016/) | FeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1617b7...c0f833`](./contracts/base-8453/0x1617b79c57e00c862941eb578fd134c4d1c0f833/) | FixedTermDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6fd19b...c479bd`](./contracts/base-8453/0x6fd19b47c857640428ba011ff1dc454c5ec479bd/) | KasuAllowList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x39a4e4...89e41a`](./contracts/base-8453/0x39a4e4df478a792afaa9ff56ca7cd5327a89e41a/) | KSULockBonus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0b98f5...397931`](./contracts/base-8453/0x0b98f531754c55c2c2a084e0ec1647ccee397931/) | KSULocking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2af3eb...d7ab31`](./contracts/base-8453/0x2af3eb5945a524e1c23dc2fb2b3b37a5cad7ab31/) | LendingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x263b5d...ab05a8`](./contracts/base-8453/0x263b5d074584118ff2b65b0125ac8a4529ab05a8/) | LendingPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2cce4a...48e955`](./contracts/base-8453/0x2cce4a6d835c60ae98aa2914f0153c354d48e955/) | LendingPoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x31b186...bac13f`](./contracts/base-8453/0x31b186049085e7bf5b68c27657bd73b5a5bac13f/) | LendingPoolTranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0c5554...c7f4cc`](./contracts/base-8453/0x0c5554058118dba2da4a3ca2a448c5a61bc7f4cc/) | PendingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1ca11e...261cf3`](./contracts/base-8453/0x1ca11edb8d8a57b239925c46be878dc2c9261cf3/) | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
