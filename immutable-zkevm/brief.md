# Agentic Audit Brief: Immutable zkEVM

## Project Overview

- Project: Immutable zkEVM (`immutable-zkevm`)
- Website: [https://www.immutable.com/](https://www.immutable.com/)
- Lifecycle: active (Tier 0, 55.1% below peak)
- Generated: 2026-06-17T07:00:42.934Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $25,111,259.23
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Immutable zkEVM is Immutable's EVM-compatible gaming chain and Layer 2 infrastructure for Ethereum, designed to support blockchain games and related products in the Immutable ecosystem such as Passport and Immutable Chain. It should not be described as a Doodles-related bridge or NFT-collection project unless independently evidenced.

### Architecture

The RootERC20BridgeFlowRate and RootAxelarBridgeAdaptor contracts handle token bridging, while GnosisSafe manages governance. Doodles represents an NFT collection deployed on the chain, leveraging the bridge for cross-chain functionality.

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 6 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 2/4 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/3 (33.3%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 4
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-09 (aging)
- Staleness: 0 fresh, 1 aging, 1 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Perimeter | Tier 2 | 1 | 33.3% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RootERC20BridgeFlowRate | operational_periphery | ethereum | unit-26365 | [`0xba5e35...d13eb6`](./contracts/ethereum-1/0xba5e35e26ae59c7aea6f029b68c6460de2d13eb6/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Dooplicator | unknown | ethereum | n/a | [`0x466cfc...9213ac`](./contracts/ethereum-1/0x466cfcd0525189b573e794f554b8a751279213ac/) | ⚠️ Unaudited |
| RootAxelarBridgeAdaptor | operational_periphery | ethereum | unit-26362 | [`0x4f49b5...4e8932`](./contracts/ethereum-1/0x4f49b53928a71e553bb1b0f66a5bcb54fd4e8932/) | ⚠️ Unaudited |

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
| [Perimeter-Fuzzing-2024-09-10.pdf](https://github.com/immutable/zkevm-bridge-contracts/blob/main/audits/Perimeter-Fuzzing-2024-09-10.pdf) | Perimeter | Audit | 2024-09 | aging | Direct | contract_name | 1 | high |
| [202309_Halborn_Final.pdf](https://github.com/immutable/wallet-contracts/blob/main/audits/202309_Halborn_Final.pdf) | Halborn | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [Quantstamp_Arcadeum_Report_Final.pdf](https://github.com/immutable/wallet-contracts/blob/main/audits/Quantstamp_Arcadeum_Report_Final.pdf) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [sequence_quantstamp_audit_feb_2021.pdf](https://github.com/immutable/wallet-contracts/blob/main/audits/sequence_quantstamp_audit_feb_2021.pdf) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x466cfc...9213ac`](./contracts/ethereum-1/0x466cfcd0525189b573e794f554b8a751279213ac/) | Dooplicator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Zero-match audit list:

- [1815] 202309_Halborn_Final.pdf
- [1817] Quantstamp_Arcadeum_Report_Final.pdf
- [1818] sequence_quantstamp_audit_feb_2021.pdf

Fork inheritance lineage and inherited audits are included when available.
