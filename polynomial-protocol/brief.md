# Agentic Audit Brief: Polynomial Protocol

## Project Overview

- Project: Polynomial Protocol (`polynomial-protocol`)
- Website: [https://www.polynomial.fi](https://www.polynomial.fi)
- Lifecycle: active (Tier 0, 62.5% below peak)
- Generated: 2026-06-17T07:00:50.423Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $5,292,392.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Polynomial is a decentralized perpetual futures exchange powered by the Polynomial Ethereum Layer 2/rollup. The current protocol focus is perps trading and rollup-based exchange infrastructure; any options, structured vault, or automated options-yield products should be treated as broader or legacy/future platform areas unless separately supported by current product evidence.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 3 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 1/6 live.
- Detected codebases: none
- Unverified dependencies: 21/26.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 17
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Staleness: 0 fresh, 4 aging, 9 stale, 4 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| L2OutputOracle | operational_periphery | ethereum | unit-31163 | [`0xe512d4...99f757`](./contracts/ethereum-1/0xe512d477cc89196af2ce837f6ab8ea30e199f757/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Link](https://0xmacro.com/library/audits/polynomial-1.html) | 0xMacro | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [Link](https://0xmacro.com/library/audits/polynomial-4.html) | 0xMacro | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Link](https://0xmacro.com/library/audits/polynomial-5.html) | 0xMacro | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Link](https://0xmacro.com/library/audits/polynomial-3) | 0xMacro | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [Synthetix v3 Audits](https://docs.synthetix.io/v/v3/for-developers/smart-contract-audits) | 0xMacro | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Kernel v3.2 Incremental Audit Report.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/Kernel%20v3.2%20Incremental%20Audit%20Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Kernel v3.3 Incremental Audit Report.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/Kernel%20v3.3%20Incremental%20Audit%20Report.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [chainlight_v3_0.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/chainlight_v3_0.pdf) | Chainlight | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [kalos_recovery_v1.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/kalos_recovery_v1.pdf) | Kalos | Audit | 2023 | stale | Direct | n/a | 0 | n/a |
| [kalos_recovery_v2.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/kalos_recovery_v2.pdf) | Kalos | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [kalos_v1.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/kalos_v1.pdf) | Kalos | Audit | 2023 | stale | Direct | n/a | 0 | n/a |
| [kalos_v2_1.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/kalos_v2_1.pdf) | Kalos | Audit | 2023 | stale | Direct | n/a | 0 | n/a |
| [kalos_v2_2.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/kalos_v2_2.pdf) | Kalos | Audit | 2023 | stale | Direct | n/a | 0 | n/a |
| [kalos_v2_2_lite.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/kalos_v2_2_lite.pdf) | Kalos | Audit | 2023 | stale | Direct | n/a | 0 | n/a |
| [kalos_v3_plugins.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/kalos_v3_plugins.pdf) | Kalos | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [kalos_webauthn_v1.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/kalos_webauthn_v1.pdf) | Kalos | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [v_3_1_incremental_audit.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/v_3_1_incremental_audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xe512d4...99f757`](./contracts/ethereum-1/0xe512d477cc89196af2ce837f6ab8ea30e199f757/) | L2OutputOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 17
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2483] Link
- [2484] Link
- [2485] Link
- [2486] Link
- [2487] Synthetix v3 Audits
- [2489] Kernel v3.2 Incremental Audit Report.pdf
- [2490] Kernel v3.3 Incremental Audit Report.pdf
- [2491] chainlight_v3_0.pdf
- [2492] kalos_recovery_v1.pdf
- [2493] kalos_recovery_v2.pdf
- [2494] kalos_v1.pdf
- [2495] kalos_v2_1.pdf
- [2496] kalos_v2_2.pdf
- [2497] kalos_v2_2_lite.pdf
- [2498] kalos_v3_plugins.pdf
- [2499] kalos_webauthn_v1.pdf
- [2500] v_3_1_incremental_audit.pdf

Fork inheritance lineage and inherited audits are included when available.
