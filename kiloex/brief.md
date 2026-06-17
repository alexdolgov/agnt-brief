# Agentic Audit Brief: KiloEx

## Project Overview

- Project: KiloEx (`kiloex`)
- Website: [https://app.kiloex.io/#/trade](https://app.kiloex.io/#/trade)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-17T07:00:36.852Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base, bsc, manta
- Contract surface: 22 unique implementations (22 raw deployments)
- DeFi Llama TVL: $2,178,474.98
- On-chain TVL (included contracts): $5,709,133.23
- TVL by chain: Bsc $5,709,133.23

## Project Description

KiloEx is a decentralized derivatives exchange that enables users to trade leveraged perpetual futures across multiple chains.

### Architecture

The KiloEx family uses TransparentUpgradeableProxy contracts to manage upgradeable logic for core components, while BeaconProxy and StoneCross provide cross-chain and staking infrastructure. Tokens like IBTC, OBTC, and SolvBTCV3 serve as collateral or trading pairs within the derivatives platform.

## Contract Surface Quality

- Indexed contracts: 155; live-surface contracts included: 22 (8 live, 14 unknown).
- Excluded by liveness: 52 inactive, 81 singleton, 0 uninitialized.
- Deployment units: 1/41 live.
- Detected codebases: none
- Dependencies extracted: 4; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/4 (25.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 22
- Raw deployments: 22
- Audits discovered: 10
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Staleness: 0 fresh, 3 aging, 7 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Scalebit | Tier 2 | 1 | 25.0% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| KiloExToken | token | bsc | n/a | [`0x503fa2...c1df53`](./contracts/bsc-56/0x503fa24b7972677f00c4618e5fbe237780c1df53/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProxyAdmin | governance | base | n/a | [`0xc7437d...3a6b0f`](./contracts/base-8453/0xc7437df5b7cea272999e368d581f1d4d273a6b0f/) | ⚠️ Unaudited |
| SolvBTCV3 | unknown | base | unit-23383 | [`0x3b86ad...ee931f`](./contracts/base-8453/0x3b86ad95859b6ab773f55f8d94b4b9d443ee931f/) | ⚠️ Unaudited |
| StoneCross | unknown | base | n/a | [`0xd2012f...c728c6`](./contracts/base-8453/0xd2012fc1b913ce50732ebcaa7e601fe37ac728c6/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
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
| [PDF](https://scalebit.xyz/reports/20250321-XKilo-Token-Final-Audit-Report.pdf) | Scalebit | Audit | 2024-07 | aging | Direct | contract_name | 1 | high |
| [PDF](https://github.com/KiloExPerp/kiloex-audit/blob/main/KiloEx%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [HybridVault Audit Report.pdf](https://github.com/KiloExPerp/kiloex-audit/blob/main/HybridVault%20Audit%20Report.pdf) | unknown | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [Kilo - Vault2 Audit Report.pdf](https://github.com/KiloExPerp/kiloex-audit/blob/main/Kilo%20-%20Vault2%20Audit%20Report.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [Kilo Auditing Report 1.3 public.pdf](https://github.com/KiloExPerp/kiloex-audit/blob/main/Kilo%20Auditing%20Report%201.3%20public.pdf) | unknown | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [KiloEx_final_Secure3_Audit_Report.pdf](https://github.com/KiloExPerp/kiloex-audit/blob/main/KiloEx_final_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Zero-match audit list:

- [2766] PDF
- [2767] PDF
- [2768] PDF
- [2769] PDF
- [2771] PDF
- [2772] HybridVault Audit Report.pdf
- [2773] Kilo - Vault2 Audit Report.pdf
- [2774] Kilo Auditing Report 1.3 public.pdf
- [2775] KiloEx_final_Secure3_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
