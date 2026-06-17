# Agentic Audit Brief: KiloEx

⚠️ Lifecycle status: DECLINING - TVL dropped 42.4% over 90 days

## Project Overview

- Project: KiloEx (`kiloex`)
- Website: [https://app.kiloex.io/#/trade](https://app.kiloex.io/#/trade)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T22:36:21.432Z
- Pipeline run: v2-pipeline-2026-06-17-2a130c-9ddf
- Chains: base, bsc, manta, opbnb
- Contract surface: 40 unique implementations (52 raw deployments)
- DeFi Llama TVL: $2,178,474.98
- On-chain TVL (included contracts): $5,709,133.23
- TVL by chain: Bsc $5,709,133.23

## Project Description

KiloEx is a decentralized derivatives exchange that enables users to trade leveraged perpetual futures across multiple chains.

### Architecture

The KiloEx family uses TransparentUpgradeableProxy contracts to manage upgradeable logic for core components, while BeaconProxy and StoneCross provide cross-chain and staking infrastructure. Tokens like IBTC, OBTC, and SolvBTCV3 serve as collateral or trading pairs within the derivatives platform.

## Contract Surface Quality

- Indexed contracts: 185; live-surface contracts included: 52 (18 live, 34 unknown).
- Excluded by liveness: 52 inactive, 81 singleton, 0 uninitialized.
- Deployment units: 8/54 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/18 (16.7%)
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 40
- Raw deployments: 52
- Audits discovered: 10
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Staleness: 0 fresh, 3 aging, 7 stale, 0 unknown
- Tier 1 coverage: 11.1% (SlowMist)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 2 | 11.1% | 2025-03 |
| Scalebit | Tier 2 | 1 | 5.6% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| KiloExToken | token | bsc | n/a | 2 deployments: bsc [`0x503fa2...c1df53`](./contracts/bsc-56/0x503fa24b7972677f00c4618e5fbe237780c1df53/); bsc `0xfcd054...a7019a` | ✅ Audited |
| MarketOrderWithTriggerOrder | unknown | bsc | unit-33395 | [`0x256035...23eaeb`](./contracts/bsc-56/0x256035e9099c266f2a9bd3bdebc4c3f5a623eaeb/) | ✅ Audited |
| XKiloToken | token | bsc | unit-33400 | [`0xa58643...88c040`](./contracts/bsc-56/0xa586438a641bf1d44938dabe819249d55e88c040/) | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProxyAdmin | governance | base | n/a | [`0xc7437d...3a6b0f`](./contracts/base-8453/0xc7437df5b7cea272999e368d581f1d4d273a6b0f/) | ⚠️ Unaudited |
| SolvBTCV3 | unknown | base | unit-33417 | [`0x3b86ad...ee931f`](./contracts/base-8453/0x3b86ad95859b6ab773f55f8d94b4b9d443ee931f/) | ⚠️ Unaudited |
| StoneCross | unknown | base | n/a | [`0xd2012f...c728c6`](./contracts/base-8453/0xd2012fc1b913ce50732ebcaa7e601fe37ac728c6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 12 deployments: bsc [`0x078e31...7ffcda`](./contracts/bsc-56/0x078e31821c94e5a99a64fdc60ccae97e807ffcda/); bsc `0x49182d...716de7`; bsc `0x637142...e9e7da`; bsc `0x8d47bc...829b1e`; manta `0x19653d...a2717c`; manta `0x1ebed4...6e8c46`; manta `0x43e3e6...c6b477`; manta `0x471c5e...adff99`; manta `0xa02d43...536acc`; manta `0xa10f74...7e332a`; manta `0xe47262...aad4d0`; manta `0xf1fd3c...bec648` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | unit-33394 | [`0x1c3f35...7ad0fb`](./contracts/bsc-56/0x1c3f35f7883fc4ea8c4bca1507144dc6087ad0fb/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | unit-33396 | [`0x298e94...25d019`](./contracts/bsc-56/0x298e94d5494e7c461a05903dcf41910e0125d019/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | unit-33397 | [`0x41601f...d02b98`](./contracts/bsc-56/0x41601ff5b9e09c2572fe137dc3f5502584d02b98/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | unit-33398 | [`0x746c18...7692e2`](./contracts/bsc-56/0x746c180268825b52fc5ea8057ecf3768037692e2/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | unit-33399 | [`0x7c09a8...9f0864`](./contracts/bsc-56/0x7c09a8df940cf1d14d4c24f90aca39ee619f0864/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | unit-33401 | [`0xc23b49...973c48`](./contracts/bsc-56/0xc23b49051257fa3d5aaba16a2ce2af8a04973c48/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | unit-33402 | [`0xef7af0...c6cf48`](./contracts/bsc-56/0xef7af0804aab3885da59a8236fabfa19ddc6cf48/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | unit-33403 | [`0xfe03be...351356`](./contracts/bsc-56/0xfe03be1b0504031e92eda810374222c944351356/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | opbnb | unit-33404 | [`0x19653d...a2717c`](./contracts/opbnb-204/0x19653dc8d30e39442b9cc96cb60d755e49a2717c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | opbnb | unit-33405 | [`0x1a7b3f...62f981`](./contracts/opbnb-204/0x1a7b3f8890da3cc6968c182fa528ce9c9c62f981/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | opbnb | unit-33406 | [`0x1bc6f4...e91d93`](./contracts/opbnb-204/0x1bc6f42d6d1680115a52f82dfa29265085e91d93/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| KiloStorageManager | unknown | opbnb | n/a | `0x1ebed4...6e8c46` | ❓ Unverified |
| MarketOrderWithTriggerOrder | unknown | opbnb | n/a | `0xe0ee1c...b752f7` | ❓ Unverified |
| OrderBook | unknown | opbnb | n/a | `0x43e3e6...c6b477` | ❓ Unverified |
| PositionRouter / market contract | adapter | opbnb | n/a | `0xa02d43...536acc` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x0bba2d...9742d8` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x174aef...219593` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x335459...bb8b16` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x44e568...492849` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x5dc0a3...12820f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x739118...6c6176` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x7746ef...d75717` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x8dd0bd...32b7f6` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x95a4d4...d0f940` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x99a249...3c2d02` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x9d40ca...fbf0e2` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xb1437a...582e9a` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xb26a51...16c094` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xc94b9f...110423` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2aca0c...343357` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x97ad75...07a706` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x984eb2...9af13a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdaf169...98cf07` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PDF](https://drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view?usp=sharing) | Secure3 | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [PDF](https://drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view?usp=sharing) | Ancilia | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [PDF](https://scalebit.xyz/reports/Kilo---Vault2-Final-Audit-Report.pdf) | Scalebit | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [PDF](https://scalebit.xyz/reports/20240802-HybridVault-Final-Audit-Report.pdf) | Scalebit | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [PDF](https://scalebit.xyz/reports/20250321-XKilo-Token-Final-Audit-Report.pdf) | Scalebit | Audit | 2024-07 | aging | Direct | contract_name | 2 | high |
| [PDF](https://github.com/KiloExPerp/kiloex-audit/blob/main/KiloEx%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-03 | aging | Direct | contract_name | 5 | high |
| [HybridVault Audit Report.pdf](https://github.com/KiloExPerp/kiloex-audit/blob/main/HybridVault%20Audit%20Report.pdf) | unknown | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [Kilo - Vault2 Audit Report.pdf](https://github.com/KiloExPerp/kiloex-audit/blob/main/Kilo%20-%20Vault2%20Audit%20Report.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [Kilo Auditing Report 1.3 public.pdf](https://github.com/KiloExPerp/kiloex-audit/blob/main/Kilo%20Auditing%20Report%201.3%20public.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | 2 | high |
| [KiloEx_final_Secure3_Audit_Report.pdf](https://github.com/KiloExPerp/kiloex-audit/blob/main/KiloEx_final_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2023-06 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 1 |
| standard_library | 16 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=12

Zero-match audit list:

- [2766] PDF
- [2767] PDF
- [2768] PDF
- [2769] PDF
- [2772] HybridVault Audit Report.pdf
- [2773] Kilo - Vault2 Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
