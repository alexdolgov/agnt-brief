# Agentic Audit Brief: Polynomial Protocol

## Project Overview

- Project: Polynomial Protocol (`polynomial-protocol`)
- Website: [https://www.polynomial.fi](https://www.polynomial.fi)
- Lifecycle: active (Tier 0, 62.5% below peak)
- Generated: 2026-05-23T16:40:31.587Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $5,318,178.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Polynomial Protocol is a decentralized options vault and derivatives platform on Ethereum, enabling users to earn yield through automated options strategies and trade derivatives. It provides structured products that generate returns by selling options and managing risk.

### Architecture

The Source Chain Contracts family provides the foundational cross-chain infrastructure, with the OptimismPortal2 and L1CrossDomainMessenger enabling secure message passing and asset transfers, while the L2OutputOracle ensures state root verification. These contracts are shared across the protocol's product families to facilitate seamless interaction between Ethereum and Optimism.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 18
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Staleness: 0 fresh, 5 aging, 8 stale, 5 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| L1ERC721Bridge | operational_periphery | ethereum | [`0xd5890b...9e8d1a`](./contracts/ethereum-1/0xd5890bbafafdce942597757385e55174569e8d1a/) | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | [`0xe512d4...99f757`](./contracts/ethereum-1/0xe512d477cc89196af2ce837f6ab8ea30e199f757/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | ethereum | [`0x994233...2915bd`](./contracts/ethereum-1/0x994233366c8e11da5c525ab903c04e7afb2915bd/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | [`0x034cbb...3b04ec`](./contracts/ethereum-1/0x034cbb620d1e0e4c2e29845229beac57083b04ec/) | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | [`0x58b51f...55a413`](./contracts/ethereum-1/0x58b51fb9feed00dd846f91d265eba3cdd855a413/) | ⚠️ Unaudited |

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
| [Link](https://0xmacro.com/library/audits/polynomial-1.html) | 0xMacro | Audit | 2024-06 | aging | Direct | n/a | 0 | n/a |
| [Link](https://0xmacro.com/library/audits/polynomial-4.html) | 0xMacro | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Link](https://0xmacro.com/library/audits/polynomial-5.html) | 0xMacro | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Link](https://0xmacro.com/library/audits/polynomial-3) | 0xMacro | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [Synthetix v3 Audits](https://docs.synthetix.io/v/v3/for-developers/smart-contract-audits) | 0xMacro | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://docs.conduit.xyz/chains/supported-stacks/op-stack) | Conduit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
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
| ethereum | [`0xd5890b...9e8d1a`](./contracts/ethereum-1/0xd5890bbafafdce942597757385e55174569e8d1a/) | L1ERC721Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe512d4...99f757`](./contracts/ethereum-1/0xe512d477cc89196af2ce837f6ab8ea30e199f757/) | L2OutputOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x994233...2915bd`](./contracts/ethereum-1/0x994233366c8e11da5c525ab903c04e7afb2915bd/) | OptimismMintableERC20Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x034cbb...3b04ec`](./contracts/ethereum-1/0x034cbb620d1e0e4c2e29845229beac57083b04ec/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x58b51f...55a413`](./contracts/ethereum-1/0x58b51fb9feed00dd846f91d265eba3cdd855a413/) | SystemConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 18
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2483] Link
- [2484] Link
- [2485] Link
- [2486] Link
- [2487] Synthetix v3 Audits
- [2488] Link
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
