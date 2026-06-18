# Agentic Audit Brief: Immutable zkEVM

## Project Overview

- Project: Immutable zkEVM (`immutable-zkevm`)
- Website: [https://www.immutable.com/](https://www.immutable.com/)
- Lifecycle: active (Tier 0, 59.8% below peak)
- Generated: 2026-06-18T09:19:41.307Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-5311
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $25,111,259.23
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Immutable zkEVM is Immutable's EVM-compatible gaming chain and Layer 2 infrastructure for Ethereum, designed to support blockchain games and related products in the Immutable ecosystem such as Passport and Immutable Chain. It should not be described as a Doodles-related bridge or NFT-collection project unless independently evidenced.

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 6 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 2/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 5
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-09 (aging)
- Staleness: 0 fresh, 1 aging, 1 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AxelarGasService | unknown | ethereum | unit-36232 | [`0x2d5d7d...082712`](./contracts/ethereum-1/0x2d5d7d31f671f86c782533cc367f14109a082712/) | ⚠️ Unaudited |
| AxelarGateway | unknown | ethereum | unit-36233 | [`0x4f4495...8d56a5`](./contracts/ethereum-1/0x4f4495243837681061c4743b74b3eedf548d56a5/) | ⚠️ Unaudited |

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
| [Perimeter-Fuzzing-2024-09-10.pdf](https://github.com/immutable/zkevm-bridge-contracts/blob/main/audits/Perimeter-Fuzzing-2024-09-10.pdf) | Perimeter | Audit | 2024-09 | aging | Direct | contract_name | 0 | n/a |
| [202309_Halborn_Final.pdf](https://github.com/immutable/wallet-contracts/blob/main/audits/202309_Halborn_Final.pdf) | Halborn | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [Quantstamp_Arcadeum_Report_Final.pdf](https://github.com/immutable/wallet-contracts/blob/main/audits/Quantstamp_Arcadeum_Report_Final.pdf) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [sequence_quantstamp_audit_feb_2021.pdf](https://github.com/immutable/wallet-contracts/blob/main/audits/sequence_quantstamp_audit_feb_2021.pdf) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [202309_audit_background.md](https://github.com/immutable/wallet-contracts/blob/main/audits/202309_audit_background.md) | Unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=2

Zero-match audit list:

- [1814] Perimeter-Fuzzing-2024-09-10.pdf
- [1815] 202309_Halborn_Final.pdf
- [1817] Quantstamp_Arcadeum_Report_Final.pdf
- [1818] sequence_quantstamp_audit_feb_2021.pdf
- [15117] 202309_audit_background.md

Fork inheritance lineage and inherited audits are included when available.
