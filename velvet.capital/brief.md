# Agentic Audit Brief: Velvet.Capital

⚠️ Lifecycle status: DECLINING - TVL dropped 83.6% over 90 days

## Project Overview

- Project: Velvet.Capital (`velvet.capital`)
- Website: [https://dapp.velvet.capital/Referred/6956901b440d4fc522b2eb7b](https://dapp.velvet.capital/Referred/6956901b440d4fc522b2eb7b)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:33.453Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base, bsc, ethereum
- Contract surface: 17 unique implementations (28 raw deployments)
- DeFi Llama TVL: $6,838,670.00
- On-chain TVL (included contracts): $95,216,575.47
- TVL by chain: Bsc $95,216,569.37 | Base $6.10

## Project Description

Velvet.Capital is a DeFi protocol that enables users to create and manage tokenized portfolios (indexes) and yield-generating vaults. It provides infrastructure for automated portfolio rebalancing and yield optimization across multiple chains.

### Architecture

Both families share infrastructure such as ProtocolConfig and TokenRegistry contracts, and use ERC1967Proxy for upgradeability. VelvetToken from V2 may be used within V3 portfolios, linking the two versions.

## Contract Surface Quality

- Indexed contracts: 624; live-surface contracts included: 28 (28 live, 0 unknown).
- Excluded by liveness: 467 inactive, 129 singleton, 0 uninitialized.
- Deployment units: 0/49 live.
- Detected codebases: none
- Unverified dependencies: 5/8.

## Audit Coverage Summary

- Verified implementations audited: 5/8 (62.5%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 17
- Raw deployments: 28
- Audits discovered: 13
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $95,216,575.47
- Latest audit: 2025-07 (fresh)
- Staleness: 1 fresh, 2 aging, 9 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $95,216,575.47 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 5 | 62.5% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DepositBatch | periphery | ethereum | n/a | 5 deployments: ethereum [`0x32c249...78e3b6`](./contracts/ethereum-1/0x32c249c81a77cddc2bbecd91d95c833be178e3b6/); ethereum `0xe6afac...4b9694`; ethereum `0xea9fd1...3c6bf1`; base `0x6e3e0f...e63e05`; base `0xfe0861...031fe6` | ✅ Audited |
| DepositManager | core_logic | base | n/a | 5 deployments: ethereum `0xcdb6e3...6e6c7f`; ethereum `0xf908e0...c30094`; ethereum `0xff6221...e6ee7c`; base [`0x61f18d...598448`](./contracts/base-8453/0x61f18d6beeb37b0d0f6af0a98bcccf8115598448/); base `0xe4e231...f6e2ed` | ✅ Audited |
| EnsoHandler | unknown | ethereum | n/a | [`0x18439b...53e617`](./contracts/ethereum-1/0x18439b037dcae4a1528ccc3871d695e61653e617/) | ✅ Audited |
| WithdrawBatch | operational_periphery | ethereum | n/a | [`0xce5838...1d92cb`](./contracts/ethereum-1/0xce58382f1b1de0f5cee7fa76a2aa9ef2b41d92cb/) | ✅ Audited |
| WithdrawManager | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x0fe7c8...d13529`](./contracts/ethereum-1/0x0fe7c855f0512dc9d48ce5c220e19b8d97d13529/); ethereum `0x2fb0f1...3b2638`; base `0x4643c0...57eeff`; base `0x99e9c4...3aedab` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VelvetToken | token | bsc | n/a | [`0x8b1943...8c1488`](./contracts/bsc-56/0x8b194370825e37b33373e74a41009161808c1488/) | ⚠️ Unaudited |
| VaultProxy | proxy | base | n/a | [`0x4da07a...df2e92`](./contracts/base-8453/0x4da07a07f40f877a587acfcdbb0c84c73fdf2e92/) | ⚠️ Unaudited |
| ProxyAdmin | governance | base | n/a | [`0x8367ca...d148fa`](./contracts/base-8453/0x8367ca4b7cfe34610ecfb112b2881b2084d148fa/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x08c716...d929e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d238f...f860d8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x597f87...2ee3f0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6d2732...f30f01` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6fc164...56597e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xca4f15...17433f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd22dfc...11b106` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe3547a...3731cc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf6bb94...ab214c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit_Report_VLVT-V3C_FINAL_20-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/Audit_Report_VLVT-V3C_FINAL_20-1.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | 1 | high |
| [Audit_Report_VLVT-V3C_FINAL_20.pdf](https://github.com/Velvet-Capital/audits/blob/main/Audit_Report_VLVT-V3C_FINAL_20.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | 1 | high |
| [PeckShield-Audit-Report-Velvet-v1.0_final.pdf](https://github.com/Velvet-Capital/audits/blob/main/PeckShield-Audit-Report-Velvet-v1.0_final.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | contract_name | 0 | n/a |
| [PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf](https://github.com/Velvet-Capital/audits/blob/main/PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf) | PeckShield | Audit | 2023-10 | stale | Direct | contract_name | 0 | n/a |
| [PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf](https://github.com/Velvet-Capital/audits/blob/main/PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | 0 | n/a |
| [Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf) | unknown | Audit | 2024-07 | aging | Direct | contract_name | 16 | high |
| [Velvet_Capital - Final Report-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/Velvet_Capital%20-%20Final%20Report-1.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | 0 | n/a |
| [Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 0 | n/a |
| [Velvet_Capital_V2_Security_Audit_Report.pdf](https://github.com/Velvet-Capital/audits/blob/main/Velvet_Capital_V2_Security_Audit_Report.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 0 | n/a |
| [report-cantinacode-velvet-0807-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/report-cantinacode-velvet-0807-1.pdf) | Spearbit | Audit | 2025-07 | fresh | Direct | contract_name | 0 | n/a |
| [report.md](https://github.com/Velvet-Capital/audits/blob/main/report.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 7 | medium |
| [PeckShield-Audit-Report-Velvet-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Velvet-v1.0.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | contract_name | 0 | n/a |
| [DL audit link](https://shellboxes.com/audit/reports/Velvet_Capital_Security_Audit_Report.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x8b1943...8c1488`](./contracts/bsc-56/0x8b194370825e37b33373e74a41009161808c1488/) | VelvetToken | token | $95,216,569.37 | Verified native implementation with $95,216,569.37 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4da07a...df2e92`](./contracts/base-8453/0x4da07a07f40f877a587acfcdbb0c84c73fdf2e92/) | VaultProxy | proxy | $6.10 | Verified native implementation with $6.10 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3, medium=1
- Match method counts: extraction_exact=375

Zero-match audit list:

- [3074] PeckShield-Audit-Report-Velvet-v1.0_final.pdf
- [3075] PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf
- [3076] PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf
- [3078] Velvet_Capital - Final Report-1.pdf
- [3079] Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf
- [3080] Velvet_Capital_V2_Security_Audit_Report.pdf
- [3081] report-cantinacode-velvet-0807-1.pdf
- [3083] PeckShield-Audit-Report-Velvet-v1.0.pdf
- [3084] DL audit link

Fork inheritance lineage and inherited audits are included when available.
