# Agentic Audit Brief: Stream Finance

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Stream Finance (`stream-finance`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-06-19T08:27:27.823Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: ethereum
- Contract surface: 3 unique implementations (14 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): $412,392.68
- TVL by chain: Ethereum $412,392.68

## Project Description

Stream Finance is a yield protocol that allows users to deposit assets into vaults to earn yield. The protocol uses StreamVault contracts to manage deposits and generate returns, while StableWrapper contracts likely handle stablecoin interactions or wrapping.

### Architecture

StreamVault contracts serve as the core yield-generating vaults, while StableWrapper contracts likely act as adapters or wrappers for stablecoin deposits and withdrawals, enabling seamless interaction between the vaults and stablecoin assets.

## Contract Surface Quality

- Indexed contracts: 31; live-surface contracts included: 14 (14 live, 0 unknown).
- Excluded by liveness: 17 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 4; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/2 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 3
- Raw deployments: 14
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 100.0% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StreamVault | core_logic | ethereum | n/a | 8 deployments: ethereum [`0x12fd50...8057d6`](./contracts/ethereum-1/0x12fd502e2052cafb41eccc5b596023d9978057d6/); ethereum `0x2a2f84...3892c2`; ethereum `0x350fa4...7a916a`; ethereum `0x6efa12...0ad48e`; ethereum `0x7e586f...723153`; ethereum `0xc15697...f64f13`; ethereum `0xe2fc85...f26f94`; ethereum `0xf3b466...8de3a7` | ✅ Audited |
| StableWrapper | unknown | ethereum | n/a | 5 deployments: ethereum [`0x05f47d...2cabe0`](./contracts/ethereum-1/0x05f47d7cbb0f3d7f988e442e8c1401685d2cabe0/); ethereum `0x2ca440...1ab8cb`; ethereum `0x6eaf19...7dbb4c`; ethereum `0xdcfd98...76a427`; ethereum `0xf70f54...386a34` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x4d4874...20af5d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Zenith Audit Report - Stream Protocol.pdf](https://github.com/zenith-security/reports/blob/main/reports/Zenith%20Audit%20Report%20-%20Stream%20Protocol.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 13 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=21

Fork inheritance lineage and inherited audits are included when available.
