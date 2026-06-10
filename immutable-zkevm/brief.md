# Agentic Audit Brief: Immutable zkEVM

## Project Overview

- Project: Immutable zkEVM (`immutable-zkevm`)
- Website: [https://www.immutable.com/](https://www.immutable.com/)
- Lifecycle: active (Tier 0, 55.1% below peak)
- Generated: 2026-06-10T20:59:06.123Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 9 unique implementations (9 raw deployments)
- DeFi Llama TVL: $28,544,432.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Immutable zkEVM is Immutable's EVM-compatible gaming chain and Layer 2 infrastructure for Ethereum, designed to support blockchain games and related products in the Immutable ecosystem such as Passport and Immutable Chain. It should not be described as a Doodles-related bridge or NFT-collection project unless independently evidenced.

### Architecture

The RootERC20BridgeFlowRate and RootAxelarBridgeAdaptor contracts handle token bridging, while GnosisSafe manages governance. Doodles represents an NFT collection deployed on the chain, leveraging the bridge for cross-chain functionality.

## Audit Coverage Summary

- Verified implementations audited: 2/9 (22.2%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 4
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-09 (aging)
- Staleness: 0 fresh, 1 aging, 1 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Perimeter | Tier 2 | 2 | 22.2% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ChildERC20 | token | ethereum | [`0x8804a8...19fad1`](./contracts/ethereum-1/0x8804a8aa1f18f23ae8a456dd73806fda3219fad1/) | ✅ Audited |
| RootERC20BridgeFlowRate | operational_periphery | ethereum | [`0xba5e35...d13eb6`](./contracts/ethereum-1/0xba5e35e26ae59c7aea6f029b68c6460de2d13eb6/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Dooplicator | unknown | ethereum | [`0x466cfc...9213ac`](./contracts/ethereum-1/0x466cfcd0525189b573e794f554b8a751279213ac/) | ⚠️ Unaudited |
| ERC721CreatorImplementation | token | ethereum | [`0x9fbe92...285830`](./contracts/ethereum-1/0x9fbe92624b48ba00545c2573801c8e38e8285830/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0x5a0198...661306`](./contracts/ethereum-1/0x5a019874f4fae314b0eaa4606be746366e661306/) | ⚠️ Unaudited |
| OwnableCreate2Deployer | governance | ethereum | [`0x90da20...d37921`](./contracts/ethereum-1/0x90da206238384d33d7a35dcd7119c0ce76d37921/) | ⚠️ Unaudited |
| OwnableCreate3Deployer | governance | ethereum | [`0xba606b...641401`](./contracts/ethereum-1/0xba606be61572510d8118127a82faff6027641401/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0xde2bcd...b51ec8`](./contracts/ethereum-1/0xde2bcd3f0297d29c25e83228e5a33c0b43b51ec8/) | ⚠️ Unaudited |
| RootAxelarBridgeAdaptor | operational_periphery | ethereum | [`0x4f49b5...4e8932`](./contracts/ethereum-1/0x4f49b53928a71e553bb1b0f66a5bcb54fd4e8932/) | ⚠️ Unaudited |

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
| [Perimeter-Fuzzing-2024-09-10.pdf](https://github.com/immutable/zkevm-bridge-contracts/blob/main/audits/Perimeter-Fuzzing-2024-09-10.pdf) | Perimeter | Audit | 2024-09 | aging | Direct | contract_name | 2 | high |
| [202309_Halborn_Final.pdf](https://github.com/immutable/wallet-contracts/blob/main/audits/202309_Halborn_Final.pdf) | Halborn | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [Quantstamp_Arcadeum_Report_Final.pdf](https://github.com/immutable/wallet-contracts/blob/main/audits/Quantstamp_Arcadeum_Report_Final.pdf) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [sequence_quantstamp_audit_feb_2021.pdf](https://github.com/immutable/wallet-contracts/blob/main/audits/sequence_quantstamp_audit_feb_2021.pdf) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x466cfc...9213ac`](./contracts/ethereum-1/0x466cfcd0525189b573e794f554b8a751279213ac/) | Dooplicator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9fbe92...285830`](./contracts/ethereum-1/0x9fbe92624b48ba00545c2573801c8e38e8285830/) | ERC721CreatorImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 6 |
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
